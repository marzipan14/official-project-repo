	.text
	.file	"getsubopt.c"
	.globl	getsubopt               # -- Begin function getsubopt
	.p2align	4, 0x90
	.type	getsubopt,@function
getsubopt:                              # @getsubopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	$0, (%rdx)
	movq	$0, suboptarg(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	testq	%rdi, %rdi
	je	.LBB0_37
# %bb.1:
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_37
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_9
# %bb.3:                                # %.preheader6
	movq	%rsi, %r14
	addq	$1, %rcx
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %eax
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_8
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$44, %al
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %al
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	je	.LBB0_7
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rcx), %rax
	movq	%rax, suboptarg(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movzbl	(%rcx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_31
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$44, %bl
	je	.LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %bl
	je	.LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %bl
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %bl
	jne	.LBB0_11
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rax)
	addq	$1, %rax
	movq	%rax, %rcx
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rcx), %dl
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax), %edx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	je	.LBB0_32
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$44, %dl
	je	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %dl
	je	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %dl
	je	.LBB0_30
	jmp	.LBB0_32
.LBB0_8:                                # %.loopexit7
	addq	$-1, %rcx
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%rdi)
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_32:
	movq	%rax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_37
# %bb.33:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movq	suboptarg(%rip), %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14,%rbx,8), %rsi
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB0_34
	jmp	.LBB0_37
.LBB0_36:                               # %..loopexit_crit_edge
	movl	%ebx, %r15d
	jmp	.LBB0_37
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rax)
	leaq	1(%rax), %rcx
	movq	%rcx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB0_25
# %bb.18:                               # %.preheader4
	addq	$2, %rax
	movq	%rax, %rcx
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$44, %dl
	je	.LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %dl
	je	.LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %dl
	je	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB0_19
# %bb.23:                               # %.loopexit5
	addq	$-1, %rcx
	jmp	.LBB0_25
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -1(%rcx)
	jmp	.LBB0_25
.Lfunc_end0:
	.size	getsubopt, .Lfunc_end0-getsubopt
                                        # -- End function
	.type	suboptarg,@object       # @suboptarg
	.comm	suboptarg,8,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
