	.text
	.file	"utoa.c"
	.globl	__utoa                  # -- Begin function __utoa
	.p2align	4, 0x90
	.type	__utoa,@function
__utoa:                                 # @__utoa
# %bb.0:
	movl	%edx, %ecx
	movq	%rsi, %r8
	leal	-2(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$35, %eax
	jb	.LBB0_2
# %bb.1:
	movb	$0, (%r8)
	xorl	%r8d, %r8d
	jmp	.LBB0_7
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	movzbl	.L__utoa.digits(%rdx), %edx
	movb	%dl, (%r8,%rsi)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edi
	movl	%eax, %edi
	jae	.LBB0_3
# %bb.4:
	movl	%esi, %eax
	movb	$0, (%r8,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	je	.LBB0_7
# %bb.5:
	addq	$-1, %rsi
	movl	%esi, %eax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r8,%rcx), %esi
	movzbl	(%r8,%rax), %edx
	movb	%dl, -1(%r8,%rcx)
	movb	%sil, (%r8,%rax)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB0_6
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rax
	retq
.Lfunc_end0:
	.size	__utoa, .Lfunc_end0-__utoa
                                        # -- End function
	.globl	utoa                    # -- Begin function utoa
	.p2align	4, 0x90
	.type	utoa,@function
utoa:                                   # @utoa
# %bb.0:
	movl	%edx, %ecx
	movq	%rsi, %r8
	leal	-2(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$35, %eax
	jb	.LBB1_2
# %bb.1:
	movb	$0, (%r8)
	xorl	%r8d, %r8d
	jmp	.LBB1_7
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	movzbl	.L__utoa.digits(%rdx), %edx
	movb	%dl, (%r8,%rsi)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edi
	movl	%eax, %edi
	jae	.LBB1_3
# %bb.4:
	movl	%esi, %eax
	movb	$0, (%r8,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	je	.LBB1_7
# %bb.5:
	addq	$-1, %rsi
	movl	%esi, %eax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r8,%rcx), %esi
	movzbl	(%r8,%rax), %edx
	movb	%dl, -1(%r8,%rcx)
	movb	%sil, (%r8,%rax)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_6
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rax
	retq
.Lfunc_end1:
	.size	utoa, .Lfunc_end1-utoa
                                        # -- End function
	.type	.L__utoa.digits,@object # @__utoa.digits
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L__utoa.digits:
	.asciz	"0123456789abcdefghijklmnopqrstuvwxyz"
	.size	.L__utoa.digits, 37

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
