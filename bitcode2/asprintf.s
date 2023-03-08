	.text
	.file	"asprintf.c"
	.globl	_asprintf_r             # -- Begin function _asprintf_r
	.p2align	4, 0x90
	.type	_asprintf_r,@function
_asprintf_r:                            # @_asprintf_r
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
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -360(%rbp)
	movabsq	$-278691837902848, %rax # imm = 0xFFFF028800000000
	movq	%rax, -372(%rbp)
	movl	$0, -352(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-384(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	callq	_svfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_4
# %bb.3:
	movq	-384(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-360(%rbp), %rcx
	movq	%rcx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_asprintf_r, .Lfunc_end0-_asprintf_r
                                        # -- End function
	.globl	asprintf                # -- Begin function asprintf
	.p2align	4, 0x90
	.type	asprintf,@function
asprintf:                               # @asprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rsi, %rbx
	movq	%rdi, %r14
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
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -376(%rbp)
	movabsq	$-278691837902848, %rax # imm = 0xFFFF028800000000
	movq	%rax, -388(%rbp)
	movl	$0, -368(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	__getreent
	leaq	-400(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_svfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_4
# %bb.3:
	movq	-400(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-376(%rbp), %rcx
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	asprintf, .Lfunc_end1-asprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
