	.text
	.file	"gmtime_r.c"
	.globl	gmtime_r                # -- Begin function gmtime_r
	.p2align	4, 0x90
	.type	gmtime_r,@function
gmtime_r:                               # @gmtime_r
# %bb.0:
	pushq	%rbx
	movq	%rsi, %r10
	movq	(%rdi), %rdi
	movabsq	$1749024623285053783, %rcx # imm = 0x1845C8A0CE512957
	movq	%rdi, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$13, %rcx
	addq	%rax, %rcx
	imulq	$86400, %rcx, %rax      # imm = 0x15180
	movq	%rdi, %rsi
	subq	%rax, %rsi
	negq	%rax
	testq	%rsi, %rsi
	leaq	86400(%rdi,%rax), %rdi
	cmovnsq	%rsi, %rdi
	sarq	$63, %rsi
	leaq	(%rsi,%rcx), %r9
	leaq	(%rsi,%rcx), %r8
	addq	$719468, %r8            # imm = 0xAFA6C
	movabsq	$5247073869855161349, %rdx # imm = 0x48D159E26AF37C05
	movq	%rdi, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdx
	addq	%rax, %rdx
	movl	%edx, 8(%r10)
	imulq	$3600, %rdx, %rax       # imm = 0xE10
	subq	%rax, %rdi
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rdi, %rax
	imulq	%rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$5, %rdx
	addl	%eax, %edx
	movl	%edx, 4(%r10)
	imull	$60, %edx, %eax
	subl	%eax, %edi
	movl	%edi, (%r10)
	leaq	(%rsi,%rcx), %r11
	addq	$719471, %r11           # imm = 0xAFA6F
	movabsq	$5270498306774157605, %rdx # imm = 0x4924924924924925
	movq	%r11, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	%rdx
	addl	%eax, %edx
	leal	(,%rdx,8), %eax
	subl	%eax, %edx
	leal	(%r11,%rdx), %edi
	addl	$7, %edi
	movl	%r11d, %eax
	addl	%edx, %eax
	cmovnsl	%eax, %edi
	testq	%r8, %r8
	leaq	573372(%rsi,%rcx), %rax
	cmovnsq	%r8, %rax
	movl	%edi, 24(%r10)
	movabsq	$4137408090565272301, %rcx # imm = 0x396B06BCC8F862ED
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	movslq	%edx, %r8
	imulq	$-146097, %r8, %rax     # imm = 0xFFFDC54F
	leaq	(%rax,%r9), %rcx
	addq	$719468, %rcx           # imm = 0xAFA6C
	movq	%rcx, %rax
	shrq	$2, %rax
	movabsq	$3234497591006606311, %rdx # imm = 0x2CE33E6C02CE33E7
	mulq	%rdx
	shrq	$6, %rdx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movabsq	$-1896998432287073591, %rdx # imm = 0xE5AC81FA000E5AC9
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rdi
	shrq	$15, %rdi
	addq	%rsi, %rdi
	shrq	$17, %rdx
	subq	%rdx, %rdi
	movabsq	$7429236654343298871, %rdx # imm = 0x6719F36016719F37
	movq	%rdi, %rax
	mulq	%rdx
	subq	%rdx, %rdi
	shrq	%rdi
	addq	%rdx, %rdi
	shrq	$8, %rdi
	movl	%edi, %eax
	shrl	$2, %eax
	movl	%edi, %edx
	imulq	$1374389535, %rdx, %r9  # imm = 0x51EB851F
	shrq	$37, %r9
	imull	$-365, %edi, %edx       # imm = 0xFE93
	subl	%eax, %ecx
	addl	%edx, %ecx
	addl	%r9d, %ecx
	leal	(%rcx,%rcx,4), %r11d
	addl	$2, %r11d
	movl	$3593175255, %edx       # imm = 0xD62B80D7
	imulq	%r11, %rdx
	shrq	$39, %rdx
	imull	$153, %edx, %eax
	addl	$2, %eax
	movl	$3435973837, %esi       # imm = 0xCCCCCCCD
	imulq	%rax, %rsi
	shrq	$34, %rsi
	movl	%ecx, %eax
	subl	%esi, %eax
	addl	$1, %eax
	cmpl	$1530, %r11d            # imm = 0x5FA
	movl	$2, %r11d
	movl	$-10, %esi
	cmovbl	%r11d, %esi
	addl	%edx, %esi
	imull	$400, %r8d, %r8d        # imm = 0x190
	xorl	%edx, %edx
	cmpl	$2, %esi
	setb	%dl
	cmpl	$306, %ecx              # imm = 0x132
	jb	.LBB0_2
# %bb.1:
	addl	$-306, %ecx             # imm = 0xFECE
	jmp	.LBB0_6
.LBB0_2:
	addl	$59, %ecx
	testb	$3, %dil
	jne	.LBB0_4
# %bb.3:
	imull	$100, %r9d, %r11d
	movl	%edi, %ebx
	movl	$1, %r9d
	subl	%r11d, %ebx
	jne	.LBB0_5
.LBB0_4:
	imull	$-1030792151, %edi, %ebx # imm = 0xC28F5C29
	rorl	$4, %ebx
	xorl	%r9d, %r9d
	cmpl	$10737419, %ebx         # imm = 0xA3D70B
	setb	%r9b
.LBB0_5:
	addl	%r9d, %ecx
.LBB0_6:
	movl	%ecx, 28(%r10)
	addl	%edi, %r8d
	leal	(%rdx,%r8), %ecx
	addl	$-1900, %ecx            # imm = 0xF894
	movl	%ecx, 20(%r10)
	movl	%esi, 16(%r10)
	movl	%eax, 12(%r10)
	movl	$0, 32(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %rax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gmtime_r, .Lfunc_end0-gmtime_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
