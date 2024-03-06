#include "monitor/monitor.h"
#include "monitor/expr.h"
#include "monitor/watchpoint.h"
#include "nemu.h"


#include <stdlib.h>
#include <readline/readline.h>
#include <readline/history.h>

void cpu_exec(uint64_t);
uint32_t expr(char *e,bool *success);
void init_wp_pool();
WP* newWp();
void delWp(WP *wp);
void freeWp(WP *wp);

/* We use the `readline' library to provide more flexibility to read from stdin. */
char* rl_gets() {
  static char *line_read = NULL;

  if (line_read) {
    free(line_read);
    line_read = NULL;
  }

  line_read = readline("(nemu) ");

  if (line_read && *line_read) {
    add_history(line_read);
  }

  return line_read;
}

static int cmd_c(char *args) {
  cpu_exec(-1);
  return 0;
}

static int cmd_q(char *args) {
  return -1;
}

/*pa1.1*/
long long readNum(char *arg)
{
	long long x=0,f=1;
	char *tmpArg=arg;
	if(*tmpArg=='-')
	{
		f=-1;
		tmpArg++;
	}
	while(*tmpArg<='9'&&*tmpArg>='0')
	{
		x=x*10+(*tmpArg)-'0';
		tmpArg++;
	}
	if(*tmpArg!='\0'||x>2147483647||x<-2147483648)
	{
		printf("Input error");
		return 2147483648;
	}
	//printf("x=%lld,f=%lld,x*f=%lld",x,f,x*f);
	return x*f;
}
static int cmd_si(char *args){
	char *arg=strtok(NULL," ");
	if(arg==NULL){
		cpu_exec(1);
		return 0;
	}
	else
	{
		long long n=0;
		uint64_t num=0;
		n=readNum(arg);
		if(n==2147483648||n<=0)
		{
			n=1;
			printf(" Set to the default settings.\n");
		}
		//printf("n=%lld",n);
		num=n;
		cpu_exec(num);
		return 0;
	}

	return 0;
}
static int cmd_info(char *args){
	char *arg = strtok(NULL," ");
	if(arg!=NULL){
	if(strcmp(arg,"w")==0){
	//	print_wp();
		return 0;
	}}
	if(arg!=NULL&&strcmp(arg,"r")!=0)
	{
		printf("Wrong input, set to the default settings.\n");
	}
		printf("eax: %x\n",cpu.eax);
		printf("ecx: %x\n",cpu.ecx);
		printf("edx: %x\n",cpu.edx);
		printf("ebx: %x\n",cpu.ebx);
    printf("esp: %x\n",cpu.esp);
		printf("ebp: %x\n",cpu.ebp);
		printf("esi: %x\n",cpu.esi);
		printf("edi: %x\n",cpu.edi);
		return 0;
}
static int cmd_x(char *args){
	/*This is the simplified pa1.1 version*/
	if(args == NULL){
		printf("Wrong input, try again\n");
		return 1;
	}
	char *arg = strtok(args," ");
	if(arg==NULL){
		printf("Wrong input, try again\n");
		return 1;
	}
	long long n=readNum(arg);
	char *EXPR = strtok(NULL," ");
	if(EXPR==NULL){
		printf("Wrong input, try again\n");
		return 1;
	}
	if(strtok(NULL," ")!=NULL){
		printf("Wrong input, try again\n");
		return 1;
	}
	char *str;
//	bool flag=true;
	vaddr_t addr = strtol(EXPR,&str,16);
	for(int i=0;i<n;i++)
	{
		uint32_t data = vaddr_read(addr+i*4,4);
		printf("%08x:", addr+i*4);
		for(int j=0;j<4;j++)
		{
			printf("0x%02x ",data & 0xff);
			data=data>>8;
		}
		printf("\n");
	}
	return 0;
}
/*end of pa1.1*/
/*pa1.2*/

static int cmd_p(char *args){
	if(args == NULL)  return 0;
	bool flag = 1;
	uint32_t value = expr(args, &flag);
	if(flag)
	{
		printf("%u(0x%08x)\n",value,value);
	}
	return 0;
}
/*end of pa1.2*/
/*pa1.3*/
static int cmd_w(char *args){
	bool success=1;
	if(args==NULL)
	{
		printf("Please input the expression.\n");
		return 0;
	}
	char *arg=strtok(NULL," ");
	if(arg==NULL)
	{
		printf("Wrong input, try again.\n");
		return 0;
	}
	char *argg=strtok(NULL," ");
	while(argg!=NULL)
	{
		strcat(arg,argg);
		argg=strtok(NULL," ");
	}
	if(arg==NULL)  return 0;
	WP* wp=newWp();
	memset(wp->str,0,sizeof(wp->str));
	strcpy(wp->str,arg);
	uint32_t res=expr(arg,&success);
	if(!success)
	{
		pritnf("Wrong expression.\n");
		freeWp(wp);
	}
	return 0;
}
static int cmd_d(char *args){
	char *arg=strtok(NULL," ");
	if(arg==NULL)  return 0;
	int n;
	scanf("%d",&n);
	delWp(n);
	return 0;
}
/*end of pa1.3*/

static int cmd_help(char *args);

static struct {
  char *name;
  char *description;
  int (*handler) (char *);
} cmd_table [] = {
  { "help", "Display informations about all supported commands", cmd_help },
  { "c", "Continue the execution of the program", cmd_c },
  { "q", "Exit NEMU", cmd_q },
/*pa1.1*/
  {"si","Usage: si [N]\n Execute program with N(default:1) step(s)", cmd_si},
  {"info","Usage: info [r][w]\n [r]:Print values of all registers,"\
	 " [w]:print all watchpoints (Default:[r])", cmd_info},
  {"p","Usage: p [EXPR] \n Output the value of the given expression.",cmd_p},
  {"x","Usage: x [N]  [EXPR] \n Output the value of the given expression."\
	 "With quadual consequtive bytes starting from the EXPR in hex form.",cmd_x},
  {"w","Usage: w [EXPR] \n set a watchpoing for [EXPR]"\
	 "Cease the program when the value of the expression changes",cmd_w},
  {"d","Usage: d [N] \n Delete watchpoint which id is N",cmd_d}
  /* TODO: Add more commands */
/*end of pa1.1*/
};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char *args) {
  /* extract the first argument */
  char *arg = strtok(NULL, " ");
  int i;

  if (arg == NULL) {
    /* no argument given */
    for (i = 0; i < NR_CMD; i ++) {
      printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
    }
  }
  else {
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(arg, cmd_table[i].name) == 0) {
        printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        return 0;
      }
    }
    printf("Unknown command '%s'\n", arg);
  }
  return 0;
}

void ui_mainloop(int is_batch_mode) {
  if (is_batch_mode) {
    cmd_c(NULL);
    return;
  }

  while (1) {
    char *str = rl_gets();
    char *str_end = str + strlen(str);

    /* extract the first token as the command */
    char *cmd = strtok(str, " ");
    if (cmd == NULL) { continue; }

    /* treat the remaining string as the arguments,
     * which may need further parsing
     */
    char *args = cmd + strlen(cmd) + 1;
    if (args >= str_end) {
      args = NULL;
    }

#ifdef HAS_IOE
    extern void sdl_clear_event_queue(void);
    sdl_clear_event_queue();
#endif

    int i;
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(cmd, cmd_table[i].name) == 0) {
        if (cmd_table[i].handler(args) < 0) { return; }
        break;
      }
    }

    if (i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
  }
}
