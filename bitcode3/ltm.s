	.text
	.file	"ltm.c"
	.hidden	luaT_init               # -- Begin function luaT_init
	.globl	luaT_init
	.p2align	4, 0x90
	.type	luaT_init,@function
luaT_init:                              # @luaT_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	luaT_init.luaT_eventname(%rbx), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	32(%r14), %rcx
	movq	%rax, 296(%rcx,%rbx)
	movq	32(%r14), %rax
	movq	296(%rax,%rbx), %rax
	orb	$32, 9(%rax)
	addq	$8, %rbx
	cmpq	$136, %rbx
	jne	.LBB0_1
# %bb.2:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaT_init, .Lfunc_end0-luaT_init
                                        # -- End function
	.hidden	luaT_gettm              # -- Begin function luaT_gettm
	.globl	luaT_gettm
	.p2align	4, 0x90
	.type	luaT_gettm,@function
luaT_gettm:                             # @luaT_gettm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	callq	luaH_getstr
	cmpl	$0, 8(%rax)
	jne	.LBB1_2
# %bb.1:
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	orb	%al, 10(%rbx)
	xorl	%eax, %eax
.LBB1_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaT_gettm, .Lfunc_end1-luaT_gettm
                                        # -- End function
	.hidden	luaT_gettmbyobj         # -- Begin function luaT_gettmbyobj
	.globl	luaT_gettmbyobj
	.p2align	4, 0x90
	.type	luaT_gettmbyobj,@function
luaT_gettmbyobj:                        # @luaT_gettmbyobj
# %bb.0:
	movslq	8(%rsi), %rax
	cmpq	$7, %rax
	je	.LBB2_2
# %bb.1:
	cmpl	$5, %eax
	jne	.LBB2_3
.LBB2_2:
	movq	(%rsi), %rax
	addq	$16, %rax
	jmp	.LBB2_4
.LBB2_3:
	movq	32(%rdi), %rcx
	leaq	(%rcx,%rax,8), %rax
	addq	$224, %rax
.LBB2_4:
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_5
# %bb.6:
	movq	32(%rdi), %rcx
	movl	%edx, %edx
	movq	296(%rcx,%rdx,8), %rsi
	movq	%rax, %rdi
	jmp	luaH_getstr             # TAILCALL
.LBB2_5:
	movl	$luaO_nilobject_, %eax
	retq
.Lfunc_end2:
	.size	luaT_gettmbyobj, .Lfunc_end2-luaT_gettmbyobj
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nil"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"boolean"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"userdata"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"number"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"string"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"table"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"function"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"thread"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"proto"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"upval"
	.size	.L.str.9, 6

	.hidden	luaT_typenames          # @luaT_typenames
	.type	luaT_typenames,@object
	.section	.rodata,"a",@progbits
	.globl	luaT_typenames
	.p2align	4
luaT_typenames:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.2
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.size	luaT_typenames, 88

	.type	luaT_init.luaT_eventname,@object # @luaT_init.luaT_eventname
	.p2align	4
luaT_init.luaT_eventname:
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.size	luaT_init.luaT_eventname, 136

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"__index"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"__newindex"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"__gc"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"__mode"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"__eq"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"__add"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"__sub"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"__mul"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"__div"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"__mod"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"__pow"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"__unm"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"__len"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"__lt"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"__le"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"__concat"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"__call"
	.size	.L.str.26, 7

	.hidden	luaO_nilobject_
	.hidden	luaS_newlstr
	.hidden	luaH_getstr
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
