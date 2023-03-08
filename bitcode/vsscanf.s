	.text
	.file	"vsscanf.c"
	.globl	vsscanf                 # -- Begin function vsscanf
	.p2align	4, 0x90
	.type	vsscanf,@function
vsscanf:                                # @vsscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r12
	movw	$516, -192(%rbp)        # imm = 0x204
	movq	%rbx, -208(%rbp)
	movq	%rbx, -184(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, -200(%rbp)
	movl	%eax, -176(%rbp)
	movq	$__seofread, -152(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -88(%rbp)
	movw	$-1, -190(%rbp)
	leaq	-208(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__ssvfscanf_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vsscanf, .Lfunc_end0-vsscanf
                                        # -- End function
	.globl	_vsscanf_r              # -- Begin function _vsscanf_r
	.p2align	4, 0x90
	.type	_vsscanf_r,@function
_vsscanf_r:                             # @_vsscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movw	$516, -184(%rbp)        # imm = 0x204
	movq	%rsi, -200(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rsi, %rdi
	callq	strlen
	movl	%eax, -192(%rbp)
	movl	%eax, -168(%rbp)
	movq	$__seofread, -144(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -80(%rbp)
	movw	$-1, -182(%rbp)
	leaq	-200(%rbp), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__ssvfscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vsscanf_r, .Lfunc_end1-_vsscanf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
