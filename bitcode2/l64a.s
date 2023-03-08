	.text
	.file	"l64a.c"
	.globl	l64a                    # -- Begin function l64a
	.p2align	4, 0x90
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_l64a_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	l64a, .Lfunc_end0-l64a
                                        # -- End function
	.globl	_l64a_r                 # -- Begin function _l64a_r
	.p2align	4, 0x90
	.type	_l64a_r,@function
_l64a_r:                                # @_l64a_r
# %bb.0:
	movq	%rdi, %rax
	addq	$280, %rax              # imm = 0x118
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andq	%rsi, %rcx
	je	.LBB1_7
# %bb.1:
	andl	$63, %esi
	movb	R64_ARRAY(%rsi), %dl
	movb	%dl, (%rax)
	movq	%rcx, %rdx
	shrq	$6, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_9
# %bb.2:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 1(%rax)
	movq	%rcx, %rdx
	shrq	$12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_10
# %bb.3:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 2(%rax)
	movq	%rcx, %rdx
	shrq	$18, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_11
# %bb.4:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 3(%rax)
	movq	%rcx, %rdx
	shrq	$24, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_12
# %bb.5:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %sil
	leaq	5(%rax), %rdx
	movb	%sil, 4(%rax)
	shrq	$30, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_13
# %bb.6:
	movb	R64_ARRAY(%rcx), %cl
	movb	%cl, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_14
.LBB1_7:
	movq	%rax, %rdx
	jmp	.LBB1_13
.LBB1_9:
	leaq	1(%rax), %rdx
	jmp	.LBB1_13
.LBB1_10:
	leaq	2(%rax), %rdx
	jmp	.LBB1_13
.LBB1_11:
	leaq	3(%rax), %rdx
	jmp	.LBB1_13
.LBB1_12:
	leaq	4(%rax), %rdx
.LBB1_13:
	movb	$0, (%rdx)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	_l64a_r, .Lfunc_end1-_l64a_r
                                        # -- End function
	.type	R64_ARRAY,@object       # @R64_ARRAY
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
R64_ARRAY:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	R64_ARRAY, 65

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
