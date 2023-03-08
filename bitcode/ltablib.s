	.text
	.file	"ltablib.c"
	.globl	luaopen_table           # -- Begin function luaopen_table
	.p2align	4, 0x90
	.type	luaopen_table,@function
luaopen_table:                          # @luaopen_table
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %esi
	movl	$tab_funcs, %edx
	callq	luaL_register
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_table, .Lfunc_end0-luaopen_table
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tconcat
	.type	tconcat,@function
tconcat:                                # @tconcat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdi, %r12
	leaq	-48(%rbp), %rcx
	movl	$.L.str.10, %edx
	movl	$2, %esi
	callq	luaL_optlstring
	movq	%rax, %r14
	movq	%r12, %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movl	$1, %edx
	movq	%r12, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movq	%rax, %rbx
	movq	%r12, %rdi
	movl	$4, %esi
	callq	lua_type
	movq	%r12, %rdi
	testl	%eax, %eax
	jle	.LBB1_1
# %bb.2:
	movl	$4, %esi
	callq	luaL_checkinteger
	jmp	.LBB1_3
.LBB1_1:
	movl	$1, %esi
	callq	lua_objlen
.LBB1_3:
	movq	%rax, %r15
	leaq	-1096(%rbp), %rsi
	movq	%r12, %rdi
	callq	luaL_buffinit
	cmpl	%r15d, %ebx
	jge	.LBB1_8
# %bb.4:                                # %.preheader
	leaq	-1096(%rbp), %r13
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=1
	movq	%r13, %rdi
	callq	luaL_addvalue
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	luaL_addlstring
	addl	$1, %ebx
	cmpl	%ebx, %r15d
	je	.LBB1_9
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_isstring
	testl	%eax, %eax
	jne	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB1_7
.LBB1_8:
	jne	.LBB1_12
.LBB1_9:
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%r15d, %edx
	callq	lua_rawgeti
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_isstring
	testl	%eax, %eax
	jne	.LBB1_11
# %bb.10:
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	luaL_error
.LBB1_11:
	leaq	-1096(%rbp), %rdi
	callq	luaL_addvalue
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
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
.Lfunc_end1:
	.size	tconcat, .Lfunc_end1-tconcat
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function foreach
	.type	foreach,@function
foreach:                                # @foreach
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	$6, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_next
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB2_4
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	jne	.LBB2_3
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_next
	testl	%eax, %eax
	jne	.LBB2_2
	jmp	.LBB2_4
.LBB2_3:
	movl	$1, %r14d
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	foreach, .Lfunc_end2-foreach
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function foreachi
	.type	foreachi,@function
foreachi:                               # @foreachi
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
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_objlen
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	$2, %esi
	movl	$6, %edx
	callq	luaL_checktype
	testl	%ebx, %ebx
	jle	.LBB3_4
# %bb.1:
	movslq	%ebx, %r12
	movl	$1, %ebx
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_pushvalue
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r14, %rdi
	movl	$2, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_type
	testl	%eax, %eax
	jne	.LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	cmpq	%r12, %rbx
	leaq	1(%rbx), %rbx
	jl	.LBB3_2
.LBB3_4:
	xorl	%r15d, %r15d
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	foreachi, .Lfunc_end3-foreachi
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getn
	.type	getn,@function
getn:                                   # @getn
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
	callq	lua_objlen
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
	.size	getn, .Lfunc_end4-getn
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function maxn
	.type	maxn,@function
maxn:                                   # @maxn
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
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_next
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB5_1
# %bb.2:                                # %.preheader
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB5_6
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$3, %eax
	jne	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	maxsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
.LBB5_6:
	movq	%rbx, %rdi
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	maxn, .Lfunc_end5-maxn
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tinsert
	.type	tinsert,@function
tinsert:                                # @tinsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_objlen
	movq	%rax, %r12
	leal	1(%rax), %r13d
	movq	%r14, %rdi
	callq	lua_gettop
	cmpl	$2, %eax
	je	.LBB6_6
# %bb.1:
	cmpl	$3, %eax
	jne	.LBB6_8
# %bb.2:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	cmpl	%r15d, %r12d
	jl	.LBB6_5
# %bb.3:
	cmpl	%r15d, %r13d
	cmovll	%r15d, %r13d
	.p2align	4, 0x90
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	leal	-1(%r13), %ebx
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawseti
	movl	%ebx, %r13d
	cmpl	%r15d, %ebx
	jg	.LBB6_4
.LBB6_5:
	movl	%r15d, %r13d
.LBB6_6:
	movq	%r14, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawseti
	xorl	%eax, %eax
	jmp	.LBB6_7
.LBB6_8:
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tinsert, .Lfunc_end6-tinsert
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tremove
	.type	tremove,@function
tremove:                                # @tremove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%r12, %rdi
	movl	$1, %esi
	callq	lua_objlen
	movq	%rax, %r14
	movslq	%r14d, %rdx
	movq	%r12, %rdi
	movl	$2, %esi
	callq	luaL_optinteger
	movq	%rax, %r13
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jle	.LBB7_5
# %bb.1:
	cmpl	%r14d, %r13d
	jg	.LBB7_5
# %bb.2:
	movl	$1, %r15d
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawgeti
	cmpl	%r14d, %r13d
	jge	.LBB7_4
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	leal	1(%r13), %ebx
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawseti
	movl	%ebx, %r13d
	cmpl	%ebx, %r14d
	jne	.LBB7_3
.LBB7_4:
	movq	%r12, %rdi
	callq	lua_pushnil
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	lua_rawseti
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tremove, .Lfunc_end7-tremove
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function setn
	.type	setn,@function
setn:                                   # @setn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	setn, .Lfunc_end8-setn
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sort
	.type	sort,@function
sort:                                   # @sort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$5, %edx
	callq	luaL_checktype
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_objlen
	movq	%rax, %r14
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movl	$40, %esi
	callq	luaL_checkstack
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_type
	testl	%eax, %eax
	jle	.LBB9_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	$6, %edx
	callq	luaL_checktype
.LBB9_2:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	auxsort
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sort, .Lfunc_end9-sort
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function auxsort
	.type	auxsort,@function
auxsort:                                # @auxsort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpl	%esi, %edx
	jle	.LBB10_27
# %bb.1:                                # %.preheader3
	movl	%edx, %r12d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_26:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$-4, %esi
	movl	%eax, %r12d
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	-48(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawseti
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	subl	%r12d, %eax
	subl	%r15d, %r12d
	leal	2(%r13), %esi
	cmpl	%eax, %r12d
	movl	%r15d, %r14d
	cmovll	%esi, %r14d
	movl	%r13d, %r12d
	cmovll	%edx, %r12d
	cmovll	%r13d, %edx
	cmovll	%r15d, %esi
	movq	%rbx, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	auxsort
	movl	%r12d, %eax
	movl	%r14d, %r15d
	cmpl	%r14d, %r12d
	movq	%rax, %r12
	jle	.LBB10_27
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_14 Depth 2
                                        #       Child Loop BB10_15 Depth 3
                                        #       Child Loop BB10_20 Depth 3
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	$-2, %edx
	callq	sort_comp
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	movl	$1, %esi
	movl	%r15d, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawseti
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_5
	.p2align	4, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$-3, %esi
	callq	lua_settop
.LBB10_5:                               #   in Loop: Header=BB10_2 Depth=1
	movl	%r12d, %r14d
	subl	%r15d, %r14d
	cmpl	$1, %r14d
	je	.LBB10_27
# %bb.6:                                #   in Loop: Header=BB10_2 Depth=1
	leal	(%r12,%r15), %eax
	movl	%eax, %r13d
	shrl	$31, %r13d
	addl	%eax, %r13d
	sarl	%r13d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	$-1, %edx
	callq	sort_comp
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB10_9
# %bb.7:                                #   in Loop: Header=BB10_2 Depth=1
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %edx
	jmp	.LBB10_8
	.p2align	4, 0x90
.LBB10_9:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$-2, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	$-2, %edx
	callq	sort_comp
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
.LBB10_8:                               #   in Loop: Header=BB10_2 Depth=1
	callq	lua_rawseti
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	je	.LBB10_27
.LBB10_13:                              #   in Loop: Header=BB10_2 Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	leal	-1(%r12), %r14d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r13d, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	lua_rawseti
	movl	%r15d, %eax
	movl	%r14d, -48(%rbp)        # 4-byte Spill
                                        # kill: def $r14d killed $r14d def $r14
	movq	%r12, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB10_14:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_15 Depth 3
                                        #       Child Loop BB10_20 Depth 3
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r13), %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	$-2, %edx
	callq	sort_comp
	testl	%eax, %eax
	jne	.LBB10_15
	jmp	.LBB10_19
	.p2align	4, 0x90
.LBB10_17:                              #   in Loop: Header=BB10_15 Depth=3
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	leal	2(%r13), %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	$-2, %edx
	callq	sort_comp
	addl	$1, %r13d
	testl	%eax, %eax
	je	.LBB10_18
.LBB10_15:                              #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%r13d, %r12d
	jg	.LBB10_17
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=3
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_18:                              # %.loopexit2
                                        #   in Loop: Header=BB10_14 Depth=2
	leal	1(%r13), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB10_19:                              #   in Loop: Header=BB10_14 Depth=2
	leal	-1(%r14), %r12d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-3, %esi
	movl	$-1, %edx
	callq	sort_comp
	testl	%eax, %eax
	jne	.LBB10_20
	jmp	.LBB10_24
	.p2align	4, 0x90
.LBB10_22:                              #   in Loop: Header=BB10_20 Depth=3
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	leal	-2(%r14), %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-3, %esi
	movl	$-1, %edx
	callq	sort_comp
	addl	$-1, %r14d
	testl	%eax, %eax
	je	.LBB10_23
.LBB10_20:                              #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%r15d, %r14d
	jg	.LBB10_22
# %bb.21:                               #   in Loop: Header=BB10_20 Depth=3
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB10_22
	.p2align	4, 0x90
.LBB10_23:                              # %.loopexit
                                        #   in Loop: Header=BB10_14 Depth=2
	leal	-1(%r14), %r12d
.LBB10_24:                              #   in Loop: Header=BB10_14 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	%rbx, %rdi
	cmpl	%eax, %r14d
	jle	.LBB10_26
# %bb.25:                               #   in Loop: Header=BB10_14 Depth=2
	movl	$1, %esi
	movl	-44(%rbp), %edx         # 4-byte Reload
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	lua_rawseti
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%r12d, %r14d
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB10_14
.LBB10_11:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$-3, %esi
	callq	lua_settop
	cmpl	$2, %r14d
	jne	.LBB10_13
.LBB10_27:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	auxsort, .Lfunc_end10-auxsort
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sort_comp
	.type	sort_comp,@function
sort_comp:                              # @sort_comp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB11_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_pushvalue
	addl	$-1, %r15d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	lua_pushvalue
	addl	$-2, %r14d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	$1, %edx
	callq	lua_call
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movl	%eax, %r14d
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	jmp	.LBB11_3
.LBB11_2:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	lua_lessthan
	movl	%eax, %r14d
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	sort_comp, .Lfunc_end11-sort_comp
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"table"
	.size	.L.str, 6

	.type	tab_funcs,@object       # @tab_funcs
	.section	.rodata,"a",@progbits
	.p2align	4
tab_funcs:
	.quad	.L.str.1
	.quad	tconcat
	.quad	.L.str.2
	.quad	foreach
	.quad	.L.str.3
	.quad	foreachi
	.quad	.L.str.4
	.quad	getn
	.quad	.L.str.5
	.quad	maxn
	.quad	.L.str.6
	.quad	tinsert
	.quad	.L.str.7
	.quad	tremove
	.quad	.L.str.8
	.quad	setn
	.quad	.L.str.9
	.quad	sort
	.zero	16
	.size	tab_funcs, 160

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"concat"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"foreach"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"foreachi"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"getn"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"maxn"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"insert"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"remove"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"setn"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sort"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"invalid value (%s) at index %d in table for 'concat'"
	.size	.L.str.11, 53

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"wrong number of arguments to 'insert'"
	.size	.L.str.12, 38

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"'setn' is obsolete"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"invalid order function for sorting"
	.size	.L.str.14, 35

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
