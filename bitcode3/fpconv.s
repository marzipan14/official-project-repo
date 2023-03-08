	.text
	.file	"fpconv.c"
	.globl	fpconv_strtod           # -- Begin function fpconv_strtod
	.p2align	4, 0x90
	.type	fpconv_strtod,@function
fpconv_strtod:                          # @fpconv_strtod
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpb	$46, locale_decimal_point(%rip)
	jne	.LBB0_1
# %bb.17:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	strtod
	jmp	.LBB0_16
.LBB0_1:
	movabsq	$114349209288704, %rax  # imm = 0x680000000000
	movq	%r12, %rbx
	jmp	.LBB0_2
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	orb	$32, %cl
	addb	$-97, %cl
	cmpb	$24, %cl
	ja	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rbx
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ecx
	leal	-48(%rcx), %edx
	cmpb	$10, %dl
	jb	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	$46, %cl
	ja	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	%cl, %edx
	btq	%rdx, %rax
	jb	.LBB0_6
	jmp	.LBB0_5
.LBB0_7:
	subq	%r12, %rbx
	testl	%ebx, %ebx
	je	.LBB0_8
# %bb.9:
	movq	%rbx, %r13
	shlq	$32, %r13
	cmpl	$32, %ebx
	jl	.LBB0_10
# %bb.11:
	movabsq	$4294967296, %rdi       # imm = 0x100000000
	addq	%r13, %rdi
	sarq	$32, %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.18:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	abort
.LBB0_8:
	movq	%r12, (%r14)
	xorps	%xmm0, %xmm0
	jmp	.LBB0_16
.LBB0_10:
	leaq	-96(%rbp), %r15
.LBB0_12:
	sarq	$32, %r13
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%r15,%r13)
	movq	%r15, %rdi
	movl	$46, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_14
# %bb.13:
	movb	locale_decimal_point(%rip), %cl
	movb	%cl, (%rax)
.LBB0_14:
	leaq	-56(%rbp), %rsi
	movq	%r15, %rdi
	callq	strtod
	movq	-56(%rbp), %rax
	subq	%r15, %rax
	addq	%rax, %r12
	movq	%r12, (%r14)
	cmpl	$32, %ebx
	jl	.LBB0_16
# %bb.15:
	movq	%r15, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	free
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_16:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fpconv_strtod, .Lfunc_end0-fpconv_strtod
                                        # -- End function
	.globl	fpconv_g_fmt            # -- Begin function fpconv_g_fmt
	.p2align	4, 0x90
	.type	fpconv_g_fmt,@function
fpconv_g_fmt:                           # @fpconv_g_fmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
                                        # kill: def $esi killed $esi def $rsi
	leal	-1(%rsi), %eax
	cmpl	$14, %eax
	jae	.LBB1_8
# %bb.1:
	movq	%rdi, %r14
	movzbl	%sil, %eax
	imull	$205, %eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rcx), %edx
	leal	(%rdx,%rdx,4), %edx
	subb	%dl, %al
	movw	$11813, -22(%rbp)       # imm = 0x2E25
	addl	$9, %esi
	movl	$2, %edx
	cmpl	$19, %esi
	jb	.LBB1_3
# %bb.2:
	addb	$48, %cl
	movb	%cl, -20(%rbp)
	movl	$3, %edx
.LBB1_3:
	orb	$48, %al
	movl	%edx, %ecx
	movb	%al, -22(%rbp,%rcx)
	movw	$103, -21(%rbp,%rcx)
	cmpb	$46, locale_decimal_point(%rip)
	jne	.LBB1_5
# %bb.4:
	leaq	-22(%rbp), %rdx
	movl	$32, %esi
	movq	%r14, %rdi
	movb	$1, %al
	callq	snprintf
	jmp	.LBB1_7
.LBB1_5:
	leaq	-64(%rbp), %rdi
	leaq	-22(%rbp), %rdx
	movl	$32, %esi
	movb	$1, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movb	locale_decimal_point(%rip), %dl
	movl	$46, %esi
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	-64(%rbp,%rcx), %ebx
	cmpb	%dl, %bl
	movl	%ebx, %edi
	cmovel	%esi, %edi
	movb	%dil, (%r14,%rcx)
	addq	$1, %rcx
	testb	%bl, %bl
	jne	.LBB1_6
.LBB1_7:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB1_8:
	movl	$.L.str.1, %edi
	movl	$.L__func__.set_number_format, %edx
	movl	$.L.str.2, %ecx
	movl	$157, %esi
	callq	__assert_func
.Lfunc_end1:
	.size	fpconv_g_fmt, .Lfunc_end1-fpconv_g_fmt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fpconv_init
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	fpconv_init
	.p2align	4, 0x90
	.type	fpconv_init,@function
fpconv_init:                            # @fpconv_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$8, %esi
	movl	$.L.str.3, %edx
	movb	$1, %al
	callq	snprintf
	cmpb	$48, -8(%rbp)
	jne	.LBB2_4
# %bb.1:
	cmpb	$53, -6(%rbp)
	jne	.LBB2_4
# %bb.2:
	cmpb	$0, -5(%rbp)
	jne	.LBB2_4
# %bb.3:
	movb	-7(%rbp), %al
	movb	%al, locale_decimal_point(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB2_4:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	abort
.Lfunc_end2:
	.size	fpconv_init, .Lfunc_end2-fpconv_init
                                        # -- End function
	.type	locale_decimal_point,@object # @locale_decimal_point
	.data
locale_decimal_point:
	.byte	46                      # 0x2e
	.size	locale_decimal_point, 1

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Out of memory"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c"
	.size	.L.str.1, 83

	.type	.L__func__.set_number_format,@object # @__func__.set_number_format
.L__func__.set_number_format:
	.asciz	"set_number_format"
	.size	.L__func__.set_number_format, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1 <= precision && precision <= 14"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%g"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error: wide characters found or printf() bug."
	.size	.L.str.4, 46

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
