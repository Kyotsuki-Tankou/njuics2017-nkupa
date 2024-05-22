#include "cpu/exec.h"
#include "memory/mmu.h"

void raise_intr(uint8_t NO, vaddr_t ret_addr) {
  /* TODO: Trigger an interrupt/exception with ``NO''.
   * That is, use ``NO'' to index the IDT.
   */
//   push efl->cs->eip
  rtl_push((rtlreg_t *)&cpu.eflags);
  cpu.eflags.IF=0;
  rtl_push((rtlreg_t *)&cpu.cs);
  rtl_push((rtlreg_t *)&ret_addr);
  //read
  uint32_t idtr_base=cpu.idtr.base;
  //index
  uint32_t eip_low,eip_high;
  eip_high=(vaddr_read(idtr_base+NO*8+4,4));
  eip_low=(vaddr_read(idtr_base+NO*8,4));
  eip_high=eip_high&0xffff0000;
  eip_low=eip_low&0x0000ffff;
  //object
  uint32_t offset=eip_high;
  offset=eip_high|eip_low;
  //jmp
  decoding.jmp_eip=offset;
  decoding.is_jmp=1;
//     rtl_push(&cpu.eflags.val);

//   cpu.eflags.IF = 0;

//   rtl_push(&cpu.cs);
//   rtl_push(&ret_addr);
  
//   rtl_li(&t0,vaddr_read(cpu.idtr.base+8*NO,4));
//   rtl_li(&t1,vaddr_read(cpu.idtr.base+8*NO+4,4));
//   if((t1 & 0x00008000) == 0)
//       assert(0);
//   decoding.jmp_eip = (t0&0xffff)|(t1&0xffff0000);
//   decoding.is_jmp = 1;
}

void dev_raise_intr() {
    cpu.INTR=true;
}
