	.text
	.file	"err.c"
	.globl	err_to_errno            # -- Begin function err_to_errno
	.p2align	4, 0x90
	.type	err_to_errno,@function
err_to_errno:                           # @err_to_errno
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	testb	%dil, %dil
	jg	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-16, %dil
	jl	.LBB0_3
# %bb.2:
	movsbq	%dil, %rax
	shlq	$2, %rax
	movl	$err_to_errno_table, %ecx
	subq	%rax, %rcx
	movl	(%rcx), %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	err_to_errno, .Lfunc_end0-err_to_errno
                                        # -- End function
	.type	err_to_errno_table,@object # @err_to_errno_table
	.section	.rodata,"a",@progbits
	.p2align	4
err_to_errno_table:
	.long	0                       # 0x0
	.long	12                      # 0xc
	.long	105                     # 0x69
	.long	11                      # 0xb
	.long	118                     # 0x76
	.long	119                     # 0x77
	.long	22                      # 0x16
	.long	11                      # 0xb
	.long	112                     # 0x70
	.long	120                     # 0x78
	.long	127                     # 0x7f
	.long	128                     # 0x80
	.long	4294967295              # 0xffffffff
	.long	113                     # 0x71
	.long	104                     # 0x68
	.long	128                     # 0x80
	.long	5                       # 0x5
	.size	err_to_errno_table, 68

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
