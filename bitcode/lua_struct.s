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
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r14d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movslq	%r15d, %rdx
	leaq	-1152(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	luaL_addlstring
	movl	$42, __A_VARIABLE(%rip)
.LBB1_47:                               #   in Loop: Header=BB1_2 Depth=1
	addq	%r15, %r12
	movq	-104(%rbp), %rbx
	movb	(%rbx), %r13b
	testb	%r13b, %r13b
	je	.LBB1_48
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_23 Depth 2
	addq	$1, %rbx
	movq	%rbx, -104(%rbp)
	movsbl	%r13b, %r14d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	leaq	-104(%rbp), %rdx
	callq	optsize
	movq	%rax, %r15
	cmpb	$99, %r14b
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	testq	%r15, %r15
	je	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	movslq	-60(%rbp), %rbx
	cmpq	%rbx, %r15
	cmovbeq	%r15, %rbx
	leaq	-1(%rbx), %rax
	movq	%rax, %rcx
	andq	%r12, %rcx
	subq	%rcx, %rbx
	andq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rax
	addq	%rax, %r12
	testl	%eax, %eax
	jle	.LBB1_10
# %bb.6:                                # %.preheader5
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jle	.LBB1_10
.LBB1_7:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	leal	-66(%r14), %eax
	cmpl	$54, %eax
	ja	.LBB1_46
# %bb.11:                               #   in Loop: Header=BB1_2 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_12:                               #   in Loop: Header=BB1_2 Depth=1
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
	jne	.LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_2 Depth=1
	testl	%r15d, %r15d
	jle	.LBB1_24
# %bb.17:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %edx
	leaq	-1(%rdx), %rsi
	movl	%r15d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	testl	%r15d, %r15d
	jle	.LBB1_24
# %bb.14:                               #   in Loop: Header=BB1_2 Depth=1
	movslq	%r15d, %rcx
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB1_15:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, -98(%rbp,%rcx)
	shrq	$8, %rax
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB1_15
	jmp	.LBB1_24
.LBB1_39:                               #   in Loop: Header=BB1_2 Depth=1
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
	jae	.LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.4, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_argerror
.LBB1_41:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1152(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	luaL_addlstring
	cmpb	$115, %r13b
	jne	.LBB1_45
# %bb.42:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB1_44:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	addq	$1, %r15
.LBB1_45:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r14d, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_47
.LBB1_19:                               #   in Loop: Header=BB1_2 Depth=1
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_20:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, -96(%rbp,%rsi)
	shrq	$32, %rax
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_20
.LBB1_21:                               #   in Loop: Header=BB1_2 Depth=1
	testq	%rcx, %rcx
	je	.LBB1_24
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	(%rsi,%rbp), %rdx
	addq	$-96, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_23:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, (%rdx,%rsi)
	shrq	$8, %rax
	addq	$1, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_23
	jmp	.LBB1_24
.LBB1_34:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_checknumber
	movq	%xmm0, -96(%rbp)
	cmpl	$2, %r15d
	jl	.LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1, -64(%rbp)
	je	.LBB1_33
# %bb.36:                               #   in Loop: Header=BB1_2 Depth=1
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
	jle	.LBB1_33
# %bb.37:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$-2, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB1_38:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-97(%rbp,%rcx), %edx
	movzbl	-96(%rbp,%rax), %ebx
	movb	%bl, -97(%rbp,%rcx)
	movb	%dl, -96(%rbp,%rax)
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_38
	jmp	.LBB1_33
.LBB1_28:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_checknumber
	cvtsd2ss	%xmm0, %xmm0
	movd	%xmm0, -96(%rbp)
	cmpl	$2, %r15d
	jl	.LBB1_33
# %bb.29:                               #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1, -64(%rbp)
	je	.LBB1_33
# %bb.30:                               #   in Loop: Header=BB1_2 Depth=1
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
	jle	.LBB1_33
# %bb.31:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$-2, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB1_32:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-97(%rbp,%rcx), %edx
	movzbl	-96(%rbp,%rax), %ebx
	movb	%bl, -97(%rbp,%rcx)
	movb	%dl, -96(%rbp,%rax)
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_32
.LBB1_33:                               #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r14d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1152(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movq	%r15, %rdx
	callq	luaL_addlstring
	jmp	.LBB1_47
.LBB1_25:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB1_27:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	jmp	.LBB1_47
.LBB1_46:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	leaq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	controloptions
	jmp	.LBB1_47
.LBB1_48:
	leaq	-1152(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB1_12
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_12
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_12
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_12
	.quad	.LBB1_39
	.quad	.LBB1_34
	.quad	.LBB1_46
	.quad	.LBB1_28
	.quad	.LBB1_46
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_12
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_39
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_25
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
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %rbx
	movq	%rax, -96(%rbp)
	leaq	-104(%rbp), %rdx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_checklstring
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$1, %edx
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	movl	$.L.str.8, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	$3, %esi
	callq	luaL_argerror
.LBB2_2:
	addq	$-1, %r12
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB2_3
# %bb.4:
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	$3, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
	.p2align	4, 0x90
.LBB2_29:                               #   in Loop: Header=BB2_5 Depth=1
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
.LBB2_30:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	lua_pushnumber
	addl	$1, %r15d
	movq	%r15, -48(%rbp)         # 8-byte Spill
.LBB2_54:                               #   in Loop: Header=BB2_5 Depth=1
	addq	-64(%rbp), %r13         # 8-byte Folded Reload
	movq	-96(%rbp), %rbx
	movb	(%rbx), %al
	movq	%r13, %r12
	testb	%al, %al
	je	.LBB2_55
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_33 Depth 2
                                        #     Child Loop BB2_37 Depth 2
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_21 Depth 2
                                        #     Child Loop BB2_24 Depth 2
	addq	$1, %rbx
	movq	%rbx, -96(%rbp)
	movsbl	%al, %r15d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	-96(%rbp), %rdx
	callq	optsize
	movq	%rax, %r13
	cmpb	$99, %r15b
	je	.LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$0, %r14d
	testq	%r13, %r13
	je	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	movslq	-84(%rbp), %r14
	cmpq	%r14, %r13
	cmovbeq	%r13, %r14
	leaq	-1(%r14), %rax
	movq	%rax, %rcx
	andq	%r12, %rcx
	subq	%rcx, %r14
	andq	%rax, %r14
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_5 Depth=1
	xorl	%r14d, %r14d
.LBB2_9:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rax
	addq	%r12, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-104(%rbp), %rax
	subq	%r13, %rax
	jb	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%rax, -64(%rbp)         # 8-byte Folded Reload
	jbe	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_argerror
.LBB2_12:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checkstack
	leal	-66(%r15), %eax
	cmpl	$54, %eax
	ja	.LBB2_53
# %bb.13:                               #   in Loop: Header=BB2_5 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_14:                               #   in Loop: Header=BB2_5 Depth=1
	callq	__locale_ctype_ptr
	movslq	%r15d, %rcx
	movb	1(%rax,%rcx), %r8b
	andb	$3, %r8b
	cmpl	$0, -88(%rbp)
	je	.LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_5 Depth=1
	testl	%r13d, %r13d
	jle	.LBB2_16
# %bb.25:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movslq	%r13d, %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_26:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rdx
	movzbl	-2(%rax,%rcx), %esi
	orq	%rsi, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB2_26
	jmp	.LBB2_27
	.p2align	4, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_5 Depth=1
	testl	%r13d, %r13d
	jle	.LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_5 Depth=1
	movl	%r13d, %r10d
	leaq	-1(%r10), %rax
	movl	%r13d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rax
	jae	.LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_5 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_5 Depth=1
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_27
.LBB2_20:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	subq	%r9, %r10
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_21:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rax,%rdi), %ecx
	movzbl	-2(%rax,%rdi), %esi
	movzbl	-1(%rax,%rdi), %ebx
	shlq	$24, %rcx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	shlq	$16, %rsi
	orq	%rdx, %rsi
	shlq	$8, %rbx
	orq	%rsi, %rbx
	movzbl	(%rax,%rdi), %edx
	orq	%rbx, %rdx
	addq	$4, %rdi
	cmpq	%rdi, %r10
	jne	.LBB2_21
.LBB2_22:                               #   in Loop: Header=BB2_5 Depth=1
	testq	%r9, %r9
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB2_27
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addq	%rdi, %r12
	movslq	%r14d, %rax
	addq	%r12, %rax
	addq	-80(%rbp), %rax         # 8-byte Folded Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_24:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rdx
	movzbl	(%rax,%rsi), %ecx
	orq	%rcx, %rdx
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.LBB2_24
	.p2align	4, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_5 Depth=1
	cmpb	$2, %r8b
	je	.LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rdx, %xmm1
	punpckldq	.LCPI2_1(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI2_2(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	jmp	.LBB2_30
.LBB2_53:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	controloptions
	jmp	.LBB2_54
.LBB2_41:                               #   in Loop: Header=BB2_5 Depth=1
	testq	%r13, %r13
	je	.LBB2_43
# %bb.42:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB2_49
.LBB2_35:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	callq	memcpy
	cmpl	$1, -88(%rbp)
	je	.LBB2_38
# %bb.36:                               # %.preheader5
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	$6, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_37:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-56(%rbp,%rcx), %edx
	movzbl	-55(%rbp,%rax), %ebx
	movb	%bl, -56(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dl, -55(%rbp,%rax)
	cmpq	%rax, %rcx
	leaq	-1(%rax), %rax
	jl	.LBB2_37
.LBB2_38:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB2_39
.LBB2_31:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	callq	memcpy
	cmpl	$1, -88(%rbp)
	je	.LBB2_34
# %bb.32:                               # %.preheader3
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	$2, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_33:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-56(%rbp,%rcx), %edx
	movzbl	-55(%rbp,%rax), %ebx
	movb	%bl, -56(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dl, -55(%rbp,%rax)
	cmpq	%rax, %rcx
	leaq	-1(%rax), %rax
	jl	.LBB2_33
.LBB2_34:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB2_39:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	lua_pushnumber
	jmp	.LBB2_40
.LBB2_50:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	movq	-104(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memchr
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB2_52
# %bb.51:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.12, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaL_error
.LBB2_52:                               #   in Loop: Header=BB2_5 Depth=1
	subq	%r15, %rbx
	leaq	1(%rbx), %r13
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	lua_pushlstring
.LBB2_40:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_54
.LBB2_43:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB2_46
.LBB2_45:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB2_46:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
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
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	addl	$-1, %r14d
	movq	-104(%rbp), %rax
	subq	%r13, %rax
	jb	.LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%rax, -64(%rbp)         # 8-byte Folded Reload
	jbe	.LBB2_49
.LBB2_48:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_argerror
.LBB2_49:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	lua_pushlstring
	addl	$1, %r14d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_54
.LBB2_3:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r12, %r13
.LBB2_55:
	addq	$1, %r13
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	lua_pushinteger
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB2_14
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_14
	.quad	.LBB2_14
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_14
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_14
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_14
	.quad	.LBB2_41
	.quad	.LBB2_35
	.quad	.LBB2_53
	.quad	.LBB2_31
	.quad	.LBB2_53
	.quad	.LBB2_14
	.quad	.LBB2_14
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_14
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_50
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_53
	.quad	.LBB2_54
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
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	xorl	%r15d, %r15d
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$115, %r14b
	jne	.LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.13, %edx
	jmp	.LBB3_11
	.p2align	4, 0x90
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
	movl	$42, __A_VARIABLE(%rip)
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
	ja	.LBB4_6
# %bb.1:
	movq	%rdx, %r15
	movl	$1, %eax
	jmpq	*.LJTI4_0(,%rsi,8)
.LBB4_2:
	movl	$8, %eax
	jmp	.LBB4_19
.LBB4_3:
	movl	$2, %eax
	jmp	.LBB4_19
.LBB4_4:
	movq	%rdi, %r14
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB4_14
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ebx
	jmp	.LBB4_18
.LBB4_6:
	xorl	%eax, %eax
	jmp	.LBB4_19
.LBB4_7:
	callq	__locale_ctype_ptr
	movq	%rax, %rcx
	movq	(%r15), %rdx
	movsbq	(%rdx), %rsi
	movl	$1, %eax
	testb	$4, 1(%rcx,%rsi)
	je	.LBB4_11
# %bb.8:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, (%r15)
	movsbl	(%rdx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	callq	__locale_ctype_ptr
	movq	(%r15), %rdx
	movsbq	(%rdx), %rcx
	testb	$4, 1(%rax,%rcx)
	jne	.LBB4_9
# %bb.10:
	movslq	%ebx, %rax
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_19
.LBB4_13:
	movl	$4, %eax
	jmp	.LBB4_19
.LBB4_14:                               # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB4_15
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33, %ebx
	jl	.LBB4_18
# %bb.17:
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	movl	$32, %ecx
	xorl	%eax, %eax
	callq	luaL_error
.LBB4_18:
	movslq	%ebx, %rax
.LBB4_19:
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB4_19
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_2
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_2
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_19
	.quad	.LBB4_7
	.quad	.LBB4_2
	.quad	.LBB4_6
	.quad	.LBB4_13
	.quad	.LBB4_6
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_2
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_6
	.quad	.LBB4_19
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
	ja	.LBB5_11
# %bb.1:
	movq	%rcx, %r15
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_4:
	callq	__locale_ctype_ptr
	movq	(%r12), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB5_5
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ebx
	jmp	.LBB5_8
.LBB5_3:
	movl	$1, (%r15)
	jmp	.LBB5_12
.LBB5_11:
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	jmp	.LBB5_12
.LBB5_2:
	movl	$0, (%r15)
	jmp	.LBB5_12
.LBB5_5:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
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
	jne	.LBB5_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB5_9
.LBB5_8:
	leal	-1(%rbx), %eax
	testl	%ebx, %eax
	je	.LBB5_10
.LBB5_9:
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_10:
	movl	%ebx, 4(%r15)
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB5_4
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_3
	.quad	.LBB5_11
	.quad	.LBB5_2
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
