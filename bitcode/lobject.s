	.text
	.file	"lobject.c"
	.hidden	luaO_int2fb             # -- Begin function luaO_int2fb
	.globl	luaO_int2fb
	.p2align	4, 0x90
	.type	luaO_int2fb,@function
luaO_int2fb:                            # @luaO_int2fb
# %bb.0:
	movl	$8, %ecx
	cmpl	$16, %edi
	jb	.LBB0_1
# %bb.2:                                # %.preheader
	movl	$8, %ecx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %edi
	movl	%edi, %edx
	shrl	%edx
	addl	$8, %ecx
	cmpl	$31, %edi
	movl	%edx, %edi
	ja	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:
	movl	%edi, %edx
.LBB0_4:
	leal	-8(%rdx), %eax
	orl	%ecx, %eax
	cmpl	$8, %edx
	cmovbl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	luaO_int2fb, .Lfunc_end0-luaO_int2fb
                                        # -- End function
	.hidden	luaO_fb2int             # -- Begin function luaO_fb2int
	.globl	luaO_fb2int
	.p2align	4, 0x90
	.type	luaO_fb2int,@function
luaO_fb2int:                            # @luaO_fb2int
# %bb.0:
	movl	%edi, %eax
	movl	%edi, %ecx
	shrl	$3, %ecx
	andl	$31, %ecx
	je	.LBB1_2
# %bb.1:
	andl	$7, %eax
	orl	$8, %eax
	addb	$-1, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	luaO_fb2int, .Lfunc_end1-luaO_fb2int
                                        # -- End function
	.hidden	luaO_log2               # -- Begin function luaO_log2
	.globl	luaO_log2
	.p2align	4, 0x90
	.type	luaO_log2,@function
luaO_log2:                              # @luaO_log2
# %bb.0:
	movl	$-1, %ecx
	cmpl	$256, %edi              # imm = 0x100
	jb	.LBB2_1
# %bb.2:                                # %.preheader
	movl	$-1, %ecx
	movl	%edi, %eax
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addl	$8, %ecx
	shrl	$8, %eax
	cmpl	$65535, %edi            # imm = 0xFFFF
	movl	%eax, %edi
	ja	.LBB2_3
	jmp	.LBB2_4
.LBB2_1:
	movl	%edi, %eax
.LBB2_4:
	movl	%eax, %eax
	movzbl	luaO_log2.log_2(%rax), %eax
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	luaO_log2, .Lfunc_end2-luaO_log2
                                        # -- End function
	.hidden	luaO_rawequalObj        # -- Begin function luaO_rawequalObj
	.globl	luaO_rawequalObj
	.p2align	4, 0x90
	.type	luaO_rawequalObj,@function
luaO_rawequalObj:                       # @luaO_rawequalObj
# %bb.0:
	movl	8(%rdi), %ecx
	cmpl	8(%rsi), %ecx
	jne	.LBB3_1
# %bb.2:
	cmpl	$3, %ecx
	ja	.LBB3_6
# %bb.3:
	movb	$1, %al
	movl	%ecx, %ecx
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_5:
	movl	(%rdi), %eax
	cmpl	(%rsi), %eax
	jmp	.LBB3_7
.LBB3_1:
	xorl	%eax, %eax
	jmp	.LBB3_8
.LBB3_6:
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
.LBB3_7:
	sete	%al
	jmp	.LBB3_8
.LBB3_4:
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	cmpeqsd	(%rdi), %xmm0
	movq	%xmm0, %rax
	andl	$1, %eax
.LBB3_8:
	movzbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	luaO_rawequalObj, .Lfunc_end3-luaO_rawequalObj
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_8
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_4
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function luaO_str2d
.LCPI4_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI4_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.hidden	luaO_str2d
	.globl	luaO_str2d
	.p2align	4, 0x90
	.type	luaO_str2d,@function
luaO_str2d:                             # @luaO_str2d
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-24(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%r14)
	movq	-24(%rbp), %rax
	cmpq	%rbx, %rax
	je	.LBB4_1
# %bb.2:
	movb	(%rax), %al
	movl	%eax, %ecx
	orb	$32, %cl
	cmpb	$120, %cl
	jne	.LBB4_4
# %bb.3:
	leaq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	movl	$16, %edx
	callq	strtoul
	movq	%rax, %xmm0
	punpckldq	.LCPI4_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI4_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14)
	movq	-24(%rbp), %rax
	movb	(%rax), %al
.LBB4_4:
	testb	%al, %al
	je	.LBB4_5
	.p2align	4, 0x90
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	callq	__locale_ctype_ptr
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	je	.LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_7 Depth=1
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB4_7
.LBB4_8:
	xorl	%eax, %eax
	testb	%dl, %dl
	sete	%al
	jmp	.LBB4_9
.LBB4_1:
	xorl	%eax, %eax
	jmp	.LBB4_9
.LBB4_5:
	movl	$1, %eax
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaO_str2d, .Lfunc_end4-luaO_str2d
                                        # -- End function
	.hidden	luaO_pushvfstring       # -- Begin function luaO_pushvfstring
	.globl	luaO_pushvfstring
	.p2align	4, 0x90
	.type	luaO_pushvfstring,@function
luaO_pushvfstring:                      # @luaO_pushvfstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	16(%rdi), %r14
	movl	$.L.str, %edi
	callq	strlen
	movl	$.L.str, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
	movq	16(%r13), %rax
	movq	56(%r13), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB5_2
# %bb.1:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r13), %rax
.LBB5_2:
	addq	$16, %rax
	movq	%rax, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$37, %esi
	callq	strchr
	movq	16(%r13), %r14
	testq	%rax, %rax
	je	.LBB5_3
# %bb.4:
	movq	%rax, %r15
	movl	$1, %r12d
	jmp	.LBB5_5
	.p2align	4, 0x90
.LBB5_39:                               #   in Loop: Header=BB5_5 Depth=1
	addq	$16, %rax
	movq	%rax, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_40:                               #   in Loop: Header=BB5_5 Depth=1
	addl	$2, %r12d
	movq	%r15, %rbx
	addq	$2, %rbx
	movq	%rbx, %rdi
	movl	$37, %esi
	callq	strchr
	movq	%rax, %r15
	movq	16(%r13), %r14
	testq	%rax, %rax
	je	.LBB5_41
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdx
	subq	%rbx, %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
	movq	16(%r13), %rbx
	movq	56(%r13), %rax
	subq	%rbx, %rax
	cmpq	$16, %rax
	jg	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r13), %rbx
.LBB5_7:                                #   in Loop: Header=BB5_5 Depth=1
	leaq	16(%rbx), %rax
	movq	%rax, 16(%r13)
	movzbl	1(%r15), %eax
	movsbl	%al, %ecx
	leal	-99(%rcx), %edx
	cmpl	$16, %edx
	ja	.LBB5_8
# %bb.10:                               #   in Loop: Header=BB5_5 Depth=1
	jmpq	*.LJTI5_0(,%rdx,8)
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB5_18
	.p2align	4, 0x90
.LBB5_8:                                #   in Loop: Header=BB5_5 Depth=1
	cmpl	$37, %ecx
	jne	.LBB5_35
# %bb.9:                                #   in Loop: Header=BB5_5 Depth=1
	movl	$.L.str.3, %edi
	callq	strlen
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	jmp	.LBB5_36
.LBB5_35:                               #   in Loop: Header=BB5_5 Depth=1
	movb	$37, -96(%rbp)
	movb	%al, -95(%rbp)
	movb	$0, -94(%rbp)
	leaq	-96(%rbp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%r14, %rsi
.LBB5_36:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, 16(%rbx)
	movl	$4, 24(%rbx)
	jmp	.LBB5_37
.LBB5_20:                               #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB5_23
.LBB5_27:                               #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movslq	4(%rdx), %rcx
	cmpq	$160, %rcx
	ja	.LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%rdx)
	jmp	.LBB5_30
.LBB5_31:                               #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB5_33
# %bb.32:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB5_34
.LBB5_11:                               #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB5_14
.LBB5_17:                               #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
.LBB5_18:                               #   in Loop: Header=BB5_5 Depth=1
	movzbl	(%rax), %eax
	movb	%al, -96(%rbp)
	movb	$0, -95(%rbp)
	movq	16(%r13), %rbx
	leaq	-96(%rbp), %r14
	jmp	.LBB5_19
.LBB5_22:                               #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
.LBB5_23:                               #   in Loop: Header=BB5_5 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax), %xmm0
	movsd	%xmm0, 16(%rbx)
	jmp	.LBB5_24
.LBB5_29:                               #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
.LBB5_30:                               #   in Loop: Header=BB5_5 Depth=1
	movq	(%rax), %rax
	movq	%rax, 16(%rbx)
.LBB5_24:                               #   in Loop: Header=BB5_5 Depth=1
	movl	$3, 24(%rbx)
	movq	16(%r13), %rax
	movq	56(%r13), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r13), %rax
.LBB5_26:                               #   in Loop: Header=BB5_5 Depth=1
	addq	$16, %rax
	movq	%rax, 16(%r13)
	jmp	.LBB5_40
.LBB5_33:                               #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
.LBB5_34:                               #   in Loop: Header=BB5_5 Depth=1
	movq	(%rax), %rdx
	movl	$.L.str.2, %esi
	leaq	-96(%rbp), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	sprintf
	movq	16(%r13), %rbx
.LBB5_19:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, 8(%rbx)
	jmp	.LBB5_37
.LBB5_13:                               #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
.LBB5_14:                               #   in Loop: Header=BB5_5 Depth=1
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	movl	$.L.str.1, %eax
	cmoveq	%rax, %rbx
	movq	16(%r13), %r14
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
.LBB5_37:                               #   in Loop: Header=BB5_5 Depth=1
	movq	16(%r13), %rax
	movq	56(%r13), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_5 Depth=1
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r13), %rax
	jmp	.LBB5_39
.LBB5_3:
	movl	$1, %r12d
.LBB5_41:
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
	movq	16(%r13), %rdx
	movq	56(%r13), %rax
	subq	%rdx, %rax
	cmpq	$16, %rax
	jg	.LBB5_43
# %bb.42:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r13), %rdx
.LBB5_43:
	addq	$16, %rdx
	movq	%rdx, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r12), %esi
	subq	24(%r13), %rdx
	shrq	$4, %rdx
	addl	$-1, %edx
	movq	%r13, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	luaV_concat
	movq	16(%r13), %rax
	movl	%r12d, %ecx
	shlq	$4, %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 16(%r13)
	negq	%rcx
	movq	-16(%rax,%rcx), %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaO_pushvfstring, .Lfunc_end5-luaO_pushvfstring
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_15
	.quad	.LBB5_20
	.quad	.LBB5_35
	.quad	.LBB5_27
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_31
	.quad	.LBB5_35
	.quad	.LBB5_35
	.quad	.LBB5_11
                                        # -- End function
	.text
	.hidden	luaO_pushfstring        # -- Begin function luaO_pushfstring
	.globl	luaO_pushfstring
	.p2align	4, 0x90
	.type	luaO_pushfstring,@function
luaO_pushfstring:                       # @luaO_pushfstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB6_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB6_2:
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	callq	luaO_pushvfstring
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaO_pushfstring, .Lfunc_end6-luaO_pushfstring
                                        # -- End function
	.hidden	luaO_chunkid            # -- Begin function luaO_chunkid
	.globl	luaO_chunkid
	.p2align	4, 0x90
	.type	luaO_chunkid,@function
luaO_chunkid:                           # @luaO_chunkid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movb	(%rsi), %al
	cmpb	$64, %al
	je	.LBB7_3
# %bb.1:
	cmpb	$61, %al
	jne	.LBB7_6
# %bb.2:
	addq	$1, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	strncpy
	movb	$0, -1(%rbx,%r14)
	jmp	.LBB7_11
.LBB7_3:
	addq	$1, %r15
	addq	$-8, %rbx
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r12
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	strcpy
	subq	%rbx, %r12
	jbe	.LBB7_5
# %bb.4:
	addq	%r12, %r15
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	strcat
.LBB7_5:
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB7_10
.LBB7_6:
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	strcspn
	addq	$-17, %rbx
	cmpq	%rbx, %rax
	cmovbeq	%rax, %rbx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	strcpy
	cmpb	$0, (%r15,%rbx)
	je	.LBB7_8
# %bb.7:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	strncat
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	jmp	.LBB7_9
.LBB7_8:
	movq	%r14, %rdi
	movq	%r15, %rsi
.LBB7_9:
	callq	strcat
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
.LBB7_10:
	callq	strcat
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaO_chunkid, .Lfunc_end7-luaO_chunkid
                                        # -- End function
	.hidden	luaO_nilobject_         # @luaO_nilobject_
	.type	luaO_nilobject_,@object
	.section	.rodata,"a",@progbits
	.globl	luaO_nilobject_
	.p2align	3
luaO_nilobject_:
	.zero	16
	.size	luaO_nilobject_, 16

	.type	luaO_log2.log_2,@object # @luaO_log2.log_2
	.p2align	4
luaO_log2.log_2:
	.ascii	"\000\001\002\002\003\003\003\003\004\004\004\004\004\004\004\004\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.size	luaO_log2.log_2, 256

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"(null)"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%p"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"..."
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n\r"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"[string \""
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\"]"
	.size	.L.str.7, 3

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaS_newlstr
	.hidden	luaD_growstack
	.hidden	luaV_concat
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
