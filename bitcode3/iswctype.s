	.text
	.file	"iswctype.c"
	.globl	iswctype                # -- Begin function iswctype
	.p2align	4, 0x90
	.type	iswctype,@function
iswctype:                               # @iswctype
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	addl	$-1, %esi
	cmpl	$11, %esi
	ja	.LBB0_14
# %bb.1:
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_2:
	jmp	iswalnum                # TAILCALL
.LBB0_3:
	jmp	iswalpha                # TAILCALL
.LBB0_4:
	jmp	iswblank                # TAILCALL
.LBB0_5:
	jmp	iswcntrl                # TAILCALL
.LBB0_6:
	jmp	iswdigit                # TAILCALL
.LBB0_7:
	jmp	iswgraph                # TAILCALL
.LBB0_8:
	jmp	iswlower                # TAILCALL
.LBB0_9:
	jmp	iswprint                # TAILCALL
.LBB0_10:
	jmp	iswpunct                # TAILCALL
.LBB0_11:
	jmp	iswspace                # TAILCALL
.LBB0_12:
	jmp	iswupper                # TAILCALL
.LBB0_13:
	jmp	iswxdigit               # TAILCALL
.LBB0_14:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	iswctype, .Lfunc_end0-iswctype
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_2
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
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
