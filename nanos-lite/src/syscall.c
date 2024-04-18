#include "common.h"
#include "syscall.h"

static inline _RegSet* sys_none(_RegSet *r){
  SYSCALL_ARG1(r) = 1;
  return NULL;
}
static inline _RegSet* sys_exit(_RegSet *r){
  _halt(SYSCALL_ARG2(r)); 
  return NULL;
}

uintptr_t sys_write(int fd,void *buf,int len)
{
  uintptr_t i=0;
  if(fd==1||fd==2)
  {
    for(;len>0;i++)
    {
        _putc(((char*)buf)[i]);
        len--;
    }
  }
  return i;
}

_RegSet* do_syscall(_RegSet *r) {
  uintptr_t a[4];
  a[0] = SYSCALL_ARG1(r);
  a[1] = SYSCALL_ARG2(r);
  a[2] = SYSCALL_ARG3(r);
  a[3] = SYSCALL_ARG4(r);
  printf("a[0]=%d SYS_node=%d SYS_exit=%d SYS_write=%d\n",a[0],SYS_none,SYS_exit,SYS_write);
  switch (a[0]) {
    case SYS_none:return sys_none(r);break;
    case SYS_exit:return sys_exit(r);break;
    case SYS_write:sys_write((int)a[1],(void*)a[2],(int)a[3]);break;
    default: panic("Unhandled syscall ID = %d", a[0]);
  }

  return NULL;
}
