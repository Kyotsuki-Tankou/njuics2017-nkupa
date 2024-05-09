#include "common.h"

#define NAME(key) \
  [_KEY_##key] = #key,

static const char *keyname[256] __attribute__((used)) = {
  [_KEY_NONE] = "NONE",
  _KEYS(NAME)
};

size_t events_read(void *buf, size_t len) {
//   return 0;
    
    int key = _read_key();
    // Log("Event Reading key=%x, len=%d\n",key, len);
	bool down = false;
	if (key & 0x8000) {
		key ^= 0x8000;
		down = true;
	}
    if (key == _KEY_NONE) {
		unsigned long t = _uptime();
		sprintf(buf, "t %d\n", t);
	}
    else {
		sprintf(buf, "%s %s\n", down ? "kd" : "ku", keyname[key]);
		// Log("Get key: %d %s %s\n", key, keyname[key], down ? "down" : "up");
	}
  // Log("event %d", strlen(buf));
	return strlen(buf);
}

static char dispinfo[128] __attribute__((used));

void dispinfo_read(void *buf, off_t offset, size_t len) {
    strncpy(buf,dispinfo+offset,len);
}

void fb_write(const void *buf, off_t offset, size_t len) {
    int x,y;
    offset/=4;
    y=offset/_screen.width;
    x=offset%_screen.width;
    _draw_rect(buf,x,y,len/4,1);
}

void init_device() {
  _ioe_init();

  // TODO: print the string to array `dispinfo` with the format
  // described in the Navy-apps convention
  sprintf(dispinfo,"WIDTH:%d\nHEIGHT:%d",_screen.width,_screen.height);
}
