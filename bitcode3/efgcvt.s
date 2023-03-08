	.text
	.file	"efgcvt.c"
	.globl	fcvt                    # -- Begin function fcvt
	.p2align	4, 0x90
	.type	fcvt,@function
fcvt:                                   # @fcvt
# %bb.0:
	xorl	%ecx, %ecx
	jmp	fcvtbuf                 # TAILCALL
.Lfunc_end0:
	.size	fcvt, .Lfunc_end0-fcvt
                                        # -- End function
	.globl	fcvtf                   # -- Begin function fcvtf
	.p2align	4, 0x90
	.type	fcvtf,@function
fcvtf:                                  # @fcvtf
# %bb.0:
	cvtss2sd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	jmp	fcvtbuf                 # TAILCALL
.Lfunc_end1:
	.size	fcvtf, .Lfunc_end1-fcvtf
                                        # -- End function
	.globl	gcvtf                   # -- Begin function gcvtf
	.p2align	4, 0x90
	.type	gcvtf,@function
gcvtf:                                  # @gcvtf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	%edi, %ebx
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_1
# %bb.2:
	movb	$45, (%r14)
	leaq	1(%r14), %r15
	addl	$-1, %ebx
	jmp	.LBB2_3
.LBB2_1:
	movq	%r14, %r15
.LBB2_3:
	callq	__getreent
	movq	%rax, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%ebx, %esi
	movq	%r15, %rdx
	movl	$103, %ecx
	xorl	%r8d, %r8d
	callq	_gcvt
	testq	%rax, %rax
	cmovneq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gcvtf, .Lfunc_end2-gcvtf
                                        # -- End function
	.globl	gcvt                    # -- Begin function gcvt
	.p2align	4, 0x90
	.type	gcvt,@function
gcvt:                                   # @gcvt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	%edi, %ebx
	xorpd	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_1
# %bb.2:
	movb	$45, (%r14)
	leaq	1(%r14), %r15
	addl	$-1, %ebx
	jmp	.LBB3_3
.LBB3_1:
	movq	%r14, %r15
.LBB3_3:
	callq	__getreent
	movq	%rax, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%ebx, %esi
	movq	%r15, %rdx
	movl	$103, %ecx
	xorl	%r8d, %r8d
	callq	_gcvt
	testq	%rax, %rax
	cmovneq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gcvt, .Lfunc_end3-gcvt
                                        # -- End function
	.globl	ecvt                    # -- Begin function ecvt
	.p2align	4, 0x90
	.type	ecvt,@function
ecvt:                                   # @ecvt
# %bb.0:
	xorl	%ecx, %ecx
	jmp	ecvtbuf                 # TAILCALL
.Lfunc_end4:
	.size	ecvt, .Lfunc_end4-ecvt
                                        # -- End function
	.globl	ecvtf                   # -- Begin function ecvtf
	.p2align	4, 0x90
	.type	ecvtf,@function
ecvtf:                                  # @ecvtf
# %bb.0:
	cvtss2sd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	jmp	ecvtbuf                 # TAILCALL
.Lfunc_end5:
	.size	ecvtf, .Lfunc_end5-ecvtf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
