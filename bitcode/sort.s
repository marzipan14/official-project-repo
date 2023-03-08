	.text
	.file	"sort.c"
	.globl	createSortOperation     # -- Begin function createSortOperation
	.p2align	4, 0x90
	.type	createSortOperation,@function
createSortOperation:                    # @createSortOperation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movl	%edi, %ebx
	movl	$16, %edi
	callq	zmalloc
	movl	%ebx, (%rax)
	movq	%r14, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	createSortOperation, .Lfunc_end0-createSortOperation
                                        # -- End function
	.globl	lookupKeyByPattern      # -- Begin function lookupKeyByPattern
	.p2align	4, 0x90
	.type	lookupKeyByPattern,@function
lookupKeyByPattern:                     # @lookupKeyByPattern
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	8(%rsi), %r13
	cmpb	$35, (%r13)
	jne	.LBB1_3
# %bb.1:
	cmpb	$0, 1(%r13)
	je	.LBB1_2
.LBB1_3:
	movq	%rbx, %rdi
	callq	getDecodedObject
	movq	%rax, %rbx
	movq	8(%rax), %r12
	movq	%r13, %rdi
	movl	$42, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_4
# %bb.5:
	movq	%rax, %r14
	leaq	1(%rax), %rdi
	movl	$.L.str, %esi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	strstr
	testq	%rax, %rax
	movq	%r15, -96(%rbp)         # 8-byte Spill
	je	.LBB1_6
# %bb.7:
	cmpb	$0, 2(%rax)
	je	.LBB1_6
# %bb.8:
	movq	%rax, %rdi
	addq	$2, %rdi
	movzbl	-1(%r13), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB1_9
# %bb.10:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_11:
	shrq	$3, %rcx
	jmp	.LBB1_16
.LBB1_6:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	jmp	.LBB1_17
.LBB1_4:
	movq	%rbx, %rdi
	jmp	.LBB1_41
.LBB1_2:
	movq	%rbx, %rdi
	callq	incrRefCount
	jmp	.LBB1_43
.LBB1_9:
	xorl	%ecx, %ecx
	jmp	.LBB1_16
.LBB1_12:
	movzbl	-3(%r13), %ecx
	jmp	.LBB1_16
.LBB1_13:
	movzwl	-5(%r13), %ecx
	jmp	.LBB1_16
.LBB1_14:
	movl	-9(%r13), %ecx
	jmp	.LBB1_16
.LBB1_15:
	movq	-17(%r13), %rcx
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edx
	subl	%eax, %edx
	leal	(%rdx,%rcx), %r15d
	addl	$-2, %r15d
	movslq	%r15d, %rsi
	callq	createStringObject
	movq	%r15, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB1_17:
	subq	%r13, %r14
	movzbl	-1(%r12), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB1_18
# %bb.19:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_20:
	shrq	$3, %rsi
	jmp	.LBB1_25
.LBB1_18:
	xorl	%esi, %esi
	jmp	.LBB1_25
.LBB1_21:
	movzbl	-3(%r12), %esi
	jmp	.LBB1_25
.LBB1_22:
	movzwl	-5(%r12), %esi
	jmp	.LBB1_25
.LBB1_23:
	movl	-9(%r12), %esi
	jmp	.LBB1_25
.LBB1_24:
	movq	-17(%r12), %rsi
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%r13), %r15d
	movl	%r15d, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	ja	.LBB1_26
# %bb.27:
	movl	%r15d, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_28:
	shrq	$3, %r15
	jmp	.LBB1_33
.LBB1_26:
	xorl	%r15d, %r15d
	jmp	.LBB1_33
.LBB1_29:
	movzbl	-3(%r13), %r15d
	jmp	.LBB1_33
.LBB1_30:
	movzwl	-5(%r13), %r15d
	jmp	.LBB1_33
.LBB1_31:
	movl	-9(%r13), %r15d
	jmp	.LBB1_33
.LBB1_32:
	movq	-17(%r13), %r15
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	shlq	$32, %rax
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	addq	%rax, %rcx
	shrq	$32, %rcx
	subl	%ecx, %r15d
	leal	2(%rdx), %eax
	testl	%edx, %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cmovel	%edx, %eax
	subl	%eax, %r15d
	leal	(%rsi,%r14), %eax
	addl	%r15d, %eax
	movq	%rsi, %r12
	movslq	%eax, %rsi
	xorl	%edi, %edi
	callq	createStringObject
	movq	%rax, %r13
	movq	8(%rax), %rbx
	movslq	%r14d, %r14
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	movslq	%r12d, %r14
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	movslq	%r15d, %rdx
	movq	%rbx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	movq	-48(%rbp), %r14         # 8-byte Reload
	je	.LBB1_39
# %bb.34:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	testq	%r14, %r14
	je	.LBB1_37
# %bb.35:
	cmpl	$4, %eax
	jne	.LBB1_39
# %bb.36:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	callq	hashTypeGetValueObject
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	decrRefCount
	movq	%r14, %rdi
	callq	decrRefCount
	jmp	.LBB1_43
.LBB1_37:
	testl	%eax, %eax
	je	.LBB1_38
.LBB1_39:
	movq	%r13, %rdi
	callq	decrRefCount
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB1_42
# %bb.40:
	movq	%r14, %rdi
.LBB1_41:
	callq	decrRefCount
.LBB1_42:
	xorl	%ebx, %ebx
.LBB1_43:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_38:
	movq	%rbx, %rdi
	callq	incrRefCount
	movq	%r13, %rdi
	callq	decrRefCount
	jmp	.LBB1_43
.Lfunc_end1:
	.size	lookupKeyByPattern, .Lfunc_end1-lookupKeyByPattern
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14
	.quad	.LBB1_15
.LJTI1_1:
	.quad	.LBB1_20
	.quad	.LBB1_21
	.quad	.LBB1_22
	.quad	.LBB1_23
	.quad	.LBB1_24
.LJTI1_2:
	.quad	.LBB1_28
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_31
	.quad	.LBB1_32
                                        # -- End function
	.text
	.globl	sortCompare             # -- Begin function sortCompare
	.p2align	4, 0x90
	.type	sortCompare,@function
sortCompare:                            # @sortCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, server+2788(%rip)
	je	.LBB2_6
# %bb.1:
	cmpl	$0, server+2792(%rip)
	je	.LBB2_9
# %bb.2:
	movq	8(%rdi), %rdi
	movq	8(%rsi), %rsi
	testq	%rdi, %rdi
	je	.LBB2_12
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB2_11
# %bb.4:
	cmpl	$0, server+2796(%rip)
	jne	.LBB2_5
# %bb.14:
	movq	8(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	strcoll
	jmp	.LBB2_15
.LBB2_6:
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	ja	.LBB2_15
# %bb.7:
	movl	$-1, %eax
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_15
# %bb.8:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	compareStringObjects
	jmp	.LBB2_15
.LBB2_9:
	cmpl	$0, server+2796(%rip)
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	je	.LBB2_13
.LBB2_5:
	callq	compareStringObjects
	jmp	.LBB2_15
.LBB2_11:
	xorl	%esi, %esi
.LBB2_12:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	setne	%al
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdi
	leal	-1(%rax,%rax), %eax
	cmovel	%ecx, %eax
	jmp	.LBB2_15
.LBB2_13:
	callq	collateStringObjects
.LBB2_15:
	movl	%eax, %ecx
	negl	%ecx
	cmpl	$0, server+2784(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sortCompare, .Lfunc_end2-sortCompare
                                        # -- End function
	.globl	sortCommand             # -- Begin function sortCommand
	.p2align	4, 0x90
	.type	sortCommand,@function
sortCommand:                            # @sortCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdi, %rax
	movq	$0, -168(%rbp)
	movq	$-1, -160(%rbp)
	movq	16(%rdi), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	72(%rax), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB3_3
# %bb.1:
	movq	%rax, %r15
	movl	(%rax), %eax
	andl	$15, %eax
	addl	$-1, %eax
	cmpl	$3, %eax
	jae	.LBB3_34
# %bb.2:
	callq	listCreate
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	$zfree, 24(%rax)
	movq	%r15, %rdi
	callq	incrRefCount
	jmp	.LBB3_4
.LBB3_3:
	callq	listCreate
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	$zfree, 24(%rax)
	callq	createQuicklistObject
	movq	%rax, %r15
.LBB3_4:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	64(%rax), %r14d
	cmpl	$3, %r14d
	jl	.LBB3_33
# %bb.5:                                # %.preheader11
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movl	$2, %r15d
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -128(%rbp)          # 4-byte Folded Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	72(%rbx), %r13
	movslq	%r15d, %r12
	movq	(%r13,%r12,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB3_14
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB3_15
# %bb.8:                                #   in Loop: Header=BB3_6 Depth=1
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB3_20
# %bb.9:                                #   in Loop: Header=BB3_6 Depth=1
	movl	%r15d, %eax
	notl	%eax
	addl	%eax, %r14d
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r14d
	jl	.LBB3_21
# %bb.10:                               #   in Loop: Header=BB3_6 Depth=1
	testl	%eax, %eax
	jne	.LBB3_21
# %bb.11:                               #   in Loop: Header=BB3_6 Depth=1
	movq	8(%r13,%r12,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-168(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB3_205
# %bb.12:                               #   in Loop: Header=BB3_6 Depth=1
	movq	72(%rbx), %rax
	movq	16(%rax,%r12,8), %rsi
	movq	%rbx, %rdi
	leaq	-160(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB3_205
# %bb.13:                               #   in Loop: Header=BB3_6 Depth=1
	addl	$2, %r15d
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	jmp	.LBB3_16
	.p2align	4, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$1, %eax
.LBB3_16:                               #   in Loop: Header=BB3_6 Depth=1
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_17:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB3_18:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB3_19:                               #   in Loop: Header=BB3_6 Depth=1
	addl	$1, %r15d
	movl	64(%rbx), %r14d
	cmpl	%r15d, %r14d
	jg	.LBB3_6
	jmp	.LBB3_35
.LBB3_20:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_17
.LBB3_21:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%r14d, %r14d
	jle	.LBB3_24
# %bb.22:                               #   in Loop: Header=BB3_6 Depth=1
	testl	%eax, %eax
	jne	.LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_6 Depth=1
	addl	$1, %r15d
	movq	8(%r13,%r12,8), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_17
.LBB3_24:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%r14d, %r14d
	jle	.LBB3_28
# %bb.25:                               #   in Loop: Header=BB3_6 Depth=1
	testl	%eax, %eax
	jne	.LBB3_28
# %bb.26:                               #   in Loop: Header=BB3_6 Depth=1
	addl	$1, %r15d
	movq	8(%r13,%r12,8), %r13
	movq	8(%r13), %rdi
	movl	$42, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB3_32
# %bb.27:                               #   in Loop: Header=BB3_6 Depth=1
	cmpl	$0, server+2924(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_19
	jmp	.LBB3_203
.LBB3_28:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%r14d, %r14d
	jle	.LBB3_186
# %bb.29:                               #   in Loop: Header=BB3_6 Depth=1
	testl	%eax, %eax
	jne	.LBB3_186
# %bb.30:                               #   in Loop: Header=BB3_6 Depth=1
	cmpl	$0, server+2924(%rip)
	jne	.LBB3_187
# %bb.31:                               #   in Loop: Header=BB3_6 Depth=1
	addl	$1, %r15d
	movq	8(%r13,%r12,8), %rbx
	movl	$16, %edi
	callq	zmalloc
	movl	$0, (%rax)
	movq	%rbx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	listAddNodeTail
	addl	$1, -100(%rbp)          # 4-byte Folded Spill
	jmp	.LBB3_17
.LBB3_32:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$1, -128(%rbp)          # 4-byte Folded Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB3_19
.LBB3_33:
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	(%r15), %eax
	jmp	.LBB3_43
.LBB3_34:
	movq	shared+112(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB3_184
.LBB3_35:
	movl	-128(%rbp), %esi        # 4-byte Reload
	testl	%esi, %esi
	je	.LBB3_40
# %bb.36:
	movq	-88(%rbp), %r15         # 8-byte Reload
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$2, %ecx
	movl	-60(%rbp), %edx         # 4-byte Reload
	jne	.LBB3_41
# %bb.37:
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	jne	.LBB3_42
# %bb.38:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testb	$1, 161(%rcx)
	jne	.LBB3_42
# %bb.39:
	movl	%edx, -60(%rbp)         # 4-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%esi, %r14d
	jmp	.LBB3_44
.LBB3_40:
	movq	-88(%rbp), %r15         # 8-byte Reload
	movl	(%r15), %eax
	jmp	.LBB3_43
.LBB3_41:
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%esi, %r14d
	jmp	.LBB3_44
.LBB3_42:
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
.LBB3_43:
	xorl	%r14d, %r14d
.LBB3_44:
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_46
# %bb.45:
	movq	%r15, %rdi
	movl	$7, %esi
	callq	zsetConvert
	movl	(%r15), %eax
.LBB3_46:
	andb	$15, %al
	cmpb	$3, %al
	je	.LBB3_52
# %bb.47:
	cmpb	$2, %al
	je	.LBB3_50
# %bb.48:
	cmpb	$1, %al
	jne	.LBB3_211
# %bb.49:
	movq	%r15, %rdi
	callq	listTypeLength
	jmp	.LBB3_51
.LBB3_50:
	movq	%r15, %rdi
	callq	setTypeSize
.LBB3_51:
	movq	%rax, %r12
	jmp	.LBB3_53
.LBB3_52:
	movq	8(%r15), %rax
	movq	(%rax), %rax
	movq	72(%rax), %r12
	addq	40(%rax), %r12
.LBB3_53:
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movq	-168(%rbp), %rcx
	xorl	%edi, %edi
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rdi
	movq	-160(%rbp), %rcx
	testq	%rcx, %rcx
	js	.LBB3_55
# %bb.54:
	addq	%rdi, %rcx
	addq	$-1, %rcx
	movq	%r12, %rsi
	shlq	$32, %rsi
	jmp	.LBB3_56
.LBB3_55:
	movq	%r12, %rsi
	shlq	$32, %rsi
	leaq	(%rsi,%rax), %rcx
	sarq	$32, %rcx
.LBB3_56:
	movq	%rsi, %rbx
	sarq	$32, %rbx
	addq	%rsi, %rax
	sarq	$32, %rax
	movabsq	$-8589934592, %rdx      # imm = 0xFFFFFFFE00000000
	addq	%rsi, %rdx
	sarq	$32, %rdx
	cmpq	%rbx, %rdi
	cmovlq	%rcx, %rdx
	cmovgeq	%rax, %rdi
	cmpq	%rbx, %rdx
	cmovgeq	%rax, %rdx
	movl	(%r15), %ecx
	andl	$15, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_58
# %bb.57:
	testl	%r14d, %r14d
	jne	.LBB3_60
	jmp	.LBB3_63
.LBB3_58:
	testl	%r14d, %r14d
	je	.LBB3_63
# %bb.59:
	cmpl	$1, %ecx
	jne	.LBB3_63
.LBB3_60:
	testq	%rdi, %rdi
	jne	.LBB3_62
# %bb.61:
	cmpq	%rax, %rdx
	je	.LBB3_63
.LBB3_62:
	movl	%edx, %r12d
	subl	%edi, %r12d
	addl	$1, %r12d
.LBB3_63:
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movslq	%r12d, %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	shlq	$4, %rdi
	callq	zmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	(%r15), %eax
	andl	$15, %eax
	testl	%r14d, %r14d
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movq	%r12, -144(%rbp)        # 8-byte Spill
	je	.LBB3_67
# %bb.64:
	cmpl	$1, %eax
	jne	.LBB3_67
# %bb.65:
	xorl	%r12d, %r12d
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jge	.LBB3_76
# %bb.66:
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB3_111
.LBB3_67:
	cmpl	$1, %eax
	movq	%r14, -136(%rbp)        # 8-byte Spill
	jne	.LBB3_72
# %bb.68:
	xorl	%r12d, %r12d
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	listTypeInitIterator
	movq	%rax, %r14
	leaq	-224(%rbp), %rsi
	movq	%rax, %rdi
	callq	listTypeNext
	testl	%eax, %eax
	je	.LBB3_71
# %bb.69:                               # %.preheader7
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %rbx
	xorl	%r12d, %r12d
	leaq	-224(%rbp), %r15
	.p2align	4, 0x90
.LBB3_70:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	listTypeGet
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listTypeNext
	addl	$1, %r12d
	addq	$16, %rbx
	testl	%eax, %eax
	jne	.LBB3_70
.LBB3_71:
	movq	%r14, %rdi
	callq	listTypeReleaseIterator
	jmp	.LBB3_110
.LBB3_72:
	cmpl	$2, %eax
	jne	.LBB3_78
# %bb.73:
	movq	%r15, %rdi
	callq	setTypeInitIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	setTypeNextObject
	testq	%rax, %rax
	je	.LBB3_103
# %bb.74:                               # %.preheader8
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	8(%rcx), %rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_75:                               # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	movq	%r14, %rdi
	callq	setTypeNextObject
	addl	$1, %r12d
	addq	$16, %rbx
	testq	%rax, %rax
	jne	.LBB3_75
	jmp	.LBB3_104
.LBB3_76:
	movq	%r14, -136(%rbp)        # 8-byte Spill
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	je	.LBB3_83
# %bb.77:
	movq	%rcx, %rbx
	movq	%r15, %rdi
	callq	listTypeLength
	notq	%rbx
	addq	%rax, %rbx
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB3_84
.LBB3_78:
	testl	%r14d, %r14d
	je	.LBB3_91
# %bb.79:
	cmpl	$3, %eax
	jne	.LBB3_91
# %bb.80:
	movq	8(%r15), %rax
	movq	8(%rax), %rdi
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	je	.LBB3_105
# %bb.81:
	movq	-80(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jle	.LBB3_185
# %bb.82:
	movq	(%rax), %rax
	movq	40(%rax), %rsi
	subq	%rcx, %rsi
	addq	72(%rax), %rsi
	jmp	.LBB3_107
.LBB3_83:
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%rcx, %rbx
.LBB3_84:
	xorl	%edx, %edx
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	sete	%dl
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	listTypeInitIterator
	movq	%rax, %r15
	testl	%r14d, %r14d
	jle	.LBB3_88
# %bb.85:                               # %.preheader
	leaq	8(%r12), %rbx
	xorl	%r12d, %r12d
	leaq	-224(%rbp), %r14
	.p2align	4, 0x90
.LBB3_86:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	listTypeNext
	testl	%eax, %eax
	je	.LBB3_89
# %bb.87:                               #   in Loop: Header=BB3_86 Depth=1
	movq	%r14, %rdi
	callq	listTypeGet
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	addq	$1, %r12
	addq	$16, %rbx
	cmpq	-128(%rbp), %r12        # 8-byte Folded Reload
	jl	.LBB3_86
	jmp	.LBB3_89
.LBB3_88:
	xorl	%r12d, %r12d
.LBB3_89:
	movq	%r15, %rdi
	callq	listTypeReleaseIterator
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB3_90:
	movq	-136(%rbp), %r14        # 8-byte Reload
	jmp	.LBB3_111
.LBB3_91:
	cmpl	$3, %eax
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB3_214
# %bb.92:
	movq	8(%r15), %rax
	movq	(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB3_108
# %bb.93:                               # %.preheader10
	leaq	8(%r12), %rbx
	xorl	%r12d, %r12d
	jmp	.LBB3_96
.LBB3_94:                               #   in Loop: Header=BB3_96 Depth=1
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB3_95:                               #   in Loop: Header=BB3_96 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	movq	%r14, %rdi
	callq	dictNext
	addl	$1, %r12d
	addq	$16, %rbx
	testq	%rax, %rax
	je	.LBB3_109
.LBB3_96:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_102
# %bb.97:                               #   in Loop: Header=BB3_96 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_98:                               #   in Loop: Header=BB3_96 Depth=1
	shrq	$3, %rsi
	jmp	.LBB3_95
.LBB3_99:                               #   in Loop: Header=BB3_96 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB3_95
.LBB3_100:                              #   in Loop: Header=BB3_96 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB3_95
.LBB3_101:                              #   in Loop: Header=BB3_96 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB3_95
.LBB3_102:                              #   in Loop: Header=BB3_96 Depth=1
	xorl	%esi, %esi
	jmp	.LBB3_95
.LBB3_103:
	xorl	%r12d, %r12d
.LBB3_104:
	movq	%r14, %rdi
	callq	setTypeReleaseIterator
	jmp	.LBB3_110
.LBB3_105:
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jle	.LBB3_188
# %bb.106:
	leaq	1(%rax), %rsi
.LBB3_107:
	callq	zslGetElementByRank
	movq	%rax, %r14
	jmp	.LBB3_189
.LBB3_108:
	xorl	%r12d, %r12d
.LBB3_109:
	movq	%r14, %rdi
	callq	dictReleaseIterator
.LBB3_110:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
.LBB3_111:
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, %r12d
	jne	.LBB3_213
# %bb.112:
	xorl	%edx, %edx
	testl	%r14d, %r14d
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB3_139
# %bb.113:
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB3_132
# %bb.114:
	leaq	8(%r12), %rbx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB3_117
.LBB3_131:                              #   in Loop: Header=BB3_117 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	8(%r12), %xmm0
	movsd	%xmm0, (%rbx)
	testq	%r13, %r13
	je	.LBB3_116
	.p2align	4, 0x90
.LBB3_115:                              #   in Loop: Header=BB3_117 Depth=1
	movq	%r12, %rdi
	callq	decrRefCount
.LBB3_116:                              #   in Loop: Header=BB3_117 Depth=1
	addq	$1, %r14
	addq	$16, %rbx
	cmpq	-128(%rbp), %r14        # 8-byte Folded Reload
	jge	.LBB3_133
.LBB3_117:                              # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB3_122
# %bb.118:                              #   in Loop: Header=BB3_117 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	-8(%rbx), %rdx
	movq	%r13, %rsi
	callq	lookupKeyByPattern
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB3_116
# %bb.119:                              #   in Loop: Header=BB3_117 Depth=1
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB3_123
.LBB3_120:                              #   in Loop: Header=BB3_117 Depth=1
	testq	%r13, %r13
	je	.LBB3_116
# %bb.121:                              #   in Loop: Header=BB3_117 Depth=1
	movq	%r12, %rdi
	callq	getDecodedObject
	movq	%rax, (%rbx)
	jmp	.LBB3_115
	.p2align	4, 0x90
.LBB3_122:                              #   in Loop: Header=BB3_117 Depth=1
	movq	-8(%rbx), %r12
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	jne	.LBB3_120
.LBB3_123:                              #   in Loop: Header=BB3_117 Depth=1
	movzbl	(%r12), %eax
	shrb	$4, %al
	cmpb	$8, %al
	je	.LBB3_126
# %bb.124:                              #   in Loop: Header=BB3_117 Depth=1
	cmpb	$1, %al
	je	.LBB3_131
# %bb.125:                              #   in Loop: Header=BB3_117 Depth=1
	testb	%al, %al
	jne	.LBB3_209
.LBB3_126:                              #   in Loop: Header=BB3_117 Depth=1
	movq	8(%r12), %rdi
	leaq	-224(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%rbx)
	movq	-224(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_129
# %bb.127:                              #   in Loop: Header=BB3_117 Depth=1
	callq	__errno
	cmpl	$34, (%rax)
	je	.LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_117 Depth=1
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	jne	.LBB3_130
.LBB3_129:                              #   in Loop: Header=BB3_117 Depth=1
	movl	$1, %r15d
.LBB3_130:                              #   in Loop: Header=BB3_117 Depth=1
	testq	%r13, %r13
	jne	.LBB3_115
	jmp	.LBB3_116
.LBB3_132:
	xorl	%r15d, %r15d
.LBB3_133:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%eax, server+2784(%rip)
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, server+2788(%rip)
	xorl	%eax, %eax
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	setne	%al
	xorl	%ecx, %ecx
	testq	%r13, %r13
	setne	%cl
	movl	%ecx, server+2792(%rip)
	movl	%eax, server+2796(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-144(%rbp), %rax        # 8-byte Reload
	je	.LBB3_136
# %bb.134:
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	jne	.LBB3_137
# %bb.135:
	addl	$-1, %eax
	cltq
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jne	.LBB3_137
.LBB3_136:
	movl	$16, %edx
	movl	$sortCompare, %ecx
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB3_138
.LBB3_137:
	movl	$16, %edx
	movl	$sortCompare, %ecx
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	pqsort
	movq	%r14, %rcx
.LBB3_138:
	movl	%r15d, %edx
.LBB3_139:
	movl	-100(%rbp), %r15d       # 4-byte Reload
	testl	%r15d, %r15d
	je	.LBB3_142
# %bb.140:
	movslq	%r15d, %rax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%rcx, %rsi
	addq	$1, %rsi
	imulq	%rax, %rsi
	testl	%edx, %edx
	je	.LBB3_143
.LBB3_141:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB3_173
.LBB3_142:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%rcx, %rsi
	addq	$1, %rsi
	testl	%edx, %edx
	jne	.LBB3_141
.LBB3_143:
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %r13
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB3_147
# %bb.144:
	callq	createQuicklistObject
	movq	%rax, %r14
	movslq	%r13d, %rax
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jge	.LBB3_159
.LBB3_145:
	movq	16(%rbx), %rdi
	movq	-96(%rbp), %r12         # 8-byte Reload
	testl	%r12d, %r12d
	je	.LBB3_169
# %bb.146:
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	setKey
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.19, %esi
	movl	$16, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	%r12d, %eax
	jmp	.LBB3_171
.LBB3_147:
	movl	-96(%rbp), %esi         # 4-byte Reload
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movslq	%r13d, %rax
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jl	.LBB3_173
# %bb.148:
	movslq	%r13d, %r12
	leaq	-224(%rbp), %r14
	jmp	.LBB3_150
	.p2align	4, 0x90
.LBB3_149:                              #   in Loop: Header=BB3_150 Depth=1
	addq	$1, %r12
	cmpq	%r12, -72(%rbp)         # 8-byte Folded Reload
	movl	-100(%rbp), %r15d       # 4-byte Reload
	jl	.LBB3_173
.LBB3_150:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_156 Depth 2
	testl	%r15d, %r15d
	jne	.LBB3_152
# %bb.151:                              #   in Loop: Header=BB3_150 Depth=1
	movq	%r12, %rax
	shlq	$4, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulk
.LBB3_152:                              #   in Loop: Header=BB3_150 Depth=1
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%r14, %rsi
	callq	listRewind
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB3_149
# %bb.153:                              #   in Loop: Header=BB3_150 Depth=1
	movq	%r12, %r15
	shlq	$4, %r15
	addq	-56(%rbp), %r15         # 8-byte Folded Reload
	jmp	.LBB3_156
	.p2align	4, 0x90
.LBB3_154:                              #   in Loop: Header=BB3_156 Depth=2
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	movq	%r13, %rbx
	callq	decrRefCount
.LBB3_155:                              #   in Loop: Header=BB3_156 Depth=2
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB3_149
.LBB3_156:                              #   Parent Loop BB3_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %r13
	movq	16(%rbx), %rdi
	movq	8(%r13), %rsi
	movq	(%r15), %rdx
	callq	lookupKeyByPattern
	cmpl	$0, (%r13)
	jne	.LBB3_207
# %bb.157:                              #   in Loop: Header=BB3_156 Depth=2
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB3_154
# %bb.158:                              #   in Loop: Header=BB3_156 Depth=2
	movq	shared+80(%rip), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB3_155
.LBB3_159:
	movslq	%r13d, %r15
	jmp	.LBB3_162
	.p2align	4, 0x90
.LBB3_160:                              #   in Loop: Header=BB3_162 Depth=1
	movq	%r15, %rax
	shlq	$4, %rax
	movq	(%r12,%rax), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	listTypePush
.LBB3_161:                              #   in Loop: Header=BB3_162 Depth=1
	addq	$1, %r15
	cmpq	%r15, -72(%rbp)         # 8-byte Folded Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	jl	.LBB3_145
.LBB3_162:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_166 Depth 2
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	je	.LBB3_160
# %bb.163:                              #   in Loop: Header=BB3_162 Depth=1
	movq	-120(%rbp), %rdi        # 8-byte Reload
	leaq	-224(%rbp), %r12
	movq	%r12, %rsi
	callq	listRewind
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB3_161
# %bb.164:                              #   in Loop: Header=BB3_162 Depth=1
	movq	%r15, %r13
	shlq	$4, %r13
	addq	-56(%rbp), %r13         # 8-byte Folded Reload
	jmp	.LBB3_166
	.p2align	4, 0x90
.LBB3_165:                              #   in Loop: Header=BB3_166 Depth=2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	listTypePush
	movq	%rbx, %rdi
	callq	decrRefCount
	leaq	-224(%rbp), %rdi
	callq	listNext
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_161
.LBB3_166:                              #   Parent Loop BB3_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %r12
	movq	16(%rbx), %rdi
	movq	8(%r12), %rsi
	movq	(%r13), %rdx
	callq	lookupKeyByPattern
	cmpl	$0, (%r12)
	jne	.LBB3_206
# %bb.167:                              #   in Loop: Header=BB3_166 Depth=2
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB3_165
# %bb.168:                              #   in Loop: Header=BB3_166 Depth=2
	movl	$.L.str.18, %edi
	xorl	%esi, %esi
	callq	createStringObject
	movq	%rax, %rbx
	jmp	.LBB3_165
.LBB3_169:
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	callq	dbDelete
	testl	%eax, %eax
	je	.LBB3_172
# %bb.170:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.20, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$1, %eax
.LBB3_171:
	addq	%rax, server+2080(%rip)
.LBB3_172:
	movq	%r14, %rdi
	callq	decrRefCount
	movl	%r12d, %esi
	movq	%rbx, %rdi
	callq	addReplyLongLong
.LBB3_173:
	movq	-144(%rbp), %r12        # 8-byte Reload
	testl	%r12d, %r12d
	jle	.LBB3_182
# %bb.174:
	movl	%r12d, %r14d
	movq	%r14, %r15
	shlq	$4, %r15
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_175:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx), %rdi
	callq	decrRefCount
	addq	$16, %rbx
	cmpq	%rbx, %r15
	jne	.LBB3_175
# %bb.176:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	listRelease
	testl	%r12d, %r12d
	movl	-60(%rbp), %r15d        # 4-byte Reload
	movq	%r13, %r12
	jle	.LBB3_183
# %bb.177:
	shlq	$4, %r14
	xorl	%ebx, %ebx
	jmp	.LBB3_179
	.p2align	4, 0x90
.LBB3_178:                              #   in Loop: Header=BB3_179 Depth=1
	addq	$16, %rbx
	cmpq	%rbx, %r14
	je	.LBB3_183
.LBB3_179:                              # =>This Inner Loop Header: Depth=1
	testl	%r15d, %r15d
	je	.LBB3_178
# %bb.180:                              #   in Loop: Header=BB3_179 Depth=1
	movq	8(%r12,%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_178
# %bb.181:                              #   in Loop: Header=BB3_179 Depth=1
	callq	decrRefCount
	jmp	.LBB3_178
.LBB3_182:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	listRelease
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB3_183:
	movq	%r12, %rdi
	callq	zfree
.LBB3_184:
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_185:
	movq	8(%rdi), %r14
	jmp	.LBB3_189
.LBB3_186:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB3_205
.LBB3_187:
	movl	$.L.str.9, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB3_204
.LBB3_188:
	movq	(%rdi), %rax
	movq	24(%rax), %r14
.LBB3_189:
	testl	%r12d, %r12d
	je	.LBB3_201
# %bb.190:                              # %.preheader9
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %r15
	xorl	%r12d, %r12d
	jmp	.LBB3_193
.LBB3_191:                              #   in Loop: Header=BB3_193 Depth=1
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB3_192:                              #   in Loop: Header=BB3_193 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	sete	%bl
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, -8(%r15)
	movq	$0, (%r15)
	movq	16(%r14,%rbx,8), %r14
	addl	$1, %r12d
	addq	$16, %r15
	cmpl	%r12d, -144(%rbp)       # 4-byte Folded Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_202
.LBB3_193:                              # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB3_210
# %bb.194:                              #   in Loop: Header=BB3_193 Depth=1
	movq	(%r14), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_200
# %bb.195:                              #   in Loop: Header=BB3_193 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_196:                              #   in Loop: Header=BB3_193 Depth=1
	shrq	$3, %rsi
	jmp	.LBB3_192
.LBB3_197:                              #   in Loop: Header=BB3_193 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB3_192
.LBB3_198:                              #   in Loop: Header=BB3_193 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB3_192
.LBB3_199:                              #   in Loop: Header=BB3_193 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB3_192
.LBB3_200:                              #   in Loop: Header=BB3_193 Depth=1
	xorl	%esi, %esi
	jmp	.LBB3_192
.LBB3_201:
	xorl	%r12d, %r12d
.LBB3_202:
	movq	-152(%rbp), %rax        # 8-byte Reload
	subq	-80(%rbp), %rax         # 8-byte Folded Reload
	xorl	%ecx, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_90
.LBB3_203:
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
.LBB3_204:
	callq	addReplyError
.LBB3_205:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	listRelease
	jmp	.LBB3_184
.LBB3_206:
	movl	$.L.str.17, %edx
	movl	$.L.str.10, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	$560, %r8d              # imm = 0x230
	jmp	.LBB3_208
.LBB3_207:
	movl	$.L.str.17, %edx
	movl	$.L.str.10, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	$529, %r8d              # imm = 0x211
.LBB3_208:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB3_209:
	movl	$.L.str.15, %edx
	movl	$.L.str.10, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	$480, %r8d              # imm = 0x1E0
	jmp	.LBB3_208
.LBB3_210:
	movl	$.L.str.12, %edx
	movl	$.L.str.10, %ecx
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	$419, %r8d              # imm = 0x1A3
	jmp	.LBB3_208
.LBB3_211:
	movl	$.L.str.10, %edi
	movl	$.L.str.11, %edx
	movl	$313, %esi              # imm = 0x139
.LBB3_212:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB3_213:
	movl	$.L.str.14, %edx
	movl	$.L.str.10, %ecx
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	$447, %r8d              # imm = 0x1BF
	jmp	.LBB3_208
.LBB3_214:
	movl	$.L.str.10, %edi
	movl	$.L.str.13, %edx
	movl	$445, %esi              # imm = 0x1BD
	jmp	.LBB3_212
.Lfunc_end3:
	.size	sortCommand, .Lfunc_end3-sortCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_98
	.quad	.LBB3_101
	.quad	.LBB3_99
	.quad	.LBB3_100
	.quad	.LBB3_94
.LJTI3_1:
	.quad	.LBB3_196
	.quad	.LBB3_199
	.quad	.LBB3_197
	.quad	.LBB3_198
	.quad	.LBB3_191
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"->"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"asc"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"desc"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"alpha"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"limit"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"store"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"by"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"BY option of SORT denied in Cluster mode."
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"get"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GET option of SORT denied in Cluster mode."
	.size	.L.str.9, 43

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sort.c"
	.size	.L.str.10, 72

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Bad SORT type"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ln != NULL"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unknown type"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"j == vectorlen"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1 != 1"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"One or more scores can't be converted into double"
	.size	.L.str.16, 50

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sop->type == SORT_OP_GET"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"sortstore"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"del"
	.size	.L.str.20, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
