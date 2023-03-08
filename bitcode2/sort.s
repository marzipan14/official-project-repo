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
	movq	%rdi, %r12
	movq	8(%rsi), %r13
	cmpb	$35, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.1:
	cmpb	$0, 1(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_2
.LBB1_3:
	movq	%rbx, %rdi
	callq	getDecodedObject
	movq	%rax, %rbx
	movq	8(%rax), %r15
	movq	%r13, %rdi
	movl	$42, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.5:
	movq	%rax, %r14
	leaq	1(%rax), %rdi
	movl	$.L.str, %esi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	strstr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, -96(%rbp)         # 8-byte Spill
	je	.LBB1_16
# %bb.6:
	cmpb	$0, 2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_16
# %bb.7:
	movq	%rax, %rdi
	addq	$2, %rdi
	movzbl	-1(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB1_8
# %bb.9:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_10:
	movq	%rbx, %r12
	shrq	$3, %rcx
	jmp	.LBB1_15
.LBB1_16:
	movq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	jmp	.LBB1_17
.LBB1_4:
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB1_42
.LBB1_2:
	movq	%rbx, %rdi
	callq	incrRefCount
	jmp	.LBB1_43
.LBB1_8:
	movq	%rbx, %r12
	xorl	%ecx, %ecx
	jmp	.LBB1_15
.LBB1_11:
	movq	%rbx, %r12
	movzbl	-3(%r13), %ecx
	jmp	.LBB1_15
.LBB1_12:
	movq	%rbx, %r12
	movzwl	-5(%r13), %ecx
	jmp	.LBB1_15
.LBB1_13:
	movq	%rbx, %r12
	movl	-9(%r13), %ecx
	jmp	.LBB1_15
.LBB1_14:
	movq	%rbx, %r12
	movq	-17(%r13), %rcx
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edx
	subl	%eax, %edx
	leal	(%rdx,%rcx), %ebx
	addl	$-2, %ebx
	movslq	%ebx, %rsi
	callq	createStringObject
	movq	%rbx, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	subq	%r13, %r14
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
	movzbl	-1(%r15), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB1_18
# %bb.19:
	movl	%esi, %eax
	andl	$7, %eax
	movq	%r12, %rcx
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_20:
	shrq	$3, %rsi
	jmp	.LBB1_25
.LBB1_18:
	xorl	%esi, %esi
	movq	%r12, %rcx
	jmp	.LBB1_25
.LBB1_21:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movzbl	-3(%rax), %esi
	jmp	.LBB1_25
.LBB1_22:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movzwl	-5(%rax), %esi
	jmp	.LBB1_25
.LBB1_23:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	-9(%rax), %esi
	jmp	.LBB1_25
.LBB1_24:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-17(%rax), %rsi
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%r13), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	ja	.LBB1_26
# %bb.27:
	movl	%r12d, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_28:
	shrq	$3, %r12
	jmp	.LBB1_33
.LBB1_26:
	xorl	%r12d, %r12d
	jmp	.LBB1_33
.LBB1_29:
	movzbl	-3(%r13), %r12d
	jmp	.LBB1_33
.LBB1_30:
	movzwl	-5(%r13), %r12d
	jmp	.LBB1_33
.LBB1_31:
	movl	-9(%r13), %r12d
	jmp	.LBB1_33
.LBB1_32:
	movq	-17(%r13), %r12
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	shlq	$32, %rax
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	addq	%rax, %rcx
	shrq	$32, %rcx
	subl	%ecx, %r12d
	leal	2(%rdx), %eax
	testl	%edx, %edx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cmovel	%edx, %eax
	subl	%eax, %r12d
	leal	(%rsi,%r14), %eax
	addl	%r12d, %eax
	movq	%rsi, %r13
	movslq	%eax, %rsi
	xorl	%edi, %edi
	callq	createStringObject
	movq	%rax, %r15
	movq	8(%rax), %rbx
	movslq	%r14d, %r14
	movq	%rbx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	movslq	%r13d, %r14
	movq	%rbx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	movslq	%r12d, %rdx
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB1_40
# %bb.34:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_37
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB1_40
# %bb.36:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	callq	hashTypeGetValueObject
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	jmp	.LBB1_39
.LBB1_37:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_38
.LBB1_40:
	movq	%r15, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB1_42
# %bb.41:
	movq	%r14, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB1_42:
	xorl	%ebx, %ebx
.LBB1_43:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
.LBB1_39:
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_43
.Lfunc_end1:
	.size	lookupKeyByPattern, .Lfunc_end1-lookupKeyByPattern
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_1
# %bb.6:
	cmpl	$0, server+2792(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_16
# %bb.7:
	movq	8(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rsi), %rsi
	testq	%rdi, %rdi
	je	.LBB2_11
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB2_9
# %bb.13:
	cmpl	$0, server+2796(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_14
# %bb.15:
	movq	8(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	strcoll
	jmp	.LBB2_18
.LBB2_1:
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB2_19
.LBB2_16:
	cmpl	$0, server+2796(%rip)
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_17
.LBB2_14:
	callq	compareStringObjects
	jmp	.LBB2_18
.LBB2_3:
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB2_19
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	jne	.LBB2_10
# %bb.12:
	xorl	%eax, %eax
	jmp	.LBB2_19
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_10:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %eax
	addl	$-1, %eax
	jmp	.LBB2_19
.LBB2_5:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	compareStringObjects
	jmp	.LBB2_18
.LBB2_17:
	callq	collateStringObjects
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_19:
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
	subq	$168, %rsp
	movq	%rdi, %rbx
	movq	$0, -152(%rbp)
	movq	$-1, -144(%rbp)
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_4
# %bb.1:
	movl	(%r12), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB3_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB3_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB3_86
.LBB3_4:
	callq	listCreate
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_6
# %bb.5:
	movq	%r12, %rdi
	callq	incrRefCount
	jmp	.LBB3_7
.LBB3_6:
	callq	createQuicklistObject
	movq	%rax, %r12
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r15d
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jl	.LBB3_35
# %bb.8:                                # %.preheader11
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movl	$2, %r12d
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_13 Depth=1
	xorl	%eax, %eax
.LBB3_10:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB3_11:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r15d
	jle	.LBB3_36
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %r14
	movslq	%r12d, %r13
	movq	(%r14,%r13,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_9
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_21
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_22
# %bb.16:                               #   in Loop: Header=BB3_13 Depth=1
	movl	%r12d, %eax
	notl	%eax
	addl	%eax, %r15d
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB3_23
# %bb.17:                               #   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	jne	.LBB3_23
# %bb.18:                               #   in Loop: Header=BB3_13 Depth=1
	movq	8(%r14,%r13,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-152(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_211
# %bb.19:                               #   in Loop: Header=BB3_13 Depth=1
	movq	72(%rbx), %rax
	movq	16(%rax,%r13,8), %rsi
	movq	%rbx, %rdi
	leaq	-144(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_211
# %bb.20:                               #   in Loop: Header=BB3_13 Depth=1
	addl	$2, %r12d
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %eax
	jmp	.LBB3_10
.LBB3_22:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_11
.LBB3_23:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB3_26
# %bb.24:                               #   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	jne	.LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_13 Depth=1
	addl	$1, %r12d
	movq	8(%r14,%r13,8), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_11
.LBB3_26:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB3_30
# %bb.27:                               #   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	jne	.LBB3_30
# %bb.28:                               #   in Loop: Header=BB3_13 Depth=1
	addl	$1, %r12d
	movq	8(%r14,%r13,8), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	8(%rcx), %rdi
	movl	$42, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_34
# %bb.29:                               #   in Loop: Header=BB3_13 Depth=1
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_12
	jmp	.LBB3_209
.LBB3_30:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB3_207
# %bb.31:                               #   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	jne	.LBB3_207
# %bb.32:                               #   in Loop: Header=BB3_13 Depth=1
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_208
# %bb.33:                               #   in Loop: Header=BB3_13 Depth=1
	addl	$1, %r12d
	movq	8(%r14,%r13,8), %rbx
	movl	$16, %edi
	callq	zmalloc
	movl	$0, (%rax)
	movq	%rbx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	listAddNodeTail
	addl	$1, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_11
.LBB3_34:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_11
.LBB3_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	(%r12), %eax
	jmp	.LBB3_43
.LBB3_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB3_41
# %bb.37:
	movq	-80(%rbp), %r12         # 8-byte Reload
	movl	(%r12), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	movl	-64(%rbp), %r14d        # 4-byte Reload
	movq	-96(%rbp), %r15         # 8-byte Reload
	jne	.LBB3_44
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB3_42
# %bb.39:
	testl	$256, 160(%rbx)         # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_42
# %bb.40:
	xorl	%ecx, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_44
.LBB3_41:
	movq	-80(%rbp), %r12         # 8-byte Reload
	movl	-64(%rbp), %r14d        # 4-byte Reload
	movq	-96(%rbp), %r15         # 8-byte Reload
	movl	(%r12), %eax
	jmp	.LBB3_43
.LBB3_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
.LBB3_43:
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
.LBB3_44:
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB3_46
# %bb.45:
	movq	%r12, %rdi
	movl	$7, %esi
	callq	zsetConvert
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %eax
.LBB3_46:
	movl	$42, __A_VARIABLE(%rip)
	andb	$15, %al
	cmpb	$3, %al
	movq	%r15, -96(%rbp)         # 8-byte Spill
	je	.LBB3_52
# %bb.47:
	cmpb	$2, %al
	je	.LBB3_50
# %bb.48:
	cmpb	$1, %al
	jne	.LBB3_216
# %bb.49:
	movq	%r12, %rdi
	callq	listTypeLength
	jmp	.LBB3_51
.LBB3_50:
	movq	%r12, %rdi
	callq	setTypeSize
.LBB3_51:
	movq	%rax, %r15
	jmp	.LBB3_53
.LBB3_52:
	movq	8(%r12), %rax
	movq	(%rax), %rax
	movq	72(%rax), %r15
	addq	40(%rax), %r15
.LBB3_53:
	movl	$42, __A_VARIABLE(%rip)
	movq	-152(%rbp), %rax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	cmovnsq	%rax, %r13
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movq	-144(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	js	.LBB3_55
# %bb.54:
	addq	%r13, %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rcx
	shlq	$32, %rcx
	jmp	.LBB3_56
.LBB3_55:
	movq	%r15, %rcx
	shlq	$32, %rcx
	leaq	(%rcx,%rax), %rdx
	sarq	$32, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB3_56:
	movq	%rcx, %rdx
	sarq	$32, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r13
	jl	.LBB3_58
# %bb.57:
	leaq	(%rcx,%rax), %r13
	sarq	$32, %r13
	movabsq	$-8589934592, %rsi      # imm = 0xFFFFFFFE00000000
	addq	%rcx, %rsi
	sarq	$32, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB3_58:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, -56(%rbp)         # 8-byte Folded Reload
	jl	.LBB3_60
# %bb.59:
	leaq	(%rcx,%rax), %rdx
	sarq	$32, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB3_60:
	movl	(%r12), %edx
	andl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %edx
	jne	.LBB3_62
# %bb.61:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	jne	.LBB3_64
	jmp	.LBB3_67
.LBB3_62:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB3_67
# %bb.63:
	cmpl	$1, %edx
	jne	.LBB3_67
.LBB3_64:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB3_66
# %bb.65:
	addq	%rax, %rcx
	sarq	$32, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, -56(%rbp)         # 8-byte Folded Reload
	je	.LBB3_67
.LBB3_66:
	movq	-56(%rbp), %r15         # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	%r13d, %r15d
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_67:
	movslq	%r15d, %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	shlq	$4, %rdi
	callq	zmalloc
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	(%r12), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	movl	%r14d, -64(%rbp)        # 4-byte Spill
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	je	.LBB3_72
# %bb.68:
	cmpl	$1, %eax
	jne	.LBB3_72
# %bb.69:
	xorl	%r15d, %r15d
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %r12
	jl	.LBB3_128
# %bb.70:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	je	.LBB3_87
# %bb.71:
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	listTypeLength
	notq	%r13
	addq	%rax, %r13
	jmp	.LBB3_88
.LBB3_72:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB3_77
# %bb.73:
	xorl	%r15d, %r15d
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	listTypeInitIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	listTypeNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_76
# %bb.74:                               # %.preheader7
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %rbx
	xorl	%r15d, %r15d
	leaq	-208(%rbp), %r12
	.p2align	4, 0x90
.LBB3_75:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	listTypeGet
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	listTypeNext
	addl	$1, %r15d
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_75
.LBB3_76:
	movq	%r14, %rdi
	callq	listTypeReleaseIterator
	jmp	.LBB3_125
.LBB3_77:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB3_81
# %bb.78:
	movq	%r12, %rdi
	callq	setTypeInitIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	setTypeNextObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_106
# %bb.79:                               # %.preheader8
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	8(%rcx), %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_80:                               # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	setTypeNextObject
	addl	$1, %r15d
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_80
	jmp	.LBB3_107
.LBB3_81:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB3_94
# %bb.82:
	cmpl	$3, %eax
	jne	.LBB3_94
# %bb.83:
	movq	8(%r12), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	je	.LBB3_108
# %bb.84:
	movq	(%rax), %rax
	movq	40(%rax), %rsi
	movq	72(%rax), %rax
	movq	8(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jle	.LBB3_110
# %bb.85:
	subq	%r13, %rsi
	addq	%rax, %rsi
	callq	zslGetElementByRank
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_110
.LBB3_86:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB3_204
.LBB3_87:
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB3_88:
	movq	-112(%rbp), %r14        # 8-byte Reload
	xorl	%edx, %edx
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	listTypeInitIterator
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB3_92
# %bb.89:                               # %.preheader
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %rbx
	xorl	%r15d, %r15d
	leaq	-208(%rbp), %r14
	.p2align	4, 0x90
.LBB3_90:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	listTypeNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_93
# %bb.91:                               #   in Loop: Header=BB3_90 Depth=1
	movq	%r14, %rdi
	callq	listTypeGet
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	-136(%rbp), %r15        # 8-byte Folded Reload
	jl	.LBB3_90
	jmp	.LBB3_93
.LBB3_92:
	xorl	%r15d, %r15d
.LBB3_93:
	movq	%r13, %rdi
	callq	listTypeReleaseIterator
	xorl	%r13d, %r13d
	jmp	.LBB3_126
.LBB3_94:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB3_220
# %bb.95:
	movq	8(%r12), %rax
	movq	(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_123
# %bb.96:                               # %.preheader10
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	8(%rcx), %rbx
	xorl	%r15d, %r15d
	jmp	.LBB3_99
.LBB3_97:                               #   in Loop: Header=BB3_99 Depth=1
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB3_98:                               #   in Loop: Header=BB3_99 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, -8(%rbx)
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	addl	$1, %r15d
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_124
.LBB3_99:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_105
# %bb.100:                              #   in Loop: Header=BB3_99 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_101:                              #   in Loop: Header=BB3_99 Depth=1
	shrq	$3, %rsi
	jmp	.LBB3_98
.LBB3_102:                              #   in Loop: Header=BB3_99 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB3_98
.LBB3_103:                              #   in Loop: Header=BB3_99 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB3_98
.LBB3_104:                              #   in Loop: Header=BB3_99 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB3_98
.LBB3_105:                              #   in Loop: Header=BB3_99 Depth=1
	xorl	%esi, %esi
	jmp	.LBB3_98
.LBB3_106:
	xorl	%r15d, %r15d
.LBB3_107:
	movq	%r14, %rdi
	callq	setTypeReleaseIterator
	jmp	.LBB3_125
.LBB3_108:
	movq	(%rdi), %rax
	movq	24(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jle	.LBB3_111
# %bb.109:
	leaq	1(%r13), %rsi
	callq	zslGetElementByRank
	movq	%rax, %r14
.LBB3_110:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_111:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_205
# %bb.112:                              # %.preheader9
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %r12
	xorl	%r15d, %r15d
	jmp	.LBB3_115
.LBB3_113:                              #   in Loop: Header=BB3_115 Depth=1
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB3_114:                              #   in Loop: Header=BB3_115 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	sete	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, -8(%r12)
	movq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14,%rbx,8), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	addq	$16, %r12
	cmpl	%r15d, -112(%rbp)       # 4-byte Folded Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_206
.LBB3_115:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB3_215
# %bb.116:                              #   in Loop: Header=BB3_115 Depth=1
	movq	(%r14), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_122
# %bb.117:                              #   in Loop: Header=BB3_115 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_118:                              #   in Loop: Header=BB3_115 Depth=1
	shrq	$3, %rsi
	jmp	.LBB3_114
.LBB3_119:                              #   in Loop: Header=BB3_115 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB3_114
.LBB3_120:                              #   in Loop: Header=BB3_115 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB3_114
.LBB3_121:                              #   in Loop: Header=BB3_115 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB3_114
.LBB3_122:                              #   in Loop: Header=BB3_115 Depth=1
	xorl	%esi, %esi
	jmp	.LBB3_114
.LBB3_123:
	xorl	%r15d, %r15d
.LBB3_124:
	movq	%r14, %rdi
	callq	dictReleaseIterator
.LBB3_125:
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB3_126:
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB3_127:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -56(%rbp)         # 8-byte Spill
.LBB3_128:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-112(%rbp), %r15d       # 4-byte Folded Reload
	jne	.LBB3_218
# %bb.129:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	movl	-64(%rbp), %r15d        # 4-byte Reload
	jne	.LBB3_157
# %bb.130:
	movq	%r13, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	jle	.LBB3_150
# %bb.131:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %rbx
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	-96(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB3_135
	.p2align	4, 0x90
.LBB3_132:                              #   in Loop: Header=BB3_135 Depth=1
	movq	%r15, %rdi
	callq	decrRefCount
.LBB3_133:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_134:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	-136(%rbp), %r13        # 8-byte Folded Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	jge	.LBB3_151
.LBB3_135:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB3_137
# %bb.136:                              #   in Loop: Header=BB3_135 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	-8(%rbx), %rdx
	callq	lookupKeyByPattern
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_138
	jmp	.LBB3_134
	.p2align	4, 0x90
.LBB3_137:                              #   in Loop: Header=BB3_135 Depth=1
	movq	-8(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB3_138:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	je	.LBB3_141
# %bb.139:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB3_133
# %bb.140:                              #   in Loop: Header=BB3_135 Depth=1
	movq	%r15, %rdi
	callq	getDecodedObject
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_132
	.p2align	4, 0x90
.LBB3_141:                              #   in Loop: Header=BB3_135 Depth=1
	movl	(%r15), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB3_143
# %bb.142:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB3_147
.LBB3_143:                              #   in Loop: Header=BB3_135 Depth=1
	movq	8(%r15), %rdi
	leaq	-208(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%rbx)
	movq	-208(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_146
# %bb.144:                              #   in Loop: Header=BB3_135 Depth=1
	callq	__errno
	cmpl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_146
# %bb.145:                              #   in Loop: Header=BB3_135 Depth=1
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_149
.LBB3_146:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB3_149
.LBB3_147:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB3_219
# %bb.148:                              #   in Loop: Header=BB3_135 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	8(%r15), %xmm0
	movsd	%xmm0, (%rbx)
.LBB3_149:                              #   in Loop: Header=BB3_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	jne	.LBB3_132
	jmp	.LBB3_134
.LBB3_150:
	xorl	%r12d, %r12d
	movq	-96(%rbp), %rsi         # 8-byte Reload
.LBB3_151:
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, server+2784(%rip)
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, server+2788(%rip)
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	setne	%al
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	setne	%cl
	movl	%ecx, server+2792(%rip)
	movl	%eax, server+2796(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	je	.LBB3_154
# %bb.152:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB3_155
# %bb.153:
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	$-1, %eax
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -56(%rbp)         # 8-byte Folded Reload
	jne	.LBB3_155
.LBB3_154:
	movl	$16, %edx
	movl	$sortCompare, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	jmp	.LBB3_156
.LBB3_155:
	movl	$16, %edx
	movl	$sortCompare, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	pqsort
.LBB3_156:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	-64(%rbp), %r15d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB3_157:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_159
# %bb.158:
	movslq	%r15d, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	addq	$1, %rcx
	imulq	%rax, %rcx
	jmp	.LBB3_160
.LBB3_159:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	addq	$1, %rcx
.LBB3_160:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB3_162
# %bb.161:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB3_192
.LBB3_162:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB3_166
# %bb.163:
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	createQuicklistObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -56(%rbp)         # 8-byte Folded Reload
	jge	.LBB3_178
.LBB3_164:
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	16(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r15         # 8-byte Reload
	testl	%r15d, %r15d
	je	.LBB3_188
# %bb.165:
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	setKey
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.19, %esi
	movl	$16, %edi
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movl	%r15d, %eax
	jmp	.LBB3_190
.LBB3_166:
	movl	%ecx, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -56(%rbp)         # 8-byte Folded Reload
	jl	.LBB3_193
# %bb.167:
	movslq	%r13d, %r14
	leaq	-208(%rbp), %r12
	jmp	.LBB3_169
	.p2align	4, 0x90
.LBB3_168:                              #   in Loop: Header=BB3_169 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, -56(%rbp)         # 8-byte Folded Reload
	movl	-64(%rbp), %r15d        # 4-byte Reload
	jl	.LBB3_193
.LBB3_169:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_175 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB3_171
# %bb.170:                              #   in Loop: Header=BB3_169 Depth=1
	movq	%r14, %rax
	shlq	$4, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulk
	movl	$42, __A_VARIABLE(%rip)
.LBB3_171:                              #   in Loop: Header=BB3_169 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_168
# %bb.172:                              #   in Loop: Header=BB3_169 Depth=1
	movq	%r14, %r15
	shlq	$4, %r15
	addq	-72(%rbp), %r15         # 8-byte Folded Reload
	jmp	.LBB3_175
	.p2align	4, 0x90
.LBB3_173:                              #   in Loop: Header=BB3_175 Depth=2
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	movq	%r13, %rbx
	callq	decrRefCount
.LBB3_174:                              #   in Loop: Header=BB3_175 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_168
.LBB3_175:                              #   Parent Loop BB3_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %r13
	movq	16(%rbx), %rdi
	movq	8(%r13), %rsi
	movq	(%r15), %rdx
	callq	lookupKeyByPattern
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_213
# %bb.176:                              #   in Loop: Header=BB3_175 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_173
# %bb.177:                              #   in Loop: Header=BB3_175 Depth=2
	movq	shared+80(%rip), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB3_174
.LBB3_178:
	movslq	%r13d, %r15
	jmp	.LBB3_181
	.p2align	4, 0x90
.LBB3_179:                              #   in Loop: Header=BB3_181 Depth=1
	movq	%r15, %rax
	shlq	$4, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	listTypePush
	movl	$42, __A_VARIABLE(%rip)
.LBB3_180:                              #   in Loop: Header=BB3_181 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, -56(%rbp)         # 8-byte Folded Reload
	jl	.LBB3_164
.LBB3_181:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_185 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB3_179
# %bb.182:                              #   in Loop: Header=BB3_181 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-208(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_180
# %bb.183:                              #   in Loop: Header=BB3_181 Depth=1
	movq	%r15, %rbx
	shlq	$4, %rbx
	addq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jmp	.LBB3_185
	.p2align	4, 0x90
.LBB3_184:                              #   in Loop: Header=BB3_185 Depth=2
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	listTypePush
	movq	%r13, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-208(%rbp), %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_180
.LBB3_185:                              #   Parent Loop BB3_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %r12
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	8(%r12), %rsi
	movq	(%rbx), %rdx
	callq	lookupKeyByPattern
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_212
# %bb.186:                              #   in Loop: Header=BB3_185 Depth=2
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_184
# %bb.187:                              #   in Loop: Header=BB3_185 Depth=2
	movl	$.L.str.18, %edi
	xorl	%esi, %esi
	callq	createStringObject
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_184
.LBB3_188:
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_191
# %bb.189:
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.20, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$1, %eax
.LBB3_190:
	addq	%rax, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_191:
	movq	%r14, %rdi
	callq	decrRefCount
	movl	-96(%rbp), %esi         # 4-byte Reload
	movq	%r12, %rdi
	callq	addReplyLongLong
.LBB3_192:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_193:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rax        # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB3_202
# %bb.194:
	movl	%eax, %r14d
	movq	%r14, %r15
	shlq	$4, %r15
	xorl	%ebx, %ebx
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_195:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rbx, %r15
	jne	.LBB3_195
# %bb.196:
	movq	%r12, %rdi
	callq	decrRefCount
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	movl	-84(%rbp), %r15d        # 4-byte Reload
	movq	%r13, %r12
	jle	.LBB3_203
# %bb.197:
	shlq	$4, %r14
	xorl	%ebx, %ebx
	jmp	.LBB3_199
	.p2align	4, 0x90
.LBB3_198:                              #   in Loop: Header=BB3_199 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rbx, %r14
	je	.LBB3_203
.LBB3_199:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_198
# %bb.200:                              #   in Loop: Header=BB3_199 Depth=1
	movq	8(%r12,%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_198
# %bb.201:                              #   in Loop: Header=BB3_199 Depth=1
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_198
.LBB3_202:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB3_203:
	movq	%r12, %rdi
	callq	zfree
.LBB3_204:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_205:
	xorl	%r15d, %r15d
.LBB3_206:
	movq	-56(%rbp), %r12         # 8-byte Reload
	subq	%r13, %r12
	xorl	%r13d, %r13d
	jmp	.LBB3_127
.LBB3_207:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB3_211
.LBB3_208:
	movl	$.L.str.9, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB3_210
.LBB3_209:
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
.LBB3_210:
	callq	addReplyError
.LBB3_211:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	decrRefCount
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	listRelease
	jmp	.LBB3_204
.LBB3_212:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.17, %edx
	movl	$.L.str.10, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	$560, %r8d              # imm = 0x230
	jmp	.LBB3_214
.LBB3_213:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.17, %edx
	movl	$.L.str.10, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	$529, %r8d              # imm = 0x211
.LBB3_214:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB3_215:
	movl	$.L.str.12, %edx
	movl	$.L.str.10, %ecx
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	$419, %r8d              # imm = 0x1A3
	jmp	.LBB3_214
.LBB3_216:
	movl	$.L.str.10, %edi
	movl	$.L.str.11, %edx
	movl	$313, %esi              # imm = 0x139
.LBB3_217:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB3_218:
	movl	$.L.str.14, %edx
	movl	$.L.str.10, %ecx
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	$447, %r8d              # imm = 0x1BF
	jmp	.LBB3_214
.LBB3_219:
	movl	$.L.str.15, %edx
	movl	$.L.str.10, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	$480, %r8d              # imm = 0x1E0
	jmp	.LBB3_214
.LBB3_220:
	movl	$.L.str.10, %edi
	movl	$.L.str.13, %edx
	movl	$445, %esi              # imm = 0x1BD
	jmp	.LBB3_217
.Lfunc_end3:
	.size	sortCommand, .Lfunc_end3-sortCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_101
	.quad	.LBB3_104
	.quad	.LBB3_102
	.quad	.LBB3_103
	.quad	.LBB3_97
.LJTI3_1:
	.quad	.LBB3_118
	.quad	.LBB3_121
	.quad	.LBB3_119
	.quad	.LBB3_120
	.quad	.LBB3_113
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
