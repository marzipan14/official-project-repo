	.text
	.file	"s_logb.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function logb
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
.LCPI0_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	logb
	.p2align	4, 0x90
	.type	logb,@function
logb:                                   # @logb
# %bb.0:
	movq	%xmm0, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	ja	.LBB0_11
# %bb.1:
	movl	%edx, %esi
	orl	%eax, %esi
	je	.LBB0_2
# %bb.3:
	testl	%edx, %edx
	je	.LBB0_4
# %bb.7:
	shll	$11, %ecx
	movl	$-1022, %edx            # imm = 0xFC02
	testl	%ecx, %ecx
	jle	.LBB0_10
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %edx
	addl	%ecx, %ecx
	testl	%ecx, %ecx
	jg	.LBB0_8
.LBB0_10:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	retq
.LBB0_11:
	cmpl	$2146435071, %edx       # imm = 0x7FEFFFFF
	ja	.LBB0_13
# %bb.12:
	shrl	$20, %edx
	addl	$-1023, %edx            # imm = 0xFC01
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	retq
.LBB0_13:
	xorl	$2146435072, %edx       # imm = 0x7FF00000
	orl	%eax, %edx
	jne	.LBB0_15
# %bb.14:
	movq	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB0_15:
	retq
.LBB0_2:
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, %xmm1
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	retq
.LBB0_4:
	movl	$-1043, %edx            # imm = 0xFBED
	testl	%eax, %eax
	jle	.LBB0_10
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %edx
	addl	%eax, %eax
	testl	%eax, %eax
	jg	.LBB0_6
	jmp	.LBB0_10
.Lfunc_end0:
	.size	logb, .Lfunc_end0-logb
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
