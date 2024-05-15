#include "fs.h"

typedef struct {
  char *name;
  size_t size;
  off_t disk_offset;
  off_t open_offset;
} Finfo;

enum {FD_STDIN, FD_STDOUT, FD_STDERR, FD_FB, FD_EVENTS, FD_DISPINFO, FD_NORMAL};

/* This is the information about all files in disk. */
static Finfo file_table[] __attribute__((used)) = {
  {"stdin (note that this is not the actual stdin)", 0, 0},
  {"stdout (note that this is not the actual stdout)", 0, 0},
  {"stderr (note that this is not the actual stderr)", 0, 0},
  [FD_FB] = {"/dev/fb", 0, 0},
  [FD_EVENTS] = {"/dev/events", 0, 0},
  [FD_DISPINFO] = {"/proc/dispinfo", 128, 0},
#include "files.h"
};

#define NR_FILES (sizeof(file_table) / sizeof(file_table[0]))

void ramdisk_read(void *buf, off_t offset, size_t len);
void ramdisk_write(const void *buf, off_t offset, size_t len);
void dispinfo_read(void *buf, off_t offset, size_t len);
void fb_write(const void *buf, off_t offset, size_t len);
size_t events_read(void *buf, size_t len);

void init_fs() {
  // TODO: initialize the size of /dev/fb
  file_table[FD_FB].size=_screen.height*_screen.width*4;
//   file_table[FD_FB].size=114514;
//   Log("The file size is fit to 114514");
}

size_t fs_filesz(int fd) {
	return file_table[fd].size;
    // return 114514;
}

int fs_open(const char *pathname,int flags,int mode)
{
    Log("Pathname: %s", pathname);
    for(int i=0;i<NR_FILES;i++)
    {
        printf("%s\n",file_table[i].name);
        if(strcmp(file_table[i].name,pathname)==0)  
        {
            Log("File %d",i);
            return i;
        }
    }
    Log("File not found");
    return -1;
}

ssize_t fs_read(int fd,void *buf,size_t len)
{
    // ssize_t fs_size=file_table[fd].size;
    ssize_t fs_size=fs_filesz(fd);
    if(file_table[fd].open_offset+len>fs_size)  len=fs_size-file_table[fd].open_offset;
    // printf("fs_read=%d  FD_EVENTS=%d len=%d\n",fd,FD_EVENTS,len);
    switch(fd)
    {
        //case FD_STDIN:
        case FD_STDOUT:
        case FD_STDIN:
        case FD_STDERR:
            return 0;
        case FD_EVENTS:
            len=events_read((void *)buf,len);
            break;
        case FD_DISPINFO:
            dispinfo_read(buf,file_table[fd].open_offset,len);
            file_table[fd].open_offset+=len;
            break;
        default:
            ramdisk_read(buf,file_table[fd].disk_offset+file_table[fd].open_offset,len);
            file_table[fd].open_offset+=len;
            return len;
    }
    return len;
}

ssize_t fs_write(int fd,const void *buf,size_t len)
{
    // printf("fd=%d, fs_stdout=%d, fs_size=%d, fs_ssize=%d, screen_height=%d\n",fd,FD_STDOUT,len,file_table[fd].size,_screen.height);
    // ssize_t fs_size=file_table[fd].size;
    ssize_t fs_size=fs_filesz(fd);
    // if(file_table[fd].open_offset+len>fs_size)  len=fs_size-file_table[fd].open_offset;
    
    switch(fd)
    {
        case FD_STDOUT:
        case FD_STDERR:
            for(int i=0;i<len;i++)
            {
                _putc(((char*)buf)[i]);
            }
            return len;
        case FD_FB:
            fb_write(buf,file_table[fd].open_offset,len);
        default:
            if(fd!=FD_FB)
            {
                if(file_table[fd].open_offset+len>fs_size)  len=fs_size-file_table[fd].open_offset;
                ramdisk_write(buf,file_table[fd].disk_offset+file_table[fd].open_offset,len);
            }
            file_table[fd].open_offset+=len;
            return len;
    }
    Log("3");
    return len;
}

off_t fs_lseek(int fd,off_t offset,int whence)
{
    off_t res=-1;
    switch(whence) {
		case SEEK_SET:
			if (offset >= 0 && offset <= file_table[fd].size) {
				file_table[fd].open_offset = offset;
				res = file_table[fd].open_offset;
			}
			break;
		case SEEK_CUR:
			if ((offset + file_table[fd].open_offset >= 0) && (offset + file_table[fd].open_offset <= file_table[fd].size)) {
				file_table[fd].open_offset += offset;
				res = file_table[fd].open_offset;
			}
			break;
		case SEEK_END:
			file_table[fd].open_offset = file_table[fd].size + offset;
			res = file_table[fd].open_offset;
			break;
	}
	return res;
}

int fs_close(int fd)
{
    return 0;
}