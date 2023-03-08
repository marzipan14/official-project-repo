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
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.3:
	addl	$-1, %r15d
	je	.LBB0_4
.LBB0_5:
	movq	-136(%rbp), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_7
# %bb.6:
	movq	$.L.str.4, -136(%rbp)
	movl	$.L.str.4, %ecx
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
	testl	%eax, %eax
	je	.LBB1_5
# %bb.3:
	leaq	-344(%rbp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	movl	-304(%rbp), %ecx
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
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushvfstring
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_concat
	movq	%rbx, %rdi
	callq	lua_error
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_argerror           # TAILCALL
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
	testl	%eax, %eax
	je	.LBB3_3
# %bb.1:
	leaq	-128(%rbp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	movl	-88(%rbp), %ecx
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
	testq	%rdx, %rdx
	je	.LBB4_2
# %bb.1:
	movq	%rdx, %r13
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_type
	testl	%eax, %eax
	jle	.LBB4_3
.LBB4_2:
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r13
.LBB4_3:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB4_7
# %bb.4:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r13, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movq	8(%r12,%rbx,8), %rdi
	addq	$1, %rbx
	testq	%rdi, %rdi
	jne	.LBB4_5
.LBB4_7:
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_argerror           # TAILCALL
.LBB4_8:
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
	movq	%rcx, %r15
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	lua_type
	testl	%eax, %eax
	jle	.LBB5_1
# %bb.7:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_checklstring       # TAILCALL
.LBB5_1:
	testq	%r15, %r15
	je	.LBB5_6
# %bb.2:
	testq	%r14, %r14
	je	.LBB5_3
# %bb.4:
	movq	%r14, %rdi
	callq	strlen
	jmp	.LBB5_5
.LBB5_3:
	xorl	%eax, %eax
.LBB5_5:
	movq	%rax, (%r15)
.LBB5_6:
	movq	%r14, %rax
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
.LBB6_2:
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
	testq	%rax, %rax
	je	.LBB8_4
# %bb.1:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_getmetatable
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
.LBB8_5:
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
	testl	%eax, %eax
	je	.LBB9_2
# %bb.1:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_2:
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaL_error              # TAILCALL
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
	cmpl	%r15d, %eax
	jne	.LBB10_2
# %bb.1:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_2:
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_argerror           # TAILCALL
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
	cmpl	$-1, %eax
	je	.LBB11_2
# %bb.1:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_2:
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaL_argerror           # TAILCALL
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
.LBB12_3:
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
	testl	%eax, %eax
	jle	.LBB13_1
# %bb.2:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaL_checknumber        # TAILCALL
.LBB13_1:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
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
	testq	%rax, %rax
	jne	.LBB14_3
# %bb.1:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_isnumber
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
.LBB14_3:
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
	testl	%eax, %eax
	jle	.LBB15_1
# %bb.2:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_checkinteger       # TAILCALL
.LBB15_1:
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
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leal	9999(%r14), %eax
	cmpl	$9999, %eax             # imm = 0x270F
	ja	.LBB17_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	addl	%eax, %r14d
	addl	$1, %r14d
.LBB17_2:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_getmetatable
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB17_6
# %bb.3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_rawget
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB17_4
# %bb.5:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_pushvalue
	movl	$1, %r15d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	lua_call
	jmp	.LBB17_6
.LBB17_4:
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settop
.LBB17_6:
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
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
	xorl	%ecx, %ecx
	jmp	luaL_openlib            # TAILCALL
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
	movl	%ecx, %eax
	notl	%eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	testq	%rsi, %rsi
	je	.LBB19_10
# %bb.1:
	movq	%rsi, %rbx
	cmpq	$0, (%r15)
	je	.LBB19_2
# %bb.3:                                # %.preheader2
	leaq	16(%r15), %rax
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %r12d
	cmpq	$0, (%rax)
	leaq	16(%rax), %rax
	jne	.LBB19_4
	jmp	.LBB19_5
.LBB19_2:
	xorl	%r12d, %r12d
.LBB19_5:
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
	testq	%rax, %rax
	je	.LBB19_8
# %bb.7:
	movl	$.L.str.14, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaL_error
.LBB19_8:
	movq	%r13, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%r13, %rdi
	movl	$-3, %esi
	movq	%rbx, %rdx
	callq	lua_setfield
.LBB19_9:
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_remove
	movq	%r13, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	lua_insert
.LBB19_10:
	cmpq	$0, (%r15)
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
	cmpq	$0, 16(%r15)
	leaq	16(%r15), %r15
	je	.LBB19_16
.LBB19_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_14 Depth 2
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
	addl	$-1, %r14d
	jne	.LBB19_14
	jmp	.LBB19_15
.LBB19_16:
	movq	%r13, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_settop              # TAILCALL
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
.LBB20_7:                               #   in Loop: Header=BB20_1 Depth=1
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_remove
	cmpb	$46, (%r13)
	leaq	1(%r13), %r12
	jne	.LBB20_8
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$46, %esi
	callq	strchr
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB20_3
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r13
	addq	%r12, %r13
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
	movq	%r15, %rdi
	testl	%eax, %eax
	je	.LBB20_4
# %bb.9:                                #   in Loop: Header=BB20_1 Depth=1
	movl	$-1, %esi
	callq	lua_type
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
	subq	$1080, %rsp             # imm = 0x438
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%r14, -1104(%rbp)
	leaq	-1096(%rbp), %rax
	movq	%rax, -1120(%rbp)
	movl	$0, -1112(%rbp)
	movq	%rbx, %rdi
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	callq	strstr
	testq	%rax, %rax
	je	.LBB21_13
# %bb.1:
	leaq	-72(%rbp), %r13
	jmp	.LBB21_2
	.p2align	4, 0x90
.LBB21_12:                              #   in Loop: Header=BB21_2 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	addq	-56(%rbp), %rbx         # 8-byte Folded Reload
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	strstr
	testq	%rax, %rax
	je	.LBB21_13
.LBB21_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_4 Depth 2
                                        #     Child Loop BB21_9 Depth 2
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %r14
	subq	%rbx, %r14
	je	.LBB21_7
# %bb.3:                                # %.preheader2
                                        #   in Loop: Header=BB21_2 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB21_4
	.p2align	4, 0x90
.LBB21_6:                               #   in Loop: Header=BB21_4 Depth=2
	movzbl	(%rbx,%r15), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -1120(%rbp)
	movb	%cl, (%rax)
	addq	$1, %r15
	cmpq	%r15, %r14
	je	.LBB21_7
.LBB21_4:                               #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1120(%rbp), %rax
	cmpq	%r13, %rax
	jb	.LBB21_6
# %bb.5:                                #   in Loop: Header=BB21_4 Depth=2
	leaq	-1120(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1120(%rbp), %rax
	jmp	.LBB21_6
	.p2align	4, 0x90
.LBB21_7:                               #   in Loop: Header=BB21_2 Depth=1
	movq	%r12, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB21_12
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	%rax, %r14
	xorl	%ebx, %ebx
	jmp	.LBB21_9
	.p2align	4, 0x90
.LBB21_11:                              #   in Loop: Header=BB21_9 Depth=2
	movzbl	(%r12,%rbx), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -1120(%rbp)
	movb	%cl, (%rax)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	je	.LBB21_12
.LBB21_9:                               #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1120(%rbp), %rax
	cmpq	%r13, %rax
	jb	.LBB21_11
# %bb.10:                               #   in Loop: Header=BB21_9 Depth=2
	leaq	-1120(%rbp), %rdi
	callq	luaL_prepbuffer
	movq	-1120(%rbp), %rax
	jmp	.LBB21_11
.LBB21_13:
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB21_18
# %bb.14:
	movq	%rax, %r14
	leaq	-72(%rbp), %r12
	xorl	%r13d, %r13d
	leaq	-1120(%rbp), %r15
	jmp	.LBB21_15
	.p2align	4, 0x90
.LBB21_17:                              #   in Loop: Header=BB21_15 Depth=1
	movzbl	(%rbx,%r13), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -1120(%rbp)
	movb	%cl, (%rax)
	addq	$1, %r13
	cmpq	%r13, %r14
	je	.LBB21_18
.LBB21_15:                              # =>This Inner Loop Header: Depth=1
	movq	-1120(%rbp), %rax
	cmpq	%r12, %rax
	jb	.LBB21_17
# %bb.16:                               #   in Loop: Header=BB21_15 Depth=1
	movq	%r15, %rdi
	callq	luaL_prepbuffer
	movq	-1120(%rbp), %rax
	jmp	.LBB21_17
.LBB21_18:
	movq	-1120(%rbp), %rdx
	leaq	-1096(%rbp), %rbx
	subq	%rbx, %rdx
	je	.LBB21_19
# %bb.20:
	movq	-1104(%rbp), %rdi
	movq	%rbx, %rsi
	callq	lua_pushlstring
	movq	%rbx, -1120(%rbp)
	movl	-1112(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -1112(%rbp)
	jmp	.LBB21_21
.LBB21_19:
	movl	-1112(%rbp), %esi
.LBB21_21:
	movq	-1104(%rbp), %rdi
	callq	lua_concat
	movl	$1, -1112(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	addq	$1080, %rsp             # imm = 0x438
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
	pushq	%rax
	testq	%rdx, %rdx
	je	.LBB23_5
# %bb.1:
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	1048(%rdi), %r12
	xorl	%ebx, %ebx
	jmp	.LBB23_2
	.p2align	4, 0x90
.LBB23_4:                               #   in Loop: Header=BB23_2 Depth=1
	movzbl	(%r14,%rbx), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r13)
	movb	%cl, (%rax)
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.LBB23_5
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	cmpq	%r12, %rax
	jb	.LBB23_4
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	movq	%r13, %rdi
	callq	luaL_prepbuffer
	movq	(%r13), %rax
	jmp	.LBB23_4
.LBB23_5:
	addq	$8, %rsp
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
	movq	%rdi, %r13
	movq	%rsi, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB24_5
# %bb.1:
	movq	%rax, %r15
	leaq	1048(%r13), %r12
	xorl	%ebx, %ebx
	jmp	.LBB24_2
	.p2align	4, 0x90
.LBB24_4:                               #   in Loop: Header=BB24_2 Depth=1
	movzbl	(%r14,%rbx), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r13)
	movb	%cl, (%rax)
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.LBB24_5
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	cmpq	%r12, %rax
	jb	.LBB24_4
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	movq	%r13, %rdi
	callq	luaL_prepbuffer
	movq	(%r13), %rax
	jmp	.LBB24_4
.LBB24_5:
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
	jmp	.LBB25_3
.LBB25_1:
	leaq	8(%rbx), %r14
	movl	8(%rbx), %esi
	addq	$16, %rbx
.LBB25_3:
	movq	(%rbx), %rdi
	callq	lua_concat
	movl	$1, (%r14)
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rdx
	leaq	24(%rdi), %rbx
	subq	%rbx, %rdx
	je	.LBB26_6
# %bb.1:
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	movq	%rbx, %rsi
	callq	lua_pushlstring
	movq	%rbx, (%r15)
	movl	8(%r15), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 8(%r15)
	testl	%eax, %eax
	jle	.LBB26_6
# %bb.2:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	16(%r15), %r12
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %r13
	movl	$1, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	notl	%esi
	movq	%r12, %rdi
	callq	lua_objlen
	movl	8(%r15), %ecx
	movl	%ecx, %edx
	subl	%ebx, %edx
	cmpl	$8, %edx
	setg	%sil
	cmpq	%rax, %r13
	seta	%dl
	orb	%sil, %dl
	cmoveq	%r14, %rax
	movzbl	%dl, %edx
	addl	%edx, %ebx
	testb	%dl, %dl
	je	.LBB26_5
# %bb.4:                                #   in Loop: Header=BB26_3 Depth=1
	addq	%rax, %r13
	cmpl	%ecx, %ebx
	jl	.LBB26_3
.LBB26_5:
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	lua_concat
	movl	8(%r15), %eax
	subl	%ebx, %eax
	addl	$1, %eax
	movl	%eax, 8(%r15)
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB26_6:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	luaL_prepbuffer, .Lfunc_end26-luaL_prepbuffer
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	16(%rdi), %r14
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_tolstring
	movq	-48(%rbp), %rdx
	movq	(%r15), %rcx
	leaq	24(%r15), %rbx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	addq	$1024, %rsi             # imm = 0x400
	cmpq	%rsi, %rdx
	jbe	.LBB27_1
# %bb.2:
	subq	%rbx, %rcx
	je	.LBB27_3
# %bb.4:
	movq	16(%r15), %rdi
	movq	%rbx, %rsi
	movq	%rcx, %rdx
	callq	lua_pushlstring
	movq	%rbx, (%r15)
	leaq	8(%r15), %r12
	addl	$1, 8(%r15)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_insert
	jmp	.LBB27_5
.LBB27_1:
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-48(%rbp), %rax
	addq	%rax, (%r15)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB27_10
.LBB27_3:
	leaq	8(%r15), %r12
.LBB27_5:
	movl	(%r12), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%r12)
	testl	%eax, %eax
	jle	.LBB27_10
# %bb.6:
	movq	16(%r15), %r14
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %r15
	movl	$1, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB27_7:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	notl	%esi
	movq	%r14, %rdi
	callq	lua_objlen
	movl	(%r12), %ecx
	movl	%ecx, %edx
	subl	%ebx, %edx
	cmpl	$8, %edx
	setg	%sil
	cmpq	%rax, %r15
	seta	%dl
	orb	%sil, %dl
	cmoveq	%r13, %rax
	movzbl	%dl, %edx
	addl	%edx, %ebx
	testb	%dl, %dl
	je	.LBB27_9
# %bb.8:                                #   in Loop: Header=BB27_7 Depth=1
	addq	%rax, %r15
	cmpl	%ecx, %ebx
	jl	.LBB27_7
.LBB27_9:
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_concat
	movl	(%r12), %eax
	subl	%ebx, %eax
	addl	$1, %eax
	movl	%eax, (%r12)
.LBB27_10:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	luaL_addvalue, .Lfunc_end27-luaL_addvalue
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
	cmpl	$9999, %eax             # imm = 0x270F
	ja	.LBB28_2
# %bb.1:
	movq	%r15, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	addl	%eax, %r14d
	addl	$1, %r14d
.LBB28_2:
	movl	$-1, %ebx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB28_3
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
	movq	%r15, %rdi
	movl	%r14d, %esi
	testl	%ebx, %ebx
	je	.LBB28_6
# %bb.5:
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	lua_rawseti
	jmp	.LBB28_7
.LBB28_3:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB28_8
.LBB28_6:
	callq	lua_objlen
	movq	%rax, %rbx
	addl	$1, %ebx
.LBB28_7:
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	lua_rawseti
.LBB28_8:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	luaL_ref, .Lfunc_end28-luaL_ref
                                        # -- End function
	.globl	luaL_unref              # -- Begin function luaL_unref
	.p2align	4, 0x90
	.type	luaL_unref,@function
luaL_unref:                             # @luaL_unref
# %bb.0:
	testl	%edx, %edx
	js	.LBB29_4
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %r14
	leal	9999(%rbx), %eax
	cmpl	$9999, %eax             # imm = 0x270F
	ja	.LBB29_3
# %bb.2:
	movq	%r14, %rdi
	callq	lua_gettop
                                        # kill: def $eax killed $eax def $rax
	addl	%eax, %ebx
	addl	$1, %ebx
.LBB29_3:
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_rawseti             # TAILCALL
.LBB29_4:
	retq
.Lfunc_end29:
	.size	luaL_unref, .Lfunc_end29-luaL_unref
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
	testq	%r12, %r12
	je	.LBB30_1
# %bb.7:
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
	testq	%rax, %rax
	jne	.LBB30_2
# %bb.8:
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
	jmp	.LBB30_9
.LBB30_1:
	movl	$.L.str.15, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	lua_pushlstring
	callq	__getreent
	movq	8(%rax), %rbx
	movq	%rbx, -1072(%rbp)
.LBB30_2:
	movq	%rbx, %rdi
	callq	getc
	cmpl	$35, %eax
	jne	.LBB30_11
# %bb.3:
	movl	$1, -1080(%rbp)
	.p2align	4, 0x90
.LBB30_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	getc
	cmpl	$10, %eax
	je	.LBB30_10
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=1
	cmpl	$-1, %eax
	jne	.LBB30_4
# %bb.6:
	testq	%r12, %r12
	setne	%r13b
	movl	$-1, %eax
	jmp	.LBB30_18
.LBB30_10:
	movq	%rbx, %rdi
	callq	getc
.LBB30_11:
	testq	%r12, %r12
	setne	%r13b
	je	.LBB30_18
# %bb.12:
	cmpl	$27, %eax
	jne	.LBB30_18
# %bb.13:
	movl	$.L.str.20, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	freopen
	movq	%rax, -1072(%rbp)
	testq	%rax, %rax
	je	.LBB30_24
# %bb.14:
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB30_15:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	getc
	cmpl	$27, %eax
	je	.LBB30_17
# %bb.16:                               #   in Loop: Header=BB30_15 Depth=1
	cmpl	$-1, %eax
	jne	.LBB30_15
.LBB30_17:
	movl	$0, -1080(%rbp)
	movb	$1, %r13b
.LBB30_18:
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
	testb	%r13b, %r13b
	je	.LBB30_20
# %bb.19:
	callq	fclose
.LBB30_20:
	testb	$64, %r12b
	jne	.LBB30_21
# %bb.22:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_remove
	jmp	.LBB30_23
.LBB30_21:
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
	jmp	.LBB30_9
.LBB30_24:
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
.LBB30_9:
	movq	%r15, %rdi
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_remove
	movl	$6, %ebx
.LBB30_23:
	movl	%ebx, %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	luaL_loadfile, .Lfunc_end30-luaL_loadfile
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
	je	.LBB31_2
# %bb.1:
	movl	$0, (%rbx)
	movq	$1, (%r14)
	movl	$.L.str.24, %ebx
	jmp	.LBB31_5
.LBB31_2:
	movq	8(%rbx), %rcx
	testb	$32, 16(%rcx)
	jne	.LBB31_3
# %bb.4:
	addq	$16, %rbx
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	fread
	movq	%rax, (%r14)
	testq	%rax, %rax
	cmoveq	%rax, %rbx
	jmp	.LBB31_5
.LBB31_3:
	xorl	%ebx, %ebx
.LBB31_5:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	getF, .Lfunc_end31-getF
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	luaL_loadbuffer, .Lfunc_end32-luaL_loadbuffer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getS
	.type	getS,@function
getS:                                   # @getS
# %bb.0:
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB33_1
# %bb.2:
	movq	%rax, (%rdx)
	movq	$0, 8(%rsi)
	movq	(%rsi), %rax
	retq
.LBB33_1:
	xorl	%eax, %eax
	retq
.Lfunc_end33:
	.size	getS, .Lfunc_end33-getS
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
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end34:
	.size	luaL_loadstring, .Lfunc_end34-luaL_loadstring
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
	testq	%rax, %rax
	je	.LBB35_2
# %bb.1:
	movl	$panic, %esi
	movq	%rbx, %rdi
	callq	lua_atpanic
.LBB35_2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	luaL_newstate, .Lfunc_end35-luaL_newstate
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function l_alloc
	.type	l_alloc,@function
l_alloc:                                # @l_alloc
# %bb.0:
	movq	%rsi, %rdi
	testq	%rcx, %rcx
	je	.LBB36_1
# %bb.2:
	movq	%rcx, %rsi
	jmp	realloc                 # TAILCALL
.LBB36_1:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	free
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end36:
	.size	l_alloc, .Lfunc_end36-l_alloc
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
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	panic, .Lfunc_end37-panic
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
