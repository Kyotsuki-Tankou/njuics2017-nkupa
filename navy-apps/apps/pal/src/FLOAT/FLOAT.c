#include "FLOAT.h"
#include <stdint.h>
#include <assert.h>

FLOAT F_mul_F(FLOAT a, FLOAT b) {
  return ((long long)a*(long long)b)>>16;
}

FLOAT F_div_F(FLOAT a, FLOAT b) {
  int sign=((a^b)&0x80000000)==0x80000000;
  FLOAT x=Fabs(a);
  FLOAT y=Fabs(b);
  FLOAT z=x/y;
  x=x%y;
  for(int i=1;i<=16;i++)
  {
    z<<=1;
    x<<=1;
    if(x>=y)
    {
        x-=y;
        z++;
    }
  }
  if(sign)  z=-z;
  return z;
}

FLOAT f2F(float a) {
  /* You should figure out how to convert `a' into FLOAT without
   * introducing x87 floating point instructions. Else you can
   * not run this code in NEMU before implementing x87 floating
   * point instructions, which is contrary to our expectation.
   *
   * Hint: The bit representation of `a' is already on the
   * stack. How do you retrieve it to another variable without
   * performing arithmetic operations on it directly?
   */
  union float_{
    struct{
        uint32_t m:23;
        uint32_t e:8;
        uint32_t signal:1;
    };
    uint32_t val;
  }f;
  f.val=*((uint32_t*)(void*)&a);
  int exp=f.e-127;
  FLOAT res;
  if(exp>7)  res=(f.m|(1<<23))>>(exp-7);
  if(exp<=7)  res=(f.m|(1<<23))>>7-exp;
  if(f.signal==1)  res=res&0xFFFFFFFF;
  return res;
}

FLOAT Fabs(FLOAT a) {
  return a&0x7FFFFFFF;
}

/* Functions below are already implemented */

FLOAT Fsqrt(FLOAT x) {
  FLOAT dt, t = int2F(2);

  do {
    dt = F_div_int((F_div_F(x, t) - t), 2);
    t += dt;
  } while(Fabs(dt) > f2F(1e-4));

  return t;
}

FLOAT Fpow(FLOAT x, FLOAT y) {
  /* we only compute x^0.333 */
  FLOAT t2, dt, t = int2F(2);

  do {
    t2 = F_mul_F(t, t);
    dt = (F_div_F(x, t2) - t) / 3;
    t += dt;
  } while(Fabs(dt) > f2F(1e-4));

  return t;
}
