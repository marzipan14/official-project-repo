	.text
	.file	"lua_struct.c"
	.globl	luaopen_struct          # -- Begin function luaopen_struct
	.p2align	4, 0x90
	.type	luaopen_struct,@function
luaopen_struct:                         # @luaopen_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %esi
	movl	$thislib, %edx
	callq	luaL_register
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_struct, .Lfunc_end0-luaopen_struct
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function b_pack
.LCPI1_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI1_1:
	.quad	0                       # double 0
	.text
	.p2align	4, 0x90
	.type	b_pack,@function
b_pack:                                 # @b_pack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1112, %rsp             # imm = 0x458
	movq	%rdi, %r14
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %rbx
	movq	%rax, -104(%rbp)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
	movq	%r14, %rdi
	callq	lua_pushnil
	leaq	-1152(%rbp), %rsi
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	luaL_buffinit
	movb	(%rbx), %r13b
	testb	%r13b, %r13b
	je	.LBB1_48
# %bb.1:
	movl	$2, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_5 Depth=1
	addl	$1, %r14d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movslq	%r15d, %rdx
	leaq	-1152(%rbp), %rdi
	leaq	-96(%rbp), %rsi
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	callq	luaL_addlstring
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	addq	%r15, %r12
	movq	-104(%rbp), %rbx
	movb	(%rbx), %r13b
	testb	%r13b, %r13b
	je	.LBB1_48
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_32 Depth 2
	addq	$1, %rbx
	movq	%rbx, -104(%rbp)
	movsbl	%r13b, %r14d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	leaq	-104(%rbp), %rdx
	callq	optsize
	movq	%rax, %r15
	cmpb	$99, %r14b
	je	.LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	testq	%r15, %r15
	je	.LBB1_12
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rbx
	cmpq	%rbx, %r15
	cmovbeq	%r15, %rbx
	leaq	-1(%rbx), %rax
	movq	%rax, %rcx
	andq	%r12, %rcx
	subq	%rcx, %rbx
	andq	%rax, %rbx
	movslq	%ebx, %rax
	addq	%rax, %r12
	testl	%eax, %eax
	jle	.LBB1_12
# %bb.8:                                # %.preheader5
                                        #   in Loop: Header=BB1_5 Depth=1
	addl	$1, %ebx
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jle	.LBB1_12
.LBB1_10:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_5 Depth=1
	leal	-66(%r14), %eax
	cmpl	$54, %eax
	ja	.LBB1_47
# %bb.13:                               #   in Loop: Header=BB1_5 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_14:                               #   in Loop: Header=BB1_5 Depth=1
	movl	-64(%rbp), %ebx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %rcx
	movapd	%xmm0, %xmm1
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	ucomisd	%xmm2, %xmm0
	cmovbq	%rcx, %rax
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	cmovaq	%rcx, %rax
	cmpl	$1, %ebx
	jne	.LBB1_18
# %bb.15:                               #   in Loop: Header=BB1_5 Depth=1
	testl	%r15d, %r15d
	jle	.LBB1_2
# %bb.16:                               #   in Loop: Header=BB1_5 Depth=1
	movl	%r15d, %edx
	leaq	-1(%rdx), %rsi
	movl	%r15d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB1_28
# %bb.17:                               #   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_5 Depth=1
	testl	%r15d, %r15d
	jle	.LBB1_2
# %bb.19:                               #   in Loop: Header=BB1_5 Depth=1
	movslq	%r15d, %rcx
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB1_20:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, -98(%rbp,%rcx)
	shrq	$8, %rax
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB1_20
	jmp	.LBB1_2
.LBB1_21:                               #   in Loop: Header=BB1_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leal	1(%rsi), %r14d
	movq	-56(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	-96(%rbp), %rdx
	callq	luaL_checklstring
	movq	%rax, %rbx
	testq	%r15, %r15
	movq	-96(%rbp), %rax
	cmoveq	%rax, %r15
	cmpq	%r15, %rax
	jae	.LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_5 Depth=1
	movl	$.L.str.4, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_argerror
.LBB1_23:                               #   in Loop: Header=BB1_5 Depth=1
	leaq	-1152(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	luaL_addlstring
	cmpb	$115, %r13b
	jne	.LBB1_27
# %bb.24:                               #   in Loop: Header=BB1_5 Depth=1
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_5 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB1_26:                               #   in Loop: Header=BB1_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	addq	$1, %r15
.LBB1_27:                               #   in Loop: Header=BB1_5 Depth=1
	movl	%r14d, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_4
.LBB1_28:                               #   in Loop: Header=BB1_5 Depth=1
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_29:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, -96(%rbp,%rsi)
	shrq	$32, %rax
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_29
.LBB1_30:                               #   in Loop: Header=BB1_5 Depth=1
	testq	%rcx, %rcx
	je	.LBB1_2
# %bb.31:                               # %.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	leaq	(%rsi,%rbp), %rdx
	addq	$-96, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_32:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, (%rdx,%rsi)
	shrq	$8, %rax
	addq	$1, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_32
	jmp	.LBB1_2
.LBB1_33:                               #   in Loop: Header=BB1_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_checknumber
	movq	%xmm0, -96(%rbp)
	cmpl	$2, %r15d
	jl	.LBB1_43
# %bb.34:                               #   in Loop: Header=BB1_5 Depth=1
	cmpl	$1, -64(%rbp)
	je	.LBB1_43
# %bb.35:                               #   in Loop: Header=BB1_5 Depth=1
	movq	%xmm0, %rcx
	movq	%r15, %rdx
	shlq	$32, %rdx
	movslq	%r15d, %rax
	leaq	-96(%rbp), %rsi
	movb	-1(%rax,%rsi), %bl
	movb	%bl, -96(%rbp)
	movb	%cl, -1(%rax,%rsi)
	movabsq	$12884901888, %rcx      # imm = 0x300000000
	cmpq	%rcx, %rdx
	jle	.LBB1_43
# %bb.36:                               #   in Loop: Header=BB1_5 Depth=1
	addq	$-2, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB1_37:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-97(%rbp,%rcx), %edx
	movzbl	-96(%rbp,%rax), %ebx
	movb	%bl, -97(%rbp,%rcx)
	movb	%dl, -96(%rbp,%rax)
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_37
	jmp	.LBB1_43
.LBB1_38:                               #   in Loop: Header=BB1_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_checknumber
	cvtsd2ss	%xmm0, %xmm0
	movd	%xmm0, -96(%rbp)
	cmpl	$2, %r15d
	jl	.LBB1_43
# %bb.39:                               #   in Loop: Header=BB1_5 Depth=1
	cmpl	$1, -64(%rbp)
	je	.LBB1_43
# %bb.40:                               #   in Loop: Header=BB1_5 Depth=1
	movd	%xmm0, %ecx
	movq	%r15, %rdx
	shlq	$32, %rdx
	movslq	%r15d, %rax
	leaq	-96(%rbp), %rsi
	movb	-1(%rax,%rsi), %bl
	movb	%bl, -96(%rbp)
	movb	%cl, -1(%rax,%rsi)
	movabsq	$12884901888, %rcx      # imm = 0x300000000
	cmpq	%rcx, %rdx
	jle	.LBB1_43
# %bb.41:                               #   in Loop: Header=BB1_5 Depth=1
	addq	$-2, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB1_42:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-97(%rbp,%rcx), %edx
	movzbl	-96(%rbp,%rax), %ebx
	movb	%bl, -97(%rbp,%rcx)
	movb	%dl, -96(%rbp,%rax)
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_42
.LBB1_43:                               #   in Loop: Header=BB1_5 Depth=1
	addl	$1, %r14d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	leaq	-1152(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movq	%r15, %rdx
	jmp	.LBB1_3
.LBB1_44:                               #   in Loop: Header=BB1_5 Depth=1
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_46
# %bb.45:                               #   in Loop: Header=BB1_5 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB1_46:                               #   in Loop: Header=BB1_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	jmp	.LBB1_4
.LBB1_47:                               #   in Loop: Header=BB1_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	leaq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	controloptions
	jmp	.LBB1_4
.LBB1_48:
	leaq	-1152(%rbp), %rdi
	callq	luaL_pushresult
	movl	$1, %eax
	addq	$1112, %rsp             # imm = 0x458
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	b_pack, .Lfunc_end1-b_pack
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_14
	.quad	.LBB1_21
	.quad	.LBB1_33
	.quad	.LBB1_47
	.quad	.LBB1_38
	.quad	.LBB1_47
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_21
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_44
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function b_unpack
.LCPI2_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.p2align	4, 0x90
	.type	b_unpack,@function
b_unpack:                               # @b_unpack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r14
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%rax, -88(%rbp)
	leaq	-96(%rbp), %rdx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_checklstring
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$1, %edx
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaL_argerror
.LBB2_2:
	addq	$-1, %r12
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
	movb	(%r15), %al
	testb	%al, %al
	je	.LBB2_56
# %bb.3:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	$3, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_8
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_8 Depth=1
	leal	(,%r13,8), %ecx
	addb	$-1, %cl
	movq	$-1, %rax
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	movq	%rdx, %rcx
	andq	%rax, %rcx
	cmovneq	%rax, %rcx
	orq	%rdx, %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
.LBB2_5:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	callq	lua_pushnumber
.LBB2_6:                                #   in Loop: Header=BB2_8 Depth=1
	addl	$1, %ebx
	movq	%rbx, -48(%rbp)         # 8-byte Spill
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	addq	%r15, %r13
	movq	-88(%rbp), %r15
	movb	(%r15), %al
	movq	%r13, %r12
	testb	%al, %al
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB2_57
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_42 Depth 2
                                        #     Child Loop BB2_38 Depth 2
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_27 Depth 2
                                        #     Child Loop BB2_30 Depth 2
	addq	$1, %r15
	movq	%r15, -88(%rbp)
	movsbl	%al, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	leaq	-88(%rbp), %rdx
	callq	optsize
	movq	%rax, %r13
	cmpb	$99, %bl
	je	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	movl	$0, %r14d
	testq	%r13, %r13
	je	.LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	-76(%rbp), %r14
	cmpq	%r14, %r13
	cmovbeq	%r13, %r14
	leaq	-1(%r14), %rax
	movq	%rax, %rcx
	andq	%r12, %rcx
	subq	%rcx, %r14
	andq	%rax, %r14
	jmp	.LBB2_12
	.p2align	4, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_8 Depth=1
	xorl	%r14d, %r14d
.LBB2_12:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	%r14d, %r15
	addq	%r12, %r15
	movq	-96(%rbp), %rax
	subq	%r13, %rax
	jb	.LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	%rax, %r15
	jbe	.LBB2_15
.LBB2_14:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.9, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$2, %esi
	callq	luaL_argerror
.LBB2_15:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.10, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$2, %esi
	callq	luaL_checkstack
	leal	-66(%rbx), %eax
	cmpl	$54, %eax
	ja	.LBB2_33
# %bb.16:                               #   in Loop: Header=BB2_8 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_17:                               #   in Loop: Header=BB2_8 Depth=1
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movb	1(%rax,%rcx), %r8b
	andb	$3, %r8b
	cmpl	$0, -80(%rbp)
	je	.LBB2_21
# %bb.18:                               #   in Loop: Header=BB2_8 Depth=1
	testl	%r13d, %r13d
	jle	.LBB2_25
# %bb.19:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rcx
	movslq	%r13d, %rsi
	addq	$1, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_20:                               #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rdx
	movzbl	-2(%rcx,%rsi), %eax
	orq	%rax, %rdx
	addq	$-1, %rsi
	cmpq	$1, %rsi
	jg	.LBB2_20
	jmp	.LBB2_31
	.p2align	4, 0x90
.LBB2_21:                               #   in Loop: Header=BB2_8 Depth=1
	testl	%r13d, %r13d
	jle	.LBB2_25
# %bb.22:                               #   in Loop: Header=BB2_8 Depth=1
	movl	%r13d, %r10d
	leaq	-1(%r10), %rdx
	movl	%r13d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rdx
	jae	.LBB2_26
# %bb.23:                               #   in Loop: Header=BB2_8 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_8 Depth=1
	xorl	%edx, %edx
	jmp	.LBB2_31
.LBB2_26:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r15), %rbx
	subq	%r9, %r10
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_27:                               #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rbx,%rdi), %eax
	movzbl	-2(%rbx,%rdi), %ecx
	movzbl	-1(%rbx,%rdi), %esi
	shlq	$24, %rax
	shlq	$32, %rdx
	orq	%rax, %rdx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	shlq	$8, %rsi
	orq	%rcx, %rsi
	movzbl	(%rbx,%rdi), %edx
	orq	%rsi, %rdx
	addq	$4, %rdi
	cmpq	%rdi, %r10
	jne	.LBB2_27
.LBB2_28:                               #   in Loop: Header=BB2_8 Depth=1
	testq	%r9, %r9
	je	.LBB2_31
# %bb.29:                               # %.preheader
                                        #   in Loop: Header=BB2_8 Depth=1
	addq	%rdi, %r12
	movslq	%r14d, %rsi
	addq	%r12, %rsi
	addq	-72(%rbp), %rsi         # 8-byte Folded Reload
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB2_30:                               #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rdx
	movzbl	(%rsi,%rdi), %eax
	orq	%rax, %rdx
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.LBB2_30
	.p2align	4, 0x90
.LBB2_31:                               #   in Loop: Header=BB2_8 Depth=1
	cmpb	$2, %r8b
	je	.LBB2_4
# %bb.32:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rdx, %xmm1
	punpckldq	.LCPI2_1(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI2_2(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	jmp	.LBB2_5
.LBB2_33:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	callq	controloptions
	jmp	.LBB2_7
.LBB2_34:                               #   in Loop: Header=BB2_8 Depth=1
	testq	%r13, %r13
	je	.LBB2_49
# %bb.35:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB2_55
.LBB2_36:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	leaq	-64(%rbp), %rdi
	movq	%r13, %rdx
	callq	memcpy
	cmpl	$1, -80(%rbp)
	je	.LBB2_39
# %bb.37:                               # %.preheader5
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$6, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_38:                               #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-64(%rbp,%rcx), %edx
	movzbl	-63(%rbp,%rax), %ebx
	movb	%bl, -64(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dl, -63(%rbp,%rax)
	cmpq	%rax, %rcx
	leaq	-1(%rax), %rax
	jl	.LBB2_38
.LBB2_39:                               #   in Loop: Header=BB2_8 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB2_44
.LBB2_40:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	leaq	-64(%rbp), %rdi
	movq	%r13, %rdx
	callq	memcpy
	cmpl	$1, -80(%rbp)
	je	.LBB2_43
# %bb.41:                               # %.preheader3
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_42:                               #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-64(%rbp,%rcx), %edx
	movzbl	-63(%rbp,%rax), %ebx
	movb	%bl, -64(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dl, -63(%rbp,%rax)
	cmpq	%rax, %rcx
	leaq	-1(%rax), %rax
	jl	.LBB2_42
.LBB2_43:                               #   in Loop: Header=BB2_8 Depth=1
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB2_44:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	lua_pushnumber
	jmp	.LBB2_48
.LBB2_45:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %r12
	movq	-96(%rbp), %rdx
	subq	%r15, %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memchr
	movq	%rax, %rbx
	testq	%rax, %rax
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB2_47:                               #   in Loop: Header=BB2_8 Depth=1
	subq	%r12, %rbx
	leaq	1(%rbx), %r13
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	lua_pushlstring
.LBB2_48:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_7
.LBB2_49:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	testl	%ebx, %ebx
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB2_51
# %bb.50:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB2_52
.LBB2_51:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB2_52:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	movapd	%xmm0, %xmm1
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %r13
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rax, %r13
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	addl	$-1, %ebx
	movq	-96(%rbp), %rax
	subq	%r13, %rax
	jb	.LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_8 Depth=1
	cmpq	%rax, %r15
	jbe	.LBB2_55
.LBB2_54:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_argerror
.LBB2_55:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	lua_pushlstring
	jmp	.LBB2_6
.LBB2_56:
	movq	%r12, %r13
.LBB2_57:
	addq	$1, %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	lua_pushinteger
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	b_unpack, .Lfunc_end2-b_unpack
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_17
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_17
	.quad	.LBB2_17
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_17
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_17
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_17
	.quad	.LBB2_34
	.quad	.LBB2_36
	.quad	.LBB2_33
	.quad	.LBB2_40
	.quad	.LBB2_33
	.quad	.LBB2_17
	.quad	.LBB2_17
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_17
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_45
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_7
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function b_size
	.type	b_size,@function
b_size:                                 # @b_size
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	xorl	%ebx, %ebx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, -56(%rbp)
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	movq	%rcx, -64(%rbp)
	movb	(%rax), %r14b
	testb	%r14b, %r14b
	je	.LBB3_15
# %bb.1:                                # %.preheader
	xorl	%r12d, %r12d
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_2 Depth=1
	addq	%r12, %rbx
	addq	%r14, %rbx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %r14d
	movq	%rbx, %r12
	testb	%r14b, %r14b
	je	.LBB3_15
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movsbl	%r14b, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	leaq	-56(%rbp), %rdx
	callq	optsize
	movq	%rax, %rbx
	cmpb	$99, %r13b
	je	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$0, %r15d
	testq	%rbx, %rbx
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	movslq	-60(%rbp), %r15
	cmpq	%r15, %rbx
	cmovbeq	%rbx, %r15
	leaq	-1(%r15), %rax
	movq	%rax, %rcx
	andq	%r12, %rcx
	subq	%rcx, %r15
	andq	%rax, %r15
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	cmpb	$115, %r14b
	jne	.LBB3_8
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.13, %edx
	jmp	.LBB3_11
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	xorl	%r15d, %r15d
	cmpb	$115, %r14b
	je	.LBB3_7
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	cmpb	$99, %r14b
	jne	.LBB3_12
# %bb.9:                                #   in Loop: Header=BB3_2 Depth=1
	testq	%rbx, %rbx
	jne	.LBB3_12
# %bb.10:                               #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.14, %edx
.LBB3_11:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	callq	luaL_argerror
.LBB3_12:                               #   in Loop: Header=BB3_2 Depth=1
	movslq	%r15d, %r14
	callq	__locale_ctype_ptr
	movslq	%r13d, %rcx
	testb	$7, 1(%rax,%rcx)
	jne	.LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	controloptions
	jmp	.LBB3_14
.LBB3_15:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movl	$1, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	b_size, .Lfunc_end3-b_size
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function optsize
	.type	optsize,@function
optsize:                                # @optsize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
                                        # kill: def $esi killed $esi def $rsi
	addl	$-66, %esi
	cmpl	$54, %esi
	ja	.LBB4_10
# %bb.1:
	movq	%rdx, %r15
	movl	$1, %ebx
	jmpq	*.LJTI4_0(,%rsi,8)
.LBB4_2:
	movl	$8, %ebx
	jmp	.LBB4_17
.LBB4_3:
	movl	$2, %ebx
	jmp	.LBB4_17
.LBB4_4:
	movq	%rdi, %r14
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	movl	$4, %ebx
	testb	$4, 1(%rax,%rdx)
	je	.LBB4_14
# %bb.5:                                # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB4_6
# %bb.7:
	cmpl	$33, %ebx
	jl	.LBB4_14
# %bb.8:
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	movl	$32, %ecx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB4_14
.LBB4_10:
	xorl	%ebx, %ebx
	jmp	.LBB4_17
.LBB4_11:
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	je	.LBB4_17
# %bb.12:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_13:                               # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB4_13
.LBB4_14:
	movslq	%ebx, %rbx
	jmp	.LBB4_17
.LBB4_16:
	movl	$4, %ebx
.LBB4_17:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	optsize, .Lfunc_end4-optsize
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_17
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_2
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_2
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_17
	.quad	.LBB4_11
	.quad	.LBB4_2
	.quad	.LBB4_10
	.quad	.LBB4_16
	.quad	.LBB4_10
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_2
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_10
	.quad	.LBB4_17
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function controloptions
	.type	controloptions,@function
controloptions:                         # @controloptions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movl	%esi, %edx
	movq	%rdi, %r14
	leal	-32(%rdx), %eax
	cmpl	$30, %eax
	ja	.LBB5_10
# %bb.1:
	movq	%rcx, %r15
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_3:
	callq	__locale_ctype_ptr
	movq	(%r12), %rcx
	movsbq	(%rcx), %rdx
	movl	$8, %ebx
	testb	$4, 1(%rax,%rdx)
	je	.LBB5_7
# %bb.4:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	callq	__locale_ctype_ptr
	movq	(%r12), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB5_5
# %bb.6:
	testl	%ebx, %ebx
	jle	.LBB5_8
.LBB5_7:
	leal	-1(%rbx), %eax
	testl	%ebx, %eax
	je	.LBB5_9
.LBB5_8:
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_9:
	movl	%ebx, 4(%r15)
	jmp	.LBB5_12
.LBB5_2:
	movl	$1, (%r15)
	jmp	.LBB5_12
.LBB5_10:
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_argerror           # TAILCALL
.LBB5_11:
	movl	$0, (%r15)
.LBB5_12:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	controloptions, .Lfunc_end5-controloptions
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_12
	.quad	.LBB5_3
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_10
	.quad	.LBB5_2
	.quad	.LBB5_10
	.quad	.LBB5_11
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"struct"
	.size	.L.str, 7

	.type	thislib,@object         # @thislib
	.section	.rodata,"a",@progbits
	.p2align	4
thislib:
	.quad	.L.str.1
	.quad	b_pack
	.quad	.L.str.2
	.quad	b_unpack
	.quad	.L.str.3
	.quad	b_size
	.zero	16
	.size	thislib, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pack"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"unpack"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"size"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"string too short"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"integral size %d is larger than limit of %d"
	.size	.L.str.5, 44

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"alignment %d is not a power of 2"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalid format option '%c'"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"offset must be 1 or greater"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"data string too short"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"too many results"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"format 'c0' needs a previous size"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"unfinished string in data"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"option 's' has no fixed size"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"option 'c0' has no fixed size"
	.size	.L.str.14, 30

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
