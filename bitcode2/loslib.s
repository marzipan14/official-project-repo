	.text
	.file	"loslib.c"
	.globl	luaopen_os              # -- Begin function luaopen_os
	.p2align	4, 0x90
	.type	luaopen_os,@function
luaopen_os:                             # @luaopen_os
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %esi
	movl	$syslib, %edx
	callq	luaL_register
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_os, .Lfunc_end0-luaopen_os
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function os_clock
.LCPI1_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.p2align	4, 0x90
	.type	os_clock,@function
os_clock:                               # @os_clock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	clock
	cvtsi2sd	%rax, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	os_clock, .Lfunc_end1-os_clock
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_date
	.type	os_date,@function
os_date:                                # @os_date
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1272, %rsp             # imm = 0x4F8
	movq	%rdi, %r15
	movl	$.L.str.12, %edx
	movl	$1, %esi
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$2, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB2_1
# %bb.2:
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %rax
	jmp	.LBB2_3
.LBB2_1:
	xorl	%edi, %edi
	callq	time
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)
	cmpb	$33, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rdi
	jne	.LBB2_5
# %bb.4:
	callq	gmtime
	movq	%rax, %r14
	addq	$1, %rbx
	jmp	.LBB2_6
.LBB2_5:
	callq	localtime
	movq	%rax, %r14
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_7
# %bb.8:
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_9
# %bb.12:
	movb	$37, -43(%rbp)
	movb	$0, -41(%rbp)
	leaq	-1104(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaL_buffinit
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_21
# %bb.13:
	leaq	-56(%rbp), %r12
	leaq	-1312(%rbp), %r15
	leaq	-1104(%rbp), %r13
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_14 Depth=1
	leaq	1(%rcx), %rdx
	movq	%rdx, -1104(%rbp)
	movb	%al, (%rcx)
.LBB2_20:                               #   in Loop: Header=BB2_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_21
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	jne	.LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	movzbl	1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB2_16
# %bb.19:                               #   in Loop: Header=BB2_14 Depth=1
	addq	$1, %rbx
	movb	%cl, -42(%rbp)
	movl	$200, %esi
	movq	%r15, %rdi
	leaq	-43(%rbp), %rdx
	movq	%r14, %rcx
	callq	strftime
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	luaL_addlstring
	jmp	.LBB2_20
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-1104(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	jb	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_14 Depth=1
	movq	%r13, %rdi
	callq	luaL_prepbuffer
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx), %eax
	movq	-1104(%rbp), %rcx
	jmp	.LBB2_18
.LBB2_21:
	leaq	-1104(%rbp), %rdi
	callq	luaL_pushresult
	jmp	.LBB2_22
.LBB2_7:
	movq	%r15, %rdi
	callq	lua_pushnil
	jmp	.LBB2_22
.LBB2_9:
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$9, %edx
	callq	lua_createtable
	movslq	(%r14), %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.14, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	4(%r14), %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.15, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%r14), %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.16, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	12(%r14), %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	16(%r14), %rsi
	addq	$1, %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.18, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	20(%r14), %rsi
	addq	$1900, %rsi             # imm = 0x76C
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%r14), %rsi
	addq	$1, %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.20, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movslq	28(%r14), %rsi
	addq	$1, %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$.L.str.21, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	32(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB2_11
# %bb.10:
	movq	%r15, %rdi
	callq	lua_pushboolean
	movl	$.L.str.22, %edx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$1272, %rsp             # imm = 0x4F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	os_date, .Lfunc_end2-os_date
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_difftime
	.type	os_difftime,@function
os_difftime:                            # @os_difftime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	cvttsd2si	%xmm0, %r14
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_optnumber
	cvttsd2si	%xmm0, %rsi
	movq	%r14, %rdi
	callq	difftime
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	os_difftime, .Lfunc_end3-os_difftime
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_execute
	.type	os_execute,@function
os_execute:                             # @os_execute
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %rdi
	callq	system
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	os_execute, .Lfunc_end4-os_execute
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_exit
	.type	os_exit,@function
os_exit:                                # @os_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_optinteger
	movl	%eax, %edi
	callq	exit
.Lfunc_end5:
	.size	os_exit, .Lfunc_end5-os_exit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_getenv
	.type	os_getenv,@function
os_getenv:                              # @os_getenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %rdi
	callq	getenv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	os_getenv, .Lfunc_end6-os_getenv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_remove
	.type	os_remove,@function
os_remove:                              # @os_remove
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
	movl	$1, %r14d
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	remove
	movl	%eax, %ebx
	callq	__errno
	movslq	(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB7_1
# %bb.2:
	movq	%r13, %rdi
	callq	lua_pushnil
	movl	%r12d, %edi
	callq	strerror
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	lua_pushinteger
	movl	$3, %r14d
	jmp	.LBB7_3
.LBB7_1:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	os_remove, .Lfunc_end7-os_remove
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_rename
	.type	os_rename,@function
os_rename:                              # @os_rename
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
	movl	$1, %r14d
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r15
	movq	%r13, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	rename
	movl	%eax, %ebx
	callq	__errno
	movslq	(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB8_1
# %bb.2:
	movq	%r13, %rdi
	callq	lua_pushnil
	movl	%r12d, %edi
	callq	strerror
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	lua_pushinteger
	movl	$3, %r14d
	jmp	.LBB8_3
.LBB8_1:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	os_rename, .Lfunc_end8-os_rename
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_setlocale
	.type	os_setlocale,@function
os_setlocale:                           # @os_setlocale
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %r14
	movl	$.L.str.24, %edx
	movl	$os_setlocale.catnames, %ecx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checkoption
	cltq
	movl	os_setlocale.cat(,%rax,4), %edi
	movq	%r14, %rsi
	callq	setlocale
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	os_setlocale, .Lfunc_end9-os_setlocale
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_time
	.type	os_time,@function
os_time:                                # @os_time
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r15
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB10_1
# %bb.2:
	movq	%r15, %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_settop
	movl	$.L.str.14, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_4
# %bb.3:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	jmp	.LBB10_5
.LBB10_1:
	xorl	%edi, %edi
	callq	time
	jmp	.LBB10_23
.LBB10_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -80(%rbp)
	movl	$.L.str.15, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_7
# %bb.6:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	jmp	.LBB10_8
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -76(%rbp)
	movl	$.L.str.16, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_10
# %bb.9:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	jmp	.LBB10_11
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ebx
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -72(%rbp)
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_13
# %bb.12:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB10_14
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.29, %esi
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	%eax, %ebx
.LBB10_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -68(%rbp)
	movl	$.L.str.18, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_16
# %bb.15:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB10_17
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.29, %esi
	movl	$.L.str.18, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	%eax, %ebx
.LBB10_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	movl	%ebx, -64(%rbp)
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_19
# %bb.18:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB10_20
.LBB10_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.29, %esi
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	%eax, %ebx
.LBB10_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1900, %ebx            # imm = 0xF894
	movl	%ebx, -60(%rbp)
	movl	$-1, %r14d
	movl	$.L.str.22, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_22
# %bb.21:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -48(%rbp)
	leaq	-80(%rbp), %rdi
	callq	mktime
.LBB10_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB10_24
# %bb.25:
	cvtsi2sd	%rax, %xmm0
	movq	%r15, %rdi
	callq	lua_pushnumber
	jmp	.LBB10_26
.LBB10_24:
	movq	%r15, %rdi
	callq	lua_pushnil
.LBB10_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	os_time, .Lfunc_end10-os_time
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function os_tmpname
	.type	os_tmpname,@function
os_tmpname:                             # @os_tmpname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rdi, %rbx
	leaq	-1040(%rbp), %rdi
	callq	tmpnam
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:
	leaq	-1040(%rbp), %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$1, %eax
	jmp	.LBB11_3
.LBB11_1:
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	os_tmpname, .Lfunc_end11-os_tmpname
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"os"
	.size	.L.str, 3

	.type	syslib,@object          # @syslib
	.section	.rodata,"a",@progbits
	.p2align	4
syslib:
	.quad	.L.str.1
	.quad	os_clock
	.quad	.L.str.2
	.quad	os_date
	.quad	.L.str.3
	.quad	os_difftime
	.quad	.L.str.4
	.quad	os_execute
	.quad	.L.str.5
	.quad	os_exit
	.quad	.L.str.6
	.quad	os_getenv
	.quad	.L.str.7
	.quad	os_remove
	.quad	.L.str.8
	.quad	os_rename
	.quad	.L.str.9
	.quad	os_setlocale
	.quad	.L.str.10
	.quad	os_time
	.quad	.L.str.11
	.quad	os_tmpname
	.zero	16
	.size	syslib, 192

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"clock"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"date"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"difftime"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"execute"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"exit"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"getenv"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"remove"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"rename"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"setlocale"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"time"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tmpname"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%c"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"*t"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sec"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"min"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hour"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"day"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"month"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"year"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"wday"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"yday"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"isdst"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s: %s"
	.size	.L.str.23, 7

	.type	os_setlocale.cat,@object # @os_setlocale.cat
	.section	.rodata,"a",@progbits
	.p2align	4
os_setlocale.cat:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.size	os_setlocale.cat, 24

	.type	os_setlocale.catnames,@object # @os_setlocale.catnames
	.p2align	4
os_setlocale.catnames:
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.10
	.quad	0
	.size	os_setlocale.catnames, 56

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"all"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"collate"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ctype"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"monetary"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"numeric"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"field '%s' missing in date table"
	.size	.L.str.29, 33

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"unable to generate a unique filename"
	.size	.L.str.30, 37

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
