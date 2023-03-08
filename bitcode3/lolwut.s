	.text
	.file	"lolwut.c"
	.globl	lolwutUnstableCommand   # -- Begin function lolwutUnstableCommand
	.p2align	4, 0x90
	.type	lolwutUnstableCommand,@function
lolwutUnstableCommand:                  # @lolwutUnstableCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str, %edi
	callq	sdsnew
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$.L.str.2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReplyBulkSds         # TAILCALL
.Lfunc_end0:
	.size	lolwutUnstableCommand, .Lfunc_end0-lolwutUnstableCommand
                                        # -- End function
	.globl	lolwutCommand           # -- Begin function lolwutCommand
	.p2align	4, 0x90
	.type	lolwutCommand,@function
lolwutCommand:                          # @lolwutCommand
# %bb.0:
	jmp	lolwut5Command          # TAILCALL
.Lfunc_end1:
	.size	lolwutCommand, .Lfunc_end1-lolwutCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Redis ver. "
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"5.0.6"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
