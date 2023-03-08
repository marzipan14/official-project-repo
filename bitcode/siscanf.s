	.text
	.file	"siscanf.c"
	.globl	siscanf                 # -- Begin function siscanf
	.p2align	4, 0x90
	.type	siscanf,@function
siscanf:                                # @siscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
	movq	%rsi, %rbx
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB0_2:
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	movw	$516, -368(%rbp)        # imm = 0x204
	movq	%rdi, -384(%rbp)
	movq	%rdi, -360(%rbp)
	callq	strlen
	movl	%eax, -376(%rbp)
	movl	%eax, -352(%rbp)
	movq	$__seofread, -328(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -264(%rbp)
	movw	$-1, -366(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	__getreent
	leaq	-384(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	__ssvfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	siscanf, .Lfunc_end0-siscanf
                                        # -- End function
	.globl	_siscanf_r              # -- Begin function _siscanf_r
	.p2align	4, 0x90
	.type	_siscanf_r,@function
_siscanf_r:                             # @_siscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rdx, %r14
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB1_2:
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movw	$516, -384(%rbp)        # imm = 0x204
	movq	%rsi, -400(%rbp)
	movq	%rsi, -376(%rbp)
	movq	%rsi, %rdi
	callq	strlen
	movl	%eax, -392(%rbp)
	movl	%eax, -368(%rbp)
	movq	$__seofread, -344(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -280(%rbp)
	movw	$-1, -382(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-400(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	__ssvfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_siscanf_r, .Lfunc_end1-_siscanf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
