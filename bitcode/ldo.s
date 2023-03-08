	.text
	.file	"ldo.c"
	.hidden	luaD_seterrorobj        # -- Begin function luaD_seterrorobj
	.globl	luaD_seterrorobj
	.p2align	4, 0x90
	.type	luaD_seterrorobj,@function
luaD_seterrorobj:                       # @luaD_seterrorobj
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %r14
	leal	-2(%rsi), %eax
	cmpl	$2, %eax
	jb	.LBB0_6
# %bb.1:
	cmpl	$5, %esi
	je	.LBB0_5
# %bb.2:
	cmpl	$4, %esi
	jne	.LBB0_8
# %bb.3:
	movl	$.L.str, %esi
	movl	$17, %edx
	jmp	.LBB0_4
.LBB0_6:
	movq	16(%r14), %rax
	movq	-16(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	-8(%rax), %eax
	jmp	.LBB0_7
.LBB0_5:
	movl	$.L.str.1, %esi
	movl	$23, %edx
.LBB0_4:
	movq	%r14, %rdi
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, %eax
.LBB0_7:
	movl	%eax, 8(%rbx)
.LBB0_8:
	addq	$16, %rbx
	movq	%rbx, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaD_seterrorobj, .Lfunc_end0-luaD_seterrorobj
                                        # -- End function
	.hidden	luaD_throw              # -- Begin function luaD_throw
	.globl	luaD_throw
	.p2align	4, 0x90
	.type	luaD_throw,@function
luaD_throw:                             # @luaD_throw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	168(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_15
# %bb.1:
	movb	%r14b, 10(%rbx)
	movq	32(%rbx), %rax
	cmpq	$0, 152(%rax)
	je	.LBB1_14
# %bb.2:
	movq	80(%rbx), %rax
	movq	%rax, 40(%rbx)
	movq	(%rax), %rsi
	movq	%rsi, 24(%rbx)
	movq	%rbx, %rdi
	callq	luaF_close
	movq	24(%rbx), %r15
	leal	-2(%r14), %eax
	cmpl	$2, %eax
	jb	.LBB1_8
# %bb.3:
	cmpl	$5, %r14d
	je	.LBB1_7
# %bb.4:
	cmpl	$4, %r14d
	jne	.LBB1_10
# %bb.5:
	movl	$.L.str, %esi
	movl	$17, %edx
	jmp	.LBB1_6
.LBB1_15:
	movl	%r14d, 72(%rdi)
	addq	$8, %rdi
	movl	$1, %esi
	callq	longjmp
.LBB1_8:
	movq	16(%rbx), %rax
	movq	-16(%rax), %rcx
	movq	%rcx, (%r15)
	movl	-8(%rax), %eax
	jmp	.LBB1_9
.LBB1_7:
	movl	$.L.str.1, %esi
	movl	$23, %edx
.LBB1_6:
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, (%r15)
	movl	$4, %eax
.LBB1_9:
	movl	%eax, 8(%r15)
.LBB1_10:
	addq	$16, %r15
	movq	%r15, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	98(%rbx), %eax
	movw	%ax, 96(%rbx)
	movb	$1, 101(%rbx)
	movslq	92(%rbx), %rax
	cmpq	$20001, %rax            # imm = 0x4E21
	jl	.LBB1_13
# %bb.11:
	movq	40(%rbx), %rcx
	movq	80(%rbx), %r14
	subq	%r14, %rcx
	shrq	$3, %rcx
	imull	$-858993459, %ecx, %ecx # imm = 0xCCCCCCCD
	cmpl	$19998, %ecx            # imm = 0x4E1E
	jg	.LBB1_13
# %bb.12:
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movl	$800000, %ecx           # imm = 0xC3500
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaM_realloc_
	movq	%rax, 80(%rbx)
	movl	$20000, 92(%rbx)        # imm = 0x4E20
	movq	40(%rbx), %rcx
	subq	%r14, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx)
	addq	$799960, %rax           # imm = 0xC34D8
	movq	%rax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %rax
	movq	%rbx, %rdi
	callq	*152(%rax)
.LBB1_14:
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	luaD_throw, .Lfunc_end1-luaD_throw
                                        # -- End function
	.hidden	luaD_rawrunprotected    # -- Begin function luaD_rawrunprotected
	.globl	luaD_rawrunprotected
	.p2align	4, 0x90
	.type	luaD_rawrunprotected,@function
luaD_rawrunprotected:                   # @luaD_rawrunprotected
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$0, -32(%rbp)
	movq	168(%rdi), %rax
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, 168(%rdi)
	leaq	-96(%rbp), %rdi
	callq	setjmp
	testl	%eax, %eax
	jne	.LBB2_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%r14
.LBB2_2:
	movq	-104(%rbp), %rax
	movq	%rax, 168(%rbx)
	movl	-32(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaD_rawrunprotected, .Lfunc_end2-luaD_rawrunprotected
                                        # -- End function
	.hidden	luaD_reallocstack       # -- Begin function luaD_reallocstack
	.globl	luaD_reallocstack
	.p2align	4, 0x90
	.type	luaD_reallocstack,@function
luaD_reallocstack:                      # @luaD_reallocstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	64(%rdi), %rbx
	leal	6(%r15), %r12d
	cmpl	$-7, %esi
	jl	.LBB3_2
# %bb.1:
	movslq	88(%r14), %rdx
	shlq	$4, %rdx
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaM_realloc_
	jmp	.LBB3_3
.LBB3_2:
	movq	%r14, %rdi
	callq	luaM_toobig
.LBB3_3:
	movq	%rax, 64(%r14)
	movl	%r12d, 88(%r14)
	movslq	%r15d, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	%rcx, 56(%r14)
	movq	16(%r14), %rcx
	movq	152(%r14), %rdx
	subq	%rbx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 16(%r14)
	testq	%rdx, %rdx
	je	.LBB3_6
# %bb.4:
	movq	(%rdx), %rcx
	movq	16(%rdx), %rsi
	subq	%rbx, %rsi
	addq	%rsi, %rax
	movq	%rax, 16(%rdx)
	testq	%rcx, %rcx
	je	.LBB3_6
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rax
	movq	16(%rcx), %rdx
	subq	%rbx, %rdx
	addq	64(%r14), %rdx
	movq	%rdx, 16(%rcx)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.LBB3_5
.LBB3_6:
	movq	80(%r14), %rcx
	movq	40(%r14), %rdx
	movq	64(%r14), %rax
	cmpq	%rdx, %rcx
	ja	.LBB3_9
	.p2align	4, 0x90
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rcx), %rsi
	subq	%rbx, %rsi
	addq	%rax, %rsi
	movq	%rsi, 16(%rcx)
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	subq	%rbx, %rsi
	addq	%rax, %rsi
	movq	%rsi, (%rcx)
	subq	%rbx, %rdi
	addq	%rax, %rdi
	movq	%rdi, 8(%rcx)
	addq	$40, %rcx
	cmpq	%rdx, %rcx
	jbe	.LBB3_7
.LBB3_9:
	movq	24(%r14), %rcx
	subq	%rbx, %rcx
	addq	%rcx, %rax
	movq	%rax, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaD_reallocstack, .Lfunc_end3-luaD_reallocstack
                                        # -- End function
	.hidden	luaD_reallocCI          # -- Begin function luaD_reallocCI
	.globl	luaD_reallocCI
	.p2align	4, 0x90
	.type	luaD_reallocCI,@function
luaD_reallocCI:                         # @luaD_reallocCI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	80(%rdi), %r14
	cmpl	$-1, %esi
	jl	.LBB4_2
# %bb.1:
	movslq	92(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movslq	%r15d, %r12
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,4), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaM_realloc_
	jmp	.LBB4_3
.LBB4_2:
	movq	%rbx, %rdi
	callq	luaM_toobig
	movslq	%r15d, %r12
.LBB4_3:
	movq	%rax, 80(%rbx)
	movl	%r15d, 92(%rbx)
	movq	40(%rbx), %rcx
	subq	%r14, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx)
	leaq	(%r12,%r12,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$-40, %rax
	movq	%rax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaD_reallocCI, .Lfunc_end4-luaD_reallocCI
                                        # -- End function
	.hidden	luaD_growstack          # -- Begin function luaD_growstack
	.globl	luaD_growstack
	.p2align	4, 0x90
	.type	luaD_growstack,@function
luaD_growstack:                         # @luaD_growstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %eax
	movl	88(%rdi), %esi
	cmpl	%eax, %esi
	jge	.LBB5_1
# %bb.2:
	addl	%eax, %esi
	jmp	.LBB5_3
.LBB5_1:
	addl	%esi, %esi
.LBB5_3:
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaD_growstack, .Lfunc_end5-luaD_growstack
                                        # -- End function
	.hidden	luaD_callhook           # -- Begin function luaD_callhook
	.globl	luaD_callhook
	.p2align	4, 0x90
	.type	luaD_callhook,@function
luaD_callhook:                          # @luaD_callhook
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	112(%rdi), %r14
	testq	%r14, %r14
	je	.LBB6_10
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$0, 101(%rdi)
	je	.LBB6_10
# %bb.2:
	movq	16(%rbx), %rax
	movq	40(%rbx), %rcx
	movq	64(%rbx), %rdi
	movq	16(%rcx), %r15
	movl	%esi, -152(%rbp)
	movl	%edx, -112(%rbp)
	xorl	%edx, %edx
	cmpl	$4, %esi
	je	.LBB6_4
# %bb.3:
	movq	%rcx, %rdx
	subq	80(%rbx), %rdx
	shrq	$3, %rdx
	imull	$-858993459, %edx, %edx # imm = 0xCCCCCCCD
.LBB6_4:
	movq	%rax, %r12
	subq	%rdi, %r12
	subq	%rdi, %r15
	movl	%edx, -36(%rbp)
	movq	56(%rbx), %rdx
	subq	%rax, %rdx
	cmpq	$320, %rdx              # imm = 0x140
	jg	.LBB6_9
# %bb.5:
	movl	88(%rbx), %esi
	cmpl	$20, %esi
	jge	.LBB6_6
# %bb.7:
	addl	$20, %esi
	jmp	.LBB6_8
.LBB6_6:
	addl	%esi, %esi
.LBB6_8:
	movq	%rbx, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
	movq	40(%rbx), %rcx
.LBB6_9:
	addq	$16, %rcx
	addq	$320, %rax              # imm = 0x140
	movq	%rax, (%rcx)
	movb	$0, 101(%rbx)
	leaq	-152(%rbp), %rsi
	movq	%rbx, %rdi
	callq	*%r14
	movb	$1, 101(%rbx)
	movq	40(%rbx), %rax
	movq	64(%rbx), %rcx
	addq	%rcx, %r15
	movq	%r15, 16(%rax)
	addq	%rcx, %r12
	movq	%r12, 16(%rbx)
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaD_callhook, .Lfunc_end6-luaD_callhook
                                        # -- End function
	.hidden	luaD_precall            # -- Begin function luaD_precall
	.globl	luaD_precall
	.p2align	4, 0x90
	.type	luaD_precall,@function
luaD_precall:                           # @luaD_precall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpl	$6, 8(%rsi)
	jne	.LBB7_2
# %bb.1:
	leaq	64(%r15), %r8
	jmp	.LBB7_13
.LBB7_2:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	$16, %edx
	callq	luaT_gettmbyobj
	movq	%rax, %r12
	movq	%rbx, %r14
	subq	64(%r15), %r14
	cmpl	$6, 8(%rax)
	je	.LBB7_4
# %bb.3:
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	luaG_typeerror
.LBB7_4:
	movq	16(%r15), %rax
	cmpq	%rbx, %rax
	jbe	.LBB7_7
	.p2align	4, 0x90
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rax), %rcx
	movq	%rcx, (%rax)
	movl	-8(%rax), %ecx
	movl	%ecx, 8(%rax)
	addq	$-16, %rax
	cmpq	%rbx, %rax
	ja	.LBB7_5
# %bb.6:
	movq	16(%r15), %rax
.LBB7_7:
	movq	56(%r15), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB7_12
# %bb.8:
	movl	88(%r15), %esi
	testl	%esi, %esi
	jle	.LBB7_10
# %bb.9:
	addl	%esi, %esi
	jmp	.LBB7_11
.LBB7_10:
	addl	$1, %esi
.LBB7_11:
	movq	%r15, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
.LBB7_12:
	leaq	64(%r15), %r8
	addq	$16, %rax
	movq	%rax, 16(%r15)
	movq	64(%r15), %rax
	leaq	(%rax,%r14), %rbx
	movq	(%r12), %rcx
	movq	%rcx, (%rax,%r14)
	movl	8(%r12), %ecx
	movl	%ecx, 8(%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_13:
	movq	64(%r15), %r14
	movq	(%rbx), %rax
	subq	%r14, %rbx
	movq	40(%r15), %rcx
	movq	48(%r15), %rdx
	movq	%rdx, 24(%rcx)
	cmpb	$0, 10(%rax)
	je	.LBB7_14
# %bb.71:
	movq	56(%r15), %rax
	subq	16(%r15), %rax
	cmpq	$320, %rax              # imm = 0x140
	jg	.LBB7_76
# %bb.72:
	movq	%r8, %r14
	movl	88(%r15), %esi
	cmpl	$20, %esi
	jge	.LBB7_73
# %bb.74:
	addl	$20, %esi
	jmp	.LBB7_75
.LBB7_14:
	movq	56(%r15), %rcx
	subq	16(%r15), %rcx
	movq	32(%rax), %r12
	movzbl	115(%r12), %eax
	movq	%rax, %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB7_19
# %bb.15:
	movq	%r8, %r14
	movl	88(%r15), %esi
	cmpl	%eax, %esi
	jge	.LBB7_16
# %bb.17:
	addl	%eax, %esi
	jmp	.LBB7_18
.LBB7_73:
	addl	%esi, %esi
.LBB7_75:
	movq	%r15, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
	movq	%r14, %r8
.LBB7_76:
	cmpq	72(%r15), %rcx
	je	.LBB7_77
# %bb.84:
	addq	$40, %rcx
	movq	%rcx, 40(%r15)
	jmp	.LBB7_85
.LBB7_77:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	%rbx, %r13
	movslq	92(%r15), %rbx
	cmpq	$20001, %rbx            # imm = 0x4E21
	jge	.LBB7_92
# %bb.78:
	movq	%r8, -72(%rbp)          # 8-byte Spill
	leaq	(%rbx,%rbx), %r14
	movq	80(%r15), %r12
	testl	%ebx, %ebx
	js	.LBB7_80
# %bb.79:
	movq	%rbx, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(,%r14,8), %rax
	leaq	(%rax,%rax,4), %rcx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	luaM_realloc_
	movq	%r14, %rdx
	jmp	.LBB7_81
.LBB7_16:
	addl	%esi, %esi
.LBB7_18:
	movq	%r15, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r8
	movq	(%r14), %r14
.LBB7_19:
	addq	%rbx, %r14
	movb	114(%r12), %al
	testb	%al, %al
	je	.LBB7_20
# %bb.22:
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	16(%r15), %r9
	movq	%r9, %rsi
	subq	%r14, %rsi
	shrq	$4, %rsi
	leal	-1(%rsi), %ebx
	movzbl	113(%r12), %r14d
	movl	%r14d, %ecx
	subl	%esi, %ecx
	jl	.LBB7_32
# %bb.23:
	movl	%ecx, %edi
	addl	$1, %edi
	andl	$7, %edi
	je	.LBB7_24
# %bb.25:                               # %.preheader7
	negl	%edi
	xorl	%ebx, %ebx
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB7_26:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rdx)
	addq	$16, %rdx
	addl	$-1, %ebx
	cmpl	%ebx, %edi
	jne	.LBB7_26
# %bb.27:                               # %.loopexit8
	notl	%ebx
	addl	%esi, %ebx
	cmpl	$7, %ecx
	jae	.LBB7_29
	jmp	.LBB7_31
.LBB7_20:
	leaq	16(%r14), %r9
	movzbl	113(%r12), %eax
	shlq	$4, %rax
	addq	%r14, %rax
	addq	$16, %rax
	cmpq	%rax, 16(%r15)
	jbe	.LBB7_55
# %bb.21:
	movq	%rax, 16(%r15)
	jmp	.LBB7_55
.LBB7_80:
	movq	%r15, %rdi
	callq	luaM_toobig
	movslq	%r14d, %rdx
.LBB7_81:
	movq	%rax, 80(%r15)
	movl	%r14d, 92(%r15)
	movq	40(%r15), %rcx
	subq	%r12, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%r15)
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	addq	$-40, %rax
	movq	%rax, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10001, %ebx            # imm = 0x2711
	jl	.LBB7_83
# %bb.82:
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movq	40(%r15), %rcx
.LBB7_83:
	addq	$40, %rcx
	movq	%rcx, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
.LBB7_85:
	movq	(%r8), %rax
	leaq	(%rax,%rbx), %rdx
	movq	%rdx, 8(%rcx)
	addq	%rbx, %rax
	addq	$16, %rax
	movq	%rax, (%rcx)
	movq	%rax, 24(%r15)
	movl	$320, %eax              # imm = 0x140
	addq	16(%r15), %rax
	movq	%rax, 16(%rcx)
	movl	%r13d, 32(%rcx)
	testb	$1, 100(%r15)
	je	.LBB7_87
# %bb.86:
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	movq	40(%r15), %rcx
.LBB7_87:
	addq	$8, %rcx
	movq	(%rcx), %rax
	movq	(%rax), %rax
	movq	%r15, %rdi
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB7_88
# %bb.89:
	movq	16(%r15), %rsi
	cltq
	shlq	$4, %rax
	subq	%rax, %rsi
	movq	%r15, %rdi
	callq	luaD_poscall
	movl	$1, %ebx
	jmp	.LBB7_90
.LBB7_88:
	movl	$2, %ebx
	jmp	.LBB7_90
.LBB7_24:
	movq	%r9, %rdx
	cmpl	$7, %ecx
	jb	.LBB7_31
.LBB7_29:                               # %.preheader5
	addq	$120, %rdx
	movl	%r14d, %esi
	subl	%ebx, %esi
	.p2align	4, 0x90
.LBB7_30:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rdx)
	movl	$0, -96(%rdx)
	movl	$0, -80(%rdx)
	movl	$0, -64(%rdx)
	movl	$0, -48(%rdx)
	movl	$0, -32(%rdx)
	movl	$0, -16(%rdx)
	movl	$0, (%rdx)
	subq	$-128, %rdx
	addl	$-8, %esi
	jne	.LBB7_30
.LBB7_31:
	shlq	$4, %rcx
	addq	%rcx, %r9
	addq	$16, %r9
	movq	%r9, 16(%r15)
	movl	%r14d, %ebx
.LBB7_32:
	testb	$4, %al
	jne	.LBB7_34
# %bb.33:
	xorl	%r10d, %r10d
	testb	%r14b, %r14b
	jne	.LBB7_46
	jmp	.LBB7_52
.LBB7_34:
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	32(%r15), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB7_36
# %bb.35:
	movq	%r15, %rdi
	callq	luaC_step
	movq	16(%r15), %r9
.LBB7_36:
	movl	%ebx, %r13d
	subl	%r14d, %r13d
	movq	56(%r15), %rcx
	subq	%r9, %rcx
	movzbl	115(%r12), %eax
	movq	%rax, %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB7_41
# %bb.37:
	movl	88(%r15), %esi
	cmpl	%eax, %esi
	jge	.LBB7_38
# %bb.39:
	addl	%eax, %esi
	jmp	.LBB7_40
.LBB7_38:
	addl	%esi, %esi
.LBB7_40:
	movq	%r15, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
.LBB7_41:
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	luaH_new
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%r13d, -48(%rbp)        # 4-byte Spill
	testl	%r13d, %r13d
	jle	.LBB7_44
# %bb.42:
	movl	-48(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %r12
	movl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	shlq	$4, %r12
	negq	%r12
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB7_43:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %r13
	addq	$1, %r14
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	luaH_setnum
	movq	(%r13,%r12), %rcx
	movq	%rcx, (%rax)
	movl	8(%r13,%r12), %ecx
	movl	%ecx, 8(%rax)
	addq	$16, %r12
	cmpq	%r14, -96(%rbp)         # 8-byte Folded Reload
	jne	.LBB7_43
.LBB7_44:
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	luaS_newlstr
	movq	%r15, %rdi
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	luaH_setstr
	cvtsi2sdl	-48(%rbp), %xmm0 # 4-byte Folded Reload
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	movq	16(%r15), %r9
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r13, %r10
	movl	%eax, %r13d
	testb	%r14b, %r14b
	je	.LBB7_52
.LBB7_46:
	movslq	%ebx, %rsi
	movq	%rsi, %rcx
	negq	%rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%r9, %rax
	subq	%rdx, %rax
	leaq	16(%r9), %rdx
	movq	%rdx, 16(%r15)
	movq	(%rax), %rdx
	movq	%rdx, (%r9)
	shlq	$4, %rcx
	movl	8(%r9,%rcx), %edx
	movl	%edx, 8(%r9)
	movl	$0, 8(%r9,%rcx)
	cmpb	$1, %r14b
	je	.LBB7_52
# %bb.47:
	movl	%r14d, %ecx
	notb	%cl
	andb	$1, %cl
	movl	$1, %edx
	cmpb	$2, %r14b
	je	.LBB7_50
# %bb.48:
	movzbl	%cl, %edx
	movl	$2, %edi
	subq	%rsi, %rdi
	shlq	$4, %rdi
	leaq	(%r9,%rdi), %rsi
	addq	$8, %rsi
	subq	%rdx, %r14
	movl	$1, %edx
	.p2align	4, 0x90
.LBB7_49:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	leaq	16(%rdi), %rbx
	movq	%rbx, 16(%r15)
	movq	-24(%rsi), %rbx
	movq	%rbx, (%rdi)
	movl	-16(%rsi), %ebx
	movl	%ebx, 8(%rdi)
	movl	$0, -16(%rsi)
	movq	16(%r15), %rdi
	leaq	16(%rdi), %rbx
	movq	%rbx, 16(%r15)
	movq	-8(%rsi), %rbx
	movq	%rbx, (%rdi)
	movl	(%rsi), %ebx
	movl	%ebx, 8(%rdi)
	movl	$0, (%rsi)
	addq	$2, %rdx
	addq	$32, %rsi
	cmpq	%rdx, %r14
	jne	.LBB7_49
.LBB7_50:
	testb	%cl, %cl
	je	.LBB7_52
# %bb.51:
	movq	16(%r15), %rcx
	shlq	$4, %rdx
	leaq	16(%rcx), %rsi
	movq	%rsi, 16(%r15)
	movq	(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	movl	8(%rax,%rdx), %esi
	movl	%esi, 8(%rcx)
	movl	$0, 8(%rax,%rdx)
.LBB7_52:
	testq	%r10, %r10
	je	.LBB7_54
# %bb.53:
	movq	16(%r15), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 16(%r15)
	movq	%r10, (%rax)
	movl	$5, 8(%rax)
.LBB7_54:
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r14         # 8-byte Reload
	addq	(%r8), %r14
.LBB7_55:
	movq	40(%r15), %rdx
	cmpq	72(%r15), %rdx
	je	.LBB7_56
# %bb.63:
	addq	$40, %rdx
	movq	%rdx, 40(%r15)
	jmp	.LBB7_64
.LBB7_56:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movslq	92(%r15), %r12
	cmpq	$20001, %r12            # imm = 0x4E21
	movq	%r15, %r13
	jge	.LBB7_91
# %bb.57:
	movq	%r9, -56(%rbp)          # 8-byte Spill
	leaq	(%r12,%r12), %r15
	movq	80(%r13), %rbx
	testl	%r12d, %r12d
	js	.LBB7_59
# %bb.58:
	movq	%r12, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(,%r15,8), %rax
	leaq	(%rax,%rax,4), %rcx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	luaM_realloc_
	movq	%r15, %rcx
	jmp	.LBB7_60
.LBB7_59:
	movq	%r13, %rdi
	callq	luaM_toobig
	movslq	%r15d, %rcx
.LBB7_60:
	movq	%rax, 80(%r13)
	movl	%r15d, 92(%r13)
	movq	40(%r13), %rdx
	subq	%rbx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 40(%r13)
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$-40, %rax
	movq	%rax, 72(%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10001, %r12d           # imm = 0x2711
	movq	%r13, %r15
	jl	.LBB7_62
# %bb.61:
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movq	40(%r15), %rdx
.LBB7_62:
	addq	$40, %rdx
	movq	%rdx, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB7_64:
	movq	%r14, 8(%rdx)
	movq	%r9, (%rdx)
	movq	%r9, 24(%r15)
	movzbl	115(%r12), %ecx
	shlq	$4, %rcx
	addq	%r9, %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%r12), %rax
	movq	%rax, 48(%r15)
	movl	$0, 36(%rdx)
	movl	%r13d, 32(%rdx)
	movq	16(%r15), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB7_69
# %bb.65:
	movq	%rdx, %rsi
	notq	%rsi
	addq	%rcx, %rsi
	movl	%esi, %edi
	shrl	$4, %edi
	addl	$1, %edi
	andq	$7, %rdi
	je	.LBB7_67
	.p2align	4, 0x90
.LBB7_66:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rdx)
	addq	$16, %rdx
	addq	$-1, %rdi
	jne	.LBB7_66
.LBB7_67:
	cmpq	$112, %rsi
	jb	.LBB7_69
	.p2align	4, 0x90
.LBB7_68:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rdx)
	movl	$0, 24(%rdx)
	movl	$0, 40(%rdx)
	movl	$0, 56(%rdx)
	movl	$0, 72(%rdx)
	movl	$0, 88(%rdx)
	movl	$0, 104(%rdx)
	movl	$0, 120(%rdx)
	subq	$-128, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB7_68
.LBB7_69:
	movq	%rcx, 16(%r15)
	xorl	%ebx, %ebx
	testb	$1, 100(%r15)
	je	.LBB7_90
# %bb.70:
	addq	$4, %rax
	movq	%rax, 48(%r15)
	xorl	%ebx, %ebx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	addq	$-4, 48(%r15)
.LBB7_90:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_92:
	movq	%r15, %rdi
	movl	$5, %esi
	callq	luaD_throw
.LBB7_91:
	movq	%r13, %rdi
	movl	$5, %esi
	callq	luaD_throw
.Lfunc_end7:
	.size	luaD_precall, .Lfunc_end7-luaD_precall
                                        # -- End function
	.hidden	luaD_poscall            # -- Begin function luaD_poscall
	.globl	luaD_poscall
	.p2align	4, 0x90
	.type	luaD_poscall,@function
luaD_poscall:                           # @luaD_poscall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testb	$2, 100(%rdi)
	je	.LBB8_7
# %bb.1:
	subq	64(%r14), %rbx
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	movq	40(%r14), %rax
	movq	8(%rax), %rcx
	movq	(%rcx), %rcx
	cmpb	$0, 10(%rcx)
	jne	.LBB8_6
# %bb.2:
	testb	$2, 100(%r14)
	jne	.LBB8_3
.LBB8_6:
	addq	64(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB8_7:
	movq	40(%r14), %rdx
	leaq	-40(%rdx), %rax
	movq	%rax, 40(%r14)
	movq	-40(%rdx), %rsi
	movq	8(%rdx), %rcx
	movl	32(%rdx), %eax
	movq	%rsi, 24(%r14)
	movq	-16(%rdx), %rdx
	movq	%rdx, 48(%r14)
	testl	%eax, %eax
	je	.LBB8_14
# %bb.8:                                # %.preheader1
	leal	1(%rax), %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	cmpq	16(%r14), %rbx
	jae	.LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	movq	(%rbx), %rdi
	movq	%rdi, (%rcx)
	movl	8(%rbx), %edi
	movl	%edi, 8(%rcx)
	addq	$16, %rcx
	addl	$1, %esi
	addq	$16, %rbx
	cmpl	%esi, %eax
	jne	.LBB8_9
	jmp	.LBB8_14
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	subl	$1, 36(%rax)
	jb	.LBB8_6
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r14, %rdi
	movl	$4, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	testb	$2, 100(%r14)
	je	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	40(%r14), %rax
	jmp	.LBB8_3
.LBB8_11:
	movl	%eax, %edi
	subl	%esi, %edi
	testl	%edi, %edi
	jle	.LBB8_14
# %bb.12:                               # %.preheader
	subl	%esi, %edx
	.p2align	4, 0x90
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rcx)
	addq	$16, %rcx
	addl	$-1, %edx
	cmpl	$1, %edx
	jg	.LBB8_13
.LBB8_14:
	movq	%rcx, 16(%r14)
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaD_poscall, .Lfunc_end8-luaD_poscall
                                        # -- End function
	.hidden	luaD_call               # -- Begin function luaD_call
	.globl	luaD_call
	.p2align	4, 0x90
	.type	luaD_call,@function
luaD_call:                              # @luaD_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	96(%rdi), %eax
	addl	$1, %eax
	movw	%ax, 96(%rdi)
	movzwl	%ax, %eax
	cmpl	$200, %eax
	jb	.LBB9_4
# %bb.1:
	jne	.LBB9_3
# %bb.2:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB9_4
.LBB9_3:
	cmpl	$225, %eax
	jae	.LBB9_9
.LBB9_4:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	luaD_precall
	testl	%eax, %eax
	jne	.LBB9_6
# %bb.5:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaV_execute
.LBB9_6:
	addw	$-1, 96(%rbx)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB9_8
# %bb.7:
	movq	%rbx, %rdi
	callq	luaC_step
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_9:
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	luaD_throw
.Lfunc_end9:
	.size	luaD_call, .Lfunc_end9-luaD_call
                                        # -- End function
	.globl	lua_resume              # -- Begin function lua_resume
	.p2align	4, 0x90
	.type	lua_resume,@function
lua_resume:                             # @lua_resume
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r12
	movb	10(%rdi), %al
	testb	%al, %al
	je	.LBB10_3
# %bb.1:
	cmpb	$1, %al
	je	.LBB10_8
# %bb.2:
	movq	40(%r12), %rax
	jmp	.LBB10_4
.LBB10_3:
	movq	40(%r12), %rax
	cmpq	80(%r12), %rax
	je	.LBB10_8
.LBB10_4:
	movq	(%rax), %rbx
	movq	%rbx, 16(%r12)
	movl	$.L.str.3, %edi
	callq	strlen
	movl	$.L.str.3, %esi
	jmp	.LBB10_5
.LBB10_8:
	movzwl	96(%r12), %eax
	cmpl	$200, %eax
	jb	.LBB10_13
# %bb.9:
	movq	40(%r12), %rax
	movq	(%rax), %rbx
	movq	%rbx, 16(%r12)
	movl	$.L.str.2, %edi
	callq	strlen
	movl	$.L.str.2, %esi
.LBB10_5:
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, 8(%rbx)
	movq	16(%r12), %rax
	movq	56(%r12), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB10_12
# %bb.6:
	movl	88(%r12), %esi
	testl	%esi, %esi
	jle	.LBB10_10
# %bb.7:
	addl	%esi, %esi
	jmp	.LBB10_11
.LBB10_13:
	addl	$1, %eax
	movw	%ax, 96(%r12)
	movw	%ax, 98(%r12)
	movq	16(%r12), %r15
	movl	$0, -40(%rbp)
	movq	168(%r12), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 168(%r12)
	leaq	-104(%rbp), %rdi
	callq	setjmp
	testl	%eax, %eax
	jne	.LBB10_22
# %bb.14:
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, %r15
	cmpb	$0, 10(%r12)
	je	.LBB10_18
# %bb.15:
	movq	40(%r12), %rax
	movb	$0, 10(%r12)
	movq	8(%rax), %rcx
	movq	(%rcx), %rcx
	cmpb	$0, 10(%rcx)
	je	.LBB10_19
# %bb.16:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	luaD_poscall
	testl	%eax, %eax
	je	.LBB10_20
# %bb.17:
	movq	40(%r12), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%r12)
	jmp	.LBB10_20
.LBB10_10:
	addl	$1, %esi
.LBB10_11:
	movq	%r12, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
.LBB10_12:
	addq	$16, %rax
	movq	%rax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
	jmp	.LBB10_34
.LBB10_18:
	addq	$-16, %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$-1, %edx
	callq	luaD_precall
	testl	%eax, %eax
	jne	.LBB10_21
	jmp	.LBB10_20
.LBB10_19:
	movq	(%rax), %rax
	movq	%rax, 24(%r12)
.LBB10_20:
	movq	40(%r12), %rax
	subq	80(%r12), %rax
	shrq	$3, %rax
	imull	$-858993459, %eax, %esi # imm = 0xCCCCCCCD
	movq	%r12, %rdi
	callq	luaV_execute
.LBB10_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:
	movq	-112(%rbp), %rax
	movq	%rax, 168(%r12)
	movl	-40(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB10_27
# %bb.23:
	movb	%r14b, 10(%r12)
	movq	16(%r12), %r15
	leal	-2(%r14), %eax
	cmpl	$2, %eax
	jb	.LBB10_28
# %bb.24:
	cmpl	$5, %r14d
	je	.LBB10_29
# %bb.25:
	cmpl	$4, %r14d
	jne	.LBB10_32
# %bb.26:
	movl	$.L.str, %esi
	movl	$17, %edx
	jmp	.LBB10_30
.LBB10_27:
	movzbl	10(%r12), %r14d
	jmp	.LBB10_33
.LBB10_28:
	movq	-16(%r15), %rax
	movq	%rax, (%r15)
	movl	-8(%r15), %eax
	jmp	.LBB10_31
.LBB10_29:
	movl	$.L.str.1, %esi
	movl	$23, %edx
.LBB10_30:
	movq	%r12, %rdi
	callq	luaS_newlstr
	movq	%rax, (%r15)
	movl	$4, %eax
.LBB10_31:
	movl	%eax, 8(%r15)
.LBB10_32:
	addq	$16, %r15
	movq	%r15, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r12), %rax
	movq	%r15, 16(%rax)
.LBB10_33:
	addw	$-1, 96(%r12)
.LBB10_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lua_resume, .Lfunc_end10-lua_resume
                                        # -- End function
	.globl	lua_yield               # -- Begin function lua_yield
	.p2align	4, 0x90
	.type	lua_yield,@function
lua_yield:                              # @lua_yield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movzwl	96(%rdi), %eax
	cmpw	98(%rdi), %ax
	jbe	.LBB11_2
# %bb.1:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB11_2:
	movq	16(%rbx), %rax
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	%rax, 24(%rbx)
	movb	$1, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	lua_yield, .Lfunc_end11-lua_yield
                                        # -- End function
	.hidden	luaD_pcall              # -- Begin function luaD_pcall
	.globl	luaD_pcall
	.p2align	4, 0x90
	.type	luaD_pcall,@function
luaD_pcall:                             # @luaD_pcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rcx, %r15
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzwl	96(%rdi), %eax
	movw	%ax, -44(%rbp)          # 2-byte Spill
	movq	40(%rdi), %r13
	movq	80(%rdi), %r12
	movb	101(%rdi), %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	movq	176(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r8, 176(%rdi)
	movl	$0, -72(%rbp)
	movq	168(%rdi), %rax
	movq	%rax, -144(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, 168(%rdi)
	leaq	-136(%rbp), %rdi
	callq	setjmp
	testl	%eax, %eax
	jne	.LBB12_2
# %bb.1:
	movq	%rbx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*%r14
.LBB12_2:
	movq	-144(%rbp), %rax
	movq	%rax, 168(%rbx)
	movl	-72(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB12_15
# %bb.3:
	subq	%r12, %r13
	addq	64(%rbx), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaF_close
	leal	-2(%r14), %eax
	cmpl	$2, %eax
	jb	.LBB12_8
# %bb.4:
	cmpl	$5, %r14d
	je	.LBB12_7
# %bb.5:
	cmpl	$4, %r14d
	movb	-41(%rbp), %r12b        # 1-byte Reload
	jne	.LBB12_11
# %bb.6:
	movl	$.L.str, %esi
	movl	$17, %edx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, (%r15)
	movl	$4, %eax
	jmp	.LBB12_10
.LBB12_8:
	movq	16(%rbx), %rax
	movq	-16(%rax), %rcx
	movq	%rcx, (%r15)
	movl	-8(%rax), %eax
	jmp	.LBB12_9
.LBB12_7:
	movl	$.L.str.1, %esi
	movl	$23, %edx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, (%r15)
	movl	$4, %eax
.LBB12_9:
	movb	-41(%rbp), %r12b        # 1-byte Reload
.LBB12_10:
	movl	%eax, 8(%r15)
.LBB12_11:
	addq	$16, %r15
	movq	%r15, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-44(%rbp), %eax         # 2-byte Folded Reload
	movw	%ax, 96(%rbx)
	movq	80(%rbx), %r15
	leaq	(%r15,%r13), %rax
	movq	%rax, 40(%rbx)
	movq	(%r15,%r13), %rax
	movq	%rax, 24(%rbx)
	movq	24(%r15,%r13), %rax
	movq	%rax, 48(%rbx)
	movb	%r12b, 101(%rbx)
	movslq	92(%rbx), %rax
	cmpq	$20001, %rax            # imm = 0x4E21
	jl	.LBB12_14
# %bb.12:
	shrq	$3, %r13
	imull	$-858993459, %r13d, %ecx # imm = 0xCCCCCCCD
	cmpl	$19998, %ecx            # imm = 0x4E1E
	jg	.LBB12_14
# %bb.13:
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movl	$800000, %ecx           # imm = 0xC3500
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaM_realloc_
	movq	%rax, 80(%rbx)
	movl	$20000, 92(%rbx)        # imm = 0x4E20
	movq	40(%rbx), %rcx
	subq	%r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx)
	addq	$799960, %rax           # imm = 0xC34D8
	movq	%rax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_15:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 176(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	luaD_pcall, .Lfunc_end12-luaD_pcall
                                        # -- End function
	.hidden	luaD_protectedparser    # -- Begin function luaD_protectedparser
	.globl	luaD_protectedparser
	.p2align	4, 0x90
	.type	luaD_protectedparser,@function
luaD_protectedparser:                   # @luaD_protectedparser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	16(%rdi), %rcx
	movq	176(%rdi), %r8
	subq	64(%rdi), %rcx
	leaq	-56(%rbp), %rdx
	movl	$f_parser, %esi
	callq	luaD_pcall
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaD_protectedparser, .Lfunc_end13-luaD_protectedparser
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_parser
	.type	f_parser,@function
f_parser:                               # @f_parser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	callq	luaZ_lookahead
	movq	32(%r14), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB14_2
# %bb.1:
	movq	%r14, %rdi
	callq	luaC_step
.LBB14_2:
	movq	(%rbx), %rsi
	movq	32(%rbx), %rcx
	leaq	8(%rbx), %rdx
	movq	%r14, %rdi
	callq	luaY_parser
	movq	%rax, %r15
	movzbl	112(%rax), %esi
	movq	120(%r14), %rdx
	movq	%r14, %rdi
	callq	luaF_newLclosure
	movq	%rax, %r12
	movq	%r15, 32(%rax)
	cmpb	$0, 112(%r15)
	je	.LBB14_5
# %bb.3:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	luaF_newupval
	movq	%rax, 40(%r12,%rbx,8)
	addq	$1, %rbx
	movzbl	112(%r15), %eax
	cmpq	%rax, %rbx
	jb	.LBB14_4
.LBB14_5:
	movq	16(%r14), %rax
	movq	%r12, (%rax)
	movl	$6, 8(%rax)
	movq	16(%r14), %rax
	movq	56(%r14), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB14_10
# %bb.6:
	movl	88(%r14), %esi
	testl	%esi, %esi
	jle	.LBB14_8
# %bb.7:
	addl	%esi, %esi
	jmp	.LBB14_9
.LBB14_8:
	addl	$1, %esi
.LBB14_9:
	movq	%r14, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rax
.LBB14_10:
	addq	$16, %rax
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	f_parser, .Lfunc_end14-f_parser
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not enough memory"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"error in error handling"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"C stack overflow"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cannot resume non-suspended coroutine"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"attempt to yield across metamethod/C-call boundary"
	.size	.L.str.4, 51

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"call"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"stack overflow"
	.size	.L.str.7, 15

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaS_newlstr
	.hidden	luaM_realloc_
	.hidden	luaM_toobig
	.hidden	luaG_runerror
	.hidden	luaV_execute
	.hidden	luaC_step
	.hidden	luaF_close
	.hidden	luaT_gettmbyobj
	.hidden	luaG_typeerror
	.hidden	luaH_new
	.hidden	luaH_setnum
	.hidden	luaH_setstr
	.hidden	luaZ_lookahead
	.hidden	luaY_parser
	.hidden	luaF_newLclosure
	.hidden	luaF_newupval
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
