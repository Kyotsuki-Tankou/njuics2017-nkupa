#include "cpu/exec.h"

//arith.c
make_EHelper(add);
make_EHelper(sub);
make_EHelper(cmp);
make_EHelper(inc);
make_EHelper(dec);
make_EHelper(neg);
make_EHelper(adc);
make_EHelper(sbb);
make_EHelper(mul);
make_EHelper(imul1);
make_EHelper(imul2);
make_EHelper(div);
make_EHelper(idiv);

//control.c
make_EHelper(jmp);
make_EHelper(jcc);
make_EHelper(jmp_rm);
make_EHelper(call);
make_EHelper(ret);
make_EHelper(call_rm);

//data_mov.c
make_EHelper(mov);
make_EHelper(push);
make_EHelper(pop);
make_EHelper(pusha);
// make_EHelper(popa);//todo
// make_EHelper(leave);//todo
// make_EHelper(cltd);//todo
// make_EHelper(cwtl);//todo
make_EHelper(movsx);
make_EHelper(movzx);
make_EHelper(lea);

//logic.c
make_EHelper(test);
make_EHelper(and);
make_EHelper(xor);
make_EHelper(or);
// make_EHelper(sar);//todo
// make_EHelper(shl);//todo
// make_EHelper(shr);//todo
make_EHelper(setcc);
make_EHelper(not);

//prefix.c
make_EHelper(operand_size);

//special.c
make_EHelper(nop);
make_EHelper(inv);
make_EHelper(nemu_trap);

//system.c
// make_EHelper(lidt);//todo
// make_EHelper(mov_r2cr);//todo
// make_EHelper(mov_cr2r);//todo
// make_EHelper(int);//todo
// make_EHelper(iret);//todo
// make_EHelper(in);//todo
// make_EHelper(out);//todo