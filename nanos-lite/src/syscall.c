#include "common.h"
#include "syscall.h"

int fs_open(const char *pathname, int flags, int mode);
ssize_t fs_read(int fd, void *buf, size_t len);
ssize_t fs_write(int fd, const void *buf, size_t len);
off_t fs_lseek(int fd, off_t offset, int whence);
int fs_close(int fd);
int mm_brk(uint32_t new_brk);

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

//int _open(const char *path, int flags, mode_t mode)
static inline _RegSet* sys_open(_RegSet *r){
  const char* pathname = (const char*)SYSCALL_ARG2(r);
  int flag = (int)SYSCALL_ARG3(r);
  int mode = (int)SYSCALL_ARG4(r);
  SYSCALL_ARG1(r) = fs_open(pathname,flag,mode);
  return NULL;
}

//int _read(int fd, void *buf, size_t count)
static inline _RegSet* sys_read(_RegSet *r)
{
    int fd=(int)SYSCALL_ARG2(r);
    char *buf=(char*)SYSCALL_ARG3(r);
    size_t count=(size_t)SYSCALL_ARG4(r);
    SYSCALL_ARG1(r)=fs_read(fd,buf,count);
    return NULL;
}

//int _close(int fd) {
static inline _RegSet* sys_close(_RegSet *r)
{
    int fd=(int)SYSCALL_ARG2(r);
    SYSCALL_ARG1(r)=fs_close(fd);
    return NULL;
}

//off_t _lseek(int fd, off_t offset, int whence)
static inline _RegSet* sys_lseek(_RegSet *r)
{
    int fd=(int)SYSCALL_ARG2(r);
    off_t offset=(off_t)SYSCALL_ARG3(r);
    int whence=(int)SYSCALL_ARG4(r);
    SYSCALL_ARG1(r)=fs_lseek(fd,offset,whence);
    return NULL;
}
static inline _RegSet* sys_brk(_RegSet *r)
{
    Log("1");
    SYSCALL_ARG1(r)=mm_brk(SYSCALL_ARG2(r));
    return NULL;
}
_RegSet* do_syscall(_RegSet *r) {
  uintptr_t a[4];
  a[0] = SYSCALL_ARG1(r);
  a[1] = SYSCALL_ARG2(r);
  a[2] = SYSCALL_ARG3(r);
  a[3] = SYSCALL_ARG4(r);
  Log("%d %d %d %d",a[0],a[1],a[2],a[3]);
  printf("a[0]=%d SYS_node=%d SYS_exit=%d SYS_open=%d\n",a[0],SYS_none,SYS_exit,SYS_open);
  switch (a[0]) {
    case SYS_none:return sys_none(r);break;
    case SYS_exit:return sys_exit(r);break;
    case SYS_write:return sys_write(r);break;
    case SYS_brk:return sys_brk(r);break;
    case SYS_open:return sys_open(r);break;
    case SYS_read:return sys_read(r);break;
    case SYS_close:return sys_close(r);break;
    case SYS_lseek:return sys_lseek(r);break;
    default: panic("Unhandled syscall ID = %d", a[0]);
  }
  return NULL;
}
/*
  SYS_none,0
  SYS_open,1
  SYS_read,2
  SYS_write,3
  SYS_exit,4
  SYS_kill,5
  SYS_getpid,6
  SYS_close,7
  SYS_lseek,8
  SYS_brk,9
  SYS_fstat,10
  SYS_time,11
  SYS_signal,12
  SYS_execve,13
  SYS_fork,14
  SYS_link,15
  SYS_unlink,16
  SYS_wait,17
  SYS_times,17
  SYS_gettimeofday,19
*/