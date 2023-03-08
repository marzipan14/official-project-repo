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
	addq	$280, %rax              # imm = 0x118
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rbx, %rcx
	je	.LBB0_7
# %bb.1:
	andl	$63, %ebx
	movb	R64_ARRAY(%rbx), %dl
	movb	%dl, (%rax)
	movq	%rcx, %rdx
	shrq	$6, %rdx
	je	.LBB0_9
# %bb.2:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 1(%rax)
	movq	%rcx, %rdx
	shrq	$12, %rdx
	je	.LBB0_10
# %bb.3:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 2(%rax)
	movq	%rcx, %rdx
	shrq	$18, %rdx
	je	.LBB0_11
# %bb.4:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 3(%rax)
	movq	%rcx, %rdx
	shrq	$24, %rdx
	je	.LBB0_12
# %bb.5:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %bl
	leaq	5(%rax), %rdx
	movb	%bl, 4(%rax)
	shrq	$30, %rcx
	je	.LBB0_13
# %bb.6:
	movb	R64_ARRAY(%rcx), %cl
	movb	%cl, (%rdx)
	jmp	.LBB0_14
.LBB0_7:
	movq	%rax, %rdx
	jmp	.LBB0_13
.LBB0_9:
	leaq	1(%rax), %rdx
	jmp	.LBB0_13
.LBB0_10:
	leaq	2(%rax), %rdx
	jmp	.LBB0_13
.LBB0_11:
	leaq	3(%rax), %rdx
	jmp	.LBB0_13
.LBB0_12:
	leaq	4(%rax), %rdx
.LBB0_13:
	movb	$0, (%rdx)
.LBB0_14:
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
	andq	%rsi, %rcx
	je	.LBB1_1
# %bb.3:
	andl	$63, %esi
	movb	R64_ARRAY(%rsi), %dl
	movb	%dl, (%rax)
	movq	%rcx, %rdx
	shrq	$6, %rdx
	je	.LBB1_4
# %bb.5:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 1(%rax)
	movq	%rcx, %rdx
	shrq	$12, %rdx
	je	.LBB1_6
# %bb.7:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 2(%rax)
	movq	%rcx, %rdx
	shrq	$18, %rdx
	je	.LBB1_8
# %bb.9:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %dl
	movb	%dl, 3(%rax)
	movq	%rcx, %rdx
	shrq	$24, %rdx
	je	.LBB1_10
# %bb.11:
	andl	$63, %edx
	movb	R64_ARRAY(%rdx), %sil
	leaq	5(%rax), %rdx
	movb	%sil, 4(%rax)
	shrq	$30, %rcx
	je	.LBB1_2
# %bb.12:
	movb	R64_ARRAY(%rcx), %cl
	movb	%cl, (%rdx)
	retq
.LBB1_1:
	movq	%rax, %rdx
.LBB1_2:
	movb	$0, (%rdx)
	retq
.LBB1_4:
	leaq	1(%rax), %rdx
	movb	$0, (%rdx)
	retq
.LBB1_6:
	leaq	2(%rax), %rdx
	movb	$0, (%rdx)
	retq
.LBB1_8:
	leaq	3(%rax), %rdx
	movb	$0, (%rdx)
	retq
.LBB1_10:
	leaq	4(%rax), %rdx
	movb	$0, (%rdx)
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
