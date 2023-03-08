	.text
	.file	"rand.c"
	.globl	redisLrand48            # -- Begin function redisLrand48
	.p2align	4, 0x90
	.type	redisLrand48,@function
redisLrand48:                           # @redisLrand48
# %bb.0:
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movl	x.0(%rip), %r9d
	imull	$58989, %r9d, %esi      # imm = 0xE66D
	movzwl	%si, %ecx
	movl	%esi, %edx
	shrl	$16, %edx
	addl	$11, %ecx
	xorl	%eax, %eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	seta	%al
	addl	%edx, %eax
	addl	$11, %esi
	xorl	%r10d, %r10d
	cmpl	$65535, %eax            # imm = 0xFFFF
	seta	%r10b
	movzwl	%ax, %ecx
	movl	x.1(%rip), %r11d
	imull	$58989, %r11d, %edi     # imm = 0xE66D
	movzwl	%di, %edx
	addl	%ecx, %edx
	addl	%edi, %eax
	shrl	$16, %edi
	xorl	%ecx, %ecx
	cmpl	$65535, %edx            # imm = 0xFFFF
	seta	%cl
	movzwl	%si, %r8d
	movzwl	%ax, %edx
	imull	$57068, %r9d, %esi      # imm = 0xDEEC
	movzwl	%si, %ebx
	addl	%edx, %ebx
	movl	%esi, %edx
	shrl	$16, %edx
	xorl	%ebp, %ebp
	cmpl	$65535, %ebx            # imm = 0xFFFF
	seta	%bpl
	imull	$58989, x.2(%rip), %r14d # imm = 0xE66D
	imull	$57068, %r11d, %r11d    # imm = 0xDEEC
	leal	(%r9,%r9,4), %ebx
	addl	%edx, %ebx
	addl	%r11d, %ebx
	addl	%edi, %ebx
	addl	%r14d, %ebx
	addl	%r10d, %ebx
	addl	%ecx, %ebx
	addl	%ebp, %ebx
	movzwl	%bx, %ecx
	movl	%ecx, x.2(%rip)
	addl	%esi, %eax
	movzwl	%ax, %eax
	movl	%eax, x.1(%rip)
	movl	%r8d, x.0(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$15, %ecx
	shrl	%eax
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	redisLrand48, .Lfunc_end0-redisLrand48
                                        # -- End function
	.globl	redisSrand48            # -- Begin function redisSrand48
	.p2align	4, 0x90
	.type	redisSrand48,@function
redisSrand48:                           # @redisSrand48
# %bb.0:
	movl	$13070, x.0(%rip)       # imm = 0x330E
	movzwl	%di, %eax
	movl	%eax, x.1(%rip)
	shrl	$16, %edi
	movl	%edi, x.2(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	redisSrand48, .Lfunc_end1-redisSrand48
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	x.0,@object             # @x.0
	.data
	.p2align	2
x.0:
	.long	13070                   # 0x330e
	.size	x.0, 4

	.type	x.1,@object             # @x.1
	.p2align	2
x.1:
	.long	43981                   # 0xabcd
	.size	x.1, 4

	.type	x.2,@object             # @x.2
	.p2align	2
x.2:
	.long	4660                    # 0x1234
	.size	x.2, 4

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
