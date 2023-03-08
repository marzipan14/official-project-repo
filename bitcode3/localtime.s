	.text
	.file	"localtime.c"
	.globl	nolocks_localtime       # -- Begin function nolocks_localtime
	.p2align	4, 0x90
	.type	nolocks_localtime,@function
nolocks_localtime:                      # @nolocks_localtime
# %bb.0:
	pushq	%rbx
	subq	$48, %rsp
	subq	%rdx, %rsi
	imull	$3600, %ecx, %eax       # imm = 0xE10
	movslq	%eax, %r9
	addq	%rsi, %r9
	movabsq	$1749024623285053783, %rdx # imm = 0x1845C8A0CE512957
	movq	%r9, %rax
	imulq	%rdx
	movq	%rdx, %r8
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$13, %r8
	leaq	(%r8,%rsi), %r10
	imulq	$86400, %r10, %rax      # imm = 0x15180
	subq	%rax, %r9
	movl	%ecx, 32(%rdi)
	movabsq	$5247073869855161349, %rcx # imm = 0x48D159E26AF37C05
	movq	%r9, %rax
	imulq	%rcx
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
	leaq	(%r8,%rsi), %rcx
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
	movl	$1970, %esi             # imm = 0x7B2
	movabsq	$8461085573120, %r8     # imm = 0x7B200000000
	movabsq	$737869762948382065, %r9 # imm = 0xA3D70A3D70A3D71
	movabsq	$2951479051793528259, %r11 # imm = 0x28F5C28F5C28F5C3
	movabsq	$4294967296, %rbx       # imm = 0x100000000
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	shrq	$4, %rax
	mulq	%r9
	movq	%rdx, %rcx
	movq	%rsi, %rax
	shrq	$2, %rax
	mulq	%r11
	testb	$3, %sil
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	shrq	$2, %rdx
	imulq	$100, %rdx, %rax
	movl	$1970, %edx             # imm = 0x7B2
	subq	%rax, %rdx
	addq	%rsi, %rdx
	movl	$1, %eax
	cmpq	$1970, %rdx             # imm = 0x7B2
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	imulq	$400, %rcx, %rax        # imm = 0x190
	movl	$1970, %ecx             # imm = 0x7B2
	subq	%rax, %rcx
	addq	%rsi, %rcx
	xorl	%eax, %eax
	cmpq	$1970, %rcx             # imm = 0x7B2
	sete	%al
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$365, %rax              # imm = 0x16D
	movq	%r10, %rcx
	subq	%rax, %rcx
	jl	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rsi
	addq	%rbx, %r8
	movq	%rcx, %r10
	jmp	.LBB0_1
.LBB0_7:
	movl	%esi, 20(%rdi)
	movl	%r10d, 28(%rdi)
	movaps	.Lnolocks_localtime.mdays+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	.Lnolocks_localtime.mdays+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	.Lnolocks_localtime.mdays(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$28, %ecx
	testb	$3, %sil
	jne	.LBB0_10
# %bb.8:
	sarq	$32, %r8
	movabsq	$-8116567392432202711, %rax # imm = 0x8F5C28F5C28F5C29
	imulq	%r8, %rax
	movabsq	$368934881474191032, %rdx # imm = 0x51EB851EB851EB8
	addq	%rax, %rdx
	rorq	$2, %rdx
	movl	$29, %ecx
	movabsq	$184467440737095516, %rbx # imm = 0x28F5C28F5C28F5C
	cmpq	%rbx, %rdx
	ja	.LBB0_10
# %bb.9:
	movabsq	$368934881474191024, %rcx # imm = 0x51EB851EB851EB0
	addq	%rcx, %rax
	rorq	$4, %rax
	movabsq	$46116860184273879, %rdx # imm = 0xA3D70A3D70A3D7
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	setb	%cl
	orl	$28, %ecx
.LBB0_10:
	movl	%ecx, 4(%rsp)
	movl	$0, 16(%rdi)
	cmpq	$31, %r10
	jl	.LBB0_14
# %bb.11:                               # %.preheader
	movl	$31, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	subq	%rcx, %r10
	movslq	4(%rsp,%rax,4), %rcx
	addq	$1, %rax
	cmpq	%rcx, %r10
	jge	.LBB0_12
# %bb.13:
	movl	%eax, 16(%rdi)
.LBB0_14:
	addl	$1, %r10d
	movl	%r10d, 12(%rdi)
	addl	$-1900, %esi            # imm = 0xF894
	movl	%esi, 20(%rdi)
	addq	$48, %rsp
	popq	%rbx
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
