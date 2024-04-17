#include "monitor/watchpoint.h"
#include "monitor/expr.h"

#define NR_WP 32

static WP wp_pool[NR_WP];
static WP *head, *free_,*tail;

void init_wp_pool() {
  int i;
  for (i = 0; i < NR_WP; i ++) {
    wp_pool[i].NO = i;
    wp_pool[i].next = &wp_pool[i + 1];
  }
  wp_pool[NR_WP - 1].next = NULL;

  head = NULL;
  tail = NULL;
  free_ = wp_pool;
}

/* TODO: Implement the functionality of watchpoint */

WP* newWp()
{
  if(free_==NULL)
  {
    printf("No Memory!\n");
    return NULL;
  }
  WP* p=free_;
  free_=free_->next;
  if(head==NULL)
  {
    head=p;
    tail=p;
  }
  else
  {
    tail->next=p;
    tail=p;
  }
  return tail;
}

void freeWp(WP *wp)
{
  if(head==NULL)
  {
    printf("No watchpoint.\n");
    return;
  }
  if(wp==head)
  {
    head=head->next;
    wp->next=free_;
    free_=wp;
    return;
  }
  WP *tmp=head;
  while(tmp->next!=wp)  tmp=tmp->next;
  tmp->next=wp->next;
  wp->next=free_;
  free_=wp;
}

void wpTrav()
{
  if(head==NULL)
  {
    printf("No any watchpoint.\n");
    return;
  }
  WP *tmp=head;
  while(tmp!=tail&&tmp!=NULL)
  {
    printf("%d %s %u (%#x)\n",tmp->NO,tmp->str,tmp->value,tmp->value);
    tmp=tmp->next;
  }
  printf("%d %s %u (%#x)\n",tail->NO,tail->str,tail->value,tail->value);
  return;
}

void delWp(int n)
{
  WP *tmp=head;
  while(tmp!=tail)
  {
    if(tmp->NO==n)
    {
      freeWp(tmp);
      printf("Delete success.\n");
      return;
    }
    tmp=tmp->next;
  }
  if(tail->NO==n)
  {
    freeWp(tail);
    printf("Delete success.\n");
    return;
  }
  printf("Not found\n");
  return;
}

bool changedWp()
{
  bool changed=0;
  WP *wp=head;
  // bool flags=1;
  uint32_t now_val,new_val;
  // printf("%u\n",wp->value);
  // printf("%s\n",wp->str);
  // printf("%u\n",expr(wp->str,&flags));
  while(wp!=tail)
  {
    // printf("%u\n",wp->value);
    // printf("%s\n",wp->str);
    // printf("%u\n",expr(wp->str,&flags));
    bool success=1;
    new_val=expr(wp->str,&success);
    // printf("%d\n",wp->value);
    Assert(success,"Watchpoint expressions are needed to be success.\n");
    now_val=wp->value;
    if(now_val!=new_val)
    {
      printf("Watchpoint %d: %s\n Old value = [%u] changed to the new value = [%u].\n",wp->NO,wp->str,now_val,new_val);
      changed=true;
      wp->value=new_val;
    }
    wp=wp->next;
  }
  if(tail!=NULL)
  {
    // printf("%u\n",tail->value);
    // printf("%s\n",tail->str);
    // printf("%u\n",expr(tail->str,&flags));
    bool success=1;
    new_val=expr(tail->str,&success);
    // printf("%d\n",tail->value);
    Assert(success,"Watchpoint expressions are needed to be success.\n");
    now_val=tail->value;
    if(now_val!=new_val)
    {
      printf("Watchpoint %d: %s\n Old value = [%u-%#08x] changed to the new value = [%u-%#08x].\n",tail->NO,tail->str,now_val,now_val,new_val,new_val);
      changed=true;
      tail->value=new_val;
    }
  }
  return changed;
}