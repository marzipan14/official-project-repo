	.text
	.file	"stpncpy.c"
	.globl	stpncpy                 # -- Begin function stpncpy
	.p2align	4, 0x90
	.type	stpncpy,@function
stpncpy:                                # @stpncpy
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jb	.LBB0_6
# %bb.1:
	movl	%esi, %eax
	orl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.LBB0_6
# %bb.2:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rcx
	movq	%rcx, %rax
	notq	%rax
	andq	%r8, %rax
	leaq	(%rcx,%r9), %r10
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$-8, %rdx
	addq	$8, %rsi
	movq	%rcx, (%rdi)
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rdx
	ja	.LBB0_3
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	%rdx, %r10
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	je	.LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addq	$-1, %r10
	movzbl	(%rsi,%rcx), %eax
	movb	%al, (%rdi,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_7
# %bb.10:
	movq	%rdx, %r8
	subq	%rcx, %r8
	leaq	(%rdi,%rcx), %rax
	movq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%rcx), %r9
	addq	$-1, %r9
	subq	%rcx, %rsi
	je	.LBB0_19
# %bb.11:
	movq	%rcx, %r11
	notq	%r11
	addq	%rdx, %r11
	testb	$3, %sil
	je	.LBB0_15
# %bb.12:                               # %.preheader1
	andl	$3, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%rax), %rdx
	movb	$0, (%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_13
# %bb.14:                               # %.loopexit2
	subq	%rax, %r10
	addq	%rcx, %rdi
	addq	%rax, %rdi
	movq	%r10, %rsi
	movq	%rdi, %rax
.LBB0_15:
	addq	$1, %r8
	cmpq	$3, %r11
	jb	.LBB0_18
# %bb.16:                               # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movb	$0, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 2(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB0_17
.LBB0_18:
	addq	%r9, %r8
	movq	%r8, %rax
	jmp	.LBB0_19
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rdi
	xorl	%r9d, %r9d
	movq	%rdi, %rax
.LBB0_19:
	testq	%r9, %r9
	cmovneq	%r9, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	stpncpy, .Lfunc_end0-stpncpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
