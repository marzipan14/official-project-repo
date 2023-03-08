	.text
	.file	"sf_floor.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function floorf
.LCPI0_0:
	.long	1900671690              # float 1.00000002E+30
	.text
	.globl	floorf
	.p2align	4, 0x90
	.type	floorf,@function
floorf:                                 # @floorf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmpl	$1258291199, %ecx       # imm = 0x4AFFFFFF
	ja	.LBB0_5
# %bb.1:
	cmpl	$1065353215, %ecx       # imm = 0x3F7FFFFF
	ja	.LBB0_8
# %bb.2:
	addss	.LCPI0_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_12
# %bb.3:
	xorl	%edx, %edx
	testl	%eax, %eax
	jns	.LBB0_13
# %bb.4:
	testl	%ecx, %ecx
	movl	$-1082130432, %edx      # imm = 0xBF800000
	cmovel	%eax, %edx
	jmp	.LBB0_13
.LBB0_5:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jb	.LBB0_7
# %bb.6:
	addss	%xmm0, %xmm0
.LBB0_7:
	retq
.LBB0_8:
	shrl	$23, %ecx
	addl	$-127, %ecx
	movl	%eax, %edx
	shll	%cl, %edx
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_14
# %bb.9:
	addss	.LCPI0_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_12
# %bb.10:
	movl	$8388608, %edx          # imm = 0x800000
	shrl	%cl, %edx
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%eax, %esi
	movl	$-8388608, %edx         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	andl	%esi, %edx
	jmp	.LBB0_13
.LBB0_12:
	movl	%eax, %edx
.LBB0_13:
	movd	%edx, %xmm0
.LBB0_14:
	retq
.Lfunc_end0:
	.size	floorf, .Lfunc_end0-floorf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
