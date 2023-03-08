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
	movq	%rax, -56(%rbp)         # 8-byte Spill
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
	movl	$42, __A_VARIABLE(%rip)
	movl	20(%r14), %r13d
	cmpq	$2, %rdi
	jl	.LBB0_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r13b
	jne	.LBB0_6
# %bb.2:
	imull	$-1030792151, %r13d, %esi # imm = 0xC28F5C29
	leal	85899344(%rsi), %edi
	rorl	$2, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42949672, %edi         # imm = 0x28F5C28
	jbe	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	addq	$1, %rbx
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	%ebx, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	cmpl	$10000, %r13d           # imm = 0x2710
	jg	.LBB0_71
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10000, %r13d          # imm = 0xD8F0
	jl	.LBB0_71
# %bb.9:
	imulq	$60, %rdx, %rdx
	addq	%rax, %rdx
	imulq	$3600, %rcx, %r12       # imm = 0xE10
	addq	%rdx, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$71, %r13d
	jl	.LBB0_16
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$70, %eax
	movl	$-1970, %ecx            # imm = 0xF84E
	movl	$1970, %edx             # imm = 0x7B2
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$366, %esi              # imm = 0x16E
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	addq	%rsi, %rbx
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ecx
	addl	$1, %edx
	cmpl	%eax, %r13d
	je	.LBB0_30
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$365, %esi              # imm = 0x16D
	testb	$3, %al
	jne	.LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	%eax, %edi
	imulq	$1374389535, %rdi, %rdi # imm = 0x51EB851F
	shrq	$37, %rdi
	imull	$100, %edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edi
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	%edx, %edi
	imulq	$1374389535, %rdi, %rdi # imm = 0x51EB851F
	shrq	$39, %rdi
	imull	$400, %edi, %edi        # imm = 0x190
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edi
	jne	.LBB0_15
	jmp	.LBB0_14
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$70, %r13d
	jne	.LBB0_18
# %bb.17:
	movl	$70, %r13d
	jmp	.LBB0_30
.LBB0_3:
	addl	$85899420, %esi         # imm = 0x51EB89C
	rorl	$4, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10737419, %esi         # imm = 0xA3D70B
	jae	.LBB0_7
	jmp	.LBB0_5
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$365, %eax              # imm = 0x16D
	cmpl	$68, %r13d
	jg	.LBB0_29
# %bb.19:                               # %.preheader
	movl	$1969, %eax             # imm = 0x7B1
	xorl	%edx, %edx
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=1
	movl	$366, %ecx              # imm = 0x16E
.LBB0_24:                               #   in Loop: Header=BB0_20 Depth=1
	subq	%rcx, %rbx
	leal	-1901(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %cl
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	cmpl	%r13d, %ecx
	jle	.LBB0_25
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	$365, %ecx              # imm = 0x16D
	testb	$1, %dl
	je	.LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	leal	-1900(%rax), %edx
	imull	$-1030792151, %edx, %edx # imm = 0xC28F5C29
	addl	$85899344, %edx         # imm = 0x51EB850
	rorl	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42949672, %edx         # imm = 0x28F5C28
	ja	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	imull	$-1030792151, %eax, %edx # imm = 0xC28F5C29
	addl	$85899344, %edx         # imm = 0x51EB850
	rorl	$4, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10737418, %edx         # imm = 0xA3D70A
	ja	.LBB0_24
	jmp	.LBB0_23
.LBB0_25:
	movl	$365, %eax              # imm = 0x16D
	testb	$3, %cl
	jne	.LBB0_29
# %bb.26:
	imull	$-1030792151, %r13d, %ecx # imm = 0xC28F5C29
	leal	85899344(%rcx), %edx
	rorl	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42949672, %edx         # imm = 0x28F5C28
	jbe	.LBB0_27
.LBB0_28:
	movl	$366, %eax              # imm = 0x16E
	jmp	.LBB0_29
.LBB0_27:
	addl	$85899420, %ecx         # imm = 0x51EB89C
	rorl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10737418, %ecx         # imm = 0xA3D70A
	jbe	.LBB0_28
.LBB0_29:
	subq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:
	imulq	$86400, %rbx, %rax      # imm = 0x15180
	addq	%rax, %r12
	callq	__tz_lock
	callq	_tzset_unlocked
	cmpl	$0, _daylight(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_31
# %bb.33:
	movl	$1900, %edi             # imm = 0x76C
	addl	20(%r14), %edi
	movl	32(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	testl	%eax, %eax
	jg	.LBB0_35
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
.LBB0_35:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpl	4(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_37
# %bb.36:
	callq	__tzcalc_limits
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_67
.LBB0_37:
	movq	80(%rcx), %r8
	movq	32(%rcx), %rsi
	movq	40(%rcx), %rax
	movq	72(%rcx), %rdi
	movq	%rdi, %rdx
	subq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r12
	setl	%dl
	jl	.LBB0_40
# %bb.38:
	subq	%r8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r12
	jge	.LBB0_40
# %bb.39:
	movl	%r15d, %edx
	jmp	.LBB0_66
.LBB0_40:
	subq	%r8, %rsi
	cmpl	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_43
# %bb.41:
	cmpq	%rsi, %r12
	jge	.LBB0_44
# %bb.42:
	xorl	%edi, %edi
	jmp	.LBB0_45
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_32
.LBB0_43:
	movb	$1, %dil
	cmpq	%rsi, %r12
	jge	.LBB0_45
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %edi
.LBB0_45:
	movzbl	%dil, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB0_66
# %bb.46:
	xorl	%edx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	jne	.LBB0_66
# %bb.47:
	subl	%r8d, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	jne	.LBB0_49
# %bb.48:
	negl	%eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_49:
	addl	%eax, (%r14)
	cltq
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	12(%r14), %r15d
	movq	%r14, %rdi
	callq	validate_structure
	movl	12(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %eax
	je	.LBB0_50
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	cmpl	$1, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jg	.LBB0_53
# %bb.52:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpl	$-2, %eax
	jg	.LBB0_54
.LBB0_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
.LBB0_54:
	cltq
	addq	%rax, %rbx
	addl	28(%r14), %eax
	movl	%eax, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_55
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$365, %edi              # imm = 0x16D
	testb	$3, %r13b
	jne	.LBB0_62
# %bb.60:
	imull	$-1030792151, %r13d, %edx # imm = 0xC28F5C29
	leal	85899344(%rdx), %esi
	rorl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$366, %edi              # imm = 0x16E
	cmpl	$42949672, %esi         # imm = 0x28F5C28
	ja	.LBB0_62
# %bb.61:
	addl	$85899420, %edx         # imm = 0x51EB89C
	rorl	$4, %edx
	cmpl	$10737419, %edx         # imm = 0xA3D70B
	movl	$42, __A_VARIABLE(%rip)
	movl	$365, %edi              # imm = 0x16D
	adcl	$0, %edi
.LBB0_62:
	movl	$42, __A_VARIABLE(%rip)
	subl	%edi, %eax
	jl	.LBB0_65
# %bb.63:
	movl	%eax, 28(%r14)
	jmp	.LBB0_64
.LBB0_50:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_65
.LBB0_55:
	leal	-1(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$364, %eax              # imm = 0x16C
	testb	$3, %dl
	jne	.LBB0_58
# %bb.56:
	imull	$-1030792151, %edx, %edx # imm = 0xC28F5C29
	addl	$85899344, %edx         # imm = 0x51EB850
	rorl	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$365, %eax              # imm = 0x16D
	cmpl	$42949672, %edx         # imm = 0x28F5C28
	ja	.LBB0_58
# %bb.57:
	imull	$-1030792151, %r13d, %edx # imm = 0xC28F5C29
	addl	$1116691571, %edx       # imm = 0x428F5C73
	rorl	$4, %edx
	xorl	%eax, %eax
	cmpl	$10737419, %edx         # imm = 0xA3D70B
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	orl	$364, %eax              # imm = 0x16C
.LBB0_58:
	movl	%eax, 28(%r14)
.LBB0_64:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_65:
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB0_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r15d
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	jne	.LBB0_32
# %bb.68:
	addq	$80, %rcx
	movl	$1, %r15d
	jmp	.LBB0_69
.LBB0_32:
	addq	$40, %rcx
.LBB0_69:
	addq	(%rcx), %r12
	movl	$42, __A_VARIABLE(%rip)
	callq	__tz_unlock
	movl	%r15d, 32(%r14)
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
	addl	%edx, %ebx
	movl	%ebx, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_71
# %bb.70:
	addl	$7, %ebx
	movl	%ebx, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_71:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	(%rdi), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$59, %edi
	jle	.LBB1_2
.LBB1_3:
	movl	$60, %esi
	callq	div
	movl	4(%rbx), %edi
	addl	%eax, %edi
	shrq	$32, %rax
	movl	%edi, 4(%rbx)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_5
# %bb.4:
	addl	$60, %eax
	movl	%eax, (%rbx)
	addl	$-1, %edi
	movl	%edi, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_5
.LBB1_2:
	movl	4(%rbx), %edi
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$59, %edi
	jle	.LBB1_7
.LBB1_8:
	movl	$60, %esi
	callq	div
	movl	8(%rbx), %edi
	addl	%eax, %edi
	shrq	$32, %rax
	movl	%edi, 8(%rbx)
	movl	%eax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_10
# %bb.9:
	addl	$60, %eax
	movl	%eax, 4(%rbx)
	addl	$-1, %edi
	movl	%edi, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_10
.LBB1_7:
	movl	8(%rbx), %edi
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$24, %edi
	jl	.LBB1_14
.LBB1_12:
	movl	$24, %esi
	callq	div
	movl	12(%rbx), %ecx
	addl	%eax, %ecx
	shrq	$32, %rax
	movl	%ecx, 12(%rbx)
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_14
# %bb.13:
	addl	$24, %eax
	movl	%eax, 8(%rbx)
	addl	$-1, %ecx
	movl	%ecx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	movl	16(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_17
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %edi
	jle	.LBB1_16
.LBB1_17:
                                        # kill: def $edi killed $edi killed $rdi
	movl	$12, %esi
	callq	div
	movl	20(%rbx), %r9d
	addl	%eax, %r9d
	movq	%rax, %rdi
	shrq	$32, %rdi
	movl	%r9d, 20(%rbx)
	movl	%edi, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jns	.LBB1_19
# %bb.18:
	addl	$12, %edi
	movl	%edi, 16(%rbx)
	addl	$-1, %r9d
	movl	%r9d, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_19
.LBB1_16:
	movl	20(%rbx), %r9d
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %r8d
	testb	$3, %r9b
	jne	.LBB1_24
# %bb.20:
	imull	$-1030792151, %r9d, %eax # imm = 0xC28F5C29
	leal	85899344(%rax), %ecx
	rorl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	jbe	.LBB1_21
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_23
.LBB1_21:
	addl	$85899420, %eax         # imm = 0x51EB89C
	rorl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %r8d
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	jae	.LBB1_25
.LBB1_23:
	movl	$29, %r8d
.LBB1_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_25:
	movl	12(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB1_37
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_27
	.p2align	4, 0x90
.LBB1_41:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	%r8d, %eax
	movl	%eax, 12(%rbx)
	movl	$2, 16(%rbx)
	movl	$2, %edi
	movl	%r9d, %esi
.LBB1_47:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %r9d
.LBB1_48:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_37:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdx
	movl	%r8d, %ecx
	cmpl	$1, %edi
	je	.LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	movl	DAYS_IN_MONTH(,%rdx,4), %ecx
.LBB1_39:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jle	.LBB1_36
# %bb.40:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edi
	je	.LBB1_41
# %bb.42:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	DAYS_IN_MONTH(,%rdx,4), %eax
	movl	%eax, 12(%rbx)
	addl	$1, %edi
	movl	%edi, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %edi
	jne	.LBB1_48
# %bb.43:                               #   in Loop: Header=BB1_37 Depth=1
	leal	1(%r9), %esi
	movl	%esi, 20(%rbx)
	movl	$0, 16(%rbx)
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %r8d
	testb	$3, %sil
	jne	.LBB1_47
# %bb.44:                               #   in Loop: Header=BB1_37 Depth=1
	imull	$-1030792151, %esi, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	jbe	.LBB1_45
.LBB1_46:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$29, %r8d
	jmp	.LBB1_47
.LBB1_45:                               #   in Loop: Header=BB1_37 Depth=1
	imull	$-1030792151, %r9d, %ecx # imm = 0xC28F5C29
	addl	$-944892731, %ecx       # imm = 0xC7AE14C5
	rorl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10737418, %ecx         # imm = 0xA3D70A
	ja	.LBB1_47
	jmp	.LBB1_46
	.p2align	4, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_27 Depth=1
	leal	-1(%r9), %esi
	movl	%esi, 20(%rbx)
	movl	$11, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %r8d
	testb	$3, %sil
	je	.LBB1_29
.LBB1_32:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$11, %edi
.LBB1_34:                               #   in Loop: Header=BB1_27 Depth=1
	movslq	%edi, %rcx
	movl	DAYS_IN_MONTH(,%rcx,4), %ecx
	movl	%edi, %edx
	movl	%esi, %r9d
.LBB1_35:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %edi
	addl	%ecx, %eax
	movl	%eax, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_36
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	subl	$1, %edi
	movl	%edi, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_28
# %bb.33:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	movl	%r9d, %esi
	movl	%r8d, %ecx
	cmpl	$1, %edi
	jne	.LBB1_34
	jmp	.LBB1_35
.LBB1_29:                               #   in Loop: Header=BB1_27 Depth=1
	imull	$-1030792151, %esi, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	jbe	.LBB1_30
.LBB1_31:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$29, %r8d
	jmp	.LBB1_32
.LBB1_30:                               #   in Loop: Header=BB1_27 Depth=1
	imull	$-1030792151, %r9d, %ecx # imm = 0xC28F5C29
	addl	$1116691571, %ecx       # imm = 0x428F5C73
	rorl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10737418, %ecx         # imm = 0xA3D70A
	ja	.LBB1_32
	jmp	.LBB1_31
.LBB1_36:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
