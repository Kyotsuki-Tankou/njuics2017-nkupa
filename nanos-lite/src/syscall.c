#include "common.h"
#include "syscall.h"

int fs_open(const char *pathname, int flags, int mode);
ssize_t fs_read(int fd, void *buf, size_t len);
ssize_t fs_write(int fd, const void *buf, size_t len);
off_t fs_lseek(int fd, off_t offset, int whence);
int fs_close(int fd);

static inline _RegSet* sys_none(_RegSet *r){
  SYSCALL_ARG1(r) = 1;
  return NULL;
}
static inline _RegSet* sys_exit(_RegSet *r){
  _halt(SYSCALL_ARG2(r)); 
  return NULL;
}

static inline _RegSet* sys_write(_RegSet *r){
  int fd = (int)SYSCALL_ARG2(r);
  char *buf = (char *)SYSCALL_ARG3(r);
  int len = (int)SYSCALL_ARG4(r);
  SYSCALL_ARG1(r) = fs_write(fd,buf,len);
  return NULL;
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
    case SYS_write:return sys_write(r);break;
    case SYS_brk:return 0;
    default: panic("Unhandled syscall ID = %d", a[0]);
  }
  return NULL;
}
