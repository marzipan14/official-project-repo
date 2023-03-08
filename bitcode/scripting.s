	.text
	.file	"scripting.c"
	.globl	sha1hex                 # -- Begin function sha1hex
	.p2align	4, 0x90
	.type	sha1hex,@function
sha1hex:                                # @sha1hex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	-160(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%r12, %rsi
	callq	SHA1Final
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	-64(%rbp,%rax), %ecx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	movzbl	.L.str(%rdx), %edx
	movb	%dl, (%rbx,%rax,2)
	andl	$15, %ecx
	movzbl	.L.str(%rcx), %ecx
	movb	%cl, 1(%rbx,%rax,2)
	addq	$1, %rax
	cmpq	$20, %rax
	jne	.LBB0_1
# %bb.2:
	movb	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sha1hex, .Lfunc_end0-sha1hex
                                        # -- End function
	.globl	redisProtocolToLuaType  # -- Begin function redisProtocolToLuaType
	.p2align	4, 0x90
	.type	redisProtocolToLuaType,@function
redisProtocolToLuaType:                 # @redisProtocolToLuaType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movsbl	(%rsi), %eax
	addl	$-36, %eax
	cmpl	$22, %eax
	ja	.LBB1_12
# %bb.1:
	movq	%rdi, %r14
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_3:
	leaq	1(%rbx), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	notq	%rbx
	addq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	string2ll
	movq	-40(%rbp), %rdx
	cmpq	$-1, %rdx
	je	.LBB1_4
# %bb.5:
	addq	$2, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	lua_pushlstring
	addq	-40(%rbp), %r15
	jmp	.LBB1_6
.LBB1_11:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	redisProtocolToLuaType_MultiBulk
	movq	%rax, %rbx
	jmp	.LBB1_12
.LBB1_7:
	leaq	1(%rbx), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.1, %esi
	jmp	.LBB1_8
.LBB1_10:
	leaq	1(%rbx), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.2, %esi
.LBB1_8:
	movq	%r14, %rdi
	callq	lua_pushstring
	notq	%rbx
	addq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	lua_pushlstring
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_settable
	jmp	.LBB1_9
.LBB1_2:
	leaq	1(%rbx), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	notq	%rbx
	addq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	string2ll
	cvtsi2sdq	-40(%rbp), %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
.LBB1_9:
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	jmp	.LBB1_12
.LBB1_4:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	lua_pushboolean
.LBB1_6:
	movq	%r15, %rbx
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	redisProtocolToLuaType, .Lfunc_end1-redisProtocolToLuaType
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_3
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_11
	.quad	.LBB1_7
	.quad	.LBB1_12
	.quad	.LBB1_10
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_2
                                        # -- End function
	.text
	.globl	redisProtocolToLuaType_Int # -- Begin function redisProtocolToLuaType_Int
	.p2align	4, 0x90
	.type	redisProtocolToLuaType_Int,@function
redisProtocolToLuaType_Int:             # @redisProtocolToLuaType_Int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	1(%rsi), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	notq	%rbx
	addq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	string2ll
	cvtsi2sdq	-40(%rbp), %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	redisProtocolToLuaType_Int, .Lfunc_end2-redisProtocolToLuaType_Int
                                        # -- End function
	.globl	redisProtocolToLuaType_Bulk # -- Begin function redisProtocolToLuaType_Bulk
	.p2align	4, 0x90
	.type	redisProtocolToLuaType_Bulk,@function
redisProtocolToLuaType_Bulk:            # @redisProtocolToLuaType_Bulk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	1(%rsi), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	notq	%rbx
	addq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	string2ll
	movq	-40(%rbp), %rdx
	cmpq	$-1, %rdx
	je	.LBB3_1
# %bb.2:
	addq	$2, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	lua_pushlstring
	addq	-40(%rbp), %r15
	jmp	.LBB3_3
.LBB3_1:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	lua_pushboolean
.LBB3_3:
	addq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	redisProtocolToLuaType_Bulk, .Lfunc_end3-redisProtocolToLuaType_Bulk
                                        # -- End function
	.globl	redisProtocolToLuaType_Status # -- Begin function redisProtocolToLuaType_Status
	.p2align	4, 0x90
	.type	redisProtocolToLuaType_Status,@function
redisProtocolToLuaType_Status:          # @redisProtocolToLuaType_Status
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	1(%rsi), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r14
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	lua_pushstring
	notq	%rbx
	leaq	(%rbx,%r14), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lua_pushlstring
	movq	%r15, %rdi
	movl	$-3, %esi
	callq	lua_settable
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	redisProtocolToLuaType_Status, .Lfunc_end4-redisProtocolToLuaType_Status
                                        # -- End function
	.globl	redisProtocolToLuaType_Error # -- Begin function redisProtocolToLuaType_Error
	.p2align	4, 0x90
	.type	redisProtocolToLuaType_Error,@function
redisProtocolToLuaType_Error:           # @redisProtocolToLuaType_Error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	1(%rsi), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r14
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	lua_pushstring
	notq	%rbx
	leaq	(%rbx,%r14), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lua_pushlstring
	movq	%r15, %rdi
	movl	$-3, %esi
	callq	lua_settable
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	redisProtocolToLuaType_Error, .Lfunc_end5-redisProtocolToLuaType_Error
                                        # -- End function
	.globl	redisProtocolToLuaType_MultiBulk # -- Begin function redisProtocolToLuaType_MultiBulk
	.p2align	4, 0x90
	.type	redisProtocolToLuaType_MultiBulk,@function
redisProtocolToLuaType_MultiBulk:       # @redisProtocolToLuaType_MultiBulk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	1(%rsi), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r13
	notq	%r15
	addq	%rax, %r15
	leaq	-48(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	string2ll
	addq	$2, %r13
	cmpq	$-1, -48(%rbp)
	je	.LBB6_1
# %bb.2:
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	cmpq	$0, -48(%rbp)
	jle	.LBB6_5
# %bb.3:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	addq	$1, %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	redisProtocolToLuaType
	movq	%rax, %r13
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_settable
	cmpq	%rbx, -48(%rbp)
	jg	.LBB6_4
	jmp	.LBB6_5
.LBB6_1:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	lua_pushboolean
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	redisProtocolToLuaType_MultiBulk, .Lfunc_end6-redisProtocolToLuaType_MultiBulk
                                        # -- End function
	.globl	luaPushError            # -- Begin function luaPushError
	.p2align	4, 0x90
	.type	luaPushError,@function
luaPushError:                           # @luaPushError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, ldb+4(%rip)
	je	.LBB7_3
# %bb.1:
	cmpl	$0, ldb+300(%rip)
	je	.LBB7_3
# %bb.2:
	callq	sdsempty
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB7_3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	leaq	-136(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB7_6
# %bb.4:
	leaq	-136(%rbp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	lua_getinfo
	testl	%eax, %eax
	je	.LBB7_6
# %bb.5:
	callq	sdsempty
	movq	-104(%rbp), %rdx
	movl	-96(%rbp), %ecx
	movl	$.L.str.5, %esi
	movq	%rax, %rdi
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lua_pushstring
	movq	%r14, %rdi
	callq	sdsfree
	jmp	.LBB7_7
.LBB7_6:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushstring
.LBB7_7:
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaPushError, .Lfunc_end7-luaPushError
                                        # -- End function
	.globl	ldbLog                  # -- Begin function ldbLog
	.p2align	4, 0x90
	.type	ldbLog,@function
ldbLog:                                 # @ldbLog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	ldb+16(%rip), %rdi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ldbLog, .Lfunc_end8-ldbLog
                                        # -- End function
	.globl	luaRaiseError           # -- Begin function luaRaiseError
	.p2align	4, 0x90
	.type	luaRaiseError,@function
luaRaiseError:                          # @luaRaiseError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.2, %esi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%rbx, %rdi
	callq	lua_error
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaRaiseError, .Lfunc_end9-luaRaiseError
                                        # -- End function
	.globl	luaSortArray            # -- Begin function luaSortArray
	.p2align	4, 0x90
	.type	luaSortArray,@function
luaSortArray:                           # @luaSortArray
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.6, %edx
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	testl	%eax, %eax
	je	.LBB10_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_pushvalue
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lua_call
.LBB10_2:
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	luaSortArray, .Lfunc_end10-luaSortArray
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function luaReplyToRedisReply
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	luaReplyToRedisReply
	.p2align	4, 0x90
	.type	luaReplyToRedisReply,@function
luaReplyToRedisReply:                   # @luaReplyToRedisReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	%rsi, %rdi
	movl	$-1, %esi
	callq	lua_type
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	cmpl	$4, %eax
	ja	.LBB11_13
# %bb.1:
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_3:
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	testl	%eax, %eax
	movl	$shared+80, %eax
	movl	$shared+40, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
	jmp	.LBB11_14
.LBB11_4:
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	cvttsd2si	%xmm0, %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB11_15
.LBB11_2:
	movq	%r12, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rbx
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	addReplyBulkCBuffer
	jmp	.LBB11_15
.LBB11_5:
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	lua_pushstring
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r12, %rdi
	cmpl	$4, %eax
	jne	.LBB11_7
# %bb.6:
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movl	$.L.str.9, %esi
	movl	$.L.str.10, %edx
	movl	$2, %ecx
	movq	%rax, %rdi
	callq	sdsmapchars
	callq	sdsempty
	movl	$.L.str.11, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	movl	$-3, %esi
	jmp	.LBB11_16
.LBB11_13:
	movq	shared+80(%rip), %rsi
.LBB11_14:
	movq	%r14, %rdi
	callq	addReply
.LBB11_15:
	movq	%r12, %rdi
	movl	$-2, %esi
.LBB11_16:
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
.LBB11_7:
	movl	$-2, %esi
	callq	lua_settop
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	callq	lua_pushstring
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$4, %eax
	jne	.LBB11_9
# %bb.8:
	movq	%r12, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movl	$.L.str.9, %esi
	movl	$.L.str.10, %edx
	movl	$2, %ecx
	movq	%rax, %rdi
	callq	sdsmapchars
	callq	sdsempty
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB11_15
.LBB11_9:
	movq	%r14, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r15
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	lua_pushnumber
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB11_11
	.p2align	4, 0x90
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
	leal	2(%rbx), %r13d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaReplyToRedisReply
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r13d, %xmm0
	movq	%r12, %rdi
	callq	lua_pushnumber
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	addq	$1, %rbx
	testl	%eax, %eax
	jne	.LBB11_12
.LBB11_11:
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	setDeferredMultiBulkLength
	jmp	.LBB11_15
.Lfunc_end11:
	.size	luaReplyToRedisReply, .Lfunc_end11-luaReplyToRedisReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_3
	.quad	.LBB11_13
	.quad	.LBB11_4
	.quad	.LBB11_2
	.quad	.LBB11_5
                                        # -- End function
	.text
	.globl	luaRedisGenericCommand  # -- Begin function luaRedisGenericCommand
	.p2align	4, 0x90
	.type	luaRedisGenericCommand,@function
luaRedisGenericCommand:                 # @luaRedisGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%esi, %ebx
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, %r12d
	movq	server+3000(%rip), %rcx
	cmpl	$0, server+3060(%rip)
	jne	.LBB12_24
# %bb.1:
	movq	server+3008(%rip), %rax
	testb	$8, 160(%rax)
	jne	.LBB12_24
# %bb.2:
	andb	$-9, 160(%rcx)
	cmpl	$0, luaRedisGenericCommand.inuse(%rip)
	jne	.LBB12_25
.LBB12_3:
	movl	$1, luaRedisGenericCommand.inuse(%rip)
	testl	%r12d, %r12d
	je	.LBB12_26
# %bb.4:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movslq	%r12d, %r13
	cmpl	%r12d, luaRedisGenericCommand.argv_size(%rip)
	jge	.LBB12_6
# %bb.5:
	movq	luaRedisGenericCommand.argv(%rip), %rdi
	leaq	(,%r13,8), %rsi
	callq	zrealloc
	movq	%rax, luaRedisGenericCommand.argv(%rip)
	movl	%r12d, luaRedisGenericCommand.argv_size(%rip)
.LBB12_6:
	testl	%r12d, %r12d
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jle	.LBB12_30
# %bb.7:
	movl	%r12d, -52(%rbp)        # 4-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB12_10
	.p2align	4, 0x90
.LBB12_8:                               #   in Loop: Header=BB12_10 Depth=1
	movq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	callq	createStringObject
	movq	luaRedisGenericCommand.argv(%rip), %rcx
	movq	%rax, (%rcx,%r14,8)
.LBB12_9:                               #   in Loop: Header=BB12_10 Depth=1
	movq	%r12, %r14
	cmpq	%r13, %r12
	jge	.LBB12_28
.LBB12_10:                              # =>This Inner Loop Header: Depth=1
	leaq	1(%r14), %r12
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	lua_type
	movq	%r15, %rdi
	movl	%r12d, %esi
	cmpl	$3, %eax
	jne	.LBB12_12
# %bb.11:                               #   in Loop: Header=BB12_10 Depth=1
	callq	lua_tonumber
	movl	$64, %esi
	movl	$.L.str.16, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	movb	$1, %al
	callq	snprintf
	cltq
	movq	%rax, -64(%rbp)
	jmp	.LBB12_13
	.p2align	4, 0x90
.LBB12_12:                              #   in Loop: Header=BB12_10 Depth=1
	leaq	-64(%rbp), %rdx
	callq	lua_tolstring
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB12_29
.LBB12_13:                              #   in Loop: Header=BB12_10 Depth=1
	cmpq	$31, %r14
	ja	.LBB12_8
# %bb.14:                               #   in Loop: Header=BB12_10 Depth=1
	movq	luaRedisGenericCommand.cached_objects(,%r14,8), %rcx
	testq	%rcx, %rcx
	je	.LBB12_8
# %bb.15:                               #   in Loop: Header=BB12_10 Depth=1
	movq	-64(%rbp), %rdx
	cmpq	%rdx, luaRedisGenericCommand.cached_objects_len(,%r14,8)
	jb	.LBB12_8
# %bb.16:                               #   in Loop: Header=BB12_10 Depth=1
	movq	8(%rcx), %r15
	movq	luaRedisGenericCommand.argv(%rip), %rsi
	movq	%rcx, (%rsi,%r14,8)
	movq	$0, luaRedisGenericCommand.cached_objects(,%r14,8)
	addq	$1, %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movzbl	-1(%r15), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB12_23
# %bb.17:                               #   in Loop: Header=BB12_10 Depth=1
	movq	-64(%rbp), %rax
	andl	$7, %ecx
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_18:                              #   in Loop: Header=BB12_10 Depth=1
	shlb	$3, %al
	movb	%al, -1(%r15)
	jmp	.LBB12_23
.LBB12_19:                              #   in Loop: Header=BB12_10 Depth=1
	movb	%al, -3(%r15)
	jmp	.LBB12_23
.LBB12_20:                              #   in Loop: Header=BB12_10 Depth=1
	movw	%ax, -5(%r15)
	jmp	.LBB12_23
.LBB12_21:                              #   in Loop: Header=BB12_10 Depth=1
	movl	%eax, -9(%r15)
	jmp	.LBB12_23
.LBB12_22:                              #   in Loop: Header=BB12_10 Depth=1
	movq	%rax, -17(%r15)
.LBB12_23:                              #   in Loop: Header=BB12_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB12_9
.LBB12_24:
	orb	$8, 160(%rcx)
	cmpl	$0, luaRedisGenericCommand.inuse(%rip)
	je	.LBB12_3
.LBB12_25:
	movl	$.L.str.14, %esi
	movl	$.L.str.13, %edx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	luaPushError
	movl	$1, %eax
	jmp	.LBB12_98
.LBB12_26:
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	luaPushError
	addl	$-1, luaRedisGenericCommand.inuse(%rip)
	testl	%ebx, %ebx
	jne	.LBB12_97
.LBB12_27:
	movl	$1, %eax
	jmp	.LBB12_98
.LBB12_28:
	movl	%r12d, %r14d
.LBB12_29:
	movl	-52(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB12_31
.LBB12_30:
	xorl	%r14d, %r14d
.LBB12_31:
	cmpl	%r12d, %r14d
	movl	-76(%rbp), %r13d        # 4-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB12_60
# %bb.32:
	movq	luaRedisGenericCommand.argv(%rip), %rax
	movq	%rax, 72(%rbx)
	movl	%r12d, 64(%rbx)
	movq	%rbx, %rdi
	callq	moduleCallCommandFilters
	movq	72(%rbx), %rax
	movq	%rax, luaRedisGenericCommand.argv(%rip)
	movl	64(%rbx), %r14d
	cmpl	$0, ldb+4(%rip)
	je	.LBB12_47
# %bb.33:
	cmpl	$0, ldb+300(%rip)
	je	.LBB12_47
# %bb.34:
	movl	$.L.str.18, %edi
	callq	sdsnew
	cmpl	$0, 64(%rbx)
	jle	.LBB12_46
# %bb.35:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$1, 64(%rbx)
	jle	.LBB12_46
# %bb.36:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$2, 64(%rbx)
	jle	.LBB12_46
# %bb.37:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$4, 64(%rbx)
	jl	.LBB12_46
# %bb.38:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	24(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$5, 64(%rbx)
	jl	.LBB12_46
# %bb.39:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$6, 64(%rbx)
	jl	.LBB12_46
# %bb.40:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	40(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$7, 64(%rbx)
	jl	.LBB12_46
# %bb.41:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	48(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$8, 64(%rbx)
	jl	.LBB12_46
# %bb.42:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	56(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$9, 64(%rbx)
	jl	.LBB12_46
# %bb.43:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	64(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	cmpl	$10, 64(%rbx)
	jl	.LBB12_46
# %bb.44:
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	72(%rbx), %rcx
	movq	72(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	movl	64(%rbx), %edx
	cmpl	$11, %edx
	jl	.LBB12_46
# %bb.45:
	addl	$-11, %edx
	movl	$.L.str.19, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB12_46:
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movq	luaRedisGenericCommand.argv(%rip), %rax
.LBB12_47:
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	lookupCommand
	testq	%rax, %rax
	je	.LBB12_64
# %bb.48:
	movq	%rax, %r12
	movl	16(%rax), %edx
	testl	%edx, %edx
	setg	%al
	cmpl	%r14d, %edx
	setne	%cl
	negl	%edx
	cmpl	%edx, %r14d
	jl	.LBB12_65
# %bb.49:
	andb	%al, %cl
	jne	.LBB12_65
# %bb.50:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r12, 88(%rax)
	movq	%r12, 80(%rax)
	movl	32(%r12), %eax
	testb	$64, %al
	jne	.LBB12_66
# %bb.51:
	testb	$1, %al
	jne	.LBB12_99
# %bb.52:
	movl	server+860(%rip), %edx
	movq	server+2464(%rip), %rcx
.LBB12_53:
	cmpl	$0, server+3048(%rip)
	jne	.LBB12_102
# %bb.54:
	cmpq	$0, server+2704(%rip)
	je	.LBB12_102
# %bb.55:
	testl	%edx, %edx
	jne	.LBB12_102
# %bb.56:
	testq	%rcx, %rcx
	jne	.LBB12_102
# %bb.57:
	testb	$4, 32(%r12)
	je	.LBB12_102
# %bb.58:
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	getMaxmemoryState
	testl	%eax, %eax
	je	.LBB12_102
# %bb.59:
	movq	shared+232(%rip), %rax
	movq	8(%rax), %rsi
	jmp	.LBB12_67
.LBB12_60:
	testl	%r14d, %r14d
	jle	.LBB12_63
# %bb.61:
	movl	%r14d, %ebx
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB12_62:                              # =>This Inner Loop Header: Depth=1
	movq	luaRedisGenericCommand.argv(%rip), %rax
	movq	-16(%rax,%rbx,8), %rdi
	callq	decrRefCount
	addq	$-1, %rbx
	cmpq	$1, %rbx
	jg	.LBB12_62
.LBB12_63:
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	luaPushError
	jmp	.LBB12_96
.LBB12_64:
	movl	$.L.str.22, %esi
	jmp	.LBB12_67
.LBB12_65:
	movl	$.L.str.21, %esi
	jmp	.LBB12_67
.LBB12_66:
	movl	$.L.str.23, %esi
.LBB12_67:
	movq	%r15, %rdi
	callq	luaPushError
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB12_68:
	cmpl	$0, 64(%r12)
	movq	72(%r12), %rdi
	jle	.LBB12_94
# %bb.69:                               # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB12_72
	.p2align	4, 0x90
.LBB12_70:                              #   in Loop: Header=BB12_72 Depth=1
	movq	%r14, %rdi
	callq	decrRefCount
.LBB12_71:                              #   in Loop: Header=BB12_72 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	addq	$1, %rbx
	movslq	64(%r12), %rax
	movq	72(%r12), %rdi
	cmpq	%rax, %rbx
	jge	.LBB12_94
.LBB12_72:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %r14
	cmpq	$31, %rbx
	ja	.LBB12_70
# %bb.73:                               #   in Loop: Header=BB12_72 Depth=1
	cmpl	$1, 4(%r14)
	jne	.LBB12_70
# %bb.74:                               #   in Loop: Header=BB12_72 Depth=1
	movzbl	(%r14), %eax
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB12_70
# %bb.75:                               #   in Loop: Header=BB12_72 Depth=1
	movq	8(%r14), %r15
	movzbl	-1(%r15), %eax
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB12_78
# %bb.76:                               #   in Loop: Header=BB12_72 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI12_1(,%rax,8)
.LBB12_77:                              #   in Loop: Header=BB12_72 Depth=1
	movzbl	-3(%r15), %eax
	jmp	.LBB12_82
.LBB12_78:                              #   in Loop: Header=BB12_72 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_83
.LBB12_79:                              #   in Loop: Header=BB12_72 Depth=1
	movzwl	-5(%r15), %eax
	jmp	.LBB12_82
.LBB12_80:                              #   in Loop: Header=BB12_72 Depth=1
	movl	-9(%r15), %eax
	jmp	.LBB12_82
.LBB12_81:                              #   in Loop: Header=BB12_72 Depth=1
	movq	-17(%r15), %rax
.LBB12_82:                              #   in Loop: Header=BB12_72 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %rax
	ja	.LBB12_70
.LBB12_83:                              #   in Loop: Header=BB12_72 Depth=1
	movq	luaRedisGenericCommand.cached_objects(,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB12_85
# %bb.84:                               #   in Loop: Header=BB12_72 Depth=1
	callq	decrRefCount
.LBB12_85:                              #   in Loop: Header=BB12_72 Depth=1
	movq	%r14, luaRedisGenericCommand.cached_objects(,%rbx,8)
	movzbl	-1(%r15), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_88
# %bb.86:                               #   in Loop: Header=BB12_72 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI12_2(,%rcx,8)
.LBB12_87:                              #   in Loop: Header=BB12_72 Depth=1
	shrq	$3, %rax
	jmp	.LBB12_93
.LBB12_88:                              #   in Loop: Header=BB12_72 Depth=1
	xorl	%eax, %eax
	jmp	.LBB12_93
.LBB12_89:                              #   in Loop: Header=BB12_72 Depth=1
	movzbl	-2(%r15), %eax
	jmp	.LBB12_93
.LBB12_90:                              #   in Loop: Header=BB12_72 Depth=1
	movzwl	-3(%r15), %eax
	jmp	.LBB12_93
.LBB12_91:                              #   in Loop: Header=BB12_72 Depth=1
	movl	-5(%r15), %eax
	jmp	.LBB12_93
.LBB12_92:                              #   in Loop: Header=BB12_72 Depth=1
	movq	-9(%r15), %rax
.LBB12_93:                              #   in Loop: Header=BB12_72 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, luaRedisGenericCommand.cached_objects_len(,%rbx,8)
	jmp	.LBB12_71
.LBB12_94:
	cmpq	luaRedisGenericCommand.argv(%rip), %rdi
	je	.LBB12_96
# %bb.95:
	callq	zfree
	movq	$0, luaRedisGenericCommand.argv(%rip)
	movl	$0, luaRedisGenericCommand.argv_size(%rip)
.LBB12_96:
	addl	$-1, luaRedisGenericCommand.inuse(%rip)
	testl	%r13d, %r13d
	je	.LBB12_27
.LBB12_97:
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	lua_pushstring
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%r15, %rdi
	callq	lua_error
	movl	$42, __A_VARIABLE(%rip)
.LBB12_98:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_99:
	callq	writeCommandsDeniedByDiskError
	cmpl	$0, server+3052(%rip)
	je	.LBB12_113
# %bb.100:
	cmpl	$0, server+3056(%rip)
	jne	.LBB12_113
# %bb.101:
	movl	$.L.str.24, %esi
	jmp	.LBB12_67
.LBB12_102:
	movl	32(%r12), %eax
	testb	%al, %al
	js	.LBB12_121
# %bb.103:
	testb	$1, %al
	jne	.LBB12_122
.LBB12_104:
	cmpl	$0, server+2924(%rip)
	jne	.LBB12_123
	jmp	.LBB12_105
.LBB12_113:
	movq	server+2464(%rip), %rcx
	movl	server+860(%rip), %edx
	testq	%rcx, %rcx
	je	.LBB12_118
# %bb.114:
	cmpl	$0, server+2556(%rip)
	je	.LBB12_118
# %bb.115:
	testl	%edx, %edx
	jne	.LBB12_118
# %bb.116:
	movq	server+3008(%rip), %rsi
	testb	$2, 160(%rsi)
	jne	.LBB12_118
# %bb.117:
	movq	shared+192(%rip), %rax
	movq	8(%rax), %rsi
	jmp	.LBB12_67
.LBB12_118:
	testl	%eax, %eax
	je	.LBB12_53
# %bb.119:
	cmpl	$2, %eax
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB12_148
# %bb.120:
	movq	shared+176(%rip), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdi
	callq	luaPushError
	jmp	.LBB12_68
.LBB12_121:
	movl	$1, server+3052(%rip)
	testb	$1, %al
	je	.LBB12_104
.LBB12_122:
	movl	$1, server+3048(%rip)
	cmpl	$0, server+2924(%rip)
	je	.LBB12_105
.LBB12_123:
	cmpl	$0, server+860(%rip)
	jne	.LBB12_105
# %bb.124:
	movq	server+3008(%rip), %rax
	testb	$2, 160(%rax)
	jne	.LBB12_105
# %bb.125:
	movl	$-131585, %ecx          # imm = 0xFFFDFDFF
	movq	-48(%rbp), %rdi         # 8-byte Reload
	andl	160(%rdi), %ecx
	movl	%ecx, 160(%rdi)
	movl	$131584, %edx           # imm = 0x20200
	andl	160(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 160(%rdi)
	movq	80(%rdi), %rsi
	movq	72(%rdi), %rdx
	movl	64(%rdi), %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	getNodeByQuery
	movq	server+2944(%rip), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_105
# %bb.126:
	movl	$.L.str.26, %esi
	jmp	.LBB12_67
.LBB12_105:
	movl	server+3056(%rip), %eax
	testl	%eax, %eax
	je	.LBB12_111
# %bb.106:
	cmpl	$0, server+3060(%rip)
	jne	.LBB12_111
# %bb.107:
	movq	server+3008(%rip), %rdi
	testb	$8, 160(%rdi)
	jne	.LBB12_112
# %bb.108:
	cmpl	$0, server+3048(%rip)
	je	.LBB12_112
# %bb.109:
	cmpl	$0, server+3064(%rip)
	je	.LBB12_112
# %bb.110:
	callq	execCommandPropagateMulti
	movl	$1, server+3060(%rip)
	movl	server+3056(%rip), %eax
.LBB12_111:
	testl	%eax, %eax
	je	.LBB12_127
.LBB12_112:
	movl	server+3064(%rip), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	shll	$2, %eax
	andl	$8, %eax
	leal	(%rax,%rcx,4), %esi
	addl	$3, %esi
	jmp	.LBB12_128
.LBB12_127:
	movl	$3, %esi
.LBB12_128:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	call
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	movl	528(%rbx), %eax
	movslq	%eax, %rsi
	jne	.LBB12_131
# %bb.129:
	cmpl	$16383, %eax            # imm = 0x3FFF
	jg	.LBB12_131
# %bb.130:
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	532(%rax), %r14
	movb	$0, 532(%rax,%rsi)
	movl	$0, 528(%rax)
	jmp	.LBB12_134
.LBB12_131:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	532(%rbx), %rdi
	callq	sdsnewlen
	movq	%rax, %r14
	movl	$0, 528(%rbx)
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	je	.LBB12_134
# %bb.132:                              # %.preheader1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB12_133:                             # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	16(%rax), %rsi
	movq	8(%rsi), %rdx
	addq	$16, %rsi
	movq	%r14, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	112(%rbx), %rdi
	movq	(%rdi), %rsi
	callq	listDelNode
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB12_133
.LBB12_134:
	testl	%r13d, %r13d
	je	.LBB12_136
# %bb.135:
	xorl	%eax, %eax
	cmpb	$45, (%r14)
	cmovnel	%eax, %r13d
	jmp	.LBB12_137
.LBB12_136:
	xorl	%r13d, %r13d
.LBB12_137:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	redisProtocolToLuaType
	cmpl	$0, ldb+4(%rip)
	je	.LBB12_140
# %bb.138:
	cmpl	$0, ldb+300(%rip)
	je	.LBB12_140
# %bb.139:
	movl	$.L.str.171, %edi
	callq	sdsnew
	movq	%rax, -144(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%r14, %rsi
	callq	ldbRedisProtocolToHuman
	movq	-144(%rbp), %rdi
	callq	ldbLogWithMaxLen
	movl	$42, __A_VARIABLE(%rip)
.LBB12_140:
	testb	$1, 33(%r12)
	je	.LBB12_145
# %bb.141:
	cmpl	$0, server+3056(%rip)
	jne	.LBB12_145
# %bb.142:
	cmpb	$42, (%r14)
	jne	.LBB12_145
# %bb.143:
	cmpb	$45, 1(%r14)
	je	.LBB12_145
# %bb.144:
	movq	%r15, %rdi
	callq	luaSortArray
.LBB12_145:
	movq	-48(%rbp), %r12         # 8-byte Reload
	leaq	532(%r12), %rax
	cmpq	%rax, %r14
	je	.LBB12_147
# %bb.146:
	movq	%r14, %rdi
	callq	sdsfree
.LBB12_147:
	movq	$0, 120(%r12)
	jmp	.LBB12_68
.LBB12_148:
	callq	sdsempty
	movq	%rax, %rbx
	movl	server+2028(%rip), %edi
	callq	strerror
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	luaPushError
	movq	%rbx, %rdi
	callq	sdsfree
	jmp	.LBB12_68
.Lfunc_end12:
	.size	luaRedisGenericCommand, .Lfunc_end12-luaRedisGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_18
	.quad	.LBB12_19
	.quad	.LBB12_20
	.quad	.LBB12_21
	.quad	.LBB12_22
.LJTI12_1:
	.quad	.LBB12_77
	.quad	.LBB12_79
	.quad	.LBB12_80
	.quad	.LBB12_81
.LJTI12_2:
	.quad	.LBB12_87
	.quad	.LBB12_89
	.quad	.LBB12_90
	.quad	.LBB12_91
	.quad	.LBB12_92
                                        # -- End function
	.text
	.globl	ldbLogRedisReply        # -- Begin function ldbLogRedisReply
	.p2align	4, 0x90
	.type	ldbLogRedisReply,@function
ldbLogRedisReply:                       # @ldbLogRedisReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.171, %edi
	callq	sdsnew
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	ldbRedisProtocolToHuman
	movq	-16(%rbp), %rdi
	callq	ldbLogWithMaxLen
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ldbLogRedisReply, .Lfunc_end13-ldbLogRedisReply
                                        # -- End function
	.globl	luaRedisCallCommand     # -- Begin function luaRedisCallCommand
	.p2align	4, 0x90
	.type	luaRedisCallCommand,@function
luaRedisCallCommand:                    # @luaRedisCallCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	luaRedisGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	luaRedisCallCommand, .Lfunc_end14-luaRedisCallCommand
                                        # -- End function
	.globl	luaRedisPCallCommand    # -- Begin function luaRedisPCallCommand
	.p2align	4, 0x90
	.type	luaRedisPCallCommand,@function
luaRedisPCallCommand:                   # @luaRedisPCallCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	luaRedisGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	luaRedisPCallCommand, .Lfunc_end15-luaRedisPCallCommand
                                        # -- End function
	.globl	luaRedisSha1hexCommand  # -- Begin function luaRedisSha1hexCommand
	.p2align	4, 0x90
	.type	luaRedisSha1hexCommand,@function
luaRedisSha1hexCommand:                 # @luaRedisSha1hexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	movq	%rdi, %rbx
	callq	lua_gettop
	cmpl	$1, %eax
	jne	.LBB16_1
# %bb.2:
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_tolstring
	movq	%rax, %r14
	movl	-40(%rbp), %r15d
	leaq	-208(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	SHA1Update
	leaq	-64(%rbp), %rdi
	movq	%r12, %rsi
	callq	SHA1Final
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	-64(%rbp,%rax), %ecx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	movzbl	.L.str(%rdx), %edx
	movb	%dl, -112(%rbp,%rax,2)
	andl	$15, %ecx
	movzbl	.L.str(%rcx), %ecx
	movb	%cl, -111(%rbp,%rax,2)
	addq	$1, %rax
	cmpq	$20, %rax
	jne	.LBB16_3
# %bb.4:
	movb	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$1, %eax
	jmp	.LBB16_5
.LBB16_1:
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	callq	lua_error
.LBB16_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	luaRedisSha1hexCommand, .Lfunc_end16-luaRedisSha1hexCommand
                                        # -- End function
	.globl	luaRedisReturnSingleFieldTable # -- Begin function luaRedisReturnSingleFieldTable
	.p2align	4, 0x90
	.type	luaRedisReturnSingleFieldTable,@function
luaRedisReturnSingleFieldTable:         # @luaRedisReturnSingleFieldTable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lua_gettop
	cmpl	$1, %eax
	jne	.LBB17_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$4, %eax
	jne	.LBB17_2
# %bb.3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	jmp	.LBB17_4
.LBB17_2:
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	luaPushError
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	luaRedisReturnSingleFieldTable, .Lfunc_end17-luaRedisReturnSingleFieldTable
                                        # -- End function
	.globl	luaRedisErrorReplyCommand # -- Begin function luaRedisErrorReplyCommand
	.p2align	4, 0x90
	.type	luaRedisErrorReplyCommand,@function
luaRedisErrorReplyCommand:              # @luaRedisErrorReplyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.2, %esi
	callq	luaRedisReturnSingleFieldTable
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	luaRedisErrorReplyCommand, .Lfunc_end18-luaRedisErrorReplyCommand
                                        # -- End function
	.globl	luaRedisStatusReplyCommand # -- Begin function luaRedisStatusReplyCommand
	.p2align	4, 0x90
	.type	luaRedisStatusReplyCommand,@function
luaRedisStatusReplyCommand:             # @luaRedisStatusReplyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.1, %esi
	callq	luaRedisReturnSingleFieldTable
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	luaRedisStatusReplyCommand, .Lfunc_end19-luaRedisStatusReplyCommand
                                        # -- End function
	.globl	luaRedisReplicateCommandsCommand # -- Begin function luaRedisReplicateCommandsCommand
	.p2align	4, 0x90
	.type	luaRedisReplicateCommandsCommand,@function
luaRedisReplicateCommandsCommand:       # @luaRedisReplicateCommandsCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$0, server+3048(%rip)
	je	.LBB20_2
# %bb.1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB20_3
.LBB20_2:
	movl	$1, server+3056(%rip)
	callq	rand
	movl	%eax, %edi
	callq	redisSrand48
	movq	%rbx, %rdi
	movl	$1, %esi
.LBB20_3:
	callq	lua_pushboolean
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	luaRedisReplicateCommandsCommand, .Lfunc_end20-luaRedisReplicateCommandsCommand
                                        # -- End function
	.globl	luaRedisBreakpointCommand # -- Begin function luaRedisBreakpointCommand
	.p2align	4, 0x90
	.type	luaRedisBreakpointCommand,@function
luaRedisBreakpointCommand:              # @luaRedisBreakpointCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, ldb+4(%rip)
	je	.LBB21_2
# %bb.1:
	movl	$1, ldb+304(%rip)
	movl	$1, %esi
	jmp	.LBB21_3
.LBB21_2:
	xorl	%esi, %esi
.LBB21_3:
	callq	lua_pushboolean
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	luaRedisBreakpointCommand, .Lfunc_end21-luaRedisBreakpointCommand
                                        # -- End function
	.globl	luaRedisDebugCommand    # -- Begin function luaRedisDebugCommand
	.p2align	4, 0x90
	.type	luaRedisDebugCommand,@function
luaRedisDebugCommand:                   # @luaRedisDebugCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	cmpl	$0, ldb+4(%rip)
	je	.LBB22_6
# %bb.1:
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, %r14d
	callq	sdsempty
	movl	ldb+324(%rip), %edx
	movl	$.L.str.29, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	testl	%r14d, %r14d
	je	.LBB22_5
# %bb.2:
	movl	%r14d, %edx
	negl	%edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	je	.LBB22_5
# %bb.3:                                # %.preheader
	movl	$1, %ebx
	subl	%r14d, %ebx
	.p2align	4, 0x90
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	movl	$.L.str.30, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	incl	%ebx
	jne	.LBB22_4
.LBB22_5:
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB22_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	luaRedisDebugCommand, .Lfunc_end22-luaRedisDebugCommand
                                        # -- End function
	.globl	ldbCatStackValue        # -- Begin function ldbCatStackValue
	.p2align	4, 0x90
	.type	ldbCatStackValue,@function
ldbCatStackValue:                       # @ldbCatStackValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	ldbCatStackValue, .Lfunc_end23-ldbCatStackValue
                                        # -- End function
	.globl	luaRedisSetReplCommand  # -- Begin function luaRedisSetReplCommand
	.p2align	4, 0x90
	.type	luaRedisSetReplCommand,@function
luaRedisSetReplCommand:                 # @luaRedisSetReplCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_gettop
	cmpl	$0, server+3056(%rip)
	je	.LBB24_1
# %bb.3:
	cmpl	$1, %eax
	jne	.LBB24_4
# %bb.5:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	cvttsd2si	%xmm0, %eax
	cmpl	$4, %eax
	jb	.LBB24_7
# %bb.6:
	movl	$.L.str.33, %esi
	jmp	.LBB24_2
.LBB24_1:
	movl	$.L.str.31, %esi
	jmp	.LBB24_2
.LBB24_4:
	movl	$.L.str.32, %esi
.LBB24_2:
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	callq	lua_error
.LBB24_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB24_7:
	movl	%eax, server+3064(%rip)
	xorl	%eax, %eax
	jmp	.LBB24_8
.Lfunc_end24:
	.size	luaRedisSetReplCommand, .Lfunc_end24-luaRedisSetReplCommand
                                        # -- End function
	.globl	luaLogCommand           # -- Begin function luaLogCommand
	.p2align	4, 0x90
	.type	luaLogCommand,@function
luaLogCommand:                          # @luaLogCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	callq	lua_gettop
	cmpl	$1, %eax
	jg	.LBB25_3
# %bb.1:
	movl	$.L.str.34, %esi
	jmp	.LBB25_2
.LBB25_3:
	movl	%eax, %r12d
	movl	%eax, %ebx
	negl	%ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	je	.LBB25_4
# %bb.5:
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	lua_tonumber
	cvttsd2si	%xmm0, %eax
	cmpl	$4, %eax
	jb	.LBB25_7
# %bb.6:
	movl	$.L.str.36, %esi
	jmp	.LBB25_2
.LBB25_4:
	movl	$.L.str.35, %esi
.LBB25_2:
	movq	%r15, %rdi
	callq	lua_pushstring
	movq	%r15, %rdi
	callq	lua_error
.LBB25_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_7:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	sdsempty
	movq	%rax, %r13
	movl	$1, %r14d
	subl	%r12d, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB25_8
	.p2align	4, 0x90
.LBB25_11:                              #   in Loop: Header=BB25_8 Depth=1
	movq	-56(%rbp), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	sdscatlen
	movq	%rax, %r13
.LBB25_12:                              #   in Loop: Header=BB25_8 Depth=1
	addl	$1, %r12d
	movl	%r14d, %eax
	addl	%r12d, %eax
	je	.LBB25_13
.LBB25_8:                               # =>This Inner Loop Header: Depth=1
	leal	(%r14,%r12), %esi
	movq	%r15, %rdi
	leaq	-56(%rbp), %rdx
	callq	lua_tolstring
	testq	%rax, %rax
	je	.LBB25_12
# %bb.9:                                #   in Loop: Header=BB25_8 Depth=1
	movq	%rax, %rbx
	testl	%r12d, %r12d
	je	.LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_8 Depth=1
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	sdscatlen
	movq	%rax, %r13
	jmp	.LBB25_11
.LBB25_13:
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	%r13, %rsi
	callq	serverLogRaw
	movq	%r13, %rdi
	callq	sdsfree
	xorl	%eax, %eax
	jmp	.LBB25_14
.Lfunc_end25:
	.size	luaLogCommand, .Lfunc_end25-luaLogCommand
                                        # -- End function
	.globl	luaLoadLib              # -- Begin function luaLoadLib
	.p2align	4, 0x90
	.type	luaLoadLib,@function
luaLoadLib:                             # @luaLoadLib
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	luaLoadLib, .Lfunc_end26-luaLoadLib
                                        # -- End function
	.globl	luaLoadLibraries        # -- Begin function luaLoadLibraries
	.p2align	4, 0x90
	.type	luaLoadLibraries,@function
luaLoadLibraries:                       # @luaLoadLibraries
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$luaopen_base, %esi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_table, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_string, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_math, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_debug, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_cjson, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.41, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_struct, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_cmsgpack, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaopen_bit, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_call
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	luaLoadLibraries, .Lfunc_end27-luaLoadLibraries
                                        # -- End function
	.globl	luaRemoveUnsupportedFunctions # -- Begin function luaRemoveUnsupportedFunctions
	.p2align	4, 0x90
	.type	luaRemoveUnsupportedFunctions,@function
luaRemoveUnsupportedFunctions:          # @luaRemoveUnsupportedFunctions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_pushnil
	movl	$.L.str.45, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	$.L.str.46, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	luaRemoveUnsupportedFunctions, .Lfunc_end28-luaRemoveUnsupportedFunctions
                                        # -- End function
	.globl	scriptingEnableGlobalsProtection # -- Begin function scriptingEnableGlobalsProtection
	.p2align	4, 0x90
	.type	scriptingEnableGlobalsProtection,@function
scriptingEnableGlobalsProtection:       # @scriptingEnableGlobalsProtection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, %r14
	callq	sdsempty
	movq	%rax, %r15
	movl	$.L.str.48, %eax
	movq	%rax, %xmm0
	movl	$.L.str.47, %r12d
	movq	%r12, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -288(%rbp)
	movl	$.L.str.50, %eax
	movq	%rax, %xmm0
	movl	$.L.str.49, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -272(%rbp)
	movl	$.L.str.52, %eax
	movq	%rax, %xmm0
	movl	$.L.str.51, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -256(%rbp)
	movl	$.L.str.54, %eax
	movq	%rax, %xmm0
	movl	$.L.str.53, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -240(%rbp)
	movl	$.L.str.55, %eax
	movq	%rax, %xmm0
	movl	$.L.str.56, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	movdqa	%xmm0, -224(%rbp)
	movl	$.L.str.57, %eax
	movq	%rax, %xmm0
	movl	$.L.str.58, %eax
	movq	%rax, %xmm2
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	movdqa	%xmm0, -208(%rbp)
	movl	$.L.str.60, %eax
	movq	%rax, %xmm0
	movl	$.L.str.59, %eax
	movq	%rax, %xmm3
	punpcklqdq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0]
	movdqa	%xmm3, -192(%rbp)
	movl	$.L.str.61, %eax
	movq	%rax, %xmm0
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	movdqa	%xmm0, -176(%rbp)
	movl	$.L.str.62, %eax
	movq	%rax, %xmm0
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	movdqa	%xmm0, -160(%rbp)
	movl	$.L.str.63, %eax
	movq	%rax, %xmm0
	movdqa	%xmm0, -144(%rbp)
	leaq	-280(%rbp), %rbx
	.p2align	4, 0x90
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r15
	movq	(%rbx), %r12
	addq	$8, %rbx
	testq	%r12, %r12
	jne	.LBB29_1
# %bb.2:
	movzbl	-1(%r15), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB29_3
# %bb.4:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_5:
	shrq	$3, %rdx
	jmp	.LBB29_10
.LBB29_3:
	xorl	%edx, %edx
	jmp	.LBB29_10
.LBB29_6:
	movzbl	-3(%r15), %edx
	jmp	.LBB29_10
.LBB29_7:
	movzwl	-5(%r15), %edx
	jmp	.LBB29_10
.LBB29_8:
	movl	-9(%r15), %edx
	jmp	.LBB29_10
.LBB29_9:
	movq	-17(%r15), %rdx
.LBB29_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.64, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaL_loadbuffer
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	scriptingEnableGlobalsProtection, .Lfunc_end29-scriptingEnableGlobalsProtection
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI29_0:
	.quad	.LBB29_5
	.quad	.LBB29_6
	.quad	.LBB29_7
	.quad	.LBB29_8
	.quad	.LBB29_9
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function scriptingInit
.LCPI30_0:
	.quad	4607182418800017408     # double 1
.LCPI30_1:
	.quad	4611686018427387904     # double 2
.LCPI30_2:
	.quad	4613937818241073152     # double 3
	.text
	.globl	scriptingInit
	.p2align	4, 0x90
	.type	scriptingInit,@function
scriptingInit:                          # @scriptingInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	callq	luaL_newstate
	movq	%rax, %rbx
	testl	%r14d, %r14d
	je	.LBB30_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+3000(%rip)
	movl	$0, server+3068(%rip)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, ldb(%rip)
	callq	listCreate
	movq	%rax, ldb+16(%rip)
	movq	$sdsfree, 24(%rax)
	callq	listCreate
	movq	%rax, ldb+32(%rip)
	movq	$0, ldb+312(%rip)
	movl	$0, ldb+320(%rip)
	callq	sdsempty
	movq	%rax, ldb+328(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_2:
	movq	%rbx, %rdi
	callq	luaLoadLibraries
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	$.L.str.45, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	$.L.str.46, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$shaScriptObjectDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+3016(%rip)
	movq	$0, server+3024(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisCallCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisPCallCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaLogCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.69, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movsd	.LCPI30_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisSha1hexCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisErrorReplyCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisStatusReplyCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisReplicateCommandsCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisSetReplCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.77, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.79, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	movsd	.LCPI30_2(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.82, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisBreakpointCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$luaRedisDebugCommand, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.83, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$.L.str.39, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movl	$.L.str.84, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$redis_math_random, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movl	$redis_math_randomseed, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settable
	movl	$.L.str.39, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$.L.str.86, %edi
	callq	strlen
	movl	$.L.str.86, %esi
	movl	$.L.str.87, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	luaL_loadbuffer
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	movl	$.L.str.88, %edi
	callq	strlen
	movl	$.L.str.88, %esi
	movl	$.L.str.89, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	luaL_loadbuffer
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	cmpq	$0, server+3000(%rip)
	jne	.LBB30_4
# %bb.3:
	movl	$-1, %edi
	callq	createClient
	movq	%rax, server+3000(%rip)
	orb	$1, 161(%rax)
.LBB30_4:
	movq	%rbx, %rdi
	callq	scriptingEnableGlobalsProtection
	movq	%rbx, server+2992(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	scriptingInit, .Lfunc_end30-scriptingInit
                                        # -- End function
	.globl	ldbInit                 # -- Begin function ldbInit
	.p2align	4, 0x90
	.type	ldbInit,@function
ldbInit:                                # @ldbInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, ldb(%rip)
	callq	listCreate
	movq	%rax, ldb+16(%rip)
	movq	$sdsfree, 24(%rax)
	callq	listCreate
	movq	%rax, ldb+32(%rip)
	movq	$0, ldb+312(%rip)
	movl	$0, ldb+320(%rip)
	callq	sdsempty
	movq	%rax, ldb+328(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end31:
	.size	ldbInit, .Lfunc_end31-ldbInit
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function redis_math_random
.LCPI32_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI32_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	redis_math_random
	.p2align	4, 0x90
	.type	redis_math_random,@function
redis_math_random:                      # @redis_math_random
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r12
	xorl	%eax, %eax
	callq	redisLrand48
	cltq
	movq	%rax, %rcx
	shlq	$30, %rcx
	addq	%rax, %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$61, %rcx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shll	$31, %edx
	subl	%edx, %ecx
	addl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	divsd	.LCPI32_0(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	callq	lua_gettop
	cmpl	$2, %eax
	je	.LBB32_8
# %bb.1:
	cmpl	$1, %eax
	je	.LBB32_4
# %bb.2:
	testl	%eax, %eax
	jne	.LBB32_11
# %bb.3:
	movq	%r12, %rdi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movl	$1, %r14d
	jmp	.LBB32_12
.LBB32_8:
	movl	$1, %r14d
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	movq	%r12, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	subl	%r15d, %ebx
	jge	.LBB32_10
# %bb.9:
	movl	$.L.str.90, %edx
	movq	%r12, %rdi
	movl	$2, %esi
	callq	luaL_argerror
.LBB32_10:
	addl	$1, %ebx
	cvtsi2sd	%ebx, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB32_7
.LBB32_4:
	movl	$1, %r14d
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jg	.LBB32_6
# %bb.5:
	movl	$.L.str.90, %edx
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB32_6:
	cvtsi2sd	%ebx, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor
	addsd	.LCPI32_1(%rip), %xmm0
.LBB32_7:
	movq	%r12, %rdi
	callq	lua_pushnumber
	jmp	.LBB32_12
.LBB32_11:
	movl	$.L.str.27, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	%eax, %r14d
.LBB32_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	redis_math_random, .Lfunc_end32-redis_math_random
                                        # -- End function
	.globl	redis_math_randomseed   # -- Begin function redis_math_randomseed
	.p2align	4, 0x90
	.type	redis_math_randomseed,@function
redis_math_randomseed:                  # @redis_math_randomseed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	luaL_checkinteger
	movl	%eax, %edi
	callq	redisSrand48
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	redis_math_randomseed, .Lfunc_end33-redis_math_randomseed
                                        # -- End function
	.globl	scriptingRelease        # -- Begin function scriptingRelease
	.p2align	4, 0x90
	.type	scriptingRelease,@function
scriptingRelease:                       # @scriptingRelease
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+3016(%rip), %rdi
	callq	dictRelease
	movq	$0, server+3024(%rip)
	movq	server+2992(%rip), %rdi
	callq	lua_close
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	scriptingRelease, .Lfunc_end34-scriptingRelease
                                        # -- End function
	.globl	scriptingReset          # -- Begin function scriptingReset
	.p2align	4, 0x90
	.type	scriptingReset,@function
scriptingReset:                         # @scriptingReset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+3016(%rip), %rdi
	callq	dictRelease
	movq	$0, server+3024(%rip)
	movq	server+2992(%rip), %rdi
	callq	lua_close
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	scriptingInit
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	scriptingReset, .Lfunc_end35-scriptingReset
                                        # -- End function
	.globl	luaSetGlobalArray       # -- Begin function luaSetGlobalArray
	.p2align	4, 0x90
	.type	luaSetGlobalArray,@function
luaSetGlobalArray:                      # @luaSetGlobalArray
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	testl	%ebx, %ebx
	jle	.LBB36_11
# %bb.1:
	movl	%ebx, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB36_2
.LBB36_9:                               #   in Loop: Header=BB36_2 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB36_10:                              #   in Loop: Header=BB36_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	lua_pushlstring
	addq	$1, %rbx
	movq	%r12, %rdi
	movl	$-2, %esi
	movl	%ebx, %edx
	callq	lua_rawseti
	cmpq	%rbx, %r13
	je	.LBB36_11
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB36_3
# %bb.4:                                #   in Loop: Header=BB36_2 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI36_0(,%rax,8)
.LBB36_5:                               #   in Loop: Header=BB36_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB36_10
.LBB36_3:                               #   in Loop: Header=BB36_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB36_10
.LBB36_6:                               #   in Loop: Header=BB36_2 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB36_10
.LBB36_7:                               #   in Loop: Header=BB36_2 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB36_10
.LBB36_8:                               #   in Loop: Header=BB36_2 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB36_10
.LBB36_11:
	movq	%r12, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	movq	%r14, %rdx
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	luaSetGlobalArray, .Lfunc_end36-luaSetGlobalArray
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI36_0:
	.quad	.LBB36_5
	.quad	.LBB36_6
	.quad	.LBB36_7
	.quad	.LBB36_8
	.quad	.LBB36_9
                                        # -- End function
	.text
	.globl	luaCreateFunction       # -- Begin function luaCreateFunction
	.p2align	4, 0x90
	.type	luaCreateFunction,@function
luaCreateFunction:                      # @luaCreateFunction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movw	$24422, -112(%rbp)      # imm = 0x5F66
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	8(%rdx), %rbx
	movzbl	-1(%rbx), %r14d
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB37_1
# %bb.2:
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI37_0(,%rax,8)
.LBB37_3:
	movq	%rsi, %r12
	shrq	$3, %r14
	jmp	.LBB37_8
.LBB37_7:
	movq	%rsi, %r12
	movq	-17(%rbx), %r14
	jmp	.LBB37_8
.LBB37_5:
	movq	%rsi, %r12
	movzwl	-5(%rbx), %r14d
	jmp	.LBB37_8
.LBB37_6:
	movq	%rsi, %r12
	movl	-9(%rbx), %r14d
	jmp	.LBB37_8
.LBB37_4:
	movq	%rsi, %r12
	movzbl	-3(%rbx), %r14d
	jmp	.LBB37_8
.LBB37_1:
	movq	%rsi, %r12
	xorl	%r14d, %r14d
.LBB37_8:
	leaq	-110(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	-240(%rbp), %r15
	movq	%r15, %rdi
	callq	SHA1Init
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	SHA1Update
	leaq	-144(%rbp), %rdi
	movq	%r15, %rsi
	callq	SHA1Final
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB37_9:                               # =>This Inner Loop Header: Depth=1
	movzbl	-144(%rbp,%rax), %ecx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	movzbl	.L.str(%rdx), %edx
	movb	%dl, -110(%rbp,%rax,2)
	andl	$15, %ecx
	movzbl	.L.str(%rcx), %ecx
	movb	%cl, -109(%rbp,%rax,2)
	addq	$1, %rax
	cmpq	$20, %rax
	jne	.LBB37_9
# %bb.10:
	movb	$0, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %esi
	movq	%r13, %rdi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	server+3016(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB37_12
# %bb.11:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	sdsfree
	movq	(%rbx), %r14
	jmp	.LBB37_42
.LBB37_12:
	callq	sdsempty
	movl	$.L.str.91, %esi
	movq	%rax, %rdi
	callq	sdscat
	leaq	-112(%rbp), %rsi
	movl	$42, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.92, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB37_13
# %bb.14:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI37_1(,%rcx,8)
.LBB37_15:
	shrq	$3, %rdx
	jmp	.LBB37_20
.LBB37_19:
	movq	-17(%rsi), %rdx
	jmp	.LBB37_20
.LBB37_17:
	movzwl	-5(%rsi), %edx
	jmp	.LBB37_20
.LBB37_18:
	movl	-9(%rsi), %edx
	jmp	.LBB37_20
.LBB37_16:
	movzbl	-3(%rsi), %edx
	jmp	.LBB37_20
.LBB37_13:
	xorl	%edx, %edx
.LBB37_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.93, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r13
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB37_21
# %bb.22:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI37_2(,%rax,8)
.LBB37_23:
	shrq	$3, %rdx
	jmp	.LBB37_28
.LBB37_27:
	movq	-17(%r13), %rdx
	jmp	.LBB37_28
.LBB37_25:
	movzwl	-5(%r13), %edx
	jmp	.LBB37_28
.LBB37_26:
	movl	-9(%r13), %edx
	jmp	.LBB37_28
.LBB37_24:
	movzbl	-3(%r13), %edx
	jmp	.LBB37_28
.LBB37_21:
	xorl	%edx, %edx
.LBB37_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.94, %ecx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	luaL_loadbuffer
	testl	%eax, %eax
	je	.LBB37_32
# %bb.29:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB37_31
# %bb.30:
	movq	%r12, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.95, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB37_31:
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r14, %rdi
	callq	sdsfree
	movq	%r13, %rdi
	jmp	.LBB37_36
.LBB37_32:
	movq	%r13, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	testl	%eax, %eax
	je	.LBB37_37
# %bb.33:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB37_35
# %bb.34:
	movq	%r12, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.96, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB37_35:
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r14, %rdi
.LBB37_36:
	callq	sdsfree
	xorl	%r14d, %r14d
.LBB37_42:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_37:
	movq	server+3016(%rip), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB37_38
# %bb.41:
	movq	%r14, %rdi
	callq	sdsZmallocSize
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	getStringObjectSdsUsedMemory
	addq	%r15, %rax
	addq	%rax, server+3024(%rip)
	movq	%rbx, %rdi
	callq	incrRefCount
	jmp	.LBB37_42
.LBB37_38:
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	jne	.LBB37_40
# %bb.39:
	movq	server+3000(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB37_40:
	movl	$.L.str.97, %edx
	movl	$.L.str.98, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$1228, %r8d             # imm = 0x4CC
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end37:
	.size	luaCreateFunction, .Lfunc_end37-luaCreateFunction
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI37_0:
	.quad	.LBB37_3
	.quad	.LBB37_4
	.quad	.LBB37_5
	.quad	.LBB37_6
	.quad	.LBB37_7
.LJTI37_1:
	.quad	.LBB37_15
	.quad	.LBB37_16
	.quad	.LBB37_17
	.quad	.LBB37_18
	.quad	.LBB37_19
.LJTI37_2:
	.quad	.LBB37_23
	.quad	.LBB37_24
	.quad	.LBB37_25
	.quad	.LBB37_26
	.quad	.LBB37_27
                                        # -- End function
	.text
	.globl	luaMaskCountHook        # -- Begin function luaMaskCountHook
	.p2align	4, 0x90
	.type	luaMaskCountHook,@function
luaMaskCountHook:                       # @luaMaskCountHook
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	mstime
	subq	server+3040(%rip), %rax
	movl	server+3068(%rip), %ecx
	cmpq	server+3032(%rip), %rax
	jl	.LBB38_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB38_3
# %bb.2:
	movl	$.L.str.99, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, server+3068(%rip)
	movq	server+3008(%rip), %rdi
	callq	protectClient
	movl	server+3068(%rip), %ecx
.LBB38_3:
	testl	%ecx, %ecx
	je	.LBB38_5
# %bb.4:
	callq	processEventsWhileBlocked
.LBB38_5:
	cmpl	$0, server+3072(%rip)
	je	.LBB38_7
# %bb.6:
	movl	$.L.str.100, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.101, %esi
	movq	%rbx, %rdi
	callq	lua_pushstring
	movq	%rbx, %rdi
	callq	lua_error
.LBB38_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	luaMaskCountHook, .Lfunc_end38-luaMaskCountHook
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function evalGenericCommand
.LCPI39_0:
	.zero	16,191
.LCPI39_1:
	.zero	16,25
.LCPI39_2:
	.zero	16,32
	.text
	.globl	evalGenericCommand
	.p2align	4, 0x90
	.type	evalGenericCommand,@function
evalGenericCommand:                     # @evalGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	server+2992(%rip), %r15
	movq	server+2080(%rip), %r13
	xorl	%edi, %edi
	callq	redisSrand48
	movq	$0, server+3048(%rip)
	movl	server+3076(%rip), %eax
	movl	%eax, server+3056(%rip)
	movabsq	$12884901888, %rax      # imm = 0x300000000
	movq	%rax, server+3060(%rip)
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB39_57
# %bb.1:
	movq	-48(%rbp), %rax
	movslq	64(%rbx), %rcx
	addq	$-3, %rcx
	cmpq	%rcx, %rax
	jle	.LBB39_4
# %bb.2:
	movl	$.L.str.102, %esi
	jmp	.LBB39_3
.LBB39_4:
	testq	%rax, %rax
	js	.LBB39_5
# %bb.6:
	movw	$24422, -96(%rbp)       # imm = 0x5F66
	testl	%r14d, %r14d
	je	.LBB39_7
# %bb.18:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-94(%rbp), %rcx
	leaq	40(%rax), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB39_21
# %bb.19:
	leaq	-54(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB39_21
# %bb.20:
	xorl	%ecx, %ecx
	jmp	.LBB39_22
.LBB39_5:
	movl	$.L.str.103, %esi
.LBB39_3:
	movq	%rbx, %rdi
	callq	addReplyError
.LBB39_57:
	movl	$42, __A_VARIABLE(%rip)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB39_7:
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %r13d
	movl	%r13d, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	ja	.LBB39_8
# %bb.9:
	movl	%r13d, %eax
	andl	$7, %eax
	jmpq	*.LJTI39_0(,%rax,8)
.LBB39_10:
	shrq	$3, %r13
	jmp	.LBB39_15
.LBB39_21:
	movdqu	(%rax), %xmm0
	movdqa	.LCPI39_0(%rip), %xmm1  # xmm1 = [191,191,191,191,191,191,191,191,191,191,191,191,191,191,191,191]
	movdqa	%xmm0, %xmm2
	paddb	%xmm1, %xmm2
	movdqa	.LCPI39_1(%rip), %xmm3  # xmm3 = [25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25]
	movdqa	%xmm2, %xmm4
	pminub	%xmm3, %xmm4
	pcmpeqb	%xmm2, %xmm4
	movdqa	.LCPI39_2(%rip), %xmm2  # xmm2 = [32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32]
	movdqa	%xmm4, %xmm5
	pandn	%xmm0, %xmm5
	paddb	%xmm2, %xmm0
	pand	%xmm4, %xmm0
	por	%xmm5, %xmm0
	movdqu	%xmm0, -94(%rbp)
	movdqu	16(%rax), %xmm0
	paddb	%xmm0, %xmm1
	pminub	%xmm1, %xmm3
	pcmpeqb	%xmm1, %xmm3
	paddb	%xmm0, %xmm2
	pand	%xmm3, %xmm2
	pandn	%xmm0, %xmm3
	por	%xmm2, %xmm3
	movdqu	%xmm3, -78(%rbp)
	movl	$32, %ecx
	.p2align	4, 0x90
.LBB39_22:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %edx
	leal	-65(%rdx), %esi
	leal	32(%rdx), %edi
	cmpb	$26, %sil
	movzbl	%dil, %esi
	cmovael	%edx, %esi
	movb	%sil, -94(%rbp,%rcx)
	movzbl	1(%rax,%rcx), %edx
	leal	-65(%rdx), %esi
	leal	32(%rdx), %edi
	cmpb	$26, %sil
	movzbl	%dil, %esi
	cmovael	%edx, %esi
	movb	%sil, -93(%rbp,%rcx)
	addq	$2, %rcx
	cmpq	$40, %rcx
	jne	.LBB39_22
# %bb.23:
	movb	$0, -54(%rbp)
	jmp	.LBB39_24
.LBB39_14:
	movq	-17(%rcx), %r13
	jmp	.LBB39_15
.LBB39_12:
	movzwl	-5(%rcx), %r13d
	jmp	.LBB39_15
.LBB39_13:
	movl	-9(%rcx), %r13d
	jmp	.LBB39_15
.LBB39_11:
	movzbl	-3(%rcx), %r13d
	jmp	.LBB39_15
.LBB39_8:
	xorl	%r13d, %r13d
.LBB39_15:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-240(%rbp), %r12
	movq	%r12, %rdi
	callq	SHA1Init
	movq	%r12, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r13d, %edx
	callq	SHA1Update
	leaq	-144(%rbp), %rdi
	movq	%r12, %rsi
	callq	SHA1Final
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB39_16:                              # =>This Inner Loop Header: Depth=1
	movzbl	-144(%rbp,%rax), %ecx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	movzbl	.L.str(%rdx), %edx
	movb	%dl, -94(%rbp,%rax,2)
	andl	$15, %ecx
	movzbl	.L.str(%rcx), %ecx
	movb	%cl, -93(%rbp,%rax,2)
	addq	$1, %rax
	cmpq	$20, %rax
	jne	.LBB39_16
# %bb.17:
	movb	$0, -54(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB39_24:
	movl	$.L.str.104, %edx
	movq	%r15, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	leaq	-96(%rbp), %rdx
	movq	%r15, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB39_25
.LBB39_30:
	movq	72(%rbx), %rdx
	addq	$24, %rdx
	movl	-48(%rbp), %ecx
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	callq	luaSetGlobalArray
	movq	72(%rbx), %rax
	movq	-48(%rbp), %rsi
	leaq	(%rax,%rsi,8), %rdx
	addq	$24, %rdx
	movl	64(%rbx), %ecx
	subl	%esi, %ecx
	addl	$-3, %ecx
	movl	$.L.str.107, %esi
	movq	%r15, %rdi
	callq	luaSetGlobalArray
	movq	server+3000(%rip), %rdi
	movq	16(%rbx), %rax
	movl	40(%rax), %esi
	callq	selectDb
	movq	%rbx, server+3008(%rip)
	callq	mstime
	movq	%rax, server+3040(%rip)
	movl	$0, server+3072(%rip)
	cmpq	$0, server+3032(%rip)
	movl	ldb+4(%rip), %eax
	jle	.LBB39_34
# %bb.31:
	testl	%eax, %eax
	jne	.LBB39_34
# %bb.32:
	movl	$luaMaskCountHook, %esi
	movq	%r15, %rdi
	movl	$8, %edx
	jmp	.LBB39_33
.LBB39_25:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	testl	%r14d, %r14d
	je	.LBB39_27
# %bb.26:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	shared+152(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB39_57
.LBB39_34:
	testl	%eax, %eax
	je	.LBB39_36
# %bb.35:
	movq	server+2992(%rip), %rdi
	movl	$luaLdbLineHook, %esi
	movl	$12, %edx
.LBB39_33:
	movl	$100000, %ecx           # imm = 0x186A0
	callq	lua_sethook
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$-2, %ecx
	callq	lua_pcall
	movl	%eax, %r12d
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	lua_sethook
	cmpl	$0, server+3068(%rip)
	je	.LBB39_41
.LBB39_38:
	movl	$0, server+3068(%rip)
	movq	%rbx, %rdi
	callq	unprotectClient
	cmpq	$0, server+2464(%rip)
	je	.LBB39_41
# %bb.39:
	movq	server+2480(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB39_41
# %bb.40:
	callq	queueClientForReprocessing
.LBB39_41:
	movq	$0, server+3008(%rip)
	movq	evalGenericCommand.gc_count(%rip), %rax
	addq	$1, %rax
	movq	%rax, evalGenericCommand.gc_count(%rip)
	cmpq	$50, %rax
	jne	.LBB39_43
# %bb.42:
	movq	%r15, %rdi
	movl	$5, %esi
	movl	$50, %edx
	callq	lua_gc
	movq	$0, evalGenericCommand.gc_count(%rip)
.LBB39_43:
	testl	%r12d, %r12d
	je	.LBB39_45
# %bb.44:
	movq	%r15, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	leaq	-96(%rbp), %rdx
	movl	$.L.str.108, %esi
	movq	%rbx, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movq	%r15, %rdi
	movl	$-3, %esi
	jmp	.LBB39_46
.LBB39_45:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaReplyToRedisReply
	movq	%r15, %rdi
	movl	$-2, %esi
.LBB39_46:
	callq	lua_settop
	cmpl	$0, server+3056(%rip)
	je	.LBB39_49
# %bb.47:
	movq	%rbx, %rdi
	callq	preventCommandPropagation
	cmpl	$0, server+3060(%rip)
	je	.LBB39_49
# %bb.48:
	movl	$.L.str.109, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, -240(%rbp)
	movq	server+960(%rip), %rdi
	movq	16(%rbx), %rax
	movl	40(%rax), %esi
	leaq	-240(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movq	-240(%rbp), %rdi
	callq	decrRefCount
.LBB39_49:
	testl	%r14d, %r14d
	je	.LBB39_57
# %bb.50:
	cmpl	$0, server+3056(%rip)
	jne	.LBB39_57
# %bb.51:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	replicationScriptCacheExists
	testl	%eax, %eax
	jne	.LBB39_57
# %bb.52:
	movq	server+3016(%rip), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	replicationScriptCacheAdd
	testq	%r14, %r14
	je	.LBB39_59
# %bb.53:
	cmpq	%r13, server+2080(%rip)
	jne	.LBB39_55
# %bb.54:
	movl	$.L.str.111, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, %rdi
	callq	resetRefCount
	movq	%rax, %r15
	movl	$.L.str.112, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, %rdi
	callq	resetRefCount
	movq	%rbx, %rdi
	movl	$3, %esi
	movq	%r15, %rdx
	movq	%rax, %rcx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	jmp	.LBB39_56
.LBB39_27:
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaCreateFunction
	testq	%rax, %rax
	je	.LBB39_28
# %bb.29:
	leaq	-96(%rbp), %rdx
	movq	%r15, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	jne	.LBB39_30
# %bb.58:
	movl	$.L.str.105, %edi
	movl	$.L.str.98, %esi
	movl	$1340, %edx             # imm = 0x53C
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB39_36:
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$-2, %ecx
	callq	lua_pcall
	movl	%eax, %r12d
	cmpl	$0, server+3068(%rip)
	jne	.LBB39_38
	jmp	.LBB39_41
.LBB39_55:
	movl	$.L.str.113, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, %rdi
	callq	resetRefCount
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	rewriteClientCommandArgument
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	rewriteClientCommandArgument
.LBB39_56:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	forceCommandPropagation
	jmp	.LBB39_57
.LBB39_28:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB39_57
.LBB39_59:
	movl	$.L.str.110, %edx
	movl	$.L.str.98, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1445, %r8d             # imm = 0x5A5
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end39:
	.size	evalGenericCommand, .Lfunc_end39-evalGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI39_0:
	.quad	.LBB39_10
	.quad	.LBB39_11
	.quad	.LBB39_12
	.quad	.LBB39_13
	.quad	.LBB39_14
                                        # -- End function
	.text
	.globl	luaLdbLineHook          # -- Begin function luaLdbLineHook
	.p2align	4, 0x90
	.type	luaLdbLineHook,@function
luaLdbLineHook:                         # @luaLdbLineHook
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	lua_getstack
	movl	$.L.str.252, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	lua_getinfo
	movl	40(%rbx), %eax
	movl	%eax, ldb+324(%rip)
	movslq	ldb+296(%rip), %rcx
	testq	%rcx, %rcx
	jle	.LBB40_6
# %bb.1:
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
	cmpl	%eax, ldb+40(,%rdx,4)
	je	.LBB40_5
# %bb.3:                                #   in Loop: Header=BB40_2 Depth=1
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB40_2
# %bb.4:
	xorl	%r15d, %r15d
	jmp	.LBB40_6
.LBB40_5:
	movl	$1, %r15d
.LBB40_6:
	movl	$42, __A_VARIABLE(%rip)
	orl	ldb+304(%rip), %r15d
	leaq	56(%rbx), %rdi
	movl	$.L.str.189, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB40_20
# %bb.7:
	xorl	%r12d, %r12d
	cmpl	$3, (%rbx)
	movl	ldb+300(%rip), %eax
	jne	.LBB40_12
# %bb.8:
	testl	%eax, %eax
	jne	.LBB40_12
# %bb.9:
	testl	%r15d, %r15d
	jne	.LBB40_12
# %bb.10:
	callq	mstime
	subq	server+3040(%rip), %rax
	movq	server+3032(%rip), %rcx
	testq	%rcx, %rcx
	movl	$5000, %edx             # imm = 0x1388
	cmovneq	%rcx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB40_20
# %bb.11:
	movl	$1, ldb+300(%rip)
	movl	$1, %eax
	movl	$1, %r12d
.LBB40_12:
	orl	%r15d, %eax
	je	.LBB40_20
# %bb.13:
	testl	%r15d, %r15d
	je	.LBB40_15
# %bb.14:
	cmpl	$0, ldb+304(%rip)
	movl	$.L.str.255, %eax
	movl	$.L.str.254, %ebx
	jmp	.LBB40_16
.LBB40_15:
	testl	%r12d, %r12d
	movl	$.L.str.253, %eax
	movl	$.L.str.256, %ebx
.LBB40_16:
	cmoveq	%rax, %rbx
	movq	$0, ldb+300(%rip)
	callq	sdsempty
	movl	ldb+324(%rip), %edx
	movl	$.L.str.257, %esi
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	ldb+324(%rip), %edi
	callq	ldbLogSourceLine
	callq	ldbSendLogs
	movq	%r14, %rdi
	callq	ldbRepl
	testl	%r12d, %r12d
	je	.LBB40_19
# %bb.17:
	cmpl	$-1, %eax
	jne	.LBB40_19
# %bb.18:
	movl	$.L.str.258, %esi
	movq	%r14, %rdi
	callq	lua_pushstring
	movq	%r14, %rdi
	callq	lua_error
.LBB40_19:
	callq	mstime
	movq	%rax, server+3040(%rip)
.LBB40_20:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	luaLdbLineHook, .Lfunc_end40-luaLdbLineHook
                                        # -- End function
	.globl	evalCommand             # -- Begin function evalCommand
	.p2align	4, 0x90
	.type	evalCommand,@function
evalCommand:                            # @evalCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	testb	$2, 163(%rdi)
	jne	.LBB41_2
# %bb.1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	evalGenericCommand
	jmp	.LBB41_6
.LBB41_2:
	movq	%rbx, %rdi
	callq	ldbStartSession
	testl	%eax, %eax
	je	.LBB41_4
# %bb.3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	evalGenericCommand
	movq	%rbx, %rdi
	callq	ldbEndSession
	jmp	.LBB41_5
.LBB41_4:
	andb	$-7, 163(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB41_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end41:
	.size	evalCommand, .Lfunc_end41-evalCommand
                                        # -- End function
	.globl	evalGenericCommandWithDebugging # -- Begin function evalGenericCommandWithDebugging
	.p2align	4, 0x90
	.type	evalGenericCommandWithDebugging,@function
evalGenericCommandWithDebugging:        # @evalGenericCommandWithDebugging
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	ldbStartSession
	testl	%eax, %eax
	je	.LBB42_2
# %bb.1:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	evalGenericCommand
	movq	%rbx, %rdi
	callq	ldbEndSession
	jmp	.LBB42_3
.LBB42_2:
	andb	$-7, 163(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end42:
	.size	evalGenericCommandWithDebugging, .Lfunc_end42-evalGenericCommandWithDebugging
                                        # -- End function
	.globl	evalShaCommand          # -- Begin function evalShaCommand
	.p2align	4, 0x90
	.type	evalShaCommand,@function
evalShaCommand:                         # @evalShaCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movb	-1(%rax), %cl
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB43_5
# %bb.1:
	movzbl	%cl, %ecx
	jmpq	*.LJTI43_0(,%rcx,8)
.LBB43_6:
	movzbl	-3(%rax), %eax
	jmp	.LBB43_7
.LBB43_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB43_8
.LBB43_2:
	movzwl	-5(%rax), %eax
	jmp	.LBB43_7
.LBB43_3:
	movl	-9(%rax), %eax
	jmp	.LBB43_7
.LBB43_4:
	movq	-17(%rax), %rax
.LBB43_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rax
	jne	.LBB43_8
# %bb.9:
	testb	$2, 163(%rdi)
	jne	.LBB43_11
# %bb.10:
	movl	$1, %esi
	callq	evalGenericCommand
	jmp	.LBB43_12
.LBB43_8:
	movq	shared+152(%rip), %rsi
	callq	addReply
	jmp	.LBB43_12
.LBB43_11:
	movl	$.L.str.114, %esi
	callq	addReplyError
.LBB43_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end43:
	.size	evalShaCommand, .Lfunc_end43-evalShaCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI43_0:
	.quad	.LBB43_6
	.quad	.LBB43_2
	.quad	.LBB43_3
	.quad	.LBB43_4
                                        # -- End function
	.text
	.globl	scriptCommand           # -- Begin function scriptCommand
	.p2align	4, 0x90
	.type	scriptCommand,@function
scriptCommand:                          # @scriptCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r15
	movslq	64(%rdi), %rbx
	cmpq	$2, %rbx
	jne	.LBB44_4
# %bb.1:
	movq	72(%r15), %r13
	movq	8(%r13), %rax
	movq	8(%rax), %r14
	movl	$.L.str.115, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_10
# %bb.2:
	movl	$.L.str.121, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_22
# %bb.3:
	leaq	72(%r15), %r12
	jmp	.LBB44_6
.LBB44_4:
	cmpl	$2, %ebx
	jl	.LBB44_21
# %bb.5:
	leaq	72(%r15), %r12
	movq	72(%r15), %r13
	movq	8(%r13), %rax
	movq	8(%rax), %r14
.LBB44_6:
	movl	$.L.str.122, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_11
# %bb.7:
	cmpl	$3, %ebx
	jne	.LBB44_17
# %bb.8:
	movl	$.L.str.123, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movb	$1, %cl
	testl	%eax, %eax
	je	.LBB44_23
# %bb.9:
	cmpl	$2, %ebx
	je	.LBB44_18
	jmp	.LBB44_19
.LBB44_10:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movl	$.L.str.117, %eax
	movq	%rax, %xmm0
	movl	$.L.str.116, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -96(%rbp)
	movl	$.L.str.119, %eax
	movq	%rax, %xmm0
	movl	$.L.str.118, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -80(%rbp)
	movq	$.L.str.120, -64(%rbp)
	leaq	-96(%rbp), %rsi
	movq	%r15, %rdi
	callq	addReplyHelp
	jmp	.LBB44_47
.LBB44_11:
	addq	$-2, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	addReplyMultiBulkLen
	cmpl	$3, 64(%r15)
	jl	.LBB44_47
# %bb.12:                               # %.preheader
	movl	$2, %ebx
	jmp	.LBB44_15
	.p2align	4, 0x90
.LBB44_13:                              #   in Loop: Header=BB44_15 Depth=1
	movq	shared+32(%rip), %rsi
.LBB44_14:                              #   in Loop: Header=BB44_15 Depth=1
	movq	%r15, %rdi
	callq	addReply
	addq	$1, %rbx
	movslq	64(%r15), %rax
	cmpq	%rax, %rbx
	jge	.LBB44_47
.LBB44_15:                              # =>This Inner Loop Header: Depth=1
	movq	server+3016(%rip), %rdi
	movq	(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB44_13
# %bb.16:                               #   in Loop: Header=BB44_15 Depth=1
	movq	shared+40(%rip), %rsi
	jmp	.LBB44_14
.LBB44_17:
	xorl	%ecx, %ecx
	cmpl	$2, %ebx
	jne	.LBB44_19
.LBB44_18:
	movl	$.L.str.124, %esi
	movq	%r14, %rdi
	movl	%ecx, %ebx
	callq	strcasecmp
	movl	%ebx, %ecx
	testl	%eax, %eax
	je	.LBB44_25
.LBB44_19:
	testb	%cl, %cl
	je	.LBB44_21
# %bb.20:
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_29
.LBB44_21:
	movq	%r15, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB44_47
.LBB44_22:
	movq	server+3016(%rip), %rdi
	callq	dictRelease
	movq	$0, server+3024(%rip)
	movq	server+2992(%rip), %rdi
	callq	lua_close
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	scriptingInit
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	callq	replicationScriptCacheFlush
	addq	$1, server+2080(%rip)
	jmp	.LBB44_47
.LBB44_23:
	movq	server+2992(%rip), %rsi
	movq	16(%r13), %rdx
	movq	%r15, %rdi
	callq	luaCreateFunction
	testq	%rax, %rax
	je	.LBB44_47
# %bb.24:
	movl	$40, %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkCBuffer
	movq	%r15, %rdi
	movl	$3, %esi
	callq	forceCommandPropagation
	jmp	.LBB44_47
.LBB44_25:
	movq	server+3008(%rip), %rax
	testq	%rax, %rax
	je	.LBB44_32
# %bb.26:
	testb	$2, 160(%rax)
	jne	.LBB44_33
# %bb.27:
	cmpl	$0, server+3048(%rip)
	je	.LBB44_39
# %bb.28:
	movl	$.L.str.127, %edi
	jmp	.LBB44_34
.LBB44_29:
	movq	%r15, %rdi
	callq	clientHasPendingReplies
	testl	%eax, %eax
	je	.LBB44_35
# %bb.30:
	movl	$.L.str.128, %esi
.LBB44_31:
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB44_47
.LBB44_32:
	movl	$.L.str.125, %edi
	jmp	.LBB44_34
.LBB44_33:
	movl	$.L.str.126, %edi
.LBB44_34:
	callq	sdsnew
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB44_47
.LBB44_35:
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.129, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_40
# %bb.36:
	movl	$.L.str.130, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_41
# %bb.37:
	movl	$.L.str.131, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_48
# %bb.38:
	movl	$.L.str.132, %esi
	jmp	.LBB44_31
.LBB44_39:
	movl	$1, server+3072(%rip)
	jmp	.LBB44_46
.LBB44_40:
	andb	$-7, 163(%r15)
	jmp	.LBB44_45
.LBB44_41:
	orb	$2, 163(%r15)
	movq	ldb+16(%rip), %rbx
.LBB44_42:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB44_44
# %bb.43:                               #   in Loop: Header=BB44_42 Depth=1
	movq	%rbx, %rdi
	callq	listDelNode
	jmp	.LBB44_42
.LBB44_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	movl	%eax, ldb(%rip)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, ldb+296(%rip)
	movl	$0, ldb+304(%rip)
	movq	ldb+328(%rip), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, ldb+328(%rip)
	movq	$256, ldb+336(%rip)     # imm = 0x100
	movl	$0, ldb+344(%rip)
.LBB44_45:
	movl	$42, __A_VARIABLE(%rip)
.LBB44_46:
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB44_47:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_48:
	orb	$2, 163(%r15)
	movq	ldb+16(%rip), %rbx
.LBB44_49:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB44_51
# %bb.50:                               #   in Loop: Header=BB44_49 Depth=1
	movq	%rbx, %rdi
	callq	listDelNode
	jmp	.LBB44_49
.LBB44_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	movl	%eax, ldb(%rip)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, ldb+296(%rip)
	movl	$0, ldb+304(%rip)
	movq	ldb+328(%rip), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, ldb+328(%rip)
	movq	$256, ldb+336(%rip)     # imm = 0x100
	movl	$0, ldb+344(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	orb	$4, 163(%r15)
	jmp	.LBB44_47
.Lfunc_end44:
	.size	scriptCommand, .Lfunc_end44-scriptCommand
                                        # -- End function
	.globl	ldbDisable              # -- Begin function ldbDisable
	.p2align	4, 0x90
	.type	ldbDisable,@function
ldbDisable:                             # @ldbDisable
# %bb.0:
	andb	$-7, 163(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end45:
	.size	ldbDisable, .Lfunc_end45-ldbDisable
                                        # -- End function
	.globl	ldbEnable               # -- Begin function ldbEnable
	.p2align	4, 0x90
	.type	ldbEnable,@function
ldbEnable:                              # @ldbEnable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	orb	$2, 163(%rdi)
	movq	ldb+16(%rip), %rbx
	.p2align	4, 0x90
.LBB46_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB46_3
# %bb.1:                                #   in Loop: Header=BB46_2 Depth=1
	movq	%rbx, %rdi
	callq	listDelNode
	jmp	.LBB46_2
.LBB46_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r14), %eax
	movl	%eax, ldb(%rip)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, ldb+296(%rip)
	movl	$0, ldb+304(%rip)
	movq	ldb+328(%rip), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, ldb+328(%rip)
	movq	$256, ldb+336(%rip)     # imm = 0x100
	movl	$0, ldb+344(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end46:
	.size	ldbEnable, .Lfunc_end46-ldbEnable
                                        # -- End function
	.globl	ldbFlushLog             # -- Begin function ldbFlushLog
	.p2align	4, 0x90
	.type	ldbFlushLog,@function
ldbFlushLog:                            # @ldbFlushLog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB47_3
# %bb.1:                                # %.preheader
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB47_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	listDelNode
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB47_2
.LBB47_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end47:
	.size	ldbFlushLog, .Lfunc_end47-ldbFlushLog
                                        # -- End function
	.globl	ldbLogWithMaxLen        # -- Begin function ldbLogWithMaxLen
	.p2align	4, 0x90
	.type	ldbLogWithMaxLen,@function
ldbLogWithMaxLen:                       # @ldbLogWithMaxLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	ldb+336(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB48_12
# %bb.1:
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB48_5
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI48_0(,%rcx,8)
.LBB48_3:
	shrq	$3, %rax
	jmp	.LBB48_10
.LBB48_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB48_12
.LBB48_6:
	movzbl	-3(%r14), %eax
	jmp	.LBB48_10
.LBB48_7:
	movzwl	-5(%r14), %eax
	jmp	.LBB48_10
.LBB48_8:
	movl	-9(%r14), %eax
	jmp	.LBB48_10
.LBB48_9:
	movq	-17(%r14), %rax
.LBB48_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jbe	.LBB48_12
# %bb.11:
	addq	$-1, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	sdsrange
	movl	$.L.str.133, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movb	$1, %bl
	jmp	.LBB48_13
.LBB48_12:
	xorl	%ebx, %ebx
.LBB48_13:
	movq	ldb+16(%rip), %rdi
	movq	%r14, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB48_16
# %bb.14:
	cmpl	$0, ldb+344(%rip)
	jne	.LBB48_16
# %bb.15:
	movl	$1, ldb+344(%rip)
	movl	$.L.str.134, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB48_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end48:
	.size	ldbLogWithMaxLen, .Lfunc_end48-ldbLogWithMaxLen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI48_0:
	.quad	.LBB48_3
	.quad	.LBB48_6
	.quad	.LBB48_7
	.quad	.LBB48_8
	.quad	.LBB48_9
                                        # -- End function
	.text
	.globl	ldbSendLogs             # -- Begin function ldbSendLogs
	.p2align	4, 0x90
	.type	ldbSendLogs,@function
ldbSendLogs:                            # @ldbSendLogs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	sdsempty
	movq	ldb+16(%rip), %rcx
	movl	40(%rcx), %edx
	movl	$.L.str.135, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB49_2:                               # =>This Inner Loop Header: Depth=1
	movq	ldb+16(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB49_3
# %bb.1:                                #   in Loop: Header=BB49_2 Depth=1
	movq	(%rax), %rbx
	movl	$.L.str.136, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	movl	$.L.str.9, %esi
	movl	$.L.str.10, %edx
	movl	$2, %ecx
	callq	sdsmapchars
	movq	16(%rbx), %rsi
	movq	%r14, %rdi
	callq	sdscatsds
	movl	$.L.str.9, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	ldb+16(%rip), %rdi
	movq	%rbx, %rsi
	callq	listDelNode
	jmp	.LBB49_2
.LBB49_3:
	movl	ldb(%rip), %edi
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB49_4
# %bb.5:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI49_0(,%rax,8)
.LBB49_6:
	shrq	$3, %rdx
	jmp	.LBB49_11
.LBB49_4:
	xorl	%edx, %edx
	jmp	.LBB49_11
.LBB49_7:
	movzbl	-3(%r14), %edx
	jmp	.LBB49_11
.LBB49_8:
	movzwl	-5(%r14), %edx
	jmp	.LBB49_11
.LBB49_9:
	movl	-9(%r14), %edx
	jmp	.LBB49_11
.LBB49_10:
	movq	-17(%r14), %rdx
.LBB49_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	write
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end49:
	.size	ldbSendLogs, .Lfunc_end49-ldbSendLogs
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI49_0:
	.quad	.LBB49_6
	.quad	.LBB49_7
	.quad	.LBB49_8
	.quad	.LBB49_9
	.quad	.LBB49_10
                                        # -- End function
	.text
	.globl	ldbStartSession         # -- Begin function ldbStartSession
	.p2align	4, 0x90
	.type	ldbStartSession,@function
ldbStartSession:                        # @ldbStartSession
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %rbx
	movl	160(%rdi), %eax
	shrl	$26, %eax
	andl	$1, %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, ldb+8(%rip)
	testl	%eax, %eax
	jne	.LBB50_6
# %bb.1:
	callq	fork
	testl	%eax, %eax
	je	.LBB50_4
# %bb.2:
	cmpl	$-1, %eax
	jne	.LBB50_5
# %bb.3:
	movl	$.L.str.137, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	xorl	%r14d, %r14d
	jmp	.LBB50_38
.LBB50_6:
	movl	$.L.str.139, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_7
.LBB50_4:
	leaq	-40(%rbp), %rdi
	callq	sigemptyset
	movl	$0, -32(%rbp)
	movq	$1, -48(%rbp)
	leaq	-48(%rbp), %r14
	movl	$15, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$2, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$.L.str.138, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	xorl	%edi, %edi
	callq	closeListeningSockets
.LBB50_7:
	movl	ldb(%rip), %esi
	xorl	%edi, %edi
	callq	anetBlock
	movl	ldb(%rip), %esi
	movl	$5000, %edx             # imm = 0x1388
	xorl	%edi, %edi
	callq	anetSendTimeout
	movl	$1, ldb+4(%rip)
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	sdsdup
	movq	%rax, %rbx
	movzbl	-1(%rax), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB50_9
# %bb.8:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI50_0(,%rcx,8)
.LBB50_10:
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB50_15
.LBB50_5:
	movq	ldb+32(%rip), %rdi
	movslq	%eax, %rsi
	callq	listAddNodeTail
	movq	%rbx, %rdi
	callq	freeClientAsync
	xorl	%r14d, %r14d
	jmp	.LBB50_38
.LBB50_9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB50_22
.LBB50_11:
	movzbl	-3(%rbx), %ecx
	jmp	.LBB50_15
.LBB50_12:
	movzwl	-5(%rbx), %ecx
	jmp	.LBB50_15
.LBB50_13:
	movl	-9(%rbx), %ecx
	jmp	.LBB50_15
.LBB50_14:
	movq	-17(%rbx), %rcx
.LBB50_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB50_17
# %bb.16:
	xorl	%ecx, %ecx
	jmp	.LBB50_22
	.p2align	4, 0x90
.LBB50_19:                              #   in Loop: Header=BB50_17 Depth=1
	movb	$0, -1(%rbx,%rcx)
	addq	$-1, %rcx
	je	.LBB50_20
.LBB50_17:                              # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rbx,%rcx), %eax
	cmpb	$13, %al
	je	.LBB50_19
# %bb.18:                               #   in Loop: Header=BB50_17 Depth=1
	cmpb	$10, %al
	je	.LBB50_19
	jmp	.LBB50_21
.LBB50_20:
	xorl	%ecx, %ecx
.LBB50_21:
	movb	-1(%rbx), %al
.LBB50_22:
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB50_29
# %bb.23:
	movzbl	%al, %edx
	andl	$7, %edx
	jmpq	*.LJTI50_1(,%rdx,8)
.LBB50_24:
	shlb	$3, %cl
	movb	%cl, -1(%rbx)
	movl	%ecx, %eax
	jmp	.LBB50_29
.LBB50_25:
	movb	%cl, -3(%rbx)
	jmp	.LBB50_29
.LBB50_26:
	movw	%cx, -5(%rbx)
	jmp	.LBB50_29
.LBB50_27:
	movl	%ecx, -9(%rbx)
	jmp	.LBB50_29
.LBB50_28:
	movq	%rcx, -17(%rbx)
.LBB50_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB50_30
# %bb.31:
	movzbl	%al, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI50_2(,%rcx,8)
.LBB50_32:
	shrb	$3, %al
	movzbl	%al, %esi
	jmp	.LBB50_37
.LBB50_30:
	xorl	%esi, %esi
	jmp	.LBB50_37
.LBB50_33:
	movzbl	-3(%rbx), %esi
	jmp	.LBB50_37
.LBB50_34:
	movzwl	-5(%rbx), %esi
	jmp	.LBB50_37
.LBB50_35:
	movl	-9(%rbx), %esi
	jmp	.LBB50_37
.LBB50_36:
	movq	-17(%rbx), %rsi
.LBB50_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	movl	$.L.str.140, %edx
	movl	$ldb+320, %r8d
	movq	%rbx, %rdi
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, ldb+312(%rip)
	movq	%rbx, %rdi
	callq	sdsfree
.LBB50_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end50:
	.size	ldbStartSession, .Lfunc_end50-ldbStartSession
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI50_0:
	.quad	.LBB50_10
	.quad	.LBB50_11
	.quad	.LBB50_12
	.quad	.LBB50_13
	.quad	.LBB50_14
.LJTI50_1:
	.quad	.LBB50_24
	.quad	.LBB50_25
	.quad	.LBB50_26
	.quad	.LBB50_27
	.quad	.LBB50_28
.LJTI50_2:
	.quad	.LBB50_32
	.quad	.LBB50_33
	.quad	.LBB50_34
	.quad	.LBB50_35
	.quad	.LBB50_36
                                        # -- End function
	.text
	.globl	ldbEndSession           # -- Begin function ldbEndSession
	.p2align	4, 0x90
	.type	ldbEndSession,@function
ldbEndSession:                          # @ldbEndSession
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.141, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	callq	ldbSendLogs
	cmpl	$0, ldb+8(%rip)
	je	.LBB51_2
# %bb.1:
	movl	8(%rbx), %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	writeToClient
	movl	$.L.str.142, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	xorl	%edi, %edi
	callq	exitFromChild
	jmp	.LBB51_3
.LBB51_2:
	movl	$.L.str.143, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB51_3:
	movl	ldb(%rip), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	ldb(%rip), %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	anetSendTimeout
	orb	$64, 160(%rbx)
	movq	ldb+312(%rip), %rdi
	movl	ldb+320(%rip), %esi
	callq	sdsfreesplitres
	movl	$0, ldb+320(%rip)
	movl	$0, ldb+4(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end51:
	.size	ldbEndSession, .Lfunc_end51-ldbEndSession
                                        # -- End function
	.globl	ldbRemoveChild          # -- Begin function ldbRemoveChild
	.p2align	4, 0x90
	.type	ldbRemoveChild,@function
ldbRemoveChild:                         # @ldbRemoveChild
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ldb+32(%rip), %rax
	movslq	%edi, %rsi
	movq	%rax, %rdi
	callq	listSearchKey
	testq	%rax, %rax
	je	.LBB52_1
# %bb.2:
	movq	ldb+32(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movl	$1, %eax
	jmp	.LBB52_3
.LBB52_1:
	xorl	%eax, %eax
.LBB52_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	ldbRemoveChild, .Lfunc_end52-ldbRemoveChild
                                        # -- End function
	.globl	ldbPendingChildren      # -- Begin function ldbPendingChildren
	.p2align	4, 0x90
	.type	ldbPendingChildren,@function
ldbPendingChildren:                     # @ldbPendingChildren
# %bb.0:
	movq	ldb+32(%rip), %rax
	movl	40(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end53:
	.size	ldbPendingChildren, .Lfunc_end53-ldbPendingChildren
                                        # -- End function
	.globl	ldbKillForkedSessions   # -- Begin function ldbKillForkedSessions
	.p2align	4, 0x90
	.type	ldbKillForkedSessions,@function
ldbKillForkedSessions:                  # @ldbKillForkedSessions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	ldb+32(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB54_3
# %bb.1:                                # %.preheader
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
.LBB54_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movslq	%eax, %rbx
	movl	$.L.str.144, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	%ebx, %edi
	movl	$9, %esi
	callq	kill
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	jne	.LBB54_2
.LBB54_3:
	movq	ldb+32(%rip), %rdi
	callq	listRelease
	callq	listCreate
	movq	%rax, ldb+32(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end54:
	.size	ldbKillForkedSessions, .Lfunc_end54-ldbKillForkedSessions
                                        # -- End function
	.globl	ldbGetSourceLine        # -- Begin function ldbGetSourceLine
	.p2align	4, 0x90
	.type	ldbGetSourceLine,@function
ldbGetSourceLine:                       # @ldbGetSourceLine
# %bb.0:
	movl	$.L.str.145, %eax
	testl	%edi, %edi
	jle	.LBB55_3
# %bb.1:
	cmpl	%edi, ldb+320(%rip)
	jl	.LBB55_3
# %bb.2:
	movq	ldb+312(%rip), %rax
	movslq	%edi, %rcx
	movq	-8(%rax,%rcx,8), %rax
.LBB55_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end55:
	.size	ldbGetSourceLine, .Lfunc_end55-ldbGetSourceLine
                                        # -- End function
	.globl	ldbIsBreakpoint         # -- Begin function ldbIsBreakpoint
	.p2align	4, 0x90
	.type	ldbIsBreakpoint,@function
ldbIsBreakpoint:                        # @ldbIsBreakpoint
# %bb.0:
	movslq	ldb+296(%rip), %rax
	testq	%rax, %rax
	jle	.LBB56_5
# %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB56_2:                               # =>This Inner Loop Header: Depth=1
	cmpl	%edi, ldb+40(,%rcx,4)
	je	.LBB56_6
# %bb.3:                                #   in Loop: Header=BB56_2 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB56_2
.LBB56_5:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB56_6:
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end56:
	.size	ldbIsBreakpoint, .Lfunc_end56-ldbIsBreakpoint
                                        # -- End function
	.globl	ldbAddBreakpoint        # -- Begin function ldbAddBreakpoint
	.p2align	4, 0x90
	.type	ldbAddBreakpoint,@function
ldbAddBreakpoint:                       # @ldbAddBreakpoint
# %bb.0:
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB57_10
# %bb.1:
	cmpl	%edi, ldb+320(%rip)
	jl	.LBB57_10
# %bb.2:
	movslq	ldb+296(%rip), %rcx
	testq	%rcx, %rcx
	jle	.LBB57_3
# %bb.4:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB57_6:                               # =>This Inner Loop Header: Depth=1
	cmpl	%edi, ldb+40(,%rax,4)
	je	.LBB57_7
# %bb.5:                                #   in Loop: Header=BB57_6 Depth=1
	addq	$1, %rax
	cmpq	%rcx, %rax
	jl	.LBB57_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$64, %ecx
	jne	.LBB57_9
.LBB57_10:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB57_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB57_9:
	leal	1(%rcx), %eax
	movl	%eax, ldb+296(%rip)
	movl	%edi, ldb+40(,%rcx,4)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB57_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end57:
	.size	ldbAddBreakpoint, .Lfunc_end57-ldbAddBreakpoint
                                        # -- End function
	.globl	ldbDelBreakpoint        # -- Begin function ldbDelBreakpoint
	.p2align	4, 0x90
	.type	ldbDelBreakpoint,@function
ldbDelBreakpoint:                       # @ldbDelBreakpoint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	ldb+296(%rip), %rdx
	testq	%rdx, %rdx
	jle	.LBB58_5
# %bb.1:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB58_2:                               # =>This Inner Loop Header: Depth=1
	cmpl	%edi, ldb+40(,%rax,4)
	je	.LBB58_3
# %bb.4:                                #   in Loop: Header=BB58_2 Depth=1
	addq	$1, %rax
	addq	$-4, %rcx
	cmpq	%rdx, %rax
	jl	.LBB58_2
.LBB58_5:
	xorl	%eax, %eax
	jmp	.LBB58_6
.LBB58_3:
	addl	$-1, %edx
	movl	%edx, ldb+296(%rip)
	movl	$ldb+40, %edi
	subq	%rcx, %rdi
	movl	$ldb+44, %esi
	subq	%rcx, %rsi
	movslq	%edx, %rdx
	subq	%rax, %rdx
	callq	memmove
	movl	$1, %eax
.LBB58_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end58:
	.size	ldbDelBreakpoint, .Lfunc_end58-ldbDelBreakpoint
                                        # -- End function
	.globl	ldbReplParseCommand     # -- Begin function ldbReplParseCommand
	.p2align	4, 0x90
	.type	ldbReplParseCommand,@function
ldbReplParseCommand:                    # @ldbReplParseCommand
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
	movq	ldb+328(%rip), %rdi
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB59_3
# %bb.1:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI59_0(,%rcx,8)
.LBB59_2:
	shrq	$3, %rax
	jmp	.LBB59_8
.LBB59_3:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_24
.LBB59_4:
	movzbl	-3(%rdi), %eax
	jmp	.LBB59_8
.LBB59_5:
	movzwl	-5(%rdi), %eax
	jmp	.LBB59_8
.LBB59_6:
	movl	-9(%rdi), %eax
	jmp	.LBB59_8
.LBB59_7:
	movq	-17(%rdi), %rax
.LBB59_8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB59_25
# %bb.9:
	callq	sdsdup
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$42, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB59_13
# %bb.10:
	movq	%rax, %rbx
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.9, %esi
	movq	%rax, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB59_12
# %bb.11:
	movq	%rax, %r14
	addq	$1, %rbx
	movb	$0, (%rax)
	movq	%rbx, %rdi
	callq	atoi
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, (%r15)
	leal	-1(%rax), %ecx
	cmpl	$1023, %ecx             # imm = 0x3FF
	jbe	.LBB59_14
.LBB59_12:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
.LBB59_22:
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB59_23
.LBB59_13:
	xorl	%r12d, %r12d
.LBB59_23:
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	sdsfreesplitres
	movq	%r14, %rdi
	callq	sdsfree
.LBB59_24:
	xorl	%r13d, %r13d
.LBB59_25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_14:
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, %r12
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB59_15:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movslq	(%r15), %rax
	cmpq	%rax, %r13
	jge	.LBB59_26
# %bb.16:                               #   in Loop: Header=BB59_15 Depth=1
	leaq	2(%r14), %rdi
	cmpb	$36, (%rdi)
	jne	.LBB59_22
# %bb.17:                               #   in Loop: Header=BB59_15 Depth=1
	movl	$.L.str.9, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB59_22
# %bb.18:                               #   in Loop: Header=BB59_15 Depth=1
	movq	%rax, %rbx
	addq	$3, %r14
	movb	$0, (%rax)
	movq	%r14, %rdi
	callq	atoi
                                        # kill: def $eax killed $eax def $rax
	leal	-1(%rax), %ecx
	cmpl	$1023, %ecx             # imm = 0x3FF
	ja	.LBB59_22
# %bb.19:                               #   in Loop: Header=BB59_15 Depth=1
	addq	$2, %rbx
	movslq	%eax, %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sdsnewlen
	movq	%rax, (%r12,%r13,8)
	cmpb	$13, (%rbx,%r14)
	jne	.LBB59_21
# %bb.20:                               #   in Loop: Header=BB59_15 Depth=1
	addq	%r14, %rbx
	leaq	1(%r13), %rax
	cmpb	$10, 1(%rbx)
	movq	%rbx, %r14
	je	.LBB59_15
.LBB59_21:                              # %.loopexit
	addl	$1, %r13d
	jmp	.LBB59_22
.LBB59_26:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
	movq	%r12, %r13
	jmp	.LBB59_25
.Lfunc_end59:
	.size	ldbReplParseCommand, .Lfunc_end59-ldbReplParseCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI59_0:
	.quad	.LBB59_2
	.quad	.LBB59_4
	.quad	.LBB59_5
	.quad	.LBB59_6
	.quad	.LBB59_7
                                        # -- End function
	.text
	.globl	ldbLogSourceLine        # -- Begin function ldbLogSourceLine
	.p2align	4, 0x90
	.type	ldbLogSourceLine,@function
ldbLogSourceLine:                       # @ldbLogSourceLine
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movl	$.L.str.145, %r14d
	testl	%edi, %edi
	jle	.LBB60_3
# %bb.1:
	cmpl	%ebx, ldb+320(%rip)
	jl	.LBB60_3
# %bb.2:
	movq	ldb+312(%rip), %rax
	movslq	%ebx, %rcx
	movq	-8(%rax,%rcx,8), %r14
.LBB60_3:
	movl	$42, __A_VARIABLE(%rip)
	movslq	ldb+296(%rip), %rax
	testq	%rax, %rax
	jle	.LBB60_9
# %bb.4:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB60_6:                               # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, ldb+40(,%rcx,4)
	je	.LBB60_7
# %bb.5:                                #   in Loop: Header=BB60_6 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB60_6
.LBB60_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, ldb+324(%rip)
	sete	%al
	movl	$.L.str.149, %ecx
	movl	$.L.str.147, %r15d
	jmp	.LBB60_8
.LBB60_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, ldb+324(%rip)
	sete	%al
	movl	$.L.str.146, %ecx
	movl	$.L.str.147, %r15d
	cmoveq	%rcx, %r15
	movl	$.L.str.148, %ecx
.LBB60_8:
	testb	%al, %al
	cmoveq	%rcx, %r15
	callq	sdsempty
	movl	$.L.str.150, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	ldbLogSourceLine, .Lfunc_end60-ldbLogSourceLine
                                        # -- End function
	.globl	ldbList                 # -- Begin function ldbList
	.p2align	4, 0x90
	.type	ldbList,@function
ldbList:                                # @ldbList
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpl	$0, ldb+320(%rip)
	jle	.LBB61_6
# %bb.1:
	movl	%esi, %r14d
	movl	%edi, %r15d
	leal	-1(%r15), %ebx
	xorl	%r12d, %r12d
	jmp	.LBB61_2
	.p2align	4, 0x90
.LBB61_4:                               #   in Loop: Header=BB61_2 Depth=1
	movl	%r12d, %edi
	callq	ldbLogSourceLine
.LBB61_5:                               #   in Loop: Header=BB61_2 Depth=1
	addl	$-1, %ebx
	cmpl	ldb+320(%rip), %r12d
	jge	.LBB61_6
.LBB61_2:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %r12d
	testl	%r15d, %r15d
	je	.LBB61_4
# %bb.3:                                #   in Loop: Header=BB61_2 Depth=1
	movl	%ebx, %edi
	callq	abs
	cmpl	%r14d, %eax
	jle	.LBB61_4
	jmp	.LBB61_5
.LBB61_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	ldbList, .Lfunc_end61-ldbList
                                        # -- End function
	.globl	ldbCatStackValueRec     # -- Begin function ldbCatStackValueRec
	.p2align	4, 0x90
	.type	ldbCatStackValueRec,@function
ldbCatStackValueRec:                    # @ldbCatStackValueRec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	lua_type
	cmpl	$10, %r14d
	jne	.LBB62_2
# %bb.1:
	movl	$.L.str.151, %esi
.LBB62_41:
	movq	%r12, %rdi
	callq	sdscat
	jmp	.LBB62_42
.LBB62_2:
	movl	%eax, %ebx
	cmpl	$8, %eax
	ja	.LBB62_40
# %bb.3:
	movl	%ebx, %eax
	jmpq	*.LJTI62_0(,%rax,8)
.LBB62_37:
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_topointer
	addl	$-2, %ebx
	movl	$.L.str.161, %edx
	cmpl	$6, %ebx
	ja	.LBB62_39
# %bb.38:
	movslq	%ebx, %rcx
	movq	.Lswitch.table.ldbCatStackValueRec(,%rcx,8), %rdx
.LBB62_39:
	movl	$.L.str.166, %esi
	movq	%r12, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB62_42
.LBB62_7:
	movl	$.L.str.155, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	sdscatlen
	jmp	.LBB62_42
.LBB62_5:
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_toboolean
	testl	%eax, %eax
	movl	$.L.str.153, %eax
	movl	$.L.str.152, %esi
	cmoveq	%rax, %rsi
	jmp	.LBB62_41
.LBB62_6:
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_tonumber
	movl	$.L.str.154, %esi
	movq	%r12, %rdi
	movb	$1, %al
	callq	sdscatprintf
	jmp	.LBB62_42
.LBB62_4:
	leaq	-64(%rbp), %rdx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_tolstring
	movq	-64(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	sdscatrepr
.LBB62_42:
	movq	%rax, %rbx
.LBB62_43:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB62_8:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	callq	sdsempty
	movq	%rax, %r12
	callq	sdsempty
	movl	%r13d, %ebx
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	lua_pushnil
	addl	$-1, %ebx
	movq	%r15, %rdi
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movl	%ebx, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB62_9
# %bb.10:                               # %.preheader
	addl	$1, %r14d
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$1, %ebx
	jmp	.LBB62_11
	.p2align	4, 0x90
.LBB62_14:                              #   in Loop: Header=BB62_11 Depth=1
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
.LBB62_15:                              #   in Loop: Header=BB62_11 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$-1, %edx
	movl	%r14d, %ecx
	callq	ldbCatStackValueRec
	movl	$.L.str.156, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r12
	movl	$.L.str.157, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	sdscatlen
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$-2, %edx
	movl	%r14d, %ecx
	callq	ldbCatStackValueRec
	movl	$.L.str.158, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$-1, %edx
	movl	%r14d, %ecx
	callq	ldbCatStackValueRec
	movl	$.L.str.156, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r13
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	addl	$1, %ebx
	movq	%r15, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	lua_next
	testl	%eax, %eax
	je	.LBB62_16
.LBB62_11:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB62_14
# %bb.12:                               #   in Loop: Header=BB62_11 Depth=1
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_type
	cmpl	$3, %eax
	jne	.LBB62_14
# %bb.13:                               #   in Loop: Header=BB62_11 Depth=1
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_tonumber
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB62_14
	jp	.LBB62_14
	jmp	.LBB62_15
.LBB62_40:
	movl	$.L.str.167, %esi
	jmp	.LBB62_41
.LBB62_9:
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB62_16:
	movzbl	-1(%r12), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB62_18
# %bb.17:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI62_1(,%rcx,8)
.LBB62_19:
	shrq	$3, %rax
	jmp	.LBB62_24
.LBB62_20:
	movzbl	-3(%r12), %eax
	jmp	.LBB62_24
.LBB62_21:
	movzwl	-5(%r12), %eax
	jmp	.LBB62_24
.LBB62_22:
	movl	-9(%r12), %eax
	jmp	.LBB62_24
.LBB62_23:
	movq	-17(%r12), %rax
.LBB62_24:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB62_26
# %bb.25:
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	$-3, %rdx
	callq	sdsrange
	jmp	.LBB62_26
.LBB62_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB62_26:
	movzbl	-1(%r13), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB62_28
# %bb.27:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI62_2(,%rcx,8)
.LBB62_29:
	shrq	$3, %rax
	jmp	.LBB62_34
.LBB62_30:
	movzbl	-3(%r13), %eax
	jmp	.LBB62_34
.LBB62_31:
	movzwl	-5(%r13), %eax
	jmp	.LBB62_34
.LBB62_32:
	movl	-9(%r13), %eax
	jmp	.LBB62_34
.LBB62_33:
	movq	-17(%r13), %rax
.LBB62_34:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB62_36
# %bb.35:
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	$-3, %rdx
	callq	sdsrange
	jmp	.LBB62_36
.LBB62_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB62_36:
	movl	$.L.str.159, %esi
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdscatlen
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movq	%r12, %rsi
	cmoveq	%r13, %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	movl	$.L.str.160, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	sdsfree
	movq	%r13, %rdi
	callq	sdsfree
	jmp	.LBB62_43
.Lfunc_end62:
	.size	ldbCatStackValueRec, .Lfunc_end62-ldbCatStackValueRec
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI62_0:
	.quad	.LBB62_7
	.quad	.LBB62_5
	.quad	.LBB62_37
	.quad	.LBB62_6
	.quad	.LBB62_4
	.quad	.LBB62_8
	.quad	.LBB62_37
	.quad	.LBB62_37
	.quad	.LBB62_37
.LJTI62_1:
	.quad	.LBB62_19
	.quad	.LBB62_20
	.quad	.LBB62_21
	.quad	.LBB62_22
	.quad	.LBB62_23
.LJTI62_2:
	.quad	.LBB62_29
	.quad	.LBB62_30
	.quad	.LBB62_31
	.quad	.LBB62_32
	.quad	.LBB62_33
                                        # -- End function
	.text
	.globl	ldbLogStackValue        # -- Begin function ldbLogStackValue
	.p2align	4, 0x90
	.type	ldbLogStackValue,@function
ldbLogStackValue:                       # @ldbLogStackValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$-1, %edx
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ldbLogWithMaxLen
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end63:
	.size	ldbLogStackValue, .Lfunc_end63-ldbLogStackValue
                                        # -- End function
	.globl	ldbRedisProtocolToHuman # -- Begin function ldbRedisProtocolToHuman
	.p2align	4, 0x90
	.type	ldbRedisProtocolToHuman,@function
ldbRedisProtocolToHuman:                # @ldbRedisProtocolToHuman
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movsbl	(%rsi), %eax
	addl	$-36, %eax
	cmpl	$22, %eax
	ja	.LBB64_9
# %bb.1:
	movq	%rdi, %r14
	jmpq	*.LJTI64_0(,%rax,8)
.LBB64_7:
	leaq	1(%rbx), %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	movq	(%r14), %rdi
	movq	%rax, %rdx
	subq	%rbx, %rdx
	movq	%rbx, %rsi
	callq	sdscatrepr
	movq	%rax, (%r14)
	addq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	jmp	.LBB64_9
.LBB64_3:
	leaq	1(%rbx), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	notq	%rbx
	addq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	string2ll
	movq	-40(%rbp), %rdx
	movq	(%r14), %rdi
	cmpq	$-1, %rdx
	je	.LBB64_4
# %bb.5:
	addq	$2, %r15
	movq	%r15, %rsi
	callq	sdscatrepr
	movq	%rax, (%r14)
	addq	-40(%rbp), %r15
	jmp	.LBB64_6
.LBB64_8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ldbRedisProtocolToHuman_MultiBulk
	movq	%rax, %rbx
	jmp	.LBB64_9
.LBB64_2:
	leaq	1(%rbx), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	movq	(%r14), %rdi
	notq	%rbx
	addq	%rax, %rbx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	sdscatlen
	movq	%rax, (%r14)
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	jmp	.LBB64_9
.LBB64_4:
	movl	$.L.str.168, %esi
	movl	$4, %edx
	callq	sdscatlen
	movq	%rax, (%r14)
.LBB64_6:
	movq	%r15, %rbx
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB64_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	ldbRedisProtocolToHuman, .Lfunc_end64-ldbRedisProtocolToHuman
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI64_0:
	.quad	.LBB64_3
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_8
	.quad	.LBB64_7
	.quad	.LBB64_9
	.quad	.LBB64_7
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_9
	.quad	.LBB64_2
                                        # -- End function
	.text
	.globl	ldbRedisProtocolToHuman_Int # -- Begin function ldbRedisProtocolToHuman_Int
	.p2align	4, 0x90
	.type	ldbRedisProtocolToHuman_Int,@function
ldbRedisProtocolToHuman_Int:            # @ldbRedisProtocolToHuman_Int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	1(%rsi), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	movq	(%r14), %rdi
	notq	%rbx
	leaq	(%rbx,%rax), %rdx
	movq	%r15, %rsi
	callq	sdscatlen
	movq	%rax, (%r14)
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	ldbRedisProtocolToHuman_Int, .Lfunc_end65-ldbRedisProtocolToHuman_Int
                                        # -- End function
	.globl	ldbRedisProtocolToHuman_Bulk # -- Begin function ldbRedisProtocolToHuman_Bulk
	.p2align	4, 0x90
	.type	ldbRedisProtocolToHuman_Bulk,@function
ldbRedisProtocolToHuman_Bulk:           # @ldbRedisProtocolToHuman_Bulk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	1(%rsi), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	notq	%rbx
	addq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	string2ll
	movq	-40(%rbp), %rdx
	movq	(%r14), %rdi
	cmpq	$-1, %rdx
	je	.LBB66_1
# %bb.2:
	addq	$2, %r15
	movq	%r15, %rsi
	callq	sdscatrepr
	movq	%rax, (%r14)
	addq	-40(%rbp), %r15
	jmp	.LBB66_3
.LBB66_1:
	movl	$.L.str.168, %esi
	movl	$4, %edx
	callq	sdscatlen
	movq	%rax, (%r14)
.LBB66_3:
	addq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	ldbRedisProtocolToHuman_Bulk, .Lfunc_end66-ldbRedisProtocolToHuman_Bulk
                                        # -- End function
	.globl	ldbRedisProtocolToHuman_Status # -- Begin function ldbRedisProtocolToHuman_Status
	.p2align	4, 0x90
	.type	ldbRedisProtocolToHuman_Status,@function
ldbRedisProtocolToHuman_Status:         # @ldbRedisProtocolToHuman_Status
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	1(%rsi), %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %rbx
	movq	(%r14), %rdi
	movq	%rax, %rdx
	subq	%r15, %rdx
	movq	%r15, %rsi
	callq	sdscatrepr
	movq	%rax, (%r14)
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	ldbRedisProtocolToHuman_Status, .Lfunc_end67-ldbRedisProtocolToHuman_Status
                                        # -- End function
	.globl	ldbRedisProtocolToHuman_MultiBulk # -- Begin function ldbRedisProtocolToHuman_MultiBulk
	.p2align	4, 0x90
	.type	ldbRedisProtocolToHuman_MultiBulk,@function
ldbRedisProtocolToHuman_MultiBulk:      # @ldbRedisProtocolToHuman_MultiBulk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	1(%rsi), %r12
	movq	%r12, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r13
	notq	%r15
	addq	%rax, %r15
	leaq	-48(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	string2ll
	addq	$2, %r13
	cmpq	$-1, -48(%rbp)
	movq	(%r14), %rdi
	je	.LBB68_1
# %bb.2:
	movl	$.L.str.157, %esi
	movl	$1, %edx
	callq	sdscatlen
	movq	%rax, (%r14)
	cmpq	$0, -48(%rbp)
	jle	.LBB68_8
# %bb.3:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB68_4
	.p2align	4, 0x90
.LBB68_6:                               #   in Loop: Header=BB68_4 Depth=1
	addq	$1, %rbx
	cmpq	%rbx, %rax
	jle	.LBB68_7
.LBB68_4:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	ldbRedisProtocolToHuman
	movq	%rax, %r13
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	cmpq	%rcx, %rbx
	je	.LBB68_6
# %bb.5:                                #   in Loop: Header=BB68_4 Depth=1
	movq	(%r14), %rdi
	movl	$.L.str.169, %esi
	movl	$1, %edx
	callq	sdscatlen
	movq	%rax, (%r14)
	movq	-48(%rbp), %rax
	jmp	.LBB68_6
.LBB68_1:
	movl	$.L.str.168, %esi
	movl	$4, %edx
	jmp	.LBB68_9
.LBB68_7:
	movq	(%r14), %rax
.LBB68_8:
	movl	$.L.str.170, %esi
	movl	$1, %edx
	movq	%rax, %rdi
.LBB68_9:
	callq	sdscatlen
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	ldbRedisProtocolToHuman_MultiBulk, .Lfunc_end68-ldbRedisProtocolToHuman_MultiBulk
                                        # -- End function
	.globl	ldbPrint                # -- Begin function ldbPrint
	.p2align	4, 0x90
	.type	ldbPrint,@function
ldbPrint:                               # @ldbPrint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r13
	xorl	%r15d, %r15d
	leaq	-160(%rbp), %rdx
	xorl	%esi, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB69_8
# %bb.1:                                # %.preheader1
	leaq	-160(%rbp), %r12
	jmp	.LBB69_4
	.p2align	4, 0x90
.LBB69_3:                               #   in Loop: Header=BB69_4 Depth=1
	addl	$1, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB69_8
.LBB69_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_6 Depth 2
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	callq	lua_getlocal
	testq	%rax, %rax
	je	.LBB69_3
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB69_4 Depth=1
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB69_6:                               #   Parent Loop BB69_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB69_7
# %bb.2:                                #   in Loop: Header=BB69_6 Depth=2
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	lua_getlocal
	addl	$1, %ebx
	testq	%rax, %rax
	jne	.LBB69_6
	jmp	.LBB69_3
.LBB69_8:
	movl	$.L.str.107, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB69_10
# %bb.9:
	movl	$.L.str.106, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB69_10
# %bb.11:
	movl	$.L.str.173, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB69_12
.LBB69_10:
	movq	%r13, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	movq	%r14, %rdx
	callq	lua_getfield
.LBB69_7:
	movl	$.L.str.172, %edi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	$-1, %edx
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ldbLogWithMaxLen
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_settop
.LBB69_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end69:
	.size	ldbPrint, .Lfunc_end69-ldbPrint
                                        # -- End function
	.globl	ldbPrintAll             # -- Begin function ldbPrintAll
	.p2align	4, 0x90
	.type	ldbPrintAll,@function
ldbPrintAll:                            # @ldbPrintAll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, %r14
	leaq	-160(%rbp), %rdx
	xorl	%esi, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB70_7
# %bb.1:
	leaq	-160(%rbp), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	lua_getlocal
	testq	%rax, %rax
	je	.LBB70_7
# %bb.2:                                # %.preheader
	movq	%rax, %rbx
	movl	$2, %r12d
	leaq	-160(%rbp), %r15
	xorl	%r13d, %r13d
	jmp	.LBB70_3
	.p2align	4, 0x90
.LBB70_5:                               #   in Loop: Header=BB70_3 Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	lua_getlocal
	movq	%rax, %rbx
	addl	$1, %r12d
	testq	%rax, %rax
	je	.LBB70_6
.LBB70_3:                               # =>This Inner Loop Header: Depth=1
	movl	$.L.str.174, %esi
	movq	%rbx, %rdi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB70_5
# %bb.4:                                #   in Loop: Header=BB70_3 Depth=1
	callq	sdsempty
	movl	$.L.str.175, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%r14, %rsi
	movl	$-1, %edx
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ldbLogWithMaxLen
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	sdsfree
	addl	$1, %r13d
	jmp	.LBB70_5
.LBB70_6:
	testl	%r13d, %r13d
	jne	.LBB70_8
.LBB70_7:
	movl	$.L.str.176, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB70_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end70:
	.size	ldbPrintAll, .Lfunc_end70-ldbPrintAll
                                        # -- End function
	.globl	ldbBreak                # -- Begin function ldbBreak
	.p2align	4, 0x90
	.type	ldbBreak,@function
ldbBreak:                               # @ldbBreak
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$1, %esi
	jne	.LBB71_1
# %bb.5:
	cmpl	$0, ldb+296(%rip)
	je	.LBB71_6
# %bb.7:
	callq	sdsempty
	movl	ldb+296(%rip), %edx
	movl	$.L.str.178, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, ldb+296(%rip)
	jle	.LBB71_45
# %bb.8:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB71_9:                               # =>This Inner Loop Header: Depth=1
	movl	ldb+40(,%rbx,4), %edi
	callq	ldbLogSourceLine
	addq	$1, %rbx
	movslq	ldb+296(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB71_9
	jmp	.LBB71_45
.LBB71_1:
	cmpl	$2, %esi
	jl	.LBB71_45
# %bb.2:
	movq	%rdi, %r15
	movl	%esi, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB71_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_39 Depth 2
                                        #     Child Loop BB71_28 Depth 2
                                        #     Child Loop BB71_33 Depth 2
	movq	(%r15,%r14,8), %rbx
	movzbl	-1(%rbx), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB71_4
# %bb.10:                               #   in Loop: Header=BB71_3 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI71_0(,%rax,8)
.LBB71_11:                              #   in Loop: Header=BB71_3 Depth=1
	shrq	$3, %rsi
	jmp	.LBB71_16
.LBB71_4:                               #   in Loop: Header=BB71_3 Depth=1
	xorl	%esi, %esi
	jmp	.LBB71_16
.LBB71_12:                              #   in Loop: Header=BB71_3 Depth=1
	movzbl	-3(%rbx), %esi
	jmp	.LBB71_16
.LBB71_13:                              #   in Loop: Header=BB71_3 Depth=1
	movzwl	-5(%rbx), %esi
	jmp	.LBB71_16
.LBB71_14:                              #   in Loop: Header=BB71_3 Depth=1
	movl	-9(%rbx), %esi
	jmp	.LBB71_16
.LBB71_15:                              #   in Loop: Header=BB71_3 Depth=1
	movq	-17(%rbx), %rsi
	.p2align	4, 0x90
.LBB71_16:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	leaq	-56(%rbp), %rdx
	callq	string2l
	testl	%eax, %eax
	je	.LBB71_17
# %bb.18:                               #   in Loop: Header=BB71_3 Depth=1
	movq	-56(%rbp), %r13
	testq	%r13, %r13
	je	.LBB71_19
# %bb.20:                               #   in Loop: Header=BB71_3 Depth=1
	jle	.LBB71_37
# %bb.21:                               #   in Loop: Header=BB71_3 Depth=1
	movslq	ldb+296(%rip), %rax
	cmpq	$64, %rax
	jne	.LBB71_23
# %bb.22:                               #   in Loop: Header=BB71_3 Depth=1
	movl	$.L.str.181, %edi
	jmp	.LBB71_42
	.p2align	4, 0x90
.LBB71_17:                              #   in Loop: Header=BB71_3 Depth=1
	callq	sdsempty
	movl	$.L.str.179, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sdscatfmt
	jmp	.LBB71_43
	.p2align	4, 0x90
.LBB71_19:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$0, ldb+296(%rip)
	movl	$.L.str.180, %edi
	jmp	.LBB71_42
.LBB71_37:                              #   in Loop: Header=BB71_3 Depth=1
	movslq	ldb+296(%rip), %rax
	testq	%rax, %rax
	jle	.LBB71_41
# %bb.38:                               #   in Loop: Header=BB71_3 Depth=1
	negl	%r13d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB71_39:                              #   Parent Loop BB71_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, ldb+40(,%rcx,4)
	je	.LBB71_46
# %bb.40:                               #   in Loop: Header=BB71_39 Depth=2
	addq	$1, %rcx
	addq	$-4, %rdx
	cmpq	%rax, %rcx
	jl	.LBB71_39
.LBB71_41:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.184, %edi
	jmp	.LBB71_42
.LBB71_23:                              #   in Loop: Header=BB71_3 Depth=1
	testl	%r13d, %r13d
	jle	.LBB71_30
# %bb.24:                               #   in Loop: Header=BB71_3 Depth=1
	cmpl	%r13d, ldb+320(%rip)
	jl	.LBB71_30
# %bb.25:                               #   in Loop: Header=BB71_3 Depth=1
	testl	%eax, %eax
	jle	.LBB71_31
# %bb.26:                               #   in Loop: Header=BB71_3 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB71_28:                              #   Parent Loop BB71_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, ldb+40(,%rcx,4)
	je	.LBB71_29
# %bb.27:                               #   in Loop: Header=BB71_28 Depth=2
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB71_28
.LBB71_31:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax), %ecx
	movl	%ecx, ldb+296(%rip)
	movl	%r13d, ldb+40(,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, ldb+320(%rip)
	jle	.LBB71_44
# %bb.32:                               #   in Loop: Header=BB71_3 Depth=1
	leal	-1(%r13), %ebx
	xorl	%r12d, %r12d
	jmp	.LBB71_33
	.p2align	4, 0x90
.LBB71_35:                              #   in Loop: Header=BB71_33 Depth=2
	movl	%r12d, %edi
	callq	ldbLogSourceLine
.LBB71_36:                              #   in Loop: Header=BB71_33 Depth=2
	addl	$-1, %ebx
	cmpl	ldb+320(%rip), %r12d
	jge	.LBB71_44
.LBB71_33:                              #   Parent Loop BB71_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %r12d
	testl	%r13d, %r13d
	je	.LBB71_35
# %bb.34:                               #   in Loop: Header=BB71_33 Depth=2
	movl	%ebx, %edi
	callq	abs
	cmpl	$1, %eax
	jle	.LBB71_35
	jmp	.LBB71_36
.LBB71_46:                              #   in Loop: Header=BB71_3 Depth=1
	addl	$-1, %eax
	movl	%eax, ldb+296(%rip)
	movl	$ldb+40, %edi
	subq	%rdx, %rdi
	movl	$ldb+44, %esi
	subq	%rdx, %rsi
	movslq	%eax, %rdx
	subq	%rcx, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.183, %edi
	jmp	.LBB71_42
.LBB71_29:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB71_30:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.182, %edi
	.p2align	4, 0x90
.LBB71_42:                              #   in Loop: Header=BB71_3 Depth=1
	callq	sdsnew
.LBB71_43:                              #   in Loop: Header=BB71_3 Depth=1
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
.LBB71_44:                              #   in Loop: Header=BB71_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	cmpq	-48(%rbp), %r14         # 8-byte Folded Reload
	jne	.LBB71_3
	jmp	.LBB71_45
.LBB71_6:
	movl	$.L.str.177, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB71_45:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	ldbBreak, .Lfunc_end71-ldbBreak
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI71_0:
	.quad	.LBB71_11
	.quad	.LBB71_12
	.quad	.LBB71_13
	.quad	.LBB71_14
	.quad	.LBB71_15
                                        # -- End function
	.text
	.globl	ldbEval                 # -- Begin function ldbEval
	.p2align	4, 0x90
	.type	ldbEval,@function
ldbEval:                                # @ldbEval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %r14
	leaq	8(%rsi), %rdi
	leal	-1(%rdx), %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	callq	sdsjoinsds
	movq	%rax, %r15
	movl	$.L.str.185, %edi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	sdscatsds
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB72_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI72_0(,%rax,8)
.LBB72_3:
	shrq	$3, %rdx
	jmp	.LBB72_8
.LBB72_1:
	xorl	%edx, %edx
	jmp	.LBB72_8
.LBB72_4:
	movzbl	-3(%rbx), %edx
	jmp	.LBB72_8
.LBB72_5:
	movzwl	-5(%rbx), %edx
	jmp	.LBB72_8
.LBB72_6:
	movl	-9(%rbx), %edx
	jmp	.LBB72_8
.LBB72_7:
	movq	-17(%rbx), %rdx
.LBB72_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.186, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaL_loadbuffer
	testl	%eax, %eax
	je	.LBB72_19
# %bb.9:
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movzbl	-1(%r15), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB72_10
# %bb.11:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI72_1(,%rax,8)
.LBB72_12:
	shrq	$3, %rdx
	jmp	.LBB72_17
.LBB72_10:
	xorl	%edx, %edx
	jmp	.LBB72_17
.LBB72_13:
	movzbl	-3(%r15), %edx
	jmp	.LBB72_17
.LBB72_14:
	movzwl	-5(%r15), %edx
	jmp	.LBB72_17
.LBB72_15:
	movl	-9(%r15), %edx
	jmp	.LBB72_17
.LBB72_16:
	movq	-17(%r15), %rdx
.LBB72_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.186, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaL_loadbuffer
	testl	%eax, %eax
	je	.LBB72_19
# %bb.18:
	callq	sdsempty
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r15, %rdi
	callq	sdsfree
	jmp	.LBB72_23
.LBB72_19:
	movq	%r15, %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	testl	%eax, %eax
	je	.LBB72_21
# %bb.20:
	callq	sdsempty
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	jmp	.LBB72_22
.LBB72_21:
	movl	$.L.str.187, %edi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%r14, %rsi
	movl	$-1, %edx
	xorl	%ecx, %ecx
	callq	ldbCatStackValueRec
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ldbLogWithMaxLen
.LBB72_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
.LBB72_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	ldbEval, .Lfunc_end72-ldbEval
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI72_0:
	.quad	.LBB72_3
	.quad	.LBB72_4
	.quad	.LBB72_5
	.quad	.LBB72_6
	.quad	.LBB72_7
.LJTI72_1:
	.quad	.LBB72_12
	.quad	.LBB72_13
	.quad	.LBB72_14
	.quad	.LBB72_15
	.quad	.LBB72_16
                                        # -- End function
	.text
	.globl	ldbRedis                # -- Begin function ldbRedis
	.p2align	4, 0x90
	.type	ldbRedis,@function
ldbRedis:                               # @ldbRedis
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	server+3056(%rip), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$.L.str.83, %edx
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_getfield
	movl	$.L.str.65, %esi
	movq	%r13, %rdi
	callq	lua_pushstring
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	cmpl	$2, %r14d
	jl	.LBB73_11
# %bb.1:
	movl	%r14d, %ebx
	movl	$1, %r12d
	jmp	.LBB73_2
.LBB73_9:                               #   in Loop: Header=BB73_2 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB73_10:                              #   in Loop: Header=BB73_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	lua_pushlstring
	addq	$1, %r12
	cmpq	%r12, %rbx
	je	.LBB73_11
.LBB73_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%r12,8), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB73_3
# %bb.4:                                #   in Loop: Header=BB73_2 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI73_0(,%rax,8)
.LBB73_5:                               #   in Loop: Header=BB73_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB73_10
.LBB73_3:                               #   in Loop: Header=BB73_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB73_10
.LBB73_6:                               #   in Loop: Header=BB73_2 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB73_10
.LBB73_7:                               #   in Loop: Header=BB73_2 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB73_10
.LBB73_8:                               #   in Loop: Header=BB73_2 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB73_10
.LBB73_11:
	movl	$1, ldb+300(%rip)
	movl	$1, server+3056(%rip)
	addl	$-1, %r14d
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	movl	$0, ldb+300(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, server+3056(%rip)
	movq	%r13, %rdi
	movl	$-3, %esi
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
.Lfunc_end73:
	.size	ldbRedis, .Lfunc_end73-ldbRedis
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI73_0:
	.quad	.LBB73_5
	.quad	.LBB73_6
	.quad	.LBB73_7
	.quad	.LBB73_8
	.quad	.LBB73_9
                                        # -- End function
	.text
	.globl	ldbTrace                # -- Begin function ldbTrace
	.p2align	4, 0x90
	.type	ldbTrace,@function
ldbTrace:                               # @ldbTrace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, %r14
	leaq	-160(%rbp), %rdx
	xorl	%esi, %esi
	callq	lua_getstack
	testl	%eax, %eax
	je	.LBB74_5
# %bb.1:
	movl	$1, %ebx
	leaq	-104(%rbp), %r15
	leaq	-160(%rbp), %r12
	movl	$.L.str.193, %r13d
	jmp	.LBB74_2
	.p2align	4, 0x90
.LBB74_4:                               #   in Loop: Header=BB74_2 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	lua_getstack
	addl	$1, %ebx
	testl	%eax, %eax
	je	.LBB74_6
.LBB74_2:                               # =>This Inner Loop Header: Depth=1
	movl	$.L.str.188, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	lua_getinfo
	movl	$.L.str.189, %esi
	movq	%r15, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB74_4
# %bb.3:                                #   in Loop: Header=BB74_2 Depth=1
	callq	sdsempty
	cmpl	$1, %ebx
	movl	$.L.str.192, %edx
	movl	$.L.str.191, %ecx
	cmoveq	%rcx, %rdx
	movq	-152(%rbp), %rcx
	testq	%rcx, %rcx
	cmoveq	%r13, %rcx
	movl	$.L.str.190, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	-120(%rbp), %edi
	callq	ldbLogSourceLine
	jmp	.LBB74_4
.LBB74_5:
	movl	$.L.str.194, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB74_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end74:
	.size	ldbTrace, .Lfunc_end74-ldbTrace
                                        # -- End function
	.globl	ldbMaxlen               # -- Begin function ldbMaxlen
	.p2align	4, 0x90
	.type	ldbMaxlen,@function
ldbMaxlen:                              # @ldbMaxlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$2, %esi
	jne	.LBB75_2
# %bb.1:
	movq	8(%rdi), %rdi
	callq	atoi
	movl	$1, ldb+344(%rip)
	cmpl	$61, %eax
	cltq
	movl	$60, %ebx
	cmovgeq	%rax, %rbx
	testl	%eax, %eax
	cmoveq	%rax, %rbx
	movq	%rbx, ldb+336(%rip)
	jmp	.LBB75_3
.LBB75_2:
	movq	ldb+336(%rip), %rbx
.LBB75_3:
	callq	sdsempty
	testq	%rbx, %rbx
	je	.LBB75_5
# %bb.4:
	movl	ldb+336(%rip), %edx
	movl	$.L.str.195, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB75_6
.LBB75_5:
	movl	$.L.str.196, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB75_6:
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end75:
	.size	ldbMaxlen, .Lfunc_end75-ldbMaxlen
                                        # -- End function
	.globl	ldbRepl                 # -- Begin function ldbRepl
	.p2align	4, 0x90
	.type	ldbRepl,@function
ldbRepl:                                # @ldbRepl
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
	leaq	-44(%rbp), %r15
	leaq	-1104(%rbp), %r12
.LBB76_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_2 Depth 2
                                        #     Child Loop BB76_58 Depth 2
                                        #     Child Loop BB76_49 Depth 2
	movq	%r15, %rdi
	callq	ldbReplParseCommand
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB76_6
	.p2align	4, 0x90
.LBB76_2:                               #   Parent Loop BB76_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	ldb(%rip), %edi
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rsi
	callq	read
	testl	%eax, %eax
	jle	.LBB76_3
# %bb.4:                                #   in Loop: Header=BB76_2 Depth=2
	movq	ldb+328(%rip), %rdi
	movslq	%eax, %rdx
	movq	%r12, %rsi
	callq	sdscatlen
	movq	%rax, ldb+328(%rip)
	movq	%r15, %rdi
	callq	ldbReplParseCommand
	testq	%rax, %rax
	je	.LBB76_2
# %bb.5:                                #   in Loop: Header=BB76_1 Depth=1
	movq	%rax, %rbx
.LBB76_6:                               #   in Loop: Header=BB76_1 Depth=1
	movq	ldb+328(%rip), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, ldb+328(%rip)
	movq	(%rbx), %r13
	movl	$.L.str.197, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_8
# %bb.7:                                #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.115, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_8
# %bb.9:                                #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.227, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_13
# %bb.10:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.228, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_13
# %bb.11:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.229, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_13
# %bb.12:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.230, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_13
# %bb.16:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.231, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_14
# %bb.17:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.232, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_14
# %bb.18:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.233, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_20
# %bb.19:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.234, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_20
# %bb.21:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.235, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_23
# %bb.22:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.236, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_23
# %bb.24:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.237, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_26
# %bb.25:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.238, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_26
# %bb.27:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.239, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_29
# %bb.28:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.240, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_29
# %bb.30:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.241, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_32
# %bb.31:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.242, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_32
# %bb.33:                               #   in Loop: Header=BB76_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	cmpl	$2, %eax
	jl	.LBB76_37
# %bb.34:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.244, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_36
# %bb.35:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.83, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_36
.LBB76_37:                              #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.245, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_39
# %bb.38:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.246, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_39
# %bb.42:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.247, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_44
# %bb.43:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.248, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_44
# %bb.54:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.249, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_56
# %bb.55:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.250, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB76_56
# %bb.61:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.251, %edi
	jmp	.LBB76_62
	.p2align	4, 0x90
.LBB76_8:                               #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.198, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.199, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.200, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.201, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.202, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.203, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.204, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.205, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.206, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.207, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.208, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.209, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.210, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.211, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.212, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.213, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.214, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.215, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.216, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.217, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.218, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.219, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.220, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.221, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.222, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.37, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.223, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.224, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.225, %edi
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.226, %edi
.LBB76_62:                              #   in Loop: Header=BB76_1 Depth=1
	callq	sdsnew
	movq	ldb+16(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB76_63
.LBB76_20:                              #   in Loop: Header=BB76_1 Depth=1
	movq	%r14, %rdi
	callq	ldbTrace
	jmp	.LBB76_63
.LBB76_23:                              #   in Loop: Header=BB76_1 Depth=1
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	ldbMaxlen
	jmp	.LBB76_63
.LBB76_26:                              #   in Loop: Header=BB76_1 Depth=1
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	ldbBreak
	jmp	.LBB76_63
.LBB76_29:                              #   in Loop: Header=BB76_1 Depth=1
	movl	-44(%rbp), %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ldbEval
	.p2align	4, 0x90
.LBB76_63:                              #   in Loop: Header=BB76_1 Depth=1
	callq	ldbSendLogs
.LBB76_64:                              #   in Loop: Header=BB76_1 Depth=1
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	sdsfreesplitres
	jmp	.LBB76_1
.LBB76_32:                              #   in Loop: Header=BB76_1 Depth=1
	movl	$.L.str.243, %esi
	movq	%r14, %rdi
	callq	lua_pushstring
	movq	%r14, %rdi
	callq	lua_error
	jmp	.LBB76_64
.LBB76_39:                              #   in Loop: Header=BB76_1 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB76_41
# %bb.40:                               #   in Loop: Header=BB76_1 Depth=1
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	ldbPrint
	jmp	.LBB76_63
.LBB76_36:                              #   in Loop: Header=BB76_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	-48(%rbp), %edx         # 4-byte Reload
	callq	ldbRedis
	jmp	.LBB76_63
.LBB76_41:                              #   in Loop: Header=BB76_1 Depth=1
	movq	%r14, %rdi
	callq	ldbPrintAll
	jmp	.LBB76_63
.LBB76_44:                              #   in Loop: Header=BB76_1 Depth=1
	movl	$5, -60(%rbp)           # 4-byte Folded Spill
	movl	ldb+324(%rip), %eax
	movl	-48(%rbp), %r13d        # 4-byte Reload
	cmpl	$2, %r13d
	movq	%r14, -72(%rbp)         # 8-byte Spill
	jl	.LBB76_47
# %bb.45:                               #   in Loop: Header=BB76_1 Depth=1
	movq	8(%rbx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	atoi
	testl	%eax, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmovgl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	$2, %r13d
	je	.LBB76_47
# %bb.46:                               #   in Loop: Header=BB76_1 Depth=1
	movq	16(%rbx), %rdi
	callq	atoi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB76_47:                              #   in Loop: Header=BB76_1 Depth=1
	cmpl	$0, ldb+320(%rip)
	jle	.LBB76_53
# %bb.48:                               #   in Loop: Header=BB76_1 Depth=1
	leal	-1(%rax), %r13d
	xorl	%r14d, %r14d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB76_49
.LBB76_51:                              #   in Loop: Header=BB76_49 Depth=2
	movl	%r14d, %edi
	callq	ldbLogSourceLine
.LBB76_52:                              #   in Loop: Header=BB76_49 Depth=2
	addl	$-1, %r13d
	cmpl	ldb+320(%rip), %r14d
	movq	-56(%rbp), %rax         # 8-byte Reload
	jge	.LBB76_53
.LBB76_49:                              #   Parent Loop BB76_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %r14d
	testl	%eax, %eax
	je	.LBB76_51
# %bb.50:                               #   in Loop: Header=BB76_49 Depth=2
	movl	%r13d, %edi
	callq	abs
	cmpl	-60(%rbp), %eax         # 4-byte Folded Reload
	jle	.LBB76_51
	jmp	.LBB76_52
.LBB76_56:                              #   in Loop: Header=BB76_1 Depth=1
	movq	%r14, -72(%rbp)         # 8-byte Spill
	cmpl	$0, ldb+320(%rip)
	jle	.LBB76_53
# %bb.57:                               # %.preheader
                                        #   in Loop: Header=BB76_1 Depth=1
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB76_58
.LBB76_60:                              #   in Loop: Header=BB76_58 Depth=2
	addl	$-1, %r14d
	cmpl	ldb+320(%rip), %r13d
	jge	.LBB76_53
.LBB76_58:                              #   Parent Loop BB76_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %r13d
	movl	%r14d, %edi
	callq	abs
	cmpl	$1000000, %eax          # imm = 0xF4240
	jg	.LBB76_60
# %bb.59:                               #   in Loop: Header=BB76_58 Depth=2
	movl	%r13d, %edi
	callq	ldbLogSourceLine
	jmp	.LBB76_60
.LBB76_53:                              #   in Loop: Header=BB76_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ldbSendLogs
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB76_64
.LBB76_3:
	movq	$0, ldb+296(%rip)
	movl	$-1, %eax
	jmp	.LBB76_15
.LBB76_13:
	movl	$1, ldb+300(%rip)
.LBB76_14:
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	sdsfreesplitres
	xorl	%eax, %eax
.LBB76_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	ldbRepl, .Lfunc_end76-ldbRepl
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ok"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"err"
	.size	.L.str.2, 4

	.type	ldb,@object             # @ldb
	.comm	ldb,352,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<error> %s"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"nSl"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: %d: %s"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"table"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"sort"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"__redis__compare_helper"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\r\n"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"  "
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-%s\r\n"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"+%s\r\n"
	.size	.L.str.12, 6

	.type	luaRedisGenericCommand.argv,@object # @luaRedisGenericCommand.argv
	.local	luaRedisGenericCommand.argv
	.comm	luaRedisGenericCommand.argv,8,8
	.type	luaRedisGenericCommand.argv_size,@object # @luaRedisGenericCommand.argv_size
	.local	luaRedisGenericCommand.argv_size
	.comm	luaRedisGenericCommand.argv_size,4,4
	.type	luaRedisGenericCommand.cached_objects,@object # @luaRedisGenericCommand.cached_objects
	.local	luaRedisGenericCommand.cached_objects
	.comm	luaRedisGenericCommand.cached_objects,256,16
	.type	luaRedisGenericCommand.cached_objects_len,@object # @luaRedisGenericCommand.cached_objects_len
	.local	luaRedisGenericCommand.cached_objects_len
	.comm	luaRedisGenericCommand.cached_objects_len,256,16
	.type	luaRedisGenericCommand.inuse,@object # @luaRedisGenericCommand.inuse
	.local	luaRedisGenericCommand.inuse
	.comm	luaRedisGenericCommand.inuse,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"luaRedisGenericCommand() recursive call detected. Are you doing funny stuff with Lua debug hooks?"
	.size	.L.str.13, 98

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Please specify at least one argument for redis.call()"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.17g"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Lua redis() command arguments must be strings or integers"
	.size	.L.str.17, 58

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<redis>"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" ... (%d more)"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	" "
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Wrong number of args calling Redis command From Lua script"
	.size	.L.str.21, 59

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Unknown Redis command called from Lua script"
	.size	.L.str.22, 45

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This Redis command is not allowed from scripts"
	.size	.L.str.23, 47

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Write commands not allowed after non deterministic commands. Call redis.replicate_commands() at the start of your script in order to switch to single commands replication mode."
	.size	.L.str.24, 177

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"-MISCONF Errors writing to the AOF file: %s\r\n"
	.size	.L.str.25, 46

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Lua script attempted to access a non local key in a cluster node"
	.size	.L.str.26, 65

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"wrong number of arguments"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"wrong number or type of arguments"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<debug> line %d: "
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	", "
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"You can set the replication behavior only after turning on single commands replication with redis.replicate_commands()."
	.size	.L.str.31, 120

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"redis.set_repl() requires two arguments."
	.size	.L.str.32, 41

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Invalid replication flags. Use REPL_AOF, REPL_REPLICA, REPL_ALL or REPL_NONE."
	.size	.L.str.33, 78

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"redis.log() requires two arguments or more."
	.size	.L.str.34, 44

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"First argument must be a number (log level)."
	.size	.L.str.35, 45

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Invalid debug level."
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.zero	1
	.size	.L.str.37, 1

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"string"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"math"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"debug"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"cjson"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"struct"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"cmsgpack"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"bit"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"loadfile"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"dofile"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"local dbg=debug\n"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"local mt = {}\n"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"setmetatable(_G, mt)\n"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"mt.__newindex = function (t, n, v)\n"
	.size	.L.str.50, 36

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"  if dbg.getinfo(2) then\n"
	.size	.L.str.51, 26

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"    local w = dbg.getinfo(2, \"S\").what\n"
	.size	.L.str.52, 40

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"    if w ~= \"main\" and w ~= \"C\" then\n"
	.size	.L.str.53, 38

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"      error(\"Script attempted to create global variable '\"..tostring(n)..\"'\", 2)\n"
	.size	.L.str.54, 82

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"    end\n"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"  end\n"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"  rawset(t, n, v)\n"
	.size	.L.str.57, 19

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"end\n"
	.size	.L.str.58, 5

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"mt.__index = function (t, n)\n"
	.size	.L.str.59, 30

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"  if dbg.getinfo(2) and dbg.getinfo(2, \"S\").what ~= \"C\" then\n"
	.size	.L.str.60, 62

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"    error(\"Script attempted to access nonexistent global variable '\"..tostring(n)..\"'\", 2)\n"
	.size	.L.str.61, 92

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"  return rawget(t, n)\n"
	.size	.L.str.62, 23

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"debug = nil\n"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"@enable_strict_lua"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"call"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"pcall"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"log"
	.size	.L.str.67, 4

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"LOG_DEBUG"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"LOG_VERBOSE"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"LOG_NOTICE"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"LOG_WARNING"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"sha1hex"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"error_reply"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"status_reply"
	.size	.L.str.74, 13

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"replicate_commands"
	.size	.L.str.75, 19

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"set_repl"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"REPL_NONE"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"REPL_AOF"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"REPL_SLAVE"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"REPL_REPLICA"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"REPL_ALL"
	.size	.L.str.81, 9

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"breakpoint"
	.size	.L.str.82, 11

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"redis"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"random"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"randomseed"
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"function __redis__compare_helper(a,b)\n  if a == false then a = '' end\n  if b == false then b = '' end\n  return a<b\nend\n"
	.size	.L.str.86, 120

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"@cmp_func_def"
	.size	.L.str.87, 14

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"local dbg = debug\nfunction __redis__err__handler(err)\n  local i = dbg.getinfo(2,'nSl')\n  if i and i.what == 'C' then\n    i = dbg.getinfo(3,'nSl')\n  end\n  if i then\n    return i.source .. ':' .. i.currentline .. ': ' .. err\n  else\n    return err\n  end\nend\n"
	.size	.L.str.88, 256

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"@err_handler_def"
	.size	.L.str.89, 17

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"interval is empty"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"function "
	.size	.L.str.91, 10

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"() "
	.size	.L.str.92, 4

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"\nend"
	.size	.L.str.93, 5

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"@user_script"
	.size	.L.str.94, 13

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Error compiling script (new function): %s\n"
	.size	.L.str.95, 43

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Error running script (new function): %s\n"
	.size	.L.str.96, 41

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"retval == DICT_OK"
	.size	.L.str.97, 18

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/scripting.c"
	.size	.L.str.98, 77

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Lua slow script detected: still in execution after %lld milliseconds. You can try killing the script using the SCRIPT KILL command."
	.size	.L.str.99, 132

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Lua script killed by user with SCRIPT KILL."
	.size	.L.str.100, 44

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Script killed by user with SCRIPT KILL..."
	.size	.L.str.101, 42

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Number of keys can't be greater than number of args"
	.size	.L.str.102, 52

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Number of keys can't be negative"
	.size	.L.str.103, 33

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"__redis__err__handler"
	.size	.L.str.104, 22

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"!lua_isnil(lua,-1)"
	.size	.L.str.105, 19

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"KEYS"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"ARGV"
	.size	.L.str.107, 5

	.type	evalGenericCommand.gc_count,@object # @evalGenericCommand.gc_count
	.local	evalGenericCommand.gc_count
	.comm	evalGenericCommand.gc_count,8,8
	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Error running script (call to %s): %s\n"
	.size	.L.str.108, 39

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"EXEC"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"script != NULL"
	.size	.L.str.110, 15

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"SCRIPT"
	.size	.L.str.111, 7

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"LOAD"
	.size	.L.str.112, 5

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"EVAL"
	.size	.L.str.113, 5

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Please use EVAL instead of EVALSHA for debugging"
	.size	.L.str.114, 49

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"help"
	.size	.L.str.115, 5

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"DEBUG (yes|sync|no) -- Set the debug mode for subsequent scripts executed."
	.size	.L.str.116, 75

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"EXISTS <sha1> [<sha1> ...] -- Return information about the existence of the scripts in the script cache."
	.size	.L.str.117, 105

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"FLUSH -- Flush the Lua scripts cache. Very dangerous on replicas."
	.size	.L.str.118, 66

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"KILL -- Kill the currently executing Lua script."
	.size	.L.str.119, 49

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"LOAD <script> -- Load a script into the scripts cache, without executing it."
	.size	.L.str.120, 77

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"flush"
	.size	.L.str.121, 6

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"exists"
	.size	.L.str.122, 7

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"load"
	.size	.L.str.123, 5

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"kill"
	.size	.L.str.124, 5

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"-NOTBUSY No scripts in execution right now.\r\n"
	.size	.L.str.125, 46

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"-UNKILLABLE The busy script was sent by a master instance in the context of replication and cannot be killed.\r\n"
	.size	.L.str.126, 112

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"-UNKILLABLE Sorry the script already executed write commands against the dataset. You can either wait the script termination or kill the server in a hard way using the SHUTDOWN NOSAVE command.\r\n"
	.size	.L.str.127, 195

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"SCRIPT DEBUG must be called outside a pipeline"
	.size	.L.str.128, 47

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"no"
	.size	.L.str.129, 3

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"yes"
	.size	.L.str.130, 4

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"sync"
	.size	.L.str.131, 5

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Use SCRIPT DEBUG yes/sync/no"
	.size	.L.str.132, 29

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	" ..."
	.size	.L.str.133, 5

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"<hint> The above reply was trimmed. Use 'maxlen 0' to disable trimming."
	.size	.L.str.134, 72

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"*%i\r\n"
	.size	.L.str.135, 6

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"+"
	.size	.L.str.136, 2

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Fork() failed: can't run EVAL in debugging mode."
	.size	.L.str.137, 49

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Redis forked for debugging eval"
	.size	.L.str.138, 32

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Redis synchronous debugging eval session started"
	.size	.L.str.139, 49

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"\n"
	.size	.L.str.140, 2

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"<endsession>"
	.size	.L.str.141, 13

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Lua debugging session child exiting"
	.size	.L.str.142, 36

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Redis synchronous debugging eval session ended"
	.size	.L.str.143, 47

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Killing debugging session %ld"
	.size	.L.str.144, 30

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"<out of range source code line>"
	.size	.L.str.145, 32

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"->#"
	.size	.L.str.146, 4

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"-> "
	.size	.L.str.147, 4

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"  #"
	.size	.L.str.148, 4

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"   "
	.size	.L.str.149, 4

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"%s%-3d %s"
	.size	.L.str.150, 10

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"<max recursion level reached! Nested table?>"
	.size	.L.str.151, 45

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"true"
	.size	.L.str.152, 5

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"false"
	.size	.L.str.153, 6

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"%g"
	.size	.L.str.154, 3

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"nil"
	.size	.L.str.155, 4

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"; "
	.size	.L.str.156, 3

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"["
	.size	.L.str.157, 2

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"]="
	.size	.L.str.158, 3

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"{"
	.size	.L.str.159, 2

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"}"
	.size	.L.str.160, 2

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"unknown"
	.size	.L.str.161, 8

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"function"
	.size	.L.str.162, 9

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"userdata"
	.size	.L.str.163, 9

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"thread"
	.size	.L.str.164, 7

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"light-userdata"
	.size	.L.str.165, 15

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"\"%s@%p\""
	.size	.L.str.166, 8

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"\"<unknown-lua-type>\""
	.size	.L.str.167, 21

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"NULL"
	.size	.L.str.168, 5

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	","
	.size	.L.str.169, 2

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"]"
	.size	.L.str.170, 2

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"<reply> "
	.size	.L.str.171, 9

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"<value> "
	.size	.L.str.172, 9

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"No such variable."
	.size	.L.str.173, 18

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"(*temporary)"
	.size	.L.str.174, 13

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"<value> %s = "
	.size	.L.str.175, 14

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"No local variables in the current context."
	.size	.L.str.176, 43

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"No breakpoints set. Use 'b <line>' to add one."
	.size	.L.str.177, 47

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"%i breakpoints set:"
	.size	.L.str.178, 20

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Invalid argument:'%s'"
	.size	.L.str.179, 22

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"All breakpoints removed."
	.size	.L.str.180, 25

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Too many breakpoints set."
	.size	.L.str.181, 26

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Wrong line number."
	.size	.L.str.182, 19

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Breakpoint removed."
	.size	.L.str.183, 20

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"No breakpoint in the specified line."
	.size	.L.str.184, 37

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"return "
	.size	.L.str.185, 8

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"@ldb_eval"
	.size	.L.str.186, 10

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"<retval> "
	.size	.L.str.187, 10

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Snl"
	.size	.L.str.188, 4

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"user_script"
	.size	.L.str.189, 12

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"%s %s:"
	.size	.L.str.190, 7

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"In"
	.size	.L.str.191, 3

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"From"
	.size	.L.str.192, 5

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"top level"
	.size	.L.str.193, 10

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"<error> Can't retrieve Lua stack."
	.size	.L.str.194, 34

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"<value> replies are truncated at %d bytes."
	.size	.L.str.195, 43

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"<value> replies are unlimited."
	.size	.L.str.196, 31

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"h"
	.size	.L.str.197, 2

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"Redis Lua debugger help:"
	.size	.L.str.198, 25

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"[h]elp               Show this help."
	.size	.L.str.199, 37

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"[s]tep               Run current line and stop again."
	.size	.L.str.200, 54

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"[n]ext               Alias for step."
	.size	.L.str.201, 37

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"[c]continue          Run till next breakpoint."
	.size	.L.str.202, 47

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"[l]list              List source code around current line."
	.size	.L.str.203, 59

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"[l]list [line]       List source code around [line]."
	.size	.L.str.204, 53

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"                     line = 0 means: current position."
	.size	.L.str.205, 55

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"[l]list [line] [ctx] In this form [ctx] specifies how many lines"
	.size	.L.str.206, 65

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"                     to show before/after [line]."
	.size	.L.str.207, 50

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"[w]hole              List all source code. Alias for 'list 1 1000000'."
	.size	.L.str.208, 71

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"[p]rint              Show all the local variables."
	.size	.L.str.209, 51

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"[p]rint <var>        Show the value of the specified variable."
	.size	.L.str.210, 63

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"                     Can also show global vars KEYS and ARGV."
	.size	.L.str.211, 62

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"[b]reak              Show all breakpoints."
	.size	.L.str.212, 43

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"[b]reak <line>       Add a breakpoint to the specified line."
	.size	.L.str.213, 61

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"[b]reak -<line>      Remove breakpoint from the specified line."
	.size	.L.str.214, 64

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"[b]reak 0            Remove all breakpoints."
	.size	.L.str.215, 45

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"[t]race              Show a backtrace."
	.size	.L.str.216, 39

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"[e]eval <code>       Execute some Lua code (in a different callframe)."
	.size	.L.str.217, 71

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"[r]edis <cmd>        Execute a Redis command."
	.size	.L.str.218, 46

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"[m]axlen [len]       Trim logged Redis replies and Lua var dumps to len."
	.size	.L.str.219, 73

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"                     Specifying zero as <len> means unlimited."
	.size	.L.str.220, 63

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"[a]bort              Stop the execution of the script. In sync"
	.size	.L.str.221, 63

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"                     mode dataset changes will be retained."
	.size	.L.str.222, 60

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"Debugger functions you can call from Lua scripts:"
	.size	.L.str.223, 50

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"redis.debug()        Produce logs in the debugger console."
	.size	.L.str.224, 59

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"redis.breakpoint()   Stop execution like if there was a breakpoing."
	.size	.L.str.225, 68

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"                     in the next line of code."
	.size	.L.str.226, 47

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"s"
	.size	.L.str.227, 2

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"step"
	.size	.L.str.228, 5

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"n"
	.size	.L.str.229, 2

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"next"
	.size	.L.str.230, 5

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"c"
	.size	.L.str.231, 2

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"continue"
	.size	.L.str.232, 9

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"t"
	.size	.L.str.233, 2

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"trace"
	.size	.L.str.234, 6

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"m"
	.size	.L.str.235, 2

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"maxlen"
	.size	.L.str.236, 7

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"b"
	.size	.L.str.237, 2

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"break"
	.size	.L.str.238, 6

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"e"
	.size	.L.str.239, 2

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"eval"
	.size	.L.str.240, 5

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"a"
	.size	.L.str.241, 2

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"abort"
	.size	.L.str.242, 6

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"script aborted for user request"
	.size	.L.str.243, 32

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"r"
	.size	.L.str.244, 2

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"p"
	.size	.L.str.245, 2

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"print"
	.size	.L.str.246, 6

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"l"
	.size	.L.str.247, 2

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"list"
	.size	.L.str.248, 5

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"w"
	.size	.L.str.249, 2

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"whole"
	.size	.L.str.250, 6

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"<error> Unknown Redis Lua debugger command or wrong number of arguments."
	.size	.L.str.251, 73

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"Sl"
	.size	.L.str.252, 3

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"step over"
	.size	.L.str.253, 10

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"redis.breakpoint() called"
	.size	.L.str.254, 26

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"break point"
	.size	.L.str.255, 12

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"timeout reached, infinite loop?"
	.size	.L.str.256, 32

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"* Stopped at %d, stop reason = %s"
	.size	.L.str.257, 34

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"timeout during Lua debugging with client closing connection"
	.size	.L.str.258, 60

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.ldbCatStackValueRec,@object # @switch.table.ldbCatStackValueRec
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.ldbCatStackValueRec:
	.quad	.L.str.165
	.quad	.L.str.161
	.quad	.L.str.161
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.size	.Lswitch.table.ldbCatStackValueRec, 56

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
