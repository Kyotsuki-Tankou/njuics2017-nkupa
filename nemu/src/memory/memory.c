#include "nemu.h"

#define PMEM_SIZE (128 * 1024 * 1024)

#define pmem_rw(addr, type) *(type *)({\
    Assert(addr < PMEM_SIZE, "physical address(0x%08x) is out of bound", addr); \
    guest_to_host(addr); \
    })

uint8_t pmem[PMEM_SIZE];

/* Memory accessing interfaces */

uint32_t paddr_read(paddr_t addr, int len) {
  return is_mmio(addr)==-1?pmem_rw(addr, uint32_t) & (~0u >> ((4 - len) << 3)):mmio_read(addr,len,is_mmio(addr));
}

void paddr_write(paddr_t addr, int len, uint32_t data) {
  if(is_mmio(addr)==-1)  memcpy(guest_to_host(addr), &data, len);
  else  mmio_write(addr,len,data,is_mmio(addr));
}

//x86.h
// +--------10------+-------10-------+---------12----------+
// | Page Directory |   Page Table   | Offset within Page  |
// |      Index     |      Index     |                     |
// +----------------+----------------+---------------------+
//  \--- PDX(va) --/ \--- PTX(va) --/\------ OFF(va) ------/
#define PDX(va)     (((uint32_t)(va) >> 22) & 0x3ff)
#define PTX(va)     (((uint32_t)(va) >> 12) & 0x3ff)
#define OFF(va)     ((uint32_t)(va) & 0xfff)
#define PTE_ADDR(pte)   ((uint32_t)(pte) & ~0xfff)

// paddr_t page_translate(vaddr_t addr,bool flag)
// {
//     CR0 cr0=cpu.cr0;
//     CR3 cr3=cpu.cr3;
//     if(cr0.paging&&cr0.protect_enable)
//     {
//         PDE* pgdirs=(PDE*)PTE_ADDR(cr3.val);
//         PDE pde=(PDE)paddr_read((uint32_t)(pgdirs+PDX(addr)),4);
//         assert(pde.present);
//         PTE* pgtabs=(PTE*)PTE_ADDR(pde.val);
//         PTE pte=(PTE)paddr_read((uint32_t)(pgtabs+PDX(addr)),4);
//         assert(pte.present);
//         pde.accessed=1;
//         pte.accessed=1;
//         pte.dirty=flag?1:pte.dirty;
//         paddr_t paddr=PTE_ADDR(pde.val)|OFF(addr);
//         return paddr;
//     }
//     return addr;
// }
paddr_t page_translate(vaddr_t addr, bool w1r0) {
    //aka page_walk
    PDE pde, *pgdir;
    PTE pte, *pgtab;
    // 只有进入保护模式并开启分页机制后才会进行页级地址转换。。。。。。。。。。
    if (cpu.cr0.protect_enable && cpu.cr0.paging) {
	    pgdir = (PDE *)(PTE_ADDR(cpu.cr3.val)); //cr3存放20位的基址作为页目录入口
	    pde.val = paddr_read((paddr_t)&pgdir[PDX(addr)], 4);
	    assert(pde.present);
	    pde.accessed = 1;

	    pgtab = (PTE *)(PTE_ADDR(pde.val));  //页目录存放20位的基址作为页表入口
	    pte.val = paddr_read((paddr_t)&pgtab[PTX(addr)], 4);
	    assert(pte.present);
	    pte.accessed = 1;
	    pte.dirty = w1r0 ? 1 : pte.dirty; //写则置脏位

	    //pte高20位和线性地址低12位拼接成真实地址
	    return PTE_ADDR(pte.val) | OFF(addr); 
	}

    return addr;
}
uint32_t vaddr_read(vaddr_t addr, int len) {
    if(PTE_ADDR(addr)!=PTE_ADDR(addr+len-1))
    {
        printf("Error\n");
        assert(0);
    }   
    else{
        paddr_t paddr=page_translate(addr,false);
        return paddr_read(paddr, len);
    }
}

void vaddr_write(vaddr_t addr, int len, uint32_t data) {
    if(PTE_ADDR(addr)!=PTE_ADDR(addr+len-1))
    {
        printf("Error\n");
        assert(0);
    }   
    else{
        paddr_t paddr=page_translate(addr,true);
        return paddr_write(paddr, len,data);
    }
}
