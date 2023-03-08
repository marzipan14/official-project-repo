	.text
	.file	"wcstod.c"
	.globl	_wcstod_l               # -- Begin function _wcstod_l
	.p2align	4, 0x90
	.type	_wcstod_l,@function
_wcstod_l:                              # @_wcstod_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %edi
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	callq	iswspace_l
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.1:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rbx), %edi
	addq	$4, %rbx
	movq	%r15, %rsi
	jmp	.LBB0_2
.LBB0_3:
	movq	%rbx, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	%r15, (%rsp)
	leaq	-72(%rbp), %rdx
	leaq	-56(%rbp), %r9
	movq	%r13, %rdi
	movl	$0, %esi
	movq	$-1, %rcx
	xorl	%r8d, %r8d
	callq	_wcsnrtombs_l
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_4
# %bb.6:
	movq	%rax, %r14
	movq	%r12, -64(%rbp)         # 8-byte Spill
	addq	$1, %r14
	movq	%r14, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.8:
	movq	%rax, %r12
	movq	$0, -56(%rbp)
	movq	%r15, (%rsp)
	leaq	-72(%rbp), %rdx
	leaq	-56(%rbp), %r9
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	$-1, %rcx
	movq	%r14, %r8
	callq	_wcsnrtombs_l
	leaq	-48(%rbp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	_strtod_l
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB0_15
# %bb.9:
	movq	%r15, %rdi
	callq	__localeconv_l
	movq	(%rax), %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jb	.LBB0_14
# %bb.10:
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	__localeconv_l
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strstr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.11:
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB0_13
# %bb.12:
	subq	%r13, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movq	-48(%rbp), %rax
	subq	%r12, %rax
	leaq	(%rbx,%rax,4), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movq	%r12, %rdi
	callq	free
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_16
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB0_16
# %bb.5:
	movq	%rbx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_7:
	xorps	%xmm0, %xmm0
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcstod_l, .Lfunc_end0-_wcstod_l
                                        # -- End function
	.globl	_wcstod_r               # -- Begin function _wcstod_r
	.p2align	4, 0x90
	.type	_wcstod_r,@function
_wcstod_r:                              # @_wcstod_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_wcstod_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcstod_r, .Lfunc_end1-_wcstod_r
                                        # -- End function
	.globl	_wcstof_r               # -- Begin function _wcstof_r
	.p2align	4, 0x90
	.type	_wcstof_r,@function
_wcstof_r:                              # @_wcstof_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB2_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_wcstod_l
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_3
# %bb.4:
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB2_5
.LBB2_3:
	xorl	%edi, %edi
	callq	nanf
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_wcstof_r, .Lfunc_end2-_wcstof_r
                                        # -- End function
	.globl	wcstod_l                # -- Begin function wcstod_l
	.p2align	4, 0x90
	.type	wcstod_l,@function
wcstod_l:                               # @wcstod_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_wcstod_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wcstod_l, .Lfunc_end3-wcstod_l
                                        # -- End function
	.globl	wcstod                  # -- Begin function wcstod
	.p2align	4, 0x90
	.type	wcstod,@function
wcstod:                                 # @wcstod
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB4_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_wcstod_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	wcstod, .Lfunc_end4-wcstod
                                        # -- End function
	.globl	wcstof_l                # -- Begin function wcstof_l
	.p2align	4, 0x90
	.type	wcstof_l,@function
wcstof_l:                               # @wcstof_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_wcstod_l
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_1
# %bb.2:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB5_5
# %bb.3:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB5_5
# %bb.4:
	callq	__getreent
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_5:
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB5_6
.LBB5_1:
	xorl	%edi, %edi
	callq	nanf
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	wcstof_l, .Lfunc_end5-wcstof_l
                                        # -- End function
	.globl	wcstof                  # -- Begin function wcstof
	.p2align	4, 0x90
	.type	wcstof,@function
wcstof:                                 # @wcstof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB6_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_wcstod_l
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_3
# %bb.4:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB6_7
# %bb.5:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB6_7
# %bb.6:
	callq	__getreent
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_7:
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB6_8
.LBB6_3:
	xorl	%edi, %edi
	callq	nanf
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	wcstof, .Lfunc_end6-wcstof
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
