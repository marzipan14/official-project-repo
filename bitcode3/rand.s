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
	imull	$58989, %r9d, %ecx      # imm = 0xE66D
	movzwl	%cx, %edx
	movl	%ecx, %esi
	shrl	$16, %esi
	addl	$11, %edx
	xorl	%eax, %eax
	cmpl	$65535, %edx            # imm = 0xFFFF
	seta	%al
	addl	%esi, %eax
	addl	$11, %ecx
	movzwl	%cx, %r8d
	xorl	%r10d, %r10d
	cmpl	$65535, %eax            # imm = 0xFFFF
	seta	%r10b
	movzwl	%ax, %ecx
	movl	x.1(%rip), %r11d
	imull	$58989, %r11d, %edi     # imm = 0xE66D
	movzwl	%di, %esi
	addl	%ecx, %esi
	addl	%edi, %eax
	shrl	$16, %edi
	xorl	%edx, %edx
	cmpl	$65535, %esi            # imm = 0xFFFF
	seta	%dl
	movzwl	%ax, %esi
	imull	$57068, %r9d, %ecx      # imm = 0xDEEC
	movzwl	%cx, %ebx
	addl	%esi, %ebx
	movl	%ecx, %esi
	shrl	$16, %esi
	xorl	%ebp, %ebp
	cmpl	$65535, %ebx            # imm = 0xFFFF
	seta	%bpl
	imull	$58989, x.2(%rip), %r14d # imm = 0xE66D
	imull	$57068, %r11d, %r11d    # imm = 0xDEEC
	leal	(%r9,%r9,4), %ebx
	addl	%esi, %ebx
	addl	%r11d, %ebx
	addl	%edi, %ebx
	addl	%r14d, %ebx
	addl	%r10d, %ebx
	addl	%edx, %ebx
	addl	%ebp, %ebx
	movzwl	%bx, %edx
	movl	%edx, x.2(%rip)
	addl	%ecx, %eax
	movzwl	%ax, %eax
	movl	%eax, x.1(%rip)
	movl	%r8d, x.0(%rip)
	shll	$15, %edx
	shrl	%eax
	orl	%edx, %eax
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
	retq
.Lfunc_end1:
	.size	redisSrand48, .Lfunc_end1-redisSrand48
                                        # -- End function
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
