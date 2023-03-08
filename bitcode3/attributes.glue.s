	.text
	.file	"attributes.c"
	.globl	pthread_attr_setguardsize # -- Begin function pthread_attr_setguardsize
	.p2align	4, 0x90
	.type	pthread_attr_setguardsize,@function
pthread_attr_setguardsize:              # @pthread_attr_setguardsize
# %bb.0:
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	movl	$22, %eax
	cmovel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	pthread_attr_setguardsize, .Lfunc_end0-pthread_attr_setguardsize
                                        # -- End function
	.globl	pthread_attr_getguardsize # -- Begin function pthread_attr_getguardsize
	.p2align	4, 0x90
	.type	pthread_attr_getguardsize,@function
pthread_attr_getguardsize:              # @pthread_attr_getguardsize
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB1_1
# %bb.2:
	movq	$0, (%rsi)
	xorl	%eax, %eax
	retq
.LBB1_1:
	movl	$22, %eax
	retq
.Lfunc_end1:
	.size	pthread_attr_getguardsize, .Lfunc_end1-pthread_attr_getguardsize
                                        # -- End function
	.globl	pthread_attr_setstack   # -- Begin function pthread_attr_setstack
	.p2align	4, 0x90
	.type	pthread_attr_setstack,@function
pthread_attr_setstack:                  # @pthread_attr_setstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	callq	pthread_attr_setstacksize
	testl	%eax, %eax
	je	.LBB2_2
# %bb.1:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pthread_attr_setstackaddr # TAILCALL
.Lfunc_end2:
	.size	pthread_attr_setstack, .Lfunc_end2-pthread_attr_setstack
                                        # -- End function
	.globl	pthread_attr_getstack   # -- Begin function pthread_attr_getstack
	.p2align	4, 0x90
	.type	pthread_attr_getstack,@function
pthread_attr_getstack:                  # @pthread_attr_getstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	callq	pthread_attr_getstacksize
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB3_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pthread_attr_getstackaddr # TAILCALL
.Lfunc_end3:
	.size	pthread_attr_getstack, .Lfunc_end3-pthread_attr_getstack
                                        # -- End function
	.globl	pthread_getattr_np      # -- Begin function pthread_getattr_np
	.p2align	4, 0x90
	.type	pthread_getattr_np,@function
pthread_getattr_np:                     # @pthread_getattr_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$2, %eax
	testq	%rdi, %rdi
	je	.LBB4_6
# %bb.1:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_6
# %bb.2:
	movl	$22, %eax
	testq	%rdx, %rdx
	je	.LBB4_6
# %bb.3:
	movq	(%rdx), %rbx
	testq	%rbx, %rbx
	je	.LBB4_6
# %bb.4:
	movq	8(%rdi), %rax
	movq	%rax, 8(%rbx)
	movq	$65536, 16(%rbx)        # imm = 0x10000
	movzbl	64(%rdi), %eax
	movl	%eax, 24(%rbx)
	leaq	-12(%rbp), %rsi
	callq	uk_thread_get_prio
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB4_6
# %bb.5:
	movl	-12(%rbp), %ecx
	movl	%ecx, 28(%rbx)
.LBB4_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pthread_getattr_np, .Lfunc_end4-pthread_getattr_np
                                        # -- End function
	.globl	pthread_setname_np      # -- Begin function pthread_setname_np
	.p2align	4, 0x90
	.type	pthread_setname_np,@function
pthread_setname_np:                     # @pthread_setname_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$2, %eax
	testq	%rdi, %rdi
	je	.LBB5_4
# %bb.1:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB5_4
# %bb.2:
	movq	%rdx, %r14
	movl	$16, %esi
	movq	%rdx, %rdi
	callq	strnlen
	movq	%rax, %rcx
	movl	$34, %eax
	cmpq	$15, %rcx
	ja	.LBB5_4
# %bb.3:
	movq	%r14, (%rbx)
	xorl	%eax, %eax
.LBB5_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pthread_setname_np, .Lfunc_end5-pthread_setname_np
                                        # -- End function
	.globl	pthread_getname_np      # -- Begin function pthread_getname_np
	.p2align	4, 0x90
	.type	pthread_getname_np,@function
pthread_getname_np:                     # @pthread_getname_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$2, %ebx
	testq	%rdi, %rdi
	je	.LBB6_4
# %bb.1:
	movq	(%rdi), %r12
	testq	%r12, %r12
	je	.LBB6_4
# %bb.2:
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	(%r12), %rdi
	callq	strlen
	addq	$1, %rax
	movl	$34, %ebx
	cmpq	%r15, %rax
	ja	.LBB6_4
# %bb.3:
	movq	(%r12), %rdx
	xorl	%ebx, %ebx
	movl	$.L.str, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	sprintf
.LBB6_4:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pthread_getname_np, .Lfunc_end6-pthread_getname_np
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
