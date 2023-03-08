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
	subq	$24, %rsp
	movq	%rdi, %r13
	leaq	-48(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	movl	$1, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	callq	luaL_optinteger
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %r15
	sarq	$63, %r15
	andq	%rcx, %r15
	xorl	%r14d, %r14d
	addq	%rax, %r15
	movl	$0, %r12d
	cmovnsq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	callq	luaL_optinteger
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rax, %rcx
	sarq	$63, %rcx
	andq	%rsi, %rcx
	addq	%rax, %rcx
	cmovsq	%r14, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r12
	cmovleq	%rbx, %r15
	cmpq	%rdx, %rcx
	cmovaq	%rdx, %rcx
	cmpq	%r15, %rcx
	jl	.LBB1_6
# %bb.1:
	movl	%ecx, %r14d
	subl	%r15d, %r14d
	addl	$1, %r14d
	movslq	%r14d, %r12
	leaq	(%r15,%r12), %rax
	cmpq	%rcx, %rax
	jg	.LBB1_3
# %bb.2:
	movl	$.L.str.16, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB1_3:
	movl	$.L.str.16, %edx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	luaL_checkstack
	testl	%r14d, %r14d
	jle	.LBB1_6
# %bb.4:
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r15
	addq	$-1, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rbx), %esi
	movq	%r13, %rdi
	callq	lua_pushinteger
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jl	.LBB1_5
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
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
	cmpl	$256, %r13d             # imm = 0x100
	jb	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaL_argerror
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-1088(%rbp), %rax
	cmpq	%r12, %rax
	jb	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	-1088(%rbp), %rdi
	callq	luaL_prepbuffer
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
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
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
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, -76(%rbp)         # 4-byte Spill
	leaq	-104(%rbp), %rdx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r12
	movq	-104(%rbp), %r13
	leaq	-1152(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaL_buffinit
	testq	%r13, %r13
	jle	.LBB5_59
# %bb.1:
	addq	%r12, %r13
	leaq	-104(%rbp), %r14
	movl	$1, %ebx
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%r13, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_5:                                #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %r12
	leaq	1(%rcx), %rdx
	movq	%rdx, -1152(%rbp)
	movb	%al, (%rcx)
                                        # kill: def $ebx killed $ebx killed $rbx
.LBB5_58:                               #   in Loop: Header=BB5_2 Depth=1
                                        # kill: def $ebx killed $ebx def $rbx
	cmpq	%r13, %r12
	jae	.LBB5_59
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #     Child Loop BB5_32 Depth 2
	movb	(%r12), %al
	cmpb	$37, %al
	jne	.LBB5_3
# %bb.6:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%r12), %r14
	movb	1(%r12), %al
	cmpb	$37, %al
	jne	.LBB5_10
# %bb.7:                                #   in Loop: Header=BB5_2 Depth=1
	movq	-1152(%rbp), %rax
	movb	$37, %cl
	leaq	-104(%rbp), %rdx
	cmpq	%rdx, %rax
	jb	.LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movb	(%r14), %cl
	movq	-1152(%rbp), %rax
.LBB5_9:                                #   in Loop: Header=BB5_2 Depth=1
	addq	$2, %r12
	leaq	1(%rax), %rdx
	movq	%rdx, -1152(%rbp)
	movb	%cl, (%rax)
                                        # kill: def $ebx killed $ebx killed $rbx
.LBB5_57:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-104(%rbp), %r14
	jmp	.LBB5_58
	.p2align	4, 0x90
.LBB5_3:                                #   in Loop: Header=BB5_2 Depth=1
	movq	-1152(%rbp), %rcx
	cmpq	%r14, %rcx
	jb	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movb	(%r12), %al
	movq	-1152(%rbp), %rcx
	jmp	.LBB5_5
	.p2align	4, 0x90
.LBB5_10:                               #   in Loop: Header=BB5_2 Depth=1
	leal	1(%rbx), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	cmpl	-76(%rbp), %ebx         # 4-byte Folded Reload
	jl	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.28, %edx
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	luaL_argerror
	movb	(%r14), %al
.LBB5_12:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %rbx
	testb	%al, %al
	je	.LBB5_16
# %bb.13:                               # %.preheader1
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB5_14:                               #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%al, %esi
	movl	$.L.str.30, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB5_16
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=2
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	testb	%al, %al
	jne	.LBB5_14
.LBB5_16:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%rbx, %rax
	subq	%r14, %rax
	cmpq	$6, %rax
	jb	.LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_18:                               #   in Loop: Header=BB5_2 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	leaq	1(%rbx), %r13
	testb	$4, 1(%rax,%rcx)
	cmoveq	%rbx, %r13
	callq	__locale_ctype_ptr
	movzbl	(%r13), %ecx
	leaq	1(%r13), %r12
	testb	$4, 1(%rax,%rcx)
	cmoveq	%r13, %r12
	cmpb	$46, (%r12)
	jne	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%r12), %r13
	callq	__locale_ctype_ptr
	movzbl	1(%r12), %ecx
	xorl	%ebx, %ebx
	testb	$4, 1(%rax,%rcx)
	leaq	2(%r12), %r15
	sete	%bl
	cmoveq	%r13, %r15
	callq	__locale_ctype_ptr
	negq	%rbx
	movzbl	2(%r12,%rbx), %ecx
	leaq	1(%r15), %r12
	testb	$4, 1(%rax,%rcx)
	cmoveq	%r15, %r12
	movq	-96(%rbp), %r15         # 8-byte Reload
.LBB5_20:                               #   in Loop: Header=BB5_2 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	callq	__locale_ctype_ptr
	movzbl	(%r12), %ecx
	testb	$4, 1(%rax,%rcx)
	je	.LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_22:                               #   in Loop: Header=BB5_2 Depth=1
	movb	$37, -64(%rbp)
	movq	%r12, %rbx
	subq	%r14, %rbx
	leaq	1(%rbx), %rdx
	leaq	-63(%rbp), %rdi
	movq	%r14, %rsi
	callq	strncpy
	movb	$0, -62(%rbp,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%r12), %edx
	leal	-69(%rdx), %eax
	cmpl	$51, %eax
	ja	.LBB5_53
# %bb.23:                               #   in Loop: Header=BB5_2 Depth=1
	addq	$1, %r12
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_28:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	luaL_checknumber
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	movb	$1, %al
	callq	sprintf
	jmp	.LBB5_55
.LBB5_27:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-64(%rbp), %rdi
	callq	strlen
	movq	%rax, %rbx
	movb	-65(%rbp,%rax), %r14b
	leaq	(%rax,%rbp), %rdi
	addq	$-65, %rdi
	movl	$.L.str.33, %esi
	callq	strcpy
	movb	%r14b, -64(%rbp,%rbx)
	movb	$0, -63(%rbp,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
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
	jmp	.LBB5_25
.LBB5_24:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-64(%rbp), %rdi
	callq	strlen
	movq	%rax, %rbx
	movb	-65(%rbp,%rax), %r14b
	leaq	(%rax,%rbp), %rdi
	addq	$-65, %rdi
	movl	$.L.str.33, %esi
	callq	strcpy
	movb	%r14b, -64(%rbp,%rbx)
	movb	$0, -63(%rbp,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %rdx
.LBB5_25:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
.LBB5_26:                               #   in Loop: Header=BB5_2 Depth=1
	xorl	%eax, %eax
	callq	sprintf
.LBB5_55:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-104(%rbp), %r14
	movq	%rbx, %rdi
	callq	strlen
	leaq	-1152(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	luaL_addlstring
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB5_58
.LBB5_54:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %edx
	leaq	-1664(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB5_55
.LBB5_29:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	leaq	-72(%rbp), %rdx
	callq	luaL_checklstring
	movq	%rax, %rbx
	movq	-1152(%rbp), %rax
	leaq	-104(%rbp), %r14
	cmpq	%r14, %rax
	jb	.LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB5_31:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$34, (%rax)
	jmp	.LBB5_32
	.p2align	4, 0x90
.LBB5_39:                               #   in Loop: Header=BB5_32 Depth=2
	movzbl	(%rbx), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -1152(%rbp)
	movb	%cl, (%rax)
	addq	$1, %rbx
.LBB5_32:                               #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, -72(%rbp)
	jb	.LBB5_47
# %bb.33:                               #   in Loop: Header=BB5_32 Depth=2
	movzbl	(%rbx), %eax
	movsbl	%al, %ecx
	cmpl	$34, %ecx
	ja	.LBB5_34
# %bb.61:                               #   in Loop: Header=BB5_32 Depth=2
	jmpq	*.LJTI5_1(,%rcx,8)
.LBB5_42:                               #   in Loop: Header=BB5_32 Depth=2
	movl	$.L.str.35, %esi
	movl	$4, %edx
	jmp	.LBB5_41
	.p2align	4, 0x90
.LBB5_34:                               #   in Loop: Header=BB5_32 Depth=2
	cmpl	$92, %ecx
	jne	.LBB5_43
.LBB5_35:                               #   in Loop: Header=BB5_32 Depth=2
	movq	-1152(%rbp), %rax
	cmpq	%r14, %rax
	jb	.LBB5_37
# %bb.36:                               #   in Loop: Header=BB5_32 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB5_37:                               #   in Loop: Header=BB5_32 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$92, (%rax)
	movq	-1152(%rbp), %rax
	cmpq	%r14, %rax
	jb	.LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_32 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
	jmp	.LBB5_39
.LBB5_43:                               #   in Loop: Header=BB5_32 Depth=2
	movq	-1152(%rbp), %rcx
	cmpq	%r14, %rcx
	jb	.LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_32 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movzbl	(%rbx), %eax
	movq	-1152(%rbp), %rcx
.LBB5_45:                               #   in Loop: Header=BB5_32 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, -1152(%rbp)
	movb	%al, (%rcx)
	addq	$1, %rbx
	jmp	.LBB5_32
.LBB5_40:                               #   in Loop: Header=BB5_32 Depth=2
	movl	$.L.str.34, %esi
	movl	$2, %edx
.LBB5_41:                               #   in Loop: Header=BB5_32 Depth=2
	leaq	-1152(%rbp), %rdi
	callq	luaL_addlstring
	addq	$1, %rbx
	jmp	.LBB5_32
.LBB5_50:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	leaq	-72(%rbp), %rdx
	callq	luaL_checklstring
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	movl	$46, %esi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB5_52
# %bb.51:                               #   in Loop: Header=BB5_2 Depth=1
	cmpq	$99, -72(%rbp)
	jbe	.LBB5_52
# %bb.56:                               #   in Loop: Header=BB5_2 Depth=1
	movq	%r15, %rdi
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	callq	lua_pushvalue
	leaq	-1152(%rbp), %rdi
	callq	luaL_addvalue
	jmp	.LBB5_57
.LBB5_47:                               #   in Loop: Header=BB5_2 Depth=1
	movq	-1152(%rbp), %rax
	cmpq	%r14, %rax
	jb	.LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1152(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1152(%rbp), %rax
.LBB5_49:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -1152(%rbp)
	movb	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB5_58
.LBB5_52:                               #   in Loop: Header=BB5_2 Depth=1
	leaq	-1664(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%rdi, %rbx
	jmp	.LBB5_26
.LBB5_59:
	leaq	-1152(%rbp), %rdi
	callq	luaL_pushresult
	movl	$1, %eax
.LBB5_60:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1624, %rsp             # imm = 0x658
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_53:
	movl	$.L.str.29, %esi
	movq	%r15, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB5_60
.Lfunc_end5:
	.size	str_format, .Lfunc_end5-str_format
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_28
	.quad	.LBB5_53
	.quad	.LBB5_28
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_27
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_54
	.quad	.LBB5_24
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_28
	.quad	.LBB5_53
	.quad	.LBB5_24
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_27
	.quad	.LBB5_53
	.quad	.LBB5_29
	.quad	.LBB5_53
	.quad	.LBB5_50
	.quad	.LBB5_53
	.quad	.LBB5_27
	.quad	.LBB5_53
	.quad	.LBB5_53
	.quad	.LBB5_27
.LJTI5_1:
	.quad	.LBB5_42
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_35
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_40
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_43
	.quad	.LBB5_35
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
	leaq	-56(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_type
	movl	%eax, %r12d
	movq	-56(%rbp), %rdx
	addq	$1, %rdx
	movq	%rbx, %rdi
	movl	$4, %esi
	callq	luaL_optinteger
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	(%r14), %al
	leaq	1(%r14), %rcx
	movb	%al, -41(%rbp)          # 1-byte Spill
	cmpb	$94, %al
	cmovneq	%r14, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	addl	$-3, %r12d
	cmpl	$4, %r12d
	jb	.LBB8_2
# %bb.1:
	movl	$.L.str.37, %edx
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaL_argerror
.LBB8_2:
	leaq	-1688(%rbp), %rsi
	movq	%rbx, %rdi
	callq	luaL_buffinit
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, -624(%rbp)
	movq	%r15, -640(%rbp)
	movq	-56(%rbp), %rax
	addq	%r15, %rax
	movq	%rax, -632(%rbp)
	leaq	-640(%rbp), %r12
	xorl	%ebx, %ebx
	movb	-41(%rbp), %r14b        # 1-byte Reload
	jmp	.LBB8_5
	.p2align	4, 0x90
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	movb	(%r15), %cl
	addq	$1, %r15
	leaq	1(%rax), %rdx
	movq	%rdx, -1688(%rbp)
	movb	%cl, (%rax)
	movq	%r15, %r13
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%r13, %r15
	cmpb	$94, %r14b
	je	.LBB8_50
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_18 Depth 2
	cmpl	-96(%rbp), %ebx         # 4-byte Folded Reload
	jge	.LBB8_49
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$0, -616(%rbp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	match
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB8_44
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movq	-624(%rbp), %r12
	movq	%r12, %rdi
	movl	$3, %esi
	callq	lua_type
                                        # kill: def $eax killed $eax def $rax
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB8_14
# %bb.8:                                #   in Loop: Header=BB8_5 Depth=1
	cmpl	$5, %eax
	je	.LBB8_29
# %bb.9:                                #   in Loop: Header=BB8_5 Depth=1
	cmpl	$6, %eax
	jne	.LBB8_38
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	$3, %esi
	callq	lua_pushvalue
	movl	-616(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	$1, %ecx
	cmovel	%ecx, %ebx
	testq	%r15, %r15
	cmovel	%eax, %ebx
	movq	-624(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%ebx, %esi
	callq	luaL_checkstack
	testl	%ebx, %ebx
	leaq	-640(%rbp), %r12
	jle	.LBB8_13
# %bb.11:                               # %.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB8_12:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	push_onecapture
	addl	$1, %r14d
	cmpl	%r14d, %ebx
	jne	.LBB8_12
.LBB8_13:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	callq	lua_call
	movb	-41(%rbp), %r14b        # 1-byte Reload
	jmp	.LBB8_38
	.p2align	4, 0x90
.LBB8_14:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-624(%rbp), %rdi
	movl	$3, %esi
	leaq	-64(%rbp), %rdx
	callq	lua_tolstring
	cmpq	$0, -64(%rbp)
	je	.LBB8_28
# %bb.15:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %r14
	movq	%r13, %r12
	subq	%r15, %r12
	xorl	%ebx, %ebx
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_16:                               #   in Loop: Header=BB8_18 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, -1688(%rbp)
	movb	%al, (%rcx)
.LBB8_17:                               #   in Loop: Header=BB8_18 Depth=2
	addq	$1, %rbx
	cmpq	-64(%rbp), %rbx
	jae	.LBB8_28
.LBB8_18:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rbx), %eax
	cmpb	$37, %al
	jne	.LBB8_23
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=2
	callq	__locale_ctype_ptr
	movzbl	1(%r14,%rbx), %ecx
	addq	$1, %rbx
	testb	$4, 1(%rax,%rcx)
	jne	.LBB8_25
# %bb.20:                               #   in Loop: Header=BB8_18 Depth=2
	movq	-1688(%rbp), %rax
	leaq	-640(%rbp), %rdx
	cmpq	%rdx, %rax
	jb	.LBB8_22
# %bb.21:                               #   in Loop: Header=BB8_18 Depth=2
	leaq	-1688(%rbp), %rdi
	callq	luaL_prepbuffer
	movzbl	(%r14,%rbx), %ecx
	movq	-1688(%rbp), %rax
.LBB8_22:                               #   in Loop: Header=BB8_18 Depth=2
	leaq	1(%rax), %rdx
	movq	%rdx, -1688(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB8_17
	.p2align	4, 0x90
.LBB8_23:                               #   in Loop: Header=BB8_18 Depth=2
	movq	-1688(%rbp), %rcx
	leaq	-640(%rbp), %rdx
	cmpq	%rdx, %rcx
	jb	.LBB8_16
# %bb.24:                               #   in Loop: Header=BB8_18 Depth=2
	leaq	-1688(%rbp), %rdi
	callq	luaL_prepbuffer
	movzbl	(%r14,%rbx), %eax
	movq	-1688(%rbp), %rcx
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_25:                               #   in Loop: Header=BB8_18 Depth=2
	cmpb	$48, %cl
	jne	.LBB8_27
# %bb.26:                               #   in Loop: Header=BB8_18 Depth=2
	leaq	-1688(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	luaL_addlstring
	jmp	.LBB8_17
.LBB8_27:                               #   in Loop: Header=BB8_18 Depth=2
	movsbl	%cl, %esi
	addl	$-49, %esi
	leaq	-640(%rbp), %rdi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	push_onecapture
	leaq	-1688(%rbp), %rdi
	callq	luaL_addvalue
	jmp	.LBB8_17
	.p2align	4, 0x90
.LBB8_28:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	-41(%rbp), %r14b        # 1-byte Reload
	jmp	.LBB8_43
.LBB8_29:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$0, -616(%rbp)
	jle	.LBB8_33
# %bb.30:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-600(%rbp), %rbx
	cmpq	$-1, %rbx
	je	.LBB8_34
# %bb.31:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rsi
	cmpq	$-2, %rbx
	jne	.LBB8_35
# %bb.32:                               #   in Loop: Header=BB8_5 Depth=1
	subq	-640(%rbp), %rsi
	addq	$1, %rsi
	callq	lua_pushinteger
	jmp	.LBB8_36
.LBB8_33:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-624(%rbp), %rdi
	movq	%r13, %rdx
	subq	%r15, %rdx
	movq	%r15, %rsi
	callq	lua_pushlstring
	jmp	.LBB8_37
.LBB8_34:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-624(%rbp), %rdi
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rsi
.LBB8_35:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, %rdx
	callq	lua_pushlstring
.LBB8_36:                               #   in Loop: Header=BB8_5 Depth=1
	movb	-41(%rbp), %r14b        # 1-byte Reload
.LBB8_37:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	$3, %esi
	callq	lua_gettable
.LBB8_38:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movq	%r12, %rdi
	testl	%eax, %eax
	je	.LBB8_41
# %bb.39:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$-1, %esi
	callq	lua_isstring
	testl	%eax, %eax
	jne	.LBB8_42
# %bb.40:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB8_42
.LBB8_41:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$-2, %esi
	callq	lua_settop
	movq	%r13, %rdx
	subq	%r15, %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	lua_pushlstring
.LBB8_42:                               #   in Loop: Header=BB8_5 Depth=1
	leaq	-1688(%rbp), %rdi
	callq	luaL_addvalue
.LBB8_43:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-48(%rbp), %ebx         # 4-byte Reload
	leaq	-640(%rbp), %r12
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB8_44:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	%r15, %r13
	ja	.LBB8_4
# %bb.45:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	-632(%rbp), %r15
	jae	.LBB8_49
# %bb.46:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-1688(%rbp), %rax
	leaq	-640(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_3
# %bb.47:                               #   in Loop: Header=BB8_5 Depth=1
	leaq	-1688(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1688(%rbp), %rax
	jmp	.LBB8_3
.LBB8_49:
	movq	%r15, %r13
.LBB8_50:
	movq	-632(%rbp), %rdx
	subq	%r13, %rdx
	leaq	-1688(%rbp), %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaL_addlstring
	movq	%r14, %rdi
	callq	luaL_pushresult
	movslq	%ebx, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
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
	cmpq	$0, -48(%rbp)
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
	cmpq	-48(%rbp), %rbx
	jae	.LBB10_5
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r15, -1096(%rbp)
	jb	.LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	movq	%r14, %rdi
	callq	luaL_prepbuffer
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
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
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
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jb	.LBB13_5
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	-1080(%rbp), %rcx
	cmpq	%r15, %rcx
	jb	.LBB13_4
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movq	%r14, %rdi
	callq	luaL_prepbuffer
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
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rbx
	sarq	$63, %rbx
	andq	%rcx, %rbx
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$3, %esi
	movq	$-1, %rdx
	callq	luaL_optinteger
	movq	-32(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rax, %rsi
	sarq	$63, %rsi
	andq	%rdx, %rsi
	xorl	%edx, %edx
	addq	%rax, %rsi
	cmovnsq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movl	$1, %eax
	cmovgq	%rbx, %rax
	cmpq	%rcx, %rdx
	cmovgq	%rcx, %rdx
	subq	%rax, %rdx
	jge	.LBB14_1
# %bb.2:
	movl	$.L.str.39, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	jmp	.LBB14_3
.LBB14_1:
	leaq	(%r14,%rax), %rsi
	addq	$-1, %rsi
	addq	$1, %rdx
	movq	%r15, %rdi
.LBB14_3:
	callq	lua_pushlstring
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
	cmpq	$0, -48(%rbp)
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
	cmpq	-48(%rbp), %rbx
	jae	.LBB15_5
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r15, -1096(%rbp)
	jb	.LBB15_4
# %bb.3:                                #   in Loop: Header=BB15_2 Depth=1
	movq	%r14, %rdi
	callq	luaL_prepbuffer
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
	movl	%esi, %r14d
	movq	%rdi, %r15
	leaq	-80(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r12
	leaq	-88(%rbp), %rdx
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_checklstring
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %edx
	movq	%r15, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rax, %rsi
	sarq	$63, %rsi
	andq	%rdx, %rsi
	xorl	%edx, %edx
	addq	%rax, %rsi
	cmovsq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rsi), %rbx
	cmpq	%rcx, %rbx
	cmovaq	%rcx, %rbx
	testq	%rsi, %rsi
	cmovleq	%rdx, %rbx
	testl	%r14d, %r14d
	je	.LBB17_4
# %bb.1:
	movq	%r15, %rdi
	movl	$4, %esi
	callq	lua_toboolean
	testl	%eax, %eax
	je	.LBB17_2
.LBB17_11:
	leaq	(%r12,%rbx), %r14
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.LBB17_20
# %bb.12:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r15
	subq	%rbx, %r15
	cmpq	%r15, %rax
	ja	.LBB17_19
# %bb.13:
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	subq	%rcx, %r15
	je	.LBB17_19
# %bb.14:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	memchr
	testq	%rax, %rax
	je	.LBB17_19
# %bb.16:                               #   in Loop: Header=BB17_15 Depth=1
	movq	%rax, %r13
	leaq	1(%rax), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB17_17
# %bb.18:                               #   in Loop: Header=BB17_15 Depth=1
	addq	%r14, %r15
	movq	%r12, %r14
	subq	%r12, %r15
	jne	.LBB17_15
.LBB17_19:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_28
.LBB17_2:
	movl	$.L.str.19, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	strpbrk
	testq	%rax, %rax
	je	.LBB17_11
# %bb.3:
	movq	-80(%rbp), %rcx
.LBB17_4:
	movl	%r14d, -72(%rbp)        # 4-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %r13b
	leaq	1(%rax), %r14
	cmpb	$94, %r13b
	cmovneq	%rax, %r14
	addq	%r12, %rbx
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%r15, -616(%rbp)
	movq	%r12, -632(%rbp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	addq	%r12, %rcx
	movq	%rcx, -624(%rbp)
	leaq	-632(%rbp), %r15
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -608(%rbp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	match
	testq	%rax, %rax
	jne	.LBB17_6
# %bb.26:                               #   in Loop: Header=BB17_5 Depth=1
	cmpq	-624(%rbp), %rbx
	jae	.LBB17_28
# %bb.27:                               #   in Loop: Header=BB17_5 Depth=1
	addq	$1, %rbx
	cmpb	$94, %r13b
	jne	.LBB17_5
.LBB17_28:
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB17_29:
	movq	%r15, %rdi
	callq	lua_pushnil
	movl	$1, %r14d
.LBB17_30:
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
.LBB17_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB17_21
	jmp	.LBB17_29
.LBB17_6:
	movq	%rax, %r12
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB17_22
# %bb.7:
	movq	-64(%rbp), %r15         # 8-byte Reload
	subq	%r15, %rbx
	addq	$1, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	subq	%r15, %r12
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	lua_pushinteger
	movl	-608(%rbp), %r14d
	movq	-616(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%r14d, %esi
	callq	luaL_checkstack
	testl	%r14d, %r14d
	jle	.LBB17_10
# %bb.8:                                # %.preheader
	xorl	%ebx, %ebx
	leaq	-632(%rbp), %r15
	.p2align	4, 0x90
.LBB17_9:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	push_onecapture
	addl	$1, %ebx
	cmpl	%ebx, %r14d
	jne	.LBB17_9
.LBB17_10:
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %r14d
	jmp	.LBB17_30
.LBB17_22:
	movl	-608(%rbp), %eax
	testl	%eax, %eax
	movl	$1, %r14d
	cmovnel	%eax, %r14d
	testq	%rbx, %rbx
	cmovel	%eax, %r14d
	movq	-616(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%r14d, %esi
	callq	luaL_checkstack
	testl	%r14d, %r14d
	jle	.LBB17_25
# %bb.23:                               # %.preheader2
	xorl	%r15d, %r15d
	leaq	-632(%rbp), %r13
	.p2align	4, 0x90
.LBB17_24:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	push_onecapture
	addl	$1, %r15d
	cmpl	%r15d, %r14d
	jne	.LBB17_24
.LBB17_25:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_30
.LBB17_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB17_21:
	subq	%r12, %r14
	leaq	1(%r14), %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	addq	-88(%rbp), %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	lua_pushinteger
	movl	$2, %r14d
	jmp	.LBB17_30
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
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%rdi, -72(%rbp)         # 8-byte Spill
.LBB18_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_4 Depth 2
                                        #       Child Loop BB18_70 Depth 3
                                        #       Child Loop BB18_85 Depth 3
                                        #       Child Loop BB18_15 Depth 3
                                        #       Child Loop BB18_28 Depth 3
                                        #       Child Loop BB18_43 Depth 3
                                        #     Child Loop BB18_113 Depth 2
	leaq	1(%r13), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_4
	.p2align	4, 0x90
.LBB18_2:                               #   in Loop: Header=BB18_4 Depth=2
	xorl	$1, %r13d
.LBB18_3:                               #   in Loop: Header=BB18_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	je	.LBB18_129
.LBB18_4:                               #   Parent Loop BB18_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_70 Depth 3
                                        #       Child Loop BB18_85 Depth 3
                                        #       Child Loop BB18_15 Depth 3
                                        #       Child Loop BB18_28 Depth 3
                                        #       Child Loop BB18_43 Depth 3
	movq	%r12, %r14
	movb	(%r12), %al
	movsbl	%al, %ecx
	cmpl	$37, %ecx
	jne	.LBB18_52
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=2
	movsbl	1(%r14), %eax
	cmpl	$102, %eax
	jne	.LBB18_57
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=2
	cmpb	$91, 2(%r14)
	jne	.LBB18_9
# %bb.7:                                #   in Loop: Header=BB18_4 Depth=2
	leaq	3(%r14), %rbx
	jmp	.LBB18_8
	.p2align	4, 0x90
.LBB18_9:                               #   in Loop: Header=BB18_4 Depth=2
	movq	16(%r15), %rdi
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movsbl	2(%r14), %eax
	leaq	3(%r14), %rbx
	cmpl	$91, %eax
	je	.LBB18_8
# %bb.10:                               #   in Loop: Header=BB18_4 Depth=2
	cmpl	$37, %eax
	jne	.LBB18_51
# %bb.11:                               #   in Loop: Header=BB18_4 Depth=2
	cmpb	$0, (%rbx)
	jne	.LBB18_13
# %bb.12:                               #   in Loop: Header=BB18_4 Depth=2
	movq	16(%r15), %rdi
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	callq	luaL_error
.LBB18_13:                              #   in Loop: Header=BB18_4 Depth=2
	leaq	4(%r14), %r12
	jmp	.LBB18_21
	.p2align	4, 0x90
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=2
	leaq	4(%r14), %r12
	xorl	%eax, %eax
	cmpb	$94, 3(%r14)
	sete	%al
	cmovneq	%rbx, %r12
	movb	3(%rax,%r14), %al
	jmp	.LBB18_15
	.p2align	4, 0x90
.LBB18_14:                              #   in Loop: Header=BB18_15 Depth=3
	movq	%rcx, %r12
	movzbl	(%rcx), %eax
	cmpb	$93, %al
	je	.LBB18_20
.LBB18_15:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	jne	.LBB18_17
# %bb.16:                               #   in Loop: Header=BB18_15 Depth=3
	movq	16(%r15), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movzbl	(%r12), %eax
.LBB18_17:                              #   in Loop: Header=BB18_15 Depth=3
	leaq	1(%r12), %rcx
	cmpb	$37, %al
	jne	.LBB18_14
# %bb.18:                               #   in Loop: Header=BB18_15 Depth=3
	cmpb	$0, 1(%r12)
	je	.LBB18_14
# %bb.19:                               #   in Loop: Header=BB18_15 Depth=3
	addq	$2, %r12
	movq	%r12, %rcx
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_20:                              #   in Loop: Header=BB18_4 Depth=2
	addq	$1, %r12
.LBB18_21:                              #   in Loop: Header=BB18_4 Depth=2
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	(%r15), %r13
	je	.LBB18_23
# %bb.22:                               #   in Loop: Header=BB18_4 Depth=2
	movb	-1(%r13), %bl
	jmp	.LBB18_24
	.p2align	4, 0x90
.LBB18_23:                              #   in Loop: Header=BB18_4 Depth=2
	xorl	%ebx, %ebx
.LBB18_24:                              #   in Loop: Header=BB18_4 Depth=2
	leaq	-1(%r12), %r15
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$94, (%rax)
	setne	%cl
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%r14, %r13
	cmoveq	%rax, %r13
	leaq	1(%r13), %rax
	cmpq	%r15, %rax
	jae	.LBB18_37
# %bb.25:                               # %.preheader14
                                        #   in Loop: Header=BB18_4 Depth=2
	movzbl	%bl, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB18_28
	.p2align	4, 0x90
.LBB18_26:                              #   in Loop: Header=BB18_28 Depth=3
	cmpb	%bl, %cl
	je	.LBB18_36
.LBB18_27:                              #   in Loop: Header=BB18_28 Depth=3
	movq	%rax, %r13
	addq	$1, %rax
	cmpq	%r15, %rax
	jae	.LBB18_37
.LBB18_28:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	1(%r13), %ecx
	movzbl	2(%r13), %esi
	cmpb	$37, %cl
	jne	.LBB18_32
# %bb.29:                               #   in Loop: Header=BB18_28 Depth=3
	movl	-80(%rbp), %edi         # 4-byte Reload
	callq	match_class
	testl	%eax, %eax
	jne	.LBB18_36
# %bb.30:                               #   in Loop: Header=BB18_28 Depth=3
	addq	$2, %r13
.LBB18_31:                              #   in Loop: Header=BB18_28 Depth=3
	movq	%r13, %rax
	jmp	.LBB18_27
	.p2align	4, 0x90
.LBB18_32:                              #   in Loop: Header=BB18_28 Depth=3
	cmpb	$45, %sil
	jne	.LBB18_26
# %bb.33:                               #   in Loop: Header=BB18_28 Depth=3
	addq	$3, %r13
	cmpq	%r15, %r13
	jae	.LBB18_26
# %bb.34:                               #   in Loop: Header=BB18_28 Depth=3
	cmpb	%bl, %cl
	ja	.LBB18_31
# %bb.35:                               #   in Loop: Header=BB18_28 Depth=3
	movq	%r13, %rax
	cmpb	%bl, (%r13)
	jb	.LBB18_27
	.p2align	4, 0x90
.LBB18_36:                              #   in Loop: Header=BB18_4 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB18_38
	.p2align	4, 0x90
.LBB18_37:                              #   in Loop: Header=BB18_4 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
.LBB18_38:                              #   in Loop: Header=BB18_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB18_129
# %bb.39:                               #   in Loop: Header=BB18_4 Depth=2
	xorl	%r13d, %r13d
	cmpb	$94, (%rax)
	setne	%r13b
	cmoveq	%rax, %r14
	leaq	1(%r14), %rax
	cmpq	%r15, %rax
	jae	.LBB18_2
# %bb.40:                               # %.preheader11
                                        #   in Loop: Header=BB18_4 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ebx
	jmp	.LBB18_43
	.p2align	4, 0x90
.LBB18_41:                              #   in Loop: Header=BB18_43 Depth=3
	cmpb	%bl, %cl
	je	.LBB18_3
.LBB18_42:                              #   in Loop: Header=BB18_43 Depth=3
	movq	%rax, %r14
	addq	$1, %rax
	cmpq	%r15, %rax
	jae	.LBB18_2
.LBB18_43:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	1(%r14), %ecx
	movzbl	2(%r14), %esi
	cmpb	$37, %cl
	jne	.LBB18_46
# %bb.44:                               #   in Loop: Header=BB18_43 Depth=3
	movl	%ebx, %edi
	callq	match_class
	testl	%eax, %eax
	jne	.LBB18_3
# %bb.45:                               #   in Loop: Header=BB18_43 Depth=3
	addq	$2, %r14
	movq	%r14, %rax
	jmp	.LBB18_42
	.p2align	4, 0x90
.LBB18_46:                              #   in Loop: Header=BB18_43 Depth=3
	cmpb	$45, %sil
	jne	.LBB18_41
# %bb.47:                               #   in Loop: Header=BB18_43 Depth=3
	addq	$3, %r14
	cmpq	%r15, %r14
	jae	.LBB18_41
# %bb.48:                               #   in Loop: Header=BB18_43 Depth=3
	cmpb	%bl, %cl
	jbe	.LBB18_50
# %bb.49:                               #   in Loop: Header=BB18_43 Depth=3
	movq	%r14, %rax
	jmp	.LBB18_42
.LBB18_50:                              #   in Loop: Header=BB18_43 Depth=3
	movq	%r14, %rax
	cmpb	%bl, (%r14)
	jb	.LBB18_42
	jmp	.LBB18_3
.LBB18_51:                              #   in Loop: Header=BB18_4 Depth=2
	movq	%rbx, %r12
	jmp	.LBB18_21
.LBB18_52:                              #   in Loop: Header=BB18_4 Depth=2
	cmpl	$39, %ecx
	jg	.LBB18_60
# %bb.53:                               #   in Loop: Header=BB18_4 Depth=2
	testl	%ecx, %ecx
	je	.LBB18_130
# %bb.54:                               #   in Loop: Header=BB18_4 Depth=2
	cmpl	$36, %ecx
	jne	.LBB18_62
# %bb.55:                               #   in Loop: Header=BB18_4 Depth=2
	cmpb	$0, 1(%r14)
	jne	.LBB18_62
	jmp	.LBB18_56
.LBB18_57:                              #   in Loop: Header=BB18_4 Depth=2
	cmpl	$98, %eax
	je	.LBB18_105
# %bb.58:                               #   in Loop: Header=BB18_4 Depth=2
	callq	__locale_ctype_ptr
	movzbl	1(%r14), %ecx
	testb	$4, 1(%rax,%rcx)
	jne	.LBB18_120
# %bb.59:                               #   in Loop: Header=BB18_4 Depth=2
	leaq	1(%r14), %rbx
	movb	(%r14), %al
	jmp	.LBB18_63
.LBB18_60:                              #   in Loop: Header=BB18_4 Depth=2
	cmpl	$41, %ecx
	je	.LBB18_131
# %bb.61:                               #   in Loop: Header=BB18_4 Depth=2
	cmpl	$40, %ecx
	je	.LBB18_134
.LBB18_62:                              #   in Loop: Header=BB18_4 Depth=2
	leaq	1(%r14), %rbx
.LBB18_63:                              #   in Loop: Header=BB18_4 Depth=2
	movsbl	%al, %eax
	cmpl	$91, %eax
	je	.LBB18_68
# %bb.64:                               #   in Loop: Header=BB18_4 Depth=2
	movq	%rbx, %r12
	cmpl	$37, %eax
	jne	.LBB18_76
# %bb.65:                               #   in Loop: Header=BB18_4 Depth=2
	cmpb	$0, (%rbx)
	jne	.LBB18_67
# %bb.66:                               #   in Loop: Header=BB18_4 Depth=2
	movq	16(%r15), %rdi
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	callq	luaL_error
.LBB18_67:                              #   in Loop: Header=BB18_4 Depth=2
	leaq	2(%r14), %r12
	jmp	.LBB18_76
.LBB18_68:                              #   in Loop: Header=BB18_4 Depth=2
	leaq	2(%r14), %r12
	xorl	%eax, %eax
	cmpb	$94, 1(%r14)
	sete	%al
	cmovneq	%rbx, %r12
	movb	1(%rax,%r14), %al
	jmp	.LBB18_70
	.p2align	4, 0x90
.LBB18_69:                              #   in Loop: Header=BB18_70 Depth=3
	movq	%rcx, %r12
	movzbl	(%rcx), %eax
	cmpb	$93, %al
	je	.LBB18_75
.LBB18_70:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	jne	.LBB18_72
# %bb.71:                               #   in Loop: Header=BB18_70 Depth=3
	movq	16(%r15), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movzbl	(%r12), %eax
.LBB18_72:                              #   in Loop: Header=BB18_70 Depth=3
	leaq	1(%r12), %rcx
	cmpb	$37, %al
	jne	.LBB18_69
# %bb.73:                               #   in Loop: Header=BB18_70 Depth=3
	cmpb	$0, 1(%r12)
	je	.LBB18_69
# %bb.74:                               #   in Loop: Header=BB18_70 Depth=3
	addq	$2, %r12
	movq	%r12, %rcx
	jmp	.LBB18_69
.LBB18_75:                              #   in Loop: Header=BB18_4 Depth=2
	addq	$1, %r12
.LBB18_76:                              #   in Loop: Header=BB18_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r15), %r13
	jae	.LBB18_81
# %bb.77:                               #   in Loop: Header=BB18_4 Depth=2
	movzbl	(%r13), %r15d
	movb	(%r14), %al
	movsbl	%al, %ecx
	cmpl	$91, %ecx
	je	.LBB18_82
# %bb.78:                               #   in Loop: Header=BB18_4 Depth=2
	cmpl	$46, %ecx
	je	.LBB18_95
# %bb.79:                               #   in Loop: Header=BB18_4 Depth=2
	cmpl	$37, %ecx
	jne	.LBB18_96
# %bb.80:                               #   in Loop: Header=BB18_4 Depth=2
	movzbl	(%rbx), %esi
	movl	%r15d, %edi
	callq	match_class
	jmp	.LBB18_97
.LBB18_81:                              #   in Loop: Header=BB18_4 Depth=2
	xorl	%eax, %eax
	jmp	.LBB18_101
.LBB18_82:                              #   in Loop: Header=BB18_4 Depth=2
	leaq	-1(%r12), %r13
	xorl	%eax, %eax
	cmpb	$94, 1(%r14)
	setne	%al
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%rbx, %rax
	movq	%r14, %rbx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	cmoveq	%rax, %rbx
	leaq	1(%rbx), %rax
	jmp	.LBB18_85
.LBB18_83:                              #   in Loop: Header=BB18_85 Depth=3
	cmpb	%r15b, %cl
	je	.LBB18_94
.LBB18_84:                              #   in Loop: Header=BB18_85 Depth=3
	movq	%rax, %rbx
	addq	$1, %rax
.LBB18_85:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r13, %rax
	jae	.LBB18_98
# %bb.86:                               #   in Loop: Header=BB18_85 Depth=3
	movzbl	1(%rbx), %ecx
	movzbl	2(%rbx), %esi
	cmpb	$37, %cl
	jne	.LBB18_90
# %bb.87:                               #   in Loop: Header=BB18_85 Depth=3
	movl	%r15d, %edi
	callq	match_class
	testl	%eax, %eax
	jne	.LBB18_94
# %bb.88:                               #   in Loop: Header=BB18_85 Depth=3
	addq	$2, %rbx
.LBB18_89:                              #   in Loop: Header=BB18_85 Depth=3
	movq	%rbx, %rax
	jmp	.LBB18_84
.LBB18_90:                              #   in Loop: Header=BB18_85 Depth=3
	cmpb	$45, %sil
	jne	.LBB18_83
# %bb.91:                               #   in Loop: Header=BB18_85 Depth=3
	addq	$3, %rbx
	cmpq	%r13, %rbx
	jae	.LBB18_83
# %bb.92:                               #   in Loop: Header=BB18_85 Depth=3
	cmpb	%r15b, %cl
	ja	.LBB18_89
# %bb.93:                               #   in Loop: Header=BB18_85 Depth=3
	movq	%rbx, %rax
	cmpb	%r15b, (%rbx)
	jb	.LBB18_84
.LBB18_94:                              #   in Loop: Header=BB18_4 Depth=2
	movl	-56(%rbp), %eax         # 4-byte Reload
	jmp	.LBB18_99
.LBB18_95:                              #   in Loop: Header=BB18_4 Depth=2
	movl	$1, %eax
	jmp	.LBB18_97
.LBB18_96:                              #   in Loop: Header=BB18_4 Depth=2
	cmpb	%r15b, %al
	movl	$0, %eax
	sete	%al
.LBB18_97:                              #   in Loop: Header=BB18_4 Depth=2
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB18_100
.LBB18_98:                              #   in Loop: Header=BB18_4 Depth=2
	movl	-56(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
.LBB18_99:                              #   in Loop: Header=BB18_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB18_100:                             #   in Loop: Header=BB18_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	setne	%al
.LBB18_101:                             #   in Loop: Header=BB18_4 Depth=2
	movsbl	(%r12), %ecx
	cmpl	$63, %ecx
	jne	.LBB18_116
# %bb.102:                              #   in Loop: Header=BB18_4 Depth=2
	addq	$1, %r12
	testb	%al, %al
	je	.LBB18_4
# %bb.103:                              #   in Loop: Header=BB18_4 Depth=2
	movq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	match
	testq	%rax, %rax
	je	.LBB18_4
	jmp	.LBB18_104
.LBB18_105:                             #   in Loop: Header=BB18_1 Depth=1
	movb	2(%r14), %al
	testb	%al, %al
	je	.LBB18_107
# %bb.106:                              #   in Loop: Header=BB18_1 Depth=1
	cmpb	$0, 3(%r14)
	jne	.LBB18_108
.LBB18_107:                             #   in Loop: Header=BB18_1 Depth=1
	movq	16(%r15), %rdi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movb	2(%r14), %al
.LBB18_108:                             #   in Loop: Header=BB18_1 Depth=1
	cmpb	%al, (%r13)
	jne	.LBB18_128
# %bb.109:                              #   in Loop: Header=BB18_1 Depth=1
	addq	$1, %r13
	movq	8(%r15), %rcx
	cmpq	%rcx, %r13
	jae	.LBB18_128
# %bb.110:                              # %.preheader22
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	3(%r14), %dl
	movl	$1, %esi
	jmp	.LBB18_113
	.p2align	4, 0x90
.LBB18_111:                             #   in Loop: Header=BB18_113 Depth=2
	xorl	%edi, %edi
	cmpb	%al, %bl
	sete	%dil
	addl	%edi, %esi
.LBB18_112:                             #   in Loop: Header=BB18_113 Depth=2
	addq	$1, %r13
	cmpq	%rcx, %r13
	jae	.LBB18_128
.LBB18_113:                             #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %ebx
	cmpb	%dl, %bl
	jne	.LBB18_111
# %bb.114:                              #   in Loop: Header=BB18_113 Depth=2
	addl	$-1, %esi
	jne	.LBB18_112
# %bb.115:                              #   in Loop: Header=BB18_1 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r14
	movq	%r14, %r12
	jmp	.LBB18_1
.LBB18_116:                             #   in Loop: Header=BB18_1 Depth=1
	cmpl	$42, %ecx
	je	.LBB18_147
# %bb.117:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	$43, %ecx
	je	.LBB18_175
# %bb.118:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	$45, %ecx
	je	.LBB18_204
# %bb.119:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	testb	%al, %al
	jne	.LBB18_1
	jmp	.LBB18_129
.LBB18_120:                             #   in Loop: Header=BB18_1 Depth=1
	cmpb	$49, %cl
	jb	.LBB18_123
# %bb.121:                              #   in Loop: Header=BB18_1 Depth=1
	leaq	-49(%rcx), %rax
	cmpl	24(%r15), %eax
	jge	.LBB18_123
# %bb.122:                              #   in Loop: Header=BB18_1 Depth=1
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	40(%r15,%rcx), %rbx
	cmpq	$-1, %rbx
	jne	.LBB18_124
.LBB18_123:                             #   in Loop: Header=BB18_1 Depth=1
	movq	16(%r15), %rdi
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	luaL_error
	cltq
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	40(%r15,%rcx), %rbx
.LBB18_124:                             #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %rcx
	subq	%r13, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB18_128
# %bb.125:                              #   in Loop: Header=BB18_1 Depth=1
	shlq	$4, %rax
	movq	32(%r15,%rax), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB18_128
# %bb.126:                              #   in Loop: Header=BB18_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %r13
	je	.LBB18_129
# %bb.127:                              #   in Loop: Header=BB18_1 Depth=1
	addq	$2, %r14
	movq	%r14, %r12
	jmp	.LBB18_1
.LBB18_128:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_129:
	xorl	%r13d, %r13d
.LBB18_130:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_131:
	addq	$1, %r14
	movslq	24(%r15), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%r15, %rcx
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB18_132:                             # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jle	.LBB18_141
# %bb.133:                              #   in Loop: Header=BB18_132 Depth=1
	addq	$-1, %rax
	cmpq	$-1, (%rcx)
	leaq	-16(%rcx), %rcx
	jne	.LBB18_132
	jmp	.LBB18_142
.LBB18_134:
	cmpb	$41, 1(%r14)
	jne	.LBB18_144
# %bb.135:
	addq	$2, %r14
	movslq	24(%r15), %rbx
	cmpq	$32, %rbx
	jl	.LBB18_137
# %bb.136:
	movq	16(%r15), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	callq	luaL_error
.LBB18_137:
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	%r13, 32(%r15,%rax)
	movq	$-2, 40(%r15,%rax)
	jmp	.LBB18_138
.LBB18_141:
	movq	16(%r15), %rdi
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	luaL_error
                                        # kill: def $eax killed $eax def $rax
.LBB18_142:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rbx
	shlq	$4, %rbx
	movq	%r13, %rax
	subq	32(%r15,%rbx), %rax
	movq	%rax, 40(%r15,%rbx)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	match
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB18_140
# %bb.143:
	leaq	(%r15,%rbx), %rax
	addq	$40, %rax
	movq	$-1, (%rax)
	jmp	.LBB18_140
.LBB18_144:
	addq	$1, %r14
	movslq	24(%r15), %rbx
	cmpq	$32, %rbx
	jl	.LBB18_146
# %bb.145:
	movq	16(%r15), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	callq	luaL_error
.LBB18_146:
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	%r13, 32(%r15,%rax)
	movq	$-1, 40(%r15,%rax)
.LBB18_138:
	leal	1(%rbx), %eax
	movl	%eax, 24(%r15)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	match
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB18_140
# %bb.139:
	addl	$-1, 24(%r15)
.LBB18_140:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_130
.LBB18_104:
	movq	%rax, %r13
	jmp	.LBB18_130
.LBB18_147:
	movq	8(%r15), %rax
	cmpq	%rax, %r13
	jae	.LBB18_230
# %bb.148:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	leaq	-1(%r12), %rdi
	xorl	%ebx, %ebx
	movq	%r13, %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB18_151
.LBB18_149:                             #   in Loop: Header=BB18_151 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB18_150:                             #   in Loop: Header=BB18_151 Depth=1
	leaq	(%rbx,%r13), %rcx
	addq	$1, %rcx
	addq	$1, %rbx
	cmpq	%rax, %rcx
	jae	.LBB18_231
.LBB18_151:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_160 Depth 2
	movzbl	(%rcx), %r13d
	movb	(%r14), %cl
	movsbl	%cl, %edx
	cmpl	$37, %edx
	je	.LBB18_155
# %bb.152:                              #   in Loop: Header=BB18_151 Depth=1
	cmpl	$91, %edx
	je	.LBB18_157
# %bb.153:                              #   in Loop: Header=BB18_151 Depth=1
	cmpl	$46, %edx
	je	.LBB18_149
# %bb.154:                              #   in Loop: Header=BB18_151 Depth=1
	xorl	%eax, %eax
	cmpb	%r13b, %cl
	sete	%al
	jmp	.LBB18_156
.LBB18_155:                             #   in Loop: Header=BB18_151 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax), %esi
	movl	%r13d, %edi
	callq	match_class
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB18_156:                             #   in Loop: Header=BB18_151 Depth=1
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB18_172
.LBB18_157:                             #   in Loop: Header=BB18_151 Depth=1
	xorl	%eax, %eax
	cmpb	$94, 1(%r14)
	setne	%al
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r14, %r15
	cmoveq	-80(%rbp), %r15         # 8-byte Folded Reload
	leaq	1(%r15), %rax
	jmp	.LBB18_160
.LBB18_158:                             #   in Loop: Header=BB18_160 Depth=2
	cmpb	%r13b, %cl
	je	.LBB18_169
.LBB18_159:                             #   in Loop: Header=BB18_160 Depth=2
	movq	%rax, %r15
	addq	$1, %rax
.LBB18_160:                             #   Parent Loop BB18_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, %rax
	jae	.LBB18_170
# %bb.161:                              #   in Loop: Header=BB18_160 Depth=2
	movzbl	1(%r15), %ecx
	movzbl	2(%r15), %esi
	cmpb	$37, %cl
	jne	.LBB18_164
# %bb.162:                              #   in Loop: Header=BB18_160 Depth=2
	movl	%r13d, %edi
	callq	match_class
	testl	%eax, %eax
	jne	.LBB18_174
# %bb.163:                              #   in Loop: Header=BB18_160 Depth=2
	addq	$2, %r15
	movq	%r15, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_159
.LBB18_164:                             #   in Loop: Header=BB18_160 Depth=2
	cmpb	$45, %sil
	jne	.LBB18_158
# %bb.165:                              #   in Loop: Header=BB18_160 Depth=2
	addq	$3, %r15
	cmpq	%rdi, %r15
	jae	.LBB18_158
# %bb.166:                              #   in Loop: Header=BB18_160 Depth=2
	cmpb	%r13b, %cl
	jbe	.LBB18_168
# %bb.167:                              #   in Loop: Header=BB18_160 Depth=2
	movq	%r15, %rax
	jmp	.LBB18_159
.LBB18_168:                             #   in Loop: Header=BB18_160 Depth=2
	movq	%r15, %rax
	cmpb	%r13b, (%r15)
	jb	.LBB18_159
	jmp	.LBB18_169
.LBB18_170:                             #   in Loop: Header=BB18_151 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
	jmp	.LBB18_171
.LBB18_174:                             #   in Loop: Header=BB18_151 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB18_169:                             #   in Loop: Header=BB18_151 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
.LBB18_171:                             #   in Loop: Header=BB18_151 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB18_172:                             #   in Loop: Header=BB18_151 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_231
# %bb.173:                              #   in Loop: Header=BB18_151 Depth=1
	movq	8(%r15), %rax
	jmp	.LBB18_150
.LBB18_175:
	testb	%al, %al
	je	.LBB18_129
# %bb.176:
	addq	$1, %r13
	movq	8(%r15), %rax
	cmpq	%rax, %r13
	jae	.LBB18_235
# %bb.177:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	leaq	-1(%r12), %rdi
	xorl	%ebx, %ebx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_180
.LBB18_178:                             #   in Loop: Header=BB18_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB18_179:                             #   in Loop: Header=BB18_180 Depth=1
	leaq	(%rbx,%r13), %rcx
	addq	$1, %rcx
	addq	$1, %rbx
	cmpq	%rax, %rcx
	jae	.LBB18_236
.LBB18_180:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_189 Depth 2
	movzbl	(%r13,%rbx), %r13d
	movb	(%r14), %cl
	movsbl	%cl, %edx
	cmpl	$37, %edx
	je	.LBB18_184
# %bb.181:                              #   in Loop: Header=BB18_180 Depth=1
	cmpl	$91, %edx
	je	.LBB18_186
# %bb.182:                              #   in Loop: Header=BB18_180 Depth=1
	cmpl	$46, %edx
	je	.LBB18_178
# %bb.183:                              #   in Loop: Header=BB18_180 Depth=1
	xorl	%eax, %eax
	cmpb	%r13b, %cl
	sete	%al
	jmp	.LBB18_185
.LBB18_184:                             #   in Loop: Header=BB18_180 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax), %esi
	movl	%r13d, %edi
	callq	match_class
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB18_185:                             #   in Loop: Header=BB18_180 Depth=1
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB18_201
.LBB18_186:                             #   in Loop: Header=BB18_180 Depth=1
	xorl	%eax, %eax
	cmpb	$94, 1(%r14)
	setne	%al
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r14, %r15
	cmoveq	-80(%rbp), %r15         # 8-byte Folded Reload
	leaq	1(%r15), %rax
	jmp	.LBB18_189
.LBB18_187:                             #   in Loop: Header=BB18_189 Depth=2
	cmpb	%r13b, %cl
	je	.LBB18_198
.LBB18_188:                             #   in Loop: Header=BB18_189 Depth=2
	movq	%rax, %r15
	addq	$1, %rax
.LBB18_189:                             #   Parent Loop BB18_180 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, %rax
	jae	.LBB18_199
# %bb.190:                              #   in Loop: Header=BB18_189 Depth=2
	movzbl	1(%r15), %ecx
	movzbl	2(%r15), %esi
	cmpb	$37, %cl
	jne	.LBB18_193
# %bb.191:                              #   in Loop: Header=BB18_189 Depth=2
	movl	%r13d, %edi
	callq	match_class
	testl	%eax, %eax
	jne	.LBB18_203
# %bb.192:                              #   in Loop: Header=BB18_189 Depth=2
	addq	$2, %r15
	movq	%r15, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_188
.LBB18_193:                             #   in Loop: Header=BB18_189 Depth=2
	cmpb	$45, %sil
	jne	.LBB18_187
# %bb.194:                              #   in Loop: Header=BB18_189 Depth=2
	addq	$3, %r15
	cmpq	%rdi, %r15
	jae	.LBB18_187
# %bb.195:                              #   in Loop: Header=BB18_189 Depth=2
	cmpb	%r13b, %cl
	jbe	.LBB18_197
# %bb.196:                              #   in Loop: Header=BB18_189 Depth=2
	movq	%r15, %rax
	jmp	.LBB18_188
.LBB18_197:                             #   in Loop: Header=BB18_189 Depth=2
	movq	%r15, %rax
	cmpb	%r13b, (%r15)
	jb	.LBB18_188
	jmp	.LBB18_198
.LBB18_199:                             #   in Loop: Header=BB18_180 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
	jmp	.LBB18_200
.LBB18_203:                             #   in Loop: Header=BB18_180 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB18_198:                             #   in Loop: Header=BB18_180 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
.LBB18_200:                             #   in Loop: Header=BB18_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB18_201:                             #   in Loop: Header=BB18_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_236
# %bb.202:                              #   in Loop: Header=BB18_180 Depth=1
	movq	8(%r15), %rax
	jmp	.LBB18_179
.LBB18_204:
	leaq	1(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$-1, %r12
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB18_208
.LBB18_205:                             #   in Loop: Header=BB18_208 Depth=1
	cmpb	%r15b, %al
	movl	$0, %eax
	sete	%al
.LBB18_206:                             #   in Loop: Header=BB18_208 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB18_207:                             #   in Loop: Header=BB18_208 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	testl	%eax, %eax
	je	.LBB18_239
.LBB18_208:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_217 Depth 2
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	match
	testq	%rax, %rax
	jne	.LBB18_234
# %bb.209:                              #   in Loop: Header=BB18_208 Depth=1
	cmpq	8(%r15), %r13
	jae	.LBB18_239
# %bb.210:                              #   in Loop: Header=BB18_208 Depth=1
	movzbl	(%r13), %r15d
	movb	(%r14), %al
	movsbl	%al, %ecx
	cmpl	$91, %ecx
	je	.LBB18_214
# %bb.211:                              #   in Loop: Header=BB18_208 Depth=1
	cmpl	$46, %ecx
	je	.LBB18_227
# %bb.212:                              #   in Loop: Header=BB18_208 Depth=1
	cmpl	$37, %ecx
	jne	.LBB18_205
# %bb.213:                              #   in Loop: Header=BB18_208 Depth=1
	movzbl	(%rbx), %esi
	movl	%r15d, %edi
	callq	match_class
	jmp	.LBB18_206
.LBB18_214:                             #   in Loop: Header=BB18_208 Depth=1
	xorl	%eax, %eax
	cmpb	$94, 1(%r14)
	setne	%al
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rbx, %rax
	movq	%r14, %rbx
	cmoveq	%rax, %rbx
	leaq	1(%rbx), %rax
	jmp	.LBB18_217
.LBB18_215:                             #   in Loop: Header=BB18_217 Depth=2
	cmpb	%r15b, %cl
	je	.LBB18_226
.LBB18_216:                             #   in Loop: Header=BB18_217 Depth=2
	movq	%rax, %rbx
	addq	$1, %rax
.LBB18_217:                             #   Parent Loop BB18_208 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r12, %rax
	jae	.LBB18_228
# %bb.218:                              #   in Loop: Header=BB18_217 Depth=2
	movzbl	1(%rbx), %ecx
	movzbl	2(%rbx), %esi
	cmpb	$37, %cl
	jne	.LBB18_222
# %bb.219:                              #   in Loop: Header=BB18_217 Depth=2
	movl	%r15d, %edi
	callq	match_class
	testl	%eax, %eax
	jne	.LBB18_226
# %bb.220:                              #   in Loop: Header=BB18_217 Depth=2
	addq	$2, %rbx
.LBB18_221:                             #   in Loop: Header=BB18_217 Depth=2
	movq	%rbx, %rax
	jmp	.LBB18_216
.LBB18_222:                             #   in Loop: Header=BB18_217 Depth=2
	cmpb	$45, %sil
	jne	.LBB18_215
# %bb.223:                              #   in Loop: Header=BB18_217 Depth=2
	addq	$3, %rbx
	cmpq	%r12, %rbx
	jae	.LBB18_215
# %bb.224:                              #   in Loop: Header=BB18_217 Depth=2
	cmpb	%r15b, %cl
	ja	.LBB18_221
# %bb.225:                              #   in Loop: Header=BB18_217 Depth=2
	movq	%rbx, %rax
	cmpb	%r15b, (%rbx)
	jb	.LBB18_216
.LBB18_226:                             #   in Loop: Header=BB18_208 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB18_229
.LBB18_227:                             #   in Loop: Header=BB18_208 Depth=1
	movl	$1, %eax
	jmp	.LBB18_206
.LBB18_228:                             #   in Loop: Header=BB18_208 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$1, %eax
.LBB18_229:                             #   in Loop: Header=BB18_208 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB18_207
.LBB18_56:
	xorl	%eax, %eax
	cmpq	8(%r15), %r13
	cmovneq	%rax, %r13
	jmp	.LBB18_130
.LBB18_230:
	xorl	%ebx, %ebx
.LBB18_231:
	addq	$1, %r12
.LBB18_232:                             # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	js	.LBB18_239
# %bb.233:                              #   in Loop: Header=BB18_232 Depth=1
	leaq	(%rbx,%r13), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	match
	addq	$-1, %rbx
	testq	%rax, %rax
	je	.LBB18_232
	jmp	.LBB18_234
.LBB18_235:
	xorl	%ebx, %ebx
.LBB18_236:
	addq	$1, %r12
.LBB18_237:                             # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	js	.LBB18_239
# %bb.238:                              #   in Loop: Header=BB18_237 Depth=1
	leaq	(%rbx,%r13), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	match
	addq	$-1, %rbx
	testq	%rax, %rax
	je	.LBB18_237
.LBB18_234:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_130
.LBB18_239:
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_130
.Lfunc_end18:
	.size	match, .Lfunc_end18-match
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function match_class
	.type	match_class,@function
match_class:                            # @match_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	movl	%edi, %r14d
	callq	__locale_ctype_ptr
	movslq	%ebx, %r15
	movb	1(%rax,%r15), %cl
	andb	$3, %cl
	leal	32(%r15), %eax
	cmpb	$1, %cl
	cmovnel	%ebx, %eax
	addl	$-97, %eax
	cmpl	$25, %eax
	ja	.LBB19_3
# %bb.1:
	jmpq	*.LJTI19_0(,%rax,8)
.LBB19_2:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$3, %ebx
	jmp	.LBB19_14
.LBB19_3:
	xorl	%eax, %eax
	cmpl	%r14d, %ebx
	sete	%al
	jmp	.LBB19_15
.LBB19_4:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$32, %ebx
	jmp	.LBB19_14
.LBB19_5:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$4, %ebx
	jmp	.LBB19_14
.LBB19_6:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movb	1(%rax,%rcx), %al
	andb	$3, %al
	xorl	%ebx, %ebx
	cmpb	$2, %al
	jmp	.LBB19_13
.LBB19_7:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$16, %ebx
	jmp	.LBB19_14
.LBB19_8:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$8, %ebx
	jmp	.LBB19_14
.LBB19_9:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movb	1(%rax,%rcx), %al
	andb	$3, %al
	xorl	%ebx, %ebx
	cmpb	$1, %al
	jmp	.LBB19_13
.LBB19_10:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$7, %ebx
	jmp	.LBB19_14
.LBB19_11:
	callq	__locale_ctype_ptr
	movslq	%r14d, %rcx
	movzbl	1(%rax,%rcx), %ebx
	andl	$68, %ebx
	jmp	.LBB19_14
.LBB19_12:
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
.LBB19_13:
	sete	%bl
.LBB19_14:
	callq	__locale_ctype_ptr
	movb	1(%rax,%r15), %cl
	andb	$3, %cl
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
	cmpb	$2, %cl
	cmovel	%ebx, %eax
.LBB19_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	match_class, .Lfunc_end19-match_class
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_2
	.quad	.LBB19_3
	.quad	.LBB19_4
	.quad	.LBB19_5
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_6
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_7
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_8
	.quad	.LBB19_3
	.quad	.LBB19_9
	.quad	.LBB19_3
	.quad	.LBB19_10
	.quad	.LBB19_11
	.quad	.LBB19_3
	.quad	.LBB19_12
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
	jle	.LBB20_4
# %bb.1:
	movslq	%esi, %r15
	shlq	$4, %r15
	movq	40(%rbx,%r15), %r14
	cmpq	$-1, %r14
	je	.LBB20_6
# %bb.2:
	movq	16(%rbx), %rdi
	movq	32(%rbx,%r15), %rsi
	cmpq	$-2, %r14
	jne	.LBB20_7
# %bb.3:
	subq	(%rbx), %rsi
	addq	$1, %rsi
	callq	lua_pushinteger
	jmp	.LBB20_10
.LBB20_4:
	movq	16(%rbx), %rdi
	testl	%esi, %esi
	je	.LBB20_8
# %bb.5:
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB20_10
.LBB20_6:
	movq	16(%rbx), %rdi
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	luaL_error
	movq	16(%rbx), %rdi
	movq	32(%rbx,%r15), %rsi
.LBB20_7:
	movq	%r14, %rdx
	jmp	.LBB20_9
.LBB20_8:
	subq	%rdx, %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
.LBB20_9:
	callq	lua_pushlstring
.LBB20_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	push_onecapture, .Lfunc_end20-push_onecapture
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
	cmpq	%r15, %rax
	jg	.LBB21_8
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
	addq	%r12, %r14
	leaq	-600(%rbp), %r15
	.p2align	4, 0x90
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -576(%rbp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	match
	testq	%rax, %rax
	jne	.LBB21_3
# %bb.7:                                #   in Loop: Header=BB21_2 Depth=1
	addq	$1, %r14
	cmpq	-592(%rbp), %r14
	jbe	.LBB21_2
.LBB21_8:
	xorl	%r13d, %r13d
	jmp	.LBB21_9
.LBB21_3:
	movq	%rax, %r12
	subq	%rbx, %rax
	xorl	%esi, %esi
	cmpq	%r12, %r14
	sete	%sil
	addq	%rax, %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movq	%rbx, %rdi
	movl	$-10005, %esi           # imm = 0xD8EB
	callq	lua_replace
	movl	-576(%rbp), %eax
	testl	%eax, %eax
	movl	$1, %r13d
	cmovnel	%eax, %r13d
	testq	%r14, %r14
	cmovel	%eax, %r13d
	movq	-584(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%r13d, %esi
	callq	luaL_checkstack
	testl	%r13d, %r13d
	jle	.LBB21_6
# %bb.4:                                # %.preheader
	xorl	%ebx, %ebx
	leaq	-600(%rbp), %r15
	.p2align	4, 0x90
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	push_onecapture
	addl	$1, %ebx
	cmpl	%ebx, %r13d
	jne	.LBB21_5
.LBB21_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_9:
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
.Lfunc_end21:
	.size	gmatch_aux, .Lfunc_end21-gmatch_aux
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
