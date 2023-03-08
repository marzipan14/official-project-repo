	.text
	.file	"lbaselib.c"
	.globl	luaopen_base            # -- Begin function luaopen_base
	.p2align	4, 0x90
	.type	luaopen_base,@function
luaopen_base:                           # @luaopen_base
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_pushvalue
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$.L.str.1, %esi
	movl	$base_funcs, %edx
	movq	%rbx, %rdi
	callq	luaL_register
	movl	$.L.str.2, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$ipairsaux, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$luaB_ipairs, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaB_next, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$luaB_pairs, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movl	$.L.str.6, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$luaB_newproxy, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %esi
	movl	$co_funcs, %edx
	movq	%rbx, %rdi
	callq	luaL_register
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_base, .Lfunc_end0-luaopen_base
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_ipairs
	.type	luaB_ipairs,@function
luaB_ipairs:                            # @luaB_ipairs
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
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaB_ipairs, .Lfunc_end1-luaB_ipairs
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ipairsaux
	.type	ipairsaux,@function
ipairsaux:                              # @ipairsaux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	addl	$1, %ebx
	movslq	%ebx, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_type
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ipairsaux, .Lfunc_end2-ipairsaux
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_pairs
	.type	luaB_pairs,@function
luaB_pairs:                             # @luaB_pairs
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
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaB_pairs, .Lfunc_end3-luaB_pairs
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_next
	.type	luaB_next,@function
luaB_next:                              # @luaB_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movl	$2, %r14d
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	$1, %r14d
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaB_next, .Lfunc_end4-luaB_next
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_newproxy
	.type	luaB_newproxy,@function
luaB_newproxy:                          # @luaB_newproxy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	lua_newuserdata
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_toboolean
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_9
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	cmpl	$1, %eax
	jne	.LBB5_3
# %bb.2:
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
	movq	%rbx, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_rawset
	jmp	.LBB5_8
.LBB5_3:
	movl	$1, %esi
	callq	lua_getmetatable
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_5
# %bb.4:
	movq	%rbx, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_rawget
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movl	%eax, %r14d
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB5_7
	jmp	.LBB5_6
.LBB5_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_6:
	movl	$.L.str.64, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getmetatable
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_setmetatable
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaB_newproxy, .Lfunc_end5-luaB_newproxy
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_assert
	.type	luaB_assert,@function
luaB_assert:                            # @luaB_assert
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
	callq	lua_toboolean
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_1
# %bb.2:
	movq	%rbx, %rdi
	callq	lua_gettop
	jmp	.LBB6_3
.LBB6_1:
	movl	$.L.str.34, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaB_assert, .Lfunc_end6-luaB_assert
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function luaB_collectgarbage
.LCPI7_0:
	.quad	4562146422526312448     # double 9.765625E-4
	.text
	.p2align	4, 0x90
	.type	luaB_collectgarbage,@function
luaB_collectgarbage:                    # @luaB_collectgarbage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$.L.str.37, %edx
	movl	$luaB_collectgarbage.opts, %ecx
	movl	$1, %esi
	callq	luaL_checkoption
	movl	%eax, %ebx
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_optinteger
	movslq	%ebx, %rcx
	movl	luaB_collectgarbage.optsnum(,%rcx,4), %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%eax, %edx
	callq	lua_gc
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ebx
	je	.LBB7_3
# %bb.1:
	cmpl	$3, %ebx
	jne	.LBB7_4
# %bb.2:
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	lua_gc
	cvtsi2sd	%r14d, %xmm1
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI7_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.LBB7_5
.LBB7_3:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_pushboolean
	jmp	.LBB7_6
.LBB7_4:
	cvtsi2sd	%r14d, %xmm0
.LBB7_5:
	movq	%r15, %rdi
	callq	lua_pushnumber
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaB_collectgarbage, .Lfunc_end7-luaB_collectgarbage
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_dofile
	.type	luaB_dofile,@function
luaB_dofile:                            # @luaB_dofile
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
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	lua_gettop
	movl	%eax, %r14d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaL_loadfile
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_error
	movl	$42, __A_VARIABLE(%rip)
.LBB8_2:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	lua_call
	movq	%rbx, %rdi
	callq	lua_gettop
	subl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaB_dofile, .Lfunc_end8-luaB_dofile
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_error
	.type	luaB_error,@function
luaB_error:                             # @luaB_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %edx
	movl	$2, %esi
	callq	luaL_optinteger
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_isstring
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB9_3
# %bb.1:
	testl	%eax, %eax
	je	.LBB9_3
# %bb.2:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	luaL_where
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_concat
	movl	$42, __A_VARIABLE(%rip)
.LBB9_3:
	movq	%rbx, %rdi
	callq	lua_error
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaB_error, .Lfunc_end9-luaB_error
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_gcinfo
	.type	luaB_gcinfo,@function
luaB_gcinfo:                            # @luaB_gcinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$3, %esi
	xorl	%edx, %edx
	callq	lua_gc
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	luaB_gcinfo, .Lfunc_end10-luaB_gcinfo
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_getfenv
	.type	luaB_getfenv,@function
luaB_getfenv:                           # @luaB_getfenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	getfunc
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_iscfunction
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB11_2
# %bb.1:
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_pushvalue
	jmp	.LBB11_3
.LBB11_2:
	movl	$-1, %esi
	callq	lua_getfenv
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	luaB_getfenv, .Lfunc_end11-luaB_getfenv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_getmetatable
	.type	luaB_getmetatable,@function
luaB_getmetatable:                      # @luaB_getmetatable
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB12_1
# %bb.2:
	movl	$.L.str.46, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_getmetafield
	jmp	.LBB12_3
.LBB12_1:
	movq	%rbx, %rdi
	callq	lua_pushnil
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	luaB_getmetatable, .Lfunc_end12-luaB_getmetatable
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_loadfile
	.type	luaB_loadfile,@function
luaB_loadfile:                          # @luaB_loadfile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %r14d
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaL_loadfile
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %r14d
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaB_loadfile, .Lfunc_end13-luaB_loadfile
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_load
	.type	luaB_load,@function
luaB_load:                              # @luaB_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.47, %edx
	movl	$2, %esi
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %r15
	movl	$1, %r14d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$6, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_settop
	movl	$generic_reader, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	lua_load
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %r14d
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	luaB_load, .Lfunc_end14-luaB_load
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_loadstring
	.type	luaB_loadstring,@function
luaB_loadstring:                        # @luaB_loadstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %r14d
	leaq	-32(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rcx
	callq	luaL_loadbuffer
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %r14d
.LBB15_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	luaB_loadstring, .Lfunc_end15-luaB_loadstring
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_pcall
	.type	luaB_pcall,@function
luaB_pcall:                             # @luaB_pcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	leal	-1(%rax), %esi
	movq	%rbx, %rdi
	movl	$-1, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	xorl	%esi, %esi
	testl	%eax, %eax
	sete	%sil
	movq	%rbx, %rdi
	callq	lua_pushboolean
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_insert
	movq	%rbx, %rdi
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	luaB_pcall, .Lfunc_end16-luaB_pcall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_print
	.type	luaB_print,@function
luaB_print:                             # @luaB_print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, %r14d
	movl	$.L.str.29, %edx
	movq	%r15, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB17_6
# %bb.1:                                # %.preheader
	xorl	%r12d, %r12d
	jmp	.LBB17_2
	.p2align	4, 0x90
.LBB17_5:                               #   in Loop: Header=BB17_2 Depth=1
	callq	__getreent
	movq	16(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %r12d
	jge	.LBB17_6
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %r12d
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	lua_pushvalue
	movq	%r15, %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_8
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jb	.LBB17_5
# %bb.4:                                #   in Loop: Header=BB17_2 Depth=1
	callq	__getreent
	movq	16(%rax), %rsi
	movl	$.L.str.51, %edi
	callq	fputs
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_5
.LBB17_6:
	callq	__getreent
	movq	16(%rax), %rsi
	movl	$.L.str.52, %edi
	callq	fputs
	xorl	%eax, %eax
	jmp	.LBB17_7
.LBB17_8:
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB17_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	luaB_print, .Lfunc_end17-luaB_print
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_rawequal
	.type	luaB_rawequal,@function
luaB_rawequal:                          # @luaB_rawequal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	lua_rawequal
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_pushboolean
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	luaB_rawequal, .Lfunc_end18-luaB_rawequal
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_rawget
	.type	luaB_rawget,@function
luaB_rawget:                            # @luaB_rawget
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
	movl	$2, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_rawget
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	luaB_rawget, .Lfunc_end19-luaB_rawget
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_rawset
	.type	luaB_rawset,@function
luaB_rawset:                            # @luaB_rawset
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
	movl	$2, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_rawset
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	luaB_rawset, .Lfunc_end20-luaB_rawset
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_select
	.type	luaB_select,@function
luaB_select:                            # @luaB_select
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	lua_gettop
	movl	%eax, %r15d
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB21_3
# %bb.1:
	movl	$1, %ebx
	movq	%r14, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	cmpb	$35, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_3
# %bb.2:
	addl	$-1, %r15d
	movslq	%r15d, %rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	jmp	.LBB21_10
.LBB21_3:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB21_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	cmpl	%ebx, %r15d
	jl	.LBB21_6
	jmp	.LBB21_7
.LBB21_4:
	addl	%r15d, %ebx
	movl	%ebx, %eax
.LBB21_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
.LBB21_7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB21_9
# %bb.8:
	movl	$.L.str.53, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB21_9:
	subl	%ebx, %r15d
	movl	%r15d, %ebx
.LBB21_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	luaB_select, .Lfunc_end21-luaB_select
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_setfenv
	.type	luaB_setfenv,@function
luaB_setfenv:                           # @luaB_setfenv
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
	xorl	%esi, %esi
	callq	getfunc
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_3
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_tonumber
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB22_3
	jp	.LBB22_3
# %bb.2:
	movq	%rbx, %rdi
	callq	lua_pushthread
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	xorl	%eax, %eax
	jmp	.LBB22_6
.LBB22_3:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_iscfunction
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_4
.LBB22_5:
	movl	$.L.str.54, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB22_6
.LBB22_4:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB22_5
.LBB22_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	luaB_setfenv, .Lfunc_end22-luaB_setfenv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_setmetatable
	.type	luaB_setmetatable,@function
luaB_setmetatable:                      # @luaB_setmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	lua_type
	movl	%eax, %r14d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB23_3
# %bb.1:
	cmpl	$5, %r14d
	je	.LBB23_3
# %bb.2:
	movl	$.L.str.55, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB23_3:
	movl	$.L.str.46, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_getmetafield
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_5
# %bb.4:
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB23_5:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_setmetatable
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	luaB_setmetatable, .Lfunc_end23-luaB_setmetatable
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function luaB_tonumber
.LCPI24_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI24_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.p2align	4, 0x90
	.type	luaB_tonumber,@function
luaB_tonumber:                          # @luaB_tonumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r15
	movl	$10, %edx
	movl	$2, %esi
	callq	luaL_optinteger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$1, %esi
	cmpl	$10, %ebx
	jne	.LBB24_3
# %bb.1:
	callq	luaL_checkany
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_12
# %bb.2:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_tonumber
	movq	%r15, %rdi
	callq	lua_pushnumber
	jmp	.LBB24_13
.LBB24_3:
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r12
	leal	-2(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$35, %eax
	jb	.LBB24_5
# %bb.4:
	movl	$.L.str.57, %edx
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB24_5:
	leaq	-40(%rbp), %rsi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	strtoul
	cmpq	-40(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_11
# %bb.6:
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB24_8:                               # =>This Inner Loop Header: Depth=1
	callq	__locale_ctype_ptr
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_9
# %bb.7:                                #   in Loop: Header=BB24_8 Depth=1
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_8
.LBB24_9:
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB24_10
.LBB24_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_12:
	movq	%r15, %rdi
	callq	lua_pushnil
.LBB24_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_10:
	movq	%r14, %xmm1
	punpckldq	.LCPI24_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI24_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r15, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_13
.Lfunc_end24:
	.size	luaB_tonumber, .Lfunc_end24-luaB_tonumber
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_tostring
	.type	luaB_tostring,@function
luaB_tostring:                          # @luaB_tostring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checkany
	movl	$.L.str.58, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_callmeta
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB25_9
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	ja	.LBB25_7
# %bb.2:
	movl	%eax, %eax
	jmpq	*.LJTI25_0(,%rax,8)
.LBB25_6:
	movl	$.L.str.61, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	jmp	.LBB25_8
.LBB25_5:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_toboolean
	testl	%eax, %eax
	movl	$.L.str.60, %eax
	movl	$.L.str.59, %esi
	cmoveq	%rax, %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
	jmp	.LBB25_8
.LBB25_7:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_topointer
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB25_8
.LBB25_3:
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	jmp	.LBB25_8
.LBB25_4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
.LBB25_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	luaB_tostring, .Lfunc_end25-luaB_tostring
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI25_0:
	.quad	.LBB25_6
	.quad	.LBB25_5
	.quad	.LBB25_7
	.quad	.LBB25_3
	.quad	.LBB25_4
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function luaB_type
	.type	luaB_type,@function
luaB_type:                              # @luaB_type
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
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	luaB_type, .Lfunc_end26-luaB_type
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_unpack
	.type	luaB_unpack,@function
luaB_unpack:                            # @luaB_unpack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movl	$1, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_optinteger
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	$3, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	testl	%eax, %eax
	jle	.LBB27_1
# %bb.2:
	movl	$3, %esi
	callq	luaL_checkinteger
	jmp	.LBB27_3
.LBB27_1:
	movl	$1, %esi
	callq	lua_objlen
.LBB27_3:
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	%r15d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	subl	%ebx, %r12d
	jl	.LBB27_11
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB27_6
# %bb.5:
	addl	$1, %r12d
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_6
# %bb.7:
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r15d
	jle	.LBB27_10
# %bb.8:                                # %.preheader
	negl	%r15d
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB27_9:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r15,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	cmpl	$1, %eax
	jne	.LBB27_9
.LBB27_10:
	movl	%r12d, %eax
	jmp	.LBB27_11
.LBB27_6:
	movl	$.L.str.63, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB27_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	luaB_unpack, .Lfunc_end27-luaB_unpack
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_xpcall
	.type	luaB_xpcall,@function
luaB_xpcall:                            # @luaB_xpcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_insert
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movl	$1, %ecx
	callq	lua_pcall
	xorl	%esi, %esi
	testl	%eax, %eax
	sete	%sil
	movq	%rbx, %rdi
	callq	lua_pushboolean
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_replace
	movq	%rbx, %rdi
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	luaB_xpcall, .Lfunc_end28-luaB_xpcall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getfunc
	.type	getfunc,@function
getfunc:                                # @getfunc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB29_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	jmp	.LBB29_11
.LBB29_2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB29_4
# %bb.3:
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_optinteger
	jmp	.LBB29_5
.LBB29_4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
.LBB29_5:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB29_7
# %bb.6:
	movl	$.L.str.42, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB29_7:
	leaq	-136(%rbp), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_getstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_9
# %bb.8:
	movl	$.L.str.43, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB29_9:
	leaq	-136(%rbp), %rdx
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_11
# %bb.10:
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB29_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	getfunc, .Lfunc_end29-getfunc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function generic_reader
	.type	generic_reader,@function
generic_reader:                         # @generic_reader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$.L.str.48, %edx
	movl	$2, %esi
	callq	luaL_checkstack
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB30_1
# %bb.2:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_isstring
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB30_4
# %bb.3:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_replace
	movq	%rbx, %rdi
	movl	$3, %esi
	movq	%r14, %rdx
	callq	lua_tolstring
	movq	%rax, %r14
	jmp	.LBB30_5
.LBB30_1:
	movq	$0, (%r14)
	xorl	%r14d, %r14d
	jmp	.LBB30_5
.LBB30_4:
	xorl	%r14d, %r14d
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB30_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	generic_reader, .Lfunc_end30-generic_reader
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_cocreate
	.type	luaB_cocreate,@function
luaB_cocreate:                          # @luaB_cocreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	lua_newthread
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB31_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_iscfunction
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_3
.LBB31_2:
	movl	$.L.str.71, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB31_3:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	lua_xmove
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	luaB_cocreate, .Lfunc_end31-luaB_cocreate
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_coresume
	.type	luaB_coresume,@function
luaB_coresume:                          # @luaB_coresume
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB32_2
# %bb.1:
	movl	$.L.str.72, %edx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB32_2:
	movq	%r15, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	leal	-1(%rax), %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	auxresume
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB32_3
# %bb.4:
	movl	%eax, %ebx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
	leal	1(%rbx), %r14d
	notl	%ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	lua_insert
	jmp	.LBB32_5
.LBB32_3:
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	lua_pushboolean
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %r14d
.LBB32_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	luaB_coresume, .Lfunc_end32-luaB_coresume
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_corunning
	.type	luaB_corunning,@function
luaB_corunning:                         # @luaB_corunning
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_pushthread
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB33_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	$42, __A_VARIABLE(%rip)
.LBB33_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end33:
	.size	luaB_corunning, .Lfunc_end33-luaB_corunning
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_costatus
	.type	luaB_costatus,@function
luaB_costatus:                          # @luaB_costatus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tothread
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB34_2
# %bb.1:
	movl	$.L.str.72, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB34_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB34_3
# %bb.4:
	movq	%rbx, %rdi
	callq	lua_status
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB34_5
# %bb.6:
	testl	%eax, %eax
	jne	.LBB34_10
# %bb.7:
	leaq	-136(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	lua_getstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB34_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB34_11
.LBB34_3:
	xorl	%eax, %eax
	jmp	.LBB34_11
.LBB34_5:
	movl	$1, %eax
	jmp	.LBB34_11
.LBB34_10:
	movl	$3, %eax
	jmp	.LBB34_11
.LBB34_9:
	movq	%rbx, %rdi
	callq	lua_gettop
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rcx,%rcx), %rax
	addq	$1, %rax
.LBB34_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	statnames(,%rax,8), %rsi
	movq	%r14, %rdi
	callq	lua_pushstring
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end34:
	.size	luaB_costatus, .Lfunc_end34-luaB_costatus
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_cowrap
	.type	luaB_cowrap,@function
luaB_cowrap:                            # @luaB_cowrap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	luaB_cocreate
	movl	$luaB_auxwrap, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	luaB_cowrap, .Lfunc_end35-luaB_cowrap
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_yield
	.type	luaB_yield,@function
luaB_yield:                             # @luaB_yield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_gettop
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_yield
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	luaB_yield, .Lfunc_end36-luaB_yield
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function auxresume
	.type	auxresume,@function
auxresume:                              # @auxresume
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB37_1
# %bb.2:
	movq	%r12, %rdi
	callq	lua_status
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB37_8
# %bb.3:
	testl	%ebx, %ebx
	jne	.LBB37_7
# %bb.4:
	leaq	-152(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	lua_getstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB37_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ebx
	jmp	.LBB37_8
.LBB37_1:
	xorl	%ebx, %ebx
	jmp	.LBB37_8
.LBB37_7:
	movl	$3, %ebx
	jmp	.LBB37_8
.LBB37_6:
	movq	%r12, %rdi
	callq	lua_gettop
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %ebx
	addl	$1, %ebx
.LBB37_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB37_10
# %bb.9:
	movl	$.L.str.73, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB37_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB37_11
# %bb.12:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	lua_xmove
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	lua_setlevel
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	lua_resume
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB37_16
# %bb.13:
	movq	%r12, %rdi
	callq	lua_gettop
	movl	%eax, %ebx
	leal	1(%rbx), %esi
	movq	%r14, %rdi
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB37_15
# %bb.14:
	movl	$.L.str.75, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB37_15:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	lua_xmove
	jmp	.LBB37_18
.LBB37_11:
	movslq	%ebx, %rax
	movq	statnames(,%rax,8), %rdx
	movl	$.L.str.74, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB37_17
.LBB37_16:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	lua_xmove
.LBB37_17:
	movl	$-1, %ebx
.LBB37_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	auxresume, .Lfunc_end37-auxresume
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaB_auxwrap
	.type	luaB_auxwrap,@function
luaB_auxwrap:                           # @luaB_auxwrap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_tothread
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	lua_gettop
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	auxresume
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB38_4
# %bb.1:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_isstring
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB38_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_where
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_concat
	movl	$42, __A_VARIABLE(%rip)
.LBB38_3:
	movq	%rbx, %rdi
	callq	lua_error
	movl	$42, __A_VARIABLE(%rip)
.LBB38_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end38:
	.size	luaB_auxwrap, .Lfunc_end38-luaB_auxwrap
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"coroutine"
	.size	.L.str, 10

	.type	co_funcs,@object        # @co_funcs
	.section	.rodata,"a",@progbits
	.p2align	4
co_funcs:
	.quad	.L.str.65
	.quad	luaB_cocreate
	.quad	.L.str.66
	.quad	luaB_coresume
	.quad	.L.str.67
	.quad	luaB_corunning
	.quad	.L.str.68
	.quad	luaB_costatus
	.quad	.L.str.69
	.quad	luaB_cowrap
	.quad	.L.str.70
	.quad	luaB_yield
	.zero	16
	.size	co_funcs, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"_G"
	.size	.L.str.1, 3

	.type	base_funcs,@object      # @base_funcs
	.section	.rodata,"a",@progbits
	.p2align	4
base_funcs:
	.quad	.L.str.9
	.quad	luaB_assert
	.quad	.L.str.10
	.quad	luaB_collectgarbage
	.quad	.L.str.11
	.quad	luaB_dofile
	.quad	.L.str.12
	.quad	luaB_error
	.quad	.L.str.13
	.quad	luaB_gcinfo
	.quad	.L.str.14
	.quad	luaB_getfenv
	.quad	.L.str.15
	.quad	luaB_getmetatable
	.quad	.L.str.16
	.quad	luaB_loadfile
	.quad	.L.str.17
	.quad	luaB_load
	.quad	.L.str.18
	.quad	luaB_loadstring
	.quad	.L.str.19
	.quad	luaB_next
	.quad	.L.str.20
	.quad	luaB_pcall
	.quad	.L.str.21
	.quad	luaB_print
	.quad	.L.str.22
	.quad	luaB_rawequal
	.quad	.L.str.23
	.quad	luaB_rawget
	.quad	.L.str.24
	.quad	luaB_rawset
	.quad	.L.str.25
	.quad	luaB_select
	.quad	.L.str.26
	.quad	luaB_setfenv
	.quad	.L.str.27
	.quad	luaB_setmetatable
	.quad	.L.str.28
	.quad	luaB_tonumber
	.quad	.L.str.29
	.quad	luaB_tostring
	.quad	.L.str.30
	.quad	luaB_type
	.quad	.L.str.31
	.quad	luaB_unpack
	.quad	.L.str.32
	.quad	luaB_xpcall
	.zero	16
	.size	base_funcs, 400

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Lua 5.1"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"_VERSION"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ipairs"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pairs"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"kv"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"__mode"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"newproxy"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"assert"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"collectgarbage"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"dofile"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"error"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gcinfo"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"getfenv"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"getmetatable"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"loadfile"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"load"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"loadstring"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"next"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pcall"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"print"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"rawequal"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"rawget"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"rawset"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"select"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"setfenv"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"setmetatable"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"tonumber"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tostring"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"type"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unpack"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"xpcall"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"assertion failed!"
	.size	.L.str.34, 18

	.type	luaB_collectgarbage.opts,@object # @luaB_collectgarbage.opts
	.section	.rodata,"a",@progbits
	.p2align	4
luaB_collectgarbage.opts:
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	0
	.size	luaB_collectgarbage.opts, 64

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"stop"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"restart"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"collect"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"count"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"step"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"setpause"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"setstepmul"
	.size	.L.str.41, 11

	.type	luaB_collectgarbage.optsnum,@object # @luaB_collectgarbage.optsnum
	.section	.rodata,"a",@progbits
	.p2align	4
luaB_collectgarbage.optsnum:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.size	luaB_collectgarbage.optsnum, 28

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"level must be non-negative"
	.size	.L.str.42, 27

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"invalid level"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"f"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"no function environment for tail call at level %d"
	.size	.L.str.45, 50

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"__metatable"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"=(load)"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"too many nested functions"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"reader function must return a string"
	.size	.L.str.49, 37

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"'tostring' must return a string to 'print'"
	.size	.L.str.50, 43

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\t"
	.size	.L.str.51, 2

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\n"
	.size	.L.str.52, 2

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"index out of range"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"'setfenv' cannot change environment of given object"
	.size	.L.str.54, 52

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"nil or table expected"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"cannot change a protected metatable"
	.size	.L.str.56, 36

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"base out of range"
	.size	.L.str.57, 18

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"__tostring"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"true"
	.size	.L.str.59, 5

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"false"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"nil"
	.size	.L.str.61, 4

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%s: %p"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"too many results to unpack"
	.size	.L.str.63, 27

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"boolean or proxy expected"
	.size	.L.str.64, 26

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"create"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"resume"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"running"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"status"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"wrap"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"yield"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Lua function expected"
	.size	.L.str.71, 22

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"coroutine expected"
	.size	.L.str.72, 19

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"too many arguments to resume"
	.size	.L.str.73, 29

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"cannot resume %s coroutine"
	.size	.L.str.74, 27

	.type	statnames,@object       # @statnames
	.section	.rodata,"a",@progbits
	.p2align	4
statnames:
	.quad	.L.str.67
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.size	statnames, 32

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"too many results to resume"
	.size	.L.str.75, 27

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"suspended"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"normal"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"dead"
	.size	.L.str.78, 5

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
