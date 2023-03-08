	.text
	.file	"bitops.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisPopcount
.LCPI0_0:
	.zero	16,85
.LCPI0_1:
	.zero	16,51
.LCPI0_2:
	.zero	16,15
	.text
	.globl	redisPopcount
	.p2align	4, 0x90
	.type	redisPopcount,@function
redisPopcount:                          # @redisPopcount
# %bb.0:
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r10d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_5
# %bb.1:
	movl	%edi, %eax
	andl	$3, %eax
	testq	%rax, %rax
	je	.LBB0_5
# %bb.2:                                # %.preheader3
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	movzbl	(%rdi), %ecx
	addq	$1, %rdi
	movzbl	redisPopcount.bitsinbyte(%rcx), %r10d
	addq	%rax, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	leaq	-1(%rsi), %rsi
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%edi, %eax
	andl	$3, %eax
	testq	%rax, %rax
	jne	.LBB0_3
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$28, %rsi
	jl	.LBB0_9
# %bb.6:
	movq	%rsi, %rax
	notq	%rax
	cmpq	$-57, %rax
	movq	$-56, %rcx
	cmovgq	%rax, %rcx
	leaq	(%rsi,%rcx), %r9
	addq	$28, %r9
	leaq	-28(%rsi), %r8
	addq	$28, %rsi
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1431655765,1431655765,1431655765,1431655765]
	movdqa	.LCPI0_1(%rip), %xmm1   # xmm1 = [858993459,858993459,858993459,858993459]
	movdqa	.LCPI0_2(%rip), %xmm2   # xmm2 = [252645135,252645135,252645135,252645135]
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm3
	movl	16(%rdi), %eax
	movl	20(%rdi), %edx
	movl	24(%rdi), %r11d
	addq	$28, %rdi
	movdqa	%xmm3, %xmm4
	psrld	$1, %xmm4
	pand	%xmm0, %xmm4
	psubd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	pand	%xmm1, %xmm4
	psrld	$2, %xmm3
	pand	%xmm1, %xmm3
	paddd	%xmm4, %xmm3
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %eax
	movl	%eax, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %eax
	andl	$858993459, %eax        # imm = 0x33333333
	addl	%ecx, %eax
	movl	%edx, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %edx
	movl	%edx, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %edx
	andl	$858993459, %edx        # imm = 0x33333333
	addl	%ecx, %edx
	movl	%r11d, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %r11d
	movl	%r11d, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %r11d
	andl	$858993459, %r11d       # imm = 0x33333333
	addl	%ecx, %r11d
	movdqa	%xmm3, %xmm4
	psrld	$4, %xmm4
	paddd	%xmm3, %xmm4
	pand	%xmm2, %xmm4
	movl	%eax, %ebx
	shrl	$4, %ebx
	addl	%eax, %ebx
	andl	$252645135, %ebx        # imm = 0xF0F0F0F
	movl	%edx, %eax
	shrl	$4, %eax
	addl	%edx, %eax
	andl	$252645135, %eax        # imm = 0xF0F0F0F
	movl	%r11d, %edx
	shrl	$4, %edx
	addl	%r11d, %edx
	andl	$252645135, %edx        # imm = 0xF0F0F0F
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	paddd	%xmm4, %xmm3
	pshufd	$229, %xmm3, %xmm4      # xmm4 = xmm3[1,1,2,3]
	paddd	%xmm3, %xmm4
	movd	%xmm4, %ecx
	addl	%ebx, %ecx
	addl	%eax, %ecx
	addl	%edx, %ecx
	imull	$16843009, %ecx, %eax   # imm = 0x1010101
	shrl	$24, %eax
	addq	%rax, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-28, %rsi
	cmpq	$55, %rsi
	jg	.LBB0_7
# %bb.8:
	movq	%r9, %rax
	shrq	$2, %rax
	movabsq	$5270498306774157605, %rcx # imm = 0x4924924924924925
	mulq	%rcx
	shrq	%rdx
	leaq	(%rdx,%rdx,8), %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	movq	%r9, %rcx
	subq	%rax, %rcx
	subq	%r9, %rcx
	addq	%rcx, %r8
	movq	%r8, %rsi
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_17
# %bb.10:
	leaq	-1(%rsi), %rax
	movq	%rsi, %rdx
	andq	$3, %rdx
	je	.LBB0_14
# %bb.11:                               # %.preheader1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %ebx
	movzbl	redisPopcount.bitsinbyte(%rbx), %ebx
	addq	%rbx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_12
# %bb.13:                               # %.loopexit2
	subq	%rcx, %rsi
	addq	%rcx, %rdi
.LBB0_14:
	cmpq	$3, %rax
	jb	.LBB0_17
# %bb.15:                               # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %ecx
	movzbl	redisPopcount.bitsinbyte(%rcx), %ecx
	addq	%r10, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdi,%rax), %edx
	movzbl	redisPopcount.bitsinbyte(%rdx), %edx
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rdi,%rax), %ecx
	movzbl	redisPopcount.bitsinbyte(%rcx), %ecx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rdi,%rax), %edx
	movzbl	redisPopcount.bitsinbyte(%rdx), %r10d
	addq	%rcx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_16
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %rax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	redisPopcount, .Lfunc_end0-redisPopcount
                                        # -- End function
	.globl	redisBitpos             # -- Begin function redisBitpos
	.p2align	4, 0x90
	.type	redisBitpos,@function
redisBitpos:                            # @redisBitpos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	testl	%edx, %edx
	movl	$255, %r8d
	cmovneq	%rcx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_25
# %bb.1:
	movl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	je	.LBB1_25
# %bb.2:                                # %.preheader3
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r8
	jne	.LBB1_4
# %bb.23:                               #   in Loop: Header=BB1_3 Depth=1
	addq	$1, %rdi
	addq	$8, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	leaq	-1(%rsi), %rsi
	je	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_3 Depth=1
	movl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.LBB1_3
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	sbbq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rsi
	jb	.LBB1_28
	.p2align	4, 0x90
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_5
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=1
	addq	$8, %rdi
	addq	$-8, %rsi
	addq	$64, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rsi
	ja	.LBB1_26
.LBB1_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB1_6
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	jmp	.LBB1_30
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movzbl	(%rdi), %r8d
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	jne	.LBB1_7
.LBB1_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_31
.LBB1_7:
	movzbl	1(%rdi), %eax
	orq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jne	.LBB1_8
.LBB1_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB1_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB1_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB1_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB1_17
# %bb.16:
	movq	$-1, %rax
	testq	%r8, %r8
	je	.LBB1_22
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	testq	%r8, %rax
	setne	%sil
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	je	.LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%rax, %rsi
	shrq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	testq	%r8, %rsi
	setne	%dil
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %edi
	je	.LBB1_20
# %bb.36:                               #   in Loop: Header=BB1_18 Depth=1
	addq	$2, %rcx
	shrq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_18
# %bb.37:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$184, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB1_20:
	addq	$1, %rcx
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
.LBB1_22:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB1_8:
	movzbl	2(%rdi), %eax
	orq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rsi
	je	.LBB1_32
# %bb.9:
	movzbl	3(%rdi), %eax
	orq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rsi
	je	.LBB1_33
# %bb.10:
	movzbl	4(%rdi), %eax
	orq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rsi
	je	.LBB1_34
# %bb.11:
	movzbl	5(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-6, %rsi
	je	.LBB1_35
# %bb.12:
	movzbl	6(%rdi), %eax
	orq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	shlq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	je	.LBB1_15
# %bb.13:
	movzbl	7(%rdi), %eax
	orq	%rax, %r8
	jmp	.LBB1_14
.Lfunc_end1:
	.size	redisBitpos, .Lfunc_end1-redisBitpos
                                        # -- End function
	.globl	setUnsignedBitfield     # -- Begin function setUnsignedBitfield
	.p2align	4, 0x90
	.type	setUnsignedBitfield,@function
setUnsignedBitfield:                    # @setUnsignedBitfield
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB2_3
# %bb.1:                                # %.preheader
	movq	%rcx, %r8
	addq	$-1, %rdx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	xorl	%r10d, %r10d
	btq	%rdx, %r8
	setb	%r10b
	movq	%rsi, %r9
	shrq	$3, %r9
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	shll	%cl, %r10d
	movzbl	(%rdi,%r9), %eax
	btrl	%ecx, %eax
	orl	%eax, %r10d
	movb	%r10b, (%rdi,%r9)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	jb	.LBB2_2
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	setUnsignedBitfield, .Lfunc_end2-setUnsignedBitfield
                                        # -- End function
	.globl	setSignedBitfield       # -- Begin function setSignedBitfield
	.p2align	4, 0x90
	.type	setSignedBitfield,@function
setSignedBitfield:                      # @setSignedBitfield
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB3_3
# %bb.1:                                # %.preheader
	movq	%rcx, %r8
	addq	$-1, %rdx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	xorl	%r10d, %r10d
	btq	%rdx, %r8
	setb	%r10b
	movq	%rsi, %r9
	shrq	$3, %r9
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	shll	%cl, %r10d
	movzbl	(%rdi,%r9), %eax
	btrl	%ecx, %eax
	orl	%eax, %r10d
	movb	%r10b, (%rdi,%r9)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	jb	.LBB3_2
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	setSignedBitfield, .Lfunc_end3-setSignedBitfield
                                        # -- End function
	.globl	getUnsignedBitfield     # -- Begin function getUnsignedBitfield
	.p2align	4, 0x90
	.type	getUnsignedBitfield,@function
getUnsignedBitfield:                    # @getUnsignedBitfield
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_1
# %bb.2:
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpq	$1, %rdx
	jne	.LBB4_4
# %bb.3:
	xorl	%edx, %edx
                                        # implicit-def: $rax
	testq	%r8, %r8
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB4_4:
	movq	%r8, %r9
	subq	%rdx, %r9
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	shrq	$3, %rcx
	movzbl	(%rdi,%rcx), %r10d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %r10
	andl	$1, %r10d
	leaq	1(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movzbl	(%rdi,%rdx), %edx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdx
	andl	$1, %edx
	addq	%r10, %r10
	leaq	(%r10,%rax,4), %rax
	orq	%rdx, %rax
	addq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %r9
	jne	.LBB4_5
# %bb.6:
	leaq	(%rax,%rax), %rdx
	testq	%r8, %r8
	je	.LBB4_9
.LBB4_8:
	movq	%rsi, %rax
	shrq	$3, %rax
	movzbl	(%rdi,%rax), %eax
	notb	%sil
	andb	$7, %sil
	movl	%esi, %ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %eax
	orq	%rdx, %rax
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	getUnsignedBitfield, .Lfunc_end4-getUnsignedBitfield
                                        # -- End function
	.globl	getSignedBitfield       # -- Begin function getSignedBitfield
	.p2align	4, 0x90
	.type	getSignedBitfield,@function
getSignedBitfield:                      # @getSignedBitfield
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB5_1
# %bb.2:
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpq	$1, %rdx
	jne	.LBB5_4
# %bb.3:
	xorl	%r9d, %r9d
                                        # implicit-def: $rax
	testq	%r8, %r8
	jne	.LBB5_8
	jmp	.LBB5_9
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_9
.LBB5_4:
	movq	%r8, %r9
	subq	%rdx, %r9
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	shrq	$3, %rcx
	movzbl	(%rdi,%rcx), %r10d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %r10
	andl	$1, %r10d
	leaq	1(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r11
	shrq	$3, %r11
	movzbl	(%rdi,%r11), %r11d
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %r11
	andl	$1, %r11d
	addq	%r10, %r10
	leaq	(%r10,%rax,4), %rax
	orq	%r11, %rax
	addq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %r9
	jne	.LBB5_5
# %bb.6:
	leaq	(%rax,%rax), %r9
	testq	%r8, %r8
	je	.LBB5_9
.LBB5_8:
	movq	%rsi, %rax
	shrq	$3, %rax
	movzbl	(%rdi,%rax), %eax
	notb	%sil
	andb	$7, %sil
	movl	%esi, %ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %eax
	orq	%r9, %rax
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rdx), %ecx
	movzbl	%cl, %ecx
	btq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB5_11
# %bb.10:
	movq	$-1, %rsi
	movl	%edx, %ecx
	shlq	%cl, %rsi
	orq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	getSignedBitfield, .Lfunc_end5-getSignedBitfield
                                        # -- End function
	.globl	checkUnsignedBitfieldOverflow # -- Begin function checkUnsignedBitfieldOverflow
	.p2align	4, 0x90
	.type	checkUnsignedBitfieldOverflow,@function
checkUnsignedBitfieldOverflow:          # @checkUnsignedBitfieldOverflow
# %bb.0:
	movl	%ecx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %rdx
	jne	.LBB6_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r10
	jmp	.LBB6_3
.LBB6_2:
	movq	$-1, %r10
	movl	%edx, %ecx
	shlq	%cl, %r10
	notq	%r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r10
	jb	.LBB6_6
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB6_10
# %bb.4:
	movq	%r10, %rax
	subq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jge	.LBB6_5
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r8, %r8
	je	.LBB6_17
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB6_16
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r9d
	jne	.LBB6_17
# %bb.9:
	movq	%r10, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_17
.LBB6_10:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB6_17
# %bb.11:
	movq	%rdi, %rcx
	negq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jle	.LBB6_17
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%r8, %r8
	je	.LBB6_17
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB6_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r9d
	jne	.LBB6_17
# %bb.15:
	movq	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_17
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB6_17
.LBB6_16:
	movq	$-1, %rax
	movl	%edx, %ecx
	shlq	%cl, %rax
	addq	%rdi, %rsi
	notq	%rax
	andq	%rsi, %rax
	movq	%rax, (%r8)
	movl	$1, %eax
.LBB6_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	checkUnsignedBitfieldOverflow, .Lfunc_end6-checkUnsignedBitfieldOverflow
                                        # -- End function
	.globl	checkSignedBitfieldOverflow # -- Begin function checkSignedBitfieldOverflow
	.p2align	4, 0x90
	.type	checkSignedBitfieldOverflow,@function
checkSignedBitfieldOverflow:            # @checkSignedBitfieldOverflow
# %bb.0:
	movl	%ecx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %rdx
	jne	.LBB7_1
# %bb.21:
	movabsq	$9223372036854775807, %r11 # imm = 0x7FFFFFFFFFFFFFFF
	movq	%r11, %rcx
	subq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	leaq	1(%r11), %r10
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	js	.LBB7_10
# %bb.4:
	testq	%rsi, %rsi
	jle	.LBB7_10
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jl	.LBB7_6
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r10
	jg	.LBB7_15
# %bb.11:
	movq	%r10, %rcx
	subq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jg	.LBB7_15
.LBB7_13:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rsi
	jns	.LBB7_20
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jle	.LBB7_20
.LBB7_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%r8, %r8
	je	.LBB7_20
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB7_19
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r9d
	jne	.LBB7_20
# %bb.18:
	movq	%r10, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_20
.LBB7_1:
	leal	-1(%rdx), %ecx
	movq	$-1, %r10
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r10
	movq	%r10, %r11
	notq	%r11
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rdi, %rcx
	jl	.LBB7_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	cmpq	%rsi, %rcx
	jge	.LBB7_3
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r8, %r8
	je	.LBB7_20
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB7_19
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r9d
	jne	.LBB7_20
# %bb.9:
	movq	%r11, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_20
.LBB7_19:
	movq	$-1, %rax
	movl	%edx, %ecx
	shlq	%cl, %rax
	addb	$-1, %dl
	addq	%rdi, %rsi
	movzbl	%dl, %ecx
	movq	%rax, %rdx
	orq	%rsi, %rdx
	notq	%rax
	andq	%rsi, %rax
	btq	%rcx, %rsi
	cmovbq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r8)
	movl	$1, %eax
.LBB7_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	checkSignedBitfieldOverflow, .Lfunc_end7-checkSignedBitfieldOverflow
                                        # -- End function
	.globl	printBits               # -- Begin function printBits
	.p2align	4, 0x90
	.type	printBits,@function
printBits:                              # @printBits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_3
# %bb.1:                                # %.preheader
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	testb	%bl, %bl
	setns	%sil
	xorl	$49, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andl	$64, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andl	$32, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andl	$16, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andl	$8, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andl	$4, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andl	$2, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %ebx
	orl	$48, %ebx
	movl	$.L.str.2, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jne	.LBB8_2
.LBB8_3:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	printBits, .Lfunc_end8-printBits
                                        # -- End function
	.globl	getBitOffsetFromArgument # -- Begin function getBitOffsetFromArgument
	.p2align	4, 0x90
	.type	getBitOffsetFromArgument,@function
getBitOffsetFromArgument:               # @getBitOffsetFromArgument
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%r8d, %r12d
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	8(%rsi), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	xorl	%ebx, %ebx
	cmpb	$4, %al
	ja	.LBB9_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_3:
	shrq	$3, %rsi
	jmp	.LBB9_8
.LBB9_1:
	xorl	%esi, %esi
	jmp	.LBB9_8
.LBB9_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB9_8
.LBB9_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB9_8
.LBB9_6:
	movl	-9(%rdi), %esi
	jmp	.LBB9_8
.LBB9_7:
	movq	-17(%rdi), %rsi
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB9_12
# %bb.9:
	testl	%ecx, %ecx
	je	.LBB9_12
# %bb.10:
	cmpb	$35, %al
	jne	.LBB9_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB9_12:
	movl	%ebx, %eax
	addq	%rax, %rdi
	subq	%rax, %rsi
	leaq	-40(%rbp), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_13
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB9_16
# %bb.15:
	movslq	%r12d, %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_17
.LBB9_16:
	movq	-40(%rbp), %rax
.LBB9_17:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB9_13
# %bb.18:
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_19
.LBB9_13:
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$-1, %eax
	jmp	.LBB9_20
.LBB9_19:
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB9_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	getBitOffsetFromArgument, .Lfunc_end9-getBitOffsetFromArgument
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
                                        # -- End function
	.text
	.globl	getBitfieldTypeFromArgument # -- Begin function getBitfieldTypeFromArgument
	.p2align	4, 0x90
	.type	getBitfieldTypeFromArgument,@function
getBitfieldTypeFromArgument:            # @getBitfieldTypeFromArgument
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %r15
	movq	8(%rsi), %rbx
	movb	(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpb	$105, %cl
	je	.LBB10_3
# %bb.1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$117, %cl
	jne	.LBB10_2
.LBB10_3:
	movl	%eax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	string2ll
	movq	-40(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_2
# %bb.4:
	testq	%rcx, %rcx
	jle	.LBB10_2
# %bb.5:
	movl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %rcx
	jl	.LBB10_7
# %bb.6:
	cmpl	$1, %eax
	je	.LBB10_2
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %rcx
	jl	.LBB10_9
# %bb.8:
	testl	%eax, %eax
	jne	.LBB10_9
.LBB10_2:
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$-1, %eax
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_9:
	movl	%ecx, (%r14)
	xorl	%eax, %eax
	jmp	.LBB10_10
.Lfunc_end10:
	.size	getBitfieldTypeFromArgument, .Lfunc_end10-getBitfieldTypeFromArgument
                                        # -- End function
	.globl	lookupStringForBitCommand # -- Begin function lookupStringForBitCommand
	.p2align	4, 0x90
	.type	lookupStringForBitCommand,@function
lookupStringForBitCommand:              # @lookupStringForBitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	shrq	$3, %r14
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:
	movq	%rax, %r12
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB11_5
# %bb.3:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r15
	movq	8(%rax), %rdi
	addq	$1, %r14
	movq	%r14, %rsi
	callq	sdsgrowzero
	movq	%rax, 8(%r15)
	jmp	.LBB11_4
.LBB11_1:
	addq	$1, %r14
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	sdsnewlen
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	lookupStringForBitCommand, .Lfunc_end11-lookupStringForBitCommand
                                        # -- End function
	.globl	getObjectReadOnlyString # -- Begin function getObjectReadOnlyString
	.p2align	4, 0x90
	.type	getObjectReadOnlyString,@function
getObjectReadOnlyString:                # @getObjectReadOnlyString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB12_16
# %bb.1:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB12_4
# %bb.2:
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB12_15
# %bb.3:
	movq	8(%rdi), %rdx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	cltq
	jmp	.LBB12_14
.LBB12_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB12_15
# %bb.5:
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_6
# %bb.7:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_8:
	shrq	$3, %rax
	jmp	.LBB12_13
.LBB12_10:
	movzwl	-5(%rbx), %eax
	jmp	.LBB12_13
.LBB12_12:
	movq	-17(%rbx), %rax
	jmp	.LBB12_13
.LBB12_6:
	xorl	%eax, %eax
	jmp	.LBB12_13
.LBB12_9:
	movzbl	-3(%rbx), %eax
	jmp	.LBB12_13
.LBB12_11:
	movl	-9(%rbx), %eax
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB12_16:
	movl	$.L.str.7, %edi
	movl	$.L.str, %esi
	movl	$507, %edx              # imm = 0x1FB
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	getObjectReadOnlyString, .Lfunc_end12-getObjectReadOnlyString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_8
	.quad	.LBB12_9
	.quad	.LBB12_10
	.quad	.LBB12_11
	.quad	.LBB12_12
                                        # -- End function
	.text
	.globl	setbitCommand           # -- Begin function setbitCommand
	.p2align	4, 0x90
	.type	setbitCommand,@function
setbitCommand:                          # @setbitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	getBitOffsetFromArgument
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_6
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movl	$.L.str.8, %ecx
	movq	%rbx, %rdi
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_6
# %bb.2:
	cmpq	$2, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB13_4
# %bb.3:
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB13_6
.LBB13_4:
	movq	-40(%rbp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lookupStringForBitCommand
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_6
# %bb.5:
	movq	%r14, %rdx
	shrq	$3, %rdx
	movq	8(%rax), %rax
	movzbl	(%rax,%rdx), %r15d
	notb	%r14b
	andb	$7, %r14b
	movl	%r15d, %esi
	btrl	%r14d, %esi
	movl	-32(%rbp), %edi
	andl	$1, %edi
	movl	%r14d, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movb	%dil, (%rax,%rdx)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movzbl	%r14b, %eax
	btl	%eax, %r15d
	movl	$shared+32, %eax
	movl	$shared+40, %ecx
	cmovaeq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	setbitCommand, .Lfunc_end13-setbitCommand
                                        # -- End function
	.globl	getbitCommand           # -- Begin function getbitCommand
	.p2align	4, 0x90
	.type	getbitCommand,@function
getbitCommand:                          # @getbitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	getBitOffsetFromArgument
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_1
.LBB14_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_20
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB14_20
# %bb.3:
	movq	-40(%rbp), %r15
	movq	%r15, %r12
	shrq	$3, %r12
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB14_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB14_15
.LBB14_5:
	movq	8(%r14), %rax
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB14_11
# %bb.6:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI14_0(,%rdx,8)
.LBB14_12:
	shrq	$3, %rcx
	jmp	.LBB14_13
.LBB14_15:
	movq	8(%r14), %rdx
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jae	.LBB14_18
# %bb.16:
	movsbl	-80(%rbp,%r12), %eax
	jmp	.LBB14_17
.LBB14_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_18
.LBB14_7:
	movzbl	-3(%rax), %ecx
	jmp	.LBB14_13
.LBB14_8:
	movzwl	-5(%rax), %ecx
	jmp	.LBB14_13
.LBB14_9:
	movl	-9(%rax), %ecx
	jmp	.LBB14_13
.LBB14_10:
	movq	-17(%rax), %rcx
.LBB14_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jae	.LBB14_18
# %bb.14:
	movzbl	(%rax,%r12), %eax
.LBB14_17:
	notb	%r15b
	andb	$7, %r15b
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r15b, %edx
	movl	$shared+40, %ecx
	btl	%edx, %eax
	jb	.LBB14_19
.LBB14_18:
	movl	$shared+32, %ecx
.LBB14_19:
	movq	(%rcx), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB14_20
.Lfunc_end14:
	.size	getbitCommand, .Lfunc_end14-getbitCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_12
	.quad	.LBB14_7
	.quad	.LBB14_8
	.quad	.LBB14_9
	.quad	.LBB14_10
                                        # -- End function
	.text
	.globl	bitopCommand            # -- Begin function bitopCommand
	.p2align	4, 0x90
	.type	bitopCommand,@function
bitopCommand:                           # @bitopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	72(%rdi), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %r15
	movq	8(%rcx), %r14
	movb	(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %bl
	je	.LBB15_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$65, %bl
	jne	.LBB15_4
.LBB15_2:
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_5
# %bb.3:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB15_12
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$111, %bl
	je	.LBB15_6
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$79, %bl
	jne	.LBB15_8
.LBB15_6:
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_9
# %bb.7:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movl	$1, %r14d
	jmp	.LBB15_12
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %bl
	je	.LBB15_10
.LBB15_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %bl
	jne	.LBB15_13
.LBB15_10:
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_11
.LBB15_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$110, %bl
	je	.LBB15_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$78, %bl
	jne	.LBB15_16
.LBB15_15:
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_17
.LBB15_16:
	movq	shared+128(%rip), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB15_112
.LBB15_11:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
.LBB15_12:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rdi), %eax
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB15_19:
	movslq	%eax, %r15
	leaq	-24(,%r15,8), %rbx
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r15d
	je	.LBB15_20
# %bb.21:
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movq	%r14, -120(%rbp)        # 8-byte Spill
	addq	$-3, %r15
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB15_22
	.p2align	4, 0x90
.LBB15_23:                              #   in Loop: Header=BB15_22 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	$0, (%rax,%r13,8)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax,%r13,8)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax,%r13,8)
	xorl	%eax, %eax
	movq	%rbx, %rsi
.LBB15_43:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
.LBB15_44:                              #   in Loop: Header=BB15_22 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jae	.LBB15_45
.LBB15_22:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	24(%rax,%r13,8), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_23
# %bb.24:                               #   in Loop: Header=BB15_22 Depth=1
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_25
# %bb.31:                               #   in Loop: Header=BB15_22 Depth=1
	movq	%r14, %rdi
	callq	getDecodedObject
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx,%r13,8)
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx,%r13,8)
	movq	(%rcx,%r13,8), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB15_37
# %bb.32:                               #   in Loop: Header=BB15_22 Depth=1
	movl	%eax, %edx
	andl	$7, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	jmpq	*.LJTI15_0(,%rdx,8)
.LBB15_38:                              #   in Loop: Header=BB15_22 Depth=1
	shrq	$3, %rax
	jmp	.LBB15_39
.LBB15_37:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax,%r13,8)
	xorl	%eax, %eax
	jmp	.LBB15_40
.LBB15_33:                              #   in Loop: Header=BB15_22 Depth=1
	movzbl	-3(%rcx), %eax
	jmp	.LBB15_39
.LBB15_34:                              #   in Loop: Header=BB15_22 Depth=1
	movzwl	-5(%rcx), %eax
	jmp	.LBB15_39
.LBB15_35:                              #   in Loop: Header=BB15_22 Depth=1
	movl	-9(%rcx), %eax
	jmp	.LBB15_39
.LBB15_36:                              #   in Loop: Header=BB15_22 Depth=1
	movq	-17(%rcx), %rax
	.p2align	4, 0x90
.LBB15_39:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rdi,%r13,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	cmpq	%rsi, %rax
	jbe	.LBB15_41
.LBB15_40:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
.LBB15_41:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB15_43
# %bb.42:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB15_43
	jmp	.LBB15_44
.LBB15_45:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	setne	%al
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB15_46
# %bb.47:
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	sdsnewlen
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %r15d
	ja	.LBB15_48
# %bb.49:
	movq	-72(%rbp), %r14         # 8-byte Reload
	cmpq	$32, %r14
	movq	-120(%rbp), %r12        # 8-byte Reload
	jb	.LBB15_50
# %bb.51:
	leaq	-256(%rbp), %rdi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	(%rbx), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB15_52
# %bb.58:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	jne	.LBB15_64
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r9
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB15_60
	.p2align	4, 0x90
.LBB15_63:                              #   in Loop: Header=BB15_60 Depth=1
	addq	$32, %r9
	addq	$-32, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r8
	jbe	.LBB15_57
.LBB15_60:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_62 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jb	.LBB15_63
# %bb.61:                               #   in Loop: Header=BB15_60 Depth=1
	movq	(%r9), %r11
	movq	8(%r9), %rsi
	movq	16(%r9), %rdi
	movq	24(%r9), %rbx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_62:                              #   Parent Loop BB15_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp,%rcx,8), %rdx
	orq	(%rdx), %r11
	movq	%r11, (%r9)
	orq	8(%rdx), %rsi
	movq	%rsi, 8(%r9)
	orq	16(%rdx), %rdi
	movq	%rdi, 16(%r9)
	orq	24(%rdx), %rbx
	movq	%rbx, 24(%r9)
	addq	$32, %rdx
	movq	%rdx, -256(%rbp,%rcx,8)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jb	.LBB15_62
	jmp	.LBB15_63
.LBB15_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB15_106
.LBB15_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movq	-104(%rbp), %r14        # 8-byte Reload
	je	.LBB15_30
# %bb.26:                               # %.preheader9
	xorl	%ebx, %ebx
	jmp	.LBB15_27
	.p2align	4, 0x90
.LBB15_29:                              #   in Loop: Header=BB15_27 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	je	.LBB15_30
.LBB15_27:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_29
# %bb.28:                               #   in Loop: Header=BB15_27 Depth=1
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_29
.LBB15_30:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	jmp	.LBB15_112
.LBB15_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpl	$4, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_113
# %bb.18:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movl	$3, %r14d
	movb	$1, %al
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$4, %eax
	jmp	.LBB15_19
.LBB15_46:
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB15_100
.LBB15_113:
	movl	$.L.str.14, %esi
	callq	addReplyError
	jmp	.LBB15_112
.LBB15_48:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
	jmp	.LBB15_79
.LBB15_50:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	jmp	.LBB15_79
.LBB15_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r9
	movq	%r14, %r8
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB15_53
	.p2align	4, 0x90
.LBB15_56:                              #   in Loop: Header=BB15_53 Depth=1
	addq	$32, %r9
	addq	$-32, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r8
	jbe	.LBB15_57
.LBB15_53:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_55 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jb	.LBB15_56
# %bb.54:                               #   in Loop: Header=BB15_53 Depth=1
	movq	(%r9), %r11
	movq	8(%r9), %rsi
	movq	16(%r9), %rdi
	movq	24(%r9), %rbx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_55:                              #   Parent Loop BB15_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp,%rcx,8), %rdx
	andq	(%rdx), %r11
	movq	%r11, (%r9)
	andq	8(%rdx), %rsi
	movq	%rsi, 8(%r9)
	andq	16(%rdx), %rdi
	movq	%rdi, 16(%r9)
	andq	24(%rdx), %rbx
	movq	%rbx, 24(%r9)
	addq	$32, %rdx
	movq	%rdx, -256(%rbp,%rcx,8)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jb	.LBB15_55
	jmp	.LBB15_56
.LBB15_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB15_70
# %bb.65:
	movq	%r13, %r9
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB15_66
	.p2align	4, 0x90
.LBB15_69:                              #   in Loop: Header=BB15_66 Depth=1
	addq	$32, %r9
	addq	$-32, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r8
	jbe	.LBB15_57
.LBB15_66:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_68 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jb	.LBB15_69
# %bb.67:                               #   in Loop: Header=BB15_66 Depth=1
	movq	(%r9), %r11
	movq	8(%r9), %rsi
	movq	16(%r9), %rdi
	movq	24(%r9), %rbx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_68:                              #   Parent Loop BB15_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp,%rcx,8), %rdx
	xorq	(%rdx), %r11
	movq	%r11, (%r9)
	xorq	8(%rdx), %rsi
	movq	%rsi, 8(%r9)
	xorq	16(%rdx), %rdi
	movq	%rdi, 16(%r9)
	xorq	24(%rdx), %rbx
	movq	%rbx, 24(%r9)
	addq	$32, %rdx
	movq	%rdx, -256(%rbp,%rcx,8)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jb	.LBB15_68
	jmp	.LBB15_69
.LBB15_57:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	andq	$-32, %rbx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
.LBB15_78:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB15_80
.LBB15_99:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_100:
	movq	-104(%rbp), %r12        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB15_105
# %bb.101:                              # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB15_102
	.p2align	4, 0x90
.LBB15_104:                             #   in Loop: Header=BB15_102 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jae	.LBB15_105
.LBB15_102:                             # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_104
# %bb.103:                              #   in Loop: Header=BB15_102 Depth=1
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_104
	.p2align	4, 0x90
.LBB15_98:                              #   in Loop: Header=BB15_80 Depth=1
	movb	%dil, (%r13,%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB15_99
.LBB15_80:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_87 Depth 2
	cmpq	%rbx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB15_81
# %bb.82:                               #   in Loop: Header=BB15_80 Depth=1
	movq	(%r9), %rcx
	movb	(%rcx,%rbx), %dil
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_83
	.p2align	4, 0x90
.LBB15_81:                              #   in Loop: Header=BB15_80 Depth=1
	xorl	%edi, %edi
.LBB15_83:                              #   in Loop: Header=BB15_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB15_85
# %bb.84:                               #   in Loop: Header=BB15_80 Depth=1
	notb	%dil
	movl	$42, __A_VARIABLE(%rip)
.LBB15_85:                              #   in Loop: Header=BB15_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jb	.LBB15_98
# %bb.86:                               # %.preheader1
                                        #   in Loop: Header=BB15_80 Depth=1
	movl	$1, %ecx
	jmp	.LBB15_87
	.p2align	4, 0x90
.LBB15_95:                              #   in Loop: Header=BB15_87 Depth=2
	xorb	%dil, %dl
.LBB15_96:                              #   in Loop: Header=BB15_87 Depth=2
	movl	%edx, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB15_97:                              #   in Loop: Header=BB15_87 Depth=2
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jae	.LBB15_98
.LBB15_87:                              #   Parent Loop BB15_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, (%rsi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB15_88
# %bb.89:                               #   in Loop: Header=BB15_87 Depth=2
	movq	(%r9,%rcx,8), %rdx
	movzbl	(%rdx,%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_90
	.p2align	4, 0x90
.LBB15_88:                              #   in Loop: Header=BB15_87 Depth=2
	xorl	%edx, %edx
.LBB15_90:                              #   in Loop: Header=BB15_87 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %r12b
	je	.LBB15_95
# %bb.91:                               #   in Loop: Header=BB15_87 Depth=2
	cmpb	$1, %r12b
	je	.LBB15_94
# %bb.92:                               #   in Loop: Header=BB15_87 Depth=2
	testb	%r12b, %r12b
	jne	.LBB15_97
# %bb.93:                               #   in Loop: Header=BB15_87 Depth=2
	andb	%dil, %dl
	jmp	.LBB15_96
	.p2align	4, 0x90
.LBB15_94:                              #   in Loop: Header=BB15_87 Depth=2
	orb	%dil, %dl
	jmp	.LBB15_96
.LBB15_105:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	-96(%rbp), %r15         # 8-byte Reload
.LBB15_106:
	callq	zfree
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB15_108
# %bb.107:
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	createObject
	movq	%rax, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	setKey
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$8, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movq	%rbx, %rdi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	callq	decrRefCount
	jmp	.LBB15_110
.LBB15_108:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r14, %rsi
	je	.LBB15_111
# %bb.109:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.16, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
.LBB15_110:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
.LBB15_111:
	addq	$1, server+2080(%rip)
	movq	%rbx, %rdi
	callq	addReplyLongLong
.LBB15_112:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_70:
	cmpb	$0, -88(%rbp)           # 1-byte Folded Reload
	je	.LBB15_71
# %bb.72:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	-32(%rcx), %rdx
	movq	%r13, %rdi
	testb	$32, %dl
	jne	.LBB15_74
# %bb.73:
	pcmpeqd	%xmm0, %xmm0
	movdqu	(%r13), %xmm1
	movdqu	16(%r13), %xmm2
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, (%r13)
	pxor	%xmm0, %xmm2
	movdqu	%xmm2, 16(%r13)
	movq	%r13, %rdi
	addq	$32, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB15_74:
	cmpq	$32, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jb	.LBB15_77
# %bb.75:                               # %.preheader7
	pcmpeqd	%xmm0, %xmm0
.LBB15_76:                              # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm1
	movdqu	16(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, (%rdi)
	pxor	%xmm0, %xmm2
	movdqu	%xmm2, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	32(%rdi), %xmm1
	movdqu	48(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, 32(%rdi)
	pxor	%xmm0, %xmm2
	movdqu	%xmm2, 48(%rdi)
	addq	$-64, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rdi
	cmpq	$31, %rcx
	ja	.LBB15_76
.LBB15_77:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	andq	$-32, %rbx
	movb	$1, %r8b
	jmp	.LBB15_78
.LBB15_71:
	xorl	%r8d, %r8d
	xorl	%ebx, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB15_78
.Lfunc_end15:
	.size	bitopCommand, .Lfunc_end15-bitopCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_38
	.quad	.LBB15_33
	.quad	.LBB15_34
	.quad	.LBB15_35
	.quad	.LBB15_36
                                        # -- End function
	.text
	.globl	bitcountCommand         # -- Begin function bitcountCommand
	.p2align	4, 0x90
	.type	bitcountCommand,@function
bitcountCommand:                        # @bitcountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_26
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_2
.LBB16_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_2:
	leaq	-32(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rbx, %rdi
	callq	getObjectReadOnlyString
	movq	%rax, %r14
	movl	64(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB16_19
# %bb.3:
	movq	72(%r15), %rax
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB16_26
# %bb.4:
	movq	72(%r15), %rax
	movq	24(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB16_26
# %bb.5:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rsi
	jns	.LBB16_9
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jle	.LBB16_9
# %bb.7:
	movq	shared+32(%rip), %rsi
	jmp	.LBB16_8
.LBB16_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB16_27
# %bb.20:
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rsi
	addq	$-1, %rsi
	xorl	%eax, %eax
.LBB16_21:
	movq	%rsi, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_22:
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %rsi
	jge	.LBB16_24
# %bb.23:
	movq	shared+32(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB16_25
.LBB16_27:
	movq	shared+128(%rip), %rsi
.LBB16_8:
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB16_26
.LBB16_24:
	addq	$1, %rsi
	addq	%rax, %r14
	movq	%r14, %rdi
	callq	redisPopcount
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB16_25:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_26
.LBB16_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB16_11
# %bb.10:
	addq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB16_13
# %bb.12:
	addq	-32(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB16_15
# %bb.14:
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB16_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB16_17
# %bb.16:
	movq	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB16_17:
	movq	-32(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jl	.LBB16_22
# %bb.18:
	addq	$-1, %rcx
	movq	%rcx, %rsi
	jmp	.LBB16_21
.Lfunc_end16:
	.size	bitcountCommand, .Lfunc_end16-bitcountCommand
                                        # -- End function
	.globl	bitposCommand           # -- Begin function bitposCommand
	.p2align	4, 0x90
	.type	bitposCommand,@function
bitposCommand:                          # @bitposCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_36
# %bb.1:
	cmpq	$2, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB17_3
# %bb.2:
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB17_36
.LBB17_3:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_4
# %bb.5:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_36
# %bb.6:
	leaq	-40(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%r14, %rdi
	callq	getObjectReadOnlyString
	movq	%rax, %r14
	movl	64(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB17_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB17_23
.LBB17_8:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_36
# %bb.9:
	cmpl	$5, 64(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_12
# %bb.10:
	movq	72(%rbx), %rax
	movq	32(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_37
# %bb.11:
	movl	$1, %r12d
	jmp	.LBB17_13
.LBB17_4:
	xorl	%eax, %eax
	cmpq	-64(%rbp), %rax
	sbbq	%rsi, %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
.LBB17_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_37:
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB17_38
# %bb.24:
	movq	$0, -56(%rbp)
	movq	-40(%rbp), %r15
	addq	$-1, %r15
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.LBB17_25
.LBB17_12:
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB17_13:
	movq	-56(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB17_15
# %bb.14:
	addq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_15:
	movq	-48(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jns	.LBB17_17
# %bb.16:
	addq	-40(%rbp), %r15
	movq	%r15, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_17:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB17_19
# %bb.18:
	movq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB17_19:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jns	.LBB17_21
# %bb.20:
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB17_21:
	movq	-40(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r15
	jl	.LBB17_26
# %bb.22:
	addq	$-1, %rcx
	movq	%rcx, %r15
.LBB17_25:
	movq	%r15, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_26:
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r15
	jl	.LBB17_27
# %bb.28:
	addq	$1, %r15
	addq	%rax, %r14
	movl	-64(%rbp), %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	redisBitpos
	movq	-64(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB17_31
# %bb.29:
	testq	%rcx, %rcx
	jne	.LBB17_31
# %bb.30:
	shlq	$3, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB17_31
.LBB17_27:
	movq	%rbx, %rdi
	movq	$-1, %rsi
	callq	addReplyLongLong
	jmp	.LBB17_35
.LBB17_38:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB17_36
.LBB17_31:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB17_32
# %bb.33:
	movq	-56(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_34
.LBB17_32:
	movq	$-1, %rsi
.LBB17_34:
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB17_35:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_36
.Lfunc_end17:
	.size	bitposCommand, .Lfunc_end17-bitposCommand
                                        # -- End function
	.globl	bitfieldCommand         # -- Begin function bitfieldCommand
	.p2align	4, 0x90
	.type	bitfieldCommand,@function
bitfieldCommand:                        # @bitfieldCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jle	.LBB18_26
# %bb.1:
	movl	$1, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$2, %r12d
	xorl	%ebx, %ebx
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	%r12d, %r13d
	notl	%r13d
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	addl	%ecx, %r13d
	movq	72(%r14), %r15
	movslq	%r12d, %r14
	movq	(%r15,%r14,8), %rax
	movq	8(%rax), %rbx
	movq	$0, -144(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -112(%rbp)
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r13d
	jl	.LBB18_4
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB18_8
.LBB18_4:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r13d
	jl	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$1, -96(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB18_8
.LBB18_6:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r13d
	jl	.LBB18_17
# %bb.7:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$2, -96(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	jne	.LBB18_17
	.p2align	4, 0x90
.LBB18_8:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15,%r14,8), %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-60(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	callq	getBitfieldTypeFromArgument
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_148
# %bb.9:                                #   in Loop: Header=BB18_2 Depth=1
	movq	72(%rbx), %rax
	movq	16(%rax,%r14,8), %rsi
	movl	-112(%rbp), %r15d
	movq	%rbx, %rdi
	leaq	-160(%rbp), %rdx
	movl	$1, %ecx
	movl	%r15d, %r8d
	callq	getBitOffsetFromArgument
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB18_145
# %bb.10:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %r13
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	je	.LBB18_14
# %bb.11:                               #   in Loop: Header=BB18_2 Depth=1
	movslq	%r15d, %rax
	addq	%r13, %rax
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -80(%rbp)         # 8-byte Folded Reload
	jae	.LBB18_13
# %bb.12:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB18_13:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	72(%rcx), %rax
	movq	24(%rax,%r14,8), %rsi
	movq	%rcx, %r14
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	leaq	-144(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_15
	jmp	.LBB18_145
	.p2align	4, 0x90
.LBB18_14:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB18_15:                              #   in Loop: Header=BB18_2 Depth=1
	movq	%rbx, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movslq	%eax, %rbx
	addl	$1, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	shlq	$5, %rbx
	leaq	32(%rbx), %rsi
	callq	zrealloc
	movq	%r13, (%rax,%rbx)
	movq	-144(%rbp), %rcx
	movq	%rcx, 8(%rax,%rbx)
	movl	-96(%rbp), %edx         # 4-byte Reload
	movl	%edx, 16(%rax,%rbx)
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 20(%rax,%rbx)
	movl	%r15d, 24(%rax,%rbx)
	movl	-60(%rbp), %ecx
	movl	%ecx, 28(%rax,%rbx)
	movq	%rax, %rbx
	cmpl	$1, %edx
	sbbl	$0, %r12d
	addl	$3, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r14), %ecx
.LBB18_16:                              #   in Loop: Header=BB18_2 Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ecx
	jg	.LBB18_2
	jmp	.LBB18_146
.LBB18_17:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB18_153
# %bb.18:                               #   in Loop: Header=BB18_2 Depth=1
	testl	%eax, %eax
	jne	.LBB18_153
# %bb.19:                               #   in Loop: Header=BB18_2 Depth=1
	movq	8(%r15,%r14,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_22
# %bb.20:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_23
# %bb.21:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, -64(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	movq	-72(%rbp), %r14         # 8-byte Reload
	je	.LBB18_25
	jmp	.LBB18_154
.LBB18_22:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB18_24
.LBB18_23:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
.LBB18_24:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB18_25:                              #   in Loop: Header=BB18_2 Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	-88(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB18_16
.LBB18_26:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB18_27:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_29
# %bb.28:
	movq	%r14, %rdi
	movq	%rax, %r15
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_144
	jmp	.LBB18_30
.LBB18_29:
	xorl	%r15d, %r15d
.LBB18_30:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movslq	%r12d, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jle	.LBB18_143
# %bb.31:
	movl	%r12d, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
	movq	%r15, %rdi
	movq	%r15, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_35
.LBB18_32:                              #   in Loop: Header=BB18_35 Depth=1
	movq	shared+80(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB18_33:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -64(%rbp)           # 4-byte Folded Spill
.LBB18_34:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-104(%rbp), %r14        # 8-byte Folded Reload
	je	.LBB18_141
.LBB18_35:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_110 Depth 2
                                        #     Child Loop BB18_120 Depth 2
                                        #     Child Loop BB18_48 Depth 2
                                        #     Child Loop BB18_94 Depth 2
                                        #     Child Loop BB18_80 Depth 2
                                        #     Child Loop BB18_135 Depth 2
	movq	%r14, %r15
	shlq	$5, %r15
	leaq	(%rbx,%r15), %r13
	movl	16(%rbx,%r15), %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r9d
	je	.LBB18_37
# %bb.36:                               #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r9d
	jne	.LBB18_44
.LBB18_37:                              #   in Loop: Header=BB18_35 Depth=1
	cmpl	$0, 28(%rbx,%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -96(%rbp)         # 8-byte Spill
	je	.LBB18_41
# %bb.38:                               #   in Loop: Header=BB18_35 Depth=1
	movq	8(%rdi), %r10
	movq	(%r13), %rax
	movslq	24(%rbx,%r15), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB18_46
# %bb.39:                               #   in Loop: Header=BB18_35 Depth=1
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpl	$1, %edx
	jne	.LBB18_47
# %bb.40:                               #   in Loop: Header=BB18_35 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB18_49
	.p2align	4, 0x90
.LBB18_41:                              #   in Loop: Header=BB18_35 Depth=1
	movq	8(%rdi), %r11
	movq	(%r13), %rdx
	movslq	24(%rbx,%r15), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB18_58
# %bb.42:                               #   in Loop: Header=BB18_35 Depth=1
	movl	%r8d, %r10d
	andl	$1, %r10d
	cmpl	$1, %r8d
	jne	.LBB18_79
# %bb.43:                               #   in Loop: Header=BB18_35 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_81
	.p2align	4, 0x90
.LBB18_44:                              #   in Loop: Header=BB18_35 Depth=1
	movq	$0, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB18_59
# %bb.45:                               #   in Loop: Header=BB18_35 Depth=1
	leaq	-112(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	callq	getObjectReadOnlyString
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_60
.LBB18_46:                              #   in Loop: Header=BB18_35 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB18_51
.LBB18_47:                              #   in Loop: Header=BB18_35 Depth=1
	movq	%r8, %rbx
	subq	%rdx, %rbx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB18_48:                              #   Parent Loop BB18_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	(%r10,%rcx), %edi
	movl	%eax, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rdi
	andl	$1, %edi
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
	shrq	$3, %rsi
	movzbl	(%r10,%rsi), %esi
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rsi
	andl	$1, %esi
	addq	%rdi, %rdi
	leaq	(%rdi,%r13,4), %r13
	orq	%rsi, %r13
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rbx
	jne	.LBB18_48
.LBB18_49:                              #   in Loop: Header=BB18_35 Depth=1
	testq	%r8, %r8
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB18_51
# %bb.50:                               #   in Loop: Header=BB18_35 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	(%r10,%rcx), %esi
	notb	%al
	andb	$7, %al
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %esi
	leaq	(%rsi,%r13,2), %r13
.LBB18_51:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rdx), %eax
	movzbl	%al, %eax
	btq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_53
# %bb.52:                               #   in Loop: Header=BB18_35 Depth=1
	movq	$-1, %rax
	movl	%edx, %ecx
	shlq	%cl, %rax
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB18_53:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx,%r15), %r12
	cmpl	$2, %r9d
	jne	.LBB18_56
# %bb.54:                               #   in Loop: Header=BB18_35 Depth=1
	movl	20(%rbx,%r15), %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	-144(%rbp), %r8
	callq	checkSignedBitfieldOverflow
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_88
# %bb.55:                               #   in Loop: Header=BB18_35 Depth=1
	movq	-144(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_89
	.p2align	4, 0x90
.LBB18_56:                              #   in Loop: Header=BB18_35 Depth=1
	movl	20(%rbx,%r15), %ecx
	movq	%r12, %rdi
	xorl	%esi, %esi
	leaq	-144(%rbp), %r8
	callq	checkSignedBitfieldOverflow
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_90
# %bb.57:                               #   in Loop: Header=BB18_35 Depth=1
	movq	-144(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_90
.LBB18_58:                              #   in Loop: Header=BB18_35 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_83
.LBB18_59:                              #   in Loop: Header=BB18_35 Depth=1
	xorl	%r12d, %r12d
.LBB18_60:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$9, %edx
	leaq	-60(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r13, %rax
	movq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%r12, %r12
	je	.LBB18_72
# %bb.61:                               #   in Loop: Header=BB18_35 Depth=1
	movq	%rcx, %rax
	shrq	$3, %rax
	movq	-112(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jae	.LBB18_71
# %bb.62:                               #   in Loop: Header=BB18_35 Depth=1
	movb	(%r12,%rax), %bl
	movb	%bl, -60(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.63:                               #   in Loop: Header=BB18_35 Depth=1
	movb	1(%r12,%rax), %bl
	movb	%bl, -59(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	2(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.64:                               #   in Loop: Header=BB18_35 Depth=1
	movb	2(%r12,%rax), %bl
	movb	%bl, -58(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	3(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.65:                               #   in Loop: Header=BB18_35 Depth=1
	movb	3(%r12,%rax), %bl
	movb	%bl, -57(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.66:                               #   in Loop: Header=BB18_35 Depth=1
	movb	4(%r12,%rax), %bl
	movb	%bl, -56(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	5(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.67:                               #   in Loop: Header=BB18_35 Depth=1
	movb	5(%r12,%rax), %bl
	movb	%bl, -55(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	6(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.68:                               #   in Loop: Header=BB18_35 Depth=1
	movb	6(%r12,%rax), %bl
	movb	%bl, -54(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	7(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB18_71
# %bb.69:                               #   in Loop: Header=BB18_35 Depth=1
	movb	7(%r12,%rax), %bl
	movb	%bl, -53(%rbp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jae	.LBB18_71
# %bb.70:                               #   in Loop: Header=BB18_35 Depth=1
	movb	(%r12,%rax), %al
	movb	%al, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_71:                              #   in Loop: Header=BB18_35 Depth=1
	movq	(%r13), %rax
.LBB18_72:                              #   in Loop: Header=BB18_35 Depth=1
	andq	$-8, %rcx
	subq	%rcx, %rax
	cmpl	$0, 28(%rbx,%r15)
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%rbx,%r15), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_76
# %bb.73:                               #   in Loop: Header=BB18_35 Depth=1
	testl	%r9d, %r9d
	je	.LBB18_108
# %bb.74:                               #   in Loop: Header=BB18_35 Depth=1
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB18_109
# %bb.75:                               #   in Loop: Header=BB18_35 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_111
.LBB18_76:                              #   in Loop: Header=BB18_35 Depth=1
	testl	%r9d, %r9d
	je	.LBB18_117
# %bb.77:                               #   in Loop: Header=BB18_35 Depth=1
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB18_119
# %bb.78:                               #   in Loop: Header=BB18_35 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_121
.LBB18_79:                              #   in Loop: Header=BB18_35 Depth=1
	movq	%r10, %rdi
	subq	%r8, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB18_80:                              #   Parent Loop BB18_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rax
	shrq	$3, %rax
	movzbl	(%r11,%rax), %eax
	movl	%edx, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rax
	andl	$1, %eax
	leaq	1(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
	shrq	$3, %rbx
	movzbl	(%r11,%rbx), %ebx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rbx
	andl	$1, %ebx
	addq	%rax, %rax
	leaq	(%rax,%rsi,4), %rsi
	orq	%rbx, %rsi
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdi
	jne	.LBB18_80
.LBB18_81:                              #   in Loop: Header=BB18_35 Depth=1
	testq	%r10, %r10
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB18_83
# %bb.82:                               #   in Loop: Header=BB18_35 Depth=1
	movq	%rdx, %rax
	shrq	$3, %rax
	movzbl	(%r11,%rax), %eax
	notb	%dl
	andb	$7, %dl
	movl	%edx, %ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %eax
	leaq	(%rax,%rsi,2), %rsi
.LBB18_83:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx,%r15), %rdx
	cmpl	$2, %r9d
	jne	.LBB18_86
# %bb.84:                               #   in Loop: Header=BB18_35 Depth=1
	leaq	(%rdx,%rsi), %r12
	movl	20(%rbx,%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %r8d
	jne	.LBB18_96
# %bb.85:                               #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	jmp	.LBB18_97
.LBB18_86:                              #   in Loop: Header=BB18_35 Depth=1
	movl	20(%rbx,%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %r8d
	jne	.LBB18_102
# %bb.87:                               #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_106
.LBB18_88:                              #   in Loop: Header=BB18_35 Depth=1
	addq	%r13, %r12
.LBB18_89:                              #   in Loop: Header=BB18_35 Depth=1
	movq	%r12, %r13
.LBB18_90:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_92
# %bb.91:                               #   in Loop: Header=BB18_35 Depth=1
	cmpl	$2, 20(%rbx,%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_32
.LBB18_92:                              #   in Loop: Header=BB18_35 Depth=1
	addq	%rbx, %r15
	addq	$24, %r15
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	addReplyLongLong
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	8(%rdi), %r8
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movslq	(%r15), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB18_95
# %bb.93:                               # %.preheader2
                                        #   in Loop: Header=BB18_35 Depth=1
	addq	$-1, %r9
	.p2align	4, 0x90
.LBB18_94:                              #   Parent Loop BB18_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	btq	%r9, %r12
	setb	%sil
	movq	%rbx, %rdx
	shrq	$3, %rdx
	movl	%ebx, %ecx
	notb	%cl
	andb	$7, %cl
	shll	%cl, %esi
	movzbl	(%r8,%rdx), %eax
	btrl	%ecx, %eax
	orl	%eax, %esi
	movb	%sil, (%r8,%rdx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r9
	jb	.LBB18_94
.LBB18_95:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB18_33
.LBB18_96:                              #   in Loop: Header=BB18_35 Depth=1
	movq	$-1, %rax
	movl	%r8d, %ecx
	shlq	%cl, %rax
	notq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	ja	.LBB18_99
.LBB18_97:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB18_115
# %bb.98:                               #   in Loop: Header=BB18_35 Depth=1
	movq	%rax, %rcx
	subq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jge	.LBB18_118
.LBB18_99:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB18_128
# %bb.100:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jne	.LBB18_129
# %bb.101:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rsi
	jmp	.LBB18_129
.LBB18_102:                             #   in Loop: Header=BB18_35 Depth=1
	movq	$-1, %rax
	movl	%r8d, %ecx
	shlq	%cl, %rax
	notq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jbe	.LBB18_106
# %bb.103:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB18_138
# %bb.104:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	cmpl	$1, %edi
	jne	.LBB18_139
# %bb.105:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	jmp	.LBB18_107
.LBB18_106:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB18_107:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r12
	jmp	.LBB18_130
.LBB18_108:                             #   in Loop: Header=BB18_35 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_113
.LBB18_109:                             #   in Loop: Header=BB18_35 Depth=1
	movq	%r8, %rdi
	subq	%r9, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB18_110:                             #   Parent Loop BB18_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	-60(%rbp,%rcx), %ebx
	movl	%eax, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rbx
	andl	$1, %ebx
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movzbl	-60(%rbp,%rdx), %edx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdx
	andl	$1, %edx
	addq	%rbx, %rbx
	leaq	(%rbx,%rsi,4), %rsi
	orq	%rdx, %rsi
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdi
	jne	.LBB18_110
.LBB18_111:                             #   in Loop: Header=BB18_35 Depth=1
	testq	%r8, %r8
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB18_113
# %bb.112:                              #   in Loop: Header=BB18_35 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	-60(%rbp,%rcx), %edx
	notb	%al
	andb	$7, %al
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %edx
	leaq	(%rdx,%rsi,2), %rsi
.LBB18_113:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r9), %eax
	movzbl	%al, %eax
	btq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_123
# %bb.114:                              #   in Loop: Header=BB18_35 Depth=1
	movq	$-1, %rax
	movl	%r9d, %ecx
	shlq	%cl, %rax
	orq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_123
.LBB18_115:                             #   in Loop: Header=BB18_35 Depth=1
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB18_116
# %bb.124:                              #   in Loop: Header=BB18_35 Depth=1
	negq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jge	.LBB18_116
# %bb.125:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB18_128
# %bb.126:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jne	.LBB18_129
# %bb.127:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB18_129
.LBB18_117:                             #   in Loop: Header=BB18_35 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_123
.LBB18_118:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	jmp	.LBB18_130
.LBB18_116:                             #   in Loop: Header=BB18_35 Depth=1
	movq	%r12, %rsi
	jmp	.LBB18_130
.LBB18_119:                             #   in Loop: Header=BB18_35 Depth=1
	movq	%r8, %rdi
	subq	%r9, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB18_120:                             #   Parent Loop BB18_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	-60(%rbp,%rcx), %edx
	movl	%eax, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rdx
	andl	$1, %edx
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
	shrq	$3, %rbx
	movzbl	-60(%rbp,%rbx), %ebx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rbx
	andl	$1, %ebx
	addq	%rdx, %rdx
	leaq	(%rdx,%rsi,4), %rsi
	orq	%rbx, %rsi
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdi
	jne	.LBB18_120
.LBB18_121:                             #   in Loop: Header=BB18_35 Depth=1
	testq	%r8, %r8
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB18_123
# %bb.122:                              #   in Loop: Header=BB18_35 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	-60(%rbp,%rcx), %edx
	notb	%al
	andb	$7, %al
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %edx
	leaq	(%rdx,%rsi,2), %rsi
	.p2align	4, 0x90
.LBB18_123:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_34
.LBB18_128:                             #   in Loop: Header=BB18_35 Depth=1
	movq	$-1, %rax
	movl	%r8d, %ecx
	shlq	%cl, %rax
	notq	%rax
	andq	%rax, %r12
	movq	%r12, %rsi
.LBB18_129:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movq	%rsi, %r12
	movq	%rsi, -80(%rbp)         # 8-byte Spill
.LBB18_130:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB18_133
# %bb.131:                              #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	jne	.LBB18_133
# %bb.132:                              #   in Loop: Header=BB18_35 Depth=1
	movq	shared+80(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movq	-88(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_137
.LBB18_133:                             #   in Loop: Header=BB18_35 Depth=1
	addq	%rbx, %r15
	addq	$24, %r15
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReplyLongLong
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	8(%rdi), %r8
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movslq	(%r15), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB18_136
# %bb.134:                              # %.preheader
                                        #   in Loop: Header=BB18_35 Depth=1
	addq	$-1, %r9
	.p2align	4, 0x90
.LBB18_135:                             #   Parent Loop BB18_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	btq	%r9, %r12
	setb	%sil
	movq	%rbx, %rdx
	shrq	$3, %rdx
	movl	%ebx, %ecx
	notb	%cl
	andb	$7, %cl
	shll	%cl, %esi
	movzbl	(%r8,%rdx), %eax
	btrl	%ecx, %eax
	orl	%eax, %esi
	movb	%sil, (%r8,%rdx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r9
	jb	.LBB18_135
.LBB18_136:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB18_137:                             #   in Loop: Header=BB18_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_33
.LBB18_138:                             #   in Loop: Header=BB18_35 Depth=1
	andq	%rax, %rdx
	movl	$1, %ecx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB18_107
.LBB18_139:                             #   in Loop: Header=BB18_35 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB18_107
.LBB18_141:
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %r15d        # 4-byte Reload
	testl	%r15d, %r15d
	je	.LBB18_144
# %bb.142:
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	movslq	%r15d, %rax
	addq	%rax, server+2080(%rip)
.LBB18_143:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_144:
	movq	%rbx, %rdi
	callq	zfree
	jmp	.LBB18_151
.LBB18_145:
	movq	%rbx, %rdi
	jmp	.LBB18_149
.LBB18_146:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -152(%rbp)          # 4-byte Folded Reload
	je	.LBB18_152
# %bb.147:
	movq	-104(%rbp), %r12        # 8-byte Reload
	jmp	.LBB18_27
.LBB18_152:
	movq	%r14, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	lookupStringForBitCommand
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
	testq	%rax, %rax
	movq	-104(%rbp), %r12        # 8-byte Reload
	jne	.LBB18_30
	jmp	.LBB18_144
.LBB18_153:
	movq	shared+128(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReply
.LBB18_148:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB18_149:
	callq	zfree
.LBB18_150:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_151:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_154:
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	addReplyError
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_150
.Lfunc_end18:
	.size	bitfieldCommand, .Lfunc_end18-bitfieldCommand
                                        # -- End function
	.type	redisPopcount.bitsinbyte,@object # @redisPopcount.bitsinbyte
	.section	.rodata,"a",@progbits
	.p2align	4
redisPopcount.bitsinbyte:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	redisPopcount.bitsinbyte, 256

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bitops.c"
	.size	.L.str, 74

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"End of redisBitpos() reached."
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%c"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"|"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"bit offset is not an integer or out of range"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid bitfield type. Use something like i16 u8. Note that u64 is not supported but i64 is."
	.size	.L.str.6, 93

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"o->type == OBJ_STRING"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bit is not an integer or out of range"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"setbit"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"and"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"or"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"xor"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"not"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"BITOP NOT must be called with a single source key."
	.size	.L.str.14, 51

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"set"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"del"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The bit argument must be 1 or 0."
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"get"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"incrby"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"overflow"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"wrap"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"sat"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"fail"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Invalid OVERFLOW type specified"
	.size	.L.str.24, 32

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
