	.text
	.file	"dtoastub.c"
	.globl	__dtoa                  # -- Begin function __dtoa
	.p2align	4, 0x90
	.type	__dtoa,@function
__dtoa:                                 # @__dtoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	%esi, %r13d
	movl	%edi, %ebx
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__getreent
	movq	%rax, %rdi
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_dtoa_r                 # TAILCALL
.Lfunc_end0:
	.size	__dtoa, .Lfunc_end0-__dtoa
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
