	.text
	.file	"strbuf.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function strbuf_init
.LCPI0_0:
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	strbuf_init
	.p2align	4, 0x90
	.type	strbuf_init,@function
strbuf_init:                            # @strbuf_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	leal	1(%rsi), %eax
	testl	%esi, %esi
	movl	$1023, %ecx             # imm = 0x3FF
	cmovgl	%eax, %ecx
	movq	$0, (%rdi)
	movl	%ecx, 8(%rdi)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,4294967294,0,0]
	movups	%xmm0, 12(%rdi)
	movl	$0, 28(%rdi)
	movslq	%ecx, %rdi
	callq	malloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movslq	12(%rbx), %rcx
	movb	$0, (%rax,%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_2:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	die
.Lfunc_end0:
	.size	strbuf_init, .Lfunc_end0-strbuf_init
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function die
	.type	die,@function
die:                                    # @die
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$200, %rsp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	callq	__getreent
	movq	24(%rax), %rdi
	leaq	-32(%rbp), %rdx
	movq	%rbx, %rsi
	callq	vfprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, %edi
	callq	exit
.Lfunc_end1:
	.size	die, .Lfunc_end1-die
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function strbuf_new
.LCPI2_0:
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	strbuf_new
	.p2align	4, 0x90
	.type	strbuf_new,@function
strbuf_new:                             # @strbuf_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movl	$32, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB2_3
# %bb.1:
	movq	%rax, %rbx
	leal	1(%r14), %eax
	testl	%r14d, %r14d
	movl	$1023, %ecx             # imm = 0x3FF
	cmovgl	%eax, %ecx
	movq	$0, (%rbx)
	movl	%ecx, 8(%rbx)
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [0,4294967294,0,0]
	movups	%xmm0, 12(%rbx)
	movl	$0, 28(%rbx)
	movslq	%ecx, %rdi
	callq	malloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB2_3
# %bb.2:
	movslq	12(%rbx), %rcx
	movb	$0, (%rax,%rcx)
	movl	$1, 20(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_3:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	die
.Lfunc_end2:
	.size	strbuf_new, .Lfunc_end2-strbuf_new
                                        # -- End function
	.globl	strbuf_set_increment    # -- Begin function strbuf_set_increment
	.p2align	4, 0x90
	.type	strbuf_set_increment,@function
strbuf_set_increment:                   # @strbuf_set_increment
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $esi killed $esi def $rsi
	leal	1(%rsi), %eax
	cmpl	$1, %eax
	jbe	.LBB3_2
# %bb.1:
	movl	%esi, 16(%rdi)
	popq	%rbp
	retq
.LBB3_2:
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	die
.Lfunc_end3:
	.size	strbuf_set_increment, .Lfunc_end3-strbuf_set_increment
                                        # -- End function
	.globl	strbuf_free             # -- Begin function strbuf_free
	.p2align	4, 0x90
	.type	strbuf_free,@function
strbuf_free:                            # @strbuf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$0, 28(%rdi)
	je	.LBB4_2
# %bb.1:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	24(%rbx), %ecx
	movl	8(%rbx), %r9d
	movl	12(%rbx), %r8d
	movl	$.L.str.6, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf
.LBB4_2:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_4
# %bb.3:
	callq	free
	movq	$0, (%rbx)
.LBB4_4:
	cmpl	$0, 20(%rbx)
	je	.LBB4_5
# %bb.6:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB4_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	strbuf_free, .Lfunc_end4-strbuf_free
                                        # -- End function
	.globl	strbuf_free_to_string   # -- Begin function strbuf_free_to_string
	.p2align	4, 0x90
	.type	strbuf_free_to_string,@function
strbuf_free_to_string:                  # @strbuf_free_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 28(%rdi)
	je	.LBB5_1
# %bb.2:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	24(%rbx), %ecx
	leaq	12(%rbx), %r12
	movl	8(%rbx), %r9d
	movl	12(%rbx), %r8d
	movl	$.L.str.6, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB5_3
.LBB5_1:
	leaq	12(%rbx), %r12
.LBB5_3:
	movq	(%rbx), %rax
	movslq	12(%rbx), %rcx
	movb	$0, (%rax,%rcx)
	movq	(%rbx), %r15
	testq	%r14, %r14
	je	.LBB5_5
# %bb.4:
	movl	(%r12), %eax
	movl	%eax, (%r14)
.LBB5_5:
	cmpl	$0, 20(%rbx)
	je	.LBB5_7
# %bb.6:
	movq	%rbx, %rdi
	callq	free
.LBB5_7:
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	strbuf_free_to_string, .Lfunc_end5-strbuf_free_to_string
                                        # -- End function
	.globl	strbuf_resize           # -- Begin function strbuf_resize
	.p2align	4, 0x90
	.type	strbuf_resize,@function
strbuf_resize:                          # @strbuf_resize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB6_12
# %bb.1:
	movq	%rdi, %r14
	leal	1(%rsi), %ebx
	movl	8(%rdi), %eax
	cmpl	%ebx, %eax
	jg	.LBB6_8
# %bb.2:
	movl	16(%r14), %ecx
	testl	%ecx, %ecx
	js	.LBB6_3
# %bb.7:
	leal	(%rax,%rcx), %ebx
	addl	$-1, %ebx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	subl	%edx, %ebx
	jmp	.LBB6_8
.LBB6_3:
	cmpl	%esi, %eax
	jle	.LBB6_5
# %bb.4:
	movl	%eax, %ebx
	jmp	.LBB6_8
.LBB6_5:
	negl	%ecx
	movl	%eax, %ebx
	.p2align	4, 0x90
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	imull	%ecx, %ebx
	cmpl	%esi, %ebx
	jle	.LBB6_6
.LBB6_8:
	cmpl	$2, 28(%r14)
	jl	.LBB6_10
# %bb.9:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	8(%r14), %ecx
	movl	$.L.str.2, %esi
	movq	%r14, %rdx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	fprintf
.LBB6_10:
	movl	%ebx, 8(%r14)
	movq	(%r14), %rdi
	movslq	%ebx, %rsi
	callq	realloc
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB6_13
# %bb.11:
	addl	$1, 24(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_12:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	die
.LBB6_13:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	die
.Lfunc_end6:
	.size	strbuf_resize, .Lfunc_end6-strbuf_resize
                                        # -- End function
	.globl	strbuf_append_string    # -- Begin function strbuf_append_string
	.p2align	4, 0x90
	.type	strbuf_append_string,@function
strbuf_append_string:                   # @strbuf_append_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movb	(%rsi), %cl
	testb	%cl, %cl
	je	.LBB7_5
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	12(%rdi), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%rdi), %eax
	addq	$1, %rbx
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	movq	(%r14), %rdx
	movslq	%esi, %rsi
	movb	%cl, (%rdx,%rsi)
	movl	12(%r14), %esi
	addl	$1, %esi
	movl	%esi, 12(%r14)
	addl	$-1, %eax
	movzbl	(%rbx), %ecx
	addq	$1, %rbx
	testb	%cl, %cl
	je	.LBB7_5
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jg	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	addl	$1, %esi
	movq	%r14, %rdi
	callq	strbuf_resize
	movl	12(%r14), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r14), %eax
	movzbl	-1(%rbx), %ecx
	jmp	.LBB7_4
.LBB7_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	strbuf_append_string, .Lfunc_end7-strbuf_append_string
                                        # -- End function
	.globl	strbuf_append_fmt       # -- Begin function strbuf_append_fmt
	.p2align	4, 0x90
	.type	strbuf_append_fmt,@function
strbuf_append_fmt:                      # @strbuf_append_fmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB8_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB8_2:
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movl	12(%rbx), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%rbx), %eax
	cmpl	%r15d, %eax
	jge	.LBB8_4
# %bb.3:
	addl	%r15d, %esi
	movq	%rbx, %rdi
	callq	strbuf_resize
.LBB8_4:
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -48(%rbp)
	movslq	12(%rbx), %rdi
	addq	(%rbx), %rdi
	movslq	%r15d, %rsi
	leaq	-48(%rbp), %rcx
	movq	%r14, %rdx
	callq	vsnprintf
	testl	%eax, %eax
	js	.LBB8_6
# %bb.5:
	addl	%eax, 12(%rbx)
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_6:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	die
.Lfunc_end8:
	.size	strbuf_append_fmt, .Lfunc_end8-strbuf_append_fmt
                                        # -- End function
	.globl	strbuf_append_fmt_retry # -- Begin function strbuf_append_fmt_retry
	.p2align	4, 0x90
	.type	strbuf_append_fmt_retry,@function
strbuf_append_fmt_retry:                # @strbuf_append_fmt_retry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB9_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB9_2:
	movq	%rdx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430224, %r12     # imm = 0x3000000010
	movq	%r12, -64(%rbp)
	movl	8(%rbx), %eax
	movslq	12(%rbx), %rdi
	movl	%edi, %r15d
	notl	%r15d
	addl	%eax, %r15d
	subl	%edi, %eax
	addq	(%rbx), %rdi
	movslq	%eax, %rsi
	leaq	-64(%rbp), %rcx
	movq	%r14, %rdx
	callq	vsnprintf
	cmpl	%r15d, %eax
	jle	.LBB9_6
# %bb.3:                                # %.preheader
	movb	$1, %cl
	leaq	-64(%rbp), %r15
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB9_7
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	addl	12(%rbx), %eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	strbuf_resize
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	%r12, -64(%rbp)
	movl	8(%rbx), %eax
	movslq	12(%rbx), %rdi
	movl	%edi, %r13d
	notl	%r13d
	addl	%eax, %r13d
	subl	%edi, %eax
	addq	(%rbx), %rdi
	movslq	%eax, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	vsnprintf
	xorl	%ecx, %ecx
	cmpl	%r13d, %eax
	jg	.LBB9_4
.LBB9_6:
	addl	%eax, 12(%rbx)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_7:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	die
.Lfunc_end9:
	.size	strbuf_append_fmt_retry, .Lfunc_end9-strbuf_append_fmt_retry
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Out of memory"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"BUG: Invalid string increment"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"strbuf(%lx) resize: %d => %d\n"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BUG: Unable to convert number"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"BUG: length of formatted string changed"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"strbuf(%lx) reallocs: %d, length: %d, size: %d\n"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"BUG: Invalid strbuf length requested"
	.size	.L.str.7, 37

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
