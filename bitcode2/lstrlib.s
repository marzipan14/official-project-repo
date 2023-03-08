	.text
	.file	"lstrlib.c"
	.globl	luaopen_string          # -- Begin function luaopen_string
	.p2align	4, 0x90
	.type	luaopen_string,@function
luaopen_string:                         # @luaopen_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	movl	$strlib, %edx
	callq	luaL_register
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushlstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movl	$.L.str.40, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_string, .Lfunc_end0-luaopen_string
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_byte
	.type	str_byte,@function
str_byte:                               # @str_byte
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r13
	leaq	-48(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %rbx
	movl	$1, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	callq	luaL_optinteger
	movq	%rax, %r15
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jns	.LBB1_2
# %bb.1:
	addq	%rax, %r15
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	xorl	%r12d, %r12d
	testq	%r15, %r15
	cmovnsq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	callq	luaL_optinteger
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB1_4
# %bb.3:
	addq	%rdx, %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jg	.LBB1_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB1_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB1_8:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jl	.LBB1_14
# %bb.9:
	movl	%ecx, %r12d
	subl	%r15d, %r12d
	addl	$1, %r12d
	movslq	%r12d, %r14
	leaq	(%r15,%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jg	.LBB1_11
# %bb.10:
	movl	$.L.str.16, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB1_11:
	movl	$.L.str.16, %edx
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB1_14
# %bb.12:
	addq	%rbx, %r15
	addq	$-1, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %esi
	movq	%r13, %rdi
	callq	lua_pushinteger
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jl	.LBB1_13
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	str_byte, .Lfunc_end1-str_byte
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_char
	.type	str_char,@function
str_char:                               # @str_char
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, %r14d
	leaq	-1088(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB2_7
# %bb.1:
	leaq	-40(%rbp), %r12
	negl	%r14d
	movl	$1, %ebx
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1088(%rbp)
	movb	%r13b, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r14,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	cmpl	$1, %eax
	je	.LBB2_7
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaL_checkinteger
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %r13d             # imm = 0x100
	jb	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-1088(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	-1088(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1088(%rbp), %rax
	jmp	.LBB2_6
.LBB2_7:
	leaq	-1088(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	str_char, .Lfunc_end2-str_char
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_dump
	.type	str_dump,@function
str_dump:                               # @str_dump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1056, %rsp             # imm = 0x420
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$6, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_settop
	leaq	-1064(%rbp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaL_buffinit
	movl	$writer, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	lua_dump
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB3_2:
	leaq	-1064(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	str_dump, .Lfunc_end3-str_dump
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_find
	.type	str_find,@function
str_find:                               # @str_find
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	str_find_aux
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	str_find, .Lfunc_end4-str_find
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function str_format
.LCPI5_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.p2align	4, 0x90
	.type	str_format,@function
str_format:                             # @str_format
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1624, %rsp             # imm = 0x658
	movq	%rdi, %r13
	callq	lua_gettop
	movl	%eax, -84(%rbp)         # 4-byte Spill
	leaq	-96(%rbp), %rdx
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r12
	movq	-96(%rbp), %r14
	leaq	-1144(%rbp), %rsi
	movq	%r13, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jle	.LBB5_68
# %bb.1:
	addq	%r12, %r14
	movl	$1, %ebx
	movq	%r14, -72(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #     Child Loop BB5_41 Depth 2
	cmpb	$37, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_3
# %bb.7:                                #   in Loop: Header=BB5_2 Depth=1
	cmpb	$37, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.8:                                #   in Loop: Header=BB5_2 Depth=1
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
.LBB5_10:                               #   in Loop: Header=BB5_2 Depth=1
	movb	1(%r12), %cl
	addq	$2, %r12
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_3:                                #   in Loop: Header=BB5_2 Depth=1
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
.LBB5_5:                                #   in Loop: Header=BB5_2 Depth=1
	movb	(%r12), %cl
	addq	$1, %r12
.LBB5_6:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rax), %rdx
	movq	%rdx, -1144(%rbp)
	movb	%cl, (%rax)
	movl	%ebx, %r15d
	jmp	.LBB5_66
	.p2align	4, 0x90
.LBB5_11:                               #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %r12
	leal	1(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-84(%rbp), %ebx         # 4-byte Folded Reload
	jl	.LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.28, %edx
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	testb	%al, %al
	je	.LBB5_17
# %bb.14:                               # %.preheader1
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r12, %rbx
	.p2align	4, 0x90
.LBB5_15:                               #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%al, %esi
	movl	$.L.str.30, %edi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_18
# %bb.16:                               #   in Loop: Header=BB5_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_15
.LBB5_17:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_18:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%rbx, %rax
	subq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$6, %rax
	jb	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.31, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB5_20:                               #   in Loop: Header=BB5_2 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_22:                               #   in Loop: Header=BB5_2 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_24
# %bb.23:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rbx), %cl
	addq	$1, %rbx
.LBB5_24:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %cl
	jne	.LBB5_30
# %bb.25:                               #   in Loop: Header=BB5_2 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rbx), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %rbx
	jmp	.LBB5_28
.LBB5_27:                               #   in Loop: Header=BB5_2 Depth=1
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_28:                               #   in Loop: Header=BB5_2 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_30
# %bb.29:                               #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_30:                               #   in Loop: Header=BB5_2 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_32
# %bb.31:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB5_32:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r13, %r14
	movb	$37, -64(%rbp)
	movq	%rbx, %r13
	subq	%r12, %r13
	leaq	1(%r13), %rdx
	leaq	-63(%rbp), %rdi
	movq	%r12, %rsi
	callq	strncpy
	movb	$0, -62(%rbp,%r13)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-69, %eax
	cmpl	$51, %eax
	ja	.LBB5_63
# %bb.33:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rbx), %r12
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_37:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %r13
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	luaL_checknumber
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	movb	$1, %al
	callq	sprintf
	jmp	.LBB5_65
.LBB5_36:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-64(%rbp), %rdi
	callq	strlen
	movq	%rax, %r13
	movb	-65(%rbp,%rax), %bl
	leaq	(%rax,%rbp), %rdi
	addq	$-65, %rdi
	movl	$.L.str.33, %esi
	callq	strcpy
	movb	%bl, -64(%rbp,%r13)
	movb	$0, -63(%rbp,%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	luaL_checknumber
	movapd	%xmm0, %xmm1
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rax, %rdx
	jmp	.LBB5_35
.LBB5_34:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-64(%rbp), %rdi
	callq	strlen
	movq	%rax, %r13
	movb	-65(%rbp,%rax), %bl
	leaq	(%rax,%rbp), %rdi
	addq	$-65, %rdi
	movl	$.L.str.33, %esi
	callq	strcpy
	movb	%bl, -64(%rbp,%r13)
	movb	$0, -63(%rbp,%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %rdx
.LBB5_35:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	callq	sprintf
.LBB5_65:                               #   in Loop: Header=BB5_2 Depth=1
	movq	-72(%rbp), %r14         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	strlen
	leaq	-1144(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	luaL_addlstring
	movl	$42, __A_VARIABLE(%rip)
.LBB5_66:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_67:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %ebx
	cmpq	%r14, %r12
	jb	.LBB5_2
	jmp	.LBB5_68
.LBB5_64:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %r13
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %edx
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB5_65
.LBB5_38:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	leaq	-80(%rbp), %rdx
	callq	luaL_checklstring
	movq	%rax, %r13
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rbx
	cmpq	%rbx, %rax
	jb	.LBB5_40
# %bb.39:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
.LBB5_40:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1144(%rbp)
	movb	$34, (%rax)
	jmp	.LBB5_41
	.p2align	4, 0x90
.LBB5_48:                               #   in Loop: Header=BB5_41 Depth=2
	movzbl	(%r13), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -1144(%rbp)
	movb	%cl, (%rax)
.LBB5_55:                               #   in Loop: Header=BB5_41 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
.LBB5_41:                               #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB5_56
# %bb.42:                               #   in Loop: Header=BB5_41 Depth=2
	movzbl	(%r13), %eax
	movsbl	%al, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$34, %ecx
	ja	.LBB5_43
# %bb.70:                               #   in Loop: Header=BB5_41 Depth=2
	jmpq	*.LJTI5_1(,%rcx,8)
.LBB5_51:                               #   in Loop: Header=BB5_41 Depth=2
	movl	$.L.str.35, %esi
	movl	$4, %edx
	jmp	.LBB5_50
	.p2align	4, 0x90
.LBB5_43:                               #   in Loop: Header=BB5_41 Depth=2
	cmpl	$92, %ecx
	jne	.LBB5_52
.LBB5_44:                               #   in Loop: Header=BB5_41 Depth=2
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB5_46
# %bb.45:                               #   in Loop: Header=BB5_41 Depth=2
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
.LBB5_46:                               #   in Loop: Header=BB5_41 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, -1144(%rbp)
	movb	$92, (%rax)
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB5_48
# %bb.47:                               #   in Loop: Header=BB5_41 Depth=2
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
	jmp	.LBB5_48
.LBB5_52:                               #   in Loop: Header=BB5_41 Depth=2
	movq	-1144(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jb	.LBB5_54
# %bb.53:                               #   in Loop: Header=BB5_41 Depth=2
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13), %eax
	movq	-1144(%rbp), %rcx
.LBB5_54:                               #   in Loop: Header=BB5_41 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, -1144(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB5_55
.LBB5_49:                               #   in Loop: Header=BB5_41 Depth=2
	movl	$.L.str.34, %esi
	movl	$2, %edx
.LBB5_50:                               #   in Loop: Header=BB5_41 Depth=2
	leaq	-1144(%rbp), %rdi
	callq	luaL_addlstring
	jmp	.LBB5_55
.LBB5_59:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	leaq	-80(%rbp), %rdx
	callq	luaL_checklstring
	movq	%rax, %r13
	leaq	-64(%rbp), %rdi
	movl	$46, %esi
	callq	strchr
	movq	-80(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB5_61
# %bb.60:                               #   in Loop: Header=BB5_2 Depth=1
	cmpq	$99, %rcx
	jbe	.LBB5_61
# %bb.62:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %r13
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	lua_pushvalue
	leaq	-1144(%rbp), %rdi
	callq	luaL_addvalue
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB5_67
.LBB5_56:                               #   in Loop: Header=BB5_2 Depth=1
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB5_58
# %bb.57:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1144(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
.LBB5_58:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1144(%rbp)
	movb	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB5_67
.LBB5_61:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	sprintf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	jmp	.LBB5_65
.LBB5_68:
	leaq	-1144(%rbp), %rdi
	callq	luaL_pushresult
	movl	$1, %eax
.LBB5_69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1624, %rsp             # imm = 0x658
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_63:
	movsbl	(%rbx), %edx
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_69
.Lfunc_end5:
	.size	str_format, .Lfunc_end5-str_format
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_37
	.quad	.LBB5_63
	.quad	.LBB5_37
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_36
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_64
	.quad	.LBB5_34
	.quad	.LBB5_37
	.quad	.LBB5_37
	.quad	.LBB5_37
	.quad	.LBB5_63
	.quad	.LBB5_34
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_36
	.quad	.LBB5_63
	.quad	.LBB5_38
	.quad	.LBB5_63
	.quad	.LBB5_59
	.quad	.LBB5_63
	.quad	.LBB5_36
	.quad	.LBB5_63
	.quad	.LBB5_63
	.quad	.LBB5_36
.LJTI5_1:
	.quad	.LBB5_51
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_44
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_49
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_52
	.quad	.LBB5_44
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function gfind_nodef
	.type	gfind_nodef,@function
gfind_nodef:                            # @gfind_nodef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gfind_nodef, .Lfunc_end6-gfind_nodef
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function gmatch
	.type	gmatch,@function
gmatch:                                 # @gmatch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	lua_pushinteger
	movl	$gmatch_aux, %esi
	movq	%rbx, %rdi
	movl	$3, %edx
	callq	lua_pushcclosure
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gmatch, .Lfunc_end7-gmatch
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_gsub
	.type	str_gsub,@function
str_gsub:                               # @str_gsub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1656, %rsp             # imm = 0x678
	movq	%rdi, %rbx
	leaq	-80(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r12
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_type
	movl	%eax, %r14d
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movq	%rbx, %rdi
	movl	$4, %esi
	callq	luaL_optinteger
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	cmpb	$94, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_2
# %bb.1:
	addq	$1, -48(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB8_2:
	addl	$-3, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r14d
	jb	.LBB8_4
# %bb.3:
	movl	$.L.str.37, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB8_4:
	leaq	-1696(%rbp), %rsi
	movq	%rbx, %rdi
	callq	luaL_buffinit
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -632(%rbp)
	movq	%r12, -648(%rbp)
	movq	-80(%rbp), %rax
	addq	%r12, %rax
	movq	%rax, -640(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-648(%rbp), %r15
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB8_5
	.p2align	4, 0x90
.LBB8_54:                               #   in Loop: Header=BB8_5 Depth=1
	movb	(%r12), %cl
	addq	$1, %r12
	leaq	1(%rax), %rdx
	movq	%rdx, -1696(%rbp)
	movb	%cl, (%rax)
	movq	%r12, %r13
.LBB8_55:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r12
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_56
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_21 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-104(%rbp), %ebx        # 4-byte Folded Reload
	jge	.LBB8_6
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$0, -624(%rbp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_8
# %bb.9:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %r13
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	-632(%rbp), %r15
	movq	%r15, %rdi
	movl	$3, %esi
	callq	lua_type
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB8_19
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$5, %eax
	je	.LBB8_34
# %bb.11:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$6, %eax
	jne	.LBB8_44
# %bb.12:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	$3, %esi
	callq	lua_pushvalue
	movl	-624(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB8_15
.LBB8_14:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
.LBB8_15:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-632(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%ebx, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	leaq	-648(%rbp), %r15
	jle	.LBB8_18
# %bb.16:                               # %.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB8_17:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	push_onecapture
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %ebx
	jne	.LBB8_17
.LBB8_18:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	callq	lua_call
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB8_43
	.p2align	4, 0x90
.LBB8_8:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_51
	.p2align	4, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-632(%rbp), %rdi
	movl	$3, %esi
	leaq	-88(%rbp), %rdx
	callq	lua_tolstring
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_33
# %bb.20:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %r14
	movq	%r13, %r15
	subq	%r12, %r15
	xorl	%ebx, %ebx
	jmp	.LBB8_21
	.p2align	4, 0x90
.LBB8_24:                               #   in Loop: Header=BB8_21 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, -1696(%rbp)
	movb	%al, (%rcx)
.LBB8_32:                               #   in Loop: Header=BB8_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-88(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB8_33
.LBB8_21:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	jne	.LBB8_22
# %bb.25:                               #   in Loop: Header=BB8_21 Depth=2
	callq	__locale_ctype_ptr
	movzbl	1(%r14,%rbx), %ecx
	addq	$1, %rbx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_29
# %bb.26:                               #   in Loop: Header=BB8_21 Depth=2
	movq	-1696(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-648(%rbp), %rdx
	cmpq	%rdx, %rax
	jb	.LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_21 Depth=2
	leaq	-1696(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r14,%rbx), %ecx
	movq	-1696(%rbp), %rax
.LBB8_28:                               #   in Loop: Header=BB8_21 Depth=2
	leaq	1(%rax), %rdx
	movq	%rdx, -1696(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB8_32
	.p2align	4, 0x90
.LBB8_22:                               #   in Loop: Header=BB8_21 Depth=2
	movq	-1696(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-648(%rbp), %rdx
	cmpq	%rdx, %rcx
	jb	.LBB8_24
# %bb.23:                               #   in Loop: Header=BB8_21 Depth=2
	leaq	-1696(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r14,%rbx), %eax
	movq	-1696(%rbp), %rcx
	jmp	.LBB8_24
	.p2align	4, 0x90
.LBB8_29:                               #   in Loop: Header=BB8_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	jne	.LBB8_31
# %bb.30:                               #   in Loop: Header=BB8_21 Depth=2
	leaq	-1696(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	luaL_addlstring
	jmp	.LBB8_32
.LBB8_31:                               #   in Loop: Header=BB8_21 Depth=2
	movsbl	%cl, %esi
	addl	$-49, %esi
	leaq	-648(%rbp), %rdi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	push_onecapture
	leaq	-1696(%rbp), %rdi
	callq	luaL_addvalue
	jmp	.LBB8_32
	.p2align	4, 0x90
.LBB8_33:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB8_50
.LBB8_34:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$0, -624(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB8_35
# %bb.36:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-608(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB8_37
# %bb.39:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-632(%rbp), %rdi
	movq	-616(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rbx
	jne	.LBB8_38
# %bb.40:                               #   in Loop: Header=BB8_5 Depth=1
	subq	-648(%rbp), %rsi
	addq	$1, %rsi
	callq	lua_pushinteger
	jmp	.LBB8_41
.LBB8_35:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-632(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdx
	subq	%r12, %rdx
	movq	%r12, %rsi
	callq	lua_pushlstring
	jmp	.LBB8_42
.LBB8_37:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-632(%rbp), %rdi
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movq	-632(%rbp), %rdi
	movq	-616(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB8_38:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, %rdx
	callq	lua_pushlstring
.LBB8_41:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB8_42:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$3, %esi
	callq	lua_gettable
.LBB8_43:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_44:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	testl	%eax, %eax
	je	.LBB8_45
# %bb.46:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$-1, %esi
	callq	lua_isstring
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_49
# %bb.47:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.38, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB8_48
.LBB8_45:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$-2, %esi
	callq	lua_settop
	movq	%r13, %rdx
	subq	%r12, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lua_pushlstring
.LBB8_48:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_49:                               #   in Loop: Header=BB8_5 Depth=1
	leaq	-1696(%rbp), %rdi
	callq	luaL_addvalue
.LBB8_50:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-52(%rbp), %ebx         # 4-byte Reload
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r13
	leaq	-648(%rbp), %r15
	ja	.LBB8_55
.LBB8_51:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-640(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r12
	jae	.LBB8_58
# %bb.52:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-1696(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-648(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_54
# %bb.53:                               #   in Loop: Header=BB8_5 Depth=1
	leaq	-1696(%rbp), %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-1696(%rbp), %rax
	jmp	.LBB8_54
.LBB8_6:
	movq	%r12, %r13
.LBB8_56:
	movq	-640(%rbp), %rdx
	movq	%r13, %r12
	jmp	.LBB8_57
.LBB8_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_57:
	movq	-64(%rbp), %r14         # 8-byte Reload
	subq	%r12, %rdx
	leaq	-1696(%rbp), %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	luaL_addlstring
	movq	%r15, %rdi
	callq	luaL_pushresult
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	addq	$1656, %rsp             # imm = 0x678
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	str_gsub, .Lfunc_end8-str_gsub
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_len
	.type	str_len,@function
str_len:                                # @str_len
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	-16(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	str_len, .Lfunc_end9-str_len
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_lower
	.type	str_lower,@function
str_lower:                              # @str_lower
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdi, %r14
	leaq	-48(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r12
	leaq	-1096(%rbp), %rsi
	movq	%r14, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_5
# %bb.1:
	leaq	-48(%rbp), %r15
	xorl	%ebx, %ebx
	leaq	-1096(%rbp), %r14
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
	movzbl	(%r12,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	leal	32(%r13), %ecx
	cmpb	$1, %al
	movzbl	%cl, %eax
	cmovnel	%r13d, %eax
	movq	-1096(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -1096(%rbp)
	movb	%al, (%rcx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %rbx
	jae	.LBB10_5
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r15, -1096(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	movq	%r14, %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_4
.LBB10_5:
	leaq	-1096(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	str_lower, .Lfunc_end10-str_lower
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_match
	.type	str_match,@function
str_match:                              # @str_match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	str_find_aux
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	str_match, .Lfunc_end11-str_match
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_rep
	.type	str_rep,@function
str_rep:                                # @str_rep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdi, %r15
	leaq	-32(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	leaq	-1080(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB12_3
# %bb.1:                                # %.preheader
	addl	$1, %ebx
	leaq	-1080(%rbp), %r15
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaL_addlstring
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB12_2
.LBB12_3:
	leaq	-1080(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	str_rep, .Lfunc_end12-str_rep
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_reverse
	.type	str_reverse,@function
str_reverse:                            # @str_reverse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdi, %r14
	leaq	-32(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %rbx
	leaq	-1080(%rbp), %rsi
	movq	%r14, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB13_1
.LBB13_5:
	leaq	-1080(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_1:
	leaq	-32(%rbp), %r15
	leaq	-1080(%rbp), %r14
	jmp	.LBB13_2
	.p2align	4, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_2 Depth=1
	movzbl	(%rbx,%rax), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, -1080(%rbp)
	movb	%al, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB13_5
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	-1080(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jb	.LBB13_4
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movq	%r14, %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	-1080(%rbp), %rcx
	jmp	.LBB13_4
.Lfunc_end13:
	.size	str_reverse, .Lfunc_end13-str_reverse
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_sub
	.type	str_sub,@function
str_sub:                                # @str_sub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	leaq	-32(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jns	.LBB14_2
# %bb.1:
	addq	%rax, %rbx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$3, %esi
	movq	$-1, %rdx
	callq	luaL_optinteger
	movq	-32(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB14_4
# %bb.3:
	addq	%rcx, %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB14_4:
	xorl	%edx, %edx
	testq	%rax, %rax
	cmovnsq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jg	.LBB14_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jle	.LBB14_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %rdx
	jge	.LBB14_9
# %bb.10:
	movl	$.L.str.39, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	jmp	.LBB14_11
.LBB14_9:
	leaq	(%r14,%rbx), %rsi
	addq	$-1, %rsi
	addq	$1, %rdx
	movq	%r15, %rdi
.LBB14_11:
	callq	lua_pushlstring
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	str_sub, .Lfunc_end14-str_sub
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_upper
	.type	str_upper,@function
str_upper:                              # @str_upper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdi, %r14
	leaq	-48(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r12
	leaq	-1096(%rbp), %rsi
	movq	%r14, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_5
# %bb.1:
	leaq	-48(%rbp), %r15
	xorl	%ebx, %ebx
	leaq	-1096(%rbp), %r14
	jmp	.LBB15_2
	.p2align	4, 0x90
.LBB15_4:                               #   in Loop: Header=BB15_2 Depth=1
	movzbl	(%r12,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	leal	-32(%r13), %ecx
	cmpb	$2, %al
	movzbl	%cl, %eax
	cmovnel	%r13d, %eax
	movq	-1096(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -1096(%rbp)
	movb	%al, (%rcx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %rbx
	jae	.LBB15_5
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r15, -1096(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB15_4
# %bb.3:                                #   in Loop: Header=BB15_2 Depth=1
	movq	%r14, %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_4
.LBB15_5:
	leaq	-1096(%rbp), %rdi
	callq	luaL_pushresult
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	str_upper, .Lfunc_end15-str_upper
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function writer
	.type	writer,@function
writer:                                 # @writer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rcx, %rdi
	callq	luaL_addlstring
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	writer, .Lfunc_end16-writer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function str_find_aux
	.type	str_find_aux,@function
str_find_aux:                           # @str_find_aux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
	movl	%esi, %r15d
	movq	%rdi, %r12
	leaq	-72(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r14
	leaq	-88(%rbp), %rdx
	movq	%r12, %rdi
	movl	$2, %esi
	callq	luaL_checklstring
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %edx
	movq	%r12, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jns	.LBB17_2
# %bb.1:
	addq	%rax, %rbx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB17_2:
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	cmovsq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jle	.LBB17_4
# %bb.3:
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	cmpq	%rax, %rbx
	jbe	.LBB17_5
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	je	.LBB17_23
# %bb.6:
	movq	%r12, %rdi
	movl	$4, %esi
	callq	lua_toboolean
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_7
.LBB17_8:
	movq	%r12, -80(%rbp)         # 8-byte Spill
	leaq	(%r14,%rbx), %r12
	movq	-72(%rbp), %r14
	movq	-88(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_9
# %bb.10:
	subq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jbe	.LBB17_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_12
.LBB17_7:
	movl	$.L.str.19, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	strpbrk
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_8
.LBB17_23:
	movl	%r15d, -64(%rbp)        # 4-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$94, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r15b
	jne	.LBB17_25
# %bb.24:
	addq	$1, -56(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB17_25:
	addq	%r14, %rbx
	movq	%r12, -616(%rbp)
	movq	%r14, -632(%rbp)
	movq	-72(%rbp), %rax
	addq	%r14, %rax
	movq	%rax, -624(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-632(%rbp), %r14
	.p2align	4, 0x90
.LBB17_26:                              # =>This Inner Loop Header: Depth=1
	movl	$0, -608(%rbp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB17_27
# %bb.40:                               #   in Loop: Header=BB17_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-624(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB17_42
# %bb.41:                               #   in Loop: Header=BB17_26 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	jne	.LBB17_26
.LBB17_42:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_43
.LBB17_9:
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB17_21
.LBB17_27:
	movq	%rax, %r13
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB17_32
# %bb.28:
	movq	-48(%rbp), %r14         # 8-byte Reload
	subq	%r14, %rbx
	addq	$1, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	subq	%r14, %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	lua_pushinteger
	movl	-608(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-616(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%r14d, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB17_31
# %bb.29:                               # %.preheader
	xorl	%ebx, %ebx
	leaq	-632(%rbp), %r15
	.p2align	4, 0x90
.LBB17_30:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	push_onecapture
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r14d
	jne	.LBB17_30
.LBB17_31:
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %r14d
	jmp	.LBB17_39
.LBB17_13:
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r14
	je	.LBB17_19
# %bb.14:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_19
# %bb.16:                               #   in Loop: Header=BB17_15 Depth=1
	movq	%rax, %r15
	leaq	1(%rax), %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_17
# %bb.18:                               #   in Loop: Header=BB17_15 Depth=1
	addq	%r12, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r12
	subq	%r13, %r14
	jne	.LBB17_15
.LBB17_19:
	xorl	%r12d, %r12d
	jmp	.LBB17_20
.LBB17_32:
	movl	-608(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB17_34
# %bb.33:
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB17_35
.LBB17_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB17_35:
	movq	-616(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%r14d, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB17_38
# %bb.36:                               # %.preheader2
	xorl	%r15d, %r15d
	leaq	-632(%rbp), %r12
	.p2align	4, 0x90
.LBB17_37:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	push_onecapture
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r14d
	jne	.LBB17_37
.LBB17_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_44
.LBB17_17:
	movq	%r15, %r12
.LBB17_20:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB17_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB17_12
# %bb.22:
	subq	%rax, %r12
	leaq	1(%r12), %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	lua_pushinteger
	addq	-88(%rbp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
	jmp	.LBB17_44
.LBB17_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r12         # 8-byte Reload
.LBB17_43:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	lua_pushnil
	movl	$1, %r14d
.LBB17_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	str_find_aux, .Lfunc_end17-str_find_aux
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function match
	.type	match,@function
match:                                  # @match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
                                        # implicit-def: $rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
.LBB18_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_2 Depth 2
                                        #       Child Loop BB18_3 Depth 3
                                        #         Child Loop BB18_16 Depth 4
                                        #         Child Loop BB18_33 Depth 4
                                        #       Child Loop BB18_54 Depth 3
                                        #     Child Loop BB18_90 Depth 2
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %r12
.LBB18_2:                               #   Parent Loop BB18_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_3 Depth 3
                                        #         Child Loop BB18_16 Depth 4
                                        #         Child Loop BB18_33 Depth 4
                                        #       Child Loop BB18_54 Depth 3
	movq	%r13, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB18_3:                               #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_16 Depth 4
                                        #         Child Loop BB18_33 Depth 4
	movsbl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %eax
	jne	.LBB18_68
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=3
	movsbl	1(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %eax
	jne	.LBB18_45
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=3
	leaq	2(%r12), %rbx
	cmpb	$91, 2(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=3
	movq	16(%r14), %rdi
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=3
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	classend
	cmpq	(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_9
# %bb.8:                                #   in Loop: Header=BB18_3 Depth=3
	movb	-1(%r13), %r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_10
	.p2align	4, 0x90
.LBB18_9:                               #   in Loop: Header=BB18_3 Depth=3
	xorl	%r14d, %r14d
.LBB18_10:                              #   in Loop: Header=BB18_3 Depth=3
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	-1(%rax), %r15
	leaq	3(%r12), %r13
	cmpb	$94, 3(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movq	%r13, %rax
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	jne	.LBB18_12
# %bb.11:                               #   in Loop: Header=BB18_3 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%r12), %rax
	xorl	%ecx, %ecx
	movq	%r13, %rbx
.LBB18_12:                              #   in Loop: Header=BB18_3 Depth=3
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jae	.LBB18_25
# %bb.13:                               # %.preheader6
                                        #   in Loop: Header=BB18_3 Depth=3
	movzbl	%r14b, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB18_16
	.p2align	4, 0x90
.LBB18_14:                              #   in Loop: Header=BB18_16 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %cl
	je	.LBB18_24
.LBB18_15:                              #   in Loop: Header=BB18_16 Depth=4
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jae	.LBB18_25
.LBB18_16:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_2 Depth=2
                                        #       Parent Loop BB18_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rbx), %esi
	cmpb	$37, %cl
	jne	.LBB18_20
# %bb.17:                               #   in Loop: Header=BB18_16 Depth=4
	movl	-64(%rbp), %edi         # 4-byte Reload
	callq	match_class
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_24
# %bb.18:                               #   in Loop: Header=BB18_16 Depth=4
	addq	$2, %rbx
.LBB18_19:                              #   in Loop: Header=BB18_16 Depth=4
	movq	%rbx, %rax
	jmp	.LBB18_15
	.p2align	4, 0x90
.LBB18_20:                              #   in Loop: Header=BB18_16 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %sil
	jne	.LBB18_14
# %bb.21:                               #   in Loop: Header=BB18_16 Depth=4
	addq	$3, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jae	.LBB18_14
# %bb.22:                               #   in Loop: Header=BB18_16 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %cl
	ja	.LBB18_19
# %bb.23:                               #   in Loop: Header=BB18_16 Depth=4
	movq	%rbx, %rax
	cmpb	%r14b, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB18_15
	.p2align	4, 0x90
.LBB18_24:                              #   in Loop: Header=BB18_3 Depth=3
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB18_26
	.p2align	4, 0x90
.LBB18_25:                              #   in Loop: Header=BB18_3 Depth=3
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
.LBB18_26:                              #   in Loop: Header=BB18_3 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_116
# %bb.27:                               #   in Loop: Header=BB18_3 Depth=3
	movq	-56(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax), %r14d
	cmpb	$94, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jne	.LBB18_29
# %bb.28:                               #   in Loop: Header=BB18_3 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r12
	xorl	%ebx, %ebx
	jmp	.LBB18_30
	.p2align	4, 0x90
.LBB18_29:                              #   in Loop: Header=BB18_3 Depth=3
	movq	%r13, %r12
	movq	-96(%rbp), %r13         # 8-byte Reload
.LBB18_30:                              #   in Loop: Header=BB18_3 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_33
	.p2align	4, 0x90
.LBB18_31:                              #   in Loop: Header=BB18_33 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %al
	je	.LBB18_43
.LBB18_32:                              #   in Loop: Header=BB18_33 Depth=4
	movq	%r12, %r13
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
.LBB18_33:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_2 Depth=2
                                        #       Parent Loop BB18_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	jae	.LBB18_42
# %bb.34:                               #   in Loop: Header=BB18_33 Depth=4
	movzbl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%r13), %esi
	cmpb	$37, %al
	jne	.LBB18_37
# %bb.35:                               #   in Loop: Header=BB18_33 Depth=4
	movl	%r14d, %edi
	callq	match_class
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_43
# %bb.36:                               #   in Loop: Header=BB18_33 Depth=4
	addq	$2, %r13
	movq	%r13, %r12
	jmp	.LBB18_32
	.p2align	4, 0x90
.LBB18_37:                              #   in Loop: Header=BB18_33 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %sil
	jne	.LBB18_31
# %bb.38:                               #   in Loop: Header=BB18_33 Depth=4
	addq	$3, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jae	.LBB18_31
# %bb.39:                               #   in Loop: Header=BB18_33 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %al
	jbe	.LBB18_41
# %bb.40:                               #   in Loop: Header=BB18_33 Depth=4
	movq	%r13, %r12
	jmp	.LBB18_32
.LBB18_41:                              #   in Loop: Header=BB18_33 Depth=4
	movq	%r13, %r12
	cmpb	%r14b, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB18_32
	jmp	.LBB18_43
	.p2align	4, 0x90
.LBB18_42:                              #   in Loop: Header=BB18_3 Depth=3
	xorl	$1, %ebx
.LBB18_43:                              #   in Loop: Header=BB18_3 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB18_116
# %bb.44:                               #   in Loop: Header=BB18_3 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_45:                              #   in Loop: Header=BB18_2 Depth=2
	cmpl	$98, %eax
	jne	.LBB18_57
# %bb.46:                               #   in Loop: Header=BB18_2 Depth=2
	movb	2(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB18_48
# %bb.47:                               #   in Loop: Header=BB18_2 Depth=2
	cmpb	$0, 3(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_49
.LBB18_48:                              #   in Loop: Header=BB18_2 Depth=2
	movq	16(%r14), %rdi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movb	2(%r12), %al
.LBB18_49:                              #   in Loop: Header=BB18_2 Depth=2
	cmpb	%al, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_115
# %bb.50:                               #   in Loop: Header=BB18_2 Depth=2
	movb	3(%r12), %cl
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	movq	8(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r13
	jae	.LBB18_114
# %bb.51:                               # %.preheader9
                                        #   in Loop: Header=BB18_2 Depth=2
	movl	$1, %esi
	jmp	.LBB18_54
	.p2align	4, 0x90
.LBB18_52:                              #   in Loop: Header=BB18_54 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %esi
	je	.LBB18_66
.LBB18_53:                              #   in Loop: Header=BB18_54 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r13
	jae	.LBB18_114
.LBB18_54:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %bl
	je	.LBB18_52
# %bb.55:                               #   in Loop: Header=BB18_54 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%al, %bl
	jne	.LBB18_53
# %bb.56:                               #   in Loop: Header=BB18_54 Depth=3
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_53
.LBB18_57:                              #   in Loop: Header=BB18_2 Depth=2
	callq	__locale_ctype_ptr
	movzbl	1(%r12), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_75
# %bb.58:                               #   in Loop: Header=BB18_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$49, %cl
	movq	%r14, %rbx
	jb	.LBB18_62
# %bb.59:                               #   in Loop: Header=BB18_2 Depth=2
	leaq	-49(%rcx), %rax
	cmpl	24(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB18_62
# %bb.60:                               #   in Loop: Header=BB18_2 Depth=2
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	40(%rbx,%rcx), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB18_62
# %bb.61:                               #   in Loop: Header=BB18_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_63
.LBB18_62:                              #   in Loop: Header=BB18_2 Depth=2
	movq	16(%rbx), %rdi
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	cltq
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	40(%rbx,%rcx), %r14
.LBB18_63:                              #   in Loop: Header=BB18_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rcx
	subq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jb	.LBB18_115
# %bb.64:                               #   in Loop: Header=BB18_2 Depth=2
	shlq	$4, %rax
	movq	32(%rbx,%rax), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_115
# %bb.65:                               #   in Loop: Header=BB18_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	addq	%r14, %r13
	movq	%rbx, %r14
	jne	.LBB18_67
	jmp	.LBB18_117
.LBB18_66:                              #   in Loop: Header=BB18_2 Depth=2
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB18_67:                              #   in Loop: Header=BB18_2 Depth=2
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_2
	.p2align	4, 0x90
.LBB18_68:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	$39, %eax
	jg	.LBB18_73
# %bb.69:                               #   in Loop: Header=BB18_1 Depth=1
	testl	%eax, %eax
	je	.LBB18_118
# %bb.70:                               #   in Loop: Header=BB18_1 Depth=1
	cmpl	$36, %eax
	jne	.LBB18_75
# %bb.71:                               #   in Loop: Header=BB18_1 Depth=1
	cmpb	$0, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_75
	jmp	.LBB18_72
.LBB18_73:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	$41, %eax
	je	.LBB18_120
# %bb.74:                               #   in Loop: Header=BB18_1 Depth=1
	cmpl	$40, %eax
	je	.LBB18_123
.LBB18_75:                              #   in Loop: Header=BB18_1 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	classend
	movq	%rax, %r15
	cmpq	8(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_80
# %bb.76:                               #   in Loop: Header=BB18_1 Depth=1
	movzbl	(%r13), %r13d
	movb	(%r12), %dl
	movsbl	%dl, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$91, %ecx
	je	.LBB18_81
# %bb.77:                               #   in Loop: Header=BB18_1 Depth=1
	cmpl	$46, %ecx
	je	.LBB18_83
# %bb.78:                               #   in Loop: Header=BB18_1 Depth=1
	cmpl	$37, %ecx
	jne	.LBB18_84
# %bb.79:                               #   in Loop: Header=BB18_1 Depth=1
	movzbl	1(%r12), %esi
	movl	%r13d, %edi
	callq	match_class
	jmp	.LBB18_85
.LBB18_80:                              #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB18_103
.LBB18_81:                              #   in Loop: Header=BB18_1 Depth=1
	leaq	-1(%r15), %r14
	leaq	1(%r12), %rbx
	cmpb	$94, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
	jne	.LBB18_86
# %bb.82:                               #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	2(%r12), %rax
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB18_87
.LBB18_83:                              #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	jmp	.LBB18_85
.LBB18_84:                              #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	cmpb	%r13b, %dl
	sete	%al
.LBB18_85:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB18_102
.LBB18_86:                              #   in Loop: Header=BB18_1 Depth=1
	movq	%rbx, %rax
	movq	%r12, %rbx
.LBB18_87:                              #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_90
.LBB18_88:                              #   in Loop: Header=BB18_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r13b, %cl
	je	.LBB18_99
.LBB18_89:                              #   in Loop: Header=BB18_90 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB18_90:                              #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jae	.LBB18_100
# %bb.91:                               #   in Loop: Header=BB18_90 Depth=2
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rbx), %esi
	cmpb	$37, %cl
	jne	.LBB18_95
# %bb.92:                               #   in Loop: Header=BB18_90 Depth=2
	movl	%r13d, %edi
	callq	match_class
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_99
# %bb.93:                               #   in Loop: Header=BB18_90 Depth=2
	addq	$2, %rbx
.LBB18_94:                              #   in Loop: Header=BB18_90 Depth=2
	movq	%rbx, %rax
	jmp	.LBB18_89
.LBB18_95:                              #   in Loop: Header=BB18_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %sil
	jne	.LBB18_88
# %bb.96:                               #   in Loop: Header=BB18_90 Depth=2
	addq	$3, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB18_88
# %bb.97:                               #   in Loop: Header=BB18_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r13b, %cl
	ja	.LBB18_94
# %bb.98:                               #   in Loop: Header=BB18_90 Depth=2
	movq	%rbx, %rax
	cmpb	%r13b, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB18_89
.LBB18_99:                              #   in Loop: Header=BB18_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	jmp	.LBB18_101
.LBB18_100:                             #   in Loop: Header=BB18_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
.LBB18_101:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
.LBB18_102:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB18_103:                             #   in Loop: Header=BB18_1 Depth=1
	movsbl	(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-42, %ecx
	cmpl	$21, %ecx
	ja	.LBB18_108
# %bb.104:                              #   in Loop: Header=BB18_1 Depth=1
	jmpq	*.LJTI18_0(,%rcx,8)
.LBB18_105:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB18_110
# %bb.106:                              #   in Loop: Header=BB18_1 Depth=1
	leaq	1(%r13), %rsi
	addq	$1, %r15
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_111
# %bb.107:                              #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r12, %r15
	jmp	.LBB18_112
.LBB18_108:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB18_168
# %bb.109:                              #   in Loop: Header=BB18_1 Depth=1
	addq	$1, %r13
	movl	$2, %ecx
	jmp	.LBB18_113
.LBB18_110:                             #   in Loop: Header=BB18_1 Depth=1
	addq	$1, %r15
.LBB18_111:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$2, %ecx
.LBB18_112:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB18_113:                             #   in Loop: Header=BB18_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB18_1
	jmp	.LBB18_119
.LBB18_114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_115:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_116:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_117:
	xorl	%r13d, %r13d
.LBB18_118:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
.LBB18_119:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_120:
	addq	$1, %r12
	movslq	24(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%r14, %rcx
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB18_121:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB18_131
# %bb.122:                              #   in Loop: Header=BB18_121 Depth=1
	addq	$-1, %rax
	cmpq	$-1, (%rcx)
	leaq	-16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_121
	jmp	.LBB18_132
.LBB18_123:
	cmpb	$41, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_134
# %bb.124:
	addq	$2, %r12
	movslq	24(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rbx
	jl	.LBB18_126
# %bb.125:
	movq	16(%r14), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB18_126:
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	%r13, 32(%r14,%rax)
	movq	$-2, 40(%r14,%rax)
	jmp	.LBB18_127
.LBB18_131:
	movq	16(%r14), %rdi
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	luaL_error
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
.LBB18_132:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rbx
	shlq	$4, %rbx
	movq	%r13, %rax
	subq	32(%r14,%rbx), %rax
	movq	%rax, 40(%r14,%rbx)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	match
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB18_130
# %bb.133:
	leaq	(%r14,%rbx), %rax
	addq	$40, %rax
	movq	$-1, (%rax)
	jmp	.LBB18_129
.LBB18_134:
	addq	$1, %r12
	movslq	24(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rbx
	jl	.LBB18_136
# %bb.135:
	movq	16(%r14), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB18_136:
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	%r13, 32(%r14,%rax)
	movq	$-1, 40(%r14,%rax)
.LBB18_127:
	leal	1(%rbx), %eax
	movl	%eax, 24(%r14)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	match
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB18_130
# %bb.128:
	addl	$-1, 24(%r14)
.LBB18_129:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_130:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_118
.LBB18_72:
	xorl	%eax, %eax
	cmpq	8(%r14), %r13
	cmovneq	%rax, %r13
	jmp	.LBB18_118
.LBB18_137:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	max_expand
	jmp	.LBB18_171
.LBB18_138:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB18_168
# %bb.139:
	addq	$1, %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	max_expand
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_118
.LBB18_168:
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_118
.LBB18_140:
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r15), %rbx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB18_170
# %bb.141:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%r13, %rbx
	leaq	1(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$-1, %r15
	leaq	2(%r12), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_145
.LBB18_142:                             #   in Loop: Header=BB18_145 Depth=1
	cmpb	%bl, %al
	movl	$0, %eax
	sete	%al
.LBB18_143:                             #   in Loop: Header=BB18_145 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_169
.LBB18_144:                             #   in Loop: Header=BB18_145 Depth=1
	movq	%r13, %rbx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB18_170
.LBB18_145:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_156 Depth 2
	cmpq	8(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_169
# %bb.146:                              #   in Loop: Header=BB18_145 Depth=1
	movq	%rbx, %r13
	movzbl	(%rbx), %ebx
	movb	(%r12), %al
	movsbl	%al, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ecx
	je	.LBB18_150
# %bb.147:                              #   in Loop: Header=BB18_145 Depth=1
	cmpl	$91, %ecx
	je	.LBB18_151
# %bb.148:                              #   in Loop: Header=BB18_145 Depth=1
	cmpl	$46, %ecx
	jne	.LBB18_142
# %bb.149:                              #   in Loop: Header=BB18_145 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_144
.LBB18_150:                             #   in Loop: Header=BB18_145 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax), %esi
	movl	%ebx, %edi
	callq	match_class
	jmp	.LBB18_143
.LBB18_151:                             #   in Loop: Header=BB18_145 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$94, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	movq	%r12, %r14
	jne	.LBB18_153
# %bb.152:                              #   in Loop: Header=BB18_145 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB18_153:                             #   in Loop: Header=BB18_145 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_156
.LBB18_154:                             #   in Loop: Header=BB18_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %cl
	je	.LBB18_165
.LBB18_155:                             #   in Loop: Header=BB18_156 Depth=2
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB18_156:                             #   Parent Loop BB18_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jae	.LBB18_166
# %bb.157:                              #   in Loop: Header=BB18_156 Depth=2
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%r14), %esi
	cmpb	$37, %cl
	jne	.LBB18_161
# %bb.158:                              #   in Loop: Header=BB18_156 Depth=2
	movl	%ebx, %edi
	callq	match_class
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_165
# %bb.159:                              #   in Loop: Header=BB18_156 Depth=2
	addq	$2, %r14
.LBB18_160:                             #   in Loop: Header=BB18_156 Depth=2
	movq	%r14, %rax
	jmp	.LBB18_155
.LBB18_161:                             #   in Loop: Header=BB18_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %sil
	jne	.LBB18_154
# %bb.162:                              #   in Loop: Header=BB18_156 Depth=2
	addq	$3, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB18_154
# %bb.163:                              #   in Loop: Header=BB18_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %cl
	ja	.LBB18_160
# %bb.164:                              #   in Loop: Header=BB18_156 Depth=2
	movq	%r14, %rax
	cmpb	%bl, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB18_155
.LBB18_165:                             #   in Loop: Header=BB18_145 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB18_167
.LBB18_166:                             #   in Loop: Header=BB18_145 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
.LBB18_167:                             #   in Loop: Header=BB18_145 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB18_143
.LBB18_169:
	xorl	%eax, %eax
.LBB18_170:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_171:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_118
.Lfunc_end18:
	.size	match, .Lfunc_end18-match
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_137
	.quad	.LBB18_138
	.quad	.LBB18_108
	.quad	.LBB18_140
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_108
	.quad	.LBB18_105
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function classend
	.type	classend,@function
classend:                               # @classend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	1(%rsi), %rbx
	movsbl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$91, %eax
	je	.LBB19_5
# %bb.1:
	cmpl	$37, %eax
	jne	.LBB19_18
# %bb.2:
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_4
# %bb.3:
	movq	16(%r14), %rdi
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB19_4:
	addq	$2, %r15
	movq	%r15, %rbx
	jmp	.LBB19_18
.LBB19_5:
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$94, %al
	jne	.LBB19_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movb	2(%r15), %al
	addq	$2, %r15
	movq	%r15, %rbx
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_8
	.p2align	4, 0x90
.LBB19_10:                              #   in Loop: Header=BB19_8 Depth=1
	leaq	1(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	je	.LBB19_12
# %bb.11:                               #   in Loop: Header=BB19_8 Depth=1
	movq	%rcx, %rbx
.LBB19_15:                              #   in Loop: Header=BB19_8 Depth=1
	movzbl	(%rcx), %eax
.LBB19_16:                              #   in Loop: Header=BB19_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$93, %al
	je	.LBB19_17
.LBB19_8:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB19_10
# %bb.9:                                #   in Loop: Header=BB19_8 Depth=1
	movq	16(%r14), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx), %eax
	jmp	.LBB19_10
	.p2align	4, 0x90
.LBB19_12:                              #   in Loop: Header=BB19_8 Depth=1
	cmpb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_13
# %bb.14:                               #   in Loop: Header=BB19_8 Depth=1
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	jmp	.LBB19_15
.LBB19_13:                              #   in Loop: Header=BB19_8 Depth=1
	xorl	%eax, %eax
	movq	%rcx, %rbx
	jmp	.LBB19_16
.LBB19_17:
	addq	$1, %rbx
.LBB19_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	classend, .Lfunc_end19-classend
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function max_expand
	.type	max_expand,@function
max_expand:                             # @max_expand
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
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jbe	.LBB20_1
# %bb.2:
	leaq	1(%rdx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	-1(%r15), %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	leaq	2(%rdx), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_3
	.p2align	4, 0x90
.LBB20_6:                               #   in Loop: Header=BB20_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_30:                              #   in Loop: Header=BB20_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%r13), %rcx
	addq	$1, %rcx
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB20_31
.LBB20_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_11 Depth 2
	movzbl	(%r13,%r12), %r14d
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	(%rcx), %cl
	movsbl	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %edx
	je	.LBB20_7
# %bb.4:                                #   in Loop: Header=BB20_3 Depth=1
	cmpl	$91, %edx
	je	.LBB20_8
# %bb.5:                                #   in Loop: Header=BB20_3 Depth=1
	cmpl	$46, %edx
	je	.LBB20_6
# %bb.26:                               #   in Loop: Header=BB20_3 Depth=1
	xorl	%ebx, %ebx
	cmpb	%r14b, %cl
	sete	%bl
	jmp	.LBB20_27
	.p2align	4, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax), %esi
	movl	%r14d, %edi
	callq	match_class
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %ebx
	jmp	.LBB20_27
	.p2align	4, 0x90
.LBB20_8:                               #   in Loop: Header=BB20_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$94, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	movq	-80(%rbp), %r15         # 8-byte Reload
	jne	.LBB20_10
# %bb.9:                                #   in Loop: Header=BB20_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB20_10:                              #   in Loop: Header=BB20_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_11
	.p2align	4, 0x90
.LBB20_20:                              #   in Loop: Header=BB20_11 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %cl
	je	.LBB20_24
.LBB20_22:                              #   in Loop: Header=BB20_11 Depth=2
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB20_11:                              #   Parent Loop BB20_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jae	.LBB20_23
# %bb.12:                               #   in Loop: Header=BB20_11 Depth=2
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%r15), %esi
	cmpb	$37, %cl
	jne	.LBB20_15
# %bb.13:                               #   in Loop: Header=BB20_11 Depth=2
	movl	%r14d, %edi
	callq	match_class
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_14
# %bb.21:                               #   in Loop: Header=BB20_11 Depth=2
	addq	$2, %r15
	movq	%r15, %rax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB20_22
	.p2align	4, 0x90
.LBB20_15:                              #   in Loop: Header=BB20_11 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %sil
	jne	.LBB20_20
# %bb.16:                               #   in Loop: Header=BB20_11 Depth=2
	addq	$3, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r15
	jae	.LBB20_20
# %bb.17:                               #   in Loop: Header=BB20_11 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %cl
	jbe	.LBB20_19
# %bb.18:                               #   in Loop: Header=BB20_11 Depth=2
	movq	%r15, %rax
	jmp	.LBB20_22
.LBB20_19:                              #   in Loop: Header=BB20_11 Depth=2
	movq	%r15, %rax
	cmpb	%r14b, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB20_22
	jmp	.LBB20_24
.LBB20_23:                              #   in Loop: Header=BB20_3 Depth=1
	xorl	$1, %ebx
.LBB20_24:                              #   in Loop: Header=BB20_3 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB20_25:                              #   in Loop: Header=BB20_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_27:                              #   in Loop: Header=BB20_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB20_28
# %bb.29:                               #   in Loop: Header=BB20_3 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rax
	jmp	.LBB20_30
.LBB20_14:                              #   in Loop: Header=BB20_3 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB20_25
.LBB20_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB20_32
.LBB20_28:
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB20_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	js	.LBB20_36
.LBB20_32:
	addq	$1, %r15
	.p2align	4, 0x90
.LBB20_33:                              # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%r13), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB20_34
# %bb.35:                               #   in Loop: Header=BB20_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	leaq	-1(%r12), %r12
	jg	.LBB20_33
.LBB20_36:
	xorl	%eax, %eax
	jmp	.LBB20_37
.LBB20_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_37:
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
.Lfunc_end20:
	.size	max_expand, .Lfunc_end20-max_expand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function match_class
	.type	match_class,@function
match_class:                            # @match_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %ebx
	movl	%edi, %r14d
	callq	__locale_ctype_ptr
	movslq	%ebx, %r12
	movb	1(%rax,%r12), %cl
	andb	$3, %cl
	leal	32(%r12), %eax
	cmpb	$1, %cl
	cmovnel	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-97, %eax
	cmpl	$25, %eax
	ja	.LBB21_3
# %bb.1:
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_2:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$3, %r15d
	jmp	.LBB21_14
.LBB21_3:
	xorl	%r15d, %r15d
	cmpl	%r14d, %ebx
	sete	%r15b
	jmp	.LBB21_16
.LBB21_4:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$32, %r15d
	jmp	.LBB21_14
.LBB21_5:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$4, %r15d
	jmp	.LBB21_14
.LBB21_6:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movb	1(%rax,%rcx), %al
	andb	$3, %al
	xorl	%r15d, %r15d
	cmpb	$2, %al
	jmp	.LBB21_13
.LBB21_7:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$16, %r15d
	jmp	.LBB21_14
.LBB21_8:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$8, %r15d
	jmp	.LBB21_14
.LBB21_9:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movb	1(%rax,%rcx), %al
	andb	$3, %al
	xorl	%r15d, %r15d
	cmpb	$1, %al
	jmp	.LBB21_13
.LBB21_10:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$7, %r15d
	jmp	.LBB21_14
.LBB21_11:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %r15d
	andl	$68, %r15d
	jmp	.LBB21_14
.LBB21_12:
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
.LBB21_13:
	sete	%r15b
.LBB21_14:
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %al
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	je	.LBB21_16
# %bb.15:
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	match_class, .Lfunc_end21-match_class
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_2
	.quad	.LBB21_3
	.quad	.LBB21_4
	.quad	.LBB21_5
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_6
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_7
	.quad	.LBB21_3
	.quad	.LBB21_3
	.quad	.LBB21_8
	.quad	.LBB21_3
	.quad	.LBB21_9
	.quad	.LBB21_3
	.quad	.LBB21_10
	.quad	.LBB21_11
	.quad	.LBB21_3
	.quad	.LBB21_12
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function push_onecapture
	.type	push_onecapture,@function
push_onecapture:                        # @push_onecapture
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	%esi, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB22_1
# %bb.4:
	movslq	%esi, %r15
	shlq	$4, %r15
	movq	40(%rbx,%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB22_5
# %bb.7:
	movq	16(%rbx), %rdi
	movq	32(%rbx,%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %r14
	jne	.LBB22_6
# %bb.8:
	subq	(%rbx), %rsi
	addq	$1, %rsi
	callq	lua_pushinteger
	jmp	.LBB22_9
.LBB22_1:
	movq	16(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB22_2
# %bb.3:
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB22_10
.LBB22_5:
	movq	16(%rbx), %rdi
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	movq	32(%rbx,%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB22_6:
	movq	%r14, %rdx
	callq	lua_pushlstring
.LBB22_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_10
.LBB22_2:
	subq	%rdx, %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	lua_pushlstring
.LBB22_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	push_onecapture, .Lfunc_end22-push_onecapture
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function gmatch_aux
	.type	gmatch_aux,@function
gmatch_aux:                             # @gmatch_aux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$568, %rsp              # imm = 0x238
	movq	%rdi, %rbx
	leaq	-56(%rbp), %rdx
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_tolstring
	movq	%rax, %r12
	movq	%rbx, %rdi
	movl	$-10004, %esi           # imm = 0xD8EC
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %r13
	movq	%rbx, -584(%rbp)
	movq	%r12, -600(%rbp)
	movq	-56(%rbp), %r15
	leaq	(%r12,%r15), %rax
	movq	%rax, -592(%rbp)
	movq	%rbx, %rdi
	movl	$-10005, %esi           # imm = 0xD8EB
	callq	lua_tointeger
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jg	.LBB23_13
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
	addq	%r12, %r14
	leaq	-600(%rbp), %r15
	.p2align	4, 0x90
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -576(%rbp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB23_3
# %bb.12:                               #   in Loop: Header=BB23_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-592(%rbp), %r14
	jbe	.LBB23_2
.LBB23_13:
	xorl	%r13d, %r13d
	jmp	.LBB23_14
.LBB23_3:
	movq	%rax, %r12
	movq	%rax, %rsi
	subq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jne	.LBB23_5
# %bb.4:
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB23_5:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movq	%rbx, %rdi
	movl	$-10005, %esi           # imm = 0xD8EB
	callq	lua_replace
	movl	-576(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB23_7
# %bb.6:
	movl	$1, %r13d
	testl	%eax, %eax
	je	.LBB23_8
.LBB23_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
.LBB23_8:
	movq	-584(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%r13d, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB23_11
# %bb.9:                                # %.preheader
	xorl	%ebx, %ebx
	leaq	-600(%rbp), %r15
	.p2align	4, 0x90
.LBB23_10:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	push_onecapture
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r13d
	jne	.LBB23_10
.LBB23_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gmatch_aux, .Lfunc_end23-gmatch_aux
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string"
	.size	.L.str, 7

	.type	strlib,@object          # @strlib
	.section	.rodata,"a",@progbits
	.p2align	4
strlib:
	.quad	.L.str.3
	.quad	str_byte
	.quad	.L.str.4
	.quad	str_char
	.quad	.L.str.5
	.quad	str_dump
	.quad	.L.str.6
	.quad	str_find
	.quad	.L.str.7
	.quad	str_format
	.quad	.L.str.2
	.quad	gfind_nodef
	.quad	.L.str.1
	.quad	gmatch
	.quad	.L.str.8
	.quad	str_gsub
	.quad	.L.str.9
	.quad	str_len
	.quad	.L.str.10
	.quad	str_lower
	.quad	.L.str.11
	.quad	str_match
	.quad	.L.str.12
	.quad	str_rep
	.quad	.L.str.13
	.quad	str_reverse
	.quad	.L.str.14
	.quad	str_sub
	.quad	.L.str.15
	.quad	str_upper
	.zero	16
	.size	strlib, 256

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gmatch"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gfind"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"byte"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"char"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dump"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"find"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"format"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gsub"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"len"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"lower"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"match"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rep"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"reverse"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sub"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"upper"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"string slice too long"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"invalid value"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"unable to dump given function"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"^$*+?.([%-"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"missing '[' after '%%f' in pattern"
	.size	.L.str.20, 35

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"too many captures"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"invalid pattern capture"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unbalanced pattern"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"malformed pattern (ends with '%%')"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"malformed pattern (missing ']')"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalid capture index"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"unfinished capture"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"no value"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"invalid option '%%%c' to 'format'"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"-+ #0"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"invalid format (repeated flags)"
	.size	.L.str.31, 32

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalid format (width or precision too long)"
	.size	.L.str.32, 45

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"l"
	.size	.L.str.33, 2

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\\r"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\\000"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"'string.gfind' was renamed to 'string.gmatch'"
	.size	.L.str.36, 46

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"string/function/table expected"
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"invalid replacement value (a %s)"
	.size	.L.str.38, 33

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.zero	1
	.size	.L.str.39, 1

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"__index"
	.size	.L.str.40, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
