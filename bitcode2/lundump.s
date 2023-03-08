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
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movb	(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %al
	je	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %al
	jne	.LBB0_4
.LBB0_2:
	addq	$1, %rbx
.LBB0_3:
	movq	%rbx, -32(%rbp)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.7:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-68(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$12, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
# %bb.9:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
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
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$27, %al
	jne	.LBB0_3
# %bb.5:
	movq	$.L.str.1, -32(%rbp)
	movl	$.L.str.1, %ebx
	jmp	.LBB0_6
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB1_4
# %bb.3:
	movl	$1, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	leaq	8(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 64(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_13
# %bb.12:
	movq	%r15, 64(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_15
# %bb.14:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_17
# %bb.16:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 96(%r13)
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_19
# %bb.18:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_21
# %bb.20:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 100(%r13)
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 112(%r13)
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 113(%r13)
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 114(%r13)
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_29:
	movl	$42, __A_VARIABLE(%rip)
	movb	-48(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 115(%r13)
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_31
# %bb.30:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	js	.LBB1_33
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_34
.LBB1_33:
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	jl	.LBB1_35
.LBB1_34:
	movslq	%r14d, %rbx
	shlq	$2, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	luaM_realloc_
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_36:
	movq	%rsi, 24(%r13)
	movl	%r14d, 80(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rdx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_40
# %bb.39:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB1_42
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_43
.LBB1_42:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	jl	.LBB1_44
.LBB1_43:
	movslq	%ebx, %rcx
	shlq	$4, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
.LBB1_45:
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%r13)
	movl	%ebx, 76(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	%r13, -64(%rbp)         # 8-byte Spill
	jle	.LBB1_46
# %bb.51:
	movl	%ebx, %r14d
	leaq	-1(%r14), %rcx
	movl	%r14d, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	.LBB1_53
# %bb.52:
	xorl	%ecx, %ecx
	jmp	.LBB1_55
.LBB1_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_47
.LBB1_53:
	leaq	56(%r15), %rdx
	movq	%r14, %rsi
	subq	%rax, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_54:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rdx)
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rdx
	cmpq	%rcx, %rsi
	jne	.LBB1_54
.LBB1_55:
	testq	%rax, %rax
	je	.LBB1_58
# %bb.56:                               # %.preheader12
	shlq	$4, %rcx
	addq	%r15, %rcx
	addq	$8, %rcx
	.p2align	4, 0x90
.LBB1_57:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rcx
	addq	$-1, %rax
	jne	.LBB1_57
.LBB1_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_47
# %bb.59:
	shlq	$4, %r14
	addq	$-16, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_60:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_62
# %bb.61:                               #   in Loop: Header=BB1_60 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_62:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbl	-48(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	ja	.LBB1_79
# %bb.63:                               #   in Loop: Header=BB1_60 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_64:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$0, 8(%r15,%rbx)
	jmp	.LBB1_80
	.p2align	4, 0x90
.LBB1_65:                               #   in Loop: Header=BB1_60 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_60 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_67:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpb	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	setne	%al
	movl	%eax, (%r15,%rbx)
	movl	$1, 8(%r15,%rbx)
	jmp	.LBB1_80
	.p2align	4, 0x90
.LBB1_68:                               #   in Loop: Header=BB1_60 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_60 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_70:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15,%rbx)
	movl	$3, 8(%r15,%rbx)
	jmp	.LBB1_80
	.p2align	4, 0x90
.LBB1_79:                               #   in Loop: Header=BB1_60 Depth=1
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
	jmp	.LBB1_80
	.p2align	4, 0x90
.LBB1_71:                               #   in Loop: Header=BB1_60 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_73
# %bb.72:                               #   in Loop: Header=BB1_60 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_73:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB1_74
# %bb.75:                               #   in Loop: Header=BB1_60 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %r13
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_60 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_77:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%r13, %rsi
	callq	luaS_newlstr
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_78
.LBB1_74:                               #   in Loop: Header=BB1_60 Depth=1
	xorl	%eax, %eax
.LBB1_78:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15,%rbx)
	movl	$4, 8(%r15,%rbx)
	.p2align	4, 0x90
.LBB1_80:                               #   in Loop: Header=BB1_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_47
# %bb.81:                               #   in Loop: Header=BB1_60 Depth=1
	movq	16(%r13), %r15
	addq	$16, %rbx
	jmp	.LBB1_60
.LBB1_47:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_49
# %bb.48:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_82
# %bb.50:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_83
.LBB1_82:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	jl	.LBB1_84
.LBB1_83:
	movslq	%r14d, %rcx
	shlq	$3, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
.LBB1_85:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 32(%r13)
	movl	%r14d, 88(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_86
# %bb.87:
	movl	%r14d, %r15d
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	je	.LBB1_94
# %bb.88:
	leaq	-2(%r15), %rdx
	leal	-1(%r14), %eax
	andl	$3, %eax
	movl	$1, %ecx
	cmpq	$3, %rdx
	jb	.LBB1_92
# %bb.89:
	movq	%rax, %rdx
	notq	%rdx
	addq	%r15, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_90:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rsi
	movq	$0, 8(%rsi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rsi
	movq	$0, 16(%rsi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rsi
	movq	$0, 24(%rsi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rsi
	movq	$0, 32(%rsi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB1_90
# %bb.91:                               # %.loopexit10
	addq	$1, %rcx
.LBB1_92:
	testl	%eax, %eax
	je	.LBB1_94
	.p2align	4, 0x90
.LBB1_93:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rdx
	movq	$0, (%rdx,%rcx,8)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	jne	.LBB1_93
.LBB1_94:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_97
# %bb.95:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_96:                               # =>This Inner Loop Header: Depth=1
	movq	64(%r13), %rsi
	movq	%r12, %rdi
	callq	LoadFunction
	movq	32(%r13), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB1_96
	jmp	.LBB1_97
.LBB1_86:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_97:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_99
# %bb.98:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_99:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_101
# %bb.100:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_102
.LBB1_101:
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	jl	.LBB1_103
.LBB1_102:
	movslq	%r14d, %rbx
	shlq	$2, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	luaM_realloc_
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_104:
	movq	%rsi, 40(%r13)
	movl	%r14d, 84(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rdx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_106
# %bb.105:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_106:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_108
# %bb.107:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_108:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB1_110
# %bb.109:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_111
.LBB1_110:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	jl	.LBB1_112
.LBB1_111:
	movslq	%ebx, %rcx
	shlq	$4, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
.LBB1_113:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 48(%r13)
	movl	%ebx, 92(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_114
# %bb.115:
	movl	%ebx, %r13d
	leaq	-1(%r13), %rdx
	movl	%r13d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB1_117
# %bb.116:
	xorl	%edx, %edx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_119
.LBB1_114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_139:
	movq	(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_141
# %bb.140:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_141:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	-64(%rbp), %r13         # 8-byte Reload
	js	.LBB1_143
# %bb.142:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_144
.LBB1_143:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	jl	.LBB1_145
.LBB1_144:
	movslq	%ebx, %rcx
	shlq	$3, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
.LBB1_146:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 56(%r13)
	movl	%ebx, 72(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_147
# %bb.148:
	movl	%ebx, %r14d
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	je	.LBB1_155
# %bb.149:
	leaq	-2(%r14), %rcx
	addl	$-1, %ebx
	andl	$3, %ebx
	movl	$1, %eax
	cmpq	$3, %rcx
	jb	.LBB1_153
# %bb.150:
	movq	%rbx, %rcx
	notq	%rcx
	addq	%r14, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_151:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rdx
	movq	$0, 8(%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdx
	movq	$0, 16(%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdx
	movq	$0, 24(%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdx
	movq	$0, 32(%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.LBB1_151
# %bb.152:                              # %.loopexit2
	addq	$1, %rax
.LBB1_153:
	testl	%ebx, %ebx
	je	.LBB1_155
	.p2align	4, 0x90
.LBB1_154:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rcx
	movq	$0, (%rcx,%rax,8)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	jne	.LBB1_154
.LBB1_155:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %r15
	xorl	%ebx, %ebx
	jmp	.LBB1_156
	.p2align	4, 0x90
.LBB1_159:                              #   in Loop: Header=BB1_156 Depth=1
	xorl	%eax, %eax
.LBB1_163:                              #   in Loop: Header=BB1_156 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_164
.LBB1_156:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$8, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_158
# %bb.157:                              #   in Loop: Header=BB1_156 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_158:                              #   in Loop: Header=BB1_156 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB1_159
# %bb.160:                              #   in Loop: Header=BB1_156 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %r13
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_162
# %bb.161:                              #   in Loop: Header=BB1_156 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_162:                              #   in Loop: Header=BB1_156 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%r13, %rsi
	callq	luaS_newlstr
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_163
.LBB1_147:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_164:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaG_checkcode
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_166
# %bb.165:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_166:
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
.LBB1_117:
	leaq	48(%rax), %rsi
	movq	%r13, %rdi
	subq	%rcx, %rdi
	xorl	%edx, %edx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_118:                              # =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, (%rsi)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsi
	cmpq	%rdx, %rdi
	jne	.LBB1_118
.LBB1_119:
	testq	%rcx, %rcx
	je	.LBB1_122
# %bb.120:                              # %.preheader4
	shlq	$4, %rdx
	addq	%rdx, %rax
	.p2align	4, 0x90
.LBB1_121:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rax
	addq	$-1, %rcx
	jne	.LBB1_121
.LBB1_122:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %r15
	xorl	%r14d, %r14d
	jmp	.LBB1_123
	.p2align	4, 0x90
.LBB1_138:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %rcx
	movl	%eax, 12(%rcx,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r14
	addq	$-1, %r13
	je	.LBB1_139
.LBB1_123:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movl	$8, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_125
# %bb.124:                              #   in Loop: Header=BB1_123 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_125:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB1_126
# %bb.127:                              #   in Loop: Header=BB1_123 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	callq	luaZ_openspace
	movq	%rax, %rbx
	movq	-48(%rbp), %rdx
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_129
# %bb.128:                              #   in Loop: Header=BB1_123 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_129:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movq	-48(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rbx, %rsi
	callq	luaS_newlstr
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_130
	.p2align	4, 0x90
.LBB1_126:                              #   in Loop: Header=BB1_123 Depth=1
	xorl	%eax, %eax
.LBB1_130:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx,%r14)
	movq	(%rbx), %rdi
	movl	$4, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_132
# %bb.131:                              #   in Loop: Header=BB1_123 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_132:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_134
# %bb.133:                              #   in Loop: Header=BB1_123 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
.LBB1_134:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %rcx
	movl	%eax, 8(%rcx,%r14)
	movq	(%rbx), %rdi
	movl	$4, %edx
	movq	%r15, %rsi
	callq	luaZ_read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_136
# %bb.135:                              #   in Loop: Header=BB1_123 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_136:                              #   in Loop: Header=BB1_123 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_138
# %bb.137:                              #   in Loop: Header=BB1_123 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	jmp	.LBB1_138
.LBB1_35:
	callq	luaM_toobig
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	shlq	$2, %rbx
	jmp	.LBB1_36
.LBB1_44:
	callq	luaM_toobig
	jmp	.LBB1_45
.LBB1_84:
	callq	luaM_toobig
	jmp	.LBB1_85
.LBB1_103:
	callq	luaM_toobig
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	shlq	$2, %rbx
	jmp	.LBB1_104
.LBB1_112:
	callq	luaM_toobig
	jmp	.LBB1_113
.LBB1_145:
	callq	luaM_toobig
	jmp	.LBB1_146
.Lfunc_end1:
	.size	LoadFunction, .Lfunc_end1-LoadFunction
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_64
	.quad	.LBB1_65
	.quad	.LBB1_79
	.quad	.LBB1_68
	.quad	.LBB1_71
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
