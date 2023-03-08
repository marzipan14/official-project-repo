	.text
	.file	"sf_ldexp.c"
	.globl	ldexpf                  # -- Begin function ldexpf
	.p2align	4, 0x90
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	finitef
	xorps	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	jne	.LBB0_1
	jnp	.LBB0_6
.LBB0_1:
	testl	%eax, %eax
	je	.LBB0_6
# %bb.2:
	movl	%ebx, %edi
	callq	scalbnf
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	finitef
	xorps	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_3
	jnp	.LBB0_5
.LBB0_3:
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	movaps	%xmm1, %xmm0
	jmp	.LBB0_6
.LBB0_5:
	callq	__errno
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$34, (%rax)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ldexpf, .Lfunc_end0-ldexpf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
