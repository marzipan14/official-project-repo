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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	ja	.LBB0_7
# %bb.1:
	movl	%edx, %esi
	orl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_13
# %bb.3:
	shll	$11, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1022, %edx            # imm = 0xFC02
	testl	%ecx, %ecx
	jle	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %edx
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_4
	jmp	.LBB0_5
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %edx       # imm = 0x7FEFFFFF
	ja	.LBB0_9
# %bb.8:
	shrl	$20, %edx
	addl	$-1023, %edx            # imm = 0xFC01
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	jmp	.LBB0_6
.LBB0_9:
	xorl	$2146435072, %edx       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	%eax, %edx
	jne	.LBB0_11
# %bb.10:
	movq	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_12:
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, %xmm1
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	jmp	.LBB0_6
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1043, %edx            # imm = 0xFBED
	testl	%eax, %eax
	jle	.LBB0_5
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %edx
	addl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_14
.LBB0_5:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	logb, .Lfunc_end0-logb
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
