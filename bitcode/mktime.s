	.text
	.file	"mktime.c"
	.globl	mktime                  # -- Begin function mktime
	.p2align	4, 0x90
	.type	mktime,@function
mktime:                                 # @mktime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	callq	__gettzinfo
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	validate_structure
	movslq	(%r14), %rax
	movslq	4(%r14), %rdx
	movslq	8(%r14), %rcx
	movslq	12(%r14), %rsi
	movslq	16(%r14), %rdi
	movslq	_DAYS_BEFORE_MONTH(,%rdi,4), %rbx
	addq	%rsi, %rbx
	addq	$-1, %rbx
	movl	20(%r14), %r13d
	cmpq	$2, %rdi
	jl	.LBB0_5
# %bb.1:
	movl	%r13d, %esi
	andl	$3, %esi
	jne	.LBB0_5
# %bb.2:
	imull	$-1030792151, %r13d, %esi # imm = 0xC28F5C29
	leal	85899344(%rsi), %edi
	rorl	$2, %edi
	cmpl	$42949672, %edi         # imm = 0x28F5C28
	jbe	.LBB0_3
.LBB0_4:
	addq	$1, %rbx
	jmp	.LBB0_5
.LBB0_3:
	addl	$85899420, %esi         # imm = 0x51EB89C
	rorl	$4, %esi
	cmpl	$10737418, %esi         # imm = 0xA3D70A
	jbe	.LBB0_4
.LBB0_5:
	movl	%ebx, 28(%r14)
	leal	10000(%r13), %esi
	movq	$-1, %r15
	cmpl	$20000, %esi            # imm = 0x4E20
	ja	.LBB0_54
# %bb.6:
	imulq	$60, %rdx, %rdx
	addq	%rax, %rdx
	imulq	$3600, %rcx, %r15       # imm = 0xE10
	addq	%rdx, %r15
	cmpl	$71, %r13d
	jl	.LBB0_13
# %bb.7:                                # %.preheader
	movl	$70, %eax
	movl	$-1970, %ecx            # imm = 0xF84E
	movl	$1970, %edx             # imm = 0x7B2
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$366, %esi              # imm = 0x16E
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	addq	%rsi, %rbx
	addl	$1, %eax
	addl	$-1, %ecx
	addl	$1, %edx
	cmpl	%eax, %r13d
	je	.LBB0_27
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$365, %esi              # imm = 0x16D
	testb	$3, %al
	jne	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	%eax, %edi
	imulq	$1374389535, %rdi, %rdi # imm = 0x51EB851F
	shrq	$37, %rdi
	imull	$100, %edi, %edi
	cmpl	%eax, %edi
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	%edx, %edi
	imulq	$1374389535, %rdi, %rdi # imm = 0x51EB851F
	shrq	$39, %rdi
	imull	$400, %edi, %edi        # imm = 0x190
	addl	%ecx, %edi
	jne	.LBB0_12
	jmp	.LBB0_11
.LBB0_13:
	cmpl	$70, %r13d
	jne	.LBB0_15
# %bb.14:
	movl	$70, %r13d
	jmp	.LBB0_27
.LBB0_15:
	movl	$365, %eax              # imm = 0x16D
	cmpl	$68, %r13d
	jg	.LBB0_26
# %bb.16:                               # %.preheader1
	movl	$1969, %eax             # imm = 0x7B1
	xorl	%edx, %edx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$366, %ecx              # imm = 0x16E
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	subq	%rcx, %rbx
	leal	-1901(%rax), %ecx
	testb	$3, %cl
	sete	%dl
	addl	$-1, %eax
	cmpl	%r13d, %ecx
	jle	.LBB0_22
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	$365, %ecx              # imm = 0x16D
	testb	$1, %dl
	je	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	leal	-1900(%rax), %edx
	imull	$-1030792151, %edx, %edx # imm = 0xC28F5C29
	addl	$85899344, %edx         # imm = 0x51EB850
	rorl	$2, %edx
	cmpl	$42949672, %edx         # imm = 0x28F5C28
	ja	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	imull	$-1030792151, %eax, %edx # imm = 0xC28F5C29
	addl	$85899344, %edx         # imm = 0x51EB850
	rorl	$4, %edx
	cmpl	$10737418, %edx         # imm = 0xA3D70A
	ja	.LBB0_21
	jmp	.LBB0_20
.LBB0_22:
	movl	$365, %eax              # imm = 0x16D
	testb	$3, %cl
	jne	.LBB0_26
# %bb.23:
	imull	$-1030792151, %r13d, %ecx # imm = 0xC28F5C29
	leal	85899344(%rcx), %edx
	rorl	$2, %edx
	cmpl	$42949672, %edx         # imm = 0x28F5C28
	jbe	.LBB0_24
.LBB0_25:
	movl	$366, %eax              # imm = 0x16E
	jmp	.LBB0_26
.LBB0_24:
	addl	$85899420, %ecx         # imm = 0x51EB89C
	rorl	$4, %ecx
	cmpl	$10737418, %ecx         # imm = 0xA3D70A
	jbe	.LBB0_25
.LBB0_26:
	subq	%rax, %rbx
.LBB0_27:
	imulq	$86400, %rbx, %rax      # imm = 0x15180
	addq	%rax, %r15
	callq	__tz_lock
	callq	_tzset_unlocked
	cmpl	$0, _daylight(%rip)
	je	.LBB0_28
# %bb.29:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movl	$1900, %edi             # imm = 0x76C
	addl	20(%r14), %edi
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	32(%r14), %eax
	cmpl	$2, %eax
	movl	$1, %r15d
	cmovll	%eax, %r15d
	cmpl	4(%r12), %edi
	je	.LBB0_32
# %bb.30:
	callq	__tzcalc_limits
	testl	%eax, %eax
	je	.LBB0_31
.LBB0_32:
	movq	80(%r12), %r8
	movq	40(%r12), %rdi
	movq	72(%r12), %rsi
	movq	-64(%rbp), %r9          # 8-byte Reload
	leaq	80(%r9), %r10
	addq	$40, %r9
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	subq	%r8, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rsi, %rax
	jge	.LBB0_35
# %bb.33:
	cmpq	%rdx, %rax
	jl	.LBB0_35
# %bb.34:
	movl	%r15d, %r13d
	movq	%r9, %r12
	movq	%rax, %r15
	jmp	.LBB0_52
.LBB0_28:
	addq	$40, %r12
	xorl	%r13d, %r13d
	jmp	.LBB0_53
.LBB0_35:
	movq	32(%r12), %rsi
	subq	%r8, %rsi
	cmpq	%rsi, %rax
	setge	%cl
	cmpq	%rdx, %rax
	setl	%dl
	movl	%edx, %eax
	andb	%cl, %al
	orb	%cl, %dl
	cmpl	$0, (%r12)
	movzbl	%dl, %ecx
	movzbl	%al, %eax
	cmovel	%ecx, %eax
	movzbl	%al, %ecx
	testl	%r15d, %r15d
	js	.LBB0_36
# %bb.37:
	xorl	%ecx, %r15d
	cmpl	$1, %r15d
	movq	%r9, %r12
	jne	.LBB0_38
# %bb.39:
	movq	%r10, -64(%rbp)         # 8-byte Spill
	subl	%r8d, %edi
	movl	%edi, %eax
	negl	%eax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	testl	%ecx, %ecx
	cmovnel	%edi, %eax
	addl	%eax, (%r14)
	cltq
	addq	%rax, -56(%rbp)         # 8-byte Folded Spill
	movl	12(%r14), %r15d
	movq	%r14, %rdi
	callq	validate_structure
	movl	12(%r14), %eax
	subl	%r15d, %eax
	je	.LBB0_40
# %bb.41:
	cmpl	$-1, %eax
	movl	$1, %ecx
	cmovgel	%eax, %ecx
	cmpl	$1, %eax
	movl	$-1, %eax
	cmovlel	%ecx, %eax
	cltq
	addq	%rax, %rbx
	addl	28(%r14), %eax
	movl	%eax, 28(%r14)
	movq	-64(%rbp), %r10         # 8-byte Reload
	js	.LBB0_42
# %bb.46:
	movl	$365, %ecx              # imm = 0x16D
	testb	$3, %r13b
	jne	.LBB0_49
# %bb.47:
	imull	$-1030792151, %r13d, %edx # imm = 0xC28F5C29
	leal	85899344(%rdx), %esi
	rorl	$2, %esi
	movl	$366, %ecx              # imm = 0x16E
	cmpl	$42949672, %esi         # imm = 0x28F5C28
	ja	.LBB0_49
# %bb.48:
	addl	$85899420, %edx         # imm = 0x51EB89C
	rorl	$4, %edx
	cmpl	$10737419, %edx         # imm = 0xA3D70B
	movl	$365, %ecx              # imm = 0x16D
	adcl	$0, %ecx
.LBB0_49:
	subl	%ecx, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jl	.LBB0_51
# %bb.50:
	movl	%eax, 28(%r14)
	jmp	.LBB0_51
.LBB0_31:
	movq	-64(%rbp), %r12         # 8-byte Reload
	leaq	80(%r12), %r10
	addq	$40, %r12
	movl	%r15d, %r13d
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_52
.LBB0_36:
	movq	%r9, %r12
.LBB0_38:
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	%ecx, %r13d
	jmp	.LBB0_52
.LBB0_40:
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_51
.LBB0_42:
	leal	-1(%r13), %ecx
	movl	$364, %eax              # imm = 0x16C
	testb	$3, %cl
	jne	.LBB0_45
# %bb.43:
	imull	$-1030792151, %ecx, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$2, %ecx
	movl	$365, %eax              # imm = 0x16D
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	ja	.LBB0_45
# %bb.44:
	imull	$-1030792151, %r13d, %ecx # imm = 0xC28F5C29
	addl	$1116691571, %ecx       # imm = 0x428F5C73
	rorl	$4, %ecx
	xorl	%eax, %eax
	cmpl	$10737419, %ecx         # imm = 0xA3D70B
	setb	%al
	orl	$364, %eax              # imm = 0x16C
.LBB0_45:
	movl	%eax, 28(%r14)
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_51:
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB0_52:
	cmpl	$1, %r13d
	cmoveq	%r10, %r12
.LBB0_53:
	addq	(%r12), %r15
	callq	__tz_unlock
	movl	%r13d, 32(%r14)
	addq	$4, %rbx
	movabsq	$5270498306774157605, %rcx # imm = 0x4924924924924925
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	%rdx
	addl	%eax, %edx
	leal	(,%rdx,8), %eax
	subl	%eax, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	leal	7(%rbx,%rdx), %ecx
	cmovnsl	%eax, %ecx
	movl	%ecx, 24(%r14)
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mktime, .Lfunc_end0-mktime
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function validate_structure
	.type	validate_structure,@function
validate_structure:                     # @validate_structure
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	(%rdi), %edi
	cmpl	$59, %edi
	jbe	.LBB1_1
# %bb.2:
	movl	$60, %esi
	callq	div
	movl	4(%r14), %edi
	addl	%eax, %edi
	shrq	$32, %rax
	movl	%edi, 4(%r14)
	movl	%eax, (%r14)
	testl	%eax, %eax
	jns	.LBB1_4
# %bb.3:
	addl	$60, %eax
	movl	%eax, (%r14)
	addl	$-1, %edi
	movl	%edi, 4(%r14)
.LBB1_4:
	cmpl	$59, %edi
	jbe	.LBB1_5
.LBB1_6:
	movl	$60, %esi
	callq	div
	movl	8(%r14), %edi
	addl	%eax, %edi
	shrq	$32, %rax
	movl	%edi, 8(%r14)
	movl	%eax, 4(%r14)
	testl	%eax, %eax
	jns	.LBB1_8
# %bb.7:
	addl	$60, %eax
	movl	%eax, 4(%r14)
	addl	$-1, %edi
	movl	%edi, 8(%r14)
	jmp	.LBB1_8
.LBB1_1:
	movl	4(%r14), %edi
	cmpl	$59, %edi
	ja	.LBB1_6
.LBB1_5:
	movl	8(%r14), %edi
.LBB1_8:
	cmpl	$24, %edi
	jb	.LBB1_11
# %bb.9:
	movl	$24, %esi
	callq	div
	movl	12(%r14), %ecx
	addl	%eax, %ecx
	shrq	$32, %rax
	movl	%ecx, 12(%r14)
	movl	%eax, 8(%r14)
	testl	%eax, %eax
	jns	.LBB1_11
# %bb.10:
	addl	$24, %eax
	movl	%eax, 8(%r14)
	addl	$-1, %ecx
	movl	%ecx, 12(%r14)
.LBB1_11:
	movl	16(%r14), %edi
	cmpl	$11, %edi
	jbe	.LBB1_12
# %bb.13:
                                        # kill: def $edi killed $edi killed $rdi
	movl	$12, %esi
	callq	div
	movl	20(%r14), %edx
	addl	%eax, %edx
	movq	%rax, %rdi
	shrq	$32, %rdi
	leaq	20(%r14), %r8
	movl	%edx, 20(%r14)
	movl	%edi, 16(%r14)
	testl	%edi, %edi
	jns	.LBB1_15
# %bb.14:
	addl	$12, %edi
	movl	%edi, 16(%r14)
	addl	$-1, %edx
	movl	%edx, 20(%r14)
	jmp	.LBB1_15
.LBB1_12:
	leaq	20(%r14), %r8
	movl	20(%r14), %edx
.LBB1_15:
	movl	$28, %r9d
	testb	$3, %dl
	jne	.LBB1_19
# %bb.16:
	imull	$-1030792151, %edx, %eax # imm = 0xC28F5C29
	leal	85899344(%rax), %ecx
	rorl	$2, %ecx
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	jbe	.LBB1_17
.LBB1_18:
	movl	$29, %r9d
	jmp	.LBB1_19
.LBB1_17:
	addl	$85899420, %eax         # imm = 0x51EB89C
	rorl	$4, %eax
	cmpl	$10737418, %eax         # imm = 0xA3D70A
	jbe	.LBB1_18
.LBB1_19:
	movl	12(%r14), %ecx
	testl	%ecx, %ecx
	jle	.LBB1_20
.LBB1_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	movl	%edx, %esi
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_30 Depth=2
	subl	%r9d, %ecx
	movl	%ecx, 12(%r14)
	movl	$2, 16(%r14)
	movl	$2, %edi
.LBB1_30:                               #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edi, %rdx
	movl	%r9d, %eax
	cmpl	$1, %edi
	je	.LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=2
	movl	DAYS_IN_MONTH(,%rdx,4), %eax
.LBB1_32:                               #   in Loop: Header=BB1_30 Depth=2
	cmpl	%eax, %ecx
	jle	.LBB1_29
# %bb.33:                               #   in Loop: Header=BB1_30 Depth=2
	cmpl	$1, %edi
	je	.LBB1_34
# %bb.35:                               #   in Loop: Header=BB1_30 Depth=2
	subl	DAYS_IN_MONTH(,%rdx,4), %ecx
	movl	%ecx, 12(%r14)
	addl	$1, %edi
	movl	%edi, 16(%r14)
	cmpl	$12, %edi
	jne	.LBB1_30
# %bb.36:                               #   in Loop: Header=BB1_30 Depth=2
	leal	1(%rsi), %edx
	movl	%edx, 20(%r14)
	movl	$0, 16(%r14)
	movl	$28, %r9d
	xorl	%edi, %edi
	testb	$3, %dl
	jne	.LBB1_39
# %bb.37:                               #   in Loop: Header=BB1_30 Depth=2
	imull	$-1030792151, %edx, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$2, %eax
	cmpl	$42949672, %eax         # imm = 0x28F5C28
	ja	.LBB1_40
# %bb.38:                               #   in Loop: Header=BB1_30 Depth=2
	imull	$-1030792151, %esi, %eax # imm = 0xC28F5C29
	addl	$-944892731, %eax       # imm = 0xC7AE14C5
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	jae	.LBB1_39
.LBB1_40:                               #   in Loop: Header=BB1_30 Depth=2
	movl	$29, %r9d
	movl	%edx, %esi
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_20 Depth=1
	leal	-1(%rdx), %ebx
	movl	%ebx, (%r8)
	movl	$11, %esi
	movl	$28, %r9d
	testb	$3, %bl
	je	.LBB1_22
.LBB1_26:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	%esi, %rax
	movl	DAYS_IN_MONTH(,%rax,4), %eax
	movl	%ebx, %edx
	movl	%esi, %edi
.LBB1_27:                               #   in Loop: Header=BB1_20 Depth=1
	addl	%eax, %ecx
	jg	.LBB1_28
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	subl	$1, %esi
	jb	.LBB1_21
# %bb.25:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$1, %edi
	movl	%edx, %ebx
	movl	%r9d, %eax
	cmpl	$1, %esi
	jne	.LBB1_26
	jmp	.LBB1_27
.LBB1_22:                               #   in Loop: Header=BB1_20 Depth=1
	imull	$-1030792151, %ebx, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$2, %eax
	cmpl	$42949672, %eax         # imm = 0x28F5C28
	jbe	.LBB1_23
.LBB1_24:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$29, %r9d
	jmp	.LBB1_26
.LBB1_23:                               #   in Loop: Header=BB1_20 Depth=1
	imull	$-1030792151, %edx, %eax # imm = 0xC28F5C29
	addl	$1116691571, %eax       # imm = 0x428F5C73
	rorl	$4, %eax
	cmpl	$10737418, %eax         # imm = 0xA3D70A
	ja	.LBB1_26
	jmp	.LBB1_24
.LBB1_28:
	movl	%edi, 16(%r14)
	movl	%ecx, 12(%r14)
.LBB1_29:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	validate_structure, .Lfunc_end1-validate_structure
                                        # -- End function
	.type	_DAYS_BEFORE_MONTH,@object # @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	4
_DAYS_BEFORE_MONTH:
	.long	0                       # 0x0
	.long	31                      # 0x1f
	.long	59                      # 0x3b
	.long	90                      # 0x5a
	.long	120                     # 0x78
	.long	151                     # 0x97
	.long	181                     # 0xb5
	.long	212                     # 0xd4
	.long	243                     # 0xf3
	.long	273                     # 0x111
	.long	304                     # 0x130
	.long	334                     # 0x14e
	.size	_DAYS_BEFORE_MONTH, 48

	.type	DAYS_IN_MONTH,@object   # @DAYS_IN_MONTH
	.p2align	4
DAYS_IN_MONTH:
	.long	31                      # 0x1f
	.long	28                      # 0x1c
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.size	DAYS_IN_MONTH, 48

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
