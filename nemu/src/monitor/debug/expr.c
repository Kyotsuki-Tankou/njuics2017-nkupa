#include "nemu.h"

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include<stdlib.h>
#include <sys/types.h>
#include <regex.h>

enum {
  TK_NOTYPE = 256, TK_EQ,TK_NUM,TK_ADD,TK_SUB,TK_HEX,TK_AND,
  TK_MUT,TK_DIV,TK_LBR,TK_RBR,TK_REG,TK_OR,TK_DEREF

  /* TODO: Add more token types */

};

static struct rule {
  char *regex;
  int token_type;
} rules[] = {

  /* TODO: Add more rules.
   * Pay attention to the precedence level of different rules.
   */

  {" +", TK_NOTYPE},    // spaces
  {"\\+", TK_ADD},         // add
  {"==", TK_EQ},         // equal
  {"-",TK_SUB},//sub
  {"\\*",TK_MUT},//multiply
  {"/",TK_DIV},//divide
  {"0[Xx][0-9a-fA-F]+",TK_HEX},//hex
  {"[0-9]+",TK_NUM},//dec
  {"\\(",TK_LBR},//left breacket
  {"\\)",TK_RBR},//right bracket
  {"\\$[a-zA-Z]+",TK_REG},//register
  {"&&",TK_AND},//AND
  {"\\|\\|",TK_OR},//OR
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
  int i;
  char error_msg[128];
  int ret;

  for (i = 0; i < NR_REGEX; i ++) {
    ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
    if (ret != 0) {
      regerror(ret, &re[i], error_msg, 128);
      panic("regex compilation failed: %s\n%s", error_msg, rules[i].regex);
    }
  }
}

typedef struct token {
  int type;
  char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
  int position = 0;
  int i;
  regmatch_t pmatch;
  int token_count=64;
  nr_token = 0;

  while (e[position] != '\0') {
    /* Try all rules one by one. */
    for (i = 0; i < NR_REGEX; i ++) {
      if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
        char *substr_start = e + position;
        int substr_len = pmatch.rm_eo;

        Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s",
            i, rules[i].regex, position, substr_len, substr_len, substr_start);
        position += substr_len;

        /* TODO: Now a new token is recognized with rules[i]. Add codes
         * to record the token in the array `tokens'. For certain types
         * of tokens, some extra actions should be performed.
         */
        if(substr_len>=32){
            printf("This substring lengths is too long(position:%d). \n",position);
            return false;
        }
        if(nr_token>=token_count)
        {
            printf("The number of tokens(%d) more than maximum(%d)",nr_token,token_count);
            return false;
        }
        switch (rules[i].token_type) {
        case TK_NOTYPE:break;
        case TK_NUM:
        case TK_HEX:
        case TK_REG:
            strncpy(tokens[nr_token].str,substr_start,substr_len);
            tokens[nr_token].str[substr_len]='\0';
        default: 
            tokens[nr_token].type=rules[i].token_type;
            nr_token++;
        }

        break;
      }
    }

    if (i == NR_REGEX) {
      printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
      return false;
    }
  }

  return true;
}
/*pa1.3 auxiliary functions*/
int is_op(int op)
{
    int flag=0;
    switch(op){
    case TK_ADD:
    case TK_SUB:
    case TK_EQ:
    case TK_OR:
    case TK_AND:
    case TK_MUT:
    case TK_DIV:
    case TK_DEREF:
        flag=1;
        break;
    default:
        flag=0;
    }
    return flag;
}
int prio(int op)//priority of token
{
    int p;
    switch(op){
    case TK_OR:
        p=1;
        break;
    case TK_AND:
        p=2;
        break;
    case TK_EQ:
        p=3;
        break;
    case TK_ADD:
    case TK_SUB:
        p=4;
        break;
    case TK_MUT:
    case TK_DIV:
        p=5;
        break;
    case TK_DEREF:
        p=6;
        break;
    default:
        p=7;
        break;
    }
    return p;
}
int comp(int i,int j)//compare priority between 2 tokens   -1:i<j  0:i==j 1:i>j 2:wrong
{
    if(i<0||j<0) return 2;
    return prio(tokens[i].type)<prio(tokens[j].type)?-1:(prio(tokens[i].type)==prio(tokens[j].type)?0:1);
}
int check_part(int p,int q)
{
    int top=0;
    for(int i=0;i<=q;i++)
    {
        if(tokens[i].type==TK_LBR)  top++;
        if(tokens[i].type==TK_RBR)  top--;
        if(top<0)  return 1;
    }
    if(top!=0)  return 1;
    return 0;
}
int check_parentheses(int p,int q)
/*
-1:invalid
0:valid, but without brackets
1:valid and with brackets
*/
{
    
    int flag=check_part(p,q);
    if(flag)  return -1;
    if(!(tokens[p].type==TK_LBR&&tokens[q].type==TK_RBR))  return 0;
    flag=check_part(p+1,q-1);
    if(flag)  return 0;
    else  return 1;
}
uint32_t exitFailed(bool *success)
{
    printf("Wrong expression\n");
    *success=false;
    return 0;
}
uint32_t reg2str(char *str,bool *success)
{
    uint32_t val=0;
    if(str=="eax"){val=cpu.eax;return val;}
    if(str=="ebx"){val=cpu.ebx;return val;}
    if(str=="ecx"){val=cpu.ecx;return val;}
    if(str=="edx"){val=cpu.edx;return val;}
    if(str=="esp"){val=cpu.esp;return val;}
    if(str=="esi"){val=cpu.esi;return val;}
    if(str=="ebp"){val=cpu.ebp;return val;}
    if(str=="edi"){val=cpu.edi;return val;}
    success=false;
    return val;
}
uint32_t eval(int p,int q,bool *success)
{
    if(p>q)  return exitFailed(success);
    else if(p==q)
    {
        int type=tokens[p].type;
        if(type==TK_NUM||type==TK_HEX){
            return strtoul(tokens[p].str,NULL,0);
        }
        else if(type==TK_REG)
        {
            val=reg2str(tokens[p].str+1,success);
            if(*success)  return val;
            else
            {
                   printf("Unknown register %s\n",tokens[p].str);
                   return 0;
            }
            return exitFailed(success);
        }
    }
    int flag=check_parentheses(p,q);
    if(flag==-1)  return exitFailed(success);
    if(flag==1)  return eval(p+1,q-1,success);
    uint32_t val1=0,val2=0,val=0;
    int pos=-1;
    for(int i=p;i<=q;i++)
    {
        int bracket=0;
        if(bracket==0&&is_op(tokens[i].type))
        {
            if(pos==-1||comp(i,pos)<=0)  pos=i;
        }
        else if(tokens[i].type==TK_LBR)  bracket++;
        else if(tokens[i].type==TK_RBR)  bracket--;
    }
    if(pos==-1)  return exitFailed(success);
    if(tokens[pos].type!=TK_DEREF)  val1=eval(p,pos-1,success);
    if(*success==0)  return 0;
    val2=eval(pos+1,q,success);
    if(*success==0)  return 0;
    switch(tokens[pos].type)
    {
    case TK_ADD:  val=val1+val2;break;
    case TK_SUB:  val=val1-val2;break;
    case TK_MUT:  val=val1*val2;break;
    case TK_DIV:  
        if(val2==0)
        {
            printf("Can't divide by 0\n ");
            return exitFailed(success);
        }  val=val1+val2;break;
    case TK_AND:  val=val1&&val2;break;
    case TK_OR:  val=val1||val2;break;
    case TK_EQ:  val=val1==val2;break;
    case TK_DEREF:  val=vaddr_read(val2,4);break;
    default:  printf("Unknown type.");return exitFailed(success);break;
    }
	return val;
}
uint32_t expr(char *e, bool *success) {
  if (!make_token(e)) { 
    *success = false;
    return 0;
  }

  /* TODO: Insert codes to evaluate the expression. */
  int type;
  for(int i=0;i<nr_token;i++)
  {
    type=tokens[i].type;
    if(type==TK_ADD||type==TK_SUB)
    {
        int f=1,flag;
        for(int j=i;j<nr_token&&(type==TK_ADD||type==TK_SUB);j++)
        {
            flag=j;
            type=tokens[j].type;
            if(type=TK_SUB)  f*=-1;
        }
        if(flag-i>0)
        {
            if(flag==1)  tokens[i].type=TK_ADD;
            else  tokens[i].type=TK_SUB;
            for(int j=i;j<=flag;j++)
            {
                tokens[j]=tokens[j+(flag-i)];
            }
            nr_token-=flag-i;
        }
    }
  }
  for(int i=0;i<nr_token;i++)
  {
    if(tokens[i].type==TK_MUT&&(i==0||is_op(tokens[i-1].type)))
    {
        if(i==0)  tokens[i].type=TK_DEREF;
        else if(tokens[i-1].type!=TK_DEREF) tokens[i].type=TK_DEREF;
    }
  }
  uint32_t val;
  val=eval(0,nr_token-1,success);
  return val;
}
