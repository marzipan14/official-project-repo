	.text
	.file	"gmtime_r.c"
	.globl	gmtime_r                # -- Begin function gmtime_r
	.p2align	4, 0x90
	.type	gmtime_r,@function
gmtime_r:                               # @gmtime_r
# %bb.0:
	pushq	%rbx
	movq	%rsi, %r9
	movq	(%rdi), %rcx
	movabsq	$1749024623285053783, %rdx # imm = 0x1845C8A0CE512957
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$13, %rdx
	leaq	(%rdx,%rax), %rsi
	imulq	$86400, %rsi, %rdi      # imm = 0x15180
	subq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_2
# %bb.1:
	leaq	(%rdx,%rax), %rsi
	addq	$719468, %rsi           # imm = 0xAFA6C
	jmp	.LBB0_3
.LBB0_2:
	addq	$86400, %rcx            # imm = 0x15180
	addq	$719467, %rsi           # imm = 0xAFA6B
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movabsq	$5247073869855161349, %rdx # imm = 0x48D159E26AF37C05
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdi
	addq	%rax, %rdi
	imulq	$3600, %rdi, %rax       # imm = 0xE10
	subq	%rax, %rcx
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rcx, %rax
	imulq	%rdx
	movl	%edi, 8(%r9)
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$5, %rdx
	addl	%eax, %edx
	movl	%edx, 4(%r9)
	imull	$60, %edx, %eax
	subl	%eax, %ecx
	leaq	3(%rsi), %r8
	movabsq	$5270498306774157605, %rdx # imm = 0x4924924924924925
	movq	%r8, %rax
	imulq	%rdx
	movl	%ecx, (%r9)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	%rdx
	addl	%eax, %edx
	leal	(,%rdx,8), %eax
	subl	%eax, %edx
	addl	%edx, %r8d
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_5
# %bb.4:
	addl	$7, %r8d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	leaq	-146096(%rsi), %rax
	testq	%rsi, %rsi
	cmovnsq	%rsi, %rax
	movabsq	$4137408090565272301, %rcx # imm = 0x396B06BCC8F862ED
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	movslq	%edx, %r10
	imulq	$-146097, %r10, %rcx    # imm = 0xFFFDC54F
	addq	%rsi, %rcx
	movq	%rcx, %rax
	shrq	$2, %rax
	movabsq	$3234497591006606311, %rdx # imm = 0x2CE33E6C02CE33E7
	mulq	%rdx
	movq	%rdx, %rdi
	shrq	$6, %rdi
	movq	%rcx, %rsi
	movabsq	$-1896998432287073591, %rdx # imm = 0xE5AC81FA000E5AC9
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdi, %rsi
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
	imulq	$1374389535, %rdx, %r11 # imm = 0x51EB851F
	shrq	$37, %r11
	imull	$-365, %edi, %edx       # imm = 0xFE93
	subl	%eax, %ecx
	addl	%edx, %ecx
	addl	%r11d, %ecx
	leal	(%rcx,%rcx,4), %edx
	addl	$2, %edx
	movl	$3593175255, %esi       # imm = 0xD62B80D7
	imulq	%rdx, %rsi
	shrq	$39, %rsi
	imull	$153, %esi, %eax
	addl	$2, %eax
	movl	$3435973837, %ebx       # imm = 0xCCCCCCCD
	imulq	%rax, %rbx
	shrq	$34, %rbx
	movl	%ecx, %eax
	subl	%ebx, %eax
	addl	$1, %eax
	cmpl	$1530, %edx             # imm = 0x5FA
	movl	$2, %ebx
	movl	$-10, %edx
	cmovbl	%ebx, %edx
	movl	%r8d, 24(%r9)
	addl	%esi, %edx
	imull	$400, %r10d, %r8d       # imm = 0x190
	xorl	%esi, %esi
	cmpl	$2, %edx
	setb	%sil
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$306, %ecx              # imm = 0x132
	jb	.LBB0_7
# %bb.6:
	addl	$-306, %ecx             # imm = 0xFECE
	jmp	.LBB0_11
.LBB0_7:
	addl	$59, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %dil
	jne	.LBB0_9
# %bb.8:
	imull	$100, %r11d, %r11d
	movl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r10d
	subl	%r11d, %ebx
	jne	.LBB0_10
.LBB0_9:
	imull	$-1030792151, %edi, %ebx # imm = 0xC28F5C29
	rorl	$4, %ebx
	xorl	%r10d, %r10d
	cmpl	$10737419, %ebx         # imm = 0xA3D70B
	setb	%r10b
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	addl	%r10d, %ecx
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 28(%r9)
	addl	%edi, %r8d
	leal	(%rsi,%r8), %ecx
	addl	$-1900, %ecx            # imm = 0xF894
	movl	%ecx, 20(%r9)
	movl	%edx, 16(%r9)
	movl	%eax, 12(%r9)
	movl	$0, 32(%r9)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rax
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
