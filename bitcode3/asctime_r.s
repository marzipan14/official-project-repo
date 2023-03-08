	.text
	.file	"asctime_r.c"
	.globl	asctime_r               # -- Begin function asctime_r
	.p2align	4, 0x90
	.type	asctime_r,@function
asctime_r:                              # @asctime_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movslq	24(%rdi), %rax
	leaq	asctime_r.day_name(%rax,%rax,2), %rdx
	movslq	16(%rdi), %rax
	leaq	asctime_r.mon_name(%rax,%rax,2), %rcx
	movl	12(%rdi), %r8d
	movl	8(%rdi), %r9d
	movl	(%rdi), %r10d
	movl	4(%rdi), %r11d
	movl	$1900, %ebx             # imm = 0x76C
	addl	20(%rdi), %ebx
	subq	$8, %rsp
	movl	$.L.str, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	pushq	%rbx
	pushq	%r10
	pushq	%r11
	callq	siprintf
	addq	$32, %rsp
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	asctime_r, .Lfunc_end0-asctime_r
                                        # -- End function
	.type	asctime_r.day_name,@object # @asctime_r.day_name
	.section	.rodata,"a",@progbits
	.p2align	4
asctime_r.day_name:
	.ascii	"Sun"
	.ascii	"Mon"
	.ascii	"Tue"
	.ascii	"Wed"
	.ascii	"Thu"
	.ascii	"Fri"
	.ascii	"Sat"
	.size	asctime_r.day_name, 21

	.type	asctime_r.mon_name,@object # @asctime_r.mon_name
	.p2align	4
asctime_r.mon_name:
	.ascii	"Jan"
	.ascii	"Feb"
	.ascii	"Mar"
	.ascii	"Apr"
	.ascii	"May"
	.ascii	"Jun"
	.ascii	"Jul"
	.ascii	"Aug"
	.ascii	"Sep"
	.ascii	"Oct"
	.ascii	"Nov"
	.ascii	"Dec"
	.size	asctime_r.mon_name, 36

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.3s %.3s%3d %.2d:%.2d:%.2d %d\n"
	.size	.L.str, 32

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
