	.text
	.file	"iswctype.c"
	.globl	iswctype                # -- Begin function iswctype
	.p2align	4, 0x90
	.type	iswctype,@function
iswctype:                               # @iswctype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $esi killed $esi def $rsi
	addl	$-1, %esi
	cmpl	$11, %esi
	ja	.LBB0_1
# %bb.2:
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_3:
	callq	iswalnum
	jmp	.LBB0_15
.LBB0_4:
	callq	iswalpha
	jmp	.LBB0_15
.LBB0_5:
	callq	iswblank
	jmp	.LBB0_15
.LBB0_6:
	callq	iswcntrl
	jmp	.LBB0_15
.LBB0_7:
	callq	iswdigit
	jmp	.LBB0_15
.LBB0_8:
	callq	iswgraph
	jmp	.LBB0_15
.LBB0_9:
	callq	iswlower
	jmp	.LBB0_15
.LBB0_10:
	callq	iswprint
	jmp	.LBB0_15
.LBB0_11:
	callq	iswpunct
	jmp	.LBB0_15
.LBB0_12:
	callq	iswspace
	jmp	.LBB0_15
.LBB0_13:
	callq	iswupper
	jmp	.LBB0_15
.LBB0_14:
	callq	iswxdigit
	jmp	.LBB0_15
.LBB0_1:
	xorl	%eax, %eax
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswctype, .Lfunc_end0-iswctype
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_13
	.quad	.LBB0_14
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
