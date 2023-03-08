	.text
	.file	"sf_ilogb.c"
	.globl	ilogbf                  # -- Begin function ilogbf
	.p2align	4, 0x90
	.type	ilogbf,@function
ilogbf:                                 # @ilogbf
# %bb.0:
	movd	%xmm0, %ecx
	movl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	ja	.LBB0_6
# %bb.3:
	shll	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-126, %eax
	testl	%ecx, %ecx
	jle	.LBB0_8
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %eax
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_5
	jmp	.LBB0_8
.LBB0_1:
	movl	$-2147483647, %eax      # imm = 0x80000001
	jmp	.LBB0_8
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2139095039, %edx       # imm = 0x7F7FFFFF
	ja	.LBB0_8
# %bb.7:
	shrl	$23, %edx
	addl	$-127, %edx
	movl	%edx, %eax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	ilogbf, .Lfunc_end0-ilogbf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
