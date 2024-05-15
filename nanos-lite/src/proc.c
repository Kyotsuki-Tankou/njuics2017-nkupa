#include "proc.h"

#define MAX_NR_PROC 4

static PCB pcb[MAX_NR_PROC];
static int nr_proc = 0;
PCB *current = NULL;

uintptr_t loader(_Protect *as, const char *filename);

void load_prog(const char *filename) {
  int i = nr_proc ++;
  _protect(&pcb[i].as);

  uintptr_t entry = loader(&pcb[i].as, filename);
  // TODO: remove the following three lines after you have implemented _umake()
  Log("2");
  _switch(&pcb[i].as);
  Log("2");
  current = &pcb[i];
  Log("2");
  ((void (*)(void))entry)();
  Log("2");
  _Area stack;
  Log("2");
  stack.start = pcb[i].stack;
  Log("2");
  stack.end = stack.start + sizeof(pcb[i].stack);
  pcb[i].tf = _umake(&pcb[i].as, stack, stack, (void *)entry, NULL, NULL);
}

_RegSet* schedule(_RegSet *prev) {
  return NULL;
}
