	.text
	.file	"lauxlib.c"
	.globl	luaL_argerror           # -- Begin function luaL_argerror
	.p2align	4, 0x90
	.type	luaL_argerror,@function
luaL_argerror:                          # @luaL_argerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	leaq	-144(%rbp), %rdx
	xorl	%esi, %esi
	callq	lua_getstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	leaq	-144(%rbp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	movq	-128(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	je	.LBB0_4
.LBB0_5:
	movq	-136(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB0_7
# %bb.6:
	movq	$.L.str.4, -136(%rbp)
	movl	$.L.str.4, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB0_8
.LBB0_1:
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB0_8
.LBB0_4:
	movq	-136(%rbp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	luaL_error
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaL_argerror, .Lfunc_end0-luaL_argerror
                                        # -- End function
	.globl	luaL_error              # -- Begin function luaL_error
	.p2align	4, 0x90
	.type	luaL_error,@function
luaL_error:                             # @luaL_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB1_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	leaq	-344(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_5
# %bb.3:
	leaq	-344(%rbp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	movl	-304(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB1_5
# %bb.4:
	leaq	-288(%rbp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB1_6
.LBB1_5:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushlstring
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushvfstring
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_concat
	movq	%rbx, %rdi
	callq	lua_error
	movl	$42, __A_VARIABLE(%rip)
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaL_error, .Lfunc_end1-luaL_error
                                        # -- End function
	.globl	luaL_typerror           # -- Begin function luaL_typerror
	.p2align	4, 0x90
	.type	luaL_typerror,@function
luaL_typerror:                          # @luaL_typerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaL_typerror, .Lfunc_end2-luaL_typerror
                                        # -- End function
	.globl	luaL_where              # -- Begin function luaL_where
	.p2align	4, 0x90
	.type	luaL_where,@function
luaL_where:                             # @luaL_where
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, %rbx
	leaq	-128(%rbp), %rdx
	callq	lua_getstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_3
# %bb.1:
	leaq	-128(%rbp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	movl	-88(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB3_3
# %bb.2:
	leaq	-72(%rbp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB3_4
.LBB3_3:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushlstring
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaL_where, .Lfunc_end3-luaL_where
                                        # -- End function
	.globl	luaL_checkoption        # -- Begin function luaL_checkoption
	.p2align	4, 0x90
	.type	luaL_checkoption,@function
luaL_checkoption:                       # @luaL_checkoption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r12
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_5
# %bb.1:
	movq	%rdx, %r13
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB4_2
# %bb.3:
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r13
	jmp	.LBB4_4
.LBB4_5:
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r13
	jmp	.LBB4_6
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_10
# %bb.7:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	movq	%r13, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_11
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12,%rbx,8), %rdi
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB4_8
.LBB4_10:
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movl	%eax, %ebx
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaL_checkoption, .Lfunc_end4-luaL_checkoption
                                        # -- End function
	.globl	luaL_optlstring         # -- Begin function luaL_optlstring
	.p2align	4, 0x90
	.type	luaL_optlstring,@function
luaL_optlstring:                        # @luaL_optlstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB5_1
# %bb.6:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	luaL_checklstring
	movq	%rax, %r15
	jmp	.LBB5_7
.LBB5_1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB5_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB5_3
# %bb.4:
	movq	%r15, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_5
.LBB5_3:
	xorl	%eax, %eax
.LBB5_5:
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaL_optlstring, .Lfunc_end5-luaL_optlstring
                                        # -- End function
	.globl	luaL_checklstring       # -- Begin function luaL_checklstring
	.p2align	4, 0x90
	.type	luaL_checklstring,@function
luaL_checklstring:                      # @luaL_checklstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_tolstring
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB6_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$4, %esi
	callq	lua_typename
	movq	%rax, %r12
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaL_checklstring, .Lfunc_end6-luaL_checklstring
                                        # -- End function
	.globl	luaL_newmetatable       # -- Begin function luaL_newmetatable
	.p2align	4, 0x90
	.type	luaL_newmetatable,@function
luaL_newmetatable:                      # @luaL_newmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-10000, %esi           # imm = 0xD8F0
	movq	%r14, %rdx
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB7_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	movq	%r14, %rdx
	callq	lua_setfield
	movl	$1, %eax
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaL_newmetatable, .Lfunc_end7-luaL_newmetatable
                                        # -- End function
	.globl	luaL_checkudata         # -- Begin function luaL_checkudata
	.p2align	4, 0x90
	.type	luaL_checkudata,@function
luaL_checkudata:                        # @luaL_checkudata
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_touserdata
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.1:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_getmetatable
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_4
# %bb.2:
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	movq	%r12, %rdx
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	$-2, %edx
	callq	lua_rawequal
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_4
# %bb.3:
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settop
	jmp	.LBB8_5
.LBB8_4:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	xorl	%r15d, %r15d
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaL_checkudata, .Lfunc_end8-luaL_checkudata
                                        # -- End function
	.globl	luaL_checkstack         # -- Begin function luaL_checkstack
	.p2align	4, 0x90
	.type	luaL_checkstack,@function
luaL_checkstack:                        # @luaL_checkstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_2
# %bb.1:
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaL_checkstack, .Lfunc_end9-luaL_checkstack
                                        # -- End function
	.globl	luaL_checktype          # -- Begin function luaL_checktype
	.p2align	4, 0x90
	.type	luaL_checktype,@function
luaL_checktype:                         # @luaL_checktype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	je	.LBB10_2
# %bb.1:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	lua_typename
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	luaL_checktype, .Lfunc_end10-luaL_checktype
                                        # -- End function
	.globl	luaL_checkany           # -- Begin function luaL_checkany
	.p2align	4, 0x90
	.type	luaL_checkany,@function
luaL_checkany:                          # @luaL_checkany
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB11_2
# %bb.1:
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	luaL_checkany, .Lfunc_end11-luaL_checkany
                                        # -- End function
	.globl	luaL_checknumber        # -- Begin function luaL_checknumber
	.p2align	4, 0x90
	.type	luaL_checknumber,@function
luaL_checknumber:                       # @luaL_checknumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_tonumber
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB12_3
	jp	.LBB12_3
# %bb.1:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	lua_isnumber
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB12_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_typename
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	luaL_checknumber, .Lfunc_end12-luaL_checknumber
                                        # -- End function
	.globl	luaL_optnumber          # -- Begin function luaL_optnumber
	.p2align	4, 0x90
	.type	luaL_optnumber,@function
luaL_optnumber:                         # @luaL_optnumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_type
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB13_2
# %bb.1:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	luaL_checknumber
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaL_optnumber, .Lfunc_end13-luaL_optnumber
                                        # -- End function
	.globl	luaL_checkinteger       # -- Begin function luaL_checkinteger
	.p2align	4, 0x90
	.type	luaL_checkinteger,@function
luaL_checkinteger:                      # @luaL_checkinteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_tointeger
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB14_3
# %bb.1:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB14_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_typename
	movq	%rax, %r12
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	luaL_checkinteger, .Lfunc_end14-luaL_checkinteger
                                        # -- End function
	.globl	luaL_optinteger         # -- Begin function luaL_optinteger
	.p2align	4, 0x90
	.type	luaL_optinteger,@function
luaL_optinteger:                        # @luaL_optinteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB15_2
# %bb.1:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	luaL_checkinteger
	movq	%rax, %r14
.LBB15_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	luaL_optinteger, .Lfunc_end15-luaL_optinteger
                                        # -- End function
	.globl	luaL_getmetafield       # -- Begin function luaL_getmetafield
	.p2align	4, 0x90
	.type	luaL_getmetafield,@function
luaL_getmetafield:                      # @luaL_getmetafield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rdi, %rbx
	callq	lua_getmetatable
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_4
# %bb.1:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_rawget
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB16_2
# %bb.3:
	movl	$-2, %esi
	callq	lua_remove
	movl	$1, %r14d
	jmp	.LBB16_4
.LBB16_2:
	movl	$-3, %esi
	callq	lua_settop
.LBB16_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	luaL_getmetafield, .Lfunc_end16-luaL_getmetafield
                                        # -- End function
	.globl	luaL_callmeta           # -- Begin function luaL_callmeta
	.p2align	4, 0x90
	.type	luaL_callmeta,@function
luaL_callmeta:                          # @luaL_callmeta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movl	%esi, %ebx
	movq	%rdi, %r14
	leal	9999(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9999, %eax             # imm = 0x270F
	ja	.LBB17_2
# %bb.1:
	movq	%r14, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	addl	%eax, %ebx
	addl	$1, %ebx
.LBB17_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	luaL_getmetafield
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_3
# %bb.4:
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_pushvalue
	movl	$1, %ebx
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	lua_call
	jmp	.LBB17_5
.LBB17_3:
	xorl	%ebx, %ebx
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	luaL_callmeta, .Lfunc_end17-luaL_callmeta
                                        # -- End function
	.globl	luaL_register           # -- Begin function luaL_register
	.p2align	4, 0x90
	.type	luaL_register,@function
luaL_register:                          # @luaL_register
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	luaL_openlib
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	luaL_register, .Lfunc_end18-luaL_register
                                        # -- End function
	.globl	luaL_openlib            # -- Begin function luaL_openlib
	.p2align	4, 0x90
	.type	luaL_openlib,@function
luaL_openlib:                           # @luaL_openlib
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	notl	%eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	testq	%rsi, %rsi
	je	.LBB19_10
# %bb.1:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_2
# %bb.3:                                # %.preheader2
	leaq	16(%r15), %rax
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%rax)
	leaq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_4
	jmp	.LBB19_5
.LBB19_2:
	xorl	%r12d, %r12d
.LBB19_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.13, %edx
	movq	%r13, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	movl	$1, %ecx
	callq	luaL_findtable
	movq	%r13, %rdi
	movl	$-1, %esi
	movq	%rbx, %rdx
	callq	lua_getfield
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB19_9
# %bb.6:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r13, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	callq	luaL_findtable
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_8
# %bb.7:
	movl	$.L.str.14, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB19_8:
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-3, %esi
	movq	%rbx, %rdx
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB19_9:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movq	%r13, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	lua_insert
	movl	$42, __A_VARIABLE(%rip)
.LBB19_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_16
# %bb.11:
	movl	$-2, %eax
	subl	%r14d, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%r14d, %ebx
	negl	%ebx
	jmp	.LBB19_12
	.p2align	4, 0x90
.LBB19_15:                              #   in Loop: Header=BB19_12 Depth=1
	movq	8(%r15), %rsi
	movq	%r13, %rdi
	movl	%r12d, %r14d
	movl	%r12d, %edx
	callq	lua_pushcclosure
	movq	(%r15), %rdx
	movq	%r13, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 16(%r15)
	leaq	16(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_16
.LBB19_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_14 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r12d
	testl	%r14d, %r14d
	jle	.LBB19_15
# %bb.13:                               # %.preheader
                                        #   in Loop: Header=BB19_12 Depth=1
	movl	%r12d, %r14d
	.p2align	4, 0x90
.LBB19_14:                              #   Parent Loop BB19_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	lua_pushvalue
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	jne	.LBB19_14
	jmp	.LBB19_15
.LBB19_16:
	movq	%r13, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	luaL_openlib, .Lfunc_end19-luaL_openlib
                                        # -- End function
	.globl	luaL_findtable          # -- Begin function luaL_findtable
	.p2align	4, 0x90
	.type	luaL_findtable,@function
luaL_findtable:                         # @luaL_findtable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r14d
	movq	%rdx, %r12
	movq	%rdi, %r15
	callq	lua_pushvalue
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	lua_createtable
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	lua_pushlstring
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%r15, %rdi
	movl	$-4, %esi
	callq	lua_settable
	movl	$42, __A_VARIABLE(%rip)
.LBB20_7:                               #   in Loop: Header=BB20_1 Depth=1
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_remove
	cmpb	$46, (%r13)
	leaq	1(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_8
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$46, %esi
	callq	strchr
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB20_3
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r13
	addq	%r12, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB20_3:                               #   in Loop: Header=BB20_1 Depth=1
	movq	%r13, %rbx
	subq	%r12, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	lua_pushlstring
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_rawget
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	testl	%eax, %eax
	je	.LBB20_4
# %bb.9:                                #   in Loop: Header=BB20_1 Depth=1
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB20_7
	jmp	.LBB20_10
	.p2align	4, 0x90
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	movl	$-2, %esi
	callq	lua_settop
	cmpb	$46, (%r13)
	movl	$1, %edx
	je	.LBB20_6
# %bb.5:                                #   in Loop: Header=BB20_1 Depth=1
	movl	%r14d, %edx
	jmp	.LBB20_6
.LBB20_8:
	xorl	%r12d, %r12d
	jmp	.LBB20_11
.LBB20_10:
	movq	%r15, %rdi
	movl	$-3, %esi
	callq	lua_settop
.LBB20_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	luaL_findtable, .Lfunc_end20-luaL_findtable
                                        # -- End function
	.globl	luaL_gsub               # -- Begin function luaL_gsub
	.p2align	4, 0x90
	.type	luaL_gsub,@function
luaL_gsub:                              # @luaL_gsub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1112, %rsp             # imm = 0x458
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%r15, -1128(%rbp)
	leaq	-1120(%rbp), %r15
	movq	%r15, -1144(%rbp)
	movl	$0, -1136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	callq	strstr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_16
# %bb.1:
	leaq	-96(%rbp), %r14
	jmp	.LBB21_2
	.p2align	4, 0x90
.LBB21_15:                              #   in Loop: Header=BB21_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1144(%rbp), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	luaL_addstring
	movq	-80(%rbp), %rbx         # 8-byte Reload
	addq	-56(%rbp), %rbx         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	strstr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_16
.LBB21_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
                                        #       Child Loop BB21_8 Depth 3
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB21_3
	jmp	.LBB21_15
.LBB21_5:                               #   in Loop: Header=BB21_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB21_13:                              #   in Loop: Header=BB21_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_14:                              #   in Loop: Header=BB21_3 Depth=2
	movb	(%rbx), %cl
	addq	$1, %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, -1144(%rbp)
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB21_15
.LBB21_3:                               #   Parent Loop BB21_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_8 Depth 3
	addq	$-1, %r12
	movq	-1144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jb	.LBB21_14
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=2
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %rdx
	je	.LBB21_5
# %bb.6:                                #   in Loop: Header=BB21_3 Depth=2
	movq	-1128(%rbp), %rdi
	movq	%r15, %rsi
	callq	lua_pushlstring
	movq	%r15, -1144(%rbp)
	movl	-1136(%rbp), %ecx
	leal	1(%rcx), %eax
	movl	%eax, -1136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	testl	%ecx, %ecx
	jle	.LBB21_13
# %bb.7:                                #   in Loop: Header=BB21_3 Depth=2
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	-1128(%rbp), %r14
	movl	$-1, %r15d
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB21_8
	.p2align	4, 0x90
.LBB21_11:                              #   in Loop: Header=BB21_8 Depth=3
	addl	$1, %r12d
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r12d
	jge	.LBB21_12
.LBB21_8:                               #   Parent Loop BB21_2 Depth=1
                                        #     Parent Loop BB21_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r15d, %ebx
	leal	-1(%rbx), %r15d
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	lua_objlen
	movl	-1136(%rbp), %ecx
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ebx
	jg	.LBB21_11
# %bb.9:                                #   in Loop: Header=BB21_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	ja	.LBB21_11
# %bb.10:                               #   in Loop: Header=BB21_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_12:                              #   in Loop: Header=BB21_3 Depth=2
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	lua_concat
	movl	-1136(%rbp), %eax
	subl	%r12d, %eax
	addl	$1, %eax
	movl	%eax, -1136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-1144(%rbp), %rax
	leaq	-1120(%rbp), %r15
	movq	-96(%rbp), %rbx         # 8-byte Reload
	leaq	-96(%rbp), %r14
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB21_13
.LBB21_16:
	leaq	-1144(%rbp), %rdi
	movq	%rbx, %rsi
	callq	luaL_addstring
	movq	-1144(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %rdx
	je	.LBB21_17
# %bb.18:
	movq	-1128(%rbp), %rdi
	movq	%r15, %rsi
	callq	lua_pushlstring
	movq	%r15, -1144(%rbp)
	movl	-1136(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -1136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_19
.LBB21_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	-1136(%rbp), %esi
.LBB21_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	-1128(%rbp), %rdi
	callq	lua_concat
	movl	$1, -1136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$42, __A_VARIABLE(%rip)
	addq	$1112, %rsp             # imm = 0x458
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	luaL_gsub, .Lfunc_end21-luaL_gsub
                                        # -- End function
	.globl	luaL_buffinit           # -- Begin function luaL_buffinit
	.p2align	4, 0x90
	.type	luaL_buffinit,@function
luaL_buffinit:                          # @luaL_buffinit
# %bb.0:
	movq	%rdi, 16(%rsi)
	leaq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end22:
	.size	luaL_buffinit, .Lfunc_end22-luaL_buffinit
                                        # -- End function
	.globl	luaL_addlstring         # -- Begin function luaL_addlstring
	.p2align	4, 0x90
	.type	luaL_addlstring,@function
luaL_addlstring:                        # @luaL_addlstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB23_8
# %bb.1:
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %rbx
	addq	$1048, %rdi             # imm = 0x418
	leaq	24(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB23_2
	.p2align	4, 0x90
.LBB23_5:                               #   in Loop: Header=BB23_2 Depth=1
	movq	16(%rbx), %rdi
	movq	%r12, %rsi
	callq	lua_pushlstring
	movq	%r12, (%rbx)
	addl	$1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	adjuststack
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
.LBB23_6:                               #   in Loop: Header=BB23_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_7:                               #   in Loop: Header=BB23_2 Depth=1
	movzbl	(%r15,%r14), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	cmpq	%r14, %r13
	je	.LBB23_8
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jb	.LBB23_7
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	-48(%rbp), %rdx         # 8-byte Folded Reload
	jne	.LBB23_5
# %bb.4:                                #   in Loop: Header=BB23_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_6
.LBB23_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	luaL_addlstring, .Lfunc_end23-luaL_addlstring
                                        # -- End function
	.globl	luaL_addstring          # -- Begin function luaL_addstring
	.p2align	4, 0x90
	.type	luaL_addstring,@function
luaL_addstring:                         # @luaL_addstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_8
# %bb.1:
	movq	%r14, %r15
	leaq	1048(%rbx), %r12
	leaq	24(%rbx), %r13
	xorl	%r14d, %r14d
	movq	%r15, -48(%rbp)         # 8-byte Spill
	jmp	.LBB24_2
	.p2align	4, 0x90
.LBB24_5:                               #   in Loop: Header=BB24_2 Depth=1
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	callq	lua_pushlstring
	movq	%r13, (%rbx)
	addl	$1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	adjuststack
	movq	%r15, %rax
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
.LBB24_6:                               #   in Loop: Header=BB24_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_7:                               #   in Loop: Header=BB24_2 Depth=1
	movzbl	(%r15,%r14), %ecx
	leaq	1(%rdi), %rdx
	movq	%rdx, (%rbx)
	movb	%cl, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	cmpq	%r14, %rax
	je	.LBB24_8
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdi
	jb	.LBB24_7
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	movq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %rdx
	jne	.LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_6
.LBB24_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	luaL_addstring, .Lfunc_end24-luaL_addstring
                                        # -- End function
	.globl	luaL_pushresult         # -- Begin function luaL_pushresult
	.p2align	4, 0x90
	.type	luaL_pushresult,@function
luaL_pushresult:                        # @luaL_pushresult
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	(%rdi), %rdx
	leaq	24(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rdx
	je	.LBB25_1
# %bb.2:
	movq	16(%rbx), %rdi
	movq	%r14, %rsi
	callq	lua_pushlstring
	movq	%r14, (%rbx)
	leaq	8(%rbx), %r14
	movl	8(%rbx), %esi
	addl	$1, %esi
	movl	%esi, 8(%rbx)
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_3
.LBB25_1:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%rbx), %r14
	movl	8(%rbx), %esi
	addq	$16, %rbx
.LBB25_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	callq	lua_concat
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	luaL_pushresult, .Lfunc_end25-luaL_pushresult
                                        # -- End function
	.globl	luaL_prepbuffer         # -- Begin function luaL_prepbuffer
	.p2align	4, 0x90
	.type	luaL_prepbuffer,@function
luaL_prepbuffer:                        # @luaL_prepbuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	(%rdi), %rdx
	leaq	24(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rdx
	je	.LBB26_1
# %bb.2:
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	%r14, %rsi
	callq	lua_pushlstring
	movq	%r14, (%rbx)
	addl	$1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	adjuststack
	jmp	.LBB26_3
.LBB26_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	luaL_prepbuffer, .Lfunc_end26-luaL_prepbuffer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function adjuststack
	.type	adjuststack,@function
adjuststack:                            # @adjuststack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpl	$2, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB27_7
# %bb.1:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	16(%rdi), %r15
	movl	$-1, %r12d
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB27_2
	.p2align	4, 0x90
.LBB27_5:                               #   in Loop: Header=BB27_2 Depth=1
	addl	$1, %r13d
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r13d
	jge	.LBB27_6
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r14d
	leal	-1(%r14), %r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	lua_objlen
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	8(%rcx), %ecx
	addl	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r14d
	jg	.LBB27_5
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	ja	.LBB27_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_6:
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_concat
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	8(%rcx), %eax
	subl	%r13d, %eax
	addl	$1, %eax
	movl	%eax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	adjuststack, .Lfunc_end27-adjuststack
                                        # -- End function
	.globl	luaL_addvalue           # -- Begin function luaL_addvalue
	.p2align	4, 0x90
	.type	luaL_addvalue,@function
luaL_addvalue:                          # @luaL_addvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %r14
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_tolstring
	movq	-32(%rbp), %rdx
	movq	(%rbx), %rcx
	leaq	24(%rbx), %r15
	movq	%r15, %rsi
	subq	%rcx, %rsi
	addq	$1024, %rsi             # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jbe	.LBB28_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %rcx
	je	.LBB28_3
# %bb.4:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%rcx, %rdx
	callq	lua_pushlstring
	movq	%r15, (%rbx)
	addl	$1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_insert
	jmp	.LBB28_5
.LBB28_1:
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	addq	%rax, (%rbx)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB28_6
.LBB28_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_5:
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, 8(%rbx)
	movq	%rbx, %rdi
	callq	adjuststack
.LBB28_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	luaL_addvalue, .Lfunc_end28-luaL_addvalue
                                        # -- End function
	.globl	luaL_ref                # -- Begin function luaL_ref
	.p2align	4, 0x90
	.type	luaL_ref,@function
luaL_ref:                               # @luaL_ref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	leal	9999(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9999, %eax             # imm = 0x270F
	ja	.LBB29_2
# %bb.1:
	movq	%r15, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	addl	%eax, %r14d
	addl	$1, %r14d
.LBB29_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_3
# %bb.4:
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	lua_rawgeti
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	%r14d, %esi
	testl	%ebx, %ebx
	je	.LBB29_6
# %bb.5:
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	lua_rawseti
	jmp	.LBB29_7
.LBB29_3:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB29_8
.LBB29_6:
	callq	lua_objlen
	movq	%rax, %rbx
	addl	$1, %ebx
.LBB29_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	lua_rawseti
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	luaL_ref, .Lfunc_end29-luaL_ref
                                        # -- End function
	.globl	luaL_unref              # -- Begin function luaL_unref
	.p2align	4, 0x90
	.type	luaL_unref,@function
luaL_unref:                             # @luaL_unref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB30_4
# %bb.1:
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %r14
	leal	9999(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9999, %eax             # imm = 0x270F
	ja	.LBB30_3
# %bb.2:
	movq	%r14, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	addl	%eax, %ebx
	addl	$1, %ebx
.LBB30_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	callq	lua_rawgeti
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	lua_rawseti
	movslq	%r15d, %rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	movq	%r14, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	callq	lua_rawseti
	movl	$42, __A_VARIABLE(%rip)
.LBB30_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	luaL_unref, .Lfunc_end30-luaL_unref
                                        # -- End function
	.globl	luaL_loadfile           # -- Begin function luaL_loadfile
	.p2align	4, 0x90
	.type	luaL_loadfile,@function
luaL_loadfile:                          # @luaL_loadfile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, %r14d
	addl	$1, %r14d
	movl	$0, -1080(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB31_1
# %bb.8:
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movl	$.L.str.17, %esi
	movq	%r12, %rdi
	callq	fopen
	movq	%rax, %rbx
	movq	%rax, -1072(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB31_2
# %bb.9:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	leaq	1(%rax), %rcx
	movl	$.L.str.23, %esi
	movl	$.L.str.18, %edx
	jmp	.LBB31_10
.LBB31_1:
	movl	$.L.str.15, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	lua_pushlstring
	callq	__getreent
	movq	8(%rax), %rbx
	movq	%rbx, -1072(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_2:
	movq	%rbx, %rdi
	callq	getc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$35, %eax
	jne	.LBB31_12
# %bb.3:
	movl	$1, -1080(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB31_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	getc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB31_6
# %bb.5:                                #   in Loop: Header=BB31_4 Depth=1
	cmpl	$-1, %eax
	jne	.LBB31_4
.LBB31_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jne	.LBB31_7
# %bb.11:
	movq	%rbx, %rdi
	callq	getc
	movl	$42, __A_VARIABLE(%rip)
.LBB31_12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	setne	%r13b
	je	.LBB31_22
# %bb.13:
	cmpl	$27, %eax
	jne	.LBB31_22
# %bb.14:
	movl	$.L.str.20, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	freopen
	movq	%rax, -1072(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB31_28
# %bb.15:
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB31_16:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	getc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB31_17
# %bb.18:                               #   in Loop: Header=BB31_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %eax
	jne	.LBB31_16
# %bb.19:
	movl	$27, %eax
	jmp	.LBB31_20
.LBB31_7:
	testq	%r12, %r12
	setne	%r13b
	jmp	.LBB31_21
.LBB31_28:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	leaq	1(%rax), %rcx
	movl	$.L.str.23, %esi
	movl	$.L.str.21, %edx
	jmp	.LBB31_10
.LBB31_17:
	movl	$-1, %eax
.LBB31_20:
	movl	$0, -1080(%rbp)
	movb	$1, %r13b
.LBB31_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_22:
	movl	%eax, %edi
	movq	%rbx, %rsi
	callq	ungetc
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	leaq	-1080(%rbp), %rdx
	movl	$getF, %esi
	movq	%r15, %rdi
	movq	%rax, %rcx
	callq	lua_load
	movl	%eax, %ebx
	movq	-1072(%rbp), %rdi
	movzwl	16(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	testb	%r13b, %r13b
	je	.LBB31_24
# %bb.23:
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
.LBB31_24:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r12b
	jne	.LBB31_25
# %bb.26:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_remove
	jmp	.LBB31_27
.LBB31_25:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_settop
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	leaq	1(%rax), %rcx
	movl	$.L.str.23, %esi
	movl	$.L.str.22, %edx
.LBB31_10:
	movq	%r15, %rdi
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_remove
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %ebx
.LBB31_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	luaL_loadfile, .Lfunc_end31-luaL_loadfile
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getF
	.type	getF,@function
getF:                                   # @getF
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %rbx
	cmpl	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_2
# %bb.1:
	movl	$0, (%rbx)
	movq	$1, (%r14)
	movl	$.L.str.24, %ebx
	jmp	.LBB32_5
.LBB32_2:
	movq	8(%rbx), %rcx
	movzwl	16(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB32_3
# %bb.4:
	addq	$16, %rbx
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	fread
	movq	%rax, (%r14)
	testq	%rax, %rax
	cmoveq	%rax, %rbx
	jmp	.LBB32_5
.LBB32_3:
	xorl	%ebx, %ebx
.LBB32_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	getF, .Lfunc_end32-getF
                                        # -- End function
	.globl	luaL_loadbuffer         # -- Begin function luaL_loadbuffer
	.p2align	4, 0x90
	.type	luaL_loadbuffer,@function
luaL_loadbuffer:                        # @luaL_loadbuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	leaq	-16(%rbp), %rdx
	movl	$getS, %esi
	callq	lua_load
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	luaL_loadbuffer, .Lfunc_end33-luaL_loadbuffer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getS
	.type	getS,@function
getS:                                   # @getS
# %bb.0:
	movq	8(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_1
# %bb.2:
	movq	%rax, (%rdx)
	movq	$0, 8(%rsi)
	movq	(%rsi), %rax
	jmp	.LBB34_3
.LBB34_1:
	xorl	%eax, %eax
.LBB34_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end34:
	.size	getS, .Lfunc_end34-getS
                                        # -- End function
	.globl	luaL_loadstring         # -- Begin function luaL_loadstring
	.p2align	4, 0x90
	.type	luaL_loadstring,@function
luaL_loadstring:                        # @luaL_loadstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%rbx, -32(%rbp)
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movl	$getS, %esi
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	lua_load
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end35:
	.size	luaL_loadstring, .Lfunc_end35-luaL_loadstring
                                        # -- End function
	.globl	luaL_newstate           # -- Begin function luaL_newstate
	.p2align	4, 0x90
	.type	luaL_newstate,@function
luaL_newstate:                          # @luaL_newstate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$l_alloc, %edi
	xorl	%esi, %esi
	callq	lua_newstate
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_2
# %bb.1:
	movl	$panic, %esi
	movq	%rbx, %rdi
	callq	lua_atpanic
	movl	$42, __A_VARIABLE(%rip)
.LBB36_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	luaL_newstate, .Lfunc_end36-luaL_newstate
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function l_alloc
	.type	l_alloc,@function
l_alloc:                                # @l_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB37_1
# %bb.2:
	movq	%rcx, %rsi
	callq	realloc
	jmp	.LBB37_3
.LBB37_1:
	callq	free
	xorl	%eax, %eax
.LBB37_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	l_alloc, .Lfunc_end37-l_alloc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function panic
	.type	panic,@function
panic:                                  # @panic
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	__getreent
	movq	24(%rax), %r14
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	fprintf
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end38:
	.size	panic, .Lfunc_end38-panic
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad argument #%d (%s)"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"method"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"calling '%s' on bad self (%s)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"?"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"bad argument #%d to '%s' (%s)"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s expected, got %s"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Sl"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%d: "
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"invalid option '%s'"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stack overflow (%s)"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"value expected"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_LOADED"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"name conflict for module '%s'"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"=stdin"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"@%s"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"r"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"open"
	.size	.L.str.18, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"rb"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"reopen"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"read"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"cannot %s %s: %s"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\n"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"PANIC: unprotected error in call to Lua API (%s)\n"
	.size	.L.str.25, 50

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
