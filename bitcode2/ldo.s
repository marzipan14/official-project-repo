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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB1_16
# %bb.1:
	movb	%r14b, 10(%rbx)
	movq	32(%rbx), %rax
	cmpq	$0, 152(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_15
# %bb.2:
	movq	80(%rbx), %rax
	movq	%rax, 40(%rbx)
	movq	(%rax), %rsi
	movq	%rsi, 24(%rbx)
	movq	%rbx, %rdi
	callq	luaF_close
	movq	24(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
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
.LBB1_16:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	addq	$16, %r15
	movq	%r15, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	98(%rbx), %eax
	movw	%ax, 96(%rbx)
	movb	$1, 101(%rbx)
	movslq	92(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$20001, %rax            # imm = 0x4E21
	jl	.LBB1_14
# %bb.11:
	movq	40(%rbx), %rcx
	movq	80(%rbx), %r14
	subq	%r14, %rcx
	shrq	$3, %rcx
	imull	$-858993459, %ecx, %ecx # imm = 0xCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19998, %ecx            # imm = 0x4E1E
	jg	.LBB1_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movl	$800000, %ecx           # imm = 0xC3500
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 80(%rbx)
	movl	$20000, 92(%rbx)        # imm = 0x4E20
	movq	40(%rbx), %rcx
	subq	%r14, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx)
	addq	$799960, %rax           # imm = 0xC34D8
	movq	%rax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %rax
	movq	%rbx, %rdi
	callq	*152(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_15:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%r14
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB3_6
# %bb.4:
	movq	(%rdx), %rcx
	movq	16(%rdx), %rsi
	subq	%rbx, %rsi
	addq	%rsi, %rax
	movq	%rax, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB3_6
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rax
	movq	16(%rcx), %rdx
	subq	%rbx, %rdx
	addq	64(%r14), %rdx
	movq	%rdx, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.LBB3_5
.LBB3_6:
	movq	80(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	ja	.LBB3_9
# %bb.7:
	movq	64(%r14), %rdx
	.p2align	4, 0x90
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rsi
	subq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 16(%rax)
	movq	(%rax), %rsi
	movq	8(%rax), %rdi
	subq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, (%rax)
	subq	%rbx, %rdi
	addq	%rdx, %rdi
	movq	%rdi, 8(%rax)
	addq	$40, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB3_8
.LBB3_9:
	movq	24(%r14), %rax
	subq	%rbx, %rax
	addq	64(%r14), %rax
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_3
.LBB4_2:
	movq	%rbx, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB6_10
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$0, 101(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_10
# %bb.2:
	movq	16(%rbx), %rax
	movq	40(%rbx), %rcx
	movq	64(%rbx), %rdi
	movq	16(%rcx), %r15
	movl	%esi, -152(%rbp)
	movl	%edx, -112(%rbp)
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, -36(%rbp)
	movq	56(%rbx), %rdx
	subq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$320, %rdx              # imm = 0x140
	jg	.LBB6_9
# %bb.5:
	movl	88(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%edx, %r15d
	movq	%rdi, %r13
	cmpl	$6, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_2
# %bb.1:
	leaq	64(%r13), %r10
	jmp	.LBB7_13
.LBB7_2:
	movq	%r13, %rdi
	movl	$16, %edx
	movq	%rsi, %rbx
	callq	luaT_gettmbyobj
	movq	%rbx, %rsi
	movq	%rbx, %r14
	subq	64(%r13), %r14
	movq	%rax, %r12
	cmpl	$6, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_4
# %bb.3:
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	callq	luaG_typeerror
	movq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB7_4:
	movq	16(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jbe	.LBB7_7
	.p2align	4, 0x90
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rax), %rcx
	movq	%rcx, (%rax)
	movl	-8(%rax), %ecx
	movl	%ecx, 8(%rax)
	addq	$-16, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	ja	.LBB7_5
# %bb.6:
	movq	16(%r13), %rax
.LBB7_7:
	movq	56(%r13), %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB7_12
# %bb.8:
	movl	88(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB7_10
# %bb.9:
	addl	%esi, %esi
	jmp	.LBB7_11
.LBB7_10:
	addl	$1, %esi
.LBB7_11:
	movq	%r13, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rax
.LBB7_12:
	leaq	64(%r13), %r10
	addq	$16, %rax
	movq	%rax, 16(%r13)
	movq	64(%r13), %rax
	leaq	(%rax,%r14), %rsi
	movq	(%r12), %rcx
	movq	%rcx, (%rax,%r14)
	movl	8(%r12), %ecx
	movl	%ecx, 8(%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_13:
	movq	64(%r13), %r14
	movq	(%rsi), %rax
	subq	%r14, %rsi
	movq	40(%r13), %rcx
	movq	48(%r13), %rdx
	movq	%rdx, 24(%rcx)
	cmpb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_14
# %bb.70:
	movq	56(%r13), %rax
	subq	16(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$320, %rax              # imm = 0x140
	jg	.LBB7_75
# %bb.71:
	movq	%r10, %r14
	movq	%rsi, %rbx
	movl	88(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20, %esi
	jge	.LBB7_72
# %bb.73:
	addl	$20, %esi
	jmp	.LBB7_74
.LBB7_14:
	movq	32(%rax), %r11
	movq	56(%r13), %rcx
	subq	16(%r13), %rcx
	movzbl	115(%r11), %eax
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	movq	%r11, -56(%rbp)         # 8-byte Spill
	jg	.LBB7_19
# %bb.15:
	movq	%r10, %rbx
	movq	%rsi, %r12
	movl	88(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %esi
	jge	.LBB7_16
# %bb.17:
	addl	%eax, %esi
	jmp	.LBB7_18
.LBB7_72:
	addl	%esi, %esi
.LBB7_74:
	movq	%r13, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
	movq	%rbx, %rsi
	movq	%r14, %r10
.LBB7_75:
	cmpq	72(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_76
# %bb.83:
	addq	$40, %rcx
	movq	%rcx, 40(%r13)
	jmp	.LBB7_84
.LBB7_76:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movslq	92(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$20001, %rbx            # imm = 0x4E21
	jge	.LBB7_91
# %bb.77:
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	leaq	(%rbx,%rbx), %r14
	movq	80(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB7_79
# %bb.78:
	movq	%rbx, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(,%r14,8), %rax
	leaq	(%rax,%rax,4), %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdx
	jmp	.LBB7_80
.LBB7_16:
	addl	%esi, %esi
.LBB7_18:
	movq	%r13, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r10
	movq	(%rbx), %r14
	movq	%r12, %rsi
	movq	-56(%rbp), %r11         # 8-byte Reload
.LBB7_19:
	addq	%rsi, %r14
	movb	114(%r11), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_20
# %bb.22:
	movq	16(%r13), %rbx
	movq	%rbx, %rdx
	subq	%r14, %rdx
	shrq	$4, %rdx
	leal	-1(%rdx), %r12d
	movzbl	113(%r11), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %ecx
	jl	.LBB7_32
# %bb.23:
	leal	1(%rcx), %edi
	andl	$3, %edi
	je	.LBB7_27
# %bb.24:                               # %.preheader5
	addq	$16, %rbx
	negl	%edi
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB7_25:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, 16(%r13)
	movl	$0, -8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	addl	$-1, %r12d
	cmpl	%r12d, %edi
	jne	.LBB7_25
# %bb.26:                               # %.loopexit6
	addq	$-16, %rbx
	notl	%r12d
	addl	%edx, %r12d
.LBB7_27:
	cmpl	$3, %ecx
	jb	.LBB7_31
# %bb.28:                               # %.preheader3
	addq	$32, %rbx
	movl	%r14d, %ecx
	subl	%r12d, %ecx
	.p2align	4, 0x90
.LBB7_29:                               # =>This Inner Loop Header: Depth=1
	leaq	-16(%rbx), %rdx
	movq	%rdx, 16(%r13)
	movl	$0, -24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, 16(%r13)
	movl	$0, -8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rbx), %rdx
	movq	%rdx, 16(%r13)
	movl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	32(%rbx), %rdx
	movq	%rdx, 16(%r13)
	movl	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rbx
	addl	$-4, %ecx
	jne	.LBB7_29
# %bb.30:                               # %.loopexit4
	addq	$-32, %rbx
.LBB7_31:
	movl	%r14d, %r12d
.LBB7_32:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB7_34
# %bb.33:
	xorl	%edi, %edi
	jmp	.LBB7_45
.LBB7_20:
	leaq	16(%r14), %rbx
	movzbl	113(%r11), %eax
	shlq	$4, %rax
	addq	%r14, %rax
	addq	$16, %rax
	cmpq	%rax, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB7_56
# %bb.21:
	movq	%rax, 16(%r13)
	jmp	.LBB7_55
.LBB7_34:
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	32(%r13), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB7_36
# %bb.35:
	movq	%r13, %rdi
	callq	luaC_step
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rbx
.LBB7_36:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movl	%r12d, %r15d
	subl	%r14d, %r15d
	movq	56(%r13), %rcx
	subq	%rbx, %rcx
	movzbl	115(%r11), %eax
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jg	.LBB7_41
# %bb.37:
	movl	88(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %esi
	jge	.LBB7_38
# %bb.39:
	addl	%eax, %esi
	jmp	.LBB7_40
.LBB7_79:
	movq	%r13, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rdx
.LBB7_80:
	movq	%rax, 80(%r13)
	movl	%r14d, 92(%r13)
	movq	40(%r13), %rcx
	subq	%r12, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%r13)
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	addq	$-40, %rax
	movq	%rax, 72(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10001, %ebx            # imm = 0x2711
	jl	.LBB7_82
# %bb.81:
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB7_82:
	addq	$40, %rcx
	movq	%rcx, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
.LBB7_84:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r10), %rax
	leaq	(%rax,%rsi), %rdx
	movq	%rdx, 8(%rcx)
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rax, (%rcx)
	movq	%rax, 24(%r13)
	movl	$320, %eax              # imm = 0x140
	addq	16(%r13), %rax
	movq	%rax, 16(%rcx)
	movl	%r15d, 32(%rcx)
	testb	$1, 100(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_86
# %bb.85:
	movq	%r13, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB7_86:
	addq	$8, %rcx
	movq	(%rcx), %rax
	movq	(%rax), %rax
	movq	%r13, %rdi
	callq	*32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB7_87
# %bb.88:
	movq	16(%r13), %rsi
	cltq
	shlq	$4, %rax
	subq	%rax, %rsi
	movq	%r13, %rdi
	callq	luaD_poscall
	movl	$1, %r14d
	jmp	.LBB7_89
.LBB7_87:
	movl	$2, %r14d
	jmp	.LBB7_89
.LBB7_38:
	addl	%esi, %esi
.LBB7_40:
	movq	%r13, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_41:
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	luaH_new
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, -48(%rbp)        # 4-byte Spill
	testl	%r15d, %r15d
	jle	.LBB7_44
# %bb.42:
	movl	-48(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rbx
	movl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	shlq	$4, %rbx
	negq	%rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB7_43:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %r15
	addq	$1, %r14
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	luaH_setnum
	movq	(%r15,%rbx), %rcx
	movq	%rcx, (%rax)
	movl	8(%r15,%rbx), %ecx
	movl	%ecx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%r14, -96(%rbp)         # 8-byte Folded Reload
	jne	.LBB7_43
.LBB7_44:
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	luaS_newlstr
	movq	%r13, %rdi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	luaH_setstr
	cvtsi2sdl	-48(%rbp), %xmm0 # 4-byte Folded Reload
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rbx
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r15, %rdi
	movl	%eax, %r15d
.LBB7_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB7_52
# %bb.46:
	movslq	%r12d, %rax
	movq	%rax, %rcx
	negq	%rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rbx, %r9
	subq	%rdx, %r9
	leaq	16(%rbx), %rdx
	movq	%rdx, 16(%r13)
	movq	(%r9), %rdx
	movq	%rdx, (%rbx)
	shlq	$4, %rcx
	movl	8(%rbx,%rcx), %edx
	movl	%edx, 8(%rbx)
	movl	$0, 8(%rbx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r14b
	je	.LBB7_52
# %bb.47:
	movq	%rdi, %r12
	movl	%r14d, %r8d
	notb	%r8b
	andb	$1, %r8b
	movl	$1, %edx
	cmpb	$2, %r14b
	je	.LBB7_50
# %bb.48:
	movzbl	%r8b, %edx
	movl	$2, %edi
	subq	%rax, %rdi
	shlq	$4, %rdi
	leaq	(%rbx,%rdi), %rax
	addq	$8, %rax
	subq	%rdx, %r14
	movl	$1, %edx
	.p2align	4, 0x90
.LBB7_49:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	leaq	16(%rdi), %rcx
	movq	%rcx, 16(%r13)
	movq	-24(%rax), %rcx
	movq	%rcx, (%rdi)
	movl	-16(%rax), %ecx
	movl	%ecx, 8(%rdi)
	movl	$0, -16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rcx
	leaq	16(%rcx), %rdi
	movq	%rdi, 16(%r13)
	movq	-8(%rax), %rdi
	movq	%rdi, (%rcx)
	movl	(%rax), %edi
	movl	%edi, 8(%rcx)
	movl	$0, (%rax)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rax
	cmpq	%rdx, %r14
	jne	.LBB7_49
.LBB7_50:
	testb	%r8b, %r8b
	movq	%r12, %rdi
	je	.LBB7_52
# %bb.51:
	movq	16(%r13), %rcx
	shlq	$4, %rdx
	leaq	16(%rcx), %rax
	movq	%rax, 16(%r13)
	movq	(%r9,%rdx), %rax
	movq	%rax, (%rcx)
	movl	8(%r9,%rdx), %eax
	movl	%eax, 8(%rcx)
	movl	$0, 8(%r9,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_52:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_54
# %bb.53:
	movq	16(%r13), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 16(%r13)
	movq	%rdi, (%rax)
	movl	$5, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_54:
	movl	$42, __A_VARIABLE(%rip)
	addq	(%r10), %rsi
	movq	%rsi, %r14
.LBB7_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_56:
	movq	40(%r13), %rcx
	cmpq	72(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_57
# %bb.64:
	addq	$40, %rcx
	movq	%rcx, 40(%r13)
	jmp	.LBB7_65
.LBB7_57:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movslq	92(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$20001, %r12            # imm = 0x4E21
	jge	.LBB7_91
# %bb.58:
	leaq	(%r12,%r12), %r15
	movq	80(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	js	.LBB7_60
# %bb.59:
	movq	%r12, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(,%r15,8), %rax
	leaq	(%rax,%rax,4), %rcx
	movq	%r13, %rdi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdx
	jmp	.LBB7_61
.LBB7_60:
	movq	%r13, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rdx
.LBB7_61:
	movq	%rax, 80(%r13)
	movl	%r15d, 92(%r13)
	movq	40(%r13), %rcx
	subq	-64(%rbp), %rcx         # 8-byte Folded Reload
	addq	%rax, %rcx
	movq	%rcx, 40(%r13)
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	addq	$-40, %rax
	movq	%rax, 72(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10001, %r12d           # imm = 0x2711
	jl	.LBB7_63
# %bb.62:
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB7_63:
	addq	$40, %rcx
	movq	%rcx, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
.LBB7_65:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 8(%rcx)
	movq	%rbx, (%rcx)
	movq	%rbx, 24(%r13)
	movzbl	115(%r11), %edx
	shlq	$4, %rdx
	addq	%rbx, %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%r11), %rax
	movq	%rax, 48(%r13)
	movl	$0, 36(%rcx)
	movl	%r15d, 32(%rcx)
	movq	16(%r13), %rcx
	.p2align	4, 0x90
.LBB7_67:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB7_68
# %bb.66:                               #   in Loop: Header=BB7_67 Depth=1
	movl	$0, 8(%rcx)
	addq	$16, %rcx
	jmp	.LBB7_67
.LBB7_68:
	movq	%rdx, 16(%r13)
	xorl	%r14d, %r14d
	testb	$1, 100(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_90
# %bb.69:
	addq	$4, %rax
	movq	%rax, 48(%r13)
	xorl	%r14d, %r14d
	movq	%r13, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	addq	$-4, 48(%r13)
.LBB7_89:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_90:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_6
# %bb.2:
	testb	$2, 100(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_3
.LBB8_6:
	addq	64(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_11
# %bb.8:                                # %.preheader1
	leal	1(%rax), %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	cmpq	16(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB8_12
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	movq	(%rbx), %rdi
	movq	%rdi, (%rcx)
	movl	8(%rbx), %edi
	movl	%edi, 8(%rcx)
	addq	$16, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %esi
	addq	$16, %rbx
	cmpl	%esi, %eax
	jne	.LBB8_9
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_15
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	subl	$1, 36(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB8_6
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r14, %rdi
	movl	$4, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, 100(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	40(%r14), %rax
	jmp	.LBB8_3
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edi
	subl	%esi, %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jle	.LBB8_15
# %bb.13:                               # %.preheader
	subl	%esi, %edx
	.p2align	4, 0x90
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rcx)
	addq	$16, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edx
	cmpl	$1, %edx
	jg	.LBB8_14
.LBB8_15:
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$200, %eax
	jb	.LBB9_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_3
# %bb.2:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_4
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$225, %eax
	jae	.LBB9_9
.LBB9_4:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	luaD_precall
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_6
# %bb.5:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaV_execute
	movl	$42, __A_VARIABLE(%rip)
.LBB9_6:
	addw	$-1, 96(%rbx)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB9_8
# %bb.7:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
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
	movb	10(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB10_8
.LBB10_1:
	movzwl	96(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$200, %eax
	jb	.LBB10_12
# %bb.2:
	movq	40(%r12), %rax
	movq	(%rax), %rbx
	movq	%rbx, 16(%r12)
	movl	$.L.str.2, %edi
	callq	strlen
	movl	$.L.str.2, %esi
	jmp	.LBB10_3
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r12), %rax
	testb	%cl, %cl
	jne	.LBB10_10
# %bb.9:
	cmpq	80(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_1
.LBB10_10:
	movq	(%rax), %rbx
	movq	%rbx, 16(%r12)
	movl	$.L.str.3, %edi
	callq	strlen
	movl	$.L.str.3, %esi
.LBB10_3:
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, 8(%rbx)
	movq	16(%r12), %rax
	movq	56(%r12), %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB10_7
# %bb.4:
	movl	88(%r12), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_5
# %bb.11:
	addl	%esi, %esi
	jmp	.LBB10_6
.LBB10_12:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_22
# %bb.13:
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, %r15
	movq	40(%r12), %rax
	cmpb	$0, 10(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_17
# %bb.14:
	movb	$0, 10(%r12)
	movq	8(%rax), %rcx
	movq	(%rcx), %rcx
	cmpb	$0, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_18
# %bb.15:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	luaD_poscall
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_20
# %bb.16:
	movq	40(%r12), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%r12)
	jmp	.LBB10_19
.LBB10_5:
	addl	$1, %esi
.LBB10_6:
	movq	%r12, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
.LBB10_7:
	addq	$16, %rax
	movq	%rax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
	jmp	.LBB10_34
.LBB10_17:
	addq	$-16, %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$-1, %edx
	callq	luaD_precall
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_21
	jmp	.LBB10_20
.LBB10_18:
	movq	(%rax), %rax
	movq	%rax, 24(%r12)
.LBB10_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_20:
	movq	40(%r12), %rax
	subq	80(%r12), %rax
	shrq	$3, %rax
	imull	$-858993459, %eax, %esi # imm = 0xCCCCCCCD
	movq	%r12, %rdi
	callq	luaV_execute
.LBB10_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:
	movq	-112(%rbp), %rax
	movq	%rax, 168(%r12)
	movl	-40(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB10_27
# %bb.23:
	movb	%r14b, 10(%r12)
	movq	16(%r12), %r15
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB10_32:
	addq	$16, %r15
	movq	%r15, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r12), %rax
	movq	%r15, 16(%rax)
.LBB10_33:
	movl	$42, __A_VARIABLE(%rip)
	addw	$-1, 96(%r12)
.LBB10_34:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB11_2
# %bb.1:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzwl	96(%rdi), %eax
	movw	%ax, -44(%rbp)          # 2-byte Spill
	movq	40(%rdi), %r13
	movq	80(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB12_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*%r14
	movl	$42, __A_VARIABLE(%rip)
.LBB12_2:
	movq	-144(%rbp), %rax
	movq	%rax, 168(%rbx)
	movl	-72(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB12_16
# %bb.3:
	subq	-56(%rbp), %r13         # 8-byte Folded Reload
	addq	64(%rbx), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaF_close
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$20001, %rax            # imm = 0x4E21
	jl	.LBB12_15
# %bb.12:
	shrq	$3, %r13
	imull	$-858993459, %r13d, %ecx # imm = 0xCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19998, %ecx            # imm = 0x4E1E
	jg	.LBB12_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movl	$800000, %ecx           # imm = 0xC3500
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 80(%rbx)
	movl	$20000, 92(%rbx)        # imm = 0x4E20
	movq	40(%rbx), %rcx
	subq	%r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx)
	addq	$799960, %rax           # imm = 0xC34D8
	movq	%rax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_16:
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
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB14_2
# %bb.1:
	movq	%r14, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 112(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_5
# %bb.3:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	luaF_newupval
	movq	%rax, 40(%r12,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	112(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jb	.LBB14_4
.LBB14_5:
	movq	16(%r14), %rax
	movq	%r12, (%rax)
	movl	$6, 8(%rax)
	movq	16(%r14), %rax
	movq	56(%r14), %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB14_10
# %bb.6:
	movl	88(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
