	.text
	.file	"redis-check-aof.c"
	.globl	consumeNewline          # -- Begin function consumeNewline
	.p2align	4, 0x90
	.type	consumeNewline,@function
consumeNewline:                         # @consumeNewline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1024, %rsp             # imm = 0x400
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	movl	$2, %edx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movsbl	(%rbx), %ecx
	movsbl	1(%rbx), %r8d
	xorl	%ebx, %ebx
	leaq	-1040(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB0_3
.LBB0_1:
	movl	$1, %ebx
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$1024, %rsp             # imm = 0x400
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	consumeNewline, .Lfunc_end0-consumeNewline
                                        # -- End function
	.globl	readLong                # -- Begin function readLong
	.p2align	4, 0x90
	.type	readLong,@function
readLong:                               # @readLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1160, %rsp             # imm = 0x488
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	ftello
	movq	%rax, epos(%rip)
	leaq	-160(%rbp), %rdi
	movl	$128, %esi
	movq	%rbx, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movsbl	-160(%rbp), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r15b, %r8b
	jne	.LBB1_3
# %bb.4:
	leaq	-159(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	callq	strtol
	movq	%rax, (%r14)
	movq	-32(%rbp), %rbx
	movl	$.L.str, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_5
# %bb.6:
	movsbl	(%rbx), %ecx
	movsbl	1(%rbx), %r8d
	xorl	%ebx, %ebx
	leaq	-1184(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB1_7
.LBB1_1:
	xorl	%ebx, %ebx
	jmp	.LBB1_8
.LBB1_3:
	movsbl	%r15b, %ecx
	xorl	%ebx, %ebx
	leaq	-1184(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB1_8
.LBB1_5:
	movl	$1, %ebx
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$1160, %rsp             # imm = 0x488
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	readLong, .Lfunc_end1-readLong
                                        # -- End function
	.globl	readBytes               # -- Begin function readBytes
	.p2align	4, 0x90
	.type	readBytes,@function
readBytes:                              # @readBytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	ftello
	movq	%rax, epos(%rip)
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	cmpq	%r15, %rax
	je	.LBB2_2
# %bb.1:
	xorl	%r14d, %r14d
	leaq	-1056(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	snprintf
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	readBytes, .Lfunc_end2-readBytes
                                        # -- End function
	.globl	readString              # -- Begin function readString
	.p2align	4, 0x90
	.type	readString,@function
readString:                             # @readString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	$0, (%rsi)
	leaq	-48(%rbp), %rdx
	movl	$36, %esi
	callq	readLong
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_1
# %bb.2:
	movq	-48(%rbp), %r13
	leaq	2(%r13), %rbx
	movq	%rbx, -48(%rbp)
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, %r12
	movq	%rax, (%r14)
	movq	%r15, %rdi
	callq	ftello
	movq	%rax, epos(%rip)
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB3_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rbx
	addq	%r13, %rbx
	movl	$.L.str, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_7
# %bb.6:
	movsbl	(%rbx), %ecx
	movsbl	1(%rbx), %r8d
	xorl	%r14d, %r14d
	leaq	-1072(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%rbx, %r8
	jmp	.LBB3_4
.LBB3_1:
	xorl	%r14d, %r14d
	jmp	.LBB3_8
.LBB3_3:
	xorl	%r14d, %r14d
	leaq	-1072(%rbp), %r15
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%r15, %r8
.LBB3_4:
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_8
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movb	$0, (%rax,%r13)
	movl	$1, %r14d
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	readString, .Lfunc_end3-readString
                                        # -- End function
	.globl	readArgc                # -- Begin function readArgc
	.p2align	4, 0x90
	.type	readArgc,@function
readArgc:                               # @readArgc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movl	$42, %esi
	callq	readLong
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	readArgc, .Lfunc_end4-readArgc
                                        # -- End function
	.globl	process                 # -- Begin function process
	.p2align	4, 0x90
	.type	process,@function
process:                                # @process
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdi, %rbx
	xorl	%r13d, %r13d
	leaq	-72(%rbp), %r15
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%rbx, %rdi
	callq	ftello
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%rbx, %rdi
	movl	$42, %esi
	movq	%r15, %rdx
	callq	readLong
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_4
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jle	.LBB5_1
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%r13, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_7
	.p2align	4, 0x90
.LBB5_9:                                #   in Loop: Header=BB5_7 Depth=2
	movl	%r15d, %r14d
.LBB5_10:                               #   in Loop: Header=BB5_7 Depth=2
	movq	%rbx, %rdi
	callq	zfree
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jle	.LBB5_11
.LBB5_7:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %r15d
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	callq	readString
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_19
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx
	testq	%r13, %r13
	jne	.LBB5_9
# %bb.12:                               #   in Loop: Header=BB5_7 Depth=2
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_7 Depth=2
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB5_9
# %bb.16:                               #   in Loop: Header=BB5_7 Depth=2
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	je	.LBB5_10
	jmp	.LBB5_17
.LBB5_13:                               #   in Loop: Header=BB5_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testl	%r15d, %r15d
	je	.LBB5_10
	jmp	.LBB5_14
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	leaq	-72(%rbp), %r15
	jmp	.LBB5_1
.LBB5_4:
	movl	%r14d, %r15d
	jmp	.LBB5_23
.LBB5_19:
	movq	-64(%rbp), %rbx
.LBB5_20:
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_22
# %bb.21:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB5_22:
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB5_23:
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB5_27
# %bb.24:
	andl	$32, %eax
	testw	%ax, %ax
	je	.LBB5_27
# %bb.25:
	movl	$error, %edi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB5_27
# %bb.26:
	leaq	-1104(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB5_27:
	movl	$error, %edi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_29
# %bb.28:
	movl	$.L.str.10, %edi
	movl	$error, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
.LBB5_29:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_14:
	addl	$1, %r15d
	leaq	-1104(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.6, %edx
	jmp	.LBB5_18
.LBB5_17:
	leaq	-1104(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.8, %edx
.LBB5_18:
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	epos(%rip), %rcx
	movl	$error, %edi
	movl	$1044, %esi             # imm = 0x414
	movl	$.L.str.2, %edx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_20
.Lfunc_end5:
	.size	process, .Lfunc_end5-process
                                        # -- End function
	.globl	redis_check_aof_main    # -- Begin function redis_check_aof_main
	.p2align	4, 0x90
	.type	redis_check_aof_main,@function
redis_check_aof_main:                   # @redis_check_aof_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edi
	jg	.LBB6_2
# %bb.1:
	movq	(%r15), %rsi
	movl	$.L.str.11, %edi
	jmp	.LBB6_7
.LBB6_2:
	movl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	jne	.LBB6_8
# %bb.3:
	xorl	%r12d, %r12d
	movl	$1, %eax
.LBB6_4:
	movq	(%r15,%rax,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.15, %esi
	movq	%r13, %rdi
	callq	fopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB6_14
# %bb.5:
	movl	$.L.str.16, %edi
	jmp	.LBB6_6
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ebx
	jne	.LBB6_12
# %bb.9:
	movq	8(%r15), %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_11
# %bb.10:
	movl	$1, %r12d
	movl	$2, %eax
	jmp	.LBB6_4
.LBB6_14:
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	fileno
	leaq	-144(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB6_16
# %bb.15:
	movl	$.L.str.17, %edi
	jmp	.LBB6_6
.LBB6_12:
	movl	$.L.str.14, %edi
.LBB6_13:
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB6_16:
	movl	%r12d, -52(%rbp)        # 4-byte Spill
	movq	-128(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB6_18
# %bb.17:
	movl	$.L.str.18, %edi
.LBB6_6:
	movq	%r13, %rsi
.LBB6_7:
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB6_11:
	movq	8(%r15), %rsi
	movl	$.L.str.13, %edi
	jmp	.LBB6_7
.LBB6_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %r12
	jl	.LBB6_27
# %bb.19:
	leaq	-45(%rbp), %rdi
	movl	$5, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB6_24
# %bb.20:
	leaq	-45(%rbp), %rdi
	movl	$.L.str.19, %esi
	movl	$5, %edx
	callq	memcmp
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rewind
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB6_26
# %bb.21:
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	redis_check_rdb_main
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB6_23
# %bb.22:
	movl	$.L.str.21, %edi
	jmp	.LBB6_13
.LBB6_24:
	movq	%r14, %rdi
	callq	rewind
	jmp	.LBB6_25
.LBB6_23:
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	callq	printf
.LBB6_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_27:
	movq	%r14, %rdi
	callq	process
	movq	%rax, %rbx
	movq	%r12, %rcx
	subq	%rax, %rcx
	movl	$.L.str.23, %edi
	movq	%r12, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	printf
	movq	%r12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %rdx
	jle	.LBB6_36
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	jne	.LBB6_29
# %bb.35:
	movl	$.L.str.30, %edi
	jmp	.LBB6_13
.LBB6_36:
	movl	$.L.str.31, %edi
.LBB6_37:
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	fclose
	xorl	%edi, %edi
	callq	exit
.LBB6_29:
	movl	$.L.str.24, %edi
	movq	%r12, %rsi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf
	callq	__getreent
	movq	8(%rax), %rdx
	leaq	-45(%rbp), %rdi
	movl	$2, %esi
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_31
# %bb.30:
	leaq	-45(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$1, %edx
	callq	strncasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_31
# %bb.32:
	movq	%r14, %rdi
	callq	fileno
	movl	%eax, %edi
	movq	%rbx, %rsi
	callq	ftruncate
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB6_34
# %bb.33:
	movl	$.L.str.28, %edi
	jmp	.LBB6_13
.LBB6_31:
	movl	$.L.str.27, %edi
	jmp	.LBB6_13
.LBB6_34:
	movl	$.L.str.29, %edi
	jmp	.LBB6_37
.Lfunc_end6:
	.size	redis_check_aof_main, .Lfunc_end6-redis_check_aof_main
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\r\n"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Expected \\r\\n, got: %02x%02x"
	.size	.L.str.1, 29

	.type	error,@object           # @error
	.local	error
	.comm	error,1044,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0x%16llx: %s"
	.size	.L.str.2, 13

	.type	epos,@object            # @epos
	.local	epos
	.comm	epos,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Expected prefix '%c', got: '%c'"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Expected to read %ld bytes, got %ld bytes"
	.size	.L.str.4, 42

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"multi"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unexpected MULTI"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"exec"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Unexpected EXEC"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Reached EOF before reading EXEC for MULTI"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s\n"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Usage: %s [--fix] <file.aof>\n"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"--fix"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Invalid argument: %s\n"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Invalid arguments\n"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"r+"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Cannot open file: %s\n"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Cannot stat file: %s\n"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Empty file: %s\n"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"REDIS"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The AOF appears to start with an RDB preamble.\nChecking the RDB preamble to start:\n"
	.size	.L.str.20, 84

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RDB preamble of AOF file is not sane, aborting.\n"
	.size	.L.str.21, 49

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RDB preamble is OK, proceeding with AOF tail...\n"
	.size	.L.str.22, 49

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\n"
	.size	.L.str.23, 51

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\n"
	.size	.L.str.24, 74

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Continue? [y/N]: "
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"y"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Aborting...\n"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Failed to truncate AOF\n"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Successfully truncated AOF\n"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"AOF is not valid. Use the --fix option to try fixing it.\n"
	.size	.L.str.30, 58

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"AOF is valid\n"
	.size	.L.str.31, 14

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
