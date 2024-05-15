#include "common.h"

#define DEFAULT_ENTRY ((void *)0x8048000)

void* new_page(void);
extern void ramdisk_read(void *buf, off_t offset, size_t len);
extern size_t get_ramdisk_size();
int fs_open(const char *pathname, int flags, int mode);
size_t fs_filesz(int fd);
ssize_t fs_read(int fd, void *buf, size_t len);
int fs_close(int fd);

uintptr_t loader(_Protect *as, const char *filename) {
    int fd=fs_open(filename,0,0);
    Log("fd=%d",fd);
    // fs_read(fd,DEFAULT_ENTRY,fs_filesz(fd));
    int size=fs_filesz(fd);
    int pnums=size/PGSIZE;
    if(size%PGSIZE==0)  pnums++;
    void *pa=NULL;
    void *va=DEFAULT_ENTRY;
    for(int i=0;i<pnums;i++)
    {
        pa=new_page();//申请空闲页
        _map(as,va,pa);//物理页->用户程序虚拟地址
        fs_read(fd,pa,PGSIZE);//读一页
        va+=PGSIZE;
        Log("1");
    }
    fs_close(fd);
  return (uintptr_t)DEFAULT_ENTRY;
}
