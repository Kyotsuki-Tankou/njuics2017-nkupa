#include <am.h>
#include <x86.h>

#define RTC_PORT 0x48   // Note that this is not standard
static unsigned long boot_time;

void _ioe_init() {
  boot_time = inl(RTC_PORT);
}

unsigned long _uptime() {
  return inl(RTC_PORT)-boot_time;
  // return 0;
}

uint32_t* const fb = (uint32_t *)0x40000;

_Screen _screen = {
  .width  = 400,
  .height = 300,
};

extern void* memcpy(void *, const void *, int);

void _draw_rect(const uint32_t *pixels, int x, int y, int w, int h) {
  for(int i=0;i<h&&y+i<_screen.height;i++)
  {
    memcpy(fb+(y+i)*_screen.width+x,pixels+i*w,w*4);
  }
}

void _draw_sync() {
  
}

int _read_key() {
  return inl(0x64)?inl(0x60):_KEY_NONE;
}
