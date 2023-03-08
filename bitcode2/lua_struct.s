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
	movq	%rax, -96(%rbp)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
	movq	%r14, %rdi
	callq	lua_pushnil
	leaq	-1152(%rbp), %rsi
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %r12b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB1_55
# %bb.1:
	movl	$2, %r13d
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_25 Depth 2
	addq	$1, %rbx
	movq	%rbx, -96(%rbp)
	movsbl	%r12b, %r14d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	leaq	-96(%rbp), %rdx
	callq	optsize
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$99, %r14b
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	testq	%r15, %r15
	je	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	movslq	-84(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	cmpq	%rax, %r15
	jbe	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	leaq	-1(%rbx), %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	andq	%rdx, %rcx
	subq	%rcx, %rbx
	andq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rax
	addq	%rax, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_12
# %bb.8:                                # %.preheader5
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jle	.LBB1_12
.LBB1_9:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1152(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1152(%rbp), %rax
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-66(%r14), %eax
	cmpl	$54, %eax
	ja	.LBB1_52
# %bb.13:                               #   in Loop: Header=BB1_2 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_14:                               #   in Loop: Header=BB1_2 Depth=1
	movl	-88(%rbp), %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
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
	movl	$42, __A_VARIABLE(%rip)
	cmovaq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB1_15
# %bb.18:                               #   in Loop: Header=BB1_2 Depth=1
	testl	%r15d, %r15d
	jle	.LBB1_26
# %bb.19:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %edx
	leaq	-1(%rdx), %rsi
	movl	%r15d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_2 Depth=1
	testl	%r15d, %r15d
	jle	.LBB1_26
# %bb.16:                               #   in Loop: Header=BB1_2 Depth=1
	movslq	%r15d, %rcx
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB1_17:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, -82(%rbp,%rcx)
	shrq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB1_17
	jmp	.LBB1_26
.LBB1_42:                               #   in Loop: Header=BB1_2 Depth=1
	leal	1(%r13), %r14d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	leaq	-80(%rbp), %rdx
	callq	luaL_checklstring
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax
	testq	%r15, %r15
	je	.LBB1_43
# %bb.44:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jae	.LBB1_47
# %bb.45:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.4, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	callq	luaL_argerror
	jmp	.LBB1_46
.LBB1_21:                               #   in Loop: Header=BB1_2 Depth=1
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_22:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, -80(%rbp,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%ah, -79(%rbp,%rsi)
	movq	%rax, %rdi
	shrq	$16, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%dil, -78(%rbp,%rsi)
	movq	%rax, %rdi
	shrq	$24, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%dil, -77(%rbp,%rsi)
	shrq	$32, %rax
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jne	.LBB1_22
.LBB1_23:                               #   in Loop: Header=BB1_2 Depth=1
	testq	%rcx, %rcx
	je	.LBB1_26
# %bb.24:                               # %.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	(%rsi,%rbp), %rdx
	addq	$-80, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_25:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, (%rdx,%rsi)
	shrq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_25
	.p2align	4, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rdx
	leaq	-1152(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	luaL_addlstring
	movl	$42, __A_VARIABLE(%rip)
.LBB1_53:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rbx
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_2 Depth=1
	addq	%r15, -104(%rbp)        # 8-byte Folded Spill
	movb	(%rbx), %r12b
	jmp	.LBB1_2
.LBB1_30:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	luaL_checknumber
	cvtsd2ss	%xmm0, %xmm0
	movd	%xmm0, -80(%rbp)
	cmpl	$1, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_36
# %bb.31:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB1_35
# %bb.32:                               #   in Loop: Header=BB1_2 Depth=1
	movd	%xmm0, %ecx
	movq	%r15, %rdx
	shlq	$32, %rdx
	movslq	%r15d, %rax
	leaq	-80(%rbp), %rsi
	movb	-1(%rax,%rsi), %bl
	movb	%bl, -80(%rbp)
	movb	%cl, -1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$12884901888, %rcx      # imm = 0x300000000
	cmpq	%rcx, %rdx
	jle	.LBB1_35
# %bb.33:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$-2, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB1_34:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-81(%rbp,%rcx), %edx
	movzbl	-80(%rbp,%rax), %ebx
	movb	%bl, -81(%rbp,%rcx)
	movb	%dl, -80(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_34
	jmp	.LBB1_35
.LBB1_27:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-1152(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1152(%rbp), %rax
.LBB1_29:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	jmp	.LBB1_53
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	controloptions
	jmp	.LBB1_53
.LBB1_37:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	luaL_checknumber
	movq	%xmm0, -80(%rbp)
	cmpl	$1, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_36
# %bb.38:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB1_35
# %bb.39:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%xmm0, %rcx
	movq	%r15, %rdx
	shlq	$32, %rdx
	movslq	%r15d, %rax
	leaq	-80(%rbp), %rsi
	movb	-1(%rax,%rsi), %bl
	movb	%bl, -80(%rbp)
	movb	%cl, -1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$12884901888, %rcx      # imm = 0x300000000
	cmpq	%rcx, %rdx
	jle	.LBB1_35
# %bb.40:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$-2, %rax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB1_41:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-81(%rbp,%rcx), %edx
	movzbl	-80(%rbp,%rax), %ebx
	movb	%bl, -81(%rbp,%rcx)
	movb	%dl, -80(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB1_41
.LBB1_35:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_36:                               #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1152(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	%r15, %rdx
	callq	luaL_addlstring
	jmp	.LBB1_53
.LBB1_43:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
.LBB1_46:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_47:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1152(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	luaL_addlstring
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$115, %r12b
	jne	.LBB1_51
# %bb.48:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-1152(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-104(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1152(%rbp), %rax
.LBB1_50:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$0, (%rax)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB1_51:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r14d, %r13d
	jmp	.LBB1_53
.LBB1_55:
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
	.quad	.LBB1_14
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_42
	.quad	.LBB1_37
	.quad	.LBB1_52
	.quad	.LBB1_30
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_42
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_27
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
	xorl	%r15d, %r15d
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
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	movl	$.L.str.8, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	$3, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB2_2:
	addq	$-1, %r13
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_3
# %bb.4:
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	$3, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_44 Depth 2
                                        #     Child Loop BB2_28 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_26 Depth 2
	addq	$1, %rbx
	movq	%rbx, -96(%rbp)
	movsbl	%al, %r15d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	-96(%rbp), %rdx
	callq	optsize
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$99, %r15b
	je	.LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$0, %r12d
	testq	%r14, %r14
	je	.LBB2_11
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	movslq	-84(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
	cmpq	%rax, %r14
	jbe	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	-1(%r12), %rax
	movq	%rax, %rcx
	andq	%r13, %rcx
	subq	%rcx, %r12
	andq	%rax, %r12
	jmp	.LBB2_11
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_5 Depth=1
	xorl	%r12d, %r12d
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r12d, %rax
	addq	%r13, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-104(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rax
	jb	.LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jbe	.LBB2_14
.LBB2_13:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB2_14:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	leal	-66(%r15), %eax
	cmpl	$54, %eax
	ja	.LBB2_60
# %bb.15:                               #   in Loop: Header=BB2_5 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_16:                               #   in Loop: Header=BB2_5 Depth=1
	callq	__locale_ctype_ptr
	movslq	%r15d, %rcx
	movb	1(%rax,%rcx), %r8b
	andb	$3, %r8b
	cmpl	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_19
# %bb.17:                               #   in Loop: Header=BB2_5 Depth=1
	testl	%r14d, %r14d
	jle	.LBB2_18
# %bb.27:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movslq	%r14d, %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_28:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rdx
	movzbl	-2(%rax,%rcx), %esi
	orq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB2_28
	jmp	.LBB2_29
	.p2align	4, 0x90
.LBB2_19:                               #   in Loop: Header=BB2_5 Depth=1
	testl	%r14d, %r14d
	jle	.LBB2_18
# %bb.20:                               #   in Loop: Header=BB2_5 Depth=1
	movl	%r14d, %r10d
	leaq	-1(%r10), %rax
	movl	%r14d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rax
	jae	.LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_5 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_24
	.p2align	4, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_5 Depth=1
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_29
.LBB2_22:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	subq	%r9, %r10
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_23:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rax,%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rax,%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rax,%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$24, %rcx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	shlq	$16, %rbx
	orq	%rdx, %rbx
	shlq	$8, %rsi
	orq	%rbx, %rsi
	movzbl	(%rax,%rdi), %edx
	orq	%rsi, %rdx
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r10
	jne	.LBB2_23
.LBB2_24:                               #   in Loop: Header=BB2_5 Depth=1
	testq	%r9, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	je	.LBB2_29
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addq	%rdi, %r13
	movslq	%r12d, %rax
	addq	%r13, %rax
	addq	-80(%rbp), %rax         # 8-byte Folded Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_26:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rdx
	movzbl	(%rax,%rsi), %ecx
	orq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.LBB2_26
	.p2align	4, 0x90
.LBB2_29:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %r8b
	jne	.LBB2_30
# %bb.31:                               #   in Loop: Header=BB2_5 Depth=1
	leal	(,%r14,8), %ecx
	addb	$-1, %cl
	movq	$-1, %rax
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rdx
	je	.LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_5 Depth=1
	orq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB2_33:                               #   in Loop: Header=BB2_5 Depth=1
	cvtsi2sd	%rdx, %xmm0
	jmp	.LBB2_34
	.p2align	4, 0x90
.LBB2_30:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rdx, %xmm1
	punpckldq	.LCPI2_1(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI2_2(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
.LBB2_34:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_35:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	callq	lua_pushnumber
.LBB2_36:                               #   in Loop: Header=BB2_5 Depth=1
	addl	$1, %r15d
	movq	%r15, -48(%rbp)         # 8-byte Spill
.LBB2_61:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_62:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r14, %r13
	addq	-72(%rbp), %r13         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rbx
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_63
# %bb.65:                               #   in Loop: Header=BB2_5 Depth=1
	movb	(%rbx), %al
	jmp	.LBB2_5
.LBB2_60:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	controloptions
	jmp	.LBB2_61
.LBB2_47:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_49
# %bb.48:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_56
.LBB2_42:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	callq	memcpy
	cmpl	$1, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB2_46
# %bb.43:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_44:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-56(%rbp,%rcx), %edx
	movzbl	-55(%rbp,%rax), %ebx
	movb	%bl, -56(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dl, -55(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	-1(%rax), %rax
	jl	.LBB2_44
# %bb.45:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx         # 8-byte Reload
.LBB2_46:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB2_35
.LBB2_37:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	callq	memcpy
	cmpl	$1, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB2_41
# %bb.38:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_39:                               #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-56(%rbp,%rcx), %edx
	movzbl	-55(%rbp,%rax), %ebx
	movb	%bl, -56(%rbp,%rcx)
	addq	$1, %rcx
	movb	%dl, -55(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	-1(%rax), %rax
	jl	.LBB2_39
# %bb.40:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx         # 8-byte Reload
.LBB2_41:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB2_35
.LBB2_57:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	movq	-104(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memchr
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_59
# %bb.58:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.12, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB2_59:                               #   in Loop: Header=BB2_5 Depth=1
	subq	%r15, %rbx
	leaq	1(%rbx), %r14
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	lua_pushlstring
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_61
.LBB2_49:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r15         # 8-byte Reload
	testl	%r15d, %r15d
	je	.LBB2_51
# %bb.50:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_52
.LBB2_51:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB2_52:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	movapd	%xmm0, %xmm1
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %r14
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rax, %r14
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	-104(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rax
	jb	.LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jbe	.LBB2_55
.LBB2_54:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB2_55:                               #   in Loop: Header=BB2_5 Depth=1
	addl	$-1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_56:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	lua_pushlstring
	jmp	.LBB2_36
.LBB2_63:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_64
.LBB2_3:
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB2_64:
	addq	$1, %r13
	movq	%r13, %rsi
	callq	lua_pushinteger
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
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
	.quad	.LBB2_16
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_16
	.quad	.LBB2_16
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_16
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_16
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_16
	.quad	.LBB2_47
	.quad	.LBB2_42
	.quad	.LBB2_60
	.quad	.LBB2_37
	.quad	.LBB2_60
	.quad	.LBB2_16
	.quad	.LBB2_16
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_16
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_57
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_60
	.quad	.LBB2_62
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
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %r15b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB3_18
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movsbl	%r15b, %r12d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	leaq	-56(%rbp), %rdx
	callq	optsize
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$99, %r12b
	je	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$0, %r13d
	testq	%r14, %r14
	je	.LBB3_8
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	movslq	-60(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	cmpq	%rax, %r14
	jbe	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	leaq	-1(%r13), %rax
	movq	%rax, %rcx
	andq	%rbx, %rcx
	subq	%rcx, %r13
	andq	%rax, %r13
	jmp	.LBB3_8
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	xorl	%r13d, %r13d
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$115, %r15b
	jne	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.13, %edx
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$99, %r15b
	jne	.LBB3_14
# %bb.11:                               #   in Loop: Header=BB3_2 Depth=1
	testq	%r14, %r14
	jne	.LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.14, %edx
.LBB3_13:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_14:                               #   in Loop: Header=BB3_2 Depth=1
	movslq	%r13d, %r15
	callq	__locale_ctype_ptr
	movslq	%r12d, %rcx
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	controloptions
	movl	$42, __A_VARIABLE(%rip)
.LBB3_16:                               #   in Loop: Header=BB3_2 Depth=1
	addq	%r14, %rbx
	addq	%r15, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_18
# %bb.17:                               #   in Loop: Header=BB3_2 Depth=1
	movzbl	(%rax), %r15d
	jmp	.LBB3_2
.LBB3_18:
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
	movl	$42, __A_VARIABLE(%rip)
	addl	$-66, %esi
	cmpl	$54, %esi
	ja	.LBB4_6
# %bb.1:
	movq	%rdx, %r15
	movl	$1, %eax
	jmpq	*.LJTI4_0(,%rsi,8)
.LBB4_2:
	movl	$8, %eax
	jmp	.LBB4_20
.LBB4_3:
	movl	$2, %eax
	jmp	.LBB4_20
.LBB4_4:
	movq	%rdi, %r14
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_14
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ebx
	jmp	.LBB4_18
.LBB4_6:
	xorl	%eax, %eax
	jmp	.LBB4_20
.LBB4_7:
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movsbq	(%rcx), %rdx
	testb	$4, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB4_11
# %bb.8:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rax
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_20
.LBB4_13:
	movl	$4, %eax
	jmp	.LBB4_20
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_15
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33, %ebx
	jl	.LBB4_19
# %bb.17:
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	movl	$32, %ecx
	xorl	%eax, %eax
	callq	luaL_error
.LBB4_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_19:
	movslq	%ebx, %rax
.LBB4_20:
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB4_20
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
	.quad	.LBB4_20
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
	.quad	.LBB4_20
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_5
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB5_9
.LBB5_8:
	leal	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %eax
	je	.LBB5_10
.LBB5_9:
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movl	%ebx, 4(%r15)
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:
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
	.quad	.LBB5_13
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
