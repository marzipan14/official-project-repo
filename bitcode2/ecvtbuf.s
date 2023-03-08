	.text
	.file	"ecvtbuf.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fcvtbuf
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4616189618054758400    # double -1
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
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__getreent
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_6
# %bb.1:
	leal	35(%r12), %eax
	cmpl	%eax, 128(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	136(%r13), %r14
	jg	.LBB0_5
# %bb.2:
	leal	36(%r12), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	movq	%rax, %r14
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 128(%r13)
	movq	%r14, 136(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_6:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	ucomisd	.LCPI0_1(%rip), %xmm0
	seta	%cl
	andb	%al, %cl
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%cl, %esi
	xorl	$3, %esi
	leaq	-64(%rbp), %r9
	movq	%r13, %rdi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	_dtoa_r
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	subl	(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rcx
	jae	.LBB0_7
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ebx
	addq	$1, %rax
	movb	%bl, (%rcx)
	addq	$1, %rcx
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rax
	jb	.LBB0_19
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %edx
	jge	.LBB0_17
# %bb.8:
	movl	%edx, %r8d
	notl	%r8d
	addl	%r12d, %r8d
	movl	%r12d, %edi
	subl	%edx, %edi
	andl	$3, %edi
	je	.LBB0_9
# %bb.10:                               # %.preheader1
	negl	%edi
	xorl	%esi, %esi
	movq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rsi
	cmpl	%esi, %edi
	jne	.LBB0_11
# %bb.12:                               # %.loopexit2
	subl	%esi, %edx
	jmp	.LBB0_13
.LBB0_9:
	movq	%rcx, %rax
.LBB0_13:
	leaq	1(%r8), %rdi
	cmpl	$3, %r8d
	jb	.LBB0_16
# %bb.14:                               # %.preheader
	subl	%edx, %r12d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, 2(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, 3(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpl	%edx, %r12d
	jne	.LBB0_15
.LBB0_16:
	addq	%rdi, %rcx
.LBB0_17:
	movb	$0, (%rcx)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
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
	.globl	ecvtbuf                 # -- Begin function ecvtbuf
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
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__getreent
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB1_6
# %bb.1:
	cmpl	%r14d, 128(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	136(%r13), %rbx
	jg	.LBB1_5
# %bb.2:
	leal	1(%r14), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.4:
	movq	%rax, %rbx
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 128(%r13)
	movq	%rbx, 136(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB1_6:
	leaq	-64(%rbp), %r9
	movq	%r13, %rdi
	movl	$2, %esi
	movl	%r14d, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_dtoa_r
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movq	%rbx, %r8
	cmpq	-64(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_10
# %bb.7:                                # %.preheader3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rdx), %rcx
	addq	$1, %rcx
	addq	$1, %rdx
	cmpq	-64(%rbp), %rcx
	jb	.LBB1_8
# %bb.9:                                # %.loopexit4
	movq	%rdx, %r8
	addq	%rbx, %r8
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %edx
	jge	.LBB1_20
# %bb.11:
	movl	%edx, %esi
	notl	%esi
	addl	%r14d, %esi
	movl	%r14d, %edi
	subl	%edx, %edi
	andl	$3, %edi
	je	.LBB1_12
# %bb.13:                               # %.preheader1
	negl	%edi
	xorl	%ecx, %ecx
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpl	%ecx, %edi
	jne	.LBB1_14
# %bb.15:                               # %.loopexit2
	subl	%ecx, %edx
	jmp	.LBB1_16
.LBB1_12:
	movq	%r8, %rax
.LBB1_16:
	leaq	1(%rsi), %rdi
	cmpl	$3, %esi
	jb	.LBB1_19
# %bb.17:                               # %.preheader
	subl	%edx, %r14d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, 2(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, 3(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpl	%edx, %r14d
	jne	.LBB1_18
.LBB1_19:
	addq	%rdi, %r8
.LBB1_20:
	movb	$0, (%r8)
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB1_21
.Lfunc_end1:
	.size	ecvtbuf, .Lfunc_end1-ecvtbuf
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _gcvt
.LCPI2_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
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
	movl	%r8d, %r14d
	movl	%ecx, %r13d
	movq	%rdx, %r15
	movl	%esi, %ebx
	movapd	%xmm0, %xmm1
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_2
# %bb.1:
	xorpd	.LCPI2_0(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_4
	jp	.LBB2_4
# %bb.3:
	movw	$48, (%r15)
	jmp	.LBB2_7
.LBB2_4:
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_6
# %bb.5:
	movl	%ebx, %edi
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	_mprec_log10
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_6
# %bb.8:
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%esi, %esi
	ucomisd	%xmm1, %xmm0
	seta	%sil
	movl	$42, __A_VARIABLE(%rip)
	orl	$2, %esi
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-72(%rbp), %r9
	movq	%r12, %rdi
	movapd	%xmm1, %xmm0
	movl	%ebx, %edx
	callq	_dtoa_r
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9999, %esi             # imm = 0x270F
	jne	.LBB2_9
# %bb.35:
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB2_7
.LBB2_6:
	addl	$-1, %ebx
	movsbl	%r13b, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movapd	%xmm1, %xmm0
	movl	%ebx, %edx
	movl	%r14d, %r8d
	callq	print_e
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_9:
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rcx
	testb	%dl, %dl
	je	.LBB2_11
# %bb.10:
	testl	%esi, %esi
	jle	.LBB2_11
	.p2align	4, 0x90
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rcx)
	addq	$1, %rcx
	movl	-44(%rbp), %edi
	leal	-1(%rdi), %esi
	movl	%esi, -44(%rbp)
	addl	$-1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax), %edx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB2_11
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=1
	cmpl	$1, %edi
	jg	.LBB2_31
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB2_15
# %bb.12:
	testl	%esi, %esi
	jle	.LBB2_15
	.p2align	4, 0x90
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	movb	$48, (%rcx)
	addq	$1, %rcx
	movl	-44(%rbp), %edx
	leal	-1(%rdx), %edi
	movl	%edi, -44(%rbp)
	leal	-1(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	cmpl	$1, %edx
	jg	.LBB2_13
.LBB2_15:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB2_17
# %bb.16:
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_30
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jne	.LBB2_19
# %bb.18:
	leaq	1(%r15), %rcx
	movb	$48, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_19:
	movb	$46, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	-44(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB2_21
# %bb.20:
	testl	%edx, %edx
	jns	.LBB2_21
	.p2align	4, 0x90
.LBB2_33:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	movb	$48, (%rcx)
	movl	-44(%rbp), %edx
	leal	1(%rdx), %edi
	movl	%edi, -44(%rbp)
	leal	-1(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB2_21
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=1
	cmpl	$-1, %edx
	jl	.LBB2_33
.LBB2_21:
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	setg	%sil
	jle	.LBB2_26
# %bb.22:
	testb	%dl, %dl
	je	.LBB2_26
# %bb.23:                               # %.preheader1
	addq	$1, %rax
	.p2align	4, 0x90
.LBB2_24:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movb	%dl, (%rcx)
	addq	$1, %rcx
	cmpl	$1, %ebx
	leal	-1(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %edx
	setg	%sil
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	jl	.LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=1
	addq	$1, %rax
	testb	%dl, %dl
	jne	.LBB2_24
.LBB2_26:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB2_30
# %bb.27:
	testb	%sil, %sil
	je	.LBB2_30
# %bb.28:                               # %.preheader
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB2_29:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB2_29
.LBB2_30:
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_7
.Lfunc_end2:
	.size	_gcvt, .Lfunc_end2-_gcvt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function print_e
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
	movl	%edx, %ebx
	movq	%rsi, %r15
	leal	1(%rbx), %edx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	movl	$2, %esi
	callq	_dtoa_r
	cmpl	$9999, -36(%rbp)        # imm = 0x270F
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_2
# %bb.1:
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB3_23
.LBB3_2:
	movb	(%rax), %cl
	movb	%cl, (%r15)
	orl	%ebx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_3
# %bb.4:
	movb	$46, 1(%r15)
	addq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_5
.LBB3_3:
	addq	$1, %r15
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB3_10
# %bb.6:
	testb	%cl, %cl
	je	.LBB3_10
# %bb.7:                                # %.preheader1
	addq	$2, %rax
	.p2align	4, 0x90
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edx
	movb	%cl, (%r15)
	addq	$1, %r15
	leal	-1(%rdx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jl	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB3_8
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$103, %r14b
	jne	.LBB3_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movb	$101, %r14b
	jmp	.LBB3_16
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$71, %r14b
	jne	.LBB3_13
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	movb	$69, %r14b
	jmp	.LBB3_16
.LBB3_13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB3_16
# %bb.14:                               # %.preheader
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%r15)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB3_15
.LBB3_16:
	movb	%r14b, (%r15)
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB3_17
# %bb.18:
	movb	$43, 1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	-36(%rbp), %eax
	jmp	.LBB3_19
.LBB3_17:
	movb	$45, 1(%r15)
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %eax
	jl	.LBB3_20
# %bb.21:
	movl	%eax, %eax
	imulq	$1374389535, %rax, %rcx # imm = 0x51EB851F
	shrq	$37, %rcx
	imull	$-100, %ecx, %eax
                                        # kill: def $cl killed $cl killed $rcx
	addb	$48, %cl
	movb	%cl, 2(%r15)
	addq	$3, %r15
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_22
.LBB3_20:
	addq	$2, %r15
.LBB3_22:
	cltq
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	leal	48(%rax), %ecx
	movb	%cl, (%r15)
	movl	-36(%rbp), %ecx
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	addb	$48, %cl
	movb	%cl, 1(%r15)
	movb	$0, 2(%r15)
.LBB3_23:
	movl	$42, __A_VARIABLE(%rip)
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
	.globl	_dcvt                   # -- Begin function _dcvt
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
	movl	$42, __A_VARIABLE(%rip)
	leal	-69(%r8), %eax
	cmpl	$34, %eax
	ja	.LBB4_37
# %bb.1:
	movl	%r9d, %r15d
	movl	%edx, %r12d
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	btq	%rax, %rcx
	jb	.LBB4_35
# %bb.2:
	movabsq	$8589934594, %rcx       # imm = 0x200000002
	btq	%rax, %rcx
	jb	.LBB4_7
# %bb.3:
	movabsq	$17179869188, %rcx      # imm = 0x400000004
	btq	%rax, %rcx
	jae	.LBB4_37
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB4_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB4_6:
	movsbl	%r8b, %ecx
	movl	%r12d, %esi
	movq	%r14, %rdx
	movl	%r15d, %r8d
	callq	_gcvt
	jmp	.LBB4_36
.LBB4_35:
	movsbl	%r8b, %ecx
	movq	%r14, %rsi
	movl	%r12d, %edx
	movl	%r15d, %r8d
	callq	print_e
	jmp	.LBB4_36
.LBB4_7:
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	movl	$3, %esi
	movl	%r12d, %edx
	callq	_dtoa_r
	movl	-36(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9999, %esi             # imm = 0x270F
	jne	.LBB4_8
# %bb.32:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB4_27
.LBB4_8:
	movb	(%rax), %bl
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB4_9
# %bb.28:
	testb	%bl, %bl
	je	.LBB4_9
# %bb.29:
	movq	%r14, %rcx
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB4_30:                               # =>This Inner Loop Header: Depth=1
	movb	%bl, (%rcx)
	addq	$1, %rcx
	movl	-36(%rbp), %edi
	leal	-1(%rdi), %esi
	movl	%esi, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdx), %ebx
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	jl	.LBB4_10
# %bb.31:                               #   in Loop: Header=BB4_30 Depth=1
	testb	%bl, %bl
	jne	.LBB4_30
	jmp	.LBB4_10
.LBB4_9:
	movq	%rax, %rdx
	movq	%r14, %rcx
.LBB4_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB4_12
	.p2align	4, 0x90
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rcx)
	addq	$1, %rcx
	movl	-36(%rbp), %esi
	leal	-1(%rsi), %edi
	movl	%edi, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	jg	.LBB4_11
.LBB4_12:
	orl	%r12d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_14
# %bb.13:
	cmpb	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_26
.LBB4_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jne	.LBB4_16
# %bb.15:
	movb	$48, (%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB4_16:
	movb	$46, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	-36(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB4_18
# %bb.17:
	testl	%eax, %eax
	jns	.LBB4_18
	.p2align	4, 0x90
.LBB4_33:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %esi
	movb	$48, (%rcx)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -36(%rbp)
	leal	-1(%rsi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB4_18
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=1
	cmpl	$-1, %eax
	jl	.LBB4_33
.LBB4_18:
	movb	(%rdx), %al
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB4_23
# %bb.19:
	testb	%al, %al
	je	.LBB4_23
# %bb.20:                               # %.preheader1
	addq	$1, %rdx
	.p2align	4, 0x90
.LBB4_21:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %esi
	movb	%al, (%rcx)
	addq	$1, %rcx
	leal	-1(%rsi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB4_23
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=1
	addq	$1, %rdx
	testb	%al, %al
	jne	.LBB4_21
.LBB4_23:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB4_26
# %bb.24:                               # %.preheader
	addl	$1, %r12d
	.p2align	4, 0x90
.LBB4_25:                               # =>This Inner Loop Header: Depth=1
	movb	$48, (%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	cmpl	$1, %r12d
	jg	.LBB4_25
.LBB4_26:
	movb	$0, (%rcx)
.LBB4_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_37:
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
