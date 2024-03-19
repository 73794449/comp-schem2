macro mov reg1, reg2: {or reg1, z, reg2;}
accept poh: 1Ah, 5Dh, 50h, 2Bh, 6Fh, 60h, 0ABh, 0FFh, 0D4h, 0CDh, 40h, 70h, 8Fh, 90h, 7Ch, 2Ah
link l1: z
link l3: z

{mov r10, r9;}
{nxor r10, r8;}
{mov r11, r9;}
{sub sla, r11, r10;}
{push nz, 3;}
labelx {sub sra, r12, r13;}
{cjs l1, label1;}
mpp1 {mov r7, r5;}
{sub sla, r7, r1;}
{cjs not l3, label3;}
{sub sra, r6, r9;}
{mov r5, r8;}
{add r5, r6;}
label1 {rpct labelx;}
{mov r7, r5;}
{nand r7, r6;}
{cjp nz, END;}
org 200h
label3 {add r8, r7, nz;}
{crtn nz;}
END{}
