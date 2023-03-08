	.text
	.file	"s_ilogb.c"
	.globl	ilogb                   # -- Begin function ilogb
	.p2align	4, 0x90
	.type	ilogb,@function
ilogb:                                  # @ilogb
# %bb.0:
	movq	%xmm0, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movl	%ecx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmpl	$1048575, %esi          # imm = 0xFFFFF
	ja	.LBB0_10
# %bb.1:
	movl	%esi, %eax
	orl	%edx, %eax
	je	.LBB0_2
# %bb.3:
	testl	%esi, %esi
	je	.LBB0_4
# %bb.7:
	shll	$11, %ecx
	movl	$-1022, %eax            # imm = 0xFC02
	testl	%ecx, %ecx
	jle	.LBB0_12
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %eax
	addl	%ecx, %ecx
	testl	%ecx, %ecx
	jg	.LBB0_9
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_10:
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2146435071, %esi       # imm = 0x7FEFFFFF
	ja	.LBB0_12
# %bb.11:
	shrl	$20, %esi
	addl	$-1023, %esi            # imm = 0xFC01
	movl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	movl	$-2147483647, %eax      # imm = 0x80000001
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	movl	$-1043, %eax            # imm = 0xFBED
	testl	%edx, %edx
	jle	.LBB0_12
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %eax
	addl	%edx, %edx
	testl	%edx, %edx
	jg	.LBB0_6
	jmp	.LBB0_12
.Lfunc_end0:
	.size	ilogb, .Lfunc_end0-ilogb
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
