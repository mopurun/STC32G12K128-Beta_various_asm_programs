.area HOME (CODE)
.area XSEG (XDATA)
.area PSEG (PAG,XDATA)
.area RSEG (ABS,DATA)
P1 = 0x90 ;p262
P2 = 0xA0 ;
P3 = 0xB0
P2M0 = 0x96
P2M1 = 0x95
.area CSEG (ABS,CODE)
	xrl P2M0, #255 ; xor
	xrl P2M1, #255 ; xor
_start:
	xrl P2, #255 ; xor
	mov A, #100
	push A
wait1_bloop:	
	mov A, #255
wait1_loop:
	nop
	nop
	nop
	dec A
	jnz wait1_loop
	pop A
	dec A
	push A	
	jnz wait1_bloop
	ljmp _start
