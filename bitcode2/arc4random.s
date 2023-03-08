	.text
	.file	"arc4random.c"
	.globl	arc4random              # -- Begin function arc4random
	.p2align	4, 0x90
	.type	arc4random,@function
arc4random:                             # @arc4random
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$4, %edi
	callq	_rs_stir_if_needed
	movq	_arc4random_data(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	ja	.LBB0_2
# %bb.1:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	_rs_rekey
	movl	$42, __A_VARIABLE(%rip)
	movq	_arc4random_data(%rip), %rax
.LBB0_2:
	movq	rsx(%rip), %rbx
	subq	%rax, %rbx
	addq	$1088, %rbx             # imm = 0x440
	leaq	-12(%rbp), %rdi
	movl	$4, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movl	$4, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	addq	$-4, _arc4random_data(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	arc4random, .Lfunc_end0-arc4random
                                        # -- End function
	.globl	arc4random_buf          # -- Begin function arc4random_buf
	.p2align	4, 0x90
	.type	arc4random_buf,@function
arc4random_buf:                         # @arc4random_buf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	_rs_stir_if_needed
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	_rs_rekey
	movl	$42, __A_VARIABLE(%rip)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	_arc4random_data(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
	cmovbq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	rsx(%rip), %rbx
	subq	%rax, %rbx
	addq	$1088, %rbx             # imm = 0x440
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	addq	%r12, %r14
	subq	%r12, %r15
	subq	%r12, _arc4random_data(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_1
	jmp	.LBB1_5
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	arc4random_buf, .Lfunc_end1-arc4random_buf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _rs_stir_if_needed
	.type	_rs_stir_if_needed,@function
_rs_stir_if_needed:                     # @_rs_stir_if_needed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	rs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_2
# %bb.1:
	movq	_arc4random_data+8(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	ja	.LBB2_8
.LBB2_2:
	leaq	-48(%rbp), %rdi
	movl	$40, %esi
	callq	getentropy
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB2_4
# %bb.3:
	movl	$9, %edi
	callq	raise
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_4:
	cmpq	$0, rs(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rdi
	je	.LBB2_5
# %bb.6:
	movl	$40, %esi
	callq	_rs_rekey
	jmp	.LBB2_7
.LBB2_5:
	callq	_rs_init
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rdi
	movl	$40, %esi
	callq	explicit_bzero
	movq	$0, _arc4random_data(%rip)
	movq	rsx(%rip), %rdi
	addq	$64, %rdi
	movl	$1024, %edx             # imm = 0x400
	xorl	%esi, %esi
	callq	memset
	movq	rs(%rip), %rax
	movq	$1600000, _arc4random_data+8(%rip) # imm = 0x186A00
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1600000, %ecx          # imm = 0x186A00
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	cmovbeq	%rbx, %rcx
	subq	%rbx, %rcx
	movq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_rs_stir_if_needed, .Lfunc_end2-_rs_stir_if_needed
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _rs_rekey
	.type	_rs_rekey,@function
_rs_rekey:                              # @_rs_rekey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	rsx(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movdqu	_arc4random_data+16(%rip), %xmm11
	movdqu	_arc4random_data+32(%rip), %xmm3
	movdqu	_arc4random_data+48(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm9       # xmm9 = xmm1[2,3,0,1]
	movl	_arc4random_data+72(%rip), %ecx
	movl	_arc4random_data+76(%rip), %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movd	%edx, %xmm8
	pshufd	$229, %xmm11, %xmm4     # xmm4 = xmm11[1,1,2,3]
	movd	%xmm4, -104(%rbp)       # 4-byte Folded Spill
	pshufd	$78, %xmm11, %xmm4      # xmm4 = xmm11[2,3,0,1]
	movd	%xmm4, -100(%rbp)       # 4-byte Folded Spill
	pshufd	$231, %xmm11, %xmm4     # xmm4 = xmm11[3,1,2,3]
	movd	%xmm4, -96(%rbp)        # 4-byte Folded Spill
	pshufd	$229, %xmm3, %xmm4      # xmm4 = xmm3[1,1,2,3]
	movd	%xmm4, -92(%rbp)        # 4-byte Folded Spill
	pshufd	$78, %xmm3, %xmm4       # xmm4 = xmm3[2,3,0,1]
	movd	%xmm4, -88(%rbp)        # 4-byte Folded Spill
	pshufd	$231, %xmm3, %xmm4      # xmm4 = xmm3[3,1,2,3]
	movd	%xmm4, -84(%rbp)        # 4-byte Folded Spill
	movd	%xmm1, -80(%rbp)        # 4-byte Folded Spill
	pshufd	$229, %xmm1, %xmm4      # xmm4 = xmm1[1,1,2,3]
	movd	%xmm4, -76(%rbp)        # 4-byte Folded Spill
	pshufd	$231, %xmm1, %xmm1      # xmm1 = xmm1[3,1,2,3]
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movd	%ecx, %xmm10
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	64(%rax), %rax
	movl	_arc4random_data+64(%rip), %ebx
	movl	_arc4random_data+68(%rip), %r15d
	movd	%xmm11, -72(%rbp)       # 4-byte Folded Spill
	movd	%xmm3, -64(%rbp)        # 4-byte Folded Spill
	movd	%xmm9, -60(%rbp)        # 4-byte Folded Spill
	movd	%xmm1, -56(%rbp)        # 4-byte Folded Spill
	movl	$1024, -48(%rbp)        # 4-byte Folded Spill
                                        # imm = 0x400
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movd	%ebx, %xmm5
	shufps	$0, %xmm8, %xmm5        # xmm5 = xmm5[0,0],xmm8[0,0]
	movd	%r15d, %xmm1
	movaps	%xmm5, %xmm6
	shufps	$130, %xmm1, %xmm6      # xmm6 = xmm6[2,0],xmm1[0,2]
	movdqa	%xmm10, %xmm1
	shufps	$32, %xmm6, %xmm1       # xmm1 = xmm1[0,0],xmm6[2,0]
	shufps	$34, %xmm1, %xmm5       # xmm5 = xmm5[2,0],xmm1[2,0]
	movl	$-20, %ecx
	movdqa	%xmm11, %xmm7
	movdqa	%xmm9, %xmm6
	movdqa	%xmm3, %xmm1
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	paddd	%xmm1, %xmm7
	pshufd	$147, %xmm7, %xmm2      # xmm2 = xmm7[3,0,1,2]
	pxor	%xmm5, %xmm2
	movdqa	%xmm2, %xmm5
	psrld	$16, %xmm5
	pslld	$16, %xmm2
	por	%xmm5, %xmm2
	pshufd	$147, %xmm2, %xmm4      # xmm4 = xmm2[3,0,1,2]
	paddd	%xmm6, %xmm4
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$20, %xmm1
	pslld	$12, %xmm0
	por	%xmm1, %xmm0
	paddd	%xmm0, %xmm7
	pshufd	$147, %xmm7, %xmm5      # xmm5 = xmm7[3,0,1,2]
	pxor	%xmm2, %xmm5
	movdqa	%xmm5, %xmm1
	psrld	$24, %xmm1
	pslld	$8, %xmm5
	por	%xmm1, %xmm5
	pshufd	$147, %xmm5, %xmm6      # xmm6 = xmm5[3,0,1,2]
	paddd	%xmm4, %xmm6
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	pshufd	$147, %xmm6, %xmm1      # xmm1 = xmm6[3,0,1,2]
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$25, %xmm0
	pslld	$7, %xmm1
	por	%xmm0, %xmm1
	paddd	%xmm1, %xmm7
	pxor	%xmm7, %xmm5
	movdqa	%xmm5, %xmm0
	psrld	$16, %xmm0
	pslld	$16, %xmm5
	por	%xmm0, %xmm5
	paddd	%xmm5, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$20, %xmm0
	pslld	$12, %xmm1
	por	%xmm0, %xmm1
	paddd	%xmm1, %xmm7
	pxor	%xmm7, %xmm5
	movdqa	%xmm5, %xmm0
	psrld	$24, %xmm0
	pslld	$8, %xmm5
	por	%xmm0, %xmm5
	paddd	%xmm5, %xmm6
	pxor	%xmm6, %xmm1
	pshufd	$147, %xmm1, %xmm1      # xmm1 = xmm1[3,0,1,2]
	movdqa	%xmm1, %xmm0
	psrld	$25, %xmm0
	pslld	$7, %xmm1
	por	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %ecx
	jne	.LBB3_2
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movd	%xmm7, %edx
	addl	-72(%rbp), %edx         # 4-byte Folded Reload
	pshufd	$229, %xmm7, %xmm0      # xmm0 = xmm7[1,1,2,3]
	movd	%xmm0, %ecx
	addl	-104(%rbp), %ecx        # 4-byte Folded Reload
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	pshufd	$78, %xmm7, %xmm0       # xmm0 = xmm7[2,3,0,1]
	movd	%xmm0, %ecx
	addl	-100(%rbp), %ecx        # 4-byte Folded Reload
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	pshufd	$231, %xmm7, %xmm0      # xmm0 = xmm7[3,1,2,3]
	movd	%xmm0, %ecx
	addl	-96(%rbp), %ecx         # 4-byte Folded Reload
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movd	%xmm1, %ecx
	addl	-64(%rbp), %ecx         # 4-byte Folded Reload
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	addl	-92(%rbp), %ecx         # 4-byte Folded Reload
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r14d
	addl	-88(%rbp), %r14d        # 4-byte Folded Reload
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %r8d
	addl	-84(%rbp), %r8d         # 4-byte Folded Reload
	pshufd	$78, %xmm6, %xmm0       # xmm0 = xmm6[2,3,0,1]
	movd	%xmm0, %r11d
	addl	-80(%rbp), %r11d        # 4-byte Folded Reload
	pshufd	$231, %xmm6, %xmm0      # xmm0 = xmm6[3,1,2,3]
	movd	%xmm0, %edi
	addl	-76(%rbp), %edi         # 4-byte Folded Reload
	movd	%xmm6, %r10d
	addl	-60(%rbp), %r10d        # 4-byte Folded Reload
	pshufd	$229, %xmm6, %xmm0      # xmm0 = xmm6[1,1,2,3]
	movd	%xmm0, %r9d
	addl	-56(%rbp), %r9d         # 4-byte Folded Reload
	pshufd	$229, %xmm5, %xmm0      # xmm0 = xmm5[1,1,2,3]
	movd	%xmm0, %r12d
	addl	%ebx, %r12d
	pshufd	$78, %xmm5, %xmm0       # xmm0 = xmm5[2,3,0,1]
	movd	%xmm0, %esi
	addl	%r15d, %esi
	pshufd	$231, %xmm5, %xmm0      # xmm0 = xmm5[3,1,2,3]
	movl	%r15d, %ecx
	movd	%xmm0, %r15d
	addl	-68(%rbp), %r15d        # 4-byte Folded Reload
	movd	%xmm5, %r13d
	addl	-108(%rbp), %r13d       # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	incl	%ebx
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	jne	.LBB3_4
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	movb	%dl, (%rax)
	movb	%dh, 1(%rax)
	movl	%edx, %ebx
	shrl	$16, %ebx
	movb	%bl, 2(%rax)
	shrl	$24, %edx
	movb	%dl, 3(%rax)
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movb	%cl, 4(%rax)
	movb	%ch, 5(%rax)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 6(%rax)
	shrl	$24, %ecx
	movb	%cl, 7(%rax)
	movl	-120(%rbp), %edx        # 4-byte Reload
	movb	%dl, 8(%rax)
	movb	%dh, 9(%rax)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movb	%cl, 10(%rax)
	shrl	$24, %edx
	movb	%dl, 11(%rax)
	movl	-124(%rbp), %edx        # 4-byte Reload
	movb	%dl, 12(%rax)
	movb	%dh, 13(%rax)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movb	%cl, 14(%rax)
	shrl	$24, %edx
	movb	%dl, 15(%rax)
	movl	-128(%rbp), %edx        # 4-byte Reload
	movb	%dl, 16(%rax)
	movb	%dh, 17(%rax)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movb	%cl, 18(%rax)
	shrl	$24, %edx
	movb	%dl, 19(%rax)
	movl	-132(%rbp), %edx        # 4-byte Reload
	movb	%dl, 20(%rax)
	movb	%dh, 21(%rax)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movb	%cl, 22(%rax)
	shrl	$24, %edx
	movb	%dl, 23(%rax)
	movl	%r14d, %edx
	movb	%dl, 24(%rax)
	movb	%dh, 25(%rax)
	movl	%r14d, %ecx
	shrl	$16, %ecx
	movb	%cl, 26(%rax)
	shrl	$24, %edx
	movb	%dl, 27(%rax)
	movl	%r8d, %edx
	movb	%dl, 28(%rax)
	movb	%dh, 29(%rax)
	movl	%r8d, %ecx
	shrl	$16, %ecx
	movb	%cl, 30(%rax)
	shrl	$24, %edx
	movb	%dl, 31(%rax)
	movl	%r11d, %edx
	movb	%dl, 32(%rax)
	movb	%dh, 33(%rax)
	movl	%r11d, %ecx
	shrl	$16, %ecx
	movb	%cl, 34(%rax)
	shrl	$24, %edx
	movb	%dl, 35(%rax)
	movl	%edi, %edx
	movb	%dl, 36(%rax)
	movb	%dh, 37(%rax)
	movl	%edi, %ecx
	shrl	$16, %ecx
	movb	%cl, 38(%rax)
	shrl	$24, %edx
	movb	%dl, 39(%rax)
	movl	%r10d, %edx
	movb	%dl, 40(%rax)
	movb	%dh, 41(%rax)
	movl	%r10d, %ecx
	shrl	$16, %ecx
	movb	%cl, 42(%rax)
	shrl	$24, %edx
	movb	%dl, 43(%rax)
	movl	%r9d, %edx
	movb	%dl, 44(%rax)
	movb	%dh, 45(%rax)
	movl	%r9d, %ecx
	shrl	$16, %ecx
	movb	%cl, 46(%rax)
	shrl	$24, %edx
	movb	%dl, 47(%rax)
	movl	%r12d, %edx
	movb	%dl, 48(%rax)
	movb	%dh, 49(%rax)
	movl	%r12d, %ecx
	shrl	$16, %ecx
	movb	%cl, 50(%rax)
	shrl	$24, %edx
	movb	%dl, 51(%rax)
	movl	%esi, %edx
	movb	%dl, 52(%rax)
	movb	%dh, 53(%rax)
	movl	%esi, %ecx
	shrl	$16, %ecx
	movb	%cl, 54(%rax)
	shrl	$24, %edx
	movb	%dl, 55(%rax)
	movl	%r15d, %edx
	movb	%dl, 56(%rax)
	movb	%dh, 57(%rax)
	movl	%r15d, %ecx
	shrl	$16, %ecx
	movb	%cl, 58(%rax)
	shrl	$24, %edx
	movb	%dl, 59(%rax)
	movl	%r13d, %edx
	movb	%dl, 60(%rax)
	movb	%dh, 61(%rax)
	movl	%r13d, %ecx
	shrl	$16, %ecx
	movb	%cl, 62(%rax)
	shrl	$24, %edx
	movb	%dl, 63(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	$65, %ecx
	jb	.LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
	addl	$-64, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	addq	$64, %rax
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movl	-112(%rbp), %ebx        # 4-byte Reload
	jmp	.LBB3_1
.LBB3_8:
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, _arc4random_data+64(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, _arc4random_data+68(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB3_17
# %bb.9:
	movq	-144(%rbp), %rdx        # 8-byte Reload
	cmpq	$40, %rdx
	movl	$40, %eax
	cmovbq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-152(%rbp), %rsi        # 8-byte Reload
	je	.LBB3_16
# %bb.10:
	movl	%eax, %ecx
	andl	$1, %ecx
	cmpq	$1, %rdx
	jne	.LBB3_12
# %bb.11:
	xorl	%edx, %edx
	jmp	.LBB3_14
.LBB3_12:
	subq	%rcx, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %ebx
	xorb	%bl, 64(%rsi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdi,%rdx), %ebx
	xorb	%bl, 65(%rsi,%rdx)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jne	.LBB3_13
.LBB3_14:
	testq	%rcx, %rcx
	je	.LBB3_16
# %bb.15:
	movb	(%rdi,%rdx), %al
	xorb	%al, 64(%rsi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_17:
	movq	-160(%rbp), %rdi        # 8-byte Reload
	callq	_rs_init
	movq	rsx(%rip), %rdi
	addq	$64, %rdi
	movl	$40, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$984, _arc4random_data(%rip) # imm = 0x3D8
	movl	$42, __A_VARIABLE(%rip)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_rs_rekey, .Lfunc_end3-_rs_rekey
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _rs_init
.LCPI4_0:
	.long	1634760805              # 0x61707865
	.long	857760878               # 0x3320646e
	.long	2036477234              # 0x79622d32
	.long	1797285236              # 0x6b206574
	.text
	.p2align	4, 0x90
	.type	_rs_init,@function
_rs_init:                               # @_rs_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, rs(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_2
# %bb.1:
	movq	rsx(%rip), %rax
	jmp	.LBB4_3
.LBB4_2:
	movq	$_arc4random_data, rs(%rip)
	movq	$_arc4random_data+16, rsx(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_arc4random_data+16, %eax
.LBB4_3:
	movl	(%rdi), %ecx
	movl	%ecx, 16(%rax)
	movl	4(%rdi), %ecx
	movl	%ecx, 20(%rax)
	movl	8(%rdi), %ecx
	movl	%ecx, 24(%rax)
	movl	12(%rdi), %ecx
	movl	%ecx, 28(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rdi), %ecx
	movl	%ecx, 32(%rax)
	movl	20(%rdi), %ecx
	movl	%ecx, 36(%rax)
	movl	24(%rdi), %ecx
	movl	%ecx, 40(%rax)
	movl	28(%rdi), %ecx
	movl	%ecx, 44(%rax)
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	movups	%xmm0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 48(%rax)
	movl	32(%rdi), %ecx
	movl	%ecx, 56(%rax)
	movl	36(%rdi), %ecx
	movl	%ecx, 60(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	_rs_init, .Lfunc_end4-_rs_init
                                        # -- End function
	.type	rs,@object              # @rs
	.local	rs
	.comm	rs,8,8
	.type	rsx,@object             # @rsx
	.local	rsx
	.comm	rsx,8,8
	.type	_arc4random_data,@object # @_arc4random_data
	.local	_arc4random_data
	.comm	_arc4random_data,1104,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
