	.text
	.file	"debug.c"
	.globl	xorDigest               # -- Begin function xorDigest
	.p2align	4, 0x90
	.type	xorDigest,@function
xorDigest:                              # @xorDigest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	-160(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%r12, %rsi
	callq	SHA1Final
	movups	(%rbx), %xmm0
	xorps	-64(%rbp), %xmm0
	movups	%xmm0, (%rbx)
	movb	-48(%rbp), %al
	xorb	%al, 16(%rbx)
	movb	-47(%rbp), %al
	xorb	%al, 17(%rbx)
	movb	-46(%rbp), %al
	xorb	%al, 18(%rbx)
	movb	-45(%rbp), %al
	xorb	%al, 19(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xorDigest, .Lfunc_end0-xorDigest
                                        # -- End function
	.globl	xorStringObjectDigest   # -- Begin function xorStringObjectDigest
	.p2align	4, 0x90
	.type	xorStringObjectDigest,@function
xorStringObjectDigest:                  # @xorStringObjectDigest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %rbx
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB1_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_3:
	shrq	$3, %rdx
	jmp	.LBB1_8
.LBB1_1:
	xorl	%edx, %edx
	jmp	.LBB1_8
.LBB1_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB1_8
.LBB1_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB1_8
.LBB1_6:
	movl	-9(%rsi), %edx
	jmp	.LBB1_8
.LBB1_7:
	movq	-17(%rsi), %rdx
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	xorDigest
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xorStringObjectDigest, .Lfunc_end1-xorStringObjectDigest
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_3
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
                                        # -- End function
	.text
	.globl	mixDigest               # -- Begin function mixDigest
	.p2align	4, 0x90
	.type	mixDigest,@function
mixDigest:                              # @mixDigest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdi, %rbx
	callq	xorDigest
	leaq	-112(%rbp), %r14
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mixDigest, .Lfunc_end2-mixDigest
                                        # -- End function
	.globl	mixStringObjectDigest   # -- Begin function mixStringObjectDigest
	.p2align	4, 0x90
	.type	mixStringObjectDigest,@function
mixStringObjectDigest:                  # @mixStringObjectDigest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, %r15
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %r14
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_3:
	shrq	$3, %rdx
	jmp	.LBB3_8
.LBB3_1:
	xorl	%edx, %edx
	jmp	.LBB3_8
.LBB3_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB3_8
.LBB3_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB3_8
.LBB3_6:
	movl	-9(%rsi), %edx
	jmp	.LBB3_8
.LBB3_7:
	movq	-17(%rsi), %rdx
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	xorDigest
	leaq	-120(%rbp), %rbx
	movq	%rbx, %rdi
	callq	SHA1Init
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mixStringObjectDigest, .Lfunc_end3-mixStringObjectDigest
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_3
	.quad	.LBB3_4
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_7
                                        # -- End function
	.text
	.globl	xorObjectDigest         # -- Begin function xorObjectDigest
	.p2align	4, 0x90
	.type	xorObjectDigest,@function
xorObjectDigest:                        # @xorObjectDigest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$872, %rsp              # imm = 0x368
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	(%rcx), %edi
	andl	$15, %edi
	callq	lwip_htonl
	movl	%eax, -152(%rbp)
	leaq	-152(%rbp), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	xorDigest
	leaq	-912(%rbp), %rbx
	movq	%rbx, %rdi
	callq	SHA1Init
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	getExpire
	movq	%rax, %r12
	movl	(%r13), %eax
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$6, %cl
	ja	.LBB4_84
# %bb.1:
	movl	%eax, %ecx
	andl	$15, %ecx
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_2:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	mixStringObjectDigest
	cmpq	$-1, %r12
	jne	.LBB4_79
	jmp	.LBB4_80
.LBB4_3:
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	callq	hashTypeInitIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	hashTypeNext
	cmpl	$-1, %eax
	je	.LBB4_22
# %bb.4:
	leaq	-64(%rbp), %rbx
	leaq	-912(%rbp), %r14
	movq	%r13, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_5:                                #   in Loop: Header=BB4_7 Depth=1
	movq	-17(%r13), %rbx
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	SHA1Update
	leaq	-272(%rbp), %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movaps	-64(%rbp), %xmm0
	xorps	-272(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movzbl	-256(%rbp), %eax
	movzbl	-255(%rbp), %ecx
	xorb	%al, -48(%rbp)
	xorb	%cl, -47(%rbp)
	movzbl	-254(%rbp), %eax
	xorb	%al, -46(%rbp)
	movzbl	-253(%rbp), %eax
	xorb	%al, -45(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r12, %rbx
	callq	sdsfree
	movl	$20, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	xorDigest
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	hashTypeNext
	cmpl	$-1, %eax
	je	.LBB4_22
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	movl	$20, %edx
	movq	%rbx, %r12
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r13, %rdi
	movl	$1, %esi
	callq	hashTypeCurrentObjectNewSds
	movq	%rax, %r13
	movzbl	-1(%rax), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_14
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=1
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_2(,%rax,8)
.LBB4_9:                                #   in Loop: Header=BB4_7 Depth=1
	shrq	$3, %rbx
	jmp	.LBB4_15
.LBB4_10:                               #   in Loop: Header=BB4_7 Depth=1
	movq	-17(%r13), %rbx
	jmp	.LBB4_15
.LBB4_11:                               #   in Loop: Header=BB4_7 Depth=1
	movzwl	-5(%r13), %ebx
	jmp	.LBB4_15
.LBB4_12:                               #   in Loop: Header=BB4_7 Depth=1
	movl	-9(%r13), %ebx
	jmp	.LBB4_15
.LBB4_13:                               #   in Loop: Header=BB4_7 Depth=1
	movzbl	-3(%r13), %ebx
	jmp	.LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_7 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_15:                               #   in Loop: Header=BB4_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	SHA1Update
	leaq	-272(%rbp), %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movaps	-64(%rbp), %xmm0
	xorps	-272(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movzbl	-256(%rbp), %eax
	movzbl	-255(%rbp), %ecx
	xorb	%al, -48(%rbp)
	xorb	%cl, -47(%rbp)
	movzbl	-254(%rbp), %eax
	xorb	%al, -46(%rbp)
	movzbl	-253(%rbp), %eax
	xorb	%al, -45(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	movq	%r12, %rbx
	movq	%r12, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	sdsfree
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	$2, %esi
	callq	hashTypeCurrentObjectNewSds
	movq	%rax, %r13
	movzbl	-1(%rax), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_21
# %bb.16:                               #   in Loop: Header=BB4_7 Depth=1
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_3(,%rax,8)
.LBB4_17:                               #   in Loop: Header=BB4_7 Depth=1
	shrq	$3, %rbx
	jmp	.LBB4_6
.LBB4_18:                               #   in Loop: Header=BB4_7 Depth=1
	movzwl	-5(%r13), %ebx
	jmp	.LBB4_6
.LBB4_19:                               #   in Loop: Header=BB4_7 Depth=1
	movl	-9(%r13), %ebx
	jmp	.LBB4_6
.LBB4_20:                               #   in Loop: Header=BB4_7 Depth=1
	movzbl	-3(%r13), %ebx
	jmp	.LBB4_6
.LBB4_21:                               #   in Loop: Header=BB4_7 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB4_6
.LBB4_22:
	movq	%r13, %rdi
	callq	hashTypeReleaseIterator
	jmp	.LBB4_78
.LBB4_23:
	movq	%r13, %rdi
	callq	setTypeInitIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	setTypeNextObject
	testq	%rax, %rax
	je	.LBB4_34
# %bb.24:                               # %.preheader1
	movq	%rax, %rbx
	jmp	.LBB4_27
.LBB4_25:                               #   in Loop: Header=BB4_27 Depth=1
	movq	-17(%rbx), %rdx
	.p2align	4, 0x90
.LBB4_26:                               #   in Loop: Header=BB4_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	xorDigest
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r14, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB4_34
.LBB4_27:                               # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rbx), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_33
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_5(,%rax,8)
.LBB4_29:                               #   in Loop: Header=BB4_27 Depth=1
	shrq	$3, %rdx
	jmp	.LBB4_26
.LBB4_30:                               #   in Loop: Header=BB4_27 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB4_26
.LBB4_31:                               #   in Loop: Header=BB4_27 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB4_26
.LBB4_32:                               #   in Loop: Header=BB4_27 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB4_26
.LBB4_33:                               #   in Loop: Header=BB4_27 Depth=1
	xorl	%edx, %edx
	jmp	.LBB4_26
.LBB4_34:
	movq	%r14, %rdi
	callq	setTypeReleaseIterator
	cmpq	$-1, %r12
	jne	.LBB4_79
	jmp	.LBB4_80
.LBB4_35:
	shrb	$4, %al
	cmpb	$7, %al
	movq	%r12, -104(%rbp)        # 8-byte Spill
	je	.LBB4_66
# %bb.36:
	cmpb	$5, %al
	jne	.LBB4_86
# %bb.37:
	movq	8(%r13), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -136(%rbp)
	testq	%rax, %rax
	je	.LBB4_87
# %bb.38:
	movq	%rax, %rbx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -128(%rbp)
	testq	%rax, %rax
	je	.LBB4_88
# %bb.39:
	leaq	-96(%rbp), %r13
	movq	%r15, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_42
	.p2align	4, 0x90
.LBB4_40:                               #   in Loop: Header=BB4_42 Depth=1
	movq	%r13, %r14
	movl	-148(%rbp), %r13d
	leaq	-272(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	movq	%r14, %r13
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%rdi, %r15
	movq	%r12, %rsi
	callq	SHA1Final
	movaps	-96(%rbp), %xmm0
	xorps	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movzbl	-48(%rbp), %eax
	movzbl	-47(%rbp), %ecx
	xorb	%al, -80(%rbp)
	xorb	%cl, -79(%rbp)
	movzbl	-46(%rbp), %eax
	xorb	%al, -78(%rbp)
	movzbl	-45(%rbp), %eax
	xorb	%al, -77(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r14, %rdi
.LBB4_41:                               #   in Loop: Header=BB4_42 Depth=1
	movq	%r12, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movl	$128, %esi
	movl	$.L.str.4, %edx
	leaq	-912(%rbp), %r14
	movq	%r14, %rdi
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	SHA1Update
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	SHA1Final
	movaps	-96(%rbp), %xmm0
	xorps	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movzbl	-48(%rbp), %eax
	movzbl	-47(%rbp), %ecx
	xorb	%al, -80(%rbp)
	xorb	%cl, -79(%rbp)
	movzbl	-46(%rbp), %eax
	xorb	%al, -78(%rbp)
	movzbl	-45(%rbp), %eax
	xorb	%al, -77(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movl	$20, %edx
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	xorDigest
	movq	-160(%rbp), %rdi        # 8-byte Reload
	leaq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	callq	zzlNext
	movq	-136(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB4_78
.LBB4_42:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	leaq	-120(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB4_82
# %bb.43:                               #   in Loop: Header=BB4_42 Depth=1
	movq	-128(%rbp), %rdi
	callq	zzlGetScore
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movl	$20, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	-120(%rbp), %rbx
	testq	%rbx, %rbx
	jne	.LBB4_40
# %bb.44:                               #   in Loop: Header=BB4_42 Depth=1
	movq	-144(%rbp), %rdx
	movl	$128, %esi
	leaq	-912(%rbp), %rbx
	movq	%rbx, %rdi
	callq	ll2string
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r14
	leaq	-272(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%rdi, %r15
	movq	%r12, %rsi
	callq	SHA1Final
	movaps	-96(%rbp), %xmm0
	xorps	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movzbl	-48(%rbp), %eax
	movzbl	-47(%rbp), %ecx
	xorb	%al, -80(%rbp)
	xorb	%cl, -79(%rbp)
	movzbl	-46(%rbp), %eax
	xorb	%al, -78(%rbp)
	movzbl	-45(%rbp), %eax
	xorb	%al, -77(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r13, %rdi
	jmp	.LBB4_41
.LBB4_45:
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	listTypeInitIterator
	movq	%rax, %r14
	leaq	-912(%rbp), %rsi
	movq	%rax, %rdi
	callq	listTypeNext
	testl	%eax, %eax
	je	.LBB4_48
# %bb.46:                               # %.preheader
	leaq	-912(%rbp), %r12
	.p2align	4, 0x90
.LBB4_47:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	listTypeGet
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	mixStringObjectDigest
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	listTypeNext
	testl	%eax, %eax
	jne	.LBB4_47
.LBB4_48:
	movq	%r14, %rdi
	callq	listTypeReleaseIterator
	jmp	.LBB4_78
.LBB4_49:
	movq	%r12, %r14
	movq	8(%r13), %rbx
	movq	(%rbx), %r12
	leaq	-912(%rbp), %rdi
	movl	$20, %edx
	xorl	%esi, %esi
	callq	memset
	leaq	-892(%rbp), %r13
	movl	$20, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	48(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_51
# %bb.50:
	movq	8(%rbx), %rsi
	leaq	-912(%rbp), %rdi
	callq	*%rax
	movl	$20, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	xorDigest
.LBB4_51:
	movq	%r14, %r12
	cmpq	$-1, %r12
	jne	.LBB4_79
	jmp	.LBB4_80
.LBB4_52:
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movq	8(%r13), %rsi
	leaq	-912(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	streamIteratorStart
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	callq	streamIteratorGetID
	testl	%eax, %eax
	je	.LBB4_65
# %bb.53:
	leaq	-272(%rbp), %rbx
	jmp	.LBB4_55
	.p2align	4, 0x90
.LBB4_54:                               #   in Loop: Header=BB4_55 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	streamIteratorGetID
	testl	%eax, %eax
	movq	%r12, %r15
	je	.LBB4_65
.LBB4_55:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_64 Depth 2
	callq	sdsempty
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%rax, %r12
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_62
# %bb.56:                               #   in Loop: Header=BB4_55 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_1(,%rax,8)
.LBB4_57:                               #   in Loop: Header=BB4_55 Depth=1
	shrq	$3, %rdx
	jmp	.LBB4_63
.LBB4_58:                               #   in Loop: Header=BB4_55 Depth=1
	movq	-17(%r12), %rdx
	jmp	.LBB4_63
.LBB4_59:                               #   in Loop: Header=BB4_55 Depth=1
	movzwl	-5(%r12), %edx
	jmp	.LBB4_63
.LBB4_60:                               #   in Loop: Header=BB4_55 Depth=1
	movl	-9(%r12), %edx
	jmp	.LBB4_63
.LBB4_61:                               #   in Loop: Header=BB4_55 Depth=1
	movzbl	-3(%r12), %edx
	jmp	.LBB4_63
.LBB4_62:                               #   in Loop: Header=BB4_55 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_63:                               #   in Loop: Header=BB4_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	xorDigest
	movq	%rbx, %rdi
	callq	SHA1Init
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	sdsfree
	subq	$1, -96(%rbp)
	leaq	-136(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	%r15, %r12
	leaq	-912(%rbp), %rdi
	leaq	-144(%rbp), %r15
	jb	.LBB4_54
	.p2align	4, 0x90
.LBB4_64:                               #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-912(%rbp), %rdi
	movq	%rax, %r14
	movq	%rax, %rsi
	movq	%rdx, %r13
	movq	%r15, %r8
	callq	streamIteratorGetField
	movq	-136(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	%r12, %rdi
	callq	xorDigest
	movq	%rbx, %rdi
	callq	SHA1Init
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	%r12, %rdi
	callq	xorDigest
	movq	%rbx, %rdi
	callq	SHA1Init
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	SHA1Final
	leaq	-912(%rbp), %rdi
	leaq	-120(%rbp), %rcx
	movq	%r13, %rdx
	movq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, -96(%rbp)
	jae	.LBB4_64
	jmp	.LBB4_54
.LBB4_65:
	leaq	-912(%rbp), %rdi
	callq	streamIteratorStop
	jmp	.LBB4_78
.LBB4_66:
	movq	8(%r13), %rax
	movq	(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB4_77
# %bb.67:
	leaq	-912(%rbp), %r14
	leaq	-96(%rbp), %rbx
	leaq	-272(%rbp), %r13
	jmp	.LBB4_70
.LBB4_68:                               #   in Loop: Header=BB4_70 Depth=1
	movq	-17(%r12), %r14
	.p2align	4, 0x90
.LBB4_69:                               #   in Loop: Header=BB4_70 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	SHA1Init
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%r13, %rsi
	callq	SHA1Final
	movaps	-96(%rbp), %xmm0
	xorps	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movzbl	-48(%rbp), %eax
	movzbl	-47(%rbp), %ecx
	xorb	%al, -80(%rbp)
	xorb	%cl, -79(%rbp)
	movzbl	-46(%rbp), %eax
	xorb	%al, -78(%rbp)
	movzbl	-45(%rbp), %eax
	xorb	%al, -77(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	SHA1Init
	movq	%r13, %rdi
	leaq	-96(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	leaq	-912(%rbp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	%r13, %rdi
	callq	SHA1Init
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%r13, %rsi
	callq	SHA1Final
	movzbl	-64(%rbp), %eax
	movzbl	-63(%rbp), %ecx
	xorb	%al, -96(%rbp)
	xorb	%cl, -95(%rbp)
	movzbl	-62(%rbp), %eax
	xorb	%al, -94(%rbp)
	movzbl	-61(%rbp), %eax
	xorb	%al, -93(%rbp)
	movzbl	-60(%rbp), %eax
	xorb	%al, -92(%rbp)
	movzbl	-59(%rbp), %eax
	xorb	%al, -91(%rbp)
	movzbl	-58(%rbp), %eax
	xorb	%al, -90(%rbp)
	movzbl	-57(%rbp), %eax
	xorb	%al, -89(%rbp)
	movzbl	-56(%rbp), %eax
	xorb	%al, -88(%rbp)
	movzbl	-55(%rbp), %eax
	xorb	%al, -87(%rbp)
	movzbl	-54(%rbp), %eax
	xorb	%al, -86(%rbp)
	movzbl	-53(%rbp), %eax
	xorb	%al, -85(%rbp)
	movzbl	-52(%rbp), %eax
	xorb	%al, -84(%rbp)
	movzbl	-51(%rbp), %eax
	xorb	%al, -83(%rbp)
	movzbl	-50(%rbp), %eax
	xorb	%al, -82(%rbp)
	movzbl	-49(%rbp), %eax
	xorb	%al, -81(%rbp)
	movzbl	-48(%rbp), %eax
	xorb	%al, -80(%rbp)
	movzbl	-47(%rbp), %eax
	xorb	%al, -79(%rbp)
	movzbl	-46(%rbp), %eax
	xorb	%al, -78(%rbp)
	movzbl	-45(%rbp), %eax
	xorb	%al, -77(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	SHA1Init
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movl	$20, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	xorDigest
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	dictNext
	testq	%rax, %rax
	je	.LBB4_77
.LBB4_70:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r12
	movq	8(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	$128, %esi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movb	$1, %al
	callq	snprintf
	movl	$20, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movzbl	-1(%r12), %r14d
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_76
# %bb.71:                               #   in Loop: Header=BB4_70 Depth=1
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_4(,%rax,8)
.LBB4_72:                               #   in Loop: Header=BB4_70 Depth=1
	shrq	$3, %r14
	jmp	.LBB4_69
.LBB4_73:                               #   in Loop: Header=BB4_70 Depth=1
	movzwl	-5(%r12), %r14d
	jmp	.LBB4_69
.LBB4_74:                               #   in Loop: Header=BB4_70 Depth=1
	movl	-9(%r12), %r14d
	jmp	.LBB4_69
.LBB4_75:                               #   in Loop: Header=BB4_70 Depth=1
	movzbl	-3(%r12), %r14d
	jmp	.LBB4_69
.LBB4_76:                               #   in Loop: Header=BB4_70 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB4_69
.LBB4_77:
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	dictReleaseIterator
.LBB4_78:
	movq	-104(%rbp), %r12        # 8-byte Reload
	cmpq	$-1, %r12
	je	.LBB4_80
.LBB4_79:
	movl	$.L.str.8, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	xorDigest
.LBB4_80:
	movl	$42, __A_VARIABLE(%rip)
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_82:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$164, %edx
.LBB4_83:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB4_84:
	movl	$.L.str.1, %edi
	movl	$.L.str.7, %edx
	movl	$246, %esi
.LBB4_85:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB4_86:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$197, %esi
	jmp	.LBB4_85
.LBB4_87:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$159, %edx
	jmp	.LBB4_83
.LBB4_88:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$161, %edx
	jmp	.LBB4_83
.Lfunc_end4:
	.size	xorObjectDigest, .Lfunc_end4-xorObjectDigest
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_2
	.quad	.LBB4_45
	.quad	.LBB4_23
	.quad	.LBB4_35
	.quad	.LBB4_3
	.quad	.LBB4_49
	.quad	.LBB4_52
.LJTI4_1:
	.quad	.LBB4_57
	.quad	.LBB4_61
	.quad	.LBB4_59
	.quad	.LBB4_60
	.quad	.LBB4_58
.LJTI4_2:
	.quad	.LBB4_9
	.quad	.LBB4_13
	.quad	.LBB4_11
	.quad	.LBB4_12
	.quad	.LBB4_10
.LJTI4_3:
	.quad	.LBB4_17
	.quad	.LBB4_20
	.quad	.LBB4_18
	.quad	.LBB4_19
	.quad	.LBB4_5
.LJTI4_4:
	.quad	.LBB4_72
	.quad	.LBB4_75
	.quad	.LBB4_73
	.quad	.LBB4_74
	.quad	.LBB4_68
.LJTI4_5:
	.quad	.LBB4_29
	.quad	.LBB4_32
	.quad	.LBB4_30
	.quad	.LBB4_31
	.quad	.LBB4_25
                                        # -- End function
	.text
	.globl	_serverAssert           # -- Begin function _serverAssert
	.p2align	4, 0x90
	.type	_serverAssert,@function
_serverAssert:                          # @_serverAssert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpl	$0, server+3132(%rip)
	jne	.LBB5_2
# %bb.1:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.95, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.96, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	serverLog
	movb	$120, -1
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_serverAssert, .Lfunc_end5-_serverAssert
                                        # -- End function
	.globl	_serverPanic            # -- Begin function _serverPanic
	.p2align	4, 0x90
	.type	_serverPanic,@function
_serverPanic:                           # @_serverPanic
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$464, %rsp              # imm = 0x1D0
	movl	%esi, %r14d
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB6_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB6_2:
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -48(%rbp)
	leaq	-480(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movl	$256, %esi              # imm = 0x100
	callq	vsnprintf
	cmpl	$0, server+3132(%rip)
	jne	.LBB6_4
# %bb.3:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.114, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.115, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	leaq	-480(%rbp), %rdx
	movl	$.L.str.116, %esi
	movl	$3, %edi
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.114, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movb	$120, -1
	movl	$42, __A_VARIABLE(%rip)
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_serverPanic, .Lfunc_end6-_serverPanic
                                        # -- End function
	.globl	computeDatasetDigest    # -- Begin function computeDatasetDigest
	.p2align	4, 0x90
	.type	computeDatasetDigest,@function
computeDatasetDigest:                   # @computeDatasetDigest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movl	$20, %edx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	memset
	movl	server+1792(%rip), %eax
	testl	%eax, %eax
	jle	.LBB7_24
# %bb.1:
	xorl	%ebx, %ebx
	leaq	-80(%rbp), %r13
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_22:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictReleaseIterator
	movl	server+1792(%rip), %eax
	movq	-120(%rbp), %rbx        # 8-byte Reload
.LBB7_23:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB7_24
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	movq	server+48(%rip), %r15
	movq	%rbx, %r14
	shlq	$6, %r14
	movq	(%r15,%r14), %rdi
	movq	40(%rdi), %rcx
	addq	72(%rdi), %rcx
	je	.LBB7_23
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	callq	dictGetSafeIterator
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	callq	lwip_htonl
	movl	%eax, -60(%rbp)
	movl	$4, %edx
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	leaq	-60(%rbp), %rsi
	callq	xorDigest
	leaq	-216(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r15, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r12, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	testq	%rax, %rax
	je	.LBB7_22
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, %r12
	addq	%r14, %r15
	movq	%r15, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_20:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %rbx
	movq	-17(%r15), %r13
	.p2align	4, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leaq	-216(%rbp), %r14
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	SHA1Update
	leaq	-112(%rbp), %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movaps	-80(%rbp), %xmm0
	xorps	-112(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movzbl	-96(%rbp), %eax
	movzbl	-95(%rbp), %ecx
	xorb	%al, -64(%rbp)
	xorb	%cl, -63(%rbp)
	movzbl	-94(%rbp), %eax
	xorb	%al, -62(%rbp)
	movzbl	-93(%rbp), %eax
	xorb	%al, -61(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	SHA1Init
	movq	%r14, %rdi
	leaq	-80(%rbp), %r13
	movq	%r13, %rsi
	movl	$20, %edx
	callq	SHA1Update
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	SHA1Final
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	xorObjectDigest
	movl	$20, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	xorDigest
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB7_22
.LBB7_5:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$20, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	(%r12), %r15
	movzbl	-1(%r15), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB7_6
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=2
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_8:                                #   in Loop: Header=BB7_5 Depth=2
	shrq	$3, %rsi
	jmp	.LBB7_13
.LBB7_6:                                #   in Loop: Header=BB7_5 Depth=2
	xorl	%esi, %esi
	jmp	.LBB7_13
.LBB7_9:                                #   in Loop: Header=BB7_5 Depth=2
	movzbl	-3(%r15), %esi
	jmp	.LBB7_13
.LBB7_10:                               #   in Loop: Header=BB7_5 Depth=2
	movzwl	-5(%r15), %esi
	jmp	.LBB7_13
.LBB7_11:                               #   in Loop: Header=BB7_5 Depth=2
	movl	-9(%r15), %esi
	jmp	.LBB7_13
.LBB7_12:                               #   in Loop: Header=BB7_5 Depth=2
	movq	-17(%r15), %rsi
	.p2align	4, 0x90
.LBB7_13:                               #   in Loop: Header=BB7_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	createStringObject
	movzbl	-1(%r15), %r13d
	movl	%r13d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI7_1(,%rcx,8)
.LBB7_16:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %rbx
	shrq	$3, %r13
	jmp	.LBB7_21
.LBB7_14:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB7_21
.LBB7_17:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %rbx
	movzbl	-3(%r15), %r13d
	jmp	.LBB7_21
.LBB7_18:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %rbx
	movzwl	-5(%r15), %r13d
	jmp	.LBB7_21
.LBB7_19:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %rbx
	movl	-9(%r15), %r13d
	jmp	.LBB7_21
.LBB7_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	computeDatasetDigest, .Lfunc_end7-computeDatasetDigest
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_8
	.quad	.LBB7_9
	.quad	.LBB7_10
	.quad	.LBB7_11
	.quad	.LBB7_12
.LJTI7_1:
	.quad	.LBB7_16
	.quad	.LBB7_17
	.quad	.LBB7_18
	.quad	.LBB7_19
	.quad	.LBB7_20
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function debugCommand
.LCPI8_0:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI8_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	debugCommand
	.p2align	4, 0x90
	.type	debugCommand,@function
debugCommand:                           # @debugCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4136, %rsp             # imm = 0x1028
	movq	%rdi, %r14
	movslq	64(%rdi), %r15
	movq	72(%rdi), %r12
	movq	8(%r12), %rax
	movq	8(%rax), %rbx
	cmpq	$2, %r15
	jne	.LBB8_2
# %bb.1:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_19
.LBB8_2:
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_18
# %bb.3:
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_142
# %bb.4:
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_11
# %bb.5:
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_11
# %bb.6:
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_20
# %bb.7:
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_143
# %bb.8:
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_21
# %bb.9:
	testl	%eax, %eax
	jne	.LBB8_21
# %bb.10:
	movq	16(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.43, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB8_58
.LBB8_11:
	movq	$0, -4176(%rbp)
	cmpl	$3, %r15d
	jl	.LBB8_15
# %bb.12:
	movq	16(%r12), %rsi
	leaq	-4176(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB8_60
# %bb.13:
	movq	-4176(%rbp), %rbx
	testq	%rbx, %rbx
	jns	.LBB8_16
# %bb.14:
	movq	$0, -4176(%rbp)
.LBB8_15:
	xorl	%ebx, %ebx
.LBB8_16:
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.36, %esi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leal	(%rcx,%rcx,2), %edi
	movq	%rbx, %rsi
	callq	restartServer
	movl	$.L.str.38, %esi
.LBB8_17:
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB8_60
.LBB8_18:
	movb	$120, -1
	jmp	.LBB8_60
.LBB8_19:
	leaq	-4176(%rbp), %rbx
	movl	$.LdebugCommand.help, %esi
	movl	$192, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyHelp
	jmp	.LBB8_60
.LBB8_20:
	movq	$-1, %rdi
	callq	zmalloc
	movq	%rax, %rdi
	callq	zfree
.LBB8_58:
	movq	shared+8(%rip), %rsi
.LBB8_59:
	movq	%r14, %rdi
	callq	addReply
.LBB8_60:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4136, %rsp             # imm = 0x1028
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_21:
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_32
# %bb.22:
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_35
# %bb.23:
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_39
# %bb.24:
	testl	%eax, %eax
	jne	.LBB8_39
# %bb.25:
	movq	16(%r14), %rax
	movq	(%rax), %rdi
	movq	16(%r12), %rax
	movq	8(%rax), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB8_47
# %bb.26:
	movq	8(%rax), %rbx
	movl	(%rbx), %edi
	shrl	$4, %edi
	andl	$15, %edi
	callq	strEncoding
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, -4054(%rbp)
	movapd	%xmm0, -4064(%rbp)
	movapd	%xmm0, -4080(%rbp)
	movapd	%xmm0, -4096(%rbp)
	movapd	%xmm0, -4112(%rbp)
	movapd	%xmm0, -4128(%rbp)
	movapd	%xmm0, -4144(%rbp)
	movapd	%xmm0, -4160(%rbp)
	movapd	%xmm0, -4176(%rbp)
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$144, %eax
	jne	.LBB8_31
# %bb.27:
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	8(%rbx), %r12
	movq	24(%r12), %rcx
	xorl	%ebx, %ebx
	leaq	-4176(%rbp), %rdi
	movl	$138, %esi
	movl	$.L.str.50, %edx
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %r13
	addq	$-4176, %r13            # imm = 0xEFB0
	movl	$138, %ecx
	subl	%eax, %ecx
	movsd	16(%r12), %xmm1         # xmm1 = mem[0],zero
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI8_2(%rip), %xmm3   # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	24(%r12), %xmm1         # xmm1 = mem[0],zero
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movslq	%ecx, %r15
	movl	$.L.str.51, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movb	$1, %al
	callq	snprintf
	cltq
	addq	%rax, %r13
	subl	%eax, %r15d
	movslq	%r15d, %r15
	movswl	32(%r12), %ecx
	movl	$.L.str.52, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	addq	%rax, %r13
	subl	%eax, %r15d
	xorl	%ecx, %ecx
	cmpl	$65535, 32(%r12)        # imm = 0xFFFF
	seta	%cl
	movslq	%r15d, %r15
	movl	$.L.str.53, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	addq	%rax, %r13
	subl	%eax, %r15d
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB8_30
# %bb.28:                               # %.preheader
	xorl	%ebx, %ebx
.LBB8_29:                               # =>This Inner Loop Header: Depth=1
	movl	24(%rax), %ecx
	addq	%rcx, %rbx
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.LBB8_29
.LBB8_30:
	movslq	%r15d, %rsi
	movl	$.L.str.54, %edx
	movq	%r13, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB8_31:
	movl	4(%rbx), %r12d
	movq	%rbx, %rdi
	callq	rdbSavedObjectLen
	movq	%rax, %r13
	movl	(%rbx), %r15d
	shrl	$8, %r15d
	movq	%rbx, %rdi
	callq	estimateObjectIdleTime
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	mulq	%rcx
	movq	%rdx, %r11
	shrq	$4, %r11
	subq	$8, %rsp
	leaq	-4176(%rbp), %r10
	movl	$.L.str.55, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r13, %r9
	xorl	%eax, %eax
	pushq	%r10
	pushq	%r11
	pushq	%r15
	callq	addReplyStatusFormat
	addq	$32, %rsp
	jmp	.LBB8_60
.LBB8_32:
	leaq	-4176(%rbp), %rdi
	callq	rdbPopulateSaveInfo
	movq	server+2120(%rip), %rdi
	movq	%rax, %rsi
	callq	rdbSave
	testl	%eax, %eax
	jne	.LBB8_38
# %bb.33:
	movl	$-1, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	emptyDb
	movq	%r14, %rdi
	callq	protectClient
	movq	server+2120(%rip), %rdi
	xorl	%esi, %esi
	callq	rdbLoad
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	unprotectClient
	testl	%ebx, %ebx
	je	.LBB8_56
# %bb.34:
	movl	$.L.str.45, %esi
	jmp	.LBB8_17
.LBB8_35:
	cmpl	$0, server+1880(%rip)
	je	.LBB8_37
# %bb.36:
	movl	$1, %edi
	callq	flushAppendOnlyFile
.LBB8_37:
	movl	$-1, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	emptyDb
	movq	%r14, %rdi
	callq	protectClient
	movq	server+1888(%rip), %rdi
	callq	loadAppendOnlyFile
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	unprotectClient
	testl	%ebx, %ebx
	je	.LBB8_54
.LBB8_38:
	movq	shared+16(%rip), %rsi
	jmp	.LBB8_59
.LBB8_39:
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_48
# %bb.40:
	testl	%eax, %eax
	jne	.LBB8_48
# %bb.41:
	movq	16(%r14), %rax
	movq	(%rax), %rdi
	movq	16(%r12), %rax
	movq	8(%rax), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB8_47
# %bb.42:
	movq	8(%rax), %rbx
	movl	(%rbx), %ecx
	testb	$15, %cl
	jne	.LBB8_55
# %bb.43:
	shrb	$4, %cl
	orb	$8, %cl
	cmpb	$8, %cl
	jne	.LBB8_55
# %bb.44:
	movq	(%rax), %rdi
	movzbl	-1(%rdi), %r15d
	movl	%r15d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_93
# %bb.45:
	movl	%r15d, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_46:
	shrq	$3, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_94
.LBB8_47:
	movq	shared+120(%rip), %rsi
	jmp	.LBB8_59
.LBB8_48:
	movl	$.L.str.59, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_61
# %bb.49:
	testl	%eax, %eax
	jne	.LBB8_61
# %bb.50:
	movq	16(%r12), %rsi
	movq	shared+120(%rip), %rdx
	movq	%r14, %rdi
	callq	objectCommandLookupOrReply
	testq	%rax, %rax
	je	.LBB8_60
# %bb.51:
	movl	$240, %ecx
	andl	(%rax), %ecx
	cmpl	$80, %ecx
	jne	.LBB8_55
# %bb.52:
	movq	8(%rax), %rdi
	callq	ziplistRepr
	movl	$.L.str.60, %esi
.LBB8_53:
	movq	%r14, %rdi
	callq	addReplyStatus
	jmp	.LBB8_60
.LBB8_54:
	movq	$0, server+2080(%rip)
	movl	$.L.str.48, %esi
	jmp	.LBB8_57
.LBB8_55:
	movl	$.L.str.57, %esi
	jmp	.LBB8_17
.LBB8_56:
	movl	$.L.str.46, %esi
.LBB8_57:
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB8_58
.LBB8_61:
	movl	$.L.str.61, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	leal	-3(%r15), %ecx
	cmpl	$2, %ecx
	ja	.LBB8_76
# %bb.62:
	testl	%eax, %eax
	jne	.LBB8_76
# %bb.63:
	movq	16(%r12), %rsi
	leaq	-56(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB8_60
# %bb.64:
	movq	16(%r14), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	dictExpand
	cmpq	$0, -56(%rbp)
	jle	.LBB8_58
# %bb.65:
	leaq	-4176(%rbp), %r12
	xorl	%ebx, %ebx
	jmp	.LBB8_68
.LBB8_66:                               #   in Loop: Header=BB8_68 Depth=1
	movq	16(%r14), %rdi
	movq	%r13, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB8_72
.LBB8_67:                               #   in Loop: Header=BB8_68 Depth=1
	movq	%r13, %rdi
	callq	decrRefCount
	addq	$1, %rbx
	cmpq	-56(%rbp), %rbx
	jge	.LBB8_58
.LBB8_68:                               # =>This Inner Loop Header: Depth=1
	movq	$0, -64(%rbp)
	movl	$.L.str.63, %ecx
	cmpl	$3, 64(%r14)
	je	.LBB8_70
# %bb.69:                               #   in Loop: Header=BB8_68 Depth=1
	movq	72(%r14), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
.LBB8_70:                               #   in Loop: Header=BB8_68 Depth=1
	movl	$128, %esi
	movl	$.L.str.62, %edx
	movq	%r12, %rdi
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	snprintf
	movq	%r12, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, %r13
	cmpl	$5, 64(%r14)
	jne	.LBB8_66
# %bb.71:                               #   in Loop: Header=BB8_68 Depth=1
	movq	72(%r14), %rax
	movq	32(%rax), %rsi
	movq	%r14, %rdi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB8_66
	jmp	.LBB8_60
.LBB8_72:                               #   in Loop: Header=BB8_68 Depth=1
	movl	$128, %esi
	movl	$.L.str.64, %edx
	movq	%r12, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf
	movq	-64(%rbp), %r15
	movq	%r12, %rdi
	callq	strlen
	testq	%r15, %r15
	je	.LBB8_74
# %bb.73:                               #   in Loop: Header=BB8_68 Depth=1
	movq	-64(%rbp), %rsi
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	createStringObject
	movq	%rax, %r15
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rdx
	movslq	-48(%rbp), %rax         # 4-byte Folded Reload
	cmpq	%rax, %rdx
	cmovgq	%rax, %rdx
	movq	%r12, %rsi
	callq	memcpy
	jmp	.LBB8_75
.LBB8_74:                               #   in Loop: Header=BB8_68 Depth=1
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, %r15
.LBB8_75:                               #   in Loop: Header=BB8_68 Depth=1
	movq	16(%r14), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	dbAdd
	movq	16(%r14), %rdi
	movq	%r13, %rsi
	callq	signalModifiedKey
	jmp	.LBB8_67
.LBB8_76:
	cmpl	$2, %r15d
	setne	%r13b
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB8_79
# %bb.77:
	testb	%r13b, %r13b
	jne	.LBB8_79
# %bb.78:
	callq	sdsempty
	movq	%rax, %rbx
	leaq	-4176(%rbp), %rdi
	callq	computeDatasetDigest
	movzbl	-4176(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4175(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4174(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4173(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4172(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4171(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4170(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4169(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4168(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4167(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4166(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4165(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4164(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4163(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4162(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4161(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4160(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4159(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4158(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4157(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyStatus
	movq	%rbx, %rdi
	callq	sdsfree
	jmp	.LBB8_60
.LBB8_79:
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r15d
	jl	.LBB8_87
# %bb.80:
	testl	%eax, %eax
	jne	.LBB8_87
# %bb.81:
	addq	$-2, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	addReplyMultiBulkLen
	cmpl	$3, 64(%r14)
	jl	.LBB8_60
# %bb.82:
	movl	$2, %r12d
	leaq	-4176(%rbp), %r15
	jmp	.LBB8_84
.LBB8_83:                               #   in Loop: Header=BB8_84 Depth=1
	callq	sdsempty
	movzbl	-4176(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4175(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4174(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4173(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4172(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4171(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4170(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4169(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4168(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4167(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4166(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4165(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4164(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4163(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4162(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4161(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4160(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4159(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4158(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzbl	-4157(%rbp), %edx
	movl	$.L.str.66, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyStatus
	movq	%rbx, %rdi
	callq	sdsfree
	addq	$1, %r12
	movslq	64(%r14), %rax
	cmpq	%rax, %r12
	jge	.LBB8_60
.LBB8_84:                               # =>This Inner Loop Header: Depth=1
	movl	$20, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	(%rax,%r12,8), %rsi
	movl	$1, %edx
	callq	lookupKeyReadWithFlags
	testq	%rax, %rax
	je	.LBB8_83
# %bb.85:                               #   in Loop: Header=BB8_84 Depth=1
	movq	16(%r14), %rdi
	movq	72(%r14), %rcx
	movq	(%rcx,%r12,8), %rsi
	movq	%r15, %rdx
	movq	%rax, %rcx
	callq	xorObjectDigest
	jmp	.LBB8_83
.LBB8_87:
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_90
# %bb.88:
	testl	%eax, %eax
	jne	.LBB8_90
# %bb.89:
	movq	16(%r12), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	callq	strtod
	mulsd	.LCPI8_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rcx
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	movq	%rdx, -4176(%rbp)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	movq	%rax, -4168(%rbp)
	leaq	-4176(%rbp), %rdi
	xorl	%esi, %esi
	callq	nanosleep
	jmp	.LBB8_58
.LBB8_90:
	movl	$.L.str.69, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_111
# %bb.91:
	testl	%eax, %eax
	jne	.LBB8_111
# %bb.92:
	movq	16(%r12), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, server+1740(%rip)
	jmp	.LBB8_58
.LBB8_93:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB8_94:
	xorl	%eax, %eax
	jmp	.LBB8_100
.LBB8_95:
	movzbl	-3(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rdi), %eax
	jmp	.LBB8_99
.LBB8_96:
	movzwl	-5(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-3(%rdi), %eax
	jmp	.LBB8_99
.LBB8_97:
	movl	-9(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	-5(%rdi), %eax
	subl	%r15d, %eax
	jmp	.LBB8_100
.LBB8_98:
	movq	-17(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-9(%rdi), %rax
.LBB8_99:
	subq	%r15, %rax
.LBB8_100:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsZmallocSize
	movq	8(%rbx), %rdx
	movzbl	-1(%rdx), %r13d
	movl	%r13d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movq	%rax, -72(%rbp)         # 8-byte Spill
	ja	.LBB8_103
# %bb.101:
	movl	%r13d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_1(,%rcx,8)
.LBB8_102:
	shrq	$3, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_104
.LBB8_103:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB8_104:
	xorl	%r12d, %r12d
	jmp	.LBB8_110
.LBB8_105:
	movzbl	-3(%rdx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rdx), %r12d
	jmp	.LBB8_109
.LBB8_106:
	movzwl	-5(%rdx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-3(%rdx), %r12d
	jmp	.LBB8_109
.LBB8_107:
	movl	-9(%rdx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	-5(%rdx), %r12d
	subl	%r13d, %r12d
	jmp	.LBB8_110
.LBB8_108:
	movq	-17(%rdx), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	-9(%rdx), %r12
.LBB8_109:
	subq	%r13, %r12
.LBB8_110:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	getStringObjectSdsUsedMemory
	movq	%rax, %rbx
	movl	$.L.str.58, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r13, %r9
	xorl	%eax, %eax
	pushq	%rbx
	pushq	%r12
	callq	addReplyStatusFormat
	addq	$16, %rsp
	jmp	.LBB8_60
.LBB8_111:
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_114
# %bb.112:
	testl	%eax, %eax
	jne	.LBB8_114
# %bb.113:
	movq	16(%r12), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, server+3076(%rip)
	jmp	.LBB8_58
.LBB8_114:
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_117
# %bb.115:
	testl	%eax, %eax
	jne	.LBB8_117
# %bb.116:
	movl	$.L.str.72, %edi
	movl	$1, %esi
	callq	sdsnewlen
	movq	72(%r14), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	movl	$.L.str.73, %esi
	movl	$.L.str.74, %edx
	movl	$2, %ecx
	movq	%rax, %rdi
	callq	sdsmapchars
	movl	$.L.str.75, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB8_60
.LBB8_117:
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r13b, %al
	je	.LBB8_124
# %bb.118:
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_126
# %bb.119:
	testl	%eax, %eax
	jne	.LBB8_126
# %bb.120:
	callq	sdsempty
	movq	%rax, %rbx
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB8_60
# %bb.121:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	js	.LBB8_135
# %bb.122:
	movslq	server+1792(%rip), %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_135
# %bb.123:
	movl	$.L.str.87, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movq	server+48(%rip), %rax
	movq	-56(%rbp), %rcx
	shlq	$6, %rcx
	movq	(%rax,%rcx), %rdx
	leaq	-4176(%rbp), %r15
	movl	$4096, %esi             # imm = 0x1000
	movq	%r15, %rdi
	callq	dictGetStats
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sdscat
	movl	$.L.str.88, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movq	server+48(%rip), %rax
	movq	-56(%rbp), %rcx
	shlq	$6, %rcx
	movq	8(%rax,%rcx), %rdx
	movl	$4096, %esi             # imm = 0x1000
	movq	%r15, %rdi
	callq	dictGetStats
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sdscat
	jmp	.LBB8_125
.LBB8_124:
	callq	sdsempty
	movl	$.L.str.77, %esi
	movq	%rax, %rdi
	movl	$64, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.78, %esi
	movq	%rax, %rdi
	movl	$16, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.79, %esi
	movq	%rax, %rdi
	movl	$24, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.80, %esi
	movq	%rax, %rdi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.81, %esi
	movq	%rax, %rdi
	movl	$3, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.82, %esi
	movq	%rax, %rdi
	movl	$5, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.83, %esi
	movq	%rax, %rdi
	movl	$9, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.84, %esi
	movq	%rax, %rdi
	movl	$17, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB8_125:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	jmp	.LBB8_60
.LBB8_126:
	movl	$.L.str.89, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB8_132
# %bb.127:
	testl	%eax, %eax
	jne	.LBB8_132
# %bb.128:
	movq	16(%r12), %rsi
	movq	shared+120(%rip), %rdx
	movq	%r14, %rdi
	callq	objectCommandLookupOrReply
	testq	%rax, %rax
	je	.LBB8_60
# %bb.129:
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$2, %cl
	je	.LBB8_138
# %bb.130:
	cmpb	$7, %cl
	jne	.LBB8_141
# %bb.131:
	movq	8(%rax), %rax
	jmp	.LBB8_139
.LBB8_132:
	movl	$.L.str.91, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r13b, %al
	je	.LBB8_136
# %bb.133:
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r13b, %al
	je	.LBB8_137
# %bb.134:
	movq	%r14, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB8_60
.LBB8_135:
	movl	$.L.str.86, %esi
	jmp	.LBB8_17
.LBB8_136:
	movl	$.L.str.92, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	changeReplicationId
	callq	clearReplicationId2
	jmp	.LBB8_58
.LBB8_137:
	callq	stringmatchlen_fuzz_test
	movl	$.L.str.94, %esi
	jmp	.LBB8_53
.LBB8_138:
	addq	$8, %rax
.LBB8_139:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB8_141
# %bb.140:
	leaq	-4176(%rbp), %rbx
	movl	$4096, %esi             # imm = 0x1000
	movq	%rbx, %rdi
	callq	dictGetStats
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	jmp	.LBB8_60
.LBB8_141:
	movl	$.L.str.90, %esi
	jmp	.LBB8_17
.LBB8_142:
	xorl	%edi, %edi
	callq	time
	movl	$.L.str.1, %edi
	movl	$.L.str.35, %edx
	movl	$332, %esi              # imm = 0x14C
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB8_143:
	movq	(%r12), %rsi
	movl	$.L.str.41, %edx
	movl	$.L.str.1, %ecx
	movq	%r14, %rdi
	movl	$352, %r8d              # imm = 0x160
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	debugCommand, .Lfunc_end8-debugCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_46
	.quad	.LBB8_95
	.quad	.LBB8_96
	.quad	.LBB8_97
	.quad	.LBB8_98
.LJTI8_1:
	.quad	.LBB8_102
	.quad	.LBB8_105
	.quad	.LBB8_106
	.quad	.LBB8_107
	.quad	.LBB8_108
                                        # -- End function
	.text
	.globl	_serverAssertWithInfo   # -- Begin function _serverAssertWithInfo
	.p2align	4, 0x90
	.type	_serverAssertWithInfo,@function
_serverAssertWithInfo:                  # @_serverAssertWithInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%r8d, %r14d
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB9_2
# %bb.1:
	callq	_serverAssertPrintClientInfo
.LBB9_2:
	testq	%rbx, %rbx
	je	.LBB9_6
# %bb.3:
	cmpl	$0, server+3132(%rip)
	jne	.LBB9_5
# %bb.4:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.113, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	serverLogObjectDebugInfo
	movl	$42, __A_VARIABLE(%rip)
.LBB9_6:
	cmpl	$0, server+3132(%rip)
	jne	.LBB9_8
# %bb.7:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.95, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.96, %esi
	movl	$3, %edi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	serverLog
	movb	$120, -1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_serverAssertWithInfo, .Lfunc_end9-_serverAssertWithInfo
                                        # -- End function
	.globl	bugReportStart          # -- Begin function bugReportStart
	.p2align	4, 0x90
	.type	bugReportStart,@function
bugReportStart:                         # @bugReportStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, server+3132(%rip)
	jne	.LBB10_2
# %bb.1:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bugReportStart, .Lfunc_end10-bugReportStart
                                        # -- End function
	.globl	_serverAssertPrintClientInfo # -- Begin function _serverAssertPrintClientInfo
	.p2align	4, 0x90
	.type	_serverAssertPrintClientInfo,@function
_serverAssertPrintClientInfo:           # @_serverAssertPrintClientInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %r15
	cmpl	$0, server+3132(%rip)
	jne	.LBB11_2
# %bb.1:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.97, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	160(%r15), %edx
	movl	$.L.str.98, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	8(%r15), %edx
	movl	$.L.str.99, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	64(%r15), %edx
	movl	$.L.str.100, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	cmpl	$0, 64(%r15)
	jle	.LBB11_9
# %bb.3:
	leaq	-160(%rbp), %r14
	xorl	%ebx, %ebx
	jmp	.LBB11_4
	.p2align	4, 0x90
.LBB11_7:                               #   in Loop: Header=BB11_4 Depth=1
	andl	$15, %r8d
	movl	$128, %esi
	movl	$.L.str.101, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movq	%r14, %rcx
.LBB11_8:                               #   in Loop: Header=BB11_4 Depth=1
	movl	4(%rax), %r8d
	movl	$.L.str.102, %esi
	movl	$3, %edi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	serverLog
	addq	$1, %rbx
	movslq	64(%r15), %rax
	cmpq	%rax, %rbx
	jge	.LBB11_9
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movl	(%rax), %ecx
	movl	%ecx, %r8d
	shrl	$4, %r8d
	andl	$15, %ecx
	jne	.LBB11_7
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	movl	%r8d, %edx
	orb	$8, %dl
	andb	$15, %dl
	cmpb	$8, %dl
	jne	.LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_4 Depth=1
	movq	8(%rax), %rcx
	jmp	.LBB11_8
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_serverAssertPrintClientInfo, .Lfunc_end11-_serverAssertPrintClientInfo
                                        # -- End function
	.globl	serverLogObjectDebugInfo # -- Begin function serverLogObjectDebugInfo
	.p2align	4, 0x90
	.type	serverLogObjectDebugInfo,@function
serverLogObjectDebugInfo:               # @serverLogObjectDebugInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	(%rdi), %edx
	andl	$15, %edx
	movl	$.L.str.103, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	(%rbx), %edx
	shrl	$4, %edx
	andl	$15, %edx
	movl	$.L.str.104, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	4(%rbx), %edx
	movl	$.L.str.105, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$4, %cl
	ja	.LBB12_35
# %bb.1:
	movl	%eax, %ecx
	andl	$15, %ecx
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_2:
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB12_35
# %bb.3:
	movq	8(%rbx), %rax
	movzbl	-1(%rax), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_4
# %bb.5:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI12_1(,%rcx,8)
.LBB12_6:
	shrq	$3, %rdx
	jmp	.LBB12_11
.LBB12_28:
	movq	%rbx, %rdi
	callq	listTypeLength
	movl	$.L.str.108, %esi
	jmp	.LBB12_29
.LBB12_30:
	movq	%rbx, %rdi
	callq	setTypeSize
	movl	$.L.str.109, %esi
	jmp	.LBB12_29
.LBB12_32:
	movq	%rbx, %rdi
	callq	zsetLength
	movl	$.L.str.111, %esi
	movl	$3, %edi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	serverLog
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$112, %eax
	jne	.LBB12_35
# %bb.33:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movl	24(%rax), %edx
	movl	$.L.str.112, %esi
	movl	$3, %edi
	jmp	.LBB12_34
.LBB12_31:
	movq	%rbx, %rdi
	callq	hashTypeLength
	movl	$.L.str.110, %esi
.LBB12_29:
	movl	$3, %edi
	movl	%eax, %edx
.LBB12_34:
	xorl	%eax, %eax
	callq	serverLog
.LBB12_35:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB12_4:
	xorl	%edx, %edx
	jmp	.LBB12_11
.LBB12_7:
	movzbl	-3(%rax), %edx
	jmp	.LBB12_11
.LBB12_8:
	movzwl	-5(%rax), %edx
	jmp	.LBB12_11
.LBB12_9:
	movl	-9(%rax), %edx
	jmp	.LBB12_11
.LBB12_10:
	movq	-17(%rax), %rdx
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.106, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	8(%rbx), %rax
	movb	-1(%rax), %cl
	andb	$7, %cl
	cmpb	$4, %cl
	je	.LBB12_15
# %bb.12:
	cmpb	$3, %cl
	je	.LBB12_17
# %bb.13:
	cmpb	$2, %cl
	jne	.LBB12_16
# %bb.14:
	movzwl	-5(%rax), %eax
	jmp	.LBB12_18
.LBB12_15:
	movq	-17(%rax), %rax
	jmp	.LBB12_18
.LBB12_17:
	movl	-9(%rax), %eax
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4095, %rax             # imm = 0xFFF
	ja	.LBB12_35
	jmp	.LBB12_19
.LBB12_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_19:
	callq	sdsempty
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_20
# %bb.21:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI12_2(,%rcx,8)
.LBB12_22:
	shrq	$3, %rdx
	jmp	.LBB12_27
.LBB12_23:
	movzbl	-3(%rsi), %edx
	jmp	.LBB12_27
.LBB12_24:
	movzwl	-5(%rsi), %edx
	jmp	.LBB12_27
.LBB12_25:
	movl	-9(%rsi), %edx
	jmp	.LBB12_27
.LBB12_26:
	movq	-17(%rsi), %rdx
	jmp	.LBB12_27
.LBB12_20:
	xorl	%edx, %edx
.LBB12_27:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatrepr
	movq	%rax, %rbx
	movl	$.L.str.107, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	sdsfree
	jmp	.LBB12_35
.Lfunc_end12:
	.size	serverLogObjectDebugInfo, .Lfunc_end12-serverLogObjectDebugInfo
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_2
	.quad	.LBB12_28
	.quad	.LBB12_30
	.quad	.LBB12_32
	.quad	.LBB12_31
.LJTI12_1:
	.quad	.LBB12_6
	.quad	.LBB12_7
	.quad	.LBB12_8
	.quad	.LBB12_9
	.quad	.LBB12_10
.LJTI12_2:
	.quad	.LBB12_22
	.quad	.LBB12_23
	.quad	.LBB12_24
	.quad	.LBB12_25
	.quad	.LBB12_26
                                        # -- End function
	.text
	.globl	_serverAssertPrintObject # -- Begin function _serverAssertPrintObject
	.p2align	4, 0x90
	.type	_serverAssertPrintObject,@function
_serverAssertPrintObject:               # @_serverAssertPrintObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$0, server+3132(%rip)
	jne	.LBB13_2
# %bb.1:
	movl	$.L.str.117, %esi
	movl	$1027, %edi             # imm = 0x403
	callq	serverLogRaw
	movl	$1, server+3132(%rip)
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.113, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	serverLogObjectDebugInfo
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_serverAssertPrintObject, .Lfunc_end13-_serverAssertPrintObject
                                        # -- End function
	.globl	serverLogHexDump        # -- Begin function serverLogHexDump
	.p2align	4, 0x90
	.type	serverLogHexDump,@function
serverLogHexDump:                       # @serverLogHexDump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %rdx
	movl	%edi, %r14d
	movl	$.L.str.118, %esi
	xorl	%eax, %eax
	callq	serverLog
	testq	%r15, %r15
	je	.LBB14_1
# %bb.2:
	leaq	-128(%rbp), %rax
	orl	$1024, %r14d            # imm = 0x400
	movl	%r14d, -44(%rbp)        # 4-byte Spill
	leaq	-1(%r15), %r13
	xorl	%r12d, %r12d
	movq	%rax, %rcx
	negq	%rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %r14
	jmp	.LBB14_3
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	movl	-44(%rbp), %edi         # 4-byte Reload
	leaq	-128(%rbp), %r14
	movq	%r14, %rsi
	callq	serverLogRaw
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	addq	$1, %r12
	cmpq	%r12, %r15
	je	.LBB14_8
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r12), %ecx
	shrq	$4, %rcx
	movzbl	.LserverLogHexDump.charset(%rcx), %ecx
	movb	%cl, (%r14)
	movzbl	(%rbx,%r12), %ecx
	andl	$15, %ecx
	movzbl	.LserverLogHexDump.charset(%rcx), %ecx
	movb	%cl, 1(%r14)
	movb	$0, 2(%r14)
	cmpq	%r12, %r13
	je	.LBB14_6
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%r14, %rcx
	addq	$2, %rcx
	cmpq	$64, %rcx
	je	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	addq	$2, %r14
	jmp	.LBB14_7
.LBB14_8:
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB14_9
.LBB14_1:
	orl	$1024, %r14d            # imm = 0x400
.LBB14_9:
	movl	$.L.str.119, %esi
	movl	%r14d, %edi
	callq	serverLogRaw
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	serverLogHexDump, .Lfunc_end14-serverLogHexDump
                                        # -- End function
	.globl	watchdogSignalHandler   # -- Begin function watchdogSignalHandler
	.p2align	4, 0x90
	.type	watchdogSignalHandler,@function
watchdogSignalHandler:                  # @watchdogSignalHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.120, %esi
	movl	$3, %edi
	callq	serverLogFromHandler
	movl	$.L.str.121, %esi
	movl	$3, %edi
	callq	serverLogFromHandler
	movl	$.L.str.122, %esi
	movl	$3, %edi
	callq	serverLogFromHandler
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	watchdogSignalHandler, .Lfunc_end15-watchdogSignalHandler
                                        # -- End function
	.globl	watchdogScheduleSignal  # -- Begin function watchdogScheduleSignal
	.p2align	4, 0x90
	.type	watchdogScheduleSignal,@function
watchdogScheduleSignal:                 # @watchdogScheduleSignal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movslq	%edi, %rax
	imulq	$274877907, %rax, %rcx  # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -16(%rbp)
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %eax
	imull	$1000, %eax, %eax       # imm = 0x3E8
	cltq
	movq	%rax, -8(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	leaq	-32(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	watchdogScheduleSignal, .Lfunc_end16-watchdogScheduleSignal
                                        # -- End function
	.globl	enableWatchdog          # -- Begin function enableWatchdog
	.p2align	4, 0x90
	.type	enableWatchdog,@function
enableWatchdog:                         # @enableWatchdog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, %ebx
	cmpl	$0, server+3136(%rip)
	jne	.LBB17_2
# %bb.1:
	leaq	-40(%rbp), %rdi
	callq	sigemptyset
	movl	$134217732, -32(%rbp)   # imm = 0x8000004
	movq	$watchdogSignalHandler, -48(%rbp)
	leaq	-48(%rbp), %rsi
	movl	$14, %edi
	xorl	%edx, %edx
	callq	sigaction
.LBB17_2:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	addl	%eax, %eax
	cmpl	%ebx, %eax
	cmovll	%ebx, %eax
	movslq	%eax, %rbx
	imulq	$274877907, %rbx, %rax  # imm = 0x10624DD3
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$38, %rax
	addl	%ecx, %eax
	cltq
	movq	%rax, -32(%rbp)
	imull	$1000, %eax, %eax       # imm = 0x3E8
	movl	%ebx, %ecx
	subl	%eax, %ecx
	imull	$1000, %ecx, %eax       # imm = 0x3E8
	cltq
	movq	%rax, -24(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	leaq	-48(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, server+3136(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	enableWatchdog, .Lfunc_end17-enableWatchdog
                                        # -- End function
	.globl	disableWatchdog         # -- Begin function disableWatchdog
	.p2align	4, 0x90
	.type	disableWatchdog,@function
disableWatchdog:                        # @disableWatchdog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	cmpl	$0, server+3136(%rip)
	je	.LBB18_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -16(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-32(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer
	movl	$42, __A_VARIABLE(%rip)
	leaq	-24(%rbp), %rdi
	callq	sigemptyset
	movl	$0, -16(%rbp)
	movq	$1, -32(%rbp)
	leaq	-32(%rbp), %rsi
	movl	$14, %edi
	xorl	%edx, %edx
	callq	sigaction
	movl	$0, server+3136(%rip)
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	disableWatchdog, .Lfunc_end18-disableWatchdog
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"eptr != NULL"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/debug.c"
	.size	.L.str.1, 73

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sptr != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ziplistGet(eptr,&vstr,&vlen,&vll)"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%.17g"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown sorted set encoding"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%U.%U"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unknown object type"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"!!expire!!"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"help"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ASSERT -- Crash by assertion failed."
	.size	.L.str.10, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"CHANGE-REPL-ID -- Change the replication IDs of the instance. Dangerous, should be used only for testing the replication subsystem."
	.size	.L.str.11, 132

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"CRASH-AND-RECOVER <milliseconds> -- Hard crash and restart after <milliseconds> delay."
	.size	.L.str.12, 87

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DIGEST -- Output a hex signature representing the current DB content."
	.size	.L.str.13, 70

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"DIGEST-VALUE <key-1> ... <key-N>-- Output a hex signature of the values of all the specified keys."
	.size	.L.str.14, 99

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ERROR <string> -- Return a Redis protocol error with <string> as message. Useful for clients unit tests to simulate Redis errors."
	.size	.L.str.15, 130

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"LOG <message> -- write message to the server log."
	.size	.L.str.16, 50

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"HTSTATS <dbid> -- Return hash table statistics of the specified Redis database."
	.size	.L.str.17, 80

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"HTSTATS-KEY <key> -- Like htstats but for the hash table stored as key's value."
	.size	.L.str.18, 80

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LOADAOF -- Flush the AOF buffers on disk and reload the AOF in memory."
	.size	.L.str.19, 71

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"LUA-ALWAYS-REPLICATE-COMMANDS <0|1> -- Setting it to 1 makes Lua replication defaulting to replicating single commands, without the script having to enable effects replication."
	.size	.L.str.20, 177

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"OBJECT <key> -- Show low level info about key and associated value."
	.size	.L.str.21, 68

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"PANIC -- Crash the server simulating a panic."
	.size	.L.str.22, 46

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"POPULATE <count> [prefix] [size] -- Create <count> string keys named key:<num>. If a prefix is specified is used instead of the 'key' prefix."
	.size	.L.str.23, 142

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RELOAD -- Save the RDB on disk and reload it back in memory."
	.size	.L.str.24, 61

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RESTART -- Graceful restart: save config, db, restart."
	.size	.L.str.25, 55

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"SDSLEN <key> -- Show low level SDS string info representing key and value."
	.size	.L.str.26, 75

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"SEGFAULT -- Crash the server with sigsegv."
	.size	.L.str.27, 43

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"SET-ACTIVE-EXPIRE <0|1> -- Setting it to 0 disables expiring keys in background when they are not accessed (otherwise the Redis behavior). Setting it to 1 reenables back the default."
	.size	.L.str.28, 183

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"SLEEP <seconds> -- Stop the server for <seconds>. Decimals allowed."
	.size	.L.str.29, 68

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"STRUCTSIZE -- Return the size of different Redis core C structures."
	.size	.L.str.30, 68

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ZIPLIST <key> -- Show low level info about the ziplist encoding."
	.size	.L.str.31, 65

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"STRINGMATCH-TEST -- Run a fuzz tester against the stringmatchlen() function."
	.size	.L.str.32, 77

	.type	.LdebugCommand.help,@object # @debugCommand.help
	.section	.rodata,"a",@progbits
	.p2align	4
.LdebugCommand.help:
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	0
	.size	.LdebugCommand.help, 192

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"segfault"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"panic"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"DEBUG PANIC called at Unix time %ld"
	.size	.L.str.35, 36

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"restart"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"crash-and-recover"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"failed to restart the server. Check server logs."
	.size	.L.str.38, 49

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"oom"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"assert"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"1 == 2"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"log"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"DEBUG LOG: %s"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"reload"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Error trying to load the RDB dump"
	.size	.L.str.45, 34

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"DB reloaded by DEBUG RELOAD"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"loadaof"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Append Only File loaded by DEBUG LOADAOF"
	.size	.L.str.48, 41

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"object"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" ql_nodes:%lu"
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	" ql_avg_node:%.2f"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	" ql_ziplist_max:%d"
	.size	.L.str.52, 19

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	" ql_compressed:%d"
	.size	.L.str.53, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	" ql_uncompressed_size:%lu"
	.size	.L.str.54, 26

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Value at:%p refcount:%d encoding:%s serializedlength:%zu lru:%d lru_seconds_idle:%llu%s"
	.size	.L.str.55, 88

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"sdslen"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Not an sds encoded string."
	.size	.L.str.57, 27

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"key_sds_len:%lld, key_sds_avail:%lld, key_zmalloc: %lld, val_sds_len:%lld, val_sds_avail:%lld, val_zmalloc: %lld"
	.size	.L.str.58, 113

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ziplist"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Ziplist structure printed on stdout"
	.size	.L.str.60, 36

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"populate"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%s:%lu"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"key"
	.size	.L.str.63, 4

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"value:%lu"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"digest"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%02x"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"digest-value"
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"sleep"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"set-active-expire"
	.size	.L.str.69, 18

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"lua-always-replicate-commands"
	.size	.L.str.70, 30

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"error"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"-"
	.size	.L.str.72, 2

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"\n\r"
	.size	.L.str.73, 3

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"  "
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"\r\n"
	.size	.L.str.75, 3

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"structsize"
	.size	.L.str.76, 11

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"bits:%d "
	.size	.L.str.77, 9

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"robj:%d "
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"dictentry:%d "
	.size	.L.str.79, 14

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"sdshdr5:%d "
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"sdshdr8:%d "
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"sdshdr16:%d "
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"sdshdr32:%d "
	.size	.L.str.83, 13

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"sdshdr64:%d "
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"htstats"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Out of range database"
	.size	.L.str.86, 22

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"[Dictionary HT]\n"
	.size	.L.str.87, 17

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"[Expires HT]\n"
	.size	.L.str.88, 14

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"htstats-key"
	.size	.L.str.89, 12

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"The value stored at the specified key is not represented using an hash table"
	.size	.L.str.90, 77

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"change-repl-id"
	.size	.L.str.91, 15

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Changing replication IDs after receiving DEBUG change-repl-id"
	.size	.L.str.92, 62

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"stringmatch-test"
	.size	.L.str.93, 17

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Apparently Redis did not crash: test passed"
	.size	.L.str.94, 44

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"=== ASSERTION FAILED ==="
	.size	.L.str.95, 25

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"==> %s:%d '%s' is not true"
	.size	.L.str.96, 27

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"=== ASSERTION FAILED CLIENT CONTEXT ==="
	.size	.L.str.97, 40

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"client->flags = %d"
	.size	.L.str.98, 19

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"client->fd = %d"
	.size	.L.str.99, 16

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"client->argc = %d"
	.size	.L.str.100, 18

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Object type: %u, encoding: %u"
	.size	.L.str.101, 30

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"client->argv[%d] = \"%s\" (refcount: %d)"
	.size	.L.str.102, 39

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Object type: %d"
	.size	.L.str.103, 16

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Object encoding: %d"
	.size	.L.str.104, 20

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Object refcount: %d"
	.size	.L.str.105, 20

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Object raw string len: %zu"
	.size	.L.str.106, 27

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Object raw string content: %s"
	.size	.L.str.107, 30

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"List length: %d"
	.size	.L.str.108, 16

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Set size: %d"
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Hash size: %d"
	.size	.L.str.110, 14

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Sorted set size: %d"
	.size	.L.str.111, 20

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Skiplist level: %d"
	.size	.L.str.112, 19

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"=== ASSERTION FAILED OBJECT CONTEXT ==="
	.size	.L.str.113, 40

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"------------------------------------------------"
	.size	.L.str.114, 49

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"!!! Software Failure. Press left mouse button to continue"
	.size	.L.str.115, 58

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Guru Meditation: %s #%s:%d"
	.size	.L.str.116, 27

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"\n\n=== REDIS BUG REPORT START: Cut & paste starting from here ===\n"
	.size	.L.str.117, 66

	.type	.LserverLogHexDump.charset,@object # @serverLogHexDump.charset
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.LserverLogHexDump.charset:
	.asciz	"0123456789abcdef"
	.size	.LserverLogHexDump.charset, 17

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"%s (hexdump of %zu bytes):"
	.size	.L.str.118, 27

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"\n"
	.size	.L.str.119, 2

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"\n--- WATCHDOG TIMER EXPIRED ---"
	.size	.L.str.120, 32

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Sorry: no support for backtrace()."
	.size	.L.str.121, 35

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"--------\n"
	.size	.L.str.122, 10

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
