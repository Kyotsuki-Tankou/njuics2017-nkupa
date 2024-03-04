#include "nemu.h"

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
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
int comp(int i,int j)//compare priority between 2 tokens
{
    return prio(tokens[i].type)<prio(tokens[j].type)?-1:(prio(tokens[i].type)==prio(tokens[j].type)?0:1);
}
uint32_t eval(int p,int q,bool *success)
{
    if(p>q);
    else if(p==q)
    {
    }
	return 0;
}
uint32_t expr(char *e, bool *success) {
  if (!make_token(e)) {
    *success = false;
    return 0;
  }

  /* TODO: Insert codes to evaluate the expression. */
  TODO();

  return 0;
}
