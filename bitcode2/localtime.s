	.text
	.file	"localtime.c"
	.globl	nolocks_localtime       # -- Begin function nolocks_localtime
	.p2align	4, 0x90
	.type	nolocks_localtime,@function
nolocks_localtime:                      # @nolocks_localtime
# %bb.0:
	subq	$56, %rsp
	subq	%rdx, %rsi
	imull	$3600, %ecx, %eax       # imm = 0xE10
	movslq	%eax, %r9
	addq	%rsi, %r9
	movabsq	$1749024623285053783, %rdx # imm = 0x1845C8A0CE512957
	movq	%r9, %rax
	imulq	%rdx
	movq	%rdx, %r8
	movq	%rdx, %r10
	shrq	$63, %r10
	sarq	$13, %r8
	leaq	(%r8,%r10), %r11
	imulq	$86400, %r11, %rax      # imm = 0x15180
	subq	%rax, %r9
	movabsq	$5247073869855161349, %rdx # imm = 0x48D159E26AF37C05
	movq	%r9, %rax
	imulq	%rdx
	movl	%ecx, 32(%rdi)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdx
	addq	%rax, %rdx
	movl	%edx, 8(%rdi)
	imulq	$3600, %rdx, %rax       # imm = 0xE10
	subq	%rax, %r9
	movabsq	$-8608480567731124087, %rcx # imm = 0x8888888888888889
	movq	%r9, %rax
	imulq	%rcx
	addq	%r9, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$5, %rdx
	addl	%eax, %edx
	movl	%edx, 4(%rdi)
	imull	$60, %edx, %eax
	subl	%eax, %r9d
	movl	%r9d, (%rdi)
	leaq	(%r8,%r10), %rcx
	addq	$4, %rcx
	movabsq	$5270498306774157605, %rdx # imm = 0x4924924924924925
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	%rdx
	addl	%eax, %edx
	leal	(,%rdx,8), %eax
	subl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, 24(%rdi)
	movl	$1970, 20(%rdi)         # imm = 0x7B2
	movl	$1970, %edx             # imm = 0x7B2
	movl	$1971, %r10d            # imm = 0x7B3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %r8d
	leal	-1(%r10), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r9b
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	imulq	$1374389535, %r8, %rcx  # imm = 0x51EB851F
	movq	%rcx, %rsi
	shrq	$37, %rsi
	imull	$100, %esi, %esi
	movl	$1970, %eax             # imm = 0x7B2
	subl	%esi, %eax
	addl	%r10d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1971, %eax             # imm = 0x7B3
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	shrq	$39, %rcx
	imull	$400, %ecx, %eax        # imm = 0x190
	movl	$1970, %esi             # imm = 0x7B2
	subl	%eax, %esi
	addl	%r10d, %esi
	xorl	%ecx, %ecx
	cmpl	$1971, %esi             # imm = 0x7B3
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$365, %rcx              # imm = 0x16D
	movq	%r11, %rsi
	movl	$42, __A_VARIABLE(%rip)
	subq	%rcx, %rsi
	jl	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$1, %edx
	movl	%r10d, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r10d
	movq	%rsi, %r11
	jmp	.LBB0_1
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r11d, 28(%rdi)
	movaps	.Lnolocks_localtime.mdays+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	.Lnolocks_localtime.mdays+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	.Lnolocks_localtime.mdays(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r9b
	je	.LBB0_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %ecx
	jmp	.LBB0_13
.LBB0_10:
	imulq	$1374389535, %r8, %rax  # imm = 0x51EB851F
	shrq	$37, %rax
	imull	$100, %eax, %eax
	movl	%r10d, %ecx
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB0_11
# %bb.12:
	imulq	$1374389535, %r8, %rax  # imm = 0x51EB851F
	shrq	$39, %rax
	imull	$400, %eax, %eax        # imm = 0x190
	movl	%r10d, %edx
	subl	%eax, %edx
	xorl	%ecx, %ecx
	cmpl	$1, %edx
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	$28, %ecx
	jmp	.LBB0_13
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$29, %ecx
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 4(%rsp)
	movl	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r11
	jl	.LBB0_16
# %bb.14:                               # %.preheader
	movl	$31, %edx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	subq	%rdx, %r11
	movl	%ecx, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rsp,%rcx,4), %rdx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r11
	jge	.LBB0_15
.LBB0_16:
	addl	$1, %r11d
	movl	%r11d, 12(%rdi)
	addl	$-1901, %r10d           # imm = 0xF893
	movl	%r10d, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	retq
.Lfunc_end0:
	.size	nolocks_localtime, .Lfunc_end0-nolocks_localtime
                                        # -- End function
	.type	.Lnolocks_localtime.mdays,@object # @nolocks_localtime.mdays
	.section	.rodata,"a",@progbits
	.p2align	4
.Lnolocks_localtime.mdays:
	.long	31                      # 0x1f
	.long	28                      # 0x1c
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.size	.Lnolocks_localtime.mdays, 48

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
