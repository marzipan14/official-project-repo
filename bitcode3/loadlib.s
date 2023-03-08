	.text
	.file	"loadlib.c"
	.globl	luaopen_package         # -- Begin function luaopen_package
	.p2align	4, 0x90
	.type	luaopen_package,@function
luaopen_package:                        # @luaopen_package
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	luaL_newmetatable
	movl	$gctm, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.2, %esi
	movl	$pk_funcs, %edx
	movq	%rbx, %rdi
	callq	luaL_register
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	callq	lua_replace
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$loader_preload, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	$1, %edx
	callq	lua_rawseti
	movl	$loader_Lua, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	$2, %edx
	callq	lua_rawseti
	movl	$loader_C, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	$3, %edx
	callq	lua_rawseti
	movl	$loader_Croot, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	$4, %edx
	callq	lua_rawseti
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.5, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movl	$.L.str.38, %edx
	movl	$.L.str.39, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaL_gsub
	movl	$.L.str.40, %edx
	movl	$.L.str.6, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaL_gsub
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_remove
	jmp	.LBB0_3
.LBB0_1:
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
.LBB0_3:
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.8, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:
	movl	$.L.str.38, %edx
	movl	$.L.str.39, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaL_gsub
	movl	$.L.str.40, %edx
	movl	$.L.str.9, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaL_gsub
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_remove
	jmp	.LBB0_6
.LBB0_4:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
.LBB0_6:
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.10, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.11, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	movl	$2, %ecx
	callq	luaL_findtable
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_pushvalue
	movl	$ll_funcs, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	luaL_register
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_package, .Lfunc_end0-luaopen_package
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function gctm
	.type	gctm,@function
gctm:                                   # @gctm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	$0, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gctm, .Lfunc_end1-gctm
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ll_loadlib
	.type	ll_loadlib,@function
ll_loadlib:                             # @ll_loadlib
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %r14d
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	ll_loadfunc
	testl	%eax, %eax
	je	.LBB2_2
# %bb.1:
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	cmpl	$1, %r15d
	movl	$.L.str.17, %eax
	movl	$.L.str.18, %esi
	cmoveq	%rax, %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$3, %r14d
.LBB2_2:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ll_loadlib, .Lfunc_end2-ll_loadlib
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ll_seeall
	.type	ll_seeall,@function
ll_seeall:                              # @ll_seeall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getmetatable
	testl	%eax, %eax
	jne	.LBB3_2
# %bb.1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_setmetatable
.LBB3_2:
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_pushvalue
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ll_seeall, .Lfunc_end3-ll_seeall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ll_loadfunc
	.type	ll_loadfunc,@function
ll_loadfunc:                            # @ll_loadfunc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$.L.str.19, %esi
	movl	$.L.str.20, %edx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_gettable
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB4_2
# %bb.1:
	movl	$-1, %esi
	callq	lua_touserdata
	movq	%rax, %r15
	jmp	.LBB4_3
.LBB4_2:
	movl	$-2, %esi
	callq	lua_settop
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r15
	movq	$0, (%rax)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movl	$.L.str.19, %esi
	movl	$.L.str.20, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_settable
.LBB4_3:
	movq	(%r15), %r14
	movl	$.L.str.21, %esi
	movl	$58, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$2, %eax
	testq	%r14, %r14
	jne	.LBB4_5
# %bb.4:
	movq	$0, (%r15)
	movl	$1, %eax
.LBB4_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ll_loadfunc, .Lfunc_end4-ll_loadfunc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function loader_preload
	.type	loader_preload,@function
loader_preload:                         # @loader_preload
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$5, %eax
	je	.LBB5_2
# %bb.1:
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_2:
	movq	%rbx, %rdi
	movl	$-1, %esi
	movq	%r14, %rdx
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	jne	.LBB5_4
# %bb.3:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
.LBB5_4:
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	loader_preload, .Lfunc_end5-loader_preload
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function loader_Lua
	.type	loader_Lua,@function
loader_Lua:                             # @loader_Lua
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	findfile
	testq	%rax, %rax
	je	.LBB6_3
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaL_loadfile
	testl	%eax, %eax
	je	.LBB6_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	luaL_error
.LBB6_3:
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	loader_Lua, .Lfunc_end6-loader_Lua
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function loader_C
	.type	loader_C,@function
loader_C:                               # @loader_C
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %rbx
	movl	$.L.str.7, %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	findfile
	testq	%rax, %rax
	je	.LBB7_3
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$45, %esi
	callq	strchr
	testq	%rax, %rax
	leaq	1(%rax), %rsi
	cmoveq	%rbx, %rsi
	movl	$.L.str.25, %edx
	movl	$.L.str.35, %ecx
	movq	%r15, %rdi
	callq	luaL_gsub
	movl	$.L.str.36, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ll_loadfunc
	testl	%eax, %eax
	je	.LBB7_3
# %bb.2:
	movq	%r15, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	luaL_error
.LBB7_3:
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	loader_C, .Lfunc_end7-loader_C
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function loader_Croot
	.type	loader_Croot,@function
loader_Croot:                           # @loader_Croot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$46, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB8_7
# %bb.1:
	subq	%r14, %rax
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	lua_pushlstring
	movq	%r12, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	findfile
	testq	%rax, %rax
	je	.LBB8_6
# %bb.2:
	movq	%rax, %r15
	movq	%r14, %rdi
	movl	$45, %esi
	callq	strchr
	testq	%rax, %rax
	leaq	1(%rax), %rsi
	cmoveq	%r14, %rsi
	movl	$.L.str.25, %edx
	movl	$.L.str.35, %ecx
	movq	%r12, %rdi
	callq	luaL_gsub
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ll_loadfunc
	testl	%eax, %eax
	je	.LBB8_6
# %bb.3:
	cmpl	$2, %eax
	je	.LBB8_5
# %bb.4:
	movq	%r12, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rbx
	movq	%r12, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.33, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	luaL_error
.LBB8_5:
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
.LBB8_6:
	movl	$1, %ebx
.LBB8_7:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	loader_Croot, .Lfunc_end8-loader_Croot
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function findfile
	.type	findfile,@function
findfile:                               # @findfile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movq	%rdi, %r15
	movl	$.L.str.25, %edx
	movl	$.L.str.26, %ecx
	callq	luaL_gsub
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	movq	%r12, %rdx
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB9_2
# %bb.1:
	movl	$.L.str.27, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaL_error
.LBB9_2:
	movl	$.L.str.28, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	lua_pushlstring
	jmp	.LBB9_4
	.p2align	4, 0x90
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	addq	$1, %rbx
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpb	$59, %al
	je	.LBB9_3
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	testb	%al, %al
	je	.LBB9_12
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	movl	$59, %esi
	callq	strchr
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	addq	%rbx, %r12
.LBB9_8:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%r12, %rdx
	subq	%rbx, %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lua_pushlstring
	testq	%r12, %r12
	je	.LBB9_12
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.29, %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rcx
	callq	luaL_gsub
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	fopen
	testq	%rax, %rax
	jne	.LBB9_13
# %bb.10:                               #   in Loop: Header=BB9_4 Depth=1
	movl	$.L.str.30, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movq	%r15, %rdi
	movl	$2, %esi
	callq	lua_concat
	movq	%r12, %rbx
	jmp	.LBB9_4
.LBB9_12:
	xorl	%ebx, %ebx
	jmp	.LBB9_14
.LBB9_13:
	movq	%rax, %rdi
	callq	fclose
.LBB9_14:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	findfile, .Lfunc_end9-findfile
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ll_module
	.type	ll_module,@function
ll_module:                              # @ll_module
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
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	lua_gettop
	movl	%eax, %r14d
	leal	1(%r14), %r12d
	movl	$.L.str.12, %edx
	movq	%r13, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	lua_getfield
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$5, %eax
	je	.LBB10_3
# %bb.1:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r13, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	movq	%r15, %rdx
	movl	$1, %ecx
	callq	luaL_findtable
	testq	%rax, %rax
	je	.LBB10_2
# %bb.13:
	movl	$.L.str.43, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_error              # TAILCALL
.LBB10_2:
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	lua_setfield
.LBB10_3:
	movl	$.L.str.44, %edx
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	%eax, %ebx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
	testl	%ebx, %ebx
	jne	.LBB10_5
# %bb.4:
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$.L.str.45, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	lua_pushstring
	movl	$.L.str.44, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%r15, %rdi
	movl	$46, %esi
	callq	strrchr
	testq	%rax, %rax
	leaq	1(%rax), %rdx
	cmoveq	%r15, %rdx
	subq	%r15, %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	lua_pushlstring
	movl	$.L.str.46, %edx
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfield
.LBB10_5:
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	leaq	-160(%rbp), %rdx
	movq	%r13, %rdi
	movl	$1, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB10_8
# %bb.6:
	leaq	-160(%rbp), %rdx
	movl	$.L.str.47, %esi
	movq	%r13, %rdi
	callq	lua_getinfo
	testl	%eax, %eax
	je	.LBB10_8
# %bb.7:
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_iscfunction
	testl	%eax, %eax
	je	.LBB10_9
.LBB10_8:
	movl	$.L.str.48, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB10_9:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
	cmpl	$2, %r14d
	jl	.LBB10_12
# %bb.10:                               # %.preheader
	negl	%r14d
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB10_11:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	leal	(%r14,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	cmpl	$1, %eax
	jne	.LBB10_11
.LBB10_12:
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ll_module, .Lfunc_end10-ll_module
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ll_require
	.type	ll_require,@function
ll_require:                             # @ll_require
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_settop
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	testl	%eax, %eax
	je	.LBB11_3
# %bb.1:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	movl	$sentinel_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB11_16
# %bb.2:
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB11_16
.LBB11_3:
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$5, %eax
	je	.LBB11_5
# %bb.4:
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB11_5:
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushlstring
	movl	$1, %r15d
	jmp	.LBB11_6
	.p2align	4, 0x90
.LBB11_10:                              #   in Loop: Header=BB11_6 Depth=1
	movl	$2, %esi
	callq	lua_concat
	addl	$1, %r15d
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	%r15d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	jne	.LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=1
	movq	%rbx, %rdi
	movl	$-2, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.51, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	luaL_error
.LBB11_8:                               #   in Loop: Header=BB11_6 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$6, %eax
	je	.LBB11_12
# %bb.9:                                #   in Loop: Header=BB11_6 Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_isstring
	movq	%rbx, %rdi
	testl	%eax, %eax
	jne	.LBB11_10
# %bb.11:                               #   in Loop: Header=BB11_6 Depth=1
	movl	$-2, %esi
	callq	lua_settop
	addl	$1, %r15d
	jmp	.LBB11_6
.LBB11_12:
	movl	$sentinel_, %r15d
	movl	$sentinel_, %esi
	movq	%rbx, %rdi
	callq	lua_pushlightuserdata
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	lua_setfield
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB11_14
# %bb.13:
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	lua_setfield
.LBB11_14:
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	cmpq	%r15, %rax
	jne	.LBB11_16
# %bb.15:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	lua_setfield
.LBB11_16:
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ll_require, .Lfunc_end11-ll_require
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_LOADLIB"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"__gc"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"package"
	.size	.L.str.2, 8

	.type	pk_funcs,@object        # @pk_funcs
	.section	.rodata,"a",@progbits
	.p2align	4
pk_funcs:
	.quad	.L.str.15
	.quad	ll_loadlib
	.quad	.L.str.16
	.quad	ll_seeall
	.zero	16
	.size	pk_funcs, 48

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"loaders"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"path"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LUA_PATH"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua"
	.size	.L.str.6, 138

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cpath"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"LUA_CPATH"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so"
	.size	.L.str.9, 69

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/\n;\n?\n!\n-"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"config"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_LOADED"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"loaded"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"preload"
	.size	.L.str.14, 8

	.type	ll_funcs,@object        # @ll_funcs
	.section	.rodata,"a",@progbits
	.p2align	4
ll_funcs:
	.quad	.L.str.41
	.quad	ll_module
	.quad	.L.str.42
	.quad	ll_require
	.zero	16
	.size	ll_funcs, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"loadlib"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"seeall"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"absent"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"init"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s%s"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"LOADLIB: "
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"dynamic libraries not enabled; check your Lua installation"
	.size	.L.str.21, 59

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"__index"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"'package.preload' must be a table"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\n\tno field package.preload['%s']"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"."
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"'package.%s' must be a string"
	.size	.L.str.27, 30

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.zero	1
	.size	.L.str.28, 1

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"?"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\n\tno file '%s'"
	.size	.L.str.30, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"r"
	.size	.L.str.32, 2

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"error loading module '%s' from file '%s':\n\t%s"
	.size	.L.str.33, 46

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_"
	.size	.L.str.35, 2

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"luaopen_%s"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\n\tno module '%s' in file '%s'"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	";;"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	";\001;"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\001"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"module"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"require"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"name conflict for module '%s'"
	.size	.L.str.43, 30

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_NAME"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_M"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_PACKAGE"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"f"
	.size	.L.str.47, 2

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"'module' not called from a Lua function"
	.size	.L.str.48, 40

	.type	sentinel_,@object       # @sentinel_
	.section	.rodata,"a",@progbits
	.p2align	2
sentinel_:
	.long	0                       # 0x0
	.size	sentinel_, 4

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"loop or previous error loading module '%s'"
	.size	.L.str.49, 43

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"'package.loaders' must be a table"
	.size	.L.str.50, 34

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"module '%s' not found:%s"
	.size	.L.str.51, 25

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
