	.text
	.file	"lapi.c"
	.hidden	luaA_pushobject         # -- Begin function luaA_pushobject
	.globl	luaA_pushobject
	.p2align	4, 0x90
	.type	luaA_pushobject,@function
luaA_pushobject:                        # @luaA_pushobject
# %bb.0:
	movq	16(%rdi), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movl	8(%rsi), %ecx
	movl	%ecx, 8(%rax)
	addq	$16, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	luaA_pushobject, .Lfunc_end0-luaA_pushobject
                                        # -- End function
	.globl	lua_checkstack          # -- Begin function lua_checkstack
	.p2align	4, 0x90
	.type	lua_checkstack,@function
lua_checkstack:                         # @lua_checkstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8000, %esi             # imm = 0x1F40
	jg	.LBB1_2
# %bb.1:
	movq	%rdi, %rbx
	movq	16(%rdi), %rax
	movq	%rax, %rcx
	subq	24(%rdi), %rcx
	sarq	$4, %rcx
	movslq	%esi, %r15
	addq	%r15, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8001, %rcx             # imm = 0x1F41
	jl	.LBB1_3
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testl	%esi, %esi
	jle	.LBB1_8
# %bb.4:
	movq	56(%rbx), %rcx
	subq	%rax, %rcx
	movl	%esi, %edx
	shll	$4, %edx
	movslq	%edx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jg	.LBB1_6
# %bb.5:
	movq	%rbx, %rdi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
.LBB1_6:
	movq	40(%rbx), %rcx
	shlq	$4, %r15
	addq	%rax, %r15
	cmpq	%r15, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_8
# %bb.7:
	movq	%r15, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.Lfunc_end1:
	.size	lua_checkstack, .Lfunc_end1-lua_checkstack
                                        # -- End function
	.globl	lua_xmove               # -- Begin function lua_xmove
	.p2align	4, 0x90
	.type	lua_xmove,@function
lua_xmove:                              # @lua_xmove
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB2_8
# %bb.1:
	movq	16(%rdi), %r8
	movslq	%edx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%r8, %r9
	subq	%rcx, %r9
	movq	%r9, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB2_8
# %bb.2:
	negq	%rax
	movq	16(%rsi), %r10
	leaq	16(%r10), %rcx
	movq	%rcx, 16(%rsi)
	movq	(%r9), %rcx
	movq	%rcx, (%r10)
	shlq	$4, %rax
	movl	8(%r8,%rax), %eax
	movl	%eax, 8(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	je	.LBB2_8
# %bb.3:
	movl	%edx, %r8d
	notl	%r8d
	andl	$1, %r8d
	movl	$1, %r10d
	cmpl	$2, %edx
	je	.LBB2_6
# %bb.4:
	movl	%edx, %r9d
	movl	%r8d, %eax
	subq	%rax, %r9
	movl	$1, %r10d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rdi), %r11
	movq	16(%rsi), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, 16(%rsi)
	movq	16(%r11,%rcx), %rdx
	movq	%rdx, (%rax)
	movl	24(%r11,%rcx), %edx
	movl	%edx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %r11
	movq	16(%rsi), %rdx
	leaq	16(%rdx), %rax
	movq	%rax, 16(%rsi)
	movq	32(%r11,%rcx), %rax
	movq	%rax, (%rdx)
	movl	40(%r11,%rcx), %eax
	movl	%eax, 8(%rdx)
	addq	$2, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rcx
	cmpq	%r10, %r9
	jne	.LBB2_5
.LBB2_6:
	testl	%r8d, %r8d
	je	.LBB2_8
# %bb.7:
	movq	16(%rdi), %rax
	shlq	$4, %r10
	movq	16(%rsi), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movq	(%rax,%r10), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax,%r10), %eax
	movl	%eax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	lua_xmove, .Lfunc_end2-lua_xmove
                                        # -- End function
	.globl	lua_setlevel            # -- Begin function lua_setlevel
	.p2align	4, 0x90
	.type	lua_setlevel,@function
lua_setlevel:                           # @lua_setlevel
# %bb.0:
	movzwl	96(%rdi), %eax
	movw	%ax, 96(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	lua_setlevel, .Lfunc_end3-lua_setlevel
                                        # -- End function
	.globl	lua_atpanic             # -- Begin function lua_atpanic
	.p2align	4, 0x90
	.type	lua_atpanic,@function
lua_atpanic:                            # @lua_atpanic
# %bb.0:
	movq	32(%rdi), %rcx
	movq	152(%rcx), %rax
	movq	%rsi, 152(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	lua_atpanic, .Lfunc_end4-lua_atpanic
                                        # -- End function
	.globl	lua_newthread           # -- Begin function lua_newthread
	.p2align	4, 0x90
	.type	lua_newthread,@function
lua_newthread:                          # @lua_newthread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB5_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB5_2:
	movq	%rbx, %rdi
	callq	luaE_newthread
	movq	16(%rbx), %rcx
	movq	%rax, (%rcx)
	movl	$8, 8(%rcx)
	addq	$16, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lua_newthread, .Lfunc_end5-lua_newthread
                                        # -- End function
	.globl	lua_gettop              # -- Begin function lua_gettop
	.p2align	4, 0x90
	.type	lua_gettop,@function
lua_gettop:                             # @lua_gettop
# %bb.0:
	movq	16(%rdi), %rax
	subq	24(%rdi), %rax
	shrq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end6:
	.size	lua_gettop, .Lfunc_end6-lua_gettop
                                        # -- End function
	.globl	lua_settop              # -- Begin function lua_settop
	.p2align	4, 0x90
	.type	lua_settop,@function
lua_settop:                             # @lua_settop
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB7_4
# %bb.1:
	movq	16(%rdi), %rcx
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB7_5
# %bb.2:                                # %.preheader
	addq	$16, %rcx
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, 16(%rdi)
	movl	$0, -8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	16(%rcx), %rcx
	jb	.LBB7_3
	jmp	.LBB7_5
.LBB7_4:
	movslq	%esi, %rax
	shlq	$4, %rax
	movq	16(%rdi), %rcx
	addq	%rcx, %rax
	addq	$16, %rax
.LBB7_5:
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	lua_settop, .Lfunc_end7-lua_settop
                                        # -- End function
	.globl	lua_remove              # -- Begin function lua_remove
	.p2align	4, 0x90
	.type	lua_remove,@function
lua_remove:                             # @lua_remove
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB8_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB8_12
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB8_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB8_12
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB8_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB8_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB8_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB8_12
.LBB8_9:
	leaq	120(%rdi), %rax
	jmp	.LBB8_12
.LBB8_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB8_12
.LBB8_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB8_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rax
	movq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB8_15
	.p2align	4, 0x90
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movq	%rcx, -16(%rax)
	movl	8(%rax), %ecx
	movl	%ecx, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jb	.LBB8_13
.LBB8_15:
	addq	$-16, %rcx
	movq	%rcx, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end8:
	.size	lua_remove, .Lfunc_end8-lua_remove
                                        # -- End function
	.globl	lua_insert              # -- Begin function lua_insert
	.p2align	4, 0x90
	.type	lua_insert,@function
lua_insert:                             # @lua_insert
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB9_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB9_12
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB9_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB9_12
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB9_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB9_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB9_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB9_12
.LBB9_9:
	leaq	120(%rdi), %rax
	jmp	.LBB9_12
.LBB9_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB9_12
.LBB9_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB9_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jbe	.LBB9_15
	.p2align	4, 0x90
.LBB9_13:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rcx), %rdx
	movq	%rdx, (%rcx)
	movl	-8(%rcx), %edx
	movl	%edx, 8(%rcx)
	addq	$-16, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	ja	.LBB9_13
# %bb.14:
	movq	16(%rdi), %rcx
.LBB9_15:
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rcx), %ecx
	movl	%ecx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	lua_insert, .Lfunc_end9-lua_insert
                                        # -- End function
	.globl	lua_replace             # -- Begin function lua_replace
	.p2align	4, 0x90
	.type	lua_replace,@function
lua_replace:                            # @lua_replace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10001, %esi           # imm = 0xD8EF
	jne	.LBB10_9
# %bb.1:
	movq	40(%rbx), %rax
	cmpq	80(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_3
# %bb.2:
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
.LBB10_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_4:
	movq	40(%rbx), %rax
	movq	8(%rax), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rbx)
	movl	$5, 144(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	movq	16(%rbx), %rax
	movq	-16(%rax), %rax
	movq	%rax, 24(%rsi)
	movq	16(%rbx), %rax
	cmpl	$4, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_8
# %bb.5:
	movq	-16(%rax), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_8
# %bb.6:
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_8
# %bb.7:
	movq	%rbx, %rdi
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
.LBB10_8:
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	jmp	.LBB10_24
.LBB10_9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_11
# %bb.10:
	movq	24(%rbx), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB10_19
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB10_13
# %bb.12:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rbx), %rax
	jmp	.LBB10_19
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB10_25
# %bb.14:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	je	.LBB10_18
# %bb.15:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB10_4
# %bb.16:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%edi, %edx
	jg	.LBB10_19
# %bb.17:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_19
.LBB10_25:
	leaq	120(%rbx), %rax
	jmp	.LBB10_19
.LBB10_18:
	movl	$160, %eax
	addq	32(%rbx), %rax
.LBB10_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rbx), %r14
	movq	16(%rbx), %rcx
	movq	-16(%rcx), %rdx
	movq	%rdx, (%rax)
	movl	-8(%rcx), %ecx
	movl	%ecx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10003, %esi           # imm = 0xD8ED
	jg	.LBB10_24
# %bb.20:
	movq	(%r14), %rax
	cmpl	$4, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_24
# %bb.21:
	movq	-16(%rax), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_24
# %bb.22:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_24
# %bb.23:
	movq	%rbx, %rdi
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
.LBB10_24:
	addq	$-16, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lua_replace, .Lfunc_end10-lua_replace
                                        # -- End function
	.globl	lua_pushvalue           # -- Begin function lua_pushvalue
	.p2align	4, 0x90
	.type	lua_pushvalue,@function
lua_pushvalue:                          # @lua_pushvalue
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB11_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB11_12
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB11_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB11_12
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB11_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB11_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB11_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB11_12
.LBB11_9:
	leaq	120(%rdi), %rax
	jmp	.LBB11_12
.LBB11_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB11_12
.LBB11_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB11_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	addq	$16, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end11:
	.size	lua_pushvalue, .Lfunc_end11-lua_pushvalue
                                        # -- End function
	.globl	lua_type                # -- Begin function lua_type
	.p2align	4, 0x90
	.type	lua_type,@function
lua_type:                               # @lua_type
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB12_3
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB12_14
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB12_17
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB12_5
# %bb.4:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB12_13
.LBB12_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB12_10
# %bb.6:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB12_9
# %bb.7:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB12_11
# %bb.8:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB12_13
.LBB12_10:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB12_13
.LBB12_9:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB12_13
.LBB12_11:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB12_13
# %bb.12:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB12_15
# %bb.16:
	movl	8(%rax), %eax
.LBB12_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB12_15:
	movl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end12:
	.size	lua_type, .Lfunc_end12-lua_type
                                        # -- End function
	.globl	lua_typename            # -- Begin function lua_typename
	.p2align	4, 0x90
	.type	lua_typename,@function
lua_typename:                           # @lua_typename
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB13_1
# %bb.2:
	movslq	%esi, %rax
	movq	luaT_typenames(,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB13_1:
	movl	$.L.str.1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end13:
	.size	lua_typename, .Lfunc_end13-lua_typename
                                        # -- End function
	.globl	lua_iscfunction         # -- Begin function lua_iscfunction
	.p2align	4, 0x90
	.type	lua_iscfunction,@function
lua_iscfunction:                        # @lua_iscfunction
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB14_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmovbq	%rax, %rcx
	jmp	.LBB14_12
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB14_4
# %bb.3:
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	16(%rdi), %rcx
	jmp	.LBB14_12
.LBB14_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB14_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB14_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB14_10
# %bb.7:
	movl	$160, %ecx
	addq	32(%rdi), %rcx
	jmp	.LBB14_12
.LBB14_9:
	addq	$120, %rdi
	movq	%rdi, %rcx
	jmp	.LBB14_12
.LBB14_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rcx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB14_12
.LBB14_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpl	%esi, %edx
	jg	.LBB14_12
# %bb.11:
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$24, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$6, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_14
# %bb.13:
	movq	(%rcx), %rcx
	xorl	%eax, %eax
	cmpb	$0, 10(%rcx)
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB14_14:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end14:
	.size	lua_iscfunction, .Lfunc_end14-lua_iscfunction
                                        # -- End function
	.globl	lua_isnumber            # -- Begin function lua_isnumber
	.p2align	4, 0x90
	.type	lua_isnumber,@function
lua_isnumber:                           # @lua_isnumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB15_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmovbq	%rax, %rcx
	jmp	.LBB15_12
.LBB15_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB15_4
# %bb.3:
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	16(%rdi), %rcx
	jmp	.LBB15_12
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB15_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB15_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB15_10
# %bb.7:
	movl	$160, %ecx
	addq	32(%rdi), %rcx
	jmp	.LBB15_12
.LBB15_9:
	addq	$120, %rdi
	movq	%rdi, %rcx
	jmp	.LBB15_12
.LBB15_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rcx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB15_12
.LBB15_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpl	%esi, %edx
	jg	.LBB15_12
# %bb.11:
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$24, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB15_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB15_14
# %bb.13:
	leaq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	luaV_tonumber
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB15_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	lua_isnumber, .Lfunc_end15-lua_isnumber
                                        # -- End function
	.globl	lua_isstring            # -- Begin function lua_isstring
	.p2align	4, 0x90
	.type	lua_isstring,@function
lua_isstring:                           # @lua_isstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	lua_type
	addl	$-3, %eax
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	setb	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lua_isstring, .Lfunc_end16-lua_isstring
                                        # -- End function
	.globl	lua_isuserdata          # -- Begin function lua_isuserdata
	.p2align	4, 0x90
	.type	lua_isuserdata,@function
lua_isuserdata:                         # @lua_isuserdata
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB17_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB17_12
.LBB17_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB17_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB17_12
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB17_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB17_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB17_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB17_12
.LBB17_9:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB17_12
.LBB17_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB17_12
.LBB17_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB17_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB17_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$7, %ecx
	je	.LBB17_14
# %bb.13:
	xorl	%eax, %eax
	cmpl	$2, %ecx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB17_14:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	lua_isuserdata, .Lfunc_end17-lua_isuserdata
                                        # -- End function
	.globl	lua_rawequal            # -- Begin function lua_rawequal
	.p2align	4, 0x90
	.type	lua_rawequal,@function
lua_rawequal:                           # @lua_rawequal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB18_2
# %bb.1:
	movq	24(%rax), %rcx
	movslq	%esi, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	addq	$-16, %rcx
	cmpq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %edi
	cmovbq	%rcx, %rdi
	jmp	.LBB18_12
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB18_4
# %bb.3:
	movslq	%esi, %rdi
	shlq	$4, %rdi
	addq	16(%rax), %rdi
	jmp	.LBB18_12
.LBB18_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB18_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB18_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB18_10
# %bb.7:
	movl	$160, %edi
	addq	32(%rax), %rdi
	jmp	.LBB18_12
.LBB18_9:
	leaq	120(%rax), %rdi
	jmp	.LBB18_12
.LBB18_8:
	movq	40(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	leaq	136(%rax), %rdi
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rax)
	movl	$5, 144(%rax)
	jmp	.LBB18_12
.LBB18_10:
	movq	40(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %r8
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%r8), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %edi
	cmpl	%esi, %ecx
	jg	.LBB18_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r8), %rdi
	addq	$24, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB18_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB18_14
# %bb.13:
	movq	24(%rax), %rcx
	movslq	%edx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	addq	$-16, %rcx
	cmpq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rcx, %rsi
	jmp	.LBB18_24
.LBB18_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %edx            # imm = 0xD8F1
	jl	.LBB18_16
# %bb.15:
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	16(%rax), %rsi
	jmp	.LBB18_24
.LBB18_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %edx           # imm = 0xD8EE
	je	.LBB18_21
# %bb.17:
	cmpl	$-10001, %edx           # imm = 0xD8EF
	je	.LBB18_20
# %bb.18:
	cmpl	$-10000, %edx           # imm = 0xD8F0
	jne	.LBB18_22
# %bb.19:
	movl	$160, %esi
	addq	32(%rax), %rsi
	jmp	.LBB18_24
.LBB18_21:
	addq	$120, %rax
	movq	%rax, %rsi
	jmp	.LBB18_24
.LBB18_20:
	movq	40(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	leaq	136(%rax), %rsi
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rax)
	movl	$5, 144(%rax)
	jmp	.LBB18_24
.LBB18_22:
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%edx, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%edx, %ecx
	jg	.LBB18_24
# %bb.23:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB18_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	je	.LBB18_27
# %bb.25:
	cmpq	%rcx, %rsi
	je	.LBB18_27
# %bb.26:
	callq	luaO_rawequalObj
	movl	$42, __A_VARIABLE(%rip)
.LBB18_27:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	lua_rawequal, .Lfunc_end18-lua_rawequal
                                        # -- End function
	.globl	lua_equal               # -- Begin function lua_equal
	.p2align	4, 0x90
	.type	lua_equal,@function
lua_equal:                              # @lua_equal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB19_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rax, %rsi
	jmp	.LBB19_12
.LBB19_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB19_4
# %bb.3:
	movslq	%esi, %rsi
	shlq	$4, %rsi
	addq	16(%rdi), %rsi
	jmp	.LBB19_12
.LBB19_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB19_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB19_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB19_10
# %bb.7:
	movl	$160, %esi
	addq	32(%rdi), %rsi
	jmp	.LBB19_12
.LBB19_9:
	leaq	120(%rdi), %rsi
	jmp	.LBB19_12
.LBB19_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rsi
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB19_12
.LBB19_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r8
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%eax, %ecx
	jg	.LBB19_12
# %bb.11:
	movslq	%ecx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r8), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB19_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB19_14
# %bb.13:
	movq	24(%rdi), %rax
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %edx
	cmovbq	%rax, %rdx
	jmp	.LBB19_24
.LBB19_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %edx            # imm = 0xD8F1
	jl	.LBB19_16
# %bb.15:
	movslq	%edx, %rdx
	shlq	$4, %rdx
	addq	16(%rdi), %rdx
	jmp	.LBB19_24
.LBB19_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %edx           # imm = 0xD8EE
	je	.LBB19_21
# %bb.17:
	cmpl	$-10001, %edx           # imm = 0xD8EF
	je	.LBB19_20
# %bb.18:
	cmpl	$-10000, %edx           # imm = 0xD8F0
	jne	.LBB19_22
# %bb.19:
	movl	$160, %edx
	addq	32(%rdi), %rdx
	jmp	.LBB19_24
.LBB19_21:
	leaq	120(%rdi), %rdx
	jmp	.LBB19_24
.LBB19_20:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rdx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB19_24
.LBB19_22:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r8
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%edx, %ecx
	movzbl	11(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %edx
	cmpl	%eax, %ecx
	jg	.LBB19_24
# %bb.23:
	movslq	%ecx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r8), %rdx
	addq	$24, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB19_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	je	.LBB19_29
# %bb.25:
	cmpq	%rcx, %rdx
	je	.LBB19_29
# %bb.26:
	movl	8(%rsi), %ecx
	xorl	%eax, %eax
	cmpl	8(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_28
# %bb.27:
	callq	luaV_equalval
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB19_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_29:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	lua_equal, .Lfunc_end19-lua_equal
                                        # -- End function
	.globl	lua_lessthan            # -- Begin function lua_lessthan
	.p2align	4, 0x90
	.type	lua_lessthan,@function
lua_lessthan:                           # @lua_lessthan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB20_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rax, %rsi
	jmp	.LBB20_12
.LBB20_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB20_4
# %bb.3:
	movslq	%esi, %rsi
	shlq	$4, %rsi
	addq	16(%rdi), %rsi
	jmp	.LBB20_12
.LBB20_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB20_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB20_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB20_10
# %bb.7:
	movl	$160, %esi
	addq	32(%rdi), %rsi
	jmp	.LBB20_12
.LBB20_9:
	leaq	120(%rdi), %rsi
	jmp	.LBB20_12
.LBB20_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rsi
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB20_12
.LBB20_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r8
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%eax, %ecx
	jg	.LBB20_12
# %bb.11:
	movslq	%ecx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r8), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB20_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB20_14
# %bb.13:
	movq	24(%rdi), %rax
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %edx
	cmovbq	%rax, %rdx
	jmp	.LBB20_24
.LBB20_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %edx            # imm = 0xD8F1
	jl	.LBB20_16
# %bb.15:
	movslq	%edx, %rdx
	shlq	$4, %rdx
	addq	16(%rdi), %rdx
	jmp	.LBB20_24
.LBB20_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %edx           # imm = 0xD8EE
	je	.LBB20_21
# %bb.17:
	cmpl	$-10001, %edx           # imm = 0xD8EF
	je	.LBB20_20
# %bb.18:
	cmpl	$-10000, %edx           # imm = 0xD8F0
	jne	.LBB20_22
# %bb.19:
	movl	$160, %edx
	addq	32(%rdi), %rdx
	jmp	.LBB20_24
.LBB20_21:
	leaq	120(%rdi), %rdx
	jmp	.LBB20_24
.LBB20_20:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rdx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB20_24
.LBB20_22:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r8
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%edx, %ecx
	movzbl	11(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %edx
	cmpl	%eax, %ecx
	jg	.LBB20_24
# %bb.23:
	movslq	%ecx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r8), %rdx
	addq	$24, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB20_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	je	.LBB20_27
# %bb.25:
	cmpq	%rcx, %rdx
	je	.LBB20_27
# %bb.26:
	callq	luaV_lessthan
	movl	$42, __A_VARIABLE(%rip)
.LBB20_27:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	lua_lessthan, .Lfunc_end20-lua_lessthan
                                        # -- End function
	.globl	lua_tonumber            # -- Begin function lua_tonumber
	.p2align	4, 0x90
	.type	lua_tonumber,@function
lua_tonumber:                           # @lua_tonumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB21_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB21_12
.LBB21_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB21_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB21_12
.LBB21_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB21_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB21_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB21_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB21_12
.LBB21_9:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB21_12
.LBB21_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB21_12
.LBB21_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB21_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB21_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB21_15
# %bb.13:
	leaq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	luaV_tonumber
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_14
.LBB21_15:
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB21_14:
	xorps	%xmm0, %xmm0
	jmp	.LBB21_16
.Lfunc_end21:
	.size	lua_tonumber, .Lfunc_end21-lua_tonumber
                                        # -- End function
	.globl	lua_tointeger           # -- Begin function lua_tointeger
	.p2align	4, 0x90
	.type	lua_tointeger,@function
lua_tointeger:                          # @lua_tointeger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB22_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB22_12
.LBB22_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB22_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB22_12
.LBB22_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB22_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB22_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB22_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB22_12
.LBB22_9:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB22_12
.LBB22_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB22_12
.LBB22_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB22_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB22_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_15
# %bb.13:
	leaq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	luaV_tonumber
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_14
.LBB22_15:
	cvttsd2si	(%rax), %rax
.LBB22_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB22_14:
	xorl	%eax, %eax
	jmp	.LBB22_16
.Lfunc_end22:
	.size	lua_tointeger, .Lfunc_end22-lua_tointeger
                                        # -- End function
	.globl	lua_toboolean           # -- Begin function lua_toboolean
	.p2align	4, 0x90
	.type	lua_toboolean,@function
lua_toboolean:                          # @lua_toboolean
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB23_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmovbq	%rax, %rcx
	jmp	.LBB23_12
.LBB23_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB23_4
# %bb.3:
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	16(%rdi), %rcx
	jmp	.LBB23_12
.LBB23_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB23_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB23_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB23_10
# %bb.7:
	movl	$160, %ecx
	addq	32(%rdi), %rcx
	jmp	.LBB23_12
.LBB23_9:
	addq	$120, %rdi
	movq	%rdi, %rcx
	jmp	.LBB23_12
.LBB23_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rcx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB23_12
.LBB23_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpl	%esi, %edx
	jg	.LBB23_12
# %bb.11:
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$24, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB23_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB23_13
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$1, %edx
	jne	.LBB23_16
# %bb.15:
	xorl	%eax, %eax
	cmpl	$0, (%rcx)
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB23_16:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB23_13:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end23:
	.size	lua_toboolean, .Lfunc_end23-lua_toboolean
                                        # -- End function
	.globl	lua_tolstring           # -- Begin function lua_tolstring
	.p2align	4, 0x90
	.type	lua_tolstring,@function
lua_tolstring:                          # @lua_tolstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %ebx
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB24_2
# %bb.1:
	movq	24(%r15), %rax
	movslq	%ebx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rax, %rsi
	jmp	.LBB24_12
.LBB24_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %ebx            # imm = 0xD8F1
	jl	.LBB24_4
# %bb.3:
	movslq	%ebx, %rsi
	shlq	$4, %rsi
	addq	16(%r15), %rsi
	jmp	.LBB24_12
.LBB24_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %ebx           # imm = 0xD8EE
	je	.LBB24_9
# %bb.5:
	cmpl	$-10001, %ebx           # imm = 0xD8EF
	je	.LBB24_8
# %bb.6:
	cmpl	$-10000, %ebx           # imm = 0xD8F0
	jne	.LBB24_10
# %bb.7:
	movl	$160, %esi
	addq	32(%r15), %rsi
	jmp	.LBB24_12
.LBB24_9:
	leaq	120(%r15), %rsi
	jmp	.LBB24_12
.LBB24_8:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%r15), %rsi
	movq	24(%rax), %rax
	movq	%rax, 136(%r15)
	movl	$5, 144(%r15)
	jmp	.LBB24_12
.LBB24_10:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%ebx, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%edx, %ecx
	jg	.LBB24_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB24_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_32
# %bb.13:
	movq	%r15, %rdi
	callq	luaV_tostring
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_14
# %bb.17:
	movq	32(%r15), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB24_19
# %bb.18:
	movq	%r15, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB24_19:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB24_21
# %bb.20:
	movq	24(%r15), %rax
	movslq	%ebx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rax, %rsi
	jmp	.LBB24_31
.LBB24_14:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB24_15
# %bb.16:
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB24_35
.LBB24_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %ebx            # imm = 0xD8F1
	jl	.LBB24_23
# %bb.22:
	movslq	%ebx, %rsi
	shlq	$4, %rsi
	addq	16(%r15), %rsi
	jmp	.LBB24_31
.LBB24_15:
	xorl	%eax, %eax
	jmp	.LBB24_35
.LBB24_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %ebx           # imm = 0xD8EE
	je	.LBB24_28
# %bb.24:
	cmpl	$-10001, %ebx           # imm = 0xD8EF
	je	.LBB24_27
# %bb.25:
	cmpl	$-10000, %ebx           # imm = 0xD8F0
	jne	.LBB24_29
# %bb.26:
	movl	$160, %esi
	addq	32(%r15), %rsi
	jmp	.LBB24_31
.LBB24_28:
	addq	$120, %r15
	movq	%r15, %rsi
	jmp	.LBB24_31
.LBB24_27:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%r15), %rsi
	movq	24(%rax), %rax
	movq	%rax, 136(%r15)
	movl	$5, 144(%r15)
	jmp	.LBB24_31
.LBB24_29:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%ebx, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%edx, %ecx
	jg	.LBB24_31
# %bb.30:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB24_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_32:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB24_34
# %bb.33:
	movq	(%rsi), %rax
	movq	16(%rax), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_34:
	movq	(%rsi), %rax
	addq	$24, %rax
.LBB24_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	lua_tolstring, .Lfunc_end24-lua_tolstring
                                        # -- End function
	.globl	lua_objlen              # -- Begin function lua_objlen
	.p2align	4, 0x90
	.type	lua_objlen,@function
lua_objlen:                             # @lua_objlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB25_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ebx
	cmovbq	%rax, %rbx
	jmp	.LBB25_12
.LBB25_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB25_4
# %bb.3:
	movslq	%esi, %rbx
	shlq	$4, %rbx
	addq	16(%rdi), %rbx
	jmp	.LBB25_12
.LBB25_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB25_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB25_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB25_10
# %bb.7:
	movl	$160, %ebx
	addq	32(%rdi), %rbx
	jmp	.LBB25_12
.LBB25_9:
	leaq	120(%rdi), %rbx
	jmp	.LBB25_12
.LBB25_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rbx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB25_12
.LBB25_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ebx
	cmpl	%edx, %ecx
	jg	.LBB25_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rbx
	addq	$24, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB25_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addl	$-3, %ecx
	cmpl	$4, %ecx
	ja	.LBB25_20
# %bb.13:
	jmpq	*.LJTI25_0(,%rcx,8)
.LBB25_17:
	movq	%rbx, %rsi
	callq	luaV_tostring
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_18
# %bb.19:
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_20
.LBB25_14:
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	jmp	.LBB25_20
.LBB25_16:
	movq	(%rbx), %rdi
	callq	luaH_getn
	cltq
	jmp	.LBB25_20
.LBB25_15:
	movq	(%rbx), %rax
	movq	32(%rax), %rax
	jmp	.LBB25_20
.LBB25_18:
	xorl	%eax, %eax
.LBB25_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	lua_objlen, .Lfunc_end25-lua_objlen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI25_0:
	.quad	.LBB25_17
	.quad	.LBB25_14
	.quad	.LBB25_16
	.quad	.LBB25_20
	.quad	.LBB25_15
                                        # -- End function
	.text
	.globl	lua_tocfunction         # -- Begin function lua_tocfunction
	.p2align	4, 0x90
	.type	lua_tocfunction,@function
lua_tocfunction:                        # @lua_tocfunction
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB26_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB26_12
.LBB26_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB26_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB26_12
.LBB26_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB26_8
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB26_9
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB26_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB26_12
.LBB26_8:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB26_12
.LBB26_9:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB26_12
.LBB26_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB26_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB26_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_16
# %bb.13:
	movq	(%rax), %rax
	cmpb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_16
# %bb.14:
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB26_16:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end26:
	.size	lua_tocfunction, .Lfunc_end26-lua_tocfunction
                                        # -- End function
	.globl	lua_touserdata          # -- Begin function lua_touserdata
	.p2align	4, 0x90
	.type	lua_touserdata,@function
lua_touserdata:                         # @lua_touserdata
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB27_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB27_12
.LBB27_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB27_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB27_12
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB27_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB27_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB27_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB27_12
.LBB27_9:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB27_12
.LBB27_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB27_12
.LBB27_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB27_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB27_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	je	.LBB27_16
# %bb.13:
	cmpl	$7, %ecx
	jne	.LBB27_14
# %bb.15:
	movq	(%rax), %rax
	addq	$40, %rax
	jmp	.LBB27_17
.LBB27_16:
	movq	(%rax), %rax
	jmp	.LBB27_17
.LBB27_14:
	xorl	%eax, %eax
.LBB27_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end27:
	.size	lua_touserdata, .Lfunc_end27-lua_touserdata
                                        # -- End function
	.globl	lua_tothread            # -- Begin function lua_tothread
	.p2align	4, 0x90
	.type	lua_tothread,@function
lua_tothread:                           # @lua_tothread
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB28_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB28_12
.LBB28_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB28_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB28_12
.LBB28_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB28_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB28_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB28_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB28_12
.LBB28_9:
	addq	$120, %rdi
	movq	%rdi, %rax
	jmp	.LBB28_12
.LBB28_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB28_12
.LBB28_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB28_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB28_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_13
# %bb.14:
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB28_13:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end28:
	.size	lua_tothread, .Lfunc_end28-lua_tothread
                                        # -- End function
	.globl	lua_topointer           # -- Begin function lua_topointer
	.p2align	4, 0x90
	.type	lua_topointer,@function
lua_topointer:                          # @lua_topointer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB29_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmovbq	%rax, %rcx
	jmp	.LBB29_12
.LBB29_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB29_4
# %bb.3:
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	16(%rdi), %rcx
	jmp	.LBB29_12
.LBB29_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB29_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB29_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB29_10
# %bb.7:
	movl	$160, %ecx
	addq	32(%rdi), %rcx
	jmp	.LBB29_12
.LBB29_9:
	leaq	120(%rdi), %rcx
	jmp	.LBB29_12
.LBB29_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rcx
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB29_12
.LBB29_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r8
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpl	%eax, %edx
	jg	.LBB29_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	leaq	(%rax,%r8), %rcx
	addq	$24, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB29_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addl	$-2, %edx
	cmpl	$6, %edx
	ja	.LBB29_16
# %bb.13:
	jmpq	*.LJTI29_0(,%rdx,8)
.LBB29_14:
	movq	(%rcx), %rax
	jmp	.LBB29_16
.LBB29_15:
	callq	lua_touserdata
.LBB29_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	lua_topointer, .Lfunc_end29-lua_topointer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI29_0:
	.quad	.LBB29_15
	.quad	.LBB29_16
	.quad	.LBB29_16
	.quad	.LBB29_14
	.quad	.LBB29_14
	.quad	.LBB29_15
	.quad	.LBB29_14
                                        # -- End function
	.text
	.globl	lua_pushnil             # -- Begin function lua_pushnil
	.p2align	4, 0x90
	.type	lua_pushnil,@function
lua_pushnil:                            # @lua_pushnil
# %bb.0:
	movq	16(%rdi), %rax
	movl	$0, 8(%rax)
	addq	$16, %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end30:
	.size	lua_pushnil, .Lfunc_end30-lua_pushnil
                                        # -- End function
	.globl	lua_pushnumber          # -- Begin function lua_pushnumber
	.p2align	4, 0x90
	.type	lua_pushnumber,@function
lua_pushnumber:                         # @lua_pushnumber
# %bb.0:
	movq	16(%rdi), %rax
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	addq	$16, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end31:
	.size	lua_pushnumber, .Lfunc_end31-lua_pushnumber
                                        # -- End function
	.globl	lua_pushinteger         # -- Begin function lua_pushinteger
	.p2align	4, 0x90
	.type	lua_pushinteger,@function
lua_pushinteger:                        # @lua_pushinteger
# %bb.0:
	movq	16(%rdi), %rax
	cvtsi2sd	%rsi, %xmm0
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	addq	$16, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end32:
	.size	lua_pushinteger, .Lfunc_end32-lua_pushinteger
                                        # -- End function
	.globl	lua_pushlstring         # -- Begin function lua_pushlstring
	.p2align	4, 0x90
	.type	lua_pushlstring,@function
lua_pushlstring:                        # @lua_pushlstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB33_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB33_2:
	movq	16(%rbx), %r12
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r12)
	movl	$4, 8(%r12)
	addq	$16, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	lua_pushlstring, .Lfunc_end33-lua_pushlstring
                                        # -- End function
	.globl	lua_pushstring          # -- Begin function lua_pushstring
	.p2align	4, 0x90
	.type	lua_pushstring,@function
lua_pushstring:                         # @lua_pushstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB34_1
# %bb.2:
	movq	%rsi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB34_4
# %bb.3:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB34_4:
	movq	16(%rbx), %r12
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r12)
	movl	$4, 8(%r12)
	movq	16(%rbx), %rax
	addq	$16, %rbx
	jmp	.LBB34_5
.LBB34_1:
	movq	16(%rbx), %rax
	addq	$16, %rbx
	movl	$0, 8(%rax)
.LBB34_5:
	addq	$16, %rax
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	lua_pushstring, .Lfunc_end34-lua_pushstring
                                        # -- End function
	.globl	lua_pushvfstring        # -- Begin function lua_pushvfstring
	.p2align	4, 0x90
	.type	lua_pushvfstring,@function
lua_pushvfstring:                       # @lua_pushvfstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB35_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB35_2:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	luaO_pushvfstring
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	lua_pushvfstring, .Lfunc_end35-lua_pushvfstring
                                        # -- End function
	.globl	lua_pushfstring         # -- Begin function lua_pushfstring
	.p2align	4, 0x90
	.type	lua_pushfstring,@function
lua_pushfstring:                        # @lua_pushfstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB36_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB36_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB36_4
# %bb.3:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB36_4:
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaO_pushvfstring
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end36:
	.size	lua_pushfstring, .Lfunc_end36-lua_pushfstring
                                        # -- End function
	.globl	lua_pushcclosure        # -- Begin function lua_pushcclosure
	.p2align	4, 0x90
	.type	lua_pushcclosure,@function
lua_pushcclosure:                       # @lua_pushcclosure
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB37_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB37_2:
	movq	40(%rbx), %rax
	cmpq	80(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB37_3
# %bb.4:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	jmp	.LBB37_5
.LBB37_3:
	leaq	120(%rbx), %rax
.LBB37_5:
	movq	(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	luaF_newCclosure
	movq	%r15, 32(%rax)
	movq	16(%rbx), %rsi
	movslq	%r14d, %rcx
	movq	%rcx, %rdi
	shlq	$4, %rdi
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	movq	%rdx, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB37_11
# %bb.6:
	testb	$1, %cl
	je	.LBB37_8
# %bb.7:
	addq	$-1, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movq	-16(%rsi), %rdi
	movq	%rdi, 40(%rax,%rdx)
	movl	-8(%rsi), %esi
	movl	%esi, 48(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB37_8:
	cmpl	$1, %r14d
	je	.LBB37_11
# %bb.9:                                # %.preheader
	movq	%rcx, %rsi
	shlq	$4, %rsi
	.p2align	4, 0x90
.LBB37_10:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rdx,%rsi), %rdi
	movq	%rdi, 24(%rax,%rsi)
	movl	-8(%rdx,%rsi), %edx
	movl	%edx, 32(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	movq	-32(%rdx,%rsi), %rdi
	movq	%rdi, 8(%rax,%rsi)
	movl	-24(%rdx,%rsi), %edx
	movl	%edx, 16(%rax,%rsi)
	leaq	-32(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	addq	$-2, %rcx
	jne	.LBB37_10
.LBB37_11:
	movq	%rax, (%rdx)
	movl	$6, 8(%rdx)
	addq	$16, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	lua_pushcclosure, .Lfunc_end37-lua_pushcclosure
                                        # -- End function
	.globl	lua_pushboolean         # -- Begin function lua_pushboolean
	.p2align	4, 0x90
	.type	lua_pushboolean,@function
lua_pushboolean:                        # @lua_pushboolean
# %bb.0:
	movq	16(%rdi), %rax
	xorl	%ecx, %ecx
	testl	%esi, %esi
	setne	%cl
	movl	%ecx, (%rax)
	movl	$1, 8(%rax)
	addq	$16, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end38:
	.size	lua_pushboolean, .Lfunc_end38-lua_pushboolean
                                        # -- End function
	.globl	lua_pushlightuserdata   # -- Begin function lua_pushlightuserdata
	.p2align	4, 0x90
	.type	lua_pushlightuserdata,@function
lua_pushlightuserdata:                  # @lua_pushlightuserdata
# %bb.0:
	movq	16(%rdi), %rax
	movq	%rsi, (%rax)
	movl	$2, 8(%rax)
	addq	$16, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end39:
	.size	lua_pushlightuserdata, .Lfunc_end39-lua_pushlightuserdata
                                        # -- End function
	.globl	lua_pushthread          # -- Begin function lua_pushthread
	.p2align	4, 0x90
	.type	lua_pushthread,@function
lua_pushthread:                         # @lua_pushthread
# %bb.0:
	movq	16(%rdi), %rax
	movq	%rdi, (%rax)
	movl	$8, 8(%rax)
	addq	$16, 16(%rdi)
	movq	32(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	%rdi, 176(%rcx)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end40:
	.size	lua_pushthread, .Lfunc_end40-lua_pushthread
                                        # -- End function
	.globl	lua_gettable            # -- Begin function lua_gettable
	.p2align	4, 0x90
	.type	lua_gettable,@function
lua_gettable:                           # @lua_gettable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB41_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rax, %rsi
	jmp	.LBB41_12
.LBB41_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB41_4
# %bb.3:
	movslq	%esi, %rsi
	shlq	$4, %rsi
	addq	16(%rdi), %rsi
	jmp	.LBB41_12
.LBB41_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB41_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB41_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB41_10
# %bb.7:
	movl	$160, %esi
	addq	32(%rdi), %rsi
	jmp	.LBB41_12
.LBB41_9:
	leaq	120(%rdi), %rsi
	jmp	.LBB41_12
.LBB41_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rdi), %rsi
	movq	24(%rax), %rax
	movq	%rax, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB41_12
.LBB41_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%edx, %ecx
	jg	.LBB41_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB41_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rcx
	addq	$-16, %rcx
	movq	%rcx, %rdx
	callq	luaV_gettable
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end41:
	.size	lua_gettable, .Lfunc_end41-lua_gettable
                                        # -- End function
	.globl	lua_getfield            # -- Begin function lua_getfield
	.p2align	4, 0x90
	.type	lua_getfield,@function
lua_getfield:                           # @lua_getfield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB42_2
# %bb.1:
	movq	24(%r15), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ebx
	cmovbq	%rax, %rbx
	jmp	.LBB42_12
.LBB42_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB42_4
# %bb.3:
	movslq	%esi, %rbx
	shlq	$4, %rbx
	addq	16(%r15), %rbx
	jmp	.LBB42_12
.LBB42_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB42_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB42_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB42_10
# %bb.7:
	movl	$160, %ebx
	addq	32(%r15), %rbx
	jmp	.LBB42_12
.LBB42_9:
	leaq	120(%r15), %rbx
	jmp	.LBB42_12
.LBB42_8:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%r15), %rbx
	movq	24(%rax), %rax
	movq	%rax, 136(%r15)
	movl	$5, 144(%r15)
	jmp	.LBB42_12
.LBB42_10:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ebx
	cmpl	%edx, %ecx
	jg	.LBB42_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rbx
	addq	$24, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB42_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, -40(%rbp)
	movl	$4, -32(%rbp)
	movq	16(%r15), %rcx
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	luaV_gettable
	addq	$16, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	lua_getfield, .Lfunc_end42-lua_getfield
                                        # -- End function
	.globl	lua_rawget              # -- Begin function lua_rawget
	.p2align	4, 0x90
	.type	lua_rawget,@function
lua_rawget:                             # @lua_rawget
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB43_2
# %bb.1:
	movq	24(%rbx), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB43_12
.LBB43_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB43_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rbx), %rax
	jmp	.LBB43_12
.LBB43_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB43_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB43_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB43_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rbx), %rax
	jmp	.LBB43_12
.LBB43_9:
	leaq	120(%rbx), %rax
	jmp	.LBB43_12
.LBB43_8:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rbx), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rbx)
	movl	$5, 144(%rbx)
	jmp	.LBB43_12
.LBB43_10:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB43_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB43_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movq	16(%rbx), %rsi
	addq	$-16, %rsi
	callq	luaH_get
	movq	16(%rbx), %rcx
	movq	(%rax), %rdx
	movq	%rdx, -16(%rcx)
	movl	8(%rax), %eax
	movl	%eax, -8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end43:
	.size	lua_rawget, .Lfunc_end43-lua_rawget
                                        # -- End function
	.globl	lua_rawgeti             # -- Begin function lua_rawgeti
	.p2align	4, 0x90
	.type	lua_rawgeti,@function
lua_rawgeti:                            # @lua_rawgeti
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB44_2
# %bb.1:
	movq	24(%rbx), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB44_12
.LBB44_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB44_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rbx), %rax
	jmp	.LBB44_12
.LBB44_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB44_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB44_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB44_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rbx), %rax
	jmp	.LBB44_12
.LBB44_9:
	leaq	120(%rbx), %rax
	jmp	.LBB44_12
.LBB44_8:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rbx), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rbx)
	movl	$5, 144(%rbx)
	jmp	.LBB44_12
.LBB44_10:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edi           # imm = 0xD8EE
	subl	%esi, %edi
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edi
	jg	.LBB44_12
# %bb.11:
	movslq	%edi, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB44_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movl	%edx, %esi
	callq	luaH_getnum
	movq	16(%rbx), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	addq	$16, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end44:
	.size	lua_rawgeti, .Lfunc_end44-lua_rawgeti
                                        # -- End function
	.globl	lua_createtable         # -- Begin function lua_createtable
	.p2align	4, 0x90
	.type	lua_createtable,@function
lua_createtable:                        # @lua_createtable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB45_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB45_2:
	movq	16(%rbx), %r12
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	luaH_new
	movq	%rax, (%r12)
	movl	$5, 8(%r12)
	addq	$16, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	lua_createtable, .Lfunc_end45-lua_createtable
                                        # -- End function
	.globl	lua_getmetatable        # -- Begin function lua_getmetatable
	.p2align	4, 0x90
	.type	lua_getmetatable,@function
lua_getmetatable:                       # @lua_getmetatable
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB46_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB46_12
.LBB46_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB46_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB46_12
.LBB46_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB46_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB46_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB46_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB46_12
.LBB46_9:
	leaq	120(%rdi), %rax
	jmp	.LBB46_12
.LBB46_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB46_12
.LBB46_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB46_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB46_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rcx
	je	.LBB46_14
# %bb.13:
	cmpl	$5, %ecx
	jne	.LBB46_15
.LBB46_14:
	movq	(%rax), %rax
	addq	$16, %rax
	jmp	.LBB46_16
.LBB46_15:
	movq	32(%rdi), %rax
	leaq	(%rax,%rcx,8), %rax
	addq	$224, %rax
.LBB46_16:
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_17
# %bb.18:
	movq	16(%rdi), %rcx
	movq	%rax, (%rcx)
	movl	$5, 8(%rcx)
	addq	$16, 16(%rdi)
	movl	$1, %eax
	jmp	.LBB46_19
.LBB46_17:
	xorl	%eax, %eax
.LBB46_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end46:
	.size	lua_getmetatable, .Lfunc_end46-lua_getmetatable
                                        # -- End function
	.globl	lua_getfenv             # -- Begin function lua_getfenv
	.p2align	4, 0x90
	.type	lua_getfenv,@function
lua_getfenv:                            # @lua_getfenv
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB47_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB47_12
.LBB47_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB47_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB47_12
.LBB47_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB47_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB47_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB47_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB47_12
.LBB47_9:
	leaq	120(%rdi), %rax
	jmp	.LBB47_12
.LBB47_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB47_12
.LBB47_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB47_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB47_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	je	.LBB47_16
# %bb.13:
	cmpl	$7, %ecx
	je	.LBB47_15
# %bb.14:
	cmpl	$6, %ecx
	jne	.LBB47_17
.LBB47_15:
	movq	16(%rdi), %rcx
	addq	$16, %rdi
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rcx)
	movl	$5, %eax
	jmp	.LBB47_18
.LBB47_16:
	movq	(%rax), %rax
	movq	16(%rdi), %rcx
	addq	$16, %rdi
	movq	120(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	128(%rax), %eax
	jmp	.LBB47_18
.LBB47_17:
	movq	16(%rdi), %rcx
	addq	$16, %rdi
	xorl	%eax, %eax
.LBB47_18:
	movl	%eax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end47:
	.size	lua_getfenv, .Lfunc_end47-lua_getfenv
                                        # -- End function
	.globl	lua_settable            # -- Begin function lua_settable
	.p2align	4, 0x90
	.type	lua_settable,@function
lua_settable:                           # @lua_settable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB48_2
# %bb.1:
	movq	24(%rbx), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmovbq	%rax, %rsi
	jmp	.LBB48_12
.LBB48_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB48_4
# %bb.3:
	movslq	%esi, %rsi
	shlq	$4, %rsi
	addq	16(%rbx), %rsi
	jmp	.LBB48_12
.LBB48_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB48_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB48_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB48_10
# %bb.7:
	movl	$160, %esi
	addq	32(%rbx), %rsi
	jmp	.LBB48_12
.LBB48_9:
	leaq	120(%rbx), %rsi
	jmp	.LBB48_12
.LBB48_8:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rbx), %rsi
	movq	24(%rax), %rax
	movq	%rax, 136(%rbx)
	movl	$5, 144(%rbx)
	jmp	.LBB48_12
.LBB48_10:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %esi
	cmpl	%edx, %ecx
	jg	.LBB48_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rsi
	addq	$24, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB48_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rcx
	leaq	-32(%rcx), %rdx
	addq	$-16, %rcx
	movq	%rbx, %rdi
	callq	luaV_settable
	addq	$-32, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end48:
	.size	lua_settable, .Lfunc_end48-lua_settable
                                        # -- End function
	.globl	lua_setfield            # -- Begin function lua_setfield
	.p2align	4, 0x90
	.type	lua_setfield,@function
lua_setfield:                           # @lua_setfield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB49_2
# %bb.1:
	movq	24(%r15), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ebx
	cmovbq	%rax, %rbx
	jmp	.LBB49_12
.LBB49_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB49_4
# %bb.3:
	movslq	%esi, %rbx
	shlq	$4, %rbx
	addq	16(%r15), %rbx
	jmp	.LBB49_12
.LBB49_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB49_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB49_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB49_10
# %bb.7:
	movl	$160, %ebx
	addq	32(%r15), %rbx
	jmp	.LBB49_12
.LBB49_9:
	leaq	120(%r15), %rbx
	jmp	.LBB49_12
.LBB49_8:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%r15), %rbx
	movq	24(%rax), %rax
	movq	%rax, 136(%r15)
	movl	$5, 144(%r15)
	jmp	.LBB49_12
.LBB49_10:
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ebx
	cmpl	%edx, %ecx
	jg	.LBB49_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rbx
	addq	$24, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB49_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, -40(%rbp)
	movl	$4, -32(%rbp)
	movq	16(%r15), %rcx
	addq	$-16, %rcx
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	luaV_settable
	addq	$-16, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	lua_setfield, .Lfunc_end49-lua_setfield
                                        # -- End function
	.globl	lua_rawset              # -- Begin function lua_rawset
	.p2align	4, 0x90
	.type	lua_rawset,@function
lua_rawset:                             # @lua_rawset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB50_2
# %bb.1:
	movq	24(%r14), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %r15d
	cmovbq	%rax, %r15
	jmp	.LBB50_12
.LBB50_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB50_4
# %bb.3:
	movslq	%esi, %r15
	shlq	$4, %r15
	addq	16(%r14), %r15
	jmp	.LBB50_12
.LBB50_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB50_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB50_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB50_10
# %bb.7:
	movl	$160, %r15d
	addq	32(%r14), %r15
	jmp	.LBB50_12
.LBB50_9:
	leaq	120(%r14), %r15
	jmp	.LBB50_12
.LBB50_8:
	movq	40(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%r14), %r15
	movq	24(%rax), %rax
	movq	%rax, 136(%r14)
	movl	$5, 144(%r14)
	jmp	.LBB50_12
.LBB50_10:
	movq	40(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %r15d
	cmpl	%edx, %ecx
	jg	.LBB50_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %r15
	addq	$24, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB50_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rbx
	movq	(%r15), %rsi
	leaq	-32(%rbx), %rdx
	movq	%r14, %rdi
	callq	luaH_set
	movq	-16(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	-8(%rbx), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%r14), %rax
	cmpl	$4, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB50_16
# %bb.13:
	movq	-16(%rax), %rcx
	testb	$3, 9(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_16
# %bb.14:
	movq	(%r15), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_16
# %bb.15:
	movq	%r14, %rdi
	callq	luaC_barrierback
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rax
.LBB50_16:
	addq	$-32, %rax
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	lua_rawset, .Lfunc_end50-lua_rawset
                                        # -- End function
	.globl	lua_rawseti             # -- Begin function lua_rawseti
	.p2align	4, 0x90
	.type	lua_rawseti,@function
lua_rawseti:                            # @lua_rawseti
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB51_2
# %bb.1:
	movq	24(%r14), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %r15d
	cmovbq	%rax, %r15
	jmp	.LBB51_12
.LBB51_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB51_4
# %bb.3:
	movslq	%esi, %r15
	shlq	$4, %r15
	addq	16(%r14), %r15
	jmp	.LBB51_12
.LBB51_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB51_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB51_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB51_10
# %bb.7:
	movl	$160, %r15d
	addq	32(%r14), %r15
	jmp	.LBB51_12
.LBB51_9:
	leaq	120(%r14), %r15
	jmp	.LBB51_12
.LBB51_8:
	movq	40(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%r14), %r15
	movq	24(%rax), %rax
	movq	%rax, 136(%r14)
	movl	$5, 144(%r14)
	jmp	.LBB51_12
.LBB51_10:
	movq	40(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %r15d
	cmpl	%esi, %ecx
	jg	.LBB51_12
# %bb.11:
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %r15
	addq	$24, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB51_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rbx
	movq	(%r15), %rsi
	movq	%r14, %rdi
	callq	luaH_setnum
	movq	-16(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	-8(%rbx), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%r14), %rax
	cmpl	$4, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB51_16
# %bb.13:
	movq	-16(%rax), %rcx
	testb	$3, 9(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_16
# %bb.14:
	movq	(%r15), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_16
# %bb.15:
	movq	%r14, %rdi
	callq	luaC_barrierback
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rax
.LBB51_16:
	addq	$-16, %rax
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	lua_rawseti, .Lfunc_end51-lua_rawseti
                                        # -- End function
	.globl	lua_setmetatable        # -- Begin function lua_setmetatable
	.p2align	4, 0x90
	.type	lua_setmetatable,@function
lua_setmetatable:                       # @lua_setmetatable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB52_2
# %bb.1:
	movq	24(%rbx), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB52_12
.LBB52_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB52_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rbx), %rax
	jmp	.LBB52_12
.LBB52_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB52_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB52_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB52_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rbx), %rax
	jmp	.LBB52_12
.LBB52_9:
	leaq	120(%rbx), %rax
	jmp	.LBB52_12
.LBB52_8:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rbx), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rbx)
	movl	$5, 144(%rbx)
	jmp	.LBB52_12
.LBB52_10:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB52_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB52_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rcx
	cmpl	$0, -8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_13
# %bb.14:
	movq	-16(%rcx), %rdx
	jmp	.LBB52_15
.LBB52_13:
	xorl	%edx, %edx
.LBB52_15:
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rcx
	je	.LBB52_21
# %bb.16:
	cmpl	$5, %ecx
	jne	.LBB52_25
# %bb.17:
	movq	(%rax), %rcx
	movq	%rdx, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB52_27
# %bb.18:
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_27
# %bb.19:
	movq	(%rax), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_27
# %bb.20:
	movq	%rbx, %rdi
	callq	luaC_barrierback
	jmp	.LBB52_26
.LBB52_21:
	movq	(%rax), %rcx
	movq	%rdx, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB52_27
# %bb.22:
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_27
# %bb.23:
	movq	(%rax), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_27
# %bb.24:
	movq	%rbx, %rdi
	callq	luaC_barrierf
	jmp	.LBB52_26
.LBB52_25:
	movq	32(%rbx), %rax
	movq	%rdx, 224(%rax,%rcx,8)
.LBB52_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB52_27:
	addq	$-16, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end52:
	.size	lua_setmetatable, .Lfunc_end52-lua_setmetatable
                                        # -- End function
	.globl	lua_setfenv             # -- Begin function lua_setfenv
	.p2align	4, 0x90
	.type	lua_setfenv,@function
lua_setfenv:                            # @lua_setfenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB53_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB53_12
.LBB53_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB53_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB53_12
.LBB53_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB53_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB53_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB53_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB53_12
.LBB53_9:
	leaq	120(%rdi), %rax
	jmp	.LBB53_12
.LBB53_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB53_12
.LBB53_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB53_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB53_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	je	.LBB53_17
# %bb.13:
	cmpl	$7, %ecx
	je	.LBB53_15
# %bb.14:
	cmpl	$6, %ecx
	jne	.LBB53_16
.LBB53_15:
	leaq	16(%rdi), %r14
	movq	16(%rdi), %rcx
	movq	-16(%rcx), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 24(%rdx)
	jmp	.LBB53_18
.LBB53_17:
	movq	(%rax), %rcx
	leaq	16(%rdi), %r14
	movq	16(%rdi), %rdx
	movq	-16(%rdx), %rdx
	movq	%rdx, 120(%rcx)
	movl	$5, 128(%rcx)
.LBB53_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rcx
	movq	-16(%rcx), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	je	.LBB53_21
# %bb.19:
	movq	(%rax), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB53_21
# %bb.20:
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB53_21
.LBB53_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdi
	xorl	%ebx, %ebx
	movq	%rdi, %r14
.LBB53_21:
	addq	$-16, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end53:
	.size	lua_setfenv, .Lfunc_end53-lua_setfenv
                                        # -- End function
	.globl	lua_call                # -- Begin function lua_call
	.p2align	4, 0x90
	.type	lua_call,@function
lua_call:                               # @lua_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	16(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	negq	%rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-16, %rsi
	callq	luaD_call
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	jne	.LBB54_3
# %bb.1:
	movq	16(%rbx), %rax
	movq	40(%rbx), %rcx
	cmpq	16(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB54_3
# %bb.2:
	movq	%rax, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB54_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end54:
	.size	lua_call, .Lfunc_end54-lua_call
                                        # -- End function
	.globl	lua_pcall               # -- Begin function lua_pcall
	.p2align	4, 0x90
	.type	lua_pcall,@function
lua_pcall:                              # @lua_pcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB55_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB55_4
# %bb.3:
	movq	24(%rbx), %rax
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$-16, %rax
	cmpq	16(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %r8d
	cmovbq	%rax, %r8
	jmp	.LBB55_14
.LBB55_1:
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%rbx), %rax
	xorl	%r8d, %r8d
	jmp	.LBB55_15
.LBB55_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %ecx            # imm = 0xD8F1
	jl	.LBB55_6
# %bb.5:
	movslq	%ecx, %r8
	shlq	$4, %r8
	addq	16(%rbx), %r8
	jmp	.LBB55_14
.LBB55_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %ecx           # imm = 0xD8EE
	je	.LBB55_11
# %bb.7:
	cmpl	$-10001, %ecx           # imm = 0xD8EF
	je	.LBB55_10
# %bb.8:
	cmpl	$-10000, %ecx           # imm = 0xD8F0
	jne	.LBB55_12
# %bb.9:
	movl	$160, %r8d
	addq	32(%rbx), %r8
	jmp	.LBB55_14
.LBB55_11:
	leaq	120(%rbx), %r8
	jmp	.LBB55_14
.LBB55_10:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	136(%rbx), %r8
	movq	24(%rax), %rax
	movq	%rax, 136(%rbx)
	movl	$5, 144(%rbx)
	jmp	.LBB55_14
.LBB55_12:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%ecx, %edx
	movzbl	11(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %r8d
	cmpl	%ecx, %edx
	jg	.LBB55_14
# %bb.13:
	movslq	%edx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %r8
	addq	$24, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB55_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%rbx), %rax
	subq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB55_15:
	movq	16(%rbx), %rcx
	movslq	%esi, %rdx
	shlq	$4, %rdx
	negq	%rdx
	addq	%rdx, %rcx
	addq	$-16, %rcx
	movq	%rcx, -32(%rbp)
	movl	%r14d, -24(%rbp)
	subq	%rax, %rcx
	leaq	-32(%rbp), %rdx
	movl	$f_call, %esi
	movq	%rbx, %rdi
	callq	luaD_pcall
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	jne	.LBB55_18
# %bb.16:
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rdx
	cmpq	16(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB55_18
# %bb.17:
	movq	%rcx, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB55_18:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end55:
	.size	lua_pcall, .Lfunc_end55-lua_pcall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_call
	.type	f_call,@function
f_call:                                 # @f_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rsi), %rax
	movl	8(%rsi), %edx
	movq	%rax, %rsi
	callq	luaD_call
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end56:
	.size	f_call, .Lfunc_end56-f_call
                                        # -- End function
	.globl	lua_cpcall              # -- Begin function lua_cpcall
	.p2align	4, 0x90
	.type	lua_cpcall,@function
lua_cpcall:                             # @lua_cpcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	16(%rdi), %rcx
	subq	64(%rdi), %rcx
	leaq	-16(%rbp), %rdx
	movl	$f_Ccall, %esi
	xorl	%r8d, %r8d
	callq	luaD_pcall
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	lua_cpcall, .Lfunc_end57-lua_cpcall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_Ccall
	.type	f_Ccall,@function
f_Ccall:                                # @f_Ccall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	40(%rdi), %rax
	cmpq	80(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB58_1
# %bb.2:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	jmp	.LBB58_3
.LBB58_1:
	leaq	120(%rbx), %rax
.LBB58_3:
	movq	(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	luaF_newCclosure
	movq	(%r14), %rcx
	movq	%rcx, 32(%rax)
	movq	16(%rbx), %rcx
	movq	%rax, (%rcx)
	movl	$6, 8(%rcx)
	movq	16(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 16(%rbx)
	movq	8(%r14), %rcx
	movq	%rcx, 16(%rax)
	movl	$2, 24(%rax)
	movq	16(%rbx), %rsi
	leaq	16(%rsi), %rax
	movq	%rax, 16(%rbx)
	addq	$-16, %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	luaD_call
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end58:
	.size	f_Ccall, .Lfunc_end58-f_Ccall
                                        # -- End function
	.globl	lua_load                # -- Begin function lua_load
	.p2align	4, 0x90
	.type	lua_load,@function
lua_load:                               # @lua_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB59_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %ebx
.LBB59_2:
	leaq	-64(%rbp), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaZ_init
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	luaD_protectedparser
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	lua_load, .Lfunc_end59-lua_load
                                        # -- End function
	.globl	lua_dump                # -- Begin function lua_dump
	.p2align	4, 0x90
	.type	lua_dump,@function
lua_dump:                               # @lua_dump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	16(%rdi), %rsi
	cmpl	$6, -8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jne	.LBB60_3
# %bb.1:
	movq	-16(%rsi), %rsi
	cmpb	$0, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB60_3
# %bb.2:
	movq	32(%rsi), %rsi
	xorl	%r8d, %r8d
	callq	luaU_dump
.LBB60_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end60:
	.size	lua_dump, .Lfunc_end60-lua_dump
                                        # -- End function
	.globl	lua_status              # -- Begin function lua_status
	.p2align	4, 0x90
	.type	lua_status,@function
lua_status:                             # @lua_status
# %bb.0:
	movzbl	10(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end61:
	.size	lua_status, .Lfunc_end61-lua_status
                                        # -- End function
	.globl	lua_gc                  # -- Begin function lua_gc
	.p2align	4, 0x90
	.type	lua_gc,@function
lua_gc:                                 # @lua_gc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	32(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %esi
	ja	.LBB62_1
# %bb.2:
	movq	%rdi, %r15
	movl	%esi, %eax
	jmpq	*.LJTI62_0(,%rax,8)
.LBB62_3:
	movq	$-3, 112(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB62_14
.LBB62_1:
	movl	$-1, %r14d
	jmp	.LBB62_14
.LBB62_4:
	movq	120(%rbx), %rax
	movq	%rax, 112(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB62_14
.LBB62_5:
	movq	%r15, %rdi
	callq	luaC_fullgc
	xorl	%r14d, %r14d
	jmp	.LBB62_14
.LBB62_6:
	movq	120(%rbx), %r14
	shrq	$10, %r14
	jmp	.LBB62_14
.LBB62_7:
	movl	$1023, %r14d            # imm = 0x3FF
	andl	120(%rbx), %r14d
	jmp	.LBB62_14
.LBB62_8:
	movslq	%edx, %rax
	shlq	$10, %rax
	movq	120(%rbx), %rcx
	cmpq	%rax, %rcx
	movq	%rcx, %rdx
	cmovbq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	ja	.LBB62_14
	.p2align	4, 0x90
.LBB62_9:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	luaC_step
	cmpb	$0, 33(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB62_11
# %bb.10:                               #   in Loop: Header=BB62_9 Depth=1
	movq	112(%rbx), %rax
	cmpq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB62_9
	jmp	.LBB62_14
.LBB62_12:
	movl	144(%rbx), %r14d
	movl	%edx, 144(%rbx)
	jmp	.LBB62_14
.LBB62_13:
	movl	148(%rbx), %r14d
	movl	%edx, 148(%rbx)
	jmp	.LBB62_14
.LBB62_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB62_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	lua_gc, .Lfunc_end62-lua_gc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI62_0:
	.quad	.LBB62_3
	.quad	.LBB62_4
	.quad	.LBB62_5
	.quad	.LBB62_6
	.quad	.LBB62_7
	.quad	.LBB62_8
	.quad	.LBB62_12
	.quad	.LBB62_13
                                        # -- End function
	.text
	.globl	lua_error               # -- Begin function lua_error
	.p2align	4, 0x90
	.type	lua_error,@function
lua_error:                              # @lua_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	luaG_errormsg
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end63:
	.size	lua_error, .Lfunc_end63-lua_error
                                        # -- End function
	.globl	lua_next                # -- Begin function lua_next
	.p2align	4, 0x90
	.type	lua_next,@function
lua_next:                               # @lua_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB64_2
# %bb.1:
	movq	24(%rbx), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB64_12
.LBB64_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB64_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rbx), %rax
	jmp	.LBB64_12
.LBB64_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB64_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB64_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB64_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rbx), %rax
	jmp	.LBB64_12
.LBB64_9:
	leaq	120(%rbx), %rax
	jmp	.LBB64_12
.LBB64_8:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rbx), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rbx)
	movl	$5, 144(%rbx)
	jmp	.LBB64_12
.LBB64_10:
	movq	40(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %edx           # imm = 0xD8EE
	subl	%esi, %edx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %edx
	jg	.LBB64_12
# %bb.11:
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB64_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movq	16(%rbx), %rdx
	addq	$-16, %rdx
	movq	%rbx, %rdi
	callq	luaH_next
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	shlq	$5, %rcx
	addq	%rdx, %rcx
	addq	$-16, %rcx
	movq	%rcx, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end64:
	.size	lua_next, .Lfunc_end64-lua_next
                                        # -- End function
	.globl	lua_concat              # -- Begin function lua_concat
	.p2align	4, 0x90
	.type	lua_concat,@function
lua_concat:                             # @lua_concat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB65_4
# %bb.1:
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB65_3
# %bb.2:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB65_3:
	leaq	16(%rbx), %r15
	movq	16(%rbx), %rdx
	subq	24(%rbx), %rdx
	shrq	$4, %rdx
	addl	$-1, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	luaV_concat
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	movq	16(%rbx), %rax
	subq	%rcx, %rax
	jmp	.LBB65_6
.LBB65_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB65_7
# %bb.5:
	movq	16(%rbx), %r14
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
	movq	16(%rbx), %rax
	leaq	16(%rbx), %r15
.LBB65_6:
	addq	$16, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	lua_concat, .Lfunc_end65-lua_concat
                                        # -- End function
	.globl	lua_getallocf           # -- Begin function lua_getallocf
	.p2align	4, 0x90
	.type	lua_getallocf,@function
lua_getallocf:                          # @lua_getallocf
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB66_2
# %bb.1:
	movq	32(%rdi), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB66_2:
	movq	32(%rdi), %rax
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end66:
	.size	lua_getallocf, .Lfunc_end66-lua_getallocf
                                        # -- End function
	.globl	lua_setallocf           # -- Begin function lua_setallocf
	.p2align	4, 0x90
	.type	lua_setallocf,@function
lua_setallocf:                          # @lua_setallocf
# %bb.0:
	movq	32(%rdi), %rax
	movq	%rdx, 24(%rax)
	movq	%rsi, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end67:
	.size	lua_setallocf, .Lfunc_end67-lua_setallocf
                                        # -- End function
	.globl	lua_newuserdata         # -- Begin function lua_newuserdata
	.p2align	4, 0x90
	.type	lua_newuserdata,@function
lua_newuserdata:                        # @lua_newuserdata
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB68_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB68_2:
	movq	40(%rbx), %rax
	cmpq	80(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB68_3
# %bb.4:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	jmp	.LBB68_5
.LBB68_3:
	leaq	120(%rbx), %rax
.LBB68_5:
	movq	(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaS_newudata
	movq	16(%rbx), %rcx
	movq	%rax, (%rcx)
	movl	$7, 8(%rcx)
	addq	$16, 16(%rbx)
	addq	$40, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end68:
	.size	lua_newuserdata, .Lfunc_end68-lua_newuserdata
                                        # -- End function
	.globl	lua_getupvalue          # -- Begin function lua_getupvalue
	.p2align	4, 0x90
	.type	lua_getupvalue,@function
lua_getupvalue:                         # @lua_getupvalue
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB69_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB69_12
.LBB69_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB69_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB69_12
.LBB69_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB69_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB69_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB69_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB69_12
.LBB69_9:
	leaq	120(%rdi), %rax
	jmp	.LBB69_12
.LBB69_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB69_12
.LBB69_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r8
	movl	$-10002, %ecx           # imm = 0xD8EE
	subl	%esi, %ecx
	movzbl	11(%r8), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %ecx
	jg	.LBB69_12
# %bb.11:
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%r8, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB69_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB69_20
# %bb.13:
	movq	(%rax), %rax
	cmpb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB69_17
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB69_20
# %bb.15:
	movzbl	11(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB69_20
# %bb.16:
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$24, %rcx
	movl	$.L.str.3, %eax
	jmp	.LBB69_22
.LBB69_17:
	movq	32(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB69_19
# %bb.18:
	cmpl	%edx, 72(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB69_21
.LBB69_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB69_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB69_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB69_21:
	movslq	%edx, %rdx
	movq	32(%rax,%rdx,8), %rax
	movq	16(%rax), %rcx
	movq	56(%rsi), %rax
	movq	-8(%rax,%rdx,8), %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB69_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rdx
	movq	(%rcx), %rsi
	movq	%rsi, (%rdx)
	movl	8(%rcx), %ecx
	movl	%ecx, 8(%rdx)
	addq	$16, 16(%rdi)
	jmp	.LBB69_23
.Lfunc_end69:
	.size	lua_getupvalue, .Lfunc_end69-lua_getupvalue
                                        # -- End function
	.globl	lua_setupvalue          # -- Begin function lua_setupvalue
	.p2align	4, 0x90
	.type	lua_setupvalue,@function
lua_setupvalue:                         # @lua_setupvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB70_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$-16, %rcx
	cmpq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmovbq	%rcx, %rax
	jmp	.LBB70_12
.LBB70_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9999, %esi            # imm = 0xD8F1
	jl	.LBB70_4
# %bb.3:
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	16(%rdi), %rax
	jmp	.LBB70_12
.LBB70_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-10002, %esi           # imm = 0xD8EE
	je	.LBB70_9
# %bb.5:
	cmpl	$-10001, %esi           # imm = 0xD8EF
	je	.LBB70_8
# %bb.6:
	cmpl	$-10000, %esi           # imm = 0xD8F0
	jne	.LBB70_10
# %bb.7:
	movl	$160, %eax
	addq	32(%rdi), %rax
	jmp	.LBB70_12
.LBB70_9:
	leaq	120(%rdi), %rax
	jmp	.LBB70_12
.LBB70_8:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	leaq	136(%rdi), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, 136(%rdi)
	movl	$5, 144(%rdi)
	jmp	.LBB70_12
.LBB70_10:
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	$-10002, %ebx           # imm = 0xD8EE
	subl	%esi, %ebx
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %eax
	cmpl	%esi, %ebx
	jg	.LBB70_12
# %bb.11:
	movslq	%ebx, %rax
	shlq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB70_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB70_20
# %bb.13:
	movq	(%rax), %rcx
	cmpb	$0, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB70_17
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB70_20
# %bb.15:
	movzbl	11(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jl	.LBB70_20
# %bb.16:
	movslq	%edx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	addq	$24, %rcx
	movl	$.L.str.3, %ebx
	jmp	.LBB70_22
.LBB70_17:
	movq	32(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB70_19
# %bb.18:
	cmpl	%edx, 72(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB70_21
.LBB70_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB70_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB70_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB70_21:
	movslq	%edx, %rdx
	movq	32(%rcx,%rdx,8), %rcx
	movq	16(%rcx), %rcx
	movq	56(%rsi), %rsi
	movq	-8(%rsi,%rdx,8), %rbx
	addq	$24, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB70_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movq	-16(%rdx), %rsi
	movq	%rsi, (%rcx)
	movl	-8(%rdx), %edx
	movl	%edx, 8(%rcx)
	movq	16(%rdi), %rcx
	cmpl	$4, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB70_26
# %bb.23:
	movq	(%rcx), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB70_26
# %bb.24:
	movq	(%rax), %rsi
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB70_26
# %bb.25:
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB70_26
.Lfunc_end70:
	.size	lua_setupvalue, .Lfunc_end70-lua_setupvalue
                                        # -- End function
	.type	lua_ident,@object       # @lua_ident
	.section	.rodata,"a",@progbits
	.globl	lua_ident
	.p2align	4
lua_ident:
	.asciz	"$Lua: Lua 5.1.5 Copyright (C) 1994-2012 Lua.org, PUC-Rio $\n$Authors: R. Ierusalimschy, L. H. de Figueiredo & W. Celes $\n$URL: www.lua.org $\n"
	.size	lua_ident, 141

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no calling environment"
	.size	.L.str, 23

	.hidden	luaO_nilobject_
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"no value"
	.size	.L.str.1, 9

	.hidden	luaT_typenames
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"?"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaD_growstack
	.hidden	luaC_step
	.hidden	luaE_newthread
	.hidden	luaG_runerror
	.hidden	luaC_barrierf
	.hidden	luaV_tonumber
	.hidden	luaO_rawequalObj
	.hidden	luaV_equalval
	.hidden	luaV_lessthan
	.hidden	luaV_tostring
	.hidden	luaH_getn
	.hidden	luaS_newlstr
	.hidden	luaO_pushvfstring
	.hidden	luaF_newCclosure
	.hidden	luaV_gettable
	.hidden	luaH_get
	.hidden	luaH_getnum
	.hidden	luaH_new
	.hidden	luaV_settable
	.hidden	luaH_set
	.hidden	luaC_barrierback
	.hidden	luaH_setnum
	.hidden	luaD_call
	.hidden	luaD_pcall
	.hidden	luaZ_init
	.hidden	luaD_protectedparser
	.hidden	luaU_dump
	.hidden	luaC_fullgc
	.hidden	luaG_errormsg
	.hidden	luaH_next
	.hidden	luaV_concat
	.hidden	luaS_newudata
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
