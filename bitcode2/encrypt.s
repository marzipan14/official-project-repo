	.text
	.file	"encrypt.c"
	.globl	setkey                  # -- Begin function setkey
	.p2align	4, 0x90
	.type	setkey,@function
setkey:                                 # @setkey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi,%rax,8), %ecx
	shlb	$7, %cl
	movb	%cl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdi,%rax,8), %edx
	shlb	$6, %dl
	andb	$64, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rdi,%rax,8), %ecx
	shlb	$5, %cl
	andb	$32, %cl
	orb	%dl, %cl
	movb	%cl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rdi,%rax,8), %edx
	shlb	$4, %dl
	andb	$16, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	4(%rdi,%rax,8), %ecx
	shlb	$3, %cl
	andb	$8, %cl
	orb	%dl, %cl
	movb	%cl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	5(%rdi,%rax,8), %edx
	shlb	$2, %dl
	andb	$4, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	6(%rdi,%rax,8), %ecx
	addb	%cl, %cl
	andb	$2, %cl
	orb	%dl, %cl
	movb	%cl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	7(%rdi,%rax,8), %edx
	andb	$1, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rax
	jne	.LBB0_1
# %bb.2:
	leaq	-8(%rbp), %rdi
	movl	$__encrypt_key, %esi
	callq	__des_setkey
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	setkey, .Lfunc_end0-setkey
                                        # -- End function
	.globl	encrypt                 # -- Begin function encrypt
	.p2align	4, 0x90
	.type	encrypt,@function
encrypt:                                # @encrypt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$31, %ecx
	xorl	%edi, %edi
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	andl	$1, %edx
	shll	%cl, %edx
	orl	%edi, %edx
	movl	%edx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax), %edi
	andl	$1, %edi
	addl	$-1, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%edi, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	subl	$1, %ecx
	jae	.LBB1_1
# %bb.2:
	leaq	32(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-28(%rbp), %r8
	movl	$0, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$31, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdx
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %ebx
	andl	$1, %ebx
	shll	%cl, %ebx
	orl	%eax, %ebx
	movl	%ebx, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdx), %eax
	andl	$1, %eax
	addl	$-1, %ecx
	shll	%cl, %eax
	orl	%ebx, %eax
	movl	%eax, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdx
	subl	$1, %ecx
	jae	.LBB1_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB1_12
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-92(%rbp), %rdx
	movl	$64, %esi
	leaq	-160(%rbp), %r9
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movl	__encrypt_key-4(%rsi), %ecx
	movl	%ecx, -68(%rdx)
	movl	__encrypt_key+60(%rsi), %ecx
	movl	%ecx, -4(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	__encrypt_key-8(%rsi), %ecx
	movl	%ecx, -64(%rdx)
	movl	__encrypt_key+56(%rsi), %ecx
	movl	%ecx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	addq	$-8, %rsi
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_12:
	movl	$__encrypt_key, %r9d
.LBB1_7:
	movq	%r9, (%rsp)
	leaq	-32(%rbp), %rdx
	movl	%eax, %esi
	movq	%r8, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	__do_des
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$31, %ecx
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	shrl	%cl, %eax
	andb	$1, %al
	movb	%al, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-32(%rbp), %eax
	addl	$-1, %ecx
	shrl	%cl, %eax
	andb	$1, %al
	movb	%al, 1(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %r14
	subl	$1, %ecx
	jae	.LBB1_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$31, %ecx
	.p2align	4, 0x90
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	shrl	%cl, %eax
	andb	$1, %al
	movb	%al, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %eax
	addl	$-1, %ecx
	shrl	%cl, %eax
	andb	$1, %al
	movb	%al, 1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %r15
	subl	$1, %ecx
	jae	.LBB1_10
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	encrypt, .Lfunc_end1-encrypt
                                        # -- End function
	.type	__encrypt_key,@object   # @__encrypt_key
	.local	__encrypt_key
	.comm	__encrypt_key,128,4
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
