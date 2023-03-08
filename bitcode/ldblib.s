	.text
	.file	"ldblib.c"
	.globl	luaopen_debug           # -- Begin function luaopen_debug
	.p2align	4, 0x90
	.type	luaopen_debug,@function
luaopen_debug:                          # @luaopen_debug
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %esi
	movl	$dblib, %edx
	callq	luaL_register
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_debug, .Lfunc_end0-luaopen_debug
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_debug
	.type	db_debug,@function
db_debug:                               # @db_debug
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movq	%rdi, %r15
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.14, %edi
	callq	fputs
	callq	__getreent
	movq	8(%rax), %rdx
	leaq	-288(%rbp), %rdi
	movl	$250, %esi
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_7
# %bb.1:                                # %.preheader
	leaq	-288(%rbp), %r14
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.17, %edi
	callq	fputs
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	lua_settop
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.14, %edi
	callq	fputs
	callq	__getreent
	movq	8(%rax), %rdx
	movq	%r14, %rdi
	movl	$250, %esi
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_7
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_7
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movl	$.L.str.16, %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	luaL_loadbuffer
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	testl	%eax, %eax
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	db_debug, .Lfunc_end1-db_debug
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_getfenv
	.type	db_getfenv,@function
db_getfenv:                             # @db_getfenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getfenv
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	db_getfenv, .Lfunc_end2-db_getfenv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_gethook
	.type	db_gethook,@function
db_gethook:                             # @db_gethook
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_type
	movq	%rbx, %r14
	cmpl	$8, %eax
	jne	.LBB3_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r14
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	lua_gethookmask
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	lua_gethook
	testq	%rax, %rax
	je	.LBB3_5
# %bb.3:
	movl	$hookf, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_5
# %bb.4:
	movl	$.L.str.18, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	jmp	.LBB3_6
.LBB3_5:
	movq	%rbx, %rdi
	callq	gethooktable
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushlightuserdata
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_rawget
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_remove
.LBB3_6:
	xorl	%eax, %eax
	testb	$1, %r15b
	jne	.LBB3_7
# %bb.8:
	testb	$2, %r15b
	jne	.LBB3_9
.LBB3_10:
	testb	$4, %r15b
	je	.LBB3_12
.LBB3_11:
	movl	%eax, %ecx
	addl	$1, %eax
	movb	$108, -29(%rbp,%rcx)
.LBB3_12:
	movl	%eax, %eax
	movb	$0, -29(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-29(%rbp), %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%r14, %rdi
	callq	lua_gethookcount
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_7:
	movb	$99, -29(%rbp)
	movl	$1, %eax
	testb	$2, %r15b
	je	.LBB3_10
.LBB3_9:
	movl	%eax, %ecx
	addl	$1, %eax
	movb	$114, -29(%rbp,%rcx)
	testb	$4, %r15b
	jne	.LBB3_11
	jmp	.LBB3_12
.Lfunc_end3:
	.size	db_gethook, .Lfunc_end3-db_gethook
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_getinfo
	.type	db_getinfo,@function
db_getinfo:                             # @db_getinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, %r13
	movl	$1, %esi
	callq	lua_type
	xorl	%ebx, %ebx
	movq	%r13, %r14
	cmpl	$8, %eax
	jne	.LBB4_2
# %bb.1:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r14
	movl	$1, %ebx
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	leal	2(%rbx), %r12d
	movl	$.L.str.24, %edx
	movq	%r13, %rdi
	movl	%r12d, %esi
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %r15
	addl	$1, %ebx
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	lua_isnumber
	movq	%r13, %rdi
	testl	%eax, %eax
	je	.LBB4_5
# %bb.3:
	movl	%ebx, %esi
	callq	lua_tointeger
	leaq	-160(%rbp), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	lua_getstack
	testl	%eax, %eax
	jne	.LBB4_7
# %bb.4:
	movq	%r13, %rdi
	callq	lua_pushnil
	movl	$1, %ebx
	jmp	.LBB4_29
.LBB4_5:
	movl	%ebx, %esi
	callq	lua_type
	cmpl	$6, %eax
	jne	.LBB4_9
# %bb.6:
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r13, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %r15
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	lua_xmove
.LBB4_7:
	leaq	-160(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	lua_getinfo
	testl	%eax, %eax
	je	.LBB4_8
# %bb.11:
	movq	%r13, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	lua_createtable
	movq	%r15, %rdi
	movl	$83, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB4_13
# %bb.12:
	movq	-128(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushstring
	movl	$.L.str.28, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	leaq	-104(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushstring
	movl	$.L.str.29, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	-112(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushinteger
	movl	$.L.str.30, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	-108(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushinteger
	movl	$.L.str.31, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushstring
	movl	$.L.str.32, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB4_13:
	movq	%r15, %rdi
	movl	$108, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB4_15
# %bb.14:
	movslq	-120(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushinteger
	movl	$.L.str.33, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB4_15:
	movq	%r15, %rdi
	movl	$117, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB4_17
# %bb.16:
	movslq	-116(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushinteger
	movl	$.L.str.34, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB4_17:
	movq	%r15, %rdi
	movl	$110, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB4_19
# %bb.18:
	movq	-152(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushstring
	movl	$.L.str.35, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rsi
	movq	%r13, %rdi
	callq	lua_pushstring
	movl	$.L.str.36, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB4_19:
	movq	%r15, %rdi
	movl	$76, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB4_24
# %bb.20:
	cmpq	%r13, %r14
	je	.LBB4_21
# %bb.22:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	lua_xmove
	jmp	.LBB4_23
.LBB4_8:
	movl	$.L.str.27, %edx
	movq	%r13, %rdi
	movl	%r12d, %esi
	jmp	.LBB4_10
.LBB4_9:
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	movl	%ebx, %esi
.LBB4_10:
	callq	luaL_argerror
	movl	%eax, %ebx
	jmp	.LBB4_29
.LBB4_21:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-3, %esi
	callq	lua_remove
.LBB4_23:
	movl	$.L.str.37, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB4_24:
	movq	%r15, %rdi
	movl	$102, %esi
	callq	strchr
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB4_29
# %bb.25:
	cmpq	%r13, %r14
	je	.LBB4_26
# %bb.27:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	lua_xmove
	jmp	.LBB4_28
.LBB4_26:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-3, %esi
	callq	lua_remove
.LBB4_28:
	movl	$.L.str.38, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB4_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	db_getinfo, .Lfunc_end4-db_getinfo
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_getlocal
	.type	db_getlocal,@function
db_getlocal:                            # @db_getlocal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %r15
	movl	$1, %esi
	callq	lua_type
	xorl	%ebx, %ebx
	movq	%r15, %r14
	cmpl	$8, %eax
	jne	.LBB5_2
# %bb.1:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r14
	movl	$1, %ebx
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	luaL_checkinteger
	leaq	-152(%rbp), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB5_3
# %bb.4:
	orl	$2, %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaL_checkinteger
	leaq	-152(%rbp), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	lua_getlocal
	testq	%rax, %rax
	je	.LBB5_6
# %bb.5:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	lua_xmove
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lua_pushstring
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movl	$2, %eax
	jmp	.LBB5_7
.LBB5_3:
	movl	$.L.str.39, %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	luaL_argerror
	jmp	.LBB5_7
.LBB5_6:
	movq	%r15, %rdi
	callq	lua_pushnil
	movl	$1, %eax
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	db_getlocal, .Lfunc_end5-db_getlocal
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_getregistry
	.type	db_getregistry,@function
db_getregistry:                         # @db_getregistry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_pushvalue
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	db_getregistry, .Lfunc_end6-db_getregistry
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_getmetatable
	.type	db_getmetatable,@function
db_getmetatable:                        # @db_getmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getmetatable
	testl	%eax, %eax
	jne	.LBB7_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	db_getmetatable, .Lfunc_end7-db_getmetatable
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_getupvalue
	.type	db_getupvalue,@function
db_getupvalue:                          # @db_getupvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	auxupvalue
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	db_getupvalue, .Lfunc_end8-db_getupvalue
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_setfenv
	.type	db_setfenv,@function
db_setfenv:                             # @db_setfenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$2, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_setfenv
	testl	%eax, %eax
	jne	.LBB9_2
# %bb.1:
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	db_setfenv, .Lfunc_end9-db_setfenv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_sethook
	.type	db_sethook,@function
db_sethook:                             # @db_sethook
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
	movl	$1, %esi
	callq	lua_type
	xorl	%ebx, %ebx
	movq	%r13, %r12
	cmpl	$8, %eax
	jne	.LBB10_2
# %bb.1:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r12
	movl	$1, %ebx
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	lua_type
	testl	%eax, %eax
	jle	.LBB10_3
# %bb.4:
	leal	2(%rbx), %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	$6, %edx
	callq	luaL_checktype
	addl	$3, %ebx
	movq	%r13, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	callq	luaL_optinteger
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	$99, %esi
	callq	strchr
	xorl	%ebx, %ebx
	testq	%rax, %rax
	setne	%bl
	movq	%r14, %rdi
	movl	$114, %esi
	callq	strchr
	movq	%r12, -56(%rbp)         # 8-byte Spill
	leal	2(%rbx), %r12d
	testq	%rax, %rax
	cmovel	%ebx, %r12d
	movq	%r14, %rdi
	movl	$108, %esi
	callq	strchr
	leal	4(%r12), %ecx
	testq	%rax, %rax
	cmovel	%r12d, %ecx
	movq	-56(%rbp), %r12         # 8-byte Reload
	leal	8(%rcx), %ebx
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	cmovlel	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$hookf, %r14d
	jmp	.LBB10_5
.LBB10_3:
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	lua_settop
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
.LBB10_5:
	movq	%r13, %rdi
	callq	gethooktable
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	lua_pushlightuserdata
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-3, %esi
	callq	lua_rawset
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	lua_sethook
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	db_sethook, .Lfunc_end10-db_sethook
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_setlocal
	.type	db_setlocal,@function
db_setlocal:                            # @db_setlocal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_type
	xorl	%r15d, %r15d
	movq	%rbx, %r14
	cmpl	$8, %eax
	jne	.LBB11_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r14
	movl	$1, %r15d
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r15), %r12d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	luaL_checkinteger
	leaq	-152(%rbp), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB11_3
# %bb.4:
	leal	3(%r15), %r12d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	lua_settop
	movl	$1, %r12d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	lua_xmove
	orl	$2, %r15d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	luaL_checkinteger
	leaq	-152(%rbp), %rsi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	lua_setlocal
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	jmp	.LBB11_5
.LBB11_3:
	movl	$.L.str.39, %edx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	luaL_argerror
	movl	%eax, %r12d
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	db_setlocal, .Lfunc_end11-db_setlocal
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_setmetatable
	.type	db_setmetatable,@function
db_setmetatable:                        # @db_setmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB12_3
# %bb.1:
	cmpl	$5, %eax
	je	.LBB12_3
# %bb.2:
	movl	$.L.str.41, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_argerror
.LBB12_3:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_setmetatable
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_pushboolean
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	db_setmetatable, .Lfunc_end12-db_setmetatable
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_setupvalue
	.type	db_setupvalue,@function
db_setupvalue:                          # @db_setupvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$3, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	auxupvalue
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	db_setupvalue, .Lfunc_end13-db_setupvalue
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function db_errorfb
	.type	db_errorfb,@function
db_errorfb:                             # @db_errorfb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %r15
	movl	$1, %esi
	callq	lua_type
	xorl	%r12d, %r12d
	movq	%r15, %r14
	cmpl	$8, %eax
	jne	.LBB14_2
# %bb.1:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r14
	movl	$1, %r12d
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	leal	2(%r12), %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	je	.LBB14_4
# %bb.3:
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB14_5
.LBB14_4:
	xorl	%ebx, %ebx
	cmpq	%r15, %r14
	sete	%bl
.LBB14_5:
	movq	%r15, %rdi
	callq	lua_gettop
	cmpl	%r12d, %eax
	jne	.LBB14_7
# %bb.6:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	jmp	.LBB14_9
.LBB14_7:
	leal	1(%r12), %esi
	movq	%r15, %rdi
	callq	lua_isstring
	testl	%eax, %eax
	je	.LBB14_18
# %bb.8:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.17, %esi
	movl	$1, %edx
	movq	%r15, %rdi
.LBB14_9:
	callq	lua_pushlstring
	movl	$.L.str.43, %esi
	movl	$16, %edx
	movq	%r15, %rdi
	callq	lua_pushlstring
	leaq	-168(%rbp), %rdx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB14_17
# %bb.10:
	movb	$1, %r12b
	leaq	-168(%rbp), %r13
	.p2align	4, 0x90
.LBB14_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_14 Depth 2
	cmpl	$12, %ebx
	setl	%al
	movl	%r12d, %ecx
	notb	%cl
	orb	%al, %cl
	testb	$1, %cl
	je	.LBB14_12
# %bb.19:                               #   in Loop: Header=BB14_11 Depth=1
	movl	$.L.str.45, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	lua_pushlstring
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	lua_getinfo
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	leaq	-112(%rbp), %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movl	-128(%rbp), %edx
	testl	%edx, %edx
	jle	.LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_11 Depth=1
	movl	$.L.str.48, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
.LBB14_21:                              #   in Loop: Header=BB14_11 Depth=1
	addl	$1, %ebx
	movq	-152(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB14_23
# %bb.22:                               #   in Loop: Header=BB14_11 Depth=1
	movq	-160(%rbp), %rdx
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB14_29
	.p2align	4, 0x90
.LBB14_23:                              #   in Loop: Header=BB14_11 Depth=1
	movq	-144(%rbp), %rax
	movb	(%rax), %al
	cmpb	$67, %al
	je	.LBB14_27
# %bb.24:                               #   in Loop: Header=BB14_11 Depth=1
	cmpb	$116, %al
	je	.LBB14_27
# %bb.25:                               #   in Loop: Header=BB14_11 Depth=1
	cmpb	$109, %al
	jne	.LBB14_28
# %bb.26:                               #   in Loop: Header=BB14_11 Depth=1
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB14_29
.LBB14_27:                              #   in Loop: Header=BB14_11 Depth=1
	movl	$.L.str.51, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	lua_pushlstring
	jmp	.LBB14_29
.LBB14_28:                              #   in Loop: Header=BB14_11 Depth=1
	movl	-120(%rbp), %ecx
	movl	$.L.str.52, %esi
	movq	%r15, %rdi
	leaq	-112(%rbp), %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	.p2align	4, 0x90
.LBB14_29:                              #   in Loop: Header=BB14_11 Depth=1
	movq	%r15, %rdi
	callq	lua_gettop
	subl	-48(%rbp), %eax         # 4-byte Folded Reload
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	lua_concat
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r13, %rdx
	callq	lua_getstack
	testl	%eax, %eax
	jne	.LBB14_11
	jmp	.LBB14_17
.LBB14_12:                              #   in Loop: Header=BB14_11 Depth=1
	leal	11(%rbx), %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB14_15
# %bb.13:                               #   in Loop: Header=BB14_11 Depth=1
	movl	$.L.str.44, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	lua_pushlstring
	.p2align	4, 0x90
.LBB14_14:                              #   Parent Loop BB14_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	11(%rbx), %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	lua_getstack
	addl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB14_14
.LBB14_15:                              #   in Loop: Header=BB14_11 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r13, %rdx
	callq	lua_getstack
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.LBB14_11
.LBB14_17:
	movq	%r15, %rdi
	callq	lua_gettop
	subl	-48(%rbp), %eax         # 4-byte Folded Reload
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	lua_concat
.LBB14_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	db_errorfb, .Lfunc_end14-db_errorfb
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hookf
	.type	hookf,@function
hookf:                                  # @hookf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$KEY_HOOK, %esi
	callq	lua_pushlightuserdata
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_rawget
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	lua_pushlightuserdata
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_rawget
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$6, %eax
	jne	.LBB15_5
# %bb.1:
	movslq	(%r14), %rax
	movq	hookf.hooknames(,%rax,8), %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movslq	40(%r14), %rsi
	movq	%rbx, %rdi
	testq	%rsi, %rsi
	js	.LBB15_3
# %bb.2:
	callq	lua_pushinteger
	jmp	.LBB15_4
.LBB15_3:
	callq	lua_pushnil
.LBB15_4:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lua_call
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	hookf, .Lfunc_end15-hookf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function gethooktable
	.type	gethooktable,@function
gethooktable:                           # @gethooktable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$KEY_HOOK, %esi
	callq	lua_pushlightuserdata
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_rawget
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$5, %eax
	je	.LBB16_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movl	$KEY_HOOK, %esi
	movq	%rbx, %rdi
	callq	lua_pushlightuserdata
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_rawset
.LBB16_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gethooktable, .Lfunc_end16-gethooktable
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function auxupvalue
	.type	auxupvalue,@function
auxupvalue:                             # @auxupvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %r12
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$6, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_iscfunction
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB17_6
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	testl	%r14d, %r14d
	je	.LBB17_3
# %bb.2:
	callq	lua_getupvalue
	testq	%rax, %rax
	je	.LBB17_6
.LBB17_5:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	leal	1(%r14), %r15d
	notl	%r14d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_insert
.LBB17_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_3:
	callq	lua_setupvalue
	testq	%rax, %rax
	jne	.LBB17_5
	jmp	.LBB17_6
.Lfunc_end17:
	.size	auxupvalue, .Lfunc_end17-auxupvalue
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"debug"
	.size	.L.str, 6

	.type	dblib,@object           # @dblib
	.section	.rodata,"a",@progbits
	.p2align	4
dblib:
	.quad	.L.str
	.quad	db_debug
	.quad	.L.str.1
	.quad	db_getfenv
	.quad	.L.str.2
	.quad	db_gethook
	.quad	.L.str.3
	.quad	db_getinfo
	.quad	.L.str.4
	.quad	db_getlocal
	.quad	.L.str.5
	.quad	db_getregistry
	.quad	.L.str.6
	.quad	db_getmetatable
	.quad	.L.str.7
	.quad	db_getupvalue
	.quad	.L.str.8
	.quad	db_setfenv
	.quad	.L.str.9
	.quad	db_sethook
	.quad	.L.str.10
	.quad	db_setlocal
	.quad	.L.str.11
	.quad	db_setmetatable
	.quad	.L.str.12
	.quad	db_setupvalue
	.quad	.L.str.13
	.quad	db_errorfb
	.zero	16
	.size	dblib, 240

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"getfenv"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gethook"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"getinfo"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"getlocal"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"getregistry"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"getmetatable"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"getupvalue"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"setfenv"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sethook"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"setlocal"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"setmetatable"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"setupvalue"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"traceback"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"lua_debug> "
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cont\n"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"=(debug command)"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\n"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"external hook"
	.size	.L.str.18, 14

	.type	hookf.hooknames,@object # @hookf.hooknames
	.section	.rodata,"a",@progbits
	.p2align	4
hookf.hooknames:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.size	hookf.hooknames, 40

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"call"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"return"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"line"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"count"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"tail return"
	.size	.L.str.23, 12

	.type	KEY_HOOK,@object        # @KEY_HOOK
	.section	.rodata,"a",@progbits
KEY_HOOK:
	.byte	104                     # 0x68
	.size	KEY_HOOK, 1

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"flnSu"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	">%s"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"function or level expected"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"invalid option"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"source"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"short_src"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"linedefined"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"lastlinedefined"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"what"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"currentline"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"nups"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"name"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"namewhat"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"activelines"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"func"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"level out of range"
	.size	.L.str.39, 19

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"'setfenv' cannot change environment of given object"
	.size	.L.str.40, 52

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"nil or table expected"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.zero	1
	.size	.L.str.42, 1

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"stack traceback:"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\n\t..."
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\n\t"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Snl"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s:"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%d:"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	" in function '%s'"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" in main chunk"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	" ?"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	" in function <%s:%d>"
	.size	.L.str.52, 21

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
