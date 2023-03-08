	.text
	.file	"s_ldexp.c"
	.globl	ldexp                   # -- Begin function ldexp
	.p2align	4, 0x90
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	finite
	xorpd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jne	.LBB0_1
	jnp	.LBB0_6
.LBB0_1:
	testl	%eax, %eax
	je	.LBB0_6
# %bb.2:
	movl	%ebx, %edi
	callq	scalbn
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	finite
	xorpd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_3
	jnp	.LBB0_5
.LBB0_3:
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	movapd	%xmm1, %xmm0
	jmp	.LBB0_6
.LBB0_5:
	callq	__errno
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$34, (%rax)
.LBB0_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ldexp, .Lfunc_end0-ldexp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
