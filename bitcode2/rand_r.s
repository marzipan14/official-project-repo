	.text
	.file	"rand_r.c"
	.globl	rand_r                  # -- Begin function rand_r
	.p2align	4, 0x90
	.type	rand_r,@function
rand_r:                                 # @rand_r
# %bb.0:
	movl	(%rdi), %eax
	testl	%eax, %eax
	movl	$305420679, %ecx        # imm = 0x12345987
	cmovnel	%eax, %ecx
	imulq	$110892733, %rcx, %rax  # imm = 0x69C16BD
	shrq	$32, %rax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrl	%edx
	addl	%eax, %edx
	shrl	$16, %edx
	imulq	$-127773, %rdx, %rax    # imm = 0xFFFE0CE3
	addq	%rcx, %rax
	imulq	$16807, %rax, %rcx      # imm = 0x41A7
	imulq	$-2836, %rdx, %rax      # imm = 0xF4EC
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_2
# %bb.1:
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	%eax, (%rdi)
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	rand_r, .Lfunc_end0-rand_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
