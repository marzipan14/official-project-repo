	.text
	.file	"ecvtbuf.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fcvtbuf
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.zero	16,48
	.text
	.globl	fcvtbuf
	.p2align	4, 0x90
	.type	fcvtbuf,@function
fcvtbuf:                                # @fcvtbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movl	%edi, %r12d
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__getreent
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %r13
	testq	%r14, %r14
	jne	.LBB0_6
# %bb.1:
	leal	35(%r12), %eax
	movq	136(%r13), %r14
	cmpl	%eax, 128(%r13)
	jg	.LBB0_5
# %bb.2:
	leal	36(%r12), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	movq	%rax, %r14
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, 128(%r13)
	movq	%r14, 136(%r13)
.LBB0_5:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_6:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	ucomisd	.LCPI0_1(%rip), %xmm0
	seta	%cl
	andb	%al, %cl
	movzbl	%cl, %esi
	xorl	$3, %esi
	leaq	-64(%rbp), %r9
	movq	%r13, %rdi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	_dtoa_r
	xorl	%edx, %edx
	subl	(%r15), %edx
	cmpq	-64(%rbp), %rax
	jae	.LBB0_7
# %bb.19:
	movq	%r14, %rcx
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ebx
	addq	$1, %rax
	movb	%bl, (%rcx)
	addq	$1, %rcx
	addl	$1, %edx
	cmpq	-64(%rbp), %rax
	jb	.LBB0_20
# %bb.8:
	cmpl	%r12d, %edx
	jl	.LBB0_9
	jmp	.LBB0_17
.LBB0_7:
	movq	%r14, %rcx
	cmpl	%r12d, %edx
	jge	.LBB0_17
.LBB0_9:
	movl	%edx, %edi
	notl	%edi
	addl	%r12d, %edi
	leaq	1(%rdi), %r8
	cmpq	$31, %r8
	ja	.LBB0_13
# %bb.10:
	movq	%rcx, %rsi
	jmp	.LBB0_11
.LBB0_13:
	leal	1(%rdi), %r9d
	andl	$31, %r9d
	movq	%r8, %rsi
	subq	%r9, %rsi
	addl	%esi, %edx
	addq	%rcx, %rsi
	subq	%r9, %rdi
	addq	$1, %rdi
	xorl	%eax, %eax
	movapd	.LCPI0_2(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, (%rcx,%rax)
	movupd	%xmm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_14
# %bb.15:
	testl	%r9d, %r9d
	je	.LBB0_16
.LBB0_11:
	subl	%edx, %r12d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rsi,%rax)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jne	.LBB0_12
.LBB0_16:
	addq	%r8, %rcx
.LBB0_17:
	movb	$0, (%rcx)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_3:
	xorl	%r14d, %r14d
	jmp	.LBB0_18
.Lfunc_end0:
	.size	fcvtbuf, .Lfunc_end0-fcvtbuf
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function ecvtbuf
.LCPI1_0:
	.zero	16,48
	.text
	.globl	ecvtbuf
	.p2align	4, 0x90
	.type	ecvtbuf,@function
ecvtbuf:                                # @ecvtbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movl	%edi, %r14d
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__getreent
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %r13
	testq	%rbx, %rbx
	jne	.LBB1_6
# %bb.1:
	movq	136(%r13), %rbx
	cmpl	%r14d, 128(%r13)
	jg	.LBB1_5
# %bb.2:
	leal	1(%r14), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB1_3
# %bb.4:
	movq	%rax, %rbx
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, 128(%r13)
	movq	%rbx, 136(%r13)
.LBB1_5:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB1_6:
	leaq	-64(%rbp), %r9
	movq	%r13, %rdi
	movl	$2, %esi
	movl	%r14d, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_dtoa_r
	xorl	%edx, %edx
	movq	%rbx, %rcx
	cmpq	-64(%rbp), %rax
	jae	.LBB1_10
# %bb.7:                                # %.preheader
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%rbx,%rdx)
	leaq	(%rax,%rdx), %rcx
	addq	$1, %rcx
	addq	$1, %rdx
	cmpq	-64(%rbp), %rcx
	jb	.LBB1_8
# %bb.9:                                # %.loopexit1
	movq	%rdx, %rcx
	addq	%rbx, %rcx
.LBB1_10:
	cmpl	%r14d, %edx
	jge	.LBB1_19
# %bb.11:
	movl	%edx, %edi
	notl	%edi
	addl	%r14d, %edi
	leaq	1(%rdi), %r8
	cmpq	$31, %r8
	ja	.LBB1_15
# %bb.12:
	movq	%rcx, %rsi
	jmp	.LBB1_13
.LBB1_15:
	leal	1(%rdi), %r9d
	andl	$31, %r9d
	movq	%r8, %rsi
	subq	%r9, %rsi
	addl	%esi, %edx
	addq	%rcx, %rsi
	subq	%r9, %rdi
	addq	$1, %rdi
	xorl	%eax, %eax
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	.p2align	4, 0x90
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx,%rax)
	movups	%xmm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdi
	jne	.LBB1_16
# %bb.17:
	testl	%r9d, %r9d
	je	.LBB1_18
.LBB1_13:
	subl	%edx, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rsi,%rax)
	addq	$1, %rax
	cmpl	%eax, %r14d
	jne	.LBB1_14
.LBB1_18:
	addq	%r8, %rcx
.LBB1_19:
	movb	$0, (%rcx)
.LBB1_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_3:
	xorl	%ebx, %ebx
	jmp	.LBB1_20
.Lfunc_end1:
	.size	ecvtbuf, .Lfunc_end1-ecvtbuf
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _gcvt
.LCPI2_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI2_3:
	.zero	16,48
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_1:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_gcvt
	.p2align	4, 0x90
	.type	_gcvt,@function
_gcvt:                                  # @_gcvt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r14
	movapd	.LCPI2_0(%rip), %xmm1   # xmm1 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	movapd	%xmm0, %xmm3
	cmpltsd	%xmm2, %xmm3
	andpd	%xmm3, %xmm1
	andnpd	%xmm0, %xmm3
	orpd	%xmm1, %xmm3
	ucomisd	%xmm2, %xmm3
	jne	.LBB2_2
	jp	.LBB2_2
# %bb.1:
	movw	$48, (%r14)
	jmp	.LBB2_7
.LBB2_2:
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r12
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jae	.LBB2_6
# %bb.3:
	movl	%ebx, %edi
	movapd	%xmm3, -64(%rbp)        # 16-byte Spill
	callq	_mprec_log10
	movapd	-64(%rbp), %xmm3        # 16-byte Reload
	ucomisd	%xmm0, %xmm3
	jae	.LBB2_6
# %bb.4:
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%esi, %esi
	ucomisd	%xmm3, %xmm0
	seta	%sil
	orl	$2, %esi
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-72(%rbp), %r9
	movq	%r12, %rdi
	movapd	%xmm3, %xmm0
	movl	%ebx, %edx
	callq	_dtoa_r
	movl	-44(%rbp), %esi
	cmpl	$9999, %esi             # imm = 0x270F
	jne	.LBB2_8
# %bb.5:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB2_7
.LBB2_6:
	addl	$-1, %ebx
	movsbl	%r13b, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movapd	%xmm3, %xmm0
	movl	%ebx, %edx
	movl	%r15d, %r8d
	callq	print_e
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_8:
	movb	(%rax), %dl
	movq	%r14, %rcx
	testb	%dl, %dl
	je	.LBB2_12
# %bb.9:
	testl	%esi, %esi
	jle	.LBB2_12
	.p2align	4, 0x90
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rcx)
	addq	$1, %rcx
	movl	-44(%rbp), %edi
	leal	-1(%rdi), %esi
	movl	%esi, -44(%rbp)
	addl	$-1, %ebx
	movzbl	1(%rax), %edx
	addq	$1, %rax
	testb	%dl, %dl
	je	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	cmpl	$1, %edi
	jg	.LBB2_10
.LBB2_12:
	testl	%ebx, %ebx
	jle	.LBB2_16
# %bb.13:
	testl	%esi, %esi
	jle	.LBB2_16
	.p2align	4, 0x90
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	movb	$48, (%rcx)
	addq	$1, %rcx
	movl	-44(%rbp), %edx
	leal	-1(%rdx), %edi
	movl	%edi, -44(%rbp)
	leal	-1(%rsi), %ebx
	cmpl	$2, %esi
	jl	.LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	$1, %edx
	jg	.LBB2_14
.LBB2_16:
	testl	%r15d, %r15d
	jne	.LBB2_18
# %bb.17:
	cmpb	$0, (%rax)
	je	.LBB2_40
.LBB2_18:
	cmpq	%r14, %rcx
	jne	.LBB2_20
# %bb.19:
	leaq	1(%r14), %rcx
	movb	$48, (%r14)
.LBB2_20:
	movb	$46, (%rcx)
	movq	%rcx, %rdx
	addq	$1, %rdx
	testl	%ebx, %ebx
	jle	.LBB2_24
# %bb.21:
	cmpl	$0, -44(%rbp)
	jns	.LBB2_24
	.p2align	4, 0x90
.LBB2_22:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	movb	$48, (%rdx)
	movl	-44(%rbp), %ecx
	leal	1(%rcx), %edi
	movl	%edi, -44(%rbp)
	leal	-1(%rsi), %ebx
	addq	$1, %rdx
	cmpl	$2, %esi
	jl	.LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=1
	cmpl	$-1, %ecx
	jl	.LBB2_22
.LBB2_24:
	testl	%ebx, %ebx
	setg	%sil
	jle	.LBB2_29
# %bb.25:
	movb	(%rax), %cl
	testb	%cl, %cl
	je	.LBB2_29
# %bb.26:                               # %.preheader
	addq	$1, %rax
	.p2align	4, 0x90
.LBB2_27:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movb	%cl, (%rdx)
	addq	$1, %rdx
	cmpl	$1, %ebx
	leal	-1(%rdi), %ebx
	setg	%sil
	cmpl	$2, %edi
	jl	.LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=1
	movzbl	(%rax), %ecx
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB2_27
.LBB2_29:
	testl	%r15d, %r15d
	je	.LBB2_34
# %bb.30:
	testb	%sil, %sil
	je	.LBB2_34
# %bb.31:
	movl	%ebx, %ecx
	notl	%ecx
	cmpl	$-3, %ecx
	movl	$-2, %eax
	cmovgl	%ecx, %eax
	leal	(%rbx,%rax), %esi
	addl	$1, %esi
	leaq	1(%rsi), %rdi
	cmpq	$32, %rdi
	jae	.LBB2_35
# %bb.32:
	movq	%rdx, %rcx
	jmp	.LBB2_38
.LBB2_34:
	movq	%rdx, %rcx
	jmp	.LBB2_40
.LBB2_35:
	addl	%ebx, %eax
	addl	$2, %eax
	andl	$31, %eax
	subq	%rax, %rdi
	leaq	(%rdx,%rdi), %rcx
	subl	%edi, %ebx
	subq	%rax, %rsi
	addq	$1, %rsi
	xorl	%edi, %edi
	movapd	.LCPI2_3(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	.p2align	4, 0x90
.LBB2_36:                               # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, (%rdx,%rdi)
	movupd	%xmm0, 16(%rdx,%rdi)
	addq	$32, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB2_36
# %bb.37:
	testl	%eax, %eax
	je	.LBB2_40
.LBB2_38:
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB2_39:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rcx)
	addq	$1, %rcx
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB2_39
.LBB2_40:
	movb	$0, (%rcx)
	jmp	.LBB2_7
.Lfunc_end2:
	.size	_gcvt, .Lfunc_end2-_gcvt
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function print_e
.LCPI3_0:
	.zero	16,48
	.text
	.p2align	4, 0x90
	.type	print_e,@function
print_e:                                # @print_e
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%r8d, %r12d
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %rbx
	leal	1(%r15), %edx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	movl	$2, %esi
	callq	_dtoa_r
	cmpl	$9999, -36(%rbp)        # imm = 0x270F
	jne	.LBB3_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB3_30
.LBB3_2:
	movb	(%rax), %cl
	movb	%cl, (%rbx)
	orl	%r15d, %r12d
	je	.LBB3_3
# %bb.4:
	movb	$46, 1(%rbx)
	addq	$2, %rbx
	testl	%r15d, %r15d
	jg	.LBB3_6
	jmp	.LBB3_10
.LBB3_3:
	addq	$1, %rbx
	testl	%r15d, %r15d
	jle	.LBB3_10
.LBB3_6:
	movb	1(%rax), %cl
	testb	%cl, %cl
	je	.LBB3_10
# %bb.7:                                # %.preheader
	addq	$2, %rax
	.p2align	4, 0x90
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	movl	%r15d, %edx
	movb	%cl, (%rbx)
	addq	$1, %rbx
	leal	-1(%rdx), %r15d
	cmpl	$2, %edx
	jl	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rax), %ecx
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB3_8
.LBB3_10:
	cmpb	$71, %r14b
	je	.LBB3_22
# %bb.11:
	cmpb	$103, %r14b
	jne	.LBB3_13
# %bb.12:
	movb	$101, %r14b
	jmp	.LBB3_23
.LBB3_22:
	movb	$69, %r14b
	jmp	.LBB3_23
.LBB3_13:
	testl	%r15d, %r15d
	jle	.LBB3_23
# %bb.14:
	movl	%r15d, %ecx
	notl	%ecx
	cmpl	$-3, %ecx
	movl	$-2, %eax
	cmovgl	%ecx, %eax
	leal	(%r15,%rax), %edx
	addl	$1, %edx
	leaq	1(%rdx), %rsi
	cmpq	$31, %rsi
	ja	.LBB3_18
# %bb.15:
	movq	%rbx, %rcx
	jmp	.LBB3_16
.LBB3_18:
	addl	%r15d, %eax
	addl	$2, %eax
	andl	$31, %eax
	subq	%rax, %rsi
	leaq	(%rbx,%rsi), %rcx
	subl	%esi, %r15d
	subq	%rax, %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	.p2align	4, 0x90
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx,%rsi)
	movups	%xmm0, 16(%rbx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB3_19
# %bb.20:
	testl	%eax, %eax
	je	.LBB3_21
.LBB3_16:
	addl	$1, %r15d
	movq	%rcx, %rbx
	.p2align	4, 0x90
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rbx)
	addq	$1, %rbx
	addl	$-1, %r15d
	cmpl	$1, %r15d
	jg	.LBB3_17
	jmp	.LBB3_23
.LBB3_21:
	movq	%rcx, %rbx
.LBB3_23:
	movb	%r14b, (%rbx)
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -36(%rbp)
	testl	%eax, %eax
	jle	.LBB3_24
# %bb.25:
	movb	$43, 1(%rbx)
	movl	-36(%rbp), %eax
	cmpl	$100, %eax
	jl	.LBB3_27
.LBB3_28:
	movl	%eax, %eax
	imulq	$1374389535, %rax, %rcx # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$-100, %ecx, %eax
                                        # kill: def $cl killed $cl killed $rcx
	addb	$48, %cl
	movb	%cl, 2(%rbx)
	addq	$3, %rbx
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_29
.LBB3_24:
	movb	$45, 1(%rbx)
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$100, %eax
	jge	.LBB3_28
.LBB3_27:
	addq	$2, %rbx
.LBB3_29:
	cltq
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	leal	48(%rax), %ecx
	movb	%cl, (%rbx)
	movl	-36(%rbp), %ecx
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	addb	$48, %cl
	movb	%cl, 1(%rbx)
	movb	$0, 2(%rbx)
.LBB3_30:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_e, .Lfunc_end3-print_e
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _dcvt
.LCPI4_0:
	.zero	16,48
	.text
	.globl	_dcvt
	.p2align	4, 0x90
	.type	_dcvt,@function
_dcvt:                                  # @_dcvt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
                                        # kill: def $r8d killed $r8d def $r8
	movq	%rsi, %r14
	leal	-69(%r8), %eax
	cmpl	$34, %eax
	ja	.LBB4_40
# %bb.1:
	movl	%r9d, %r15d
	movl	%edx, %r12d
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	btq	%rax, %rcx
	jb	.LBB4_5
# %bb.2:
	movabsq	$8589934594, %rcx       # imm = 0x200000002
	btq	%rax, %rcx
	jb	.LBB4_6
# %bb.3:
	movabsq	$17179869188, %rcx      # imm = 0x400000004
	btq	%rax, %rcx
	jae	.LBB4_40
# %bb.4:
	testl	%r12d, %r12d
	movl	$1, %esi
	cmovnel	%r12d, %esi
	movsbl	%r8b, %ecx
	movq	%r14, %rdx
	movl	%r15d, %r8d
	callq	_gcvt
	jmp	.LBB4_40
.LBB4_5:
	movsbl	%r8b, %ecx
	movq	%r14, %rsi
	movl	%r12d, %edx
	movl	%r15d, %r8d
	callq	print_e
	jmp	.LBB4_40
.LBB4_6:
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	movl	$3, %esi
	movl	%r12d, %edx
	callq	_dtoa_r
	movl	-36(%rbp), %esi
	cmpl	$9999, %esi             # imm = 0x270F
	jne	.LBB4_8
# %bb.7:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB4_39
.LBB4_8:
	testl	%esi, %esi
	jle	.LBB4_13
# %bb.9:
	movb	(%rax), %bl
	testb	%bl, %bl
	je	.LBB4_13
# %bb.10:
	movq	%r14, %rdx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
	leaq	1(%rdi), %rcx
	movb	%bl, (%rdx)
	addq	$1, %rdx
	movl	-36(%rbp), %ebx
	leal	-1(%rbx), %esi
	movl	%esi, -36(%rbp)
	cmpl	$2, %ebx
	jl	.LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	movzbl	1(%rdi), %ebx
	movq	%rcx, %rdi
	testb	%bl, %bl
	jne	.LBB4_11
	jmp	.LBB4_14
.LBB4_13:
	movq	%rax, %rcx
	movq	%r14, %rdx
.LBB4_14:
	testl	%esi, %esi
	jle	.LBB4_16
	.p2align	4, 0x90
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rdx)
	addq	$1, %rdx
	movl	-36(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%edi, -36(%rbp)
	cmpl	$1, %esi
	jg	.LBB4_15
.LBB4_16:
	orl	%r12d, %r15d
	jne	.LBB4_18
# %bb.17:
	cmpb	$0, (%rcx)
	je	.LBB4_38
.LBB4_18:
	cmpq	%rax, %rcx
	jne	.LBB4_20
# %bb.19:
	movb	$48, (%rdx)
	addq	$1, %rdx
.LBB4_20:
	movb	$46, (%rdx)
	movq	%rdx, %rax
	addq	$1, %rax
	testl	%r12d, %r12d
	jle	.LBB4_24
# %bb.21:
	cmpl	$0, -36(%rbp)
	jns	.LBB4_24
	.p2align	4, 0x90
.LBB4_22:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %esi
	movb	$48, (%rax)
	movl	-36(%rbp), %edx
	leal	1(%rdx), %edi
	movl	%edi, -36(%rbp)
	leal	-1(%rsi), %r12d
	addq	$1, %rax
	cmpl	$2, %esi
	jl	.LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=1
	cmpl	$-1, %edx
	jl	.LBB4_22
.LBB4_24:
	testl	%r12d, %r12d
	jle	.LBB4_29
# %bb.25:
	movb	(%rcx), %dl
	testb	%dl, %dl
	je	.LBB4_29
# %bb.26:                               # %.preheader
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB4_27:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %esi
	movb	%dl, (%rax)
	addq	$1, %rax
	leal	-1(%rsi), %r12d
	cmpl	$2, %esi
	jl	.LBB4_29
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
	movzbl	(%rcx), %edx
	addq	$1, %rcx
	testb	%dl, %dl
	jne	.LBB4_27
.LBB4_29:
	testl	%r12d, %r12d
	jle	.LBB4_32
# %bb.30:
	movl	%r12d, %edx
	notl	%edx
	cmpl	$-3, %edx
	movl	$-2, %ecx
	cmovgl	%edx, %ecx
	leal	(%r12,%rcx), %esi
	addl	$1, %esi
	leaq	1(%rsi), %rdi
	cmpq	$31, %rdi
	ja	.LBB4_33
# %bb.31:
	movq	%rax, %rdx
	jmp	.LBB4_36
.LBB4_32:
	movq	%rax, %rdx
	jmp	.LBB4_38
.LBB4_33:
	addl	%r12d, %ecx
	addl	$2, %ecx
	andl	$31, %ecx
	subq	%rcx, %rdi
	leaq	(%rax,%rdi), %rdx
	subl	%edi, %r12d
	subq	%rcx, %rsi
	addq	$1, %rsi
	xorl	%edi, %edi
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	.p2align	4, 0x90
.LBB4_34:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax,%rdi)
	movups	%xmm0, 16(%rax,%rdi)
	addq	$32, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB4_34
# %bb.35:
	testl	%ecx, %ecx
	je	.LBB4_38
.LBB4_36:
	addl	$1, %r12d
	.p2align	4, 0x90
.LBB4_37:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rdx)
	addq	$1, %rdx
	addl	$-1, %r12d
	cmpl	$1, %r12d
	jg	.LBB4_37
.LBB4_38:
	movb	$0, (%rdx)
.LBB4_39:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_40:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_dcvt, .Lfunc_end4-_dcvt
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
