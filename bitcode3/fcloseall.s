	.text
	.file	"fcloseall.c"
	.globl	_fcloseall_r            # -- Begin function _fcloseall_r
	.p2align	4, 0x90
	.type	_fcloseall_r,@function
_fcloseall_r:                           # @_fcloseall_r
# %bb.0:
	movl	$_fclose_r, %esi
	jmp	_fwalk_reent            # TAILCALL
.Lfunc_end0:
	.size	_fcloseall_r, .Lfunc_end0-_fcloseall_r
                                        # -- End function
	.globl	fcloseall               # -- Begin function fcloseall
	.p2align	4, 0x90
	.type	fcloseall,@function
fcloseall:                              # @fcloseall
# %bb.0:
	movq	_global_impure_ptr(%rip), %rdi
	movl	$_fclose_r, %esi
	jmp	_fwalk_reent            # TAILCALL
.Lfunc_end1:
	.size	fcloseall, .Lfunc_end1-fcloseall
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
