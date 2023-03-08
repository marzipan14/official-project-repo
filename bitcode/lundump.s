	.text
	.file	"lundump.c"
	.hidden	luaU_undump             # -- Begin function luaU_undump
	.globl	luaU_undump
	.p2align	4, 0x90
	.type	luaU_undump,@function
luaU_undump:                            # @luaU_undump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movb	(%rcx), %al
	cmpb	$27, %al
	je	.LBB0_1
# %bb.2:
	movq	%rcx, %rbx
	cmpb	$64, %al
	je	.LBB0_4
# %bb.3:
	cmpb	$61, %al
	jne	.LBB0_5
.LBB0_4:
	addq	$1, %rbx
	jmp	.LBB0_5
.LBB0_1:
	movl	$.L.str.1, %ebx
.LBB0_5:
	movq	%rbx, -32(%rbp)
	movq	%r14, -56(%rbp)
	movq	%r15, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-68(%rbp), %rdi
	movl	$.L.str, %esi
	movl	$4, %edx
	callq	memcpy
	movabsq	$2256232287109201, %rax # imm = 0x8040804010051
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rsi
	movl	$12, %edx
	movq	%r15, %rdi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB0_7
# %bb.6:
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	-56(%rbp), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-68(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$12, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	-56(%rbp), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	luaS_newlstr
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	LoadFunction
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaU_undump, .Lfunc_end0-luaU_undump
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function LoadFunction
	.type	LoadFunction,@function
LoadFunction:                           # @LoadFunction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%rdi), %rdi
	movl	96(%rdi), %eax
	addl	$1, %eax
	movw	%ax, 96(%rdi)
	movzwl	%ax, %eax
	cmpl	$201, %eax
	jb	.LBB1_2
# %bb.1:
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
.LBB1_2:
	callq	luaF_newproto
	movq	%rax, %r13
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movq	%r13, (%rax)
	movl	$9, 8(%rax)
	movq	(%r12), %rdi
	movq	16(%rdi), %rax
	movq	56(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB1_4
# %bb.3:
	movl	$1, %esi
	callq	luaD_growstack
	movq	(%r12), %rdi
	movq	16(%rdi), %rax
.LBB1_4:
	addq	$16, %rdi
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	8(%r12), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_6
# %bb.5:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	leaq	8(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB1_7
# %bb.8:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %rbx
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_10
# %bb.9:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rbx, %rsi
	callq	luaS_newlstr
	jmp	.LBB1_11
.LBB1_7:
	xorl	%eax, %eax
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	cmovneq	%rax, %r15
	movq	%r15, 64(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_13
# %bb.12:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB1_15
# %bb.14:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 96(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_17
# %bb.16:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB1_19
# %bb.18:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 100(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_21
# %bb.20:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 112(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_23
# %bb.22:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 113(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_25
# %bb.24:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 114(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_27
# %bb.26:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 115(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_29
# %bb.28:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	testl	%r14d, %r14d
	js	.LBB1_31
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	jmp	.LBB1_32
.LBB1_31:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	cmpq	$-1, %r14
	jl	.LBB1_33
.LBB1_32:
	movslq	%r14d, %rbx
	shlq	$2, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	luaM_realloc_
	movq	%rax, %rsi
.LBB1_34:
	movq	%rsi, 24(%r13)
	movl	%r14d, 80(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rdx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_36
# %bb.35:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_38
# %bb.37:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	testl	%r14d, %r14d
	movq	%r13, -64(%rbp)         # 8-byte Spill
	js	.LBB1_52
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	jmp	.LBB1_40
.LBB1_52:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	cmpl	$-2, %r14d
	jle	.LBB1_53
.LBB1_40:
	movslq	%r14d, %rbx
	movq	%rbx, %rcx
	shlq	$4, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 16(%r13)
	movl	%ebx, 76(%r13)
	testl	%ebx, %ebx
	jle	.LBB1_54
# %bb.41:
	movq	%rax, %r15
	movl	%r14d, %esi
	leaq	-1(%rsi), %rcx
	movl	%esi, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	.LBB1_69
# %bb.42:
	movq	%rsi, %rdi
	xorl	%ecx, %ecx
	jmp	.LBB1_43
.LBB1_69:
	leaq	56(%r15), %rdx
	movq	%rsi, %rdi
	subq	%rax, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_70:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rdx)
	movl	$0, -32(%rdx)
	movl	$0, -16(%rdx)
	movl	$0, (%rdx)
	addq	$4, %rcx
	addq	$64, %rdx
	cmpq	%rcx, %rsi
	jne	.LBB1_70
.LBB1_43:
	testq	%rax, %rax
	je	.LBB1_46
# %bb.44:                               # %.preheader12
	shlq	$4, %rcx
	addq	%r15, %rcx
	addq	$8, %rcx
	.p2align	4, 0x90
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx)
	addq	$16, %rcx
	addq	$-1, %rax
	jne	.LBB1_45
.LBB1_46:
	testl	%r14d, %r14d
	jle	.LBB1_54
# %bb.47:
	movq	%rdi, %r14
	shlq	$4, %r14
	addq	$-16, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_48:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_50:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbl	-48(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	ja	.LBB1_86
# %bb.51:                               #   in Loop: Header=BB1_48 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_71:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$0, 8(%r15,%rbx)
	cmpq	%rbx, %r14
	jne	.LBB1_88
	jmp	.LBB1_54
	.p2align	4, 0x90
.LBB1_72:                               #   in Loop: Header=BB1_48 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_74
# %bb.73:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_74:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpb	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	setne	%al
	movl	%eax, (%r15,%rbx)
	movl	$1, 8(%r15,%rbx)
	cmpq	%rbx, %r14
	jne	.LBB1_88
	jmp	.LBB1_54
	.p2align	4, 0x90
.LBB1_75:                               #   in Loop: Header=BB1_48 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_77:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15,%rbx)
	movl	$3, 8(%r15,%rbx)
	cmpq	%rbx, %r14
	jne	.LBB1_88
	jmp	.LBB1_54
	.p2align	4, 0x90
.LBB1_86:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB1_88
	jmp	.LBB1_54
	.p2align	4, 0x90
.LBB1_78:                               #   in Loop: Header=BB1_48 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_80
# %bb.79:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_80:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB1_81
# %bb.82:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %r13
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_84
# %bb.83:                               #   in Loop: Header=BB1_48 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_84:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%r13, %rsi
	callq	luaS_newlstr
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_85
.LBB1_81:                               #   in Loop: Header=BB1_48 Depth=1
	xorl	%eax, %eax
.LBB1_85:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15,%rbx)
	movl	$4, 8(%r15,%rbx)
	cmpq	%rbx, %r14
	je	.LBB1_54
	.p2align	4, 0x90
.LBB1_88:                               #   in Loop: Header=BB1_48 Depth=1
	movq	16(%r13), %r15
	addq	$16, %rbx
	jmp	.LBB1_48
.LBB1_33:
	callq	luaM_toobig
	movq	%rax, %rsi
	movq	%r14, %rbx
	shlq	$2, %rbx
	jmp	.LBB1_34
.LBB1_53:
	callq	luaM_toobig
	movq	%rax, 16(%r13)
	movl	%r14d, 76(%r13)
.LBB1_54:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_56
# %bb.55:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	testl	%r14d, %r14d
	js	.LBB1_89
# %bb.57:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	jmp	.LBB1_58
.LBB1_89:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	cmpl	$-2, %r14d
	jle	.LBB1_90
.LBB1_58:
	movslq	%r14d, %rbx
	leaq	(,%rbx,8), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 32(%r13)
	movl	%ebx, 88(%r13)
	testl	%ebx, %ebx
	jle	.LBB1_91
# %bb.59:
	movl	%r14d, %r15d
	movq	$0, (%rax)
	cmpl	$1, %r14d
	je	.LBB1_66
# %bb.60:
	leaq	-2(%r15), %rdx
	leal	-1(%r14), %eax
	andl	$3, %eax
	movl	$1, %ecx
	cmpq	$3, %rdx
	jb	.LBB1_64
# %bb.61:
	movq	%rax, %rdx
	notq	%rdx
	addq	%r15, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_62:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rsi
	movq	$0, 8(%rsi,%rcx,8)
	movq	32(%r13), %rsi
	movq	$0, 16(%rsi,%rcx,8)
	movq	32(%r13), %rsi
	movq	$0, 24(%rsi,%rcx,8)
	movq	32(%r13), %rsi
	movq	$0, 32(%rsi,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB1_62
# %bb.63:                               # %.loopexit10
	addq	$1, %rcx
.LBB1_64:
	testl	%eax, %eax
	je	.LBB1_66
	.p2align	4, 0x90
.LBB1_65:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rdx
	movq	$0, (%rdx,%rcx,8)
	addq	$1, %rcx
	addq	$-1, %rax
	jne	.LBB1_65
.LBB1_66:
	testl	%r14d, %r14d
	jle	.LBB1_91
# %bb.67:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_68:                               # =>This Inner Loop Header: Depth=1
	movq	64(%r13), %rsi
	movq	%r12, %rdi
	callq	LoadFunction
	movq	32(%r13), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r15
	jne	.LBB1_68
	jmp	.LBB1_91
.LBB1_90:
	callq	luaM_toobig
	movq	%rax, 32(%r13)
	movl	%r14d, 88(%r13)
.LBB1_91:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_93
# %bb.92:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_93:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	testl	%r14d, %r14d
	js	.LBB1_95
# %bb.94:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	jmp	.LBB1_96
.LBB1_95:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	cmpq	$-1, %r14
	jl	.LBB1_97
.LBB1_96:
	movslq	%r14d, %rbx
	shlq	$2, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	luaM_realloc_
	movq	%rax, %rsi
.LBB1_98:
	movq	%rsi, 40(%r13)
	movl	%r14d, 84(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rdx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_100
# %bb.99:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_100:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_102
# %bb.101:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_102:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	testl	%r14d, %r14d
	js	.LBB1_115
# %bb.103:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	jmp	.LBB1_104
.LBB1_115:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	cmpl	$-2, %r14d
	jle	.LBB1_116
.LBB1_104:
	movslq	%r14d, %rbx
	movq	%rbx, %rcx
	shlq	$4, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 48(%r13)
	movl	%ebx, 92(%r13)
	testl	%ebx, %ebx
	jle	.LBB1_131
# %bb.105:
	movl	%r14d, %r13d
	leaq	-1(%r13), %rdx
	movl	%r13d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB1_117
# %bb.106:
	xorl	%edx, %edx
	jmp	.LBB1_107
.LBB1_117:
	leaq	48(%rax), %rsi
	movq	%r13, %rdi
	subq	%rcx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_118:                              # =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rsi)
	movq	$0, -32(%rsi)
	movq	$0, -16(%rsi)
	movq	$0, (%rsi)
	addq	$4, %rdx
	addq	$64, %rsi
	cmpq	%rdx, %rdi
	jne	.LBB1_118
.LBB1_107:
	testq	%rcx, %rcx
	je	.LBB1_110
# %bb.108:                              # %.preheader4
	shlq	$4, %rdx
	addq	%rdx, %rax
	.p2align	4, 0x90
.LBB1_109:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	addq	$16, %rax
	addq	$-1, %rcx
	jne	.LBB1_109
.LBB1_110:
	leaq	-48(%rbp), %r15
	xorl	%r14d, %r14d
	jmp	.LBB1_111
	.p2align	4, 0x90
.LBB1_130:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %rcx
	movl	%eax, 12(%rcx,%r14)
	addq	$16, %r14
	addq	$-1, %r13
	je	.LBB1_131
.LBB1_111:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_113
# %bb.112:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_113:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB1_114
# %bb.119:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %rbx
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_121
# %bb.120:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_121:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rbx, %rsi
	callq	luaS_newlstr
	jmp	.LBB1_122
	.p2align	4, 0x90
.LBB1_114:                              #   in Loop: Header=BB1_111 Depth=1
	xorl	%eax, %eax
.LBB1_122:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx,%r14)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$4, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_124
# %bb.123:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_124:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB1_126
# %bb.125:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
.LBB1_126:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %rcx
	movl	%eax, 8(%rcx,%r14)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$4, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_128
# %bb.127:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_128:                              #   in Loop: Header=BB1_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB1_130
# %bb.129:                              #   in Loop: Header=BB1_111 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	jmp	.LBB1_130
.LBB1_97:
	callq	luaM_toobig
	movq	%rax, %rsi
	movq	%r14, %rbx
	shlq	$2, %rbx
	jmp	.LBB1_98
.LBB1_116:
	callq	luaM_toobig
	movq	%rax, 48(%r13)
	movl	%r14d, 92(%r13)
.LBB1_131:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_133
# %bb.132:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_133:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	testl	%ebx, %ebx
	movq	-64(%rbp), %r13         # 8-byte Reload
	js	.LBB1_148
# %bb.134:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	jmp	.LBB1_135
.LBB1_148:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	cmpl	$-2, %ebx
	jle	.LBB1_149
.LBB1_135:
	movslq	%ebx, %r14
	leaq	(,%r14,8), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 56(%r13)
	movl	%r14d, 72(%r13)
	testl	%r14d, %r14d
	jle	.LBB1_154
# %bb.136:
	movl	%ebx, %r14d
	movq	$0, (%rax)
	cmpl	$1, %ebx
	je	.LBB1_143
# %bb.137:
	leaq	-2(%r14), %rcx
	addl	$-1, %ebx
	andl	$3, %ebx
	movl	$1, %eax
	cmpq	$3, %rcx
	jb	.LBB1_141
# %bb.138:
	movq	%rbx, %rcx
	notq	%rcx
	addq	%r14, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_139:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rdx
	movq	$0, 8(%rdx,%rax,8)
	movq	56(%r13), %rdx
	movq	$0, 16(%rdx,%rax,8)
	movq	56(%r13), %rdx
	movq	$0, 24(%rdx,%rax,8)
	movq	56(%r13), %rdx
	movq	$0, 32(%rdx,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.LBB1_139
# %bb.140:                              # %.loopexit2
	addq	$1, %rax
.LBB1_141:
	testl	%ebx, %ebx
	je	.LBB1_143
	.p2align	4, 0x90
.LBB1_142:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rcx
	movq	$0, (%rcx,%rax,8)
	addq	$1, %rax
	addq	$-1, %rbx
	jne	.LBB1_142
.LBB1_143:
	leaq	-48(%rbp), %r15
	xorl	%ebx, %ebx
	jmp	.LBB1_144
	.p2align	4, 0x90
.LBB1_147:                              #   in Loop: Header=BB1_144 Depth=1
	xorl	%eax, %eax
.LBB1_153:                              #   in Loop: Header=BB1_144 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	je	.LBB1_154
.LBB1_144:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_146
# %bb.145:                              #   in Loop: Header=BB1_144 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_146:                              #   in Loop: Header=BB1_144 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB1_147
# %bb.150:                              #   in Loop: Header=BB1_144 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %r13
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	testq	%rax, %rax
	je	.LBB1_152
# %bb.151:                              #   in Loop: Header=BB1_144 Depth=1
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_152:                              #   in Loop: Header=BB1_144 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%r13, %rsi
	callq	luaS_newlstr
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_153
.LBB1_149:
	callq	luaM_toobig
	movq	%rax, 56(%r13)
	movl	%ebx, 72(%r13)
.LBB1_154:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaG_checkcode
	testl	%eax, %eax
	jne	.LBB1_156
# %bb.155:
	movq	(%r12), %rdi
	movq	24(%r12), %rdx
	movl	$.L.str.5, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_156:
	movq	(%r12), %rax
	addq	$-16, 16(%rax)
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	LoadFunction, .Lfunc_end1-LoadFunction
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_71
	.quad	.LBB1_72
	.quad	.LBB1_86
	.quad	.LBB1_75
	.quad	.LBB1_78
                                        # -- End function
	.text
	.hidden	luaU_header             # -- Begin function luaU_header
	.globl	luaU_header
	.p2align	4, 0x90
	.type	luaU_header,@function
luaU_header:                            # @luaU_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	movl	$4, %edx
	callq	memcpy
	movabsq	$2256232287109201, %rax # imm = 0x8040804010051
	movq	%rax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaU_header, .Lfunc_end2-luaU_header
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033Lua"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"binary string"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"=?"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bad header"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"unexpected end"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: %s in precompiled chunk"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"code too deep"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"bad code"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bad integer"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"bad constant"
	.size	.L.str.9, 13

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaS_newlstr
	.hidden	luaZ_read
	.hidden	luaO_pushfstring
	.hidden	luaD_throw
	.hidden	luaF_newproto
	.hidden	luaD_growstack
	.hidden	luaG_checkcode
	.hidden	luaZ_openspace
	.hidden	luaM_realloc_
	.hidden	luaM_toobig
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
