	.text
	.file	"wctype.c"
	.globl	_wctype_r               # -- Begin function _wctype_r
	.p2align	4, 0x90
	.type	_wctype_r,@function
_wctype_r:                              # @_wctype_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movsbl	(%rsi), %eax
	addl	$-97, %eax
	cmpl	$23, %eax
	ja	.LBB0_26
# %bb.1:
	movq	%rsi, %rbx
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.5:
	movl	$2, %eax
	jmp	.LBB0_27
.LBB0_6:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.7:
	movl	$3, %eax
	jmp	.LBB0_27
.LBB0_8:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.9:
	movl	$4, %eax
	jmp	.LBB0_27
.LBB0_10:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.11:
	movl	$5, %eax
	jmp	.LBB0_27
.LBB0_12:
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.13:
	movl	$6, %eax
	jmp	.LBB0_27
.LBB0_14:
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.15:
	movl	$7, %eax
	jmp	.LBB0_27
.LBB0_16:
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_17
# %bb.18:
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.19:
	movl	$9, %eax
	jmp	.LBB0_27
.LBB0_20:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.21:
	movl	$10, %eax
	jmp	.LBB0_27
.LBB0_22:
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.23:
	movl	$11, %eax
	jmp	.LBB0_27
.LBB0_24:
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_25
.LBB0_26:
	movl	$22, (%r14)
	xorl	%eax, %eax
.LBB0_27:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_3:
	movl	$1, %eax
	jmp	.LBB0_27
.LBB0_17:
	movl	$8, %eax
	jmp	.LBB0_27
.LBB0_25:
	movl	$12, %eax
	jmp	.LBB0_27
.Lfunc_end0:
	.size	_wctype_r, .Lfunc_end0-_wctype_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_6
	.quad	.LBB0_8
	.quad	.LBB0_10
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_12
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_14
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_16
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_20
	.quad	.LBB0_26
	.quad	.LBB0_22
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_24
                                        # -- End function
	.text
	.globl	wctype                  # -- Begin function wctype
	.p2align	4, 0x90
	.type	wctype,@function
wctype:                                 # @wctype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_wctype_r               # TAILCALL
.Lfunc_end1:
	.size	wctype, .Lfunc_end1-wctype
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alnum"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"alpha"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"blank"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cntrl"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"digit"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"graph"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lower"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"print"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"punct"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"space"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"upper"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"xdigit"
	.size	.L.str.11, 7

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
