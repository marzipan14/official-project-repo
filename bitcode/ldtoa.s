	.text
	.file	"ldtoa.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _ldtoa_r
.LCPI0_0:
	.short	16383                   # 0x3fff
	.short	0                       # 0x0
	.short	32768                   # 0x8000
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
.LCPI0_1:
	.short	65535                   # 0xffff
	.short	16383                   # 0x3fff
	.short	0                       # 0x0
	.short	32768                   # 0x8000
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
.LCPI0_2:
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.text
	.globl	_ldtoa_r
	.p2align	4, 0x90
	.type	_ldtoa_r,@function
_ldtoa_r:                               # @_ldtoa_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
	movq	%r9, %r12
	movq	%r8, %r13
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movl	%edx, %r15d
	movl	%esi, -348(%rbp)        # 4-byte Spill
	movq	%rdi, %r14
	fldt	16(%rbp)
	fstpt	-560(%rbp)
	movabsq	$622770257919, %rax     # imm = 0x90FFFFFFFF
	movq	%rax, -536(%rbp)
	movq	96(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	movl	104(%r14), %ecx
	movl	%ecx, 8(%rsi)
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 12(%rsi)
	movq	%r14, %rdi
	callq	_Bfree
	movq	$0, 96(%r14)
.LBB0_2:
	leaq	-560(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	callq	e64toe
	movzwl	-254(%rbp), %eax
	movl	%eax, %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB0_13
# %bb.3:
	cmpw	$0, -272(%rbp)
	jne	.LBB0_11
# %bb.4:
	cmpw	$0, -270(%rbp)
	jne	.LBB0_11
# %bb.5:
	cmpw	$0, -268(%rbp)
	jne	.LBB0_11
# %bb.6:
	cmpw	$0, -266(%rbp)
	jne	.LBB0_11
# %bb.7:
	cmpw	$0, -264(%rbp)
	jne	.LBB0_11
# %bb.8:
	cmpw	$0, -262(%rbp)
	jne	.LBB0_11
# %bb.9:
	cmpw	$0, -260(%rbp)
	jne	.LBB0_11
# %bb.10:
	cmpw	$0, -258(%rbp)
	je	.LBB0_294
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB0_31
.LBB0_15:
	xorl	%edx, %edx
.LBB0_16:
	xorl	%esi, %esi
	movl	-348(%rbp), %ebx        # 4-byte Reload
	cmpl	$3, %ebx
	setne	%sil
	movl	%r15d, %edi
	subl	%esi, %edi
	testl	%ebx, %ebx
	movl	$20, %esi
	cmovnel	%edi, %esi
	cmpl	$43, %esi
	movl	$42, %edi
	cmovll	%esi, %edi
	movl	%edi, -408(%rbp)        # 4-byte Spill
	movzwl	%cx, %esi
	movl	%edx, (%r13)
	movl	-532(%rbp), %r13d
	cmpl	$32767, %esi            # imm = 0x7FFF
	jne	.LBB0_28
# %bb.17:
	cmpw	$0, -272(%rbp)
	jne	.LBB0_25
# %bb.18:
	cmpw	$0, -270(%rbp)
	jne	.LBB0_25
# %bb.19:
	cmpw	$0, -268(%rbp)
	jne	.LBB0_25
# %bb.20:
	cmpw	$0, -266(%rbp)
	jne	.LBB0_25
# %bb.21:
	cmpw	$0, -264(%rbp)
	jne	.LBB0_25
# %bb.22:
	cmpw	$0, -262(%rbp)
	jne	.LBB0_25
# %bb.23:
	cmpw	$0, -260(%rbp)
	jne	.LBB0_25
# %bb.24:
	cmpw	$0, -258(%rbp)
	je	.LBB0_295
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_26:
	leaq	-336(%rbp), %rdi
	movl	$.L.str, %esi
.LBB0_27:
	xorl	%eax, %eax
	callq	sprintf
	movl	$9999, %ebx             # imm = 0x270F
	jmp	.LBB0_235
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-272(%rbp), %xmm0
	movzwl	-256(%rbp), %edx
.LBB0_29:
	movl	$144, -532(%rbp)
	movdqa	%xmm0, -112(%rbp)
	movw	%dx, -96(%rbp)
	movw	%ax, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB0_32
# %bb.30:
	xorl	%edi, %edi
	jmp	.LBB0_33
.LBB0_31:
	movl	$1, %edx
	jmp	.LBB0_16
.LBB0_32:
	movw	%cx, -94(%rbp)
	movw	$-1, %di
	movl	%ecx, %eax
.LBB0_33:
	pxor	%xmm1, %xmm1
	movdqa	%xmm1, -224(%rbp)
	movl	$1073709056, -208(%rbp) # imm = 0x3FFF8000
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%ax, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	je	.LBB0_37
# %bb.34:
	testw	%ax, %ax
	movq	%r15, -432(%rbp)        # 8-byte Spill
	movl	%r13d, -244(%rbp)       # 4-byte Spill
	jne	.LBB0_39
# %bb.35:
	pextrw	$7, %xmm0, %eax
	orl	%eax, %edx
	pextrw	$6, %xmm0, %eax
	pextrw	$5, %xmm0, %ecx
	orl	%eax, %ecx
	orl	%edx, %ecx
	pextrw	$4, %xmm0, %eax
	pextrw	$3, %xmm0, %edx
	pextrw	$2, %xmm0, %esi
	orl	%eax, %edx
	orl	%edx, %esi
	pextrw	$1, %xmm0, %eax
	orl	%ecx, %esi
	orl	%esi, %eax
	movd	%xmm0, %ecx
	orw	%ax, %cx
	jne	.LBB0_41
# %bb.36:
	movl	%edi, -420(%rbp)        # 4-byte Spill
	movq	%r14, -440(%rbp)        # 8-byte Spill
	movq	%r12, -448(%rbp)        # 8-byte Spill
	jmp	.LBB0_47
.LBB0_37:
	testw	%di, %di
	je	.LBB0_48
# %bb.38:
	leaq	-336(%rbp), %rdi
	movl	$.L.str.1, %esi
	jmp	.LBB0_27
.LBB0_39:
	testw	%dx, %dx
	js	.LBB0_41
# %bb.40:
	leaq	-336(%rbp), %rdi
	movl	$.L.str.3, %esi
	jmp	.LBB0_27
.LBB0_41:
	movl	%edi, -420(%rbp)        # 4-byte Spill
	leaq	-112(%rbp), %rsi
	movl	$eone, %edi
	callq	ecmp
	testl	%eax, %eax
	movq	%r12, -448(%rbp)        # 8-byte Spill
	movq	%r14, -440(%rbp)        # 8-byte Spill
	je	.LBB0_47
# %bb.42:
	js	.LBB0_49
# %bb.43:
	movzwl	-94(%rbp), %edx
	testw	%dx, %dx
	je	.LBB0_137
# %bb.44:
	movswl	%dx, %eax
	shrl	$15, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movw	%ax, -80(%rbp)
	andl	$32767, %edx            # imm = 0x7FFF
	movw	%dx, -78(%rbp)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB0_141
# %bb.45:
	movdqa	-112(%rbp), %xmm0
	pextrw	$1, %xmm0, %r8d
	movd	%xmm0, %r10d
	movl	%r8d, %eax
	orl	%r10d, %eax
	pextrw	$2, %xmm0, %r11d
	pextrw	$3, %xmm0, %r9d
	movl	%r11d, %ecx
	orl	%r9d, %ecx
	orl	%eax, %ecx
	pextrw	$4, %xmm0, %r14d
	pextrw	$5, %xmm0, %r12d
	movl	%r14d, %eax
	orl	%r12d, %eax
	pextrw	$6, %xmm0, %ebx
	orl	%ebx, %eax
	orl	%ecx, %eax
	pextrw	$7, %xmm0, %ecx
	orw	%cx, %ax
	je	.LBB0_144
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movzwl	-96(%rbp), %eax
	jmp	.LBB0_145
.LBB0_47:
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_180
.LBB0_48:
	leaq	-336(%rbp), %rdi
	movl	$.L.str.2, %esi
	jmp	.LBB0_27
.LBB0_49:
	movdqa	-112(%rbp), %xmm0
	movdqa	%xmm0, -192(%rbp)
	movzwl	-96(%rbp), %eax
	movw	%ax, -176(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	$16526, -174(%rbp)      # imm = 0x408E
	movw	$16, %r12w
	movl	$etens+160, %r14d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
	.p2align	4, 0x90
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=1
	addq	$20, %r14
	shrl	%r12d
	testw	%r12w, %r12w
	je	.LBB0_131
.LBB0_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_60 Depth 2
	movq	%r14, %rdi
	leaq	-192(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	leaq	-536(%rbp), %rcx
	callq	ediv
	movdqa	-224(%rbp), %xmm0
	movzwl	-208(%rbp), %r8d
	movzwl	-206(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	movzwl	%r12w, %r12d
	movd	%xmm0, %r13d
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=1
	pxor	%xmm1, %xmm1
	movdqa	%xmm1, -80(%rbp)
	movl	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testw	%dx, %dx
	jns	.LBB0_118
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$16526, %edi            # imm = 0x408E
	movdqa	%xmm0, -80(%rbp)
	movw	%r8w, -64(%rbp)
	movw	%dx, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %edi
	pxor	%xmm1, %xmm1
	jle	.LBB0_73
# %bb.54:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	$16, %edi
	jl	.LBB0_62
# %bb.55:                               #   in Loop: Header=BB0_51 Depth=1
	leal	-16527(%rcx), %r11d
	cmpl	$-33, %r11d
	movl	$-32, %eax
	cmovlel	%eax, %r11d
	subl	%ecx, %r11d
	addl	$16542, %r11d           # imm = 0x409E
	movl	%r11d, %r9d
	shrl	$4, %r9d
	addl	$1, %r9d
	leaq	-80(%rbp), %rsi
	cmpl	$16, %r9d
	jb	.LBB0_59
# %bb.56:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%r9d, %ebx
	movl	%r9d, %r10d
	andl	$15, %r10d
	subq	%r10, %rbx
	leaq	-80(,%rbx,2), %rsi
	addq	%rbp, %rsi
	leal	16(%r11), %edi
	andl	$240, %edi
	subl	%ecx, %edi
	movl	%r11d, %eax
	andl	$-16, %eax
	subl	%eax, %edi
	addl	$16510, %edi            # imm = 0x407E
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_57:                               #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm1, -80(%rbp,%rax,2)
	movdqa	%xmm1, -64(%rbp,%rax,2)
	addq	$16, %rax
	cmpq	%rax, %rbx
	jne	.LBB0_57
# %bb.58:                               #   in Loop: Header=BB0_51 Depth=1
	testl	%r10d, %r10d
	je	.LBB0_61
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=1
	addl	$16, %edi
	.p2align	4, 0x90
.LBB0_60:                               #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%rsi)
	addq	$2, %rsi
	addl	$-16, %edi
	cmpl	$31, %edi
	jg	.LBB0_60
.LBB0_61:                               #   in Loop: Header=BB0_51 Depth=1
	leaq	-80(,%r9,2), %rsi
	addq	%rbp, %rsi
	andl	$-16, %r11d
	addl	%r11d, %ecx
	movl	$16510, %edi            # imm = 0x407E
	subl	%ecx, %edi
	movzwl	-80(%rbp,%r9,2), %eax
	jmp	.LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%r13d, %eax
	leaq	-80(%rbp), %rsi
.LBB0_63:                               #   in Loop: Header=BB0_51 Depth=1
	movslq	%edi, %rcx
	andw	bmask(%rcx,%rcx), %ax
	movw	%ax, (%rsi)
	movzwl	-80(%rbp), %ecx
	testw	%dx, %dx
	jns	.LBB0_118
.LBB0_64:                               #   in Loop: Header=BB0_51 Depth=1
	movdqu	-78(%rbp), %xmm1
	pextrw	$1, %xmm1, %r11d
	pextrw	$2, %xmm1, %r10d
	pextrw	$3, %xmm1, %edx
	pextrw	$4, %xmm1, %edi
	pextrw	$5, %xmm1, %ebx
	pextrw	$6, %xmm1, %r9d
	movd	%xmm1, %r15d
	pextrw	$7, %xmm1, %esi
	cmpw	%cx, %r13w
	jne	.LBB0_74
# %bb.65:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$1, %xmm0, %eax
	cmpw	%r15w, %ax
	jne	.LBB0_74
# %bb.66:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$2, %xmm0, %eax
	cmpw	%r11w, %ax
	jne	.LBB0_74
# %bb.67:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$3, %xmm0, %eax
	cmpw	%r10w, %ax
	jne	.LBB0_74
# %bb.68:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$4, %xmm0, %eax
	cmpw	%dx, %ax
	jne	.LBB0_74
# %bb.69:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$5, %xmm0, %eax
	cmpw	%di, %ax
	jne	.LBB0_74
# %bb.70:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$6, %xmm0, %eax
	cmpw	%bx, %ax
	jne	.LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_51 Depth=1
	pextrw	$7, %xmm0, %eax
	cmpw	%r9w, %ax
	jne	.LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_51 Depth=1
	cmpw	%si, %r8w
	jne	.LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	pextrw	$1, %xmm0, %eax
	movl	%r13d, %ecx
	jmp	.LBB0_120
.LBB0_74:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%esi, -240(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %eax
	movl	%eax, %r8d
	andl	$32767, %r8d            # imm = 0x7FFF
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB0_77
# %bb.75:                               #   in Loop: Header=BB0_51 Depth=1
	orl	%ecx, %r15d
	movl	%r11d, %eax
	orl	%r15d, %eax
	movl	%edx, %esi
	orl	%r10d, %esi
	orl	%eax, %esi
	movl	%ebx, %eax
	orl	%edi, %eax
	orl	%esi, %eax
	orw	%r9w, %ax
	je	.LBB0_81
# %bb.76:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_83
.LBB0_77:                               #   in Loop: Header=BB0_51 Depth=1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	.LCPI0_0(%rip), %xmm1   # xmm1 = [16383,0,32768,0,0,0,0,0]
	movdqu	%xmm1, -334(%rbp)
	movq	$0, -318(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cwtl
	shrl	$15, %eax
	movw	%ax, -144(%rbp)
	movw	%r8w, -142(%rbp)
	movw	$0, -140(%rbp)
	movdqu	%xmm0, -138(%rbp)
	movw	%cx, -122(%rbp)
	movw	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-1, -336(%rbp)
	movl	$16383, %esi            # imm = 0x3FFF
	subq	%r8, %rsi
	jle	.LBB0_84
# %bb.78:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movdqa	.LCPI0_1(%rip), %xmm1   # xmm1 = [65535,16383,0,32768,0,0,0,0]
	movdqa	%xmm1, -144(%rbp)
	movq	$0, -128(%rbp)
	movw	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -336(%rbp)
	movw	%r8w, -334(%rbp)
	movw	$0, -332(%rbp)
	movdqu	%xmm0, -330(%rbp)
	movw	%cx, -314(%rbp)
	movw	$0, -312(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	negq	%rsi
	movl	%ebx, -228(%rbp)        # 4-byte Spill
	movl	%r11d, -404(%rbp)       # 4-byte Spill
	movl	%r9d, %ebx
	movl	%eax, %r9d
	movl	$16383, %eax            # imm = 0x3FFF
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movw	$-32768, %ax            # imm = 0x8000
	movl	%eax, -344(%rbp)        # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movl	%r8d, %eax
	movw	%r8w, -278(%rbp)        # 2-byte Spill
	movl	%r9d, %eax
	movl	%ebx, %r9d
	movl	-228(%rbp), %r11d       # 4-byte Reload
	movw	%ax, -146(%rbp)         # 2-byte Spill
	movw	$16383, %r8w            # imm = 0x3FFF
	movw	$-1, %ax
	movl	$0, -276(%rbp)          # 4-byte Folded Spill
	movl	$0, -232(%rbp)          # 4-byte Folded Spill
	movl	$0, -376(%rbp)          # 4-byte Folded Spill
	movl	$0, -384(%rbp)          # 4-byte Folded Spill
	movl	$0, -392(%rbp)          # 4-byte Folded Spill
	movl	$0, -400(%rbp)          # 4-byte Folded Spill
	movl	$0, -360(%rbp)          # 4-byte Folded Spill
	testq	%rsi, %rsi
	je	.LBB0_85
.LBB0_79:                               #   in Loop: Header=BB0_51 Depth=1
	cmpq	$-146, %rsi
	jg	.LBB0_100
# %bb.80:                               #   in Loop: Header=BB0_51 Depth=1
	movzwl	%r8w, %ecx
	leal	-32768(%rcx), %edx
	testw	%ax, %ax
	cmovnel	%edx, %ecx
	movw	%cx, -62(%rbp)
	movl	-360(%rbp), %edi        # 4-byte Reload
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movl	-376(%rbp), %esi        # 4-byte Reload
	movl	-384(%rbp), %r15d       # 4-byte Reload
	movl	-392(%rbp), %r8d        # 4-byte Reload
	movl	-400(%rbp), %edx        # 4-byte Reload
	movl	-344(%rbp), %r9d        # 4-byte Reload
	movq	-368(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_109
.LBB0_81:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -240(%rbp)          # 2-byte Folded Reload
	je	.LBB0_110
# %bb.82:                               #   in Loop: Header=BB0_51 Depth=1
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
.LBB0_83:                               #   in Loop: Header=BB0_51 Depth=1
	movw	%r11w, -76(%rbp)
	movw	%r10w, -74(%rbp)
	movw	%dx, -72(%rbp)
	movw	%di, -70(%rbp)
	movw	%bx, -68(%rbp)
	movw	%r9w, -66(%rbp)
	jmp	.LBB0_117
.LBB0_84:                               #   in Loop: Header=BB0_51 Depth=1
	movw	$-1, -146(%rbp)         # 2-byte Folded Spill
	movw	$16383, -278(%rbp)      # 2-byte Folded Spill
                                        # imm = 0x3FFF
                                        # kill: def $cx killed $cx killed $ecx def $rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movl	$0, %ecx
                                        # kill: def $r15w killed $r15w killed $r15d def $r15d
	movl	%r15d, -276(%rbp)       # 4-byte Spill
	movl	$0, %r15d
                                        # kill: def $r11w killed $r11w killed $r11d def $r11d
	movl	%r11d, -232(%rbp)       # 4-byte Spill
                                        # kill: def $r10w killed $r10w killed $r10d def $r10d
	movl	%r10d, -376(%rbp)       # 4-byte Spill
                                        # kill: def $dx killed $dx killed $edx def $edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
                                        # kill: def $di killed $di killed $edi def $edi
	movl	%edi, -392(%rbp)        # 4-byte Spill
                                        # kill: def $bx killed $bx killed $ebx def $ebx
	movl	%ebx, -400(%rbp)        # 4-byte Spill
                                        # kill: def $r9w killed $r9w killed $r9d def $r9d
	movl	%r9d, -360(%rbp)        # 4-byte Spill
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	-240(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax def $eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	movl	$0, -404(%rbp)          # 4-byte Folded Spill
	movl	$0, %r10d
	movl	$0, %edx
	movl	$0, %edi
	movl	$0, %r11d
	xorl	%r9d, %r9d
	movw	$-32768, %ax            # imm = 0x8000
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %eax        # 4-byte Reload
	movq	%r8, -416(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	jne	.LBB0_79
.LBB0_85:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	movw	%ax, -114(%rbp)         # 2-byte Spill
	movl	-344(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, %esi
	cmpw	%bx, %ax
	movq	-368(%rbp), %rbx        # 8-byte Reload
	jne	.LBB0_98
# %bb.86:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%r9d, %eax
	movw	%r9w, -114(%rbp)        # 2-byte Spill
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %r9w
	jne	.LBB0_98
# %bb.87:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%r11d, %eax
	movw	%r11w, -114(%rbp)       # 2-byte Spill
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %r11w
	jne	.LBB0_98
# %bb.88:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%edi, %eax
	movw	%di, -114(%rbp)         # 2-byte Spill
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %di
	jne	.LBB0_98
# %bb.89:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%edx, %eax
	movw	%dx, -114(%rbp)         # 2-byte Spill
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %dx
	jne	.LBB0_98
# %bb.90:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%r10d, %eax
	movw	%r10w, -114(%rbp)       # 2-byte Spill
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %r10w
	jne	.LBB0_98
# %bb.91:                               #   in Loop: Header=BB0_51 Depth=1
	movq	%rbx, -368(%rbp)        # 8-byte Spill
	movl	-404(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, %eax
	movw	%bx, -114(%rbp)         # 2-byte Spill
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %bx
	movq	-368(%rbp), %rbx        # 8-byte Reload
	jne	.LBB0_98
# %bb.92:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%r15d, %eax
	movw	%r15w, -114(%rbp)       # 2-byte Spill
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, %esi
	cmpw	%ax, %r15w
	jne	.LBB0_98
# %bb.93:                               #   in Loop: Header=BB0_51 Depth=1
	movl	%ecx, %eax
	movw	%cx, -114(%rbp)         # 2-byte Spill
	movl	%ebx, %esi
	cmpw	%bx, %cx
	jne	.LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_51 Depth=1
	movl	-344(%rbp), %r9d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	-228(%rbp), %eax        # 4-byte Reload
	cmpw	%ax, -146(%rbp)         # 2-byte Folded Reload
	jne	.LBB0_129
# %bb.95:                               #   in Loop: Header=BB0_51 Depth=1
	testw	%r8w, %r8w
	jne	.LBB0_130
# %bb.96:                               #   in Loop: Header=BB0_51 Depth=1
	testw	%r9w, %r9w
	js	.LBB0_130
# %bb.97:                               #   in Loop: Header=BB0_51 Depth=1
	movw	$0, -120(%rbp)
	movq	-368(%rbp), %rax        # 8-byte Reload
	leal	(%rax,%rax), %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%eax, %r13d
	movl	-276(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r13w
	movw	%cx, -122(%rbp)
	movw	%r13w, -124(%rbp)
	movl	%eax, %r10d
	movl	-232(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r10w
	movw	%r10w, -126(%rbp)
	movl	%eax, %r11d
	movl	-376(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r11w
	movw	%r11w, -128(%rbp)
	movl	%eax, %r15d
	movl	-384(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r15w
	movl	%eax, %ebx
	movl	-392(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %bx
	movw	%r15w, -130(%rbp)
	movw	%bx, -132(%rbp)
	movl	%eax, %esi
	movl	-400(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %si
	movw	%si, -134(%rbp)
	movl	%eax, %ecx
	movl	-360(%rbp), %edi        # 4-byte Reload
	shrdw	$15, %di, %cx
	movw	%cx, -136(%rbp)
	movzwl	%r9w, %edx
	shrl	$15, %edx
	shldw	$1, %di, %r9w
	movw	%r9w, -138(%rbp)
	movw	%dx, -140(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpw	$0, -146(%rbp)          # 2-byte Folded Reload
	setne	%dl
	shll	$15, %edx
	movw	%dx, -62(%rbp)
	movl	%ecx, %edi
	movl	%esi, %edx
	movl	%ebx, %r8d
                                        # kill: def $r15w killed $r15w def $r15d
	movl	%r11d, %esi
	movl	%r10d, %ecx
	movl	%r13d, %eax
	movl	-240(%rbp), %ebx        # 4-byte Reload
                                        # kill: def $bx killed $bx killed $ebx def $rbx
	jmp	.LBB0_109
.LBB0_98:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	cmpw	%si, -114(%rbp)         # 2-byte Folded Reload
	jbe	.LBB0_102
# %bb.99:                               #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-146(%rbp), %eax        # 2-byte Folded Reload
	movw	%ax, -144(%rbp)
	movzwl	-278(%rbp), %esi        # 2-byte Folded Reload
	movw	%si, -142(%rbp)
	movw	$0, -140(%rbp)
	movl	-240(%rbp), %esi        # 4-byte Reload
	movw	%si, -138(%rbp)
	movw	%r9w, -136(%rbp)
	movw	%r11w, -134(%rbp)
	movw	%di, -132(%rbp)
	movw	%dx, -130(%rbp)
	movw	%r10w, -128(%rbp)
	movl	-404(%rbp), %edx        # 4-byte Reload
	movw	%dx, -126(%rbp)
	movw	%r15w, -124(%rbp)
	movw	%cx, -122(%rbp)
	movw	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-228(%rbp), %edx        # 4-byte Reload
	movw	%dx, -336(%rbp)
	movw	%r8w, -334(%rbp)
	movw	$0, -332(%rbp)
	movl	-344(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -330(%rbp)
	movl	-360(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -328(%rbp)
	movl	-400(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -326(%rbp)
	movl	-392(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -324(%rbp)
	movl	-384(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -322(%rbp)
	movl	-376(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -320(%rbp)
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -318(%rbp)
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -316(%rbp)
	movw	%bx, -314(%rbp)
	movw	$0, -312(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	movl	%edx, %eax
	cmpw	%cx, %ax
	je	.LBB0_101
.LBB0_103:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-120(%rbp), %eax
	movzwl	-312(%rbp), %ecx
	subq	%rcx, %rax
	movw	%ax, -120(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-122(%rbp), %ecx
	movzwl	-314(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -122(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-124(%rbp), %eax
	movzwl	-316(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -124(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-126(%rbp), %ecx
	movzwl	-318(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -126(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-128(%rbp), %eax
	movzwl	-320(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -128(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-130(%rbp), %ecx
	movzwl	-322(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -130(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-132(%rbp), %eax
	movzwl	-324(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -132(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-134(%rbp), %ecx
	movzwl	-326(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -134(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-136(%rbp), %eax
	movzwl	-328(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -136(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-138(%rbp), %ecx
	movzwl	-330(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -138(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	-140(%rbp), %eax
	subl	-332(%rbp), %eax
	subl	%ecx, %eax
	movl	$1, %edx
	jmp	.LBB0_104
.LBB0_100:                              #   in Loop: Header=BB0_51 Depth=1
	leaq	-336(%rbp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	eshift
	movl	%eax, %r13d
	movzwl	-336(%rbp), %eax
	movzwl	-144(%rbp), %ecx
	cmpw	%cx, %ax
	jne	.LBB0_103
.LBB0_101:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-312(%rbp), %eax
	movzwl	-120(%rbp), %ecx
	addq	%rax, %rcx
	movw	%cx, -120(%rbp)
	shrq	$16, %rcx
	movzwl	-314(%rbp), %eax
	addq	%rcx, %rax
	movzwl	-122(%rbp), %ecx
	addq	%rax, %rcx
	movw	%cx, -122(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-316(%rbp), %eax
	addq	%rcx, %rax
	movzwl	-124(%rbp), %ecx
	addq	%rax, %rcx
	movw	%cx, -124(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-318(%rbp), %eax
	movzwl	-126(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -126(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-320(%rbp), %eax
	movzwl	-128(%rbp), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, -128(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-322(%rbp), %eax
	movzwl	-130(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -130(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-324(%rbp), %eax
	movzwl	-132(%rbp), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, -132(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-326(%rbp), %eax
	movzwl	-134(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -134(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-328(%rbp), %eax
	movzwl	-136(%rbp), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, -136(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-330(%rbp), %eax
	movzwl	-138(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -138(%rbp)
	movzwl	-140(%rbp), %eax
	shrl	$16, %edx
	andl	$1, %edx
	addw	-332(%rbp), %ax
	addl	%edx, %eax
	xorl	%edx, %edx
.LBB0_104:                              #   in Loop: Header=BB0_51 Depth=1
	movw	%ax, -140(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-144(%rbp), %rdi
	movl	%r13d, %esi
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movl	$64, %r8d
	leaq	-536(%rbp), %r9
	callq	emdnorm
	movzwl	-144(%rbp), %esi
	movzwl	-142(%rbp), %ecx
	movzwl	-138(%rbp), %r9d
	movzwl	-136(%rbp), %edi
.LBB0_105:                              #   in Loop: Header=BB0_51 Depth=1
	movl	%ecx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	testw	%si, %si
	cmovel	%ecx, %eax
	movw	%ax, -62(%rbp)
	movzwl	%cx, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	pxor	%xmm0, %xmm0
	jne	.LBB0_108
# %bb.106:                              #   in Loop: Header=BB0_51 Depth=1
	orl	%edi, %r9d
	orw	-134(%rbp), %r9w
	orw	-132(%rbp), %r9w
	orw	-130(%rbp), %r9w
	orw	-128(%rbp), %r9w
	orw	-126(%rbp), %r9w
	orw	-124(%rbp), %r9w
	orw	-122(%rbp), %r9w
	je	.LBB0_112
# %bb.107:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_113
.LBB0_108:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-134(%rbp), %edx
	movzwl	-132(%rbp), %r8d
	movzwl	-130(%rbp), %r15d
	movzwl	-128(%rbp), %esi
	movzwl	-126(%rbp), %ecx
	movzwl	-124(%rbp), %eax
	movzwl	-122(%rbp), %ebx
.LBB0_109:                              #   in Loop: Header=BB0_51 Depth=1
	movw	%r9w, -64(%rbp)
	movw	%di, -66(%rbp)
	movw	%dx, -68(%rbp)
	movw	%r8w, -70(%rbp)
	movw	%r15w, -72(%rbp)
	movw	%si, -74(%rbp)
	movw	%cx, -76(%rbp)
	movw	%ax, -78(%rbp)
	movw	%bx, -80(%rbp)
	jmp	.LBB0_115
.LBB0_102:                              #   in Loop: Header=BB0_51 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movzwl	-146(%rbp), %eax        # 2-byte Folded Reload
                                        # kill: def $ax killed $ax def $eax
	cmpw	%cx, %ax
	je	.LBB0_101
	jmp	.LBB0_103
.LBB0_110:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -80(%rbp)
.LBB0_111:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_116
.LBB0_112:                              #   in Loop: Header=BB0_51 Depth=1
	cmpw	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_128
.LBB0_113:                              #   in Loop: Header=BB0_51 Depth=1
	movdqa	%xmm0, -80(%rbp)
	movl	$2147467264, -64(%rbp)  # imm = 0x7FFFC000
.LBB0_114:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_115:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-224(%rbp), %r13d
.LBB0_116:                              #   in Loop: Header=BB0_51 Depth=1
	movl	%ebx, %ecx
.LBB0_117:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_118:                              #   in Loop: Header=BB0_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %r13w
	jne	.LBB0_50
# %bb.119:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-78(%rbp), %eax
	cmpw	%ax, -222(%rbp)
	jne	.LBB0_50
.LBB0_120:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-220(%rbp), %edx
	cmpw	-76(%rbp), %dx
	jne	.LBB0_50
# %bb.121:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-218(%rbp), %esi
	cmpw	-74(%rbp), %si
	jne	.LBB0_50
# %bb.122:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-216(%rbp), %edi
	cmpw	-72(%rbp), %di
	jne	.LBB0_50
# %bb.123:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-214(%rbp), %ebx
	cmpw	-70(%rbp), %bx
	jne	.LBB0_50
# %bb.124:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-212(%rbp), %r8d
	cmpw	-68(%rbp), %r8w
	jne	.LBB0_50
# %bb.125:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-210(%rbp), %r9d
	cmpw	-66(%rbp), %r9w
	jne	.LBB0_50
# %bb.126:                              #   in Loop: Header=BB0_51 Depth=1
	movzwl	-208(%rbp), %r10d
	cmpw	-64(%rbp), %r10w
	jne	.LBB0_50
# %bb.127:                              #   in Loop: Header=BB0_51 Depth=1
	movw	%cx, -192(%rbp)
	movw	%ax, -190(%rbp)
	movw	%dx, -188(%rbp)
	movw	%si, -186(%rbp)
	movw	%di, -184(%rbp)
	movw	%bx, -182(%rbp)
	movw	%r8w, -180(%rbp)
	movw	%r9w, -178(%rbp)
	movw	%r10w, -176(%rbp)
	movzwl	-206(%rbp), %eax
	movw	%ax, -174(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	%r12d, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_50
.LBB0_128:                              #   in Loop: Header=BB0_51 Depth=1
	movdqa	%xmm0, -80(%rbp)
	movw	$0, -64(%rbp)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -62(%rbp)
	jmp	.LBB0_114
.LBB0_129:                              #   in Loop: Header=BB0_51 Depth=1
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -80(%rbp)
	movl	$0, -64(%rbp)
	jmp	.LBB0_111
.LBB0_130:                              #   in Loop: Header=BB0_51 Depth=1
	movq	-416(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movw	%cx, -142(%rbp)
	movl	-360(%rbp), %edi        # 4-byte Reload
	movzwl	-146(%rbp), %esi        # 2-byte Folded Reload
	jmp	.LBB0_105
.LBB0_131:
	movzwl	-94(%rbp), %eax
	addw	-174(%rbp), %ax
	addl	$-16526, %eax           # imm = 0xBF72
	movw	%ax, -174(%rbp)
	movdqa	-192(%rbp), %xmm0
	movdqa	%xmm0, -112(%rbp)
	movzwl	-176(%rbp), %ecx
	movw	%cx, -96(%rbp)
	movw	%ax, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -224(%rbp)
	movl	$1073709056, -208(%rbp) # imm = 0x3FFF8000
	movl	$42, __A_VARIABLE(%rip)
	leaq	-192(%rbp), %rsi
	movl	$etens+240, %edi
	callq	ecmp
	testl	%eax, %eax
	jg	.LBB0_180
# %bb.132:                              # %.preheader11
	movl	$etens, %r12d
	movw	$4096, %bx              # imm = 0x1000
	leaq	-192(%rbp), %r14
	leaq	-536(%rbp), %r15
	leaq	-224(%rbp), %r13
	.p2align	4, 0x90
.LBB0_133:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	ecmp
	movzwl	%bx, %ebx
	testl	%eax, %eax
	jg	.LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_133 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	ediv
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	emul
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=1
	shrl	%ebx
	testw	%bx, %bx
	je	.LBB0_180
# %bb.136:                              #   in Loop: Header=BB0_133 Depth=1
	addq	$20, %r12
	movl	$etens+240, %edi
	movq	%r14, %rsi
	callq	ecmp
	testl	%eax, %eax
	jle	.LBB0_133
	jmp	.LBB0_180
.LBB0_137:
	movzwl	-96(%rbp), %eax
	testw	%ax, %ax
	js	.LBB0_143
# %bb.138:                              # %.preheader16
	xorl	%ebx, %ebx
	leaq	-112(%rbp), %r15
	leaq	-536(%rbp), %r14
	.p2align	4, 0x90
.LBB0_139:                              # =>This Inner Loop Header: Depth=1
	movl	$etens+240, %edi
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	emul
	addl	$-1, %ebx
	movzwl	-96(%rbp), %eax
	testw	%ax, %ax
	jns	.LBB0_139
# %bb.140:
	movq	%rbx, -160(%rbp)        # 8-byte Spill
	movzwl	-94(%rbp), %edx
	jmp	.LBB0_172
.LBB0_141:
	movw	$0, -76(%rbp)
	movdqu	-110(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -74(%rbp)
	movzwl	-112(%rbp), %r10d
	movw	%r10w, -58(%rbp)
	movw	$0, -56(%rbp)
	pextrw	$7, %xmm0, %eax
	pextrw	$6, %xmm0, %ecx
	pextrw	$5, %xmm0, %ebx
	pextrw	$4, %xmm0, %r12d
	pextrw	$3, %xmm0, %r14d
	pextrw	$2, %xmm0, %r9d
	pextrw	$1, %xmm0, %r11d
	movd	%xmm0, %r8d
.LBB0_142:
	xorl	%esi, %esi
	jmp	.LBB0_146
.LBB0_143:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_172
.LBB0_144:
	movzwl	-96(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	testw	%ax, %ax
	je	.LBB0_293
.LBB0_145:
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movw	%ax, -74(%rbp)
	movdqu	%xmm0, -72(%rbp)
	movzwl	-114(%rbp), %esi
	movw	%si, -56(%rbp)
.LBB0_146:
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_147:                              # =>This Inner Loop Header: Depth=1
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	testb	$7, %sil
	jne	.LBB0_155
# %bb.148:                              #   in Loop: Header=BB0_147 Depth=1
	movzwl	%ax, %edx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movl	%esi, -416(%rbp)        # 4-byte Spill
	movzwl	%cx, %esi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movl	%esi, %edi
	shrl	%edi
	movl	%edx, %r13d
	shll	$15, %r13d
	orl	%edi, %r13d
	movzwl	%bx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	shrl	%edx
	shll	$15, %ecx
	orl	%edx, %ecx
	shrdw	$1, %di, %cx
	movzwl	%r12w, %esi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movl	%esi, %edi
	shrl	%edi
	shll	$15, %ebx
	orl	%edi, %ebx
	shrdw	$1, %dx, %bx
	movq	%rbx, -392(%rbp)        # 8-byte Spill
	movzwl	%r14w, %edx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movl	%edx, %ebx
	shrl	%ebx
	shll	$15, %r12d
	orl	%ebx, %r12d
	shrdw	$1, %di, %r12w
	movzwl	%r9w, %edx
	movl	%edx, %esi
	shrl	%esi
	shll	$15, %r14d
	orl	%esi, %r14d
	shrdw	$1, %bx, %r14w
	movzwl	%r11w, %edi
	movl	%edi, %ebx
	shrl	%ebx
	shll	$15, %r9d
	orl	%ebx, %r9d
	shrdw	$1, %si, %r9w
	movq	%r9, -376(%rbp)         # 8-byte Spill
	movzwl	%r8w, %r15d
	movl	%r15d, %esi
	shrl	%esi
	shll	$15, %r11d
	orl	%esi, %r11d
	shrdw	$1, %bx, %r11w
	movzwl	%r10w, %ebx
	movq	%r11, %r9
	movq	%r8, %r11
	movl	%ebx, %r8d
	shrl	%r8d
	shll	$15, %r11d
	orl	%r8d, %r11d
	shrdw	$1, %si, %r11w
	movl	%eax, %esi
	andl	$-2, %esi
	shll	$14, %esi
	movzwl	%r13w, %eax
	shrl	%eax
	orl	%esi, %eax
	shll	$15, %r8d
	andl	$1, %r10d
	shll	$14, %r10d
	orl	%r8d, %r10d
	movzwl	-416(%rbp), %esi        # 2-byte Folded Reload
	movzwl	%r10w, %r13d
	addq	%rsi, %r13
	movzwl	%r11w, %r10d
	addq	%rbx, %r10
	movq	%r13, %rsi
	shrq	$16, %rsi
	addq	%rsi, %r10
	movzwl	%r9w, %r8d
	addq	%r15, %r8
	movl	%r10d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	addq	%rsi, %r8
	movzwl	-376(%rbp), %r11d       # 2-byte Folded Reload
	addq	%rdi, %r11
	movl	%r8d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	addq	%rsi, %r11
	movzwl	%r14w, %r9d
	addq	%rdx, %r9
	movl	%r11d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	addq	%rdx, %r9
	movzwl	%r12w, %r14d
	addq	-384(%rbp), %r14        # 8-byte Folded Reload
	movl	%r9d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	addq	%rdx, %r14
	movzwl	-392(%rbp), %r12d       # 2-byte Folded Reload
	addq	-400(%rbp), %r12        # 8-byte Folded Reload
	movl	%r14d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	addq	%rdx, %r12
	movzwl	%cx, %ebx
	addq	-360(%rbp), %rbx        # 8-byte Folded Reload
	movl	%r12d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rbx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, -168(%rbp)
	movw	%r10w, -170(%rbp)
	movw	%r8w, -172(%rbp)
	movw	%r11w, -174(%rbp)
	movw	%r9w, -176(%rbp)
	movw	%r14w, -178(%rbp)
	movw	%r12w, -180(%rbp)
	movzwl	%ax, %ecx
	addq	-368(%rbp), %rcx        # 8-byte Folded Reload
	movl	%ebx, %eax
	shrl	$16, %eax
	andl	$1, %eax
	movw	%bx, -182(%rbp)
	addq	%rax, %rcx
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	shrq	$2, %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movw	%cx, -184(%rbp)
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$16, %rdx
	movw	%ax, -186(%rbp)
	andw	$1, %dx
	movw	%dx, -188(%rbp)
	movq	-240(%rbp), %rsi        # 8-byte Reload
	leal	3(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, -190(%rbp)
	jne	.LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_147 Depth=1
	movl	%edx, %esi
	jmp	.LBB0_151
	.p2align	4, 0x90
.LBB0_150:                              #   in Loop: Header=BB0_147 Depth=1
	movzwl	%ax, %edx
	shrl	%edx
	orl	$32768, %edx            # imm = 0x8000
	shldw	$15, %cx, %ax
	shldw	$15, %bx, %cx
	shldw	$15, %r12w, %bx
	shldw	$15, %r14w, %r12w
	shldw	$15, %r9w, %r14w
	shldw	$15, %r11w, %r9w
	shldw	$15, %r8w, %r11w
	shldw	$15, %r10w, %r8w
	shrdw	$1, %r10w, %r13w
	movl	$42, __A_VARIABLE(%rip)
	addl	$4, %esi
	movw	$0, -188(%rbp)
	movw	%dx, -186(%rbp)
	movw	%ax, -184(%rbp)
	movw	%cx, -182(%rbp)
	movw	%bx, -180(%rbp)
	movw	%r12w, -178(%rbp)
	movw	%r14w, -176(%rbp)
	movw	%r9w, -174(%rbp)
	movw	%r11w, -172(%rbp)
	movw	%r8w, -170(%rbp)
	movw	%r13w, -168(%rbp)
	movw	%si, -190(%rbp)
	movl	%r8d, %r10d
	movl	%r11d, %r8d
	movl	%r9d, %r11d
	movl	%r14d, %r9d
	movl	%r12d, %r14d
	movl	%ebx, %r12d
	movl	%ecx, %ebx
	movl	%eax, %ecx
	movl	%edx, %eax
.LBB0_151:                              #   in Loop: Header=BB0_147 Depth=1
	testw	%r13w, %r13w
	jne	.LBB0_156
# %bb.152:                              #   in Loop: Header=BB0_147 Depth=1
	movzwl	%si, %edx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jae	.LBB0_156
# %bb.153:                              #   in Loop: Header=BB0_147 Depth=1
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movw	%si, -78(%rbp)
	movw	$0, -76(%rbp)
	movw	%ax, -74(%rbp)
	movw	%cx, -72(%rbp)
	movw	%bx, -70(%rbp)
	movw	%r12w, -68(%rbp)
	movw	%r14w, -66(%rbp)
	movw	%r9w, -64(%rbp)
	movw	%r11w, -62(%rbp)
	movw	%r8w, -60(%rbp)
	movw	%r10w, -58(%rbp)
	movw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addl	$1, %edx
	xorl	%esi, %esi
	cmpl	$43, %edx
	jb	.LBB0_147
# %bb.154:
	movq	%rdx, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %edx
	orl	$-32768, %edx           # imm = 0x8000
	cmpw	$0, -80(%rbp)
	cmovel	%edi, %edx
	movw	%dx, -94(%rbp)
	negl	%esi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_170
.LBB0_155:
	movq	-240(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_157
.LBB0_156:
	movzwl	-78(%rbp), %eax
.LBB0_157:
	movl	%eax, %edx
	orl	$-32768, %edx           # imm = 0x8000
	cmpw	$0, -80(%rbp)
	cmovel	%eax, %edx
	movw	%dx, -94(%rbp)
	movzwl	%ax, %ecx
	movq	-160(%rbp), %rax        # 8-byte Reload
	negl	%eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movzwl	-74(%rbp), %eax
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB0_169
# %bb.158:
	testw	%ax, %ax
	jne	.LBB0_167
# %bb.159:
	cmpw	$0, -72(%rbp)
	jne	.LBB0_167
# %bb.160:
	cmpw	$0, -70(%rbp)
	jne	.LBB0_167
# %bb.161:
	cmpw	$0, -68(%rbp)
	jne	.LBB0_167
# %bb.162:
	cmpw	$0, -66(%rbp)
	jne	.LBB0_167
# %bb.163:
	cmpw	$0, -64(%rbp)
	jne	.LBB0_167
# %bb.164:
	cmpw	$0, -62(%rbp)
	jne	.LBB0_167
# %bb.165:
	cmpw	$0, -60(%rbp)
	jne	.LBB0_167
# %bb.166:
	cmpw	$0, -58(%rbp)
	je	.LBB0_300
.LBB0_167:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_168:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -112(%rbp)
	movl	$2147467264, -96(%rbp)  # imm = 0x7FFFC000
	movl	$42, __A_VARIABLE(%rip)
	movw	$-16384, %ax            # imm = 0xC000
	movw	$32767, %dx             # imm = 0x7FFF
	jmp	.LBB0_171
.LBB0_169:
	movzwl	-72(%rbp), %ecx
	movzwl	-70(%rbp), %ebx
	movzwl	-68(%rbp), %r12d
	movzwl	-66(%rbp), %r14d
	movzwl	-64(%rbp), %r9d
	movzwl	-62(%rbp), %r11d
	movzwl	-60(%rbp), %r8d
	movzwl	-58(%rbp), %r10d
.LBB0_170:
	movw	%ax, -96(%rbp)
	movw	%cx, -98(%rbp)
	movw	%bx, -100(%rbp)
	movw	%r12w, -102(%rbp)
	movw	%r14w, -104(%rbp)
	movw	%r9w, -106(%rbp)
	movw	%r11w, -108(%rbp)
	movw	%r8w, -110(%rbp)
	movw	%r10w, -112(%rbp)
.LBB0_171:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_172:
	movzwl	-112(%rbp), %ecx
	movw	%cx, -80(%rbp)
	movzwl	-110(%rbp), %ecx
	movw	%cx, -78(%rbp)
	movzwl	-108(%rbp), %ecx
	movw	%cx, -76(%rbp)
	movzwl	-106(%rbp), %ecx
	movw	%cx, -74(%rbp)
	movzwl	-104(%rbp), %ecx
	movw	%cx, -72(%rbp)
	movzwl	-102(%rbp), %ecx
	movw	%cx, -70(%rbp)
	movzwl	-100(%rbp), %ecx
	movw	%cx, -68(%rbp)
	movzwl	-98(%rbp), %ecx
	movw	%cx, -66(%rbp)
	movw	%ax, -64(%rbp)
	movw	%dx, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -224(%rbp)
	movl	$1073709056, -208(%rbp) # imm = 0x3FFF8000
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rsi
	movl	$eone, %edi
	callq	ecmp
	testl	%eax, %eax
	jle	.LBB0_179
# %bb.173:                              # %.preheader14
	movl	$etens, %r12d
	movl	$-4096, %ebx            # imm = 0xF000
	movl	$emtens, %r14d
	leaq	-80(%rbp), %r15
	.p2align	4, 0x90
.LBB0_174:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	ecmp
	testl	%eax, %eax
	js	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	leaq	-536(%rbp), %r13
	movq	%r13, %rcx
	callq	emul
	movq	%r12, %rdi
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%r13, %rcx
	callq	emul
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	jmp	.LBB0_177
	.p2align	4, 0x90
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
.LBB0_177:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%rax, -160(%rbp)        # 8-byte Spill
	leal	1(%rbx), %eax
	cmpl	$3, %eax
	jb	.LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_174 Depth=1
	movl	%ebx, %r13d
	shrl	$31, %r13d
	addl	%ebx, %r13d
	sarl	%r13d
	addq	$20, %r14
	addq	$20, %r12
	movl	$eone, %edi
	movq	%r15, %rsi
	callq	ecmp
	movl	%r13d, %ebx
	testl	%eax, %eax
	jg	.LBB0_174
.LBB0_179:
	leaq	-224(%rbp), %rdi
	leaq	-536(%rbp), %rcx
	movl	$eone, %esi
	movq	%rdi, %rdx
	callq	ediv
.LBB0_180:
	movswl	-206(%rbp), %eax
	movl	%eax, %ecx
	shrl	$15, %ecx
	movw	%cx, -80(%rbp)
	andl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -78(%rbp)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_183
# %bb.181:
	movdqa	-224(%rbp), %xmm0
	pextrw	$1, %xmm0, %r8d
	movd	%xmm0, %r9d
	movl	%r8d, %edx
	orl	%r9d, %edx
	pextrw	$2, %xmm0, %r11d
	pextrw	$3, %xmm0, %r10d
	movl	%r11d, %edi
	orl	%r10d, %edi
	orl	%edx, %edi
	pextrw	$4, %xmm0, %r15d
	pextrw	$5, %xmm0, %r14d
	movl	%r15d, %edx
	orl	%r14d, %edx
	pextrw	$6, %xmm0, %ebx
	orl	%ebx, %edx
	orl	%edi, %edx
	pextrw	$7, %xmm0, %edi
	orw	%di, %dx
	je	.LBB0_184
# %bb.182:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movzwl	-208(%rbp), %edx
	jmp	.LBB0_185
.LBB0_183:
	movw	$0, -76(%rbp)
	movdqu	-222(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -74(%rbp)
	movzwl	-224(%rbp), %r9d
	movw	%r9w, -58(%rbp)
	pextrw	$7, %xmm0, %edx
	pextrw	$6, %xmm0, %edi
	pextrw	$5, %xmm0, %ebx
	pextrw	$4, %xmm0, %r14d
	pextrw	$3, %xmm0, %r15d
	pextrw	$2, %xmm0, %r10d
	movw	$0, -56(%rbp)
	pextrw	$1, %xmm0, %r11d
	movd	%xmm0, %r8d
	jmp	.LBB0_186
.LBB0_184:
	movzwl	-208(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	testw	%dx, %dx
	je	.LBB0_214
.LBB0_185:
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movw	%dx, -74(%rbp)
	movdqu	%xmm0, -72(%rbp)
	movzwl	-226(%rbp), %esi
	movw	%si, -56(%rbp)
.LBB0_186:
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, -224(%rbp)
	movw	%ax, -222(%rbp)
	movw	$0, -220(%rbp)
	movw	%dx, -218(%rbp)
	movw	%di, -216(%rbp)
	movw	%bx, -214(%rbp)
	movw	%r14w, -212(%rbp)
	movw	%r15w, -210(%rbp)
	movw	%r10w, -208(%rbp)
	movw	%r11w, -206(%rbp)
	movw	%r8w, -204(%rbp)
	movw	%r9w, -202(%rbp)
	movw	$0, -200(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-94(%rbp), %eax
	movswl	%ax, %ecx
	shrl	$15, %ecx
	movw	%cx, -80(%rbp)
	andl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -78(%rbp)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_189
# %bb.187:
	movl	-112(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movzwl	-110(%rbp), %r10d
	movl	%r10d, %edx
	orl	%r8d, %edx
	movzwl	-106(%rbp), %r11d
	movl	%r9d, %esi
	orl	%r11d, %esi
	orl	%edx, %esi
	movl	-104(%rbp), %r15d
	movzwl	-102(%rbp), %r14d
	movl	%r15d, %edx
	orl	%r14d, %edx
	movl	-100(%rbp), %edi
	orl	%edi, %edx
	orl	%esi, %edx
	movzwl	-98(%rbp), %ebx
	orw	%bx, %dx
	je	.LBB0_190
# %bb.188:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movzwl	-96(%rbp), %esi
	jmp	.LBB0_191
.LBB0_189:
	movw	$0, -76(%rbp)
	movzwl	-96(%rbp), %esi
	movw	%si, -74(%rbp)
	movzwl	-98(%rbp), %ebx
	movw	%bx, -72(%rbp)
	movzwl	-100(%rbp), %edi
	movw	%di, -70(%rbp)
	movzwl	-102(%rbp), %r14d
	movw	%r14w, -68(%rbp)
	movzwl	-104(%rbp), %r15d
	movw	%r15w, -66(%rbp)
	movzwl	-106(%rbp), %r11d
	movw	%r11w, -64(%rbp)
	movzwl	-108(%rbp), %r9d
	movw	%r9w, -62(%rbp)
	movzwl	-112(%rbp), %r8d
	movzwl	-110(%rbp), %r10d
	movw	%r10w, -60(%rbp)
	movw	%r8w, -58(%rbp)
	movw	$0, -56(%rbp)
	jmp	.LBB0_192
.LBB0_190:
	movzwl	-96(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	testw	%si, %si
	je	.LBB0_215
.LBB0_191:
	movw	%si, -74(%rbp)
	movw	%bx, -72(%rbp)
	movw	%di, -70(%rbp)
	movw	%r14w, -68(%rbp)
	movw	%r15w, -66(%rbp)
	movw	%r11w, -64(%rbp)
	movw	%r9w, -62(%rbp)
	movw	%r10w, -60(%rbp)
	movw	%r8w, -58(%rbp)
	movzwl	-114(%rbp), %edx
	movw	%dx, -56(%rbp)
.LBB0_192:
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, -112(%rbp)
	movw	%ax, -110(%rbp)
	movw	$0, -108(%rbp)
	movw	%si, -106(%rbp)
	movw	%bx, -104(%rbp)
	movw	%di, -102(%rbp)
	movw	%r14w, -100(%rbp)
	movw	%r15w, -98(%rbp)
	movw	%r11w, -96(%rbp)
	movw	%r9w, -94(%rbp)
	movw	%r10w, -92(%rbp)
	movw	%r8w, -90(%rbp)
	movw	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-536(%rbp), %rdx
	callq	eiremain
	movzwl	-460(%rbp), %eax
	testw	%ax, %ax
	jne	.LBB0_197
# %bb.193:
	leaq	-112(%rbp), %r12
	leaq	-536(%rbp), %r15
	.p2align	4, 0x90
.LBB0_194:                              # =>This Inner Loop Header: Depth=1
	movl	$ezero, %esi
	movq	%r12, %rdi
	callq	ecmp
	testl	%eax, %eax
	je	.LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_194 Depth=1
	movl	-88(%rbp), %edx
	movl	%edx, %eax
	addl	%edx, %eax
	movw	%ax, -88(%rbp)
	movzwl	-90(%rbp), %ecx
	movl	%ecx, %eax
	shldw	$1, %dx, %ax
	movl	-92(%rbp), %edx
	movdqu	-108(%rbp), %xmm1
	movdqa	%xmm1, %xmm0
	psrldq	$2, %xmm0               # xmm0 = xmm0[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %edx, %xmm0
	movl	%edx, %r9d
	shldw	$1, %cx, %r9w
	movdqa	%xmm0, %xmm2
	psrlw	$15, %xmm2
	paddw	%xmm1, %xmm1
	por	%xmm2, %xmm1
	movdqu	%xmm1, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-112(%rbp), %edx
	movl	%edx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	%xmm0, %xmm2
	psrlw	$14, %xmm2
	movdqa	.LCPI0_2(%rip), %xmm3   # xmm3 = [1,1,1,1,1,1,1,1]
	pand	%xmm3, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -168(%rbp)
	shrl	$13, %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	leal	(,%rax,4), %esi
	movw	%si, -170(%rbp)
	andl	$2, %ecx
	leal	(%rcx,%r9,4), %r10d
	orl	%edx, %r10d
	movw	%r10w, -172(%rbp)
	psrlw	$13, %xmm0
	pand	%xmm3, %xmm0
	paddw	%xmm2, %xmm2
	movzwl	%si, %r8d
	movzwl	%ax, %r11d
	pextrw	$7, %xmm1, %r13d
	pextrw	$6, %xmm1, %r14d
	pextrw	$5, %xmm1, %edi
	pextrw	$4, %xmm1, %eax
	pextrw	$3, %xmm1, %ecx
	pextrw	$2, %xmm1, %edx
	addq	%r8, %r11
	pextrw	$1, %xmm1, %esi
	movd	%xmm1, %r8d
	psllw	$2, %xmm1
	por	%xmm2, %xmm1
	por	%xmm0, %xmm1
	movdqu	%xmm1, -188(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, -90(%rbp)
	shrq	$16, %r11
	movzwl	%r10w, %r10d
	movzwl	%r9w, %r9d
	addq	%r11, %r9
	pextrw	$7, %xmm1, %r11d
	addq	%r10, %r9
	addq	%r11, %r13
	movw	%r9w, -92(%rbp)
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	shrl	$16, %r9d
	andl	$1, %r9d
	addq	%r9, %r13
	pextrw	$6, %xmm1, %ebx
	addq	%rbx, %r14
	movw	%r13w, -94(%rbp)
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	shrl	$16, %r13d
	andl	$1, %r13d
	addq	%r13, %r14
	pextrw	$5, %xmm1, %ebx
	addq	%rbx, %rdi
	movw	%r14w, -96(%rbp)
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	shrl	$16, %r14d
	andl	$1, %r14d
	addq	%r14, %rdi
	movw	%di, -98(%rbp)
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	shrl	$16, %edi
	pextrw	$4, %xmm1, %ebx
	andl	$1, %edi
	addq	%rbx, %rax
	pextrw	$3, %xmm1, %ebx
	addq	%rdi, %rax
	addq	%rbx, %rcx
	movw	%ax, -100(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rcx
	movw	%cx, -102(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	pextrw	$2, %xmm1, %eax
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -104(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	pextrw	$1, %xmm1, %eax
	addq	%rax, %rsi
	addq	%rdx, %rsi
	movw	%si, -106(%rbp)
	shrl	$16, %esi
	andl	$1, %esi
	movd	%xmm1, %eax
	addl	%r8d, %eax
	addl	%esi, %eax
	movw	%ax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-224(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	eiremain
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	$-1, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movzwl	-460(%rbp), %eax
	testw	%ax, %ax
	je	.LBB0_194
	jmp	.LBB0_197
.LBB0_196:
	xorl	%eax, %eax
.LBB0_197:
	cmpw	$0, -420(%rbp)          # 2-byte Folded Reload
	movl	$32, %ecx
	movl	$45, %edx
	cmovel	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	$3, -348(%rbp)          # 4-byte Folded Reload
	movb	%dl, -336(%rbp)
	movq	-160(%rbp), %rdx        # 8-byte Reload
	cmovel	%edx, %ecx
	addl	-408(%rbp), %ecx        # 4-byte Folded Reload
	cmpl	$43, %ecx
	movl	$42, %esi
	cmovll	%ecx, %esi
	cmpw	$10, %ax
	jne	.LBB0_201
# %bb.198:
	movw	$11825, -335(%rbp)      # imm = 0x2E31
	testl	%ecx, %ecx
	movq	-432(%rbp), %r15        # 8-byte Reload
	movl	-244(%rbp), %r13d       # 4-byte Reload
	jle	.LBB0_212
# %bb.199:
	leaq	-332(%rbp), %rbx
	movb	$48, -333(%rbp)
	addl	$-1, %esi
	addl	$1, %edx
	testl	%esi, %esi
	jns	.LBB0_202
.LBB0_200:
	movb	$1, %r13b
	jmp	.LBB0_206
.LBB0_201:
	addb	$48, %al
	movb	%al, -335(%rbp)
	leaq	-333(%rbp), %rbx
	movb	$46, -334(%rbp)
	movq	-432(%rbp), %r15        # 8-byte Reload
	testl	%esi, %esi
	js	.LBB0_200
.LBB0_202:
	movq	%rbx, %r12
.LBB0_203:
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	addl	$1, %esi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_204:                              # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %edx
	movl	%edx, %eax
	addl	%edx, %eax
	movw	%ax, -88(%rbp)
	movzwl	-90(%rbp), %ecx
	movl	%ecx, %eax
	shldw	$1, %dx, %ax
	movl	-92(%rbp), %edx
	movdqu	-108(%rbp), %xmm1
	movdqa	%xmm1, %xmm0
	psrldq	$2, %xmm0               # xmm0 = xmm0[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %edx, %xmm0
	movl	%edx, %r9d
	shldw	$1, %cx, %r9w
	movdqa	%xmm0, %xmm2
	psrlw	$15, %xmm2
	paddw	%xmm1, %xmm1
	por	%xmm2, %xmm1
	movdqu	%xmm1, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-112(%rbp), %edx
	movl	%edx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	%xmm0, %xmm2
	psrlw	$14, %xmm2
	movdqa	.LCPI0_2(%rip), %xmm3   # xmm3 = [1,1,1,1,1,1,1,1]
	pand	%xmm3, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -168(%rbp)
	shrl	$13, %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	leal	(,%rax,4), %esi
	movw	%si, -170(%rbp)
	andl	$2, %ecx
	leal	(%rcx,%r9,4), %r10d
	orl	%edx, %r10d
	movw	%r10w, -172(%rbp)
	psrlw	$13, %xmm0
	pand	%xmm3, %xmm0
	paddw	%xmm2, %xmm2
	movzwl	%si, %r8d
	movzwl	%ax, %r11d
	pextrw	$7, %xmm1, %r15d
	pextrw	$6, %xmm1, %ebx
	pextrw	$5, %xmm1, %edi
	pextrw	$4, %xmm1, %eax
	pextrw	$3, %xmm1, %ecx
	pextrw	$2, %xmm1, %edx
	addq	%r8, %r11
	pextrw	$1, %xmm1, %r8d
	movd	%xmm1, %r13d
	psllw	$2, %xmm1
	por	%xmm2, %xmm1
	por	%xmm0, %xmm1
	movdqu	%xmm1, -188(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, -90(%rbp)
	shrq	$16, %r11
	movzwl	%r10w, %r10d
	movzwl	%r9w, %r9d
	addq	%r11, %r9
	pextrw	$7, %xmm1, %r11d
	addq	%r10, %r9
	addq	%r11, %r15
	movw	%r9w, -92(%rbp)
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	shrl	$16, %r9d
	andl	$1, %r9d
	addq	%r9, %r15
	pextrw	$6, %xmm1, %esi
	addq	%rsi, %rbx
	movw	%r15w, -94(%rbp)
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shrl	$16, %r15d
	andl	$1, %r15d
	addq	%r15, %rbx
	pextrw	$5, %xmm1, %esi
	addq	%rsi, %rdi
	movw	%bx, -96(%rbp)
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	shrl	$16, %ebx
	andl	$1, %ebx
	addq	%rbx, %rdi
	movw	%di, -98(%rbp)
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	shrl	$16, %edi
	pextrw	$4, %xmm1, %esi
	andl	$1, %edi
	addq	%rsi, %rax
	pextrw	$3, %xmm1, %esi
	addq	%rdi, %rax
	addq	%rsi, %rcx
	movw	%ax, -100(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rcx
	movw	%cx, -102(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	pextrw	$2, %xmm1, %eax
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -104(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	pextrw	$1, %xmm1, %eax
	addq	%rax, %r8
	addq	%rdx, %r8
	movw	%r8w, -106(%rbp)
	shrl	$16, %r8d
	andl	$1, %r8d
	movd	%xmm1, %eax
	addl	%r13d, %eax
	addl	%r8d, %eax
	movw	%ax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-536(%rbp), %rdx
	callq	eiremain
	movzbl	-460(%rbp), %eax
	addb	$48, %al
	movb	%al, (%r12,%r14)
	addq	$1, %r14
	cmpl	%r14d, -240(%rbp)       # 4-byte Folded Reload
	jne	.LBB0_204
# %bb.205:
	movq	-344(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r12), %rbx
	addq	$1, %rbx
	xorl	%r13d, %r13d
	movq	-432(%rbp), %r15        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
.LBB0_206:
	leaq	-1(%rbx), %r14
	cmpw	$5, -460(%rbp)
	jb	.LBB0_211
# %bb.207:
	jne	.LBB0_220
# %bb.208:
	movq	%rdx, %r12
	movzwl	-110(%rbp), %edx
	movl	%edx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	cmpw	$0, -112(%rbp)
	cmovel	%edx, %eax
	movw	%ax, -206(%rbp)
	movzwl	-106(%rbp), %ecx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB0_213
# %bb.209:
	orw	-104(%rbp), %cx
	orw	-102(%rbp), %cx
	orw	-100(%rbp), %cx
	orw	-98(%rbp), %cx
	orw	-96(%rbp), %cx
	orw	-94(%rbp), %cx
	orw	-92(%rbp), %cx
	orw	-90(%rbp), %cx
	je	.LBB0_216
# %bb.210:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_217
.LBB0_212:
	leaq	-333(%rbp), %r14
	addl	$1, %edx
	movq	%r14, %r12
	testl	%esi, %esi
	movl	$0, %esi
	jns	.LBB0_203
	jmp	.LBB0_234
.LBB0_213:
	movw	%cx, -208(%rbp)
	movdqu	-104(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqa	%xmm0, -224(%rbp)
	jmp	.LBB0_219
.LBB0_214:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB0_186
.LBB0_215:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	.LBB0_192
.LBB0_216:
	cmpw	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_292
.LBB0_217:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -224(%rbp)
	movl	$2147467264, -208(%rbp) # imm = 0x7FFFC000
.LBB0_218:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_219:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-224(%rbp), %rdi
	movl	$ezero, %esi
	callq	ecmp
	testl	%eax, %eax
	movq	%r12, %rdx
	je	.LBB0_229
.LBB0_220:
	addq	$-2, %rbx
	testb	%r13b, %r13b
	je	.LBB0_222
# %bb.221:
	movb	$49, (%rbx)
	addl	$1, %edx
	movl	-244(%rbp), %r13d       # 4-byte Reload
	jmp	.LBB0_234
.LBB0_222:
	movq	%rdx, %r12
	movq	%rbx, %rsi
	movb	(%rbx), %al
	movl	-244(%rbp), %r13d       # 4-byte Reload
.LBB0_223:
	andb	$127, %al
	movq	%r14, %rcx
	cmpb	$46, %al
	je	.LBB0_227
# %bb.224:                              # %.preheader5
	movq	%rsi, %rcx
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB0_225:                              # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %edx
	movb	%dl, -1(%rcx)
	cmpb	$57, %al
	jb	.LBB0_233
# %bb.226:                              #   in Loop: Header=BB0_225 Depth=1
	movb	$48, -1(%rcx)
	movzbl	-2(%rcx), %eax
	addq	$-1, %rcx
	andb	$127, %al
	cmpb	$46, %al
	jne	.LBB0_225
.LBB0_227:
	movb	-2(%rcx), %al
	leal	1(%rax), %edx
	movb	%dl, -2(%rcx)
	movq	%r12, %rdx
	cmpb	$57, %al
	jl	.LBB0_234
# %bb.228:
	addl	$1, %edx
	movb	$49, -2(%rcx)
	jmp	.LBB0_234
.LBB0_229:
	testb	%r13b, %r13b
	je	.LBB0_232
.LBB0_211:
	movl	-244(%rbp), %r13d       # 4-byte Reload
.LBB0_234:
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	movq	%rdx, %rbx
	xorl	%eax, %eax
	callq	sprintf
	movq	-448(%rbp), %r12        # 8-byte Reload
	movq	-440(%rbp), %r14        # 8-byte Reload
.LBB0_235:
	movl	%r13d, -532(%rbp)
	movl	%ebx, -520(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-254(%rbp), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	cmpl	$32767, %eax            # imm = 0x7FFF
	movq	-456(%rbp), %rsi        # 8-byte Reload
	jne	.LBB0_238
# %bb.236:
	cmpw	$0, -272(%rbp)
	je	.LBB0_247
# %bb.237:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_262
.LBB0_238:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_239:
	addl	$1, %ebx
	movl	%ebx, (%rsi)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_240:                              # =>This Inner Loop Header: Depth=1
	movzbl	-336(%rbp,%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_244
# %bb.241:                              #   in Loop: Header=BB0_240 Depth=1
	cmpb	$46, %cl
	je	.LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_240 Depth=1
	addq	$1, %rax
	jmp	.LBB0_240
	.p2align	4, 0x90
.LBB0_243:                              # =>This Inner Loop Header: Depth=1
	movzbl	-335(%rbp,%rax), %ecx
	movb	%cl, -336(%rbp,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB0_243
	.p2align	4, 0x90
.LBB0_244:                              # =>This Inner Loop Header: Depth=1
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	jle	.LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_244 Depth=1
	cmpb	$69, -336(%rbp,%rax)
	movq	%rcx, %rax
	jne	.LBB0_244
.LBB0_246:
	movb	$0, -335(%rbp,%rcx)
	jmp	.LBB0_264
.LBB0_247:
	cmpw	$0, -270(%rbp)
	jne	.LBB0_254
# %bb.248:
	cmpw	$0, -268(%rbp)
	jne	.LBB0_254
# %bb.249:
	cmpw	$0, -266(%rbp)
	jne	.LBB0_254
# %bb.250:
	cmpw	$0, -264(%rbp)
	jne	.LBB0_254
# %bb.251:
	cmpw	$0, -262(%rbp)
	jne	.LBB0_254
# %bb.252:
	cmpw	$0, -260(%rbp)
	jne	.LBB0_254
# %bb.253:
	cmpw	$0, -258(%rbp)
	je	.LBB0_297
.LBB0_254:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_255:
	cmpw	$0, -270(%rbp)
	jne	.LBB0_262
# %bb.256:
	cmpw	$0, -268(%rbp)
	jne	.LBB0_262
# %bb.257:
	cmpw	$0, -266(%rbp)
	jne	.LBB0_262
# %bb.258:
	cmpw	$0, -264(%rbp)
	jne	.LBB0_262
# %bb.259:
	cmpw	$0, -262(%rbp)
	jne	.LBB0_262
# %bb.260:
	cmpw	$0, -260(%rbp)
	jne	.LBB0_262
# %bb.261:
	cmpw	$0, -258(%rbp)
	je	.LBB0_298
.LBB0_262:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_263:
	movl	$9999, (%rsi)           # imm = 0x270F
.LBB0_264:
	leaq	-335(%rbp), %rax
	jmp	.LBB0_266
	.p2align	4, 0x90
.LBB0_265:                              #   in Loop: Header=BB0_266 Depth=1
	addq	$1, %rax
.LBB0_266:                              # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ecx
	cmpb	$32, %cl
	je	.LBB0_265
# %bb.267:                              #   in Loop: Header=BB0_266 Depth=1
	cmpb	$45, %cl
	je	.LBB0_265
# %bb.268:
	movb	%cl, -336(%rbp)
	testb	%cl, %cl
	je	.LBB0_272
# %bb.269:                              # %.preheader1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_270:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %edx
	movb	%dl, -335(%rbp,%rcx)
	addq	$1, %rcx
	testb	%dl, %dl
	jne	.LBB0_270
# %bb.271:                              # %.loopexit2
	leaq	(%rcx,%rbp), %rbx
	addq	$-336, %rbx             # imm = 0xFEB0
	jmp	.LBB0_273
.LBB0_272:
	leaq	-336(%rbp), %rbx
.LBB0_273:
	movl	$1, %eax
	cmpl	$2, -348(%rbp)          # 4-byte Folded Reload
	je	.LBB0_275
# %bb.274:
	movl	-520(%rbp), %eax
	movl	-408(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	cltq
.LBB0_275:
	cmpb	$48, -1(%rbx)
	jne	.LBB0_279
# %bb.276:
	leaq	-336(%rbp), %rcx
	.p2align	4, 0x90
.LBB0_277:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %rdx
	jle	.LBB0_279
# %bb.278:                              #   in Loop: Header=BB0_277 Depth=1
	movb	$0, -1(%rbx)
	cmpb	$48, -2(%rbx)
	leaq	-1(%rbx), %rbx
	je	.LBB0_277
.LBB0_279:
	cmpl	$3, -348(%rbp)          # 4-byte Folded Reload
	jne	.LBB0_282
# %bb.280:
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	-520(%rbp), %eax
	js	.LBB0_283
# %bb.281:
	movl	(%rsi), %eax
	jmp	.LBB0_284
.LBB0_282:
	addl	$9, %r15d
	jmp	.LBB0_285
.LBB0_283:
	leaq	-336(%rbp), %rbx
	movb	$0, -336(%rbp)
	movl	$0, (%rsi)
	xorl	%eax, %eax
.LBB0_284:
	addl	%eax, %r15d
	addl	$3, %r15d
.LBB0_285:
	movl	$0, 104(%r14)
	xorl	%esi, %esi
	cmpl	$32, %r15d
	jb	.LBB0_289
# %bb.286:                              # %.preheader
	movslq	%r15d, %rax
	movl	$4, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_287:                              # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	addq	$28, %rdx
	cmpq	%rax, %rdx
	jbe	.LBB0_287
# %bb.288:
	movl	%esi, 104(%r14)
.LBB0_289:
	movq	%r14, %rdi
	callq	_Balloc
	movq	%rax, %r15
	movq	%rax, 96(%r14)
	leaq	-336(%rbp), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcpy
	testq	%r12, %r12
	je	.LBB0_291
# %bb.290:
	subq	%r14, %rbx
	movq	%r15, %rax
	addq	%rbx, %rax
	movq	%rax, (%r12)
.LBB0_291:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_232:
	movb	-2(%rbx), %al
	addq	$-2, %rbx
	xorl	%ecx, %ecx
	cmpb	$46, %al
	sete	%cl
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	testb	$1, (%rdx)
	movl	-244(%rbp), %r13d       # 4-byte Reload
	jne	.LBB0_223
.LBB0_233:
	movq	%r12, %rdx
	jmp	.LBB0_234
.LBB0_292:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -224(%rbp)
	movw	$0, -208(%rbp)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -206(%rbp)
	jmp	.LBB0_218
.LBB0_293:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_142
.LBB0_294:
	cmpw	$0, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_12
	jmp	.LBB0_14
.LBB0_295:
	cmpw	$0, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.296:
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	jmp	.LBB0_29
.LBB0_297:
	cmpw	$0, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_255
	jmp	.LBB0_263
.LBB0_298:
	cmpw	$0, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_263
	jmp	.LBB0_239
.LBB0_300:
	cmpw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_168
# %bb.301:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -112(%rbp)
	movw	$0, -96(%rbp)
	orl	$32767, %edx            # imm = 0x7FFF
	movw	%dx, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_171
.Lfunc_end0:
	.size	_ldtoa_r, .Lfunc_end0-_ldtoa_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function e64toe
	.type	e64toe,@function
e64toe:                                 # @e64toe
# %bb.0:
	subq	$40, %rsp
	movq	$0, (%rsp)
	movw	$0, 8(%rsp)
	movzwl	(%rdi), %edx
	movw	%dx, 10(%rsp)
	movzwl	2(%rdi), %r9d
	movw	%r9w, 12(%rsp)
	movzwl	4(%rdi), %ecx
	movw	%cx, 14(%rsp)
	movzwl	6(%rdi), %r8d
	movw	%r8w, 16(%rsp)
	movzwl	8(%rdi), %eax
	movw	%ax, 18(%rsp)
	movl	%eax, %edi
	andw	$32767, %di             # imm = 0x7FFF
	je	.LBB1_7
.LBB1_1:
	movzwl	%di, %edi
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB1_6
# %bb.2:
	orl	%r9d, %edx
	orw	%cx, %dx
	jne	.LBB1_13
# %bb.3:
	movzwl	%r8w, %ecx
	cmpl	$32768, %ecx            # imm = 0x8000
	jne	.LBB1_13
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	movl	$2147418112, 16(%rsi)   # imm = 0x7FFF0000
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	jns	.LBB1_18
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movw	$-1, 18(%rsi)
	jmp	.LBB1_17
.LBB1_6:
	movq	$0, (%rsi)
	movw	$0, 8(%rsi)
	movzwl	10(%rsp), %ecx
	movw	%cx, 10(%rsi)
	movzwl	12(%rsp), %ecx
	movw	%cx, 12(%rsi)
	movzwl	14(%rsp), %ecx
	movw	%cx, 14(%rsi)
	movzwl	16(%rsp), %ecx
	movw	%cx, 16(%rsi)
	movw	%ax, 18(%rsi)
	jmp	.LBB1_18
.LBB1_7:
	testw	%r8w, %r8w
	js	.LBB1_1
# %bb.8:
	movzwl	%di, %r11d
	cmpl	$32767, %r11d           # imm = 0x7FFF
	jne	.LBB1_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	leal	(%rdx,%rdx), %r10d
	shrdw	$15, %r9w, %dx
	shrdw	$15, %cx, %r9w
	shldw	$1, %cx, %r8w
	movl	%eax, %ecx
	orl	$-32768, %ecx           # imm = 0x8000
	testw	%ax, %ax
	cmovsl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 18(%rsi)
	cmpl	$32767, %r11d           # imm = 0x7FFF
	jne	.LBB1_14
# %bb.11:
	orl	%edx, %r10d
	orl	%r10d, %r9d
	orw	%r8w, %r9w
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	je	.LBB1_15
# %bb.12:
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	jmp	.LBB1_16
.LBB1_13:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	jmp	.LBB1_17
.LBB1_14:
	movw	%r8w, 16(%rsi)
	movw	%r9w, 14(%rsi)
	movw	%dx, 12(%rsi)
	movw	%r10w, 10(%rsi)
	movw	$0, 8(%rsi)
	movq	$0, (%rsi)
	jmp	.LBB1_17
.LBB1_15:
	movw	$0, 16(%rsi)
	orl	$32767, %edi            # imm = 0x7FFF
	movw	%di, 18(%rsi)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_18:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	retq
.Lfunc_end1:
	.size	e64toe, .Lfunc_end1-e64toe
                                        # -- End function
	.globl	_ldcheck                # -- Begin function _ldcheck
	.p2align	4, 0x90
	.type	_ldcheck,@function
_ldcheck:                               # @_ldcheck
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	fldt	(%rdi)
	fstpt	-48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	e64toe
	movzwl	-14(%rbp), %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	xorl	%eax, %eax
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB2_11
# %bb.1:
	cmpw	$0, -32(%rbp)
	jne	.LBB2_9
# %bb.2:
	cmpw	$0, -30(%rbp)
	jne	.LBB2_9
# %bb.3:
	cmpw	$0, -28(%rbp)
	jne	.LBB2_9
# %bb.4:
	cmpw	$0, -26(%rbp)
	jne	.LBB2_9
# %bb.5:
	cmpw	$0, -24(%rbp)
	jne	.LBB2_9
# %bb.6:
	cmpw	$0, -22(%rbp)
	jne	.LBB2_9
# %bb.7:
	cmpw	$0, -20(%rbp)
	jne	.LBB2_9
# %bb.8:
	cmpw	$0, -18(%rbp)
	je	.LBB2_10
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, -16(%rbp)
	movl	$1, %eax
	adcl	$0, %eax
	jmp	.LBB2_11
.Lfunc_end2:
	.size	_ldcheck, .Lfunc_end2-_ldcheck
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ecmp
	.type	ecmp,@function
ecmp:                                   # @ecmp
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movzwl	18(%rdi), %r14d
	movl	%r14d, %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB3_1
# %bb.2:
	cmpw	$0, (%rdi)
	jne	.LBB3_10
# %bb.3:
	cmpw	$0, 2(%rdi)
	jne	.LBB3_10
# %bb.4:
	cmpw	$0, 4(%rdi)
	jne	.LBB3_10
# %bb.5:
	cmpw	$0, 6(%rdi)
	jne	.LBB3_10
# %bb.6:
	cmpw	$0, 8(%rdi)
	jne	.LBB3_10
# %bb.7:
	cmpw	$0, 10(%rdi)
	jne	.LBB3_10
# %bb.8:
	cmpw	$0, 12(%rdi)
	jne	.LBB3_10
# %bb.9:
	cmpw	$0, 14(%rdi)
	jne	.LBB3_10
# %bb.11:
	cmpw	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %eax
	jne	.LBB3_57
	jmp	.LBB3_12
.LBB3_1:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:
	movzwl	18(%rsi), %r9d
	movl	%r9d, %r8d
	andl	$32767, %r8d            # imm = 0x7FFF
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB3_13
# %bb.14:
	cmpw	$0, (%rsi)
	jne	.LBB3_10
# %bb.15:
	cmpw	$0, 2(%rsi)
	jne	.LBB3_10
# %bb.16:
	cmpw	$0, 4(%rsi)
	jne	.LBB3_10
# %bb.17:
	cmpw	$0, 6(%rsi)
	jne	.LBB3_10
# %bb.18:
	cmpw	$0, 8(%rsi)
	jne	.LBB3_10
# %bb.19:
	cmpw	$0, 10(%rsi)
	jne	.LBB3_10
# %bb.20:
	cmpw	$0, 12(%rsi)
	jne	.LBB3_10
# %bb.21:
	cmpw	$0, 14(%rsi)
	je	.LBB3_22
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %eax
.LBB3_57:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_23:
	movzwl	%cx, %eax
	movswl	%r14w, %ebx
	shrl	$15, %ebx
	movw	%bx, 48(%rsp)
	movw	%ax, 50(%rsp)
	cmpl	$32767, %eax            # imm = 0x7FFF
	movl	%ebx, 116(%rsp)         # 4-byte Spill
	jne	.LBB3_36
# %bb.24:
	movzwl	(%rdi), %edx
	movzwl	2(%rdi), %eax
	movl	%edx, %ebp
	orw	%ax, %bp
	movl	%edx, 88(%rsp)          # 4-byte Spill
	jne	.LBB3_32
# %bb.25:
	cmpw	$0, 4(%rdi)
	jne	.LBB3_31
# %bb.26:
	cmpw	$0, 6(%rdi)
	jne	.LBB3_31
# %bb.27:
	cmpw	$0, 8(%rdi)
	jne	.LBB3_31
# %bb.28:
	cmpw	$0, 10(%rdi)
	jne	.LBB3_31
# %bb.29:
	cmpw	$0, 12(%rdi)
	jne	.LBB3_31
# %bb.30:
	cmpw	$0, 14(%rdi)
	je	.LBB3_33
.LBB3_31:
	xorl	%eax, %eax
.LBB3_32:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 52(%rsp)
	movzwl	16(%rdi), %ebp
	movzwl	14(%rdi), %r11d
	movzwl	12(%rdi), %r10d
	movzwl	10(%rdi), %edx
	movzwl	8(%rdi), %r13d
	movzwl	4(%rdi), %r15d
	movzwl	6(%rdi), %r12d
.LBB3_35:
	movw	%bp, 54(%rsp)
	movw	%r11w, 56(%rsp)
	movw	%r10w, 58(%rsp)
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movw	%dx, 60(%rsp)
	movl	%r13d, 84(%rsp)         # 4-byte Spill
	movw	%r13w, 62(%rsp)
	movw	%r12w, 64(%rsp)
	movw	%r15w, 66(%rsp)
	movw	%ax, 68(%rsp)
	movl	88(%rsp), %edx          # 4-byte Reload
	movw	%dx, 70(%rsp)
	movzwl	-2(%rdi), %edi
	movw	%di, 72(%rsp)
	jmp	.LBB3_37
.LBB3_36:
	movw	$0, 52(%rsp)
	movdqu	2(%rdi), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, 54(%rsp)
	movzwl	(%rdi), %edx
	movw	%dx, 70(%rsp)
	pextrw	$7, %xmm0, %ebp
	pextrw	$6, %xmm0, %r11d
	pextrw	$5, %xmm0, %r10d
	pextrw	$4, %xmm0, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	pextrw	$3, %xmm0, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	pextrw	$2, %xmm0, %r12d
	movw	$0, 72(%rsp)
	pextrw	$1, %xmm0, %r15d
	movd	%xmm0, %eax
.LBB3_37:
	movzwl	%r8w, %edi
	movswl	%r9w, %r13d
	shrl	$15, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 16(%rsp)
	movw	%di, 18(%rsp)
	cmpl	$32767, %edi            # imm = 0x7FFF
	movl	%r9d, 112(%rsp)         # 4-byte Spill
	movl	%edx, 88(%rsp)          # 4-byte Spill
	movl	%r11d, 92(%rsp)         # 4-byte Spill
	movl	%r15d, 108(%rsp)        # 4-byte Spill
	movl	%r12d, 104(%rsp)        # 4-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	jne	.LBB3_50
# %bb.38:
	movzwl	(%rsi), %edi
	movzwl	2(%rsi), %ebx
	movl	%edi, 96(%rsp)          # 4-byte Spill
                                        # kill: def $di killed $di killed $edi
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	orw	%bx, %di
	jne	.LBB3_46
# %bb.39:
	cmpw	$0, 4(%rsi)
	jne	.LBB3_45
# %bb.40:
	cmpw	$0, 6(%rsi)
	jne	.LBB3_45
# %bb.41:
	cmpw	$0, 8(%rsi)
	jne	.LBB3_45
# %bb.42:
	cmpw	$0, 10(%rsi)
	jne	.LBB3_45
# %bb.43:
	cmpw	$0, 12(%rsi)
	jne	.LBB3_45
# %bb.44:
	cmpw	$0, 14(%rsi)
	je	.LBB3_47
.LBB3_45:
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
.LBB3_46:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 20(%rsp)
	movzwl	16(%rsi), %ebx
	movzwl	14(%rsi), %r9d
	movzwl	12(%rsi), %r11d
	movzwl	10(%rsi), %r10d
	movzwl	8(%rsi), %r12d
	movzwl	4(%rsi), %r15d
	movzwl	6(%rsi), %edi
.LBB3_49:
	movw	%bx, 22(%rsp)
	movw	%r9w, 24(%rsp)
	movw	%r11w, 26(%rsp)
	movw	%r10w, 28(%rsp)
	movw	%r12w, 30(%rsp)
	movw	%di, 32(%rsp)
	movw	%r15w, 34(%rsp)
	movl	12(%rsp), %edx          # 4-byte Reload
	movw	%dx, 36(%rsp)
	movl	96(%rsp), %edx          # 4-byte Reload
	movw	%dx, 38(%rsp)
	movzwl	-2(%rsi), %esi
	movw	%si, 40(%rsp)
	jmp	.LBB3_51
.LBB3_50:
	movw	$0, 20(%rsp)
	movdqu	2(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, 22(%rsp)
	movzwl	(%rsi), %edx
	movw	%dx, 38(%rsp)
	pextrw	$7, %xmm0, %ebx
	pextrw	$6, %xmm0, %r9d
	pextrw	$5, %xmm0, %r11d
	pextrw	$4, %xmm0, %r10d
	pextrw	$3, %xmm0, %r12d
	pextrw	$2, %xmm0, %edi
	movw	$0, 40(%rsp)
	pextrw	$1, %xmm0, %r15d
	movd	%xmm0, 12(%rsp)         # 4-byte Folded Spill
.LBB3_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	116(%rsp), %esi         # 4-byte Reload
	cmpw	%r13w, %si
	jne	.LBB3_52
# %bb.55:
	xorl	%edx, %edx
	testw	%si, %si
	sete	%sil
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.58:
	movl	%ebp, %eax
	movl	%eax, %ecx
	movl	%ebx, %r8d
	cmpw	%bx, %ax
	jne	.LBB3_56
# %bb.59:
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	movl	%r9d, %r8d
	cmpw	%r9w, %ax
	jne	.LBB3_56
# %bb.60:
	movzwl	58(%rsp), %ecx
	movzwl	26(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.61:
	movzwl	60(%rsp), %ecx
	movzwl	28(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.62:
	movzwl	62(%rsp), %ecx
	movzwl	30(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.63:
	movzwl	64(%rsp), %ecx
	movzwl	32(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.64:
	movzwl	66(%rsp), %ecx
	movzwl	34(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.65:
	movzwl	68(%rsp), %ecx
	movzwl	36(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_56
# %bb.66:
	movzwl	70(%rsp), %ecx
	movzwl	38(%rsp), %r8d
	xorl	%eax, %eax
	cmpw	%r8w, %cx
	je	.LBB3_57
.LBB3_56:
	movb	%sil, %dl
	addl	%edx, %edx
	addl	$-1, %edx
	movl	%edx, %eax
	negl	%eax
	cmpw	%r8w, %cx
	cmoval	%edx, %eax
	jmp	.LBB3_57
.LBB3_52:
	orl	112(%rsp), %r14d        # 4-byte Folded Reload
	andl	$32767, %r14d           # imm = 0x7FFF
	orl	%r14d, %ebp
	movl	92(%rsp), %ecx          # 4-byte Reload
	orl	%ebx, %ecx
	orl	%ebp, %ecx
	movl	100(%rsp), %ebp         # 4-byte Reload
	orl	%r9d, %ebp
	orl	%ebp, %r11d
	orl	%ecx, %r11d
	orl	80(%rsp), %r10d         # 4-byte Folded Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	orl	%r10d, %ecx
	orl	%ecx, %r12d
	orl	%r11d, %r12d
	orl	104(%rsp), %edi         # 4-byte Folded Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	orl	%edi, %ecx
	orl	%ecx, %r15d
	orl	%r15d, %eax
	orl	%r12d, %eax
	movl	88(%rsp), %ecx          # 4-byte Reload
	orl	12(%rsp), %ecx          # 4-byte Folded Reload
	orl	%eax, %ecx
	orw	%dx, %cx
	je	.LBB3_53
# %bb.54:
	xorl	%eax, %eax
	testw	%si, %si
	sete	%al
	addl	%eax, %eax
	addl	$-1, %eax
	jmp	.LBB3_57
.LBB3_53:
	xorl	%eax, %eax
	jmp	.LBB3_57
.LBB3_33:
	movzwl	16(%rdi), %ebp
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 52(%rsp)
	testw	%bp, %bp
	je	.LBB3_67
# %bb.34:
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB3_35
.LBB3_47:
	movzwl	16(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 20(%rsp)
	testw	%bx, %bx
	je	.LBB3_68
# %bb.48:
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	jmp	.LBB3_49
.LBB3_22:
	cmpw	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %eax
	jne	.LBB3_57
	jmp	.LBB3_23
.LBB3_67:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 54(%rsp)
	movl	$0, 70(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%ebp, %ebp
	jmp	.LBB3_37
.LBB3_68:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 22(%rsp)
	movl	$0, 38(%rsp)
	xorl	%edx, %edx
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	jmp	.LBB3_51
.Lfunc_end3:
	.size	ecmp, .Lfunc_end3-ecmp
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function ediv
.LCPI4_0:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.text
	.p2align	4, 0x90
	.type	ediv,@function
ediv:                                   # @ediv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movzwl	18(%rdi), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB4_1
# %bb.40:
	movzwl	(%rbx), %eax
	testw	%ax, %ax
	jne	.LBB4_48
# %bb.41:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_48
# %bb.42:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_48
# %bb.43:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_48
# %bb.44:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_48
# %bb.45:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_48
# %bb.46:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_48
# %bb.47:
	cmpw	$0, 14(%rbx)
	je	.LBB4_49
.LBB4_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_50:
	movw	%ax, (%r12)
	movzwl	2(%rbx), %eax
	movw	%ax, 2(%r12)
	movzwl	4(%rbx), %eax
	movw	%ax, 4(%r12)
	movzwl	6(%rbx), %eax
	movw	%ax, 6(%r12)
	movzwl	8(%rbx), %eax
	movw	%ax, 8(%r12)
	movzwl	10(%rbx), %eax
	movw	%ax, 10(%r12)
	movzwl	12(%rbx), %eax
	movw	%ax, 12(%r12)
	movzwl	14(%rbx), %eax
	movw	%ax, 14(%r12)
	movzwl	16(%rbx), %eax
	movw	%ax, 16(%r12)
	movzwl	18(%rbx), %eax
	movw	%ax, 18(%r12)
	jmp	.LBB4_170
.LBB4_1:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	movzwl	18(%r13), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB4_3
# %bb.51:
	movzwl	(%r13), %eax
	testw	%ax, %ax
	jne	.LBB4_59
# %bb.52:
	cmpw	$0, 2(%r13)
	jne	.LBB4_59
# %bb.53:
	cmpw	$0, 4(%r13)
	jne	.LBB4_59
# %bb.54:
	cmpw	$0, 6(%r13)
	jne	.LBB4_59
# %bb.55:
	cmpw	$0, 8(%r13)
	jne	.LBB4_59
# %bb.56:
	cmpw	$0, 10(%r13)
	jne	.LBB4_59
# %bb.57:
	cmpw	$0, 12(%r13)
	jne	.LBB4_59
# %bb.58:
	cmpw	$0, 14(%r13)
	je	.LBB4_60
.LBB4_59:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_61:
	movw	%ax, (%r12)
	movzwl	2(%r13), %eax
	movw	%ax, 2(%r12)
	movzwl	4(%r13), %eax
	movw	%ax, 4(%r12)
	movzwl	6(%r13), %eax
	movw	%ax, 6(%r12)
	movzwl	8(%r13), %eax
	movw	%ax, 8(%r12)
	movzwl	10(%r13), %eax
	movw	%ax, 10(%r12)
	movzwl	12(%r13), %eax
	movw	%ax, 12(%r12)
	movzwl	14(%r13), %eax
	movw	%ax, 14(%r12)
	movzwl	16(%r13), %eax
	movw	%ax, 16(%r12)
	movzwl	18(%r13), %eax
	movw	%ax, 18(%r12)
	jmp	.LBB4_170
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_4:
	movl	$ezero, %esi
	movq	%rbx, %rdi
	callq	ecmp
	testl	%eax, %eax
	jne	.LBB4_6
# %bb.5:
	movl	$ezero, %esi
	movq	%r13, %rdi
	callq	ecmp
	testl	%eax, %eax
	je	.LBB4_73
.LBB4_6:
	movzwl	18(%rbx), %edx
	movl	%edx, %r10d
	andl	$32767, %r10d           # imm = 0x7FFF
	cmpl	$32767, %r10d           # imm = 0x7FFF
	jne	.LBB4_16
# %bb.7:
	cmpw	$0, (%rbx)
	jne	.LBB4_15
# %bb.8:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_15
# %bb.9:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_15
# %bb.10:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_15
# %bb.11:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_15
# %bb.12:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_15
# %bb.13:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_15
# %bb.14:
	cmpw	$0, 14(%rbx)
	je	.LBB4_62
.LBB4_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_17:
	movzwl	18(%r13), %ecx
	movl	%ecx, %r15d
	andl	$32767, %r15d           # imm = 0x7FFF
	movzwl	%r10w, %edi
	cmpl	$32767, %r15d           # imm = 0x7FFF
	jne	.LBB4_27
# %bb.18:
	cmpw	$0, (%r13)
	jne	.LBB4_26
# %bb.19:
	cmpw	$0, 2(%r13)
	jne	.LBB4_26
# %bb.20:
	cmpw	$0, 4(%r13)
	jne	.LBB4_26
# %bb.21:
	cmpw	$0, 6(%r13)
	jne	.LBB4_26
# %bb.22:
	cmpw	$0, 8(%r13)
	jne	.LBB4_26
# %bb.23:
	cmpw	$0, 10(%r13)
	jne	.LBB4_26
# %bb.24:
	cmpw	$0, 12(%r13)
	jne	.LBB4_26
# %bb.25:
	cmpw	$0, 14(%r13)
	je	.LBB4_74
.LBB4_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_28:
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB4_38
# %bb.29:
	cmpw	$0, (%rbx)
	jne	.LBB4_37
# %bb.30:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_37
# %bb.31:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_37
# %bb.32:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_37
# %bb.33:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_37
# %bb.34:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_37
# %bb.35:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_37
# %bb.36:
	cmpw	$0, 14(%rbx)
	je	.LBB4_89
.LBB4_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_38:
	movswl	%dx, %eax
	shrl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -112(%rbp)
	movw	%di, -110(%rbp)
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB4_105
# %bb.39:
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	leaq	16(%rbx), %rdi
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_91:
	movzwl	(%rbx), %r9d
	movzwl	2(%rbx), %r14d
	movl	%r9d, %eax
	orw	%r14w, %ax
	jne	.LBB4_99
# %bb.92:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_98
# %bb.93:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_98
# %bb.94:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_98
# %bb.95:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_98
# %bb.96:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_98
# %bb.97:
	cmpw	$0, 14(%rbx)
	je	.LBB4_101
.LBB4_98:
	xorl	%r14d, %r14d
.LBB4_99:
	movq	%r15, %r8
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -108(%rbp)
	movzwl	16(%rbx), %r11d
	movzwl	14(%rbx), %ecx
	movzwl	12(%rbx), %esi
	movzwl	10(%rbx), %edi
	movzwl	8(%rbx), %eax
	movzwl	4(%rbx), %r15d
	movzwl	6(%rbx), %edx
.LBB4_100:
	movw	%r11w, -106(%rbp)
	movw	%cx, -104(%rbp)
	movw	%si, -102(%rbp)
	movw	%di, -100(%rbp)
	movw	%ax, -98(%rbp)
	movw	%dx, -96(%rbp)
	movw	%r15w, -94(%rbp)
	movw	%r14w, -92(%rbp)
	movw	%r9w, -90(%rbp)
	movzwl	-2(%rbx), %eax
	movw	%ax, -88(%rbp)
.LBB4_104:
	movq	%r8, %r15
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB4_106
.LBB4_105:
	leaq	-112(%rbp), %r14
	movw	$0, -108(%rbp)
	movdqu	2(%rbx), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, -106(%rbp)
	movzwl	(%rbx), %eax
	movw	%ax, -90(%rbp)
	movw	$0, -88(%rbp)
.LBB4_106:
	movswl	%cx, %eax
	movzwl	%r15w, %ecx
	shrl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -80(%rbp)
	movw	%cx, -78(%rbp)
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB4_120
# %bb.107:
	movzwl	(%r13), %r8d
	movzwl	2(%r13), %r11d
	movl	%r8d, %eax
	orw	%r11w, %ax
	jne	.LBB4_115
# %bb.108:
	cmpw	$0, 4(%r13)
	jne	.LBB4_114
# %bb.109:
	cmpw	$0, 6(%r13)
	jne	.LBB4_114
# %bb.110:
	cmpw	$0, 8(%r13)
	jne	.LBB4_114
# %bb.111:
	cmpw	$0, 10(%r13)
	jne	.LBB4_114
# %bb.112:
	cmpw	$0, 12(%r13)
	jne	.LBB4_114
# %bb.113:
	cmpw	$0, 14(%r13)
	je	.LBB4_116
.LBB4_114:
	xorl	%r11d, %r11d
.LBB4_115:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movzwl	16(%r13), %r9d
	movzwl	14(%r13), %edx
	movzwl	12(%r13), %esi
	movzwl	10(%r13), %ecx
	movzwl	8(%r13), %ebx
	movzwl	4(%r13), %edi
	movzwl	6(%r13), %eax
.LBB4_118:
	movw	%r9w, -74(%rbp)
	movw	%dx, -72(%rbp)
	movw	%si, -70(%rbp)
	movw	%cx, -68(%rbp)
	movw	%bx, -66(%rbp)
	movw	%ax, -64(%rbp)
	movw	%di, -62(%rbp)
	movw	%r11w, -60(%rbp)
	movw	%r8w, -58(%rbp)
	movzwl	-2(%r13), %eax
	movw	%ax, -56(%rbp)
.LBB4_119:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32767, %r15d           # imm = 0x7FFF
	movq	%r10, %rdi
	jmp	.LBB4_123
.LBB4_120:
	movw	$0, -76(%rbp)
	movdqu	2(%r13), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -74(%rbp)
	movzwl	(%r13), %ecx
	movw	%cx, -58(%rbp)
	movw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r15w, %r15w
	jne	.LBB4_123
# %bb.121:
	pextrw	$7, %xmm0, %eax
	pextrw	$6, %xmm0, %edx
	orl	%eax, %edx
	pextrw	$5, %xmm0, %eax
	pextrw	$4, %xmm0, %esi
	orl	%eax, %esi
	orl	%edx, %esi
	pextrw	$3, %xmm0, %eax
	pextrw	$2, %xmm0, %edx
	orl	%eax, %edx
	pextrw	$1, %xmm0, %eax
	orl	%edx, %eax
	orl	%esi, %eax
	movd	%xmm0, %edx
	orl	%eax, %edx
	orw	%cx, %dx
	je	.LBB4_182
# %bb.122:
	movq	%rdi, %rbx
	leaq	-80(%rbp), %rdi
	callq	enormlz
	movq	%rbx, %rdi
	cltq
	subq	%rax, %r15
	movzwl	-110(%rbp), %r10d
.LBB4_123:
	testw	%r10w, %r10w
	movq	%r12, -240(%rbp)        # 8-byte Spill
	movq	%r15, -232(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	jne	.LBB4_126
# %bb.124:
	cmpw	$0, -108(%rbp)
	jne	.LBB4_125
# %bb.171:
	cmpw	$0, -106(%rbp)
	jne	.LBB4_125
# %bb.172:
	cmpw	$0, -104(%rbp)
	jne	.LBB4_125
# %bb.173:
	cmpw	$0, -102(%rbp)
	jne	.LBB4_125
# %bb.174:
	cmpw	$0, -100(%rbp)
	jne	.LBB4_125
# %bb.175:
	cmpw	$0, -98(%rbp)
	jne	.LBB4_125
# %bb.176:
	cmpw	$0, -96(%rbp)
	jne	.LBB4_125
# %bb.177:
	cmpw	$0, -94(%rbp)
	jne	.LBB4_125
# %bb.178:
	cmpw	$0, -92(%rbp)
	jne	.LBB4_125
# %bb.179:
	cmpw	$0, -90(%rbp)
	je	.LBB4_180
.LBB4_125:
	movq	%r14, %rdi
	callq	enormlz
	cltq
	subq	%rax, -152(%rbp)        # 8-byte Folded Spill
.LBB4_126:
	movzwl	-80(%rbp), %eax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movw	%ax, 52(%rcx)
	movzwl	-78(%rbp), %eax
	movw	%ax, 54(%rcx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 56(%rcx)
	movl	$0, 72(%rcx)
	movw	$0, 76(%rcx)
	movzwl	-76(%rbp), %eax
	movd	%eax, %xmm0
	movl	%eax, %edi
	shrl	%edi
	movw	%di, -76(%rbp)
	movdqu	-74(%rbp), %xmm1
	movdqa	%xmm1, %xmm2
	psrlw	$1, %xmm2
	movdqa	.LCPI4_0(%rip), %xmm3   # xmm3 = [0,65535,65535,65535,65535,65535,65535,65535]
	pandn	%xmm0, %xmm3
	pextrw	$7, %xmm1, %eax
	pslldq	$2, %xmm1               # xmm1 = zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm3, %xmm1
	psllw	$15, %xmm1
	por	%xmm2, %xmm1
	movdqu	%xmm1, -74(%rbp)
	movzwl	-58(%rbp), %ecx
	shldw	$15, %cx, %ax
	movw	%ax, -58(%rbp)
	movzwl	-56(%rbp), %eax
	shrdw	$1, %cx, %ax
	movw	%ax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-106(%rbp), %eax
	movq	%rax, %rcx
	shlq	$16, %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movd	%xmm1, %eax
	movl	$2, %edx
	jmp	.LBB4_127
	.p2align	4, 0x90
.LBB4_137:                              #   in Loop: Header=BB4_127 Depth=1
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB4_147:                              #   in Loop: Header=BB4_127 Depth=1
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %r14d
	movq	%r11, %r10
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r15, %rbx
	movq	%r8, %r15
	movq	%r9, %r8
	movq	-136(%rbp), %r9         # 8-byte Reload
.LBB4_162:                              #   in Loop: Header=BB4_127 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-56(%rbp), %r12d
	movzwl	%r11w, %ecx
	subq	%rcx, %r12
	movzwl	-58(%rbp), %r11d
	movzwl	%r9w, %ecx
	subq	%rcx, %r11
	movl	%r12d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r11
	movzwl	-60(%rbp), %r9d
	movzwl	%r8w, %ecx
	subq	%rcx, %r9
	movl	%r11d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r9
	movzwl	-62(%rbp), %r8d
	movzwl	%r15w, %ecx
	subq	%rcx, %r8
	movl	%r9d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r8
	movzwl	-64(%rbp), %r15d
	movzwl	%bx, %ecx
	subq	%rcx, %r15
	movl	%r8d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r15
	movzwl	-66(%rbp), %ecx
	movzwl	%r10w, %esi
	subq	%rsi, %rcx
	movl	%r15d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	subq	%rsi, %rcx
	movzwl	-68(%rbp), %esi
	movzwl	-120(%rbp), %edi        # 2-byte Folded Reload
	subq	%rdi, %rsi
	movl	%ecx, %edi
	shrl	$16, %edi
	andl	$1, %edi
	subq	%rdi, %rsi
	movzwl	-70(%rbp), %ebx
	movzwl	-168(%rbp), %eax        # 2-byte Folded Reload
	subq	%rax, %rbx
	movl	%esi, %eax
	shrl	$16, %eax
	andl	$1, %eax
	subq	%rax, %rbx
	movzwl	-72(%rbp), %eax
	movzwl	-144(%rbp), %edi        # 2-byte Folded Reload
	subq	%rdi, %rax
	movl	%ebx, %edi
	shrl	$16, %edi
	andl	$1, %edi
	subq	%rdi, %rax
	movzwl	-74(%rbp), %edi
	movzwl	-128(%rbp), %edx        # 2-byte Folded Reload
	subq	%rdx, %rdi
	movl	%eax, %edx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-328(%rbp), %r10        # 8-byte Reload
	movw	%r14w, 52(%rdx,%r10,2)
	movq	%r10, %rdx
	movw	%di, -76(%rbp)
	movw	%ax, -74(%rbp)
	movw	%bx, -72(%rbp)
	movw	%si, -70(%rbp)
	movw	%cx, -68(%rbp)
	movw	%r15w, -66(%rbp)
	movw	%r8w, -64(%rbp)
	movw	%r9w, -62(%rbp)
	movw	%r11w, -60(%rbp)
	movw	%r12w, -58(%rbp)
	movw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	$13, %rdx
	je	.LBB4_163
.LBB4_127:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_130 Depth 2
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movzwl	%di, %edx
	shlq	$16, %rdx
	movzwl	%ax, %ecx
	orq	%rdx, %rcx
	movw	$-1, %ax
	cmpq	%rcx, -320(%rbp)        # 8-byte Folded Reload
	jb	.LBB4_129
# %bb.128:                              #   in Loop: Header=BB4_127 Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	-248(%rbp)              # 8-byte Folded Reload
.LBB4_129:                              #   in Loop: Header=BB4_127 Depth=1
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movzwl	%ax, %eax
	movl	$0, -186(%rbp)
	movl	$12, %ecx
	leaq	-184(%rbp), %rdx
	jmp	.LBB4_130
	.p2align	4, 0x90
.LBB4_132:                              #   in Loop: Header=BB4_130 Depth=2
	imulq	%rax, %rdi
	movzwl	%di, %esi
	movzwl	(%rdx), %ebx
	addq	%rsi, %rbx
	leaq	-2(%rdx), %rsi
	movw	%bx, (%rdx)
	shrq	$16, %rbx
	shrq	$16, %rdi
	addq	%rbx, %rdi
	movzwl	-2(%rdx), %ebx
	addq	%rdi, %rbx
	movw	%bx, -2(%rdx)
	shrq	$16, %rbx
.LBB4_133:                              #   in Loop: Header=BB4_130 Depth=2
	movw	%bx, -4(%rdx)
	addq	$-1, %rcx
	movq	%rsi, %rdx
	cmpl	$2, %ecx
	je	.LBB4_134
.LBB4_130:                              #   Parent Loop BB4_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-112(%rbp,%rcx,2), %edi
	testq	%rdi, %rdi
	jne	.LBB4_132
# %bb.131:                              #   in Loop: Header=BB4_130 Depth=2
	leaq	-2(%rdx), %rsi
	xorl	%ebx, %ebx
	jmp	.LBB4_133
	.p2align	4, 0x90
.LBB4_134:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-204(%rbp), %ebx
	movzwl	-202(%rbp), %edi
	movzwl	-200(%rbp), %eax
	movzwl	-198(%rbp), %r14d
	movzwl	-196(%rbp), %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movzwl	-194(%rbp), %r11d
	movzwl	-192(%rbp), %r15d
	movzwl	-190(%rbp), %r8d
	movzwl	-188(%rbp), %r9d
	movzwl	-186(%rbp), %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movzwl	-184(%rbp), %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-76(%rbp), %r12d
	movl	%ebx, %ecx
	movl	%r12d, %esi
	cmpw	%r12w, %bx
	jne	.LBB4_136
# %bb.135:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-74(%rbp), %esi
	movl	%edi, %ecx
	cmpw	%si, %di
	jne	.LBB4_136
# %bb.138:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-72(%rbp), %esi
	movl	%eax, %ecx
	cmpw	%si, %ax
	jne	.LBB4_136
# %bb.139:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-70(%rbp), %esi
	movl	%r14d, %ecx
	cmpw	%si, %r14w
	jne	.LBB4_136
# %bb.140:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-68(%rbp), %esi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %ecx
	cmpw	%si, %dx
	jne	.LBB4_136
# %bb.141:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-66(%rbp), %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rax
	movl	%eax, %ecx
	cmpw	%si, %ax
	movq	-144(%rbp), %rax        # 8-byte Reload
	jne	.LBB4_136
# %bb.142:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-64(%rbp), %esi
	movq	%r15, %r10
	movl	%r10d, %ecx
	cmpw	%si, %r10w
	jne	.LBB4_136
# %bb.143:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-62(%rbp), %esi
	movq	%r8, %r10
	movl	%r10d, %ecx
	cmpw	%si, %r10w
	jne	.LBB4_136
# %bb.144:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-60(%rbp), %esi
	movq	%r9, %r10
	movl	%r10d, %ecx
	cmpw	%si, %r10w
	jne	.LBB4_136
# %bb.145:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-58(%rbp), %esi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %ecx
	cmpw	%si, %dx
	jne	.LBB4_136
# %bb.146:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-56(%rbp), %esi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	cmpw	%si, %ax
	movq	-144(%rbp), %rax        # 8-byte Reload
	je	.LBB4_147
	.p2align	4, 0x90
.LBB4_136:                              #   in Loop: Header=BB4_127 Depth=1
	cmpw	%si, %cx
	jbe	.LBB4_137
# %bb.148:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	%bx, %r13d
	movzwl	%di, %edi
	movzwl	%ax, %eax
	movzwl	%r14w, %r14d
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movzwl	%dx, %edx
	movq	%r11, %r10
	movzwl	%r10w, %r10d
	movq	%r15, %rbx
	movzwl	%bx, %ebx
	movq	%r8, %r15
	movzwl	%r15w, %r15d
	movq	%r9, %r8
	movzwl	%r8w, %r8d
	movq	-136(%rbp), %r9         # 8-byte Reload
	movzwl	%r9w, %r9d
	movq	-160(%rbp), %r11        # 8-byte Reload
	movzwl	%r11w, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-88(%rbp), %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	subq	%rcx, %r11
	movl	%r11d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-90(%rbp), %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	subq	%rcx, %r9
	subq	%rsi, %r9
	movl	%r9d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-92(%rbp), %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	subq	%rcx, %r8
	subq	%rsi, %r8
	movl	%r8d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-94(%rbp), %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	subq	%rcx, %r15
	subq	%rsi, %r15
	movl	%r15d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-96(%rbp), %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	subq	%rcx, %rbx
	subq	%rsi, %rbx
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movl	%ebx, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-98(%rbp), %ebx
	movq	%rbx, -296(%rbp)        # 8-byte Spill
	subq	%rbx, %r10
	subq	%rsi, %r10
	movl	%r10d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-100(%rbp), %ebx
	movq	%rbx, -304(%rbp)        # 8-byte Spill
	subq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-102(%rbp), %ebx
	movq	%rbx, -160(%rbp)        # 8-byte Spill
	subq	%rbx, %r14
	subq	%rsi, %r14
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movl	%r14d, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-104(%rbp), %edx
	subq	%rdx, %rax
	subq	%rsi, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	shrl	$16, %esi
	andl	$1, %esi
	movzwl	-106(%rbp), %eax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	subq	%rax, %rdi
	subq	%rsi, %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%edi, %esi
	shrl	$16, %esi
	andl	$1, %esi
	subl	-108(%rbp), %r13d
	subl	%esi, %r13d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	leal	-1(%rcx), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r13w, %r12w
	jne	.LBB4_150
# %bb.149:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-74(%rbp), %r12d
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r13d
	cmpw	%ax, %r12w
	jne	.LBB4_150
# %bb.152:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-72(%rbp), %r12d
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r13d
	cmpw	%ax, %r12w
	jne	.LBB4_150
# %bb.153:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-70(%rbp), %r12d
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movl	%ebx, %r13d
	cmpw	%bx, %r12w
	jne	.LBB4_150
# %bb.154:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-68(%rbp), %r12d
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r13d
	cmpw	%ax, %r12w
	jne	.LBB4_150
# %bb.155:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-66(%rbp), %r12d
	movl	%r10d, %r13d
	cmpw	%r10w, %r12w
	jne	.LBB4_150
# %bb.156:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-64(%rbp), %r12d
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r13d
	cmpw	%ax, %r12w
	jne	.LBB4_150
# %bb.157:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-62(%rbp), %r12d
	movl	%r15d, %r13d
	cmpw	%r15w, %r12w
	jne	.LBB4_150
# %bb.158:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-60(%rbp), %r12d
	movl	%r8d, %r13d
	cmpw	%r8w, %r12w
	jne	.LBB4_150
# %bb.159:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-58(%rbp), %r12d
	movl	%r9d, %r13d
	cmpw	%r9w, %r12w
	jne	.LBB4_150
# %bb.160:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	-56(%rbp), %r12d
	movl	%r11d, %r13d
	cmpw	%r11w, %r12w
	jne	.LBB4_150
# %bb.161:                              #   in Loop: Header=BB4_127 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB4_162
	.p2align	4, 0x90
.LBB4_150:                              #   in Loop: Header=BB4_127 Depth=1
	cmpw	%r12w, %r13w
	movq	-136(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB4_162
# %bb.151:                              #   in Loop: Header=BB4_127 Depth=1
	movzwl	%r11w, %r11d
	subq	-256(%rbp), %r11        # 8-byte Folded Reload
	movzwl	%r9w, %r9d
	subq	-264(%rbp), %r9         # 8-byte Folded Reload
	movq	%rcx, %r14
	movl	%r11d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r9
	movzwl	%r8w, %r8d
	subq	-272(%rbp), %r8         # 8-byte Folded Reload
	movl	%r9d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r8
	movzwl	%r15w, %r15d
	subq	-280(%rbp), %r15        # 8-byte Folded Reload
	movl	%r8d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r15
	movzwl	%bx, %ebx
	subq	-288(%rbp), %rbx        # 8-byte Folded Reload
	movl	%r15d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rbx
	movzwl	%r10w, %r10d
	subq	-296(%rbp), %r10        # 8-byte Folded Reload
	movl	%ebx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r10
	movq	%rdx, %rsi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movzwl	%dx, %edx
	subq	-304(%rbp), %rdx        # 8-byte Folded Reload
	movl	%r10d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdx
	movq	-168(%rbp), %rax        # 8-byte Reload
	movzwl	%ax, %eax
	subq	-160(%rbp), %rax        # 8-byte Folded Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movzwl	%di, %edi
	subq	%rsi, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	subl	-312(%rbp), %eax        # 4-byte Folded Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%edi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subl	%ecx, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %r14d
                                        # kill: def $r14w killed $r14w killed $r14 def $r14d
	jmp	.LBB4_162
.LBB4_163:
	orl	%r12d, %r11d
	orl	%r11d, %r9d
	orl	%r9d, %r8d
	orl	%r8d, %r15d
	orl	%r15d, %ecx
	orl	%ecx, %esi
	orl	%esi, %ebx
	orl	%ebx, %eax
	movq	-216(%rbp), %r9         # 8-byte Reload
	movdqu	52(%r9), %xmm0
	movdqa	%xmm0, -80(%rbp)
	movzwl	68(%r9), %ecx
	movw	%cx, -64(%rbp)
	movzwl	70(%r9), %ecx
	movw	%cx, -62(%rbp)
	movzwl	72(%r9), %ecx
	movw	%cx, -60(%rbp)
	movzwl	74(%r9), %ecx
	movw	%cx, -58(%rbp)
	movzwl	76(%r9), %ecx
	movw	%cx, -56(%rbp)
	xorl	%esi, %esi
	orw	%ax, %di
	setne	%sil
	movl	$42, __A_VARIABLE(%rip)
	movq	-232(%rbp), %rcx        # 8-byte Reload
	subq	-152(%rbp), %rcx        # 8-byte Folded Reload
	addq	$16383, %rcx            # imm = 0x3FFF
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movl	$64, %r8d
	callq	emdnorm
	movzwl	-112(%rbp), %ecx
	movzwl	-78(%rbp), %edx
	movl	%edx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	xorl	%esi, %esi
	cmpw	-80(%rbp), %cx
	sete	%sil
	cmovel	%edx, %eax
	addl	$-1, %esi
	movw	%si, -80(%rbp)
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movw	%ax, 18(%rsi)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB4_169
# %bb.164:
	movzwl	-72(%rbp), %ecx
	orw	-74(%rbp), %cx
	orw	-70(%rbp), %cx
	orw	-68(%rbp), %cx
	orw	-66(%rbp), %cx
	orw	-64(%rbp), %cx
	orw	-62(%rbp), %cx
	orw	-60(%rbp), %cx
	orw	-58(%rbp), %cx
	je	.LBB4_166
# %bb.165:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_167
.LBB4_169:
	movzwl	-74(%rbp), %eax
	movw	%ax, 16(%rsi)
	movdqu	-72(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, (%rsi)
	jmp	.LBB4_170
.LBB4_166:
	cmpw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_168
.LBB4_167:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsi)
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_170
.LBB4_168:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsi)
	movw	$0, 16(%rsi)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, 18(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_170
.LBB4_49:
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_50
	jmp	.LBB4_2
.LBB4_101:
	movq	%r15, %r8
	movzwl	(%rdi), %r11d
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -108(%rbp)
	testw	%r11w, %r11w
	je	.LBB4_103
# %bb.102:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB4_100
.LBB4_116:
	movzwl	16(%r13), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	testw	%r9w, %r9w
	je	.LBB4_183
# %bb.117:
	xorl	%r11d, %r11d
	xorl	%edi, %edi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.LBB4_118
.LBB4_60:
	cmpw	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_61
	jmp	.LBB4_4
.LBB4_62:
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_17
# %bb.63:
	movzwl	18(%r13), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB4_16
# %bb.64:
	cmpw	$0, (%r13)
	jne	.LBB4_15
# %bb.65:
	cmpw	$0, 2(%r13)
	jne	.LBB4_15
# %bb.66:
	cmpw	$0, 4(%r13)
	jne	.LBB4_15
# %bb.67:
	cmpw	$0, 6(%r13)
	jne	.LBB4_15
# %bb.68:
	cmpw	$0, 8(%r13)
	jne	.LBB4_15
# %bb.69:
	cmpw	$0, 10(%r13)
	jne	.LBB4_15
# %bb.70:
	cmpw	$0, 12(%r13)
	jne	.LBB4_15
# %bb.71:
	cmpw	$0, 14(%r13)
	jne	.LBB4_15
# %bb.72:
	cmpw	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_17
.LBB4_73:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
	movl	$2147467264, 16(%r12)   # imm = 0x7FFFC000
	jmp	.LBB4_170
.LBB4_74:
	cmpw	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_28
# %bb.75:
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB4_76
# %bb.77:
	cmpw	$0, (%rbx)
	jne	.LBB4_85
# %bb.78:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_85
# %bb.79:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_85
# %bb.80:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_85
# %bb.81:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_85
# %bb.82:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_85
# %bb.83:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_85
# %bb.84:
	cmpw	$0, 14(%rbx)
	je	.LBB4_86
.LBB4_85:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB4_88
.LBB4_103:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -106(%rbp)
	movl	$0, -90(%rbp)
	jmp	.LBB4_104
.LBB4_89:
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_182
# %bb.90:
	leaq	16(%rbx), %rdi
	movswl	%dx, %eax
	leaq	-112(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	shrl	$15, %eax
	movw	%ax, -112(%rbp)
	movw	%r10w, -110(%rbp)
	jmp	.LBB4_91
.LBB4_182:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
	movl	$0, 16(%r12)
.LBB4_170:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_183:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	jmp	.LBB4_119
.LBB4_76:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_87:
	shrl	$15, %edx
	movl	%edx, %eax
.LBB4_88:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jmp	.LBB4_181
.LBB4_180:
	movzwl	-112(%rbp), %eax
	cmpw	-80(%rbp), %ax
.LBB4_181:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
	movw	$0, 16(%r12)
	movl	$32767, %eax            # imm = 0x7FFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovel	%eax, %ecx
	movw	%cx, 18(%r12)
	jmp	.LBB4_170
.LBB4_86:
	xorl	%eax, %eax
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_88
	jmp	.LBB4_87
.Lfunc_end4:
	.size	ediv, .Lfunc_end4-ediv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function emul
	.type	emul,@function
emul:                                   # @emul
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movzwl	18(%rdi), %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB5_11
# %bb.1:
	movzwl	(%r12), %eax
	testw	%ax, %ax
	jne	.LBB5_9
# %bb.2:
	cmpw	$0, 2(%r12)
	jne	.LBB5_9
# %bb.3:
	cmpw	$0, 4(%r12)
	jne	.LBB5_9
# %bb.4:
	cmpw	$0, 6(%r12)
	jne	.LBB5_9
# %bb.5:
	cmpw	$0, 8(%r12)
	jne	.LBB5_9
# %bb.6:
	cmpw	$0, 10(%r12)
	jne	.LBB5_9
# %bb.7:
	cmpw	$0, 12(%r12)
	jne	.LBB5_9
# %bb.8:
	cmpw	$0, 14(%r12)
	je	.LBB5_129
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movw	%ax, (%rbx)
	movzwl	2(%r12), %eax
	movw	%ax, 2(%rbx)
	movzwl	4(%r12), %eax
	movw	%ax, 4(%rbx)
	movzwl	6(%r12), %eax
	movw	%ax, 6(%rbx)
	movzwl	8(%r12), %eax
	movw	%ax, 8(%rbx)
	movzwl	10(%r12), %eax
	movw	%ax, 10(%rbx)
	movzwl	12(%r12), %eax
	movw	%ax, 12(%rbx)
	movzwl	14(%r12), %eax
	movw	%ax, 14(%rbx)
	movzwl	16(%r12), %eax
	movw	%ax, 16(%rbx)
	movzwl	18(%r12), %eax
	movw	%ax, 18(%rbx)
	jmp	.LBB5_128
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_12:
	movzwl	18(%r15), %eax
	movl	%eax, %edx
	andl	$32767, %edx            # imm = 0x7FFF
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB5_23
# %bb.13:
	movzwl	(%r15), %edx
	testw	%dx, %dx
	jne	.LBB5_21
# %bb.14:
	cmpw	$0, 2(%r15)
	jne	.LBB5_21
# %bb.15:
	cmpw	$0, 4(%r15)
	jne	.LBB5_21
# %bb.16:
	cmpw	$0, 6(%r15)
	jne	.LBB5_21
# %bb.17:
	cmpw	$0, 8(%r15)
	jne	.LBB5_21
# %bb.18:
	cmpw	$0, 10(%r15)
	jne	.LBB5_21
# %bb.19:
	cmpw	$0, 12(%r15)
	jne	.LBB5_21
# %bb.20:
	cmpw	$0, 14(%r15)
	je	.LBB5_134
.LBB5_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_22:
	movw	%dx, (%rbx)
	movzwl	2(%r15), %eax
	movw	%ax, 2(%rbx)
	movzwl	4(%r15), %eax
	movw	%ax, 4(%rbx)
	movzwl	6(%r15), %eax
	movw	%ax, 6(%rbx)
	movzwl	8(%r15), %eax
	movw	%ax, 8(%rbx)
	movzwl	10(%r15), %eax
	movw	%ax, 10(%rbx)
	movzwl	12(%r15), %eax
	movw	%ax, 12(%rbx)
	movzwl	14(%r15), %eax
	movw	%ax, 14(%rbx)
	movzwl	16(%r15), %eax
	movw	%ax, 16(%rbx)
	movzwl	18(%r15), %eax
	movw	%ax, 18(%rbx)
	jmp	.LBB5_128
.LBB5_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_24:
	movzwl	%cx, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB5_34
# %bb.25:
	cmpw	$0, (%r12)
	jne	.LBB5_33
# %bb.26:
	cmpw	$0, 2(%r12)
	jne	.LBB5_33
# %bb.27:
	cmpw	$0, 4(%r12)
	jne	.LBB5_33
# %bb.28:
	cmpw	$0, 6(%r12)
	jne	.LBB5_33
# %bb.29:
	cmpw	$0, 8(%r12)
	jne	.LBB5_33
# %bb.30:
	cmpw	$0, 10(%r12)
	jne	.LBB5_33
# %bb.31:
	cmpw	$0, 12(%r12)
	jne	.LBB5_33
# %bb.32:
	cmpw	$0, 14(%r12)
	je	.LBB5_135
.LBB5_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_35:
	andl	$32767, %eax            # imm = 0x7FFF
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB5_45
# %bb.36:
	cmpw	$0, (%r15)
	jne	.LBB5_44
# %bb.37:
	cmpw	$0, 2(%r15)
	jne	.LBB5_44
# %bb.38:
	cmpw	$0, 4(%r15)
	jne	.LBB5_44
# %bb.39:
	cmpw	$0, 6(%r15)
	jne	.LBB5_44
# %bb.40:
	cmpw	$0, 8(%r15)
	jne	.LBB5_44
# %bb.41:
	cmpw	$0, 10(%r15)
	jne	.LBB5_44
# %bb.42:
	cmpw	$0, 12(%r15)
	jne	.LBB5_44
# %bb.43:
	cmpw	$0, 14(%r15)
	je	.LBB5_138
.LBB5_44:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_45:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_46:
	movzwl	18(%r12), %eax
	movl	%eax, %esi
	andl	$32767, %esi            # imm = 0x7FFF
	cmpl	$32767, %esi            # imm = 0x7FFF
	jne	.LBB5_56
# %bb.47:
	cmpw	$0, (%r12)
	jne	.LBB5_55
# %bb.48:
	cmpw	$0, 2(%r12)
	jne	.LBB5_55
# %bb.49:
	cmpw	$0, 4(%r12)
	jne	.LBB5_55
# %bb.50:
	cmpw	$0, 6(%r12)
	jne	.LBB5_55
# %bb.51:
	cmpw	$0, 8(%r12)
	jne	.LBB5_55
# %bb.52:
	cmpw	$0, 10(%r12)
	jne	.LBB5_55
# %bb.53:
	cmpw	$0, 12(%r12)
	jne	.LBB5_55
# %bb.54:
	cmpw	$0, 14(%r12)
	je	.LBB5_141
.LBB5_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_57:
	movzwl	18(%r15), %edx
	movl	%edx, %edi
	andl	$32767, %edi            # imm = 0x7FFF
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB5_67
# %bb.58:
	cmpw	$0, (%r15)
	jne	.LBB5_66
# %bb.59:
	cmpw	$0, 2(%r15)
	jne	.LBB5_66
# %bb.60:
	cmpw	$0, 4(%r15)
	jne	.LBB5_66
# %bb.61:
	cmpw	$0, 6(%r15)
	jne	.LBB5_66
# %bb.62:
	cmpw	$0, 8(%r15)
	jne	.LBB5_66
# %bb.63:
	cmpw	$0, 10(%r15)
	jne	.LBB5_66
# %bb.64:
	cmpw	$0, 12(%r15)
	jne	.LBB5_66
# %bb.65:
	cmpw	$0, 14(%r15)
	je	.LBB5_150
.LBB5_66:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_67:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_68:
	cwtl
	movzwl	%si, %ecx
	shrl	$15, %eax
	movw	%ax, -112(%rbp)
	movw	%cx, -110(%rbp)
	cmpl	$32767, %ecx            # imm = 0x7FFF
	movq	%r14, -200(%rbp)        # 8-byte Spill
	movq	%rbx, -248(%rbp)        # 8-byte Spill
	jne	.LBB5_79
# %bb.69:
	movzwl	(%r12), %r8d
	movzwl	2(%r12), %r9d
	movl	%r8d, %eax
	orw	%r9w, %ax
	jne	.LBB5_77
# %bb.70:
	cmpw	$0, 4(%r12)
	jne	.LBB5_76
# %bb.71:
	cmpw	$0, 6(%r12)
	jne	.LBB5_76
# %bb.72:
	cmpw	$0, 8(%r12)
	jne	.LBB5_76
# %bb.73:
	cmpw	$0, 10(%r12)
	jne	.LBB5_76
# %bb.74:
	cmpw	$0, 12(%r12)
	jne	.LBB5_76
# %bb.75:
	cmpw	$0, 14(%r12)
	je	.LBB5_130
.LBB5_76:
	xorl	%r9d, %r9d
.LBB5_77:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -108(%rbp)
	movzwl	16(%r12), %eax
	movzwl	14(%r12), %ecx
	movzwl	12(%r12), %r11d
	movzwl	10(%r12), %r14d
	movzwl	8(%r12), %r10d
	movzwl	4(%r12), %r13d
	movzwl	6(%r12), %ebx
.LBB5_78:
	movw	%ax, -106(%rbp)
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movw	%cx, -104(%rbp)
	movw	%r11w, -102(%rbp)
	movw	%r14w, -100(%rbp)
	movw	%r10w, -98(%rbp)
	movw	%bx, -96(%rbp)
	movw	%r13w, -94(%rbp)
	movw	%r9w, -92(%rbp)
	movw	%r8w, -90(%rbp)
	movzwl	-2(%r12), %ecx
	movw	%cx, -88(%rbp)
	jmp	.LBB5_80
.LBB5_79:
	movw	$0, -108(%rbp)
	movdqu	2(%r12), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -106(%rbp)
	movzwl	(%r12), %r8d
	movw	%r8w, -90(%rbp)
	pextrw	$7, %xmm0, %eax
	pextrw	$6, %xmm0, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	pextrw	$5, %xmm0, %r11d
	pextrw	$4, %xmm0, %r14d
	pextrw	$3, %xmm0, %r10d
	pextrw	$2, %xmm0, %ebx
	movw	$0, -88(%rbp)
	pextrw	$1, %xmm0, %r13d
	movd	%xmm0, %r9d
.LBB5_80:
	movzwl	%di, %ecx
	movswl	%dx, %edx
	shrl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, -80(%rbp)
	movw	%cx, -78(%rbp)
	cmpl	$32767, %ecx            # imm = 0x7FFF
	movq	%rdi, %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	jne	.LBB5_92
# %bb.81:
	movzwl	(%r15), %ecx
	movzwl	2(%r15), %edi
	movw	%cx, -160(%rbp)         # 2-byte Spill
	orw	%di, %cx
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	jne	.LBB5_89
# %bb.82:
	cmpw	$0, 4(%r15)
	jne	.LBB5_88
# %bb.83:
	cmpw	$0, 6(%r15)
	jne	.LBB5_88
# %bb.84:
	cmpw	$0, 8(%r15)
	jne	.LBB5_88
# %bb.85:
	cmpw	$0, 10(%r15)
	jne	.LBB5_88
# %bb.86:
	cmpw	$0, 12(%r15)
	jne	.LBB5_88
# %bb.87:
	cmpw	$0, 14(%r15)
	je	.LBB5_132
.LBB5_88:
	xorl	%edi, %edi
.LBB5_89:
	movl	%r8d, %r12d
	movq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movzwl	16(%r15), %edx
	movzwl	14(%r15), %r9d
	movzwl	12(%r15), %r8d
	movzwl	10(%r15), %r10d
	movzwl	8(%r15), %r11d
	movzwl	4(%r15), %esi
	movzwl	6(%r15), %ecx
.LBB5_90:
	movw	%dx, -74(%rbp)
	movw	%r9w, -72(%rbp)
	movw	%r8w, -70(%rbp)
	movw	%r10w, -68(%rbp)
	movw	%r11w, -66(%rbp)
	movw	%cx, -64(%rbp)
	movw	%si, -62(%rbp)
	movw	%di, -60(%rbp)
	movzwl	-160(%rbp), %ecx        # 2-byte Folded Reload
	movw	%cx, -58(%rbp)
	movzwl	-2(%r15), %ecx
	movw	%cx, -56(%rbp)
.LBB5_91:
	movq	%rax, %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %r8d
	movl	-144(%rbp), %r9d        # 4-byte Reload
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	-128(%rbp), %r10d       # 4-byte Reload
	movl	-120(%rbp), %r11d       # 4-byte Reload
	jmp	.LBB5_93
.LBB5_92:
	movw	$0, -76(%rbp)
	movdqu	2(%r15), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, -74(%rbp)
	movzwl	(%r15), %ecx
	movw	%cx, -58(%rbp)
	movw	$0, -56(%rbp)
.LBB5_93:
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	movl	-84(%rbp), %ecx         # 4-byte Reload
	je	.LBB5_95
# %bb.94:
	movl	%edi, %eax
	jmp	.LBB5_97
.LBB5_95:
	orl	%ecx, %eax
	orl	%r11d, %r14d
	orl	%eax, %r14d
	orl	%r10d, %ebx
	orl	%ebx, %r13d
	orl	%r14d, %r13d
	orl	%r13d, %r9d
	orw	%r8w, %r9w
	je	.LBB5_125
# %bb.96:
	leaq	-112(%rbp), %rdi
	movq	%rsi, %rbx
	callq	enormlz
	movq	%rbx, %rsi
	cltq
	subq	%rax, %rsi
	movzwl	-78(%rbp), %eax
.LBB5_97:
	testw	%ax, %ax
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	jne	.LBB5_109
# %bb.98:
	cmpw	$0, -76(%rbp)
	jne	.LBB5_108
# %bb.99:
	cmpw	$0, -74(%rbp)
	jne	.LBB5_108
# %bb.100:
	cmpw	$0, -72(%rbp)
	jne	.LBB5_108
# %bb.101:
	cmpw	$0, -70(%rbp)
	jne	.LBB5_108
# %bb.102:
	cmpw	$0, -68(%rbp)
	jne	.LBB5_108
# %bb.103:
	cmpw	$0, -66(%rbp)
	jne	.LBB5_108
# %bb.104:
	cmpw	$0, -64(%rbp)
	jne	.LBB5_108
# %bb.105:
	cmpw	$0, -62(%rbp)
	jne	.LBB5_108
# %bb.106:
	cmpw	$0, -60(%rbp)
	jne	.LBB5_108
# %bb.107:
	cmpw	$0, -58(%rbp)
	je	.LBB5_125
.LBB5_108:
	leaq	-80(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, -192(%rbp)        # 8-byte Folded Spill
	movzwl	-78(%rbp), %eax
.LBB5_109:
	movzwl	-80(%rbp), %ecx
	movw	%cx, 52(%rbx)
	movw	%ax, 54(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 56(%rbx)
	movl	$0, 72(%rbx)
	movw	$0, 76(%rbx)
	leaq	-88(%rbp), %r8
	movl	$0, -180(%rbp)          # 4-byte Folded Spill
	movl	$3, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -176(%rbp)          # 4-byte Folded Spill
	xorl	%ebx, %ebx
	movl	$0, -172(%rbp)          # 4-byte Folded Spill
	movl	$0, -168(%rbp)          # 4-byte Folded Spill
	movl	$0, -164(%rbp)          # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	jmp	.LBB5_112
	.p2align	4, 0x90
.LBB5_110:                              #   in Loop: Header=BB5_112 Depth=1
	movzwl	-236(%rbp), %r9d
	movzwl	-234(%rbp), %r13d
	movzwl	-232(%rbp), %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movzwl	-230(%rbp), %r14d
	movzwl	-228(%rbp), %r12d
	movzwl	-226(%rbp), %r8d
	movzwl	-224(%rbp), %eax
	movzwl	-222(%rbp), %edx
	movzwl	-220(%rbp), %ecx
	movzwl	-218(%rbp), %esi
	movzwl	-216(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movzwl	76(%r10), %edi
	addq	%rbx, %rdi
	movq	%rdi, %rbx
	shrq	$16, %rbx
	addq	%rsi, %rbx
	movw	%di, 76(%r10)
	movzwl	74(%r10), %esi
	addq	%rbx, %rsi
	movw	%si, 74(%r10)
	movzwl	72(%r10), %ebx
	addq	%rcx, %rbx
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%esi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rbx
	movw	%bx, 72(%r10)
	movzwl	70(%r10), %esi
	addq	%rdx, %rsi
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rsi
	movw	%si, 70(%r10)
	movzwl	68(%r10), %ecx
	addq	%rax, %rcx
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rcx
	movw	%cx, 68(%r10)
	movzwl	66(%r10), %edx
	addq	%r8, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rdx
	movw	%dx, 66(%r10)
	movzwl	64(%r10), %eax
	addq	%r12, %rax
	movq	%rdx, %r11
	movl	%edx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rax
	movw	%ax, 64(%r10)
	movzwl	62(%r10), %edx
	addq	%r14, %rdx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rdx
	movw	%dx, 62(%r10)
	movzwl	60(%r10), %ebx
	addq	-152(%rbp), %rbx        # 8-byte Folded Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rbx
	movw	%bx, 60(%r10)
	movzwl	58(%r10), %eax
	addq	%r13, %rax
	movl	%ebx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rax
	movw	%ax, 58(%r10)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	shrl	$16, %ecx
	addw	56(%r10), %r9w
	andl	$1, %ecx
	addl	%ecx, %r9d
	movl	%r9d, %eax
	movw	%r9w, 56(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r12d
.LBB5_111:                              #   in Loop: Header=BB5_112 Depth=1
	movq	-272(%rbp), %r8         # 8-byte Reload
	addq	$-2, %r8
	movzwl	%di, %ecx
	orl	%ecx, %r12d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movw	%di, 76(%r10)
	movq	-136(%rbp), %r13        # 8-byte Reload
	movw	%r13w, 74(%r10)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movw	%r14w, 72(%r10)
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movw	%cx, 70(%r10)
	movq	%r11, %r15
	movw	%r15w, 68(%r10)
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movw	%dx, 66(%r10)
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movw	%si, 64(%r10)
	movw	%bx, 62(%r10)
	movq	-256(%rbp), %r9         # 8-byte Reload
	movw	%r9w, 60(%r10)
	movw	%ax, 58(%r10)
	movw	$0, 56(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	-84(%rbp), %r11d        # 4-byte Reload
	addl	$1, %r11d
	movl	%eax, %r10d
                                        # kill: def $ax killed $ax killed $eax def $eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movq	%rbx, %rax
                                        # kill: def $bx killed $bx killed $rbx def $ebx
                                        # kill: def $si killed $si killed $rsi def $esi
	movl	%esi, -172(%rbp)        # 4-byte Spill
                                        # kill: def $dx killed $dx killed $rdx def $edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	movq	%r15, %r9
	movl	%r15d, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %r15d
	movl	%r14d, %esi
	movl	%r13d, %edx
                                        # kill: def $di killed $di killed $rdi def $rdi
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	cmpl	$13, %r11d
	je	.LBB5_119
.LBB5_112:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_116 Depth 2
	movzwl	(%r8), %eax
	testq	%rax, %rax
	movq	%r8, -272(%rbp)         # 8-byte Spill
	je	.LBB5_118
# %bb.113:                              #   in Loop: Header=BB5_112 Depth=1
	movl	%r12d, %r15d
	movl	$0, -218(%rbp)
	movl	$12, %ecx
	leaq	-216(%rbp), %rdx
	movq	-200(%rbp), %r10        # 8-byte Reload
	jmp	.LBB5_116
	.p2align	4, 0x90
.LBB5_114:                              #   in Loop: Header=BB5_116 Depth=2
	imulq	%rax, %rdi
	movzwl	%di, %esi
	movzwl	(%rdx), %ebx
	addq	%rsi, %rbx
	leaq	-2(%rdx), %rsi
	movw	%bx, (%rdx)
	shrq	$16, %rbx
	shrq	$16, %rdi
	addq	%rbx, %rdi
	movzwl	-2(%rdx), %ebx
	addq	%rdi, %rbx
	movw	%bx, -2(%rdx)
	shrq	$16, %rbx
.LBB5_115:                              #   in Loop: Header=BB5_116 Depth=2
	movw	%bx, -4(%rdx)
	addq	$-1, %rcx
	movq	%rsi, %rdx
	cmpl	$2, %ecx
	je	.LBB5_110
.LBB5_116:                              #   Parent Loop BB5_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-80(%rbp,%rcx,2), %edi
	testq	%rdi, %rdi
	jne	.LBB5_114
# %bb.117:                              #   in Loop: Header=BB5_116 Depth=2
	leaq	-2(%rdx), %rsi
	xorl	%ebx, %ebx
	jmp	.LBB5_115
	.p2align	4, 0x90
.LBB5_118:                              #   in Loop: Header=BB5_112 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax def $rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%ebx, %ecx
	movl	%eax, %ebx
                                        # kill: def $cx killed $cx killed $ecx def $rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r11d
	movl	$0, %eax
	movl	-164(%rbp), %ecx        # 4-byte Reload
                                        # kill: def $cx killed $cx killed $ecx def $rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r15d, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%esi, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r10        # 8-byte Reload
	jmp	.LBB5_111
.LBB5_119:
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movzwl	52(%rbx), %ecx
	movw	%cx, -80(%rbp)
	movzwl	54(%rbx), %ecx
	movw	%cx, -78(%rbp)
	movw	$0, -76(%rbp)
	movw	%r10w, -74(%rbp)
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movw	%cx, -72(%rbp)
	movw	%ax, -70(%rbp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movw	%ax, -68(%rbp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movw	%ax, -66(%rbp)
	movw	%r9w, -64(%rbp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movw	%ax, -62(%rbp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movw	%ax, -60(%rbp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movw	%ax, -58(%rbp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movw	%ax, -56(%rbp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	leaq	-16382(%rax,%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$64, %r8d
	movq	%rbx, %r9
	callq	emdnorm
	movzwl	-112(%rbp), %ecx
	movzwl	-78(%rbp), %edx
	movl	%edx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	xorl	%esi, %esi
	cmpw	-80(%rbp), %cx
	sete	%sil
	cmovel	%edx, %eax
	addl	$-1, %esi
	movw	%si, -80(%rbp)
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movw	%ax, 18(%rsi)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB5_122
# %bb.120:
	movzwl	-72(%rbp), %ecx
	orw	-74(%rbp), %cx
	orw	-70(%rbp), %cx
	orw	-68(%rbp), %cx
	orw	-66(%rbp), %cx
	orw	-64(%rbp), %cx
	orw	-62(%rbp), %cx
	orw	-60(%rbp), %cx
	orw	-58(%rbp), %cx
	je	.LBB5_123
# %bb.121:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_124
.LBB5_122:
	movzwl	-74(%rbp), %eax
	movw	%ax, 16(%rsi)
	movdqu	-72(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, (%rsi)
	jmp	.LBB5_128
.LBB5_123:
	cmpw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_126
.LBB5_124:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsi)
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
.LBB5_127:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_128
.LBB5_125:
	pxor	%xmm0, %xmm0
	movq	-248(%rbp), %rax        # 8-byte Reload
	movdqu	%xmm0, (%rax)
	movl	$0, 16(%rax)
.LBB5_128:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_126:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsi)
	movw	$0, 16(%rsi)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, 18(%rsi)
	jmp	.LBB5_127
.LBB5_129:
	cmpw	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_10
	jmp	.LBB5_12
.LBB5_130:
	movzwl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -108(%rbp)
	testw	%ax, %ax
	je	.LBB5_154
# %bb.131:
	xorl	%r9d, %r9d
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	jmp	.LBB5_78
.LBB5_132:
	movl	%r8d, %r12d
	movq	%rsi, %rax
	movzwl	16(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	testw	%dx, %dx
	je	.LBB5_155
# %bb.133:
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB5_90
.LBB5_134:
	cmpw	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_22
	jmp	.LBB5_24
.LBB5_135:
	cmpw	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_35
# %bb.136:
	movl	$ezero, %esi
	movq	%r15, %rdi
	callq	ecmp
	testl	%eax, %eax
	je	.LBB5_140
# %bb.137:
	movzwl	18(%r15), %eax
	jmp	.LBB5_35
.LBB5_138:
	cmpw	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_46
# %bb.139:
	movl	$ezero, %esi
	movq	%r12, %rdi
	callq	ecmp
	testl	%eax, %eax
	jne	.LBB5_46
.LBB5_140:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx)
	movl	$2147467264, 16(%rbx)   # imm = 0x7FFFC000
	jmp	.LBB5_128
.LBB5_141:
	cmpw	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_57
.LBB5_142:
	cmpw	$0, 2(%r12)
	jne	.LBB5_153
# %bb.143:
	cmpw	$0, 4(%r12)
	jne	.LBB5_153
# %bb.144:
	cmpw	$0, 6(%r12)
	jne	.LBB5_153
# %bb.145:
	cmpw	$0, 8(%r12)
	jne	.LBB5_153
# %bb.146:
	cmpw	$0, 10(%r12)
	jne	.LBB5_153
# %bb.147:
	cmpw	$0, 12(%r12)
	jne	.LBB5_153
# %bb.148:
	cmpw	$0, 14(%r12)
	jne	.LBB5_153
# %bb.149:
	xorl	%ecx, %ecx
	cmpw	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_158
	jmp	.LBB5_157
.LBB5_150:
	cmpw	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_68
# %bb.151:
	movzwl	%si, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB5_156
# %bb.152:
	cmpw	$0, (%r12)
	je	.LBB5_142
.LBB5_153:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB5_158
.LBB5_154:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -106(%rbp)
	movl	$0, -90(%rbp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB5_80
.LBB5_155:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	jmp	.LBB5_91
.LBB5_156:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_157:
	shrl	$15, %eax
	movl	%eax, %ecx
.LBB5_158:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%r15), %eax
	movl	%eax, %edx
	andl	$32767, %edx            # imm = 0x7FFF
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB5_168
# %bb.159:
	cmpw	$0, (%r15)
	jne	.LBB5_167
# %bb.160:
	cmpw	$0, 2(%r15)
	jne	.LBB5_167
# %bb.161:
	cmpw	$0, 4(%r15)
	jne	.LBB5_167
# %bb.162:
	cmpw	$0, 6(%r15)
	jne	.LBB5_167
# %bb.163:
	cmpw	$0, 8(%r15)
	jne	.LBB5_167
# %bb.164:
	cmpw	$0, 10(%r15)
	jne	.LBB5_167
# %bb.165:
	cmpw	$0, 12(%r15)
	jne	.LBB5_167
# %bb.166:
	cmpw	$0, 14(%r15)
	je	.LBB5_171
.LBB5_167:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	jmp	.LBB5_170
.LBB5_168:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_169:
	shrl	$15, %eax
	movl	%eax, %edx
.LBB5_170:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx)
	movw	$0, 16(%rbx)
	movl	$32767, %eax            # imm = 0x7FFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovel	%eax, %ecx
	movw	%cx, 18(%rbx)
	jmp	.LBB5_128
.LBB5_171:
	xorl	%edx, %edx
	cmpw	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_170
	jmp	.LBB5_169
.Lfunc_end5:
	.size	emul, .Lfunc_end5-emul
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function eiremain
	.type	eiremain,@function
eiremain:                               # @eiremain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzwl	2(%rdi), %r13d
	callq	enormlz
	cltq
	subq	%rax, %r13
	movzwl	2(%rbx), %r12d
	movq	%rbx, %rdi
	callq	enormlz
	cltq
	subq	%rax, %r12
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 52(%r14)
	movq	$0, 68(%r14)
	movw	$0, 76(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -56(%rbp)         # 8-byte Spill
	cmpq	%r13, %r12
	jge	.LBB6_2
.LBB6_1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	movq	%r14, %r9
	callq	emdnorm
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_2:
	movzwl	4(%rbx), %eax
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_3:                                #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	76(%r14), %ecx
	movzwl	74(%r14), %edx
	movl	%edx, %esi
	shldw	$1, %cx, %si
	movw	%si, 74(%r14)
	movzwl	72(%r14), %esi
	shrdw	$15, %si, %dx
	movw	%dx, 72(%r14)
	movdqu	56(%r14), %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %esi, %xmm1
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 56(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%ax, %eax
	leal	(%rax,%rcx,2), %eax
	movw	%ax, 76(%r14)
	movzwl	24(%rbx), %eax
	movl	%eax, %ecx
	addl	%eax, %ecx
	movw	%cx, 24(%rbx)
	movzwl	22(%rbx), %ecx
	movl	%ecx, %edx
	shldw	$1, %ax, %dx
	movw	%dx, 22(%rbx)
	movzwl	20(%rbx), %eax
	shrdw	$15, %ax, %cx
	movw	%cx, 20(%rbx)
	movdqu	4(%rbx), %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %eax, %xmm1
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movd	%xmm0, %eax
	cmpq	-56(%rbp), %r12         # 8-byte Folded Reload
	leaq	-1(%r12), %r12
	jle	.LBB6_1
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	movzwl	4(%r15), %ecx
	movl	%eax, %r8d
	cmpw	%ax, %cx
	jne	.LBB6_19
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movzwl	6(%r15), %edi
	movzwl	6(%rbx), %r8d
	cmpw	%r8w, %di
	jne	.LBB6_16
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=1
	movzwl	8(%r15), %edx
	movzwl	8(%rbx), %r8d
	cmpw	%r8w, %dx
	jne	.LBB6_17
# %bb.8:                                #   in Loop: Header=BB6_5 Depth=1
	movzwl	10(%r15), %esi
	movzwl	10(%rbx), %r8d
	cmpw	%r8w, %si
	jne	.LBB6_18
# %bb.9:                                #   in Loop: Header=BB6_5 Depth=1
	movzwl	12(%r15), %ecx
	movzwl	12(%rbx), %r8d
	cmpw	%r8w, %cx
	jne	.LBB6_19
# %bb.10:                               #   in Loop: Header=BB6_5 Depth=1
	movzwl	14(%r15), %r10d
	movzwl	14(%rbx), %r8d
	cmpw	%r8w, %r10w
	jne	.LBB6_22
# %bb.11:                               #   in Loop: Header=BB6_5 Depth=1
	movzwl	16(%r15), %r9d
	movzwl	16(%rbx), %r8d
	cmpw	%r8w, %r9w
	jne	.LBB6_23
# %bb.12:                               #   in Loop: Header=BB6_5 Depth=1
	movzwl	18(%r15), %r11d
	movzwl	18(%rbx), %r8d
	cmpw	%r8w, %r11w
	jne	.LBB6_24
# %bb.13:                               #   in Loop: Header=BB6_5 Depth=1
	movw	%r11w, -48(%rbp)        # 2-byte Spill
	movzwl	20(%r15), %r13d
	movzwl	20(%rbx), %r8d
	cmpw	%r8w, %r13w
	jne	.LBB6_25
# %bb.14:                               #   in Loop: Header=BB6_5 Depth=1
	movw	%r9w, -46(%rbp)         # 2-byte Spill
	movzwl	22(%r15), %r9d
	movzwl	22(%rbx), %r8d
	cmpw	%r8w, %r9w
	jne	.LBB6_23
# %bb.15:                               #   in Loop: Header=BB6_5 Depth=1
	movw	%cx, -44(%rbp)          # 2-byte Spill
	movzwl	24(%r15), %ecx
	movzwl	24(%rbx), %r8d
	movw	%r10w, -42(%rbp)        # 2-byte Spill
	movl	%ecx, %r10d
	cmpw	%r8w, %cx
	movzwl	-48(%rbp), %r11d        # 2-byte Folded Reload
	jne	.LBB6_19
	jmp	.LBB6_21
	.p2align	4, 0x90
.LBB6_16:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%edi, %ecx
	jmp	.LBB6_19
.LBB6_17:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%edx, %ecx
	jmp	.LBB6_19
.LBB6_18:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%esi, %ecx
	.p2align	4, 0x90
.LBB6_19:                               #   in Loop: Header=BB6_5 Depth=1
	cmpw	%r8w, %cx
	ja	.LBB6_3
# %bb.20:                               #   in Loop: Header=BB6_5 Depth=1
	movzwl	24(%rbx), %r10d
	movzwl	24(%r15), %ecx
	movzwl	22(%rbx), %r9d
	movzwl	20(%rbx), %r13d
	movzwl	18(%rbx), %r11d
	movzwl	16(%rbx), %edx
	movw	%dx, -46(%rbp)          # 2-byte Spill
	movzwl	14(%rbx), %edx
	movw	%dx, -42(%rbp)          # 2-byte Spill
	movzwl	12(%rbx), %edx
	movw	%dx, -44(%rbp)          # 2-byte Spill
	movzwl	10(%rbx), %esi
	movzwl	6(%rbx), %edi
	movzwl	8(%rbx), %edx
.LBB6_21:                               #   in Loop: Header=BB6_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r8d
	movzwl	%r10w, %edx
	movzwl	%cx, %ecx
	subq	%rcx, %rdx
	movw	%dx, 24(%rbx)
	movzwl	%r9w, %ecx
	movl	%esi, %r9d
	movl	%edi, %r10d
	movzwl	22(%r15), %edi
	subq	%rdi, %rcx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rcx
	movw	%cx, 22(%rbx)
	movzwl	%r13w, %edx
	movzwl	20(%r15), %esi
	subq	%rsi, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdx
	movw	%dx, 20(%rbx)
	movzwl	%r11w, %ecx
	movzwl	18(%r15), %esi
	subq	%rsi, %rcx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rcx
	movw	%cx, 18(%rbx)
	movzwl	-46(%rbp), %edx         # 2-byte Folded Reload
	movzwl	16(%r15), %esi
	subq	%rsi, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdx
	movw	%dx, 16(%rbx)
	movzwl	-42(%rbp), %ecx         # 2-byte Folded Reload
	movzwl	14(%r15), %esi
	subq	%rsi, %rcx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rcx
	movw	%cx, 14(%rbx)
	movzwl	-44(%rbp), %edx         # 2-byte Folded Reload
	movzwl	12(%r15), %esi
	subq	%rsi, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdx
	movw	%dx, 12(%rbx)
	movzwl	%r9w, %ecx
	movzwl	10(%r15), %esi
	subq	%rsi, %rcx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rcx
	movw	%cx, 10(%rbx)
	movzwl	%r8w, %edx
	movzwl	8(%r15), %esi
	subq	%rsi, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdx
	movw	%dx, 8(%rbx)
	movzwl	%r10w, %ecx
	movzwl	6(%r15), %esi
	subq	%rsi, %rcx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rcx
	movw	%cx, 6(%rbx)
	movzwl	4(%r15), %edx
	subl	%edx, %eax
                                        # kill: def $ecx killed $ecx killed $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	subl	%ecx, %eax
	movw	%ax, 4(%rbx)
	movw	$1, %ax
	jmp	.LBB6_4
.LBB6_22:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%r10d, %ecx
	jmp	.LBB6_19
.LBB6_23:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%r9d, %ecx
	jmp	.LBB6_19
.LBB6_24:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%r11d, %ecx
	jmp	.LBB6_19
.LBB6_25:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%r13d, %ecx
	jmp	.LBB6_19
.Lfunc_end6:
	.size	eiremain, .Lfunc_end6-eiremain
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function enormlz
.LCPI7_0:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.text
	.p2align	4, 0x90
	.type	enormlz,@function
enormlz:                                # @enormlz
# %bb.0:
	movzwl	4(%rdi), %esi
	testw	%si, %si
	je	.LBB7_1
# %bb.16:
	movzwl	%si, %eax
	cmpl	$255, %eax
	jbe	.LBB7_17
# %bb.18:
	shrl	$8, %eax
	movw	%ax, 4(%rdi)
	movdqu	6(%rdi), %xmm0
	movd	%esi, %xmm1
	movdqa	.LCPI7_0(%rip), %xmm2   # xmm2 = [0,65535,65535,65535,65535,65535,65535,65535]
	pandn	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	pslldq	$2, %xmm1               # xmm1 = zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm2, %xmm1
	psllw	$8, %xmm1
	pextrw	$7, %xmm0, %ecx
	psrlw	$8, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 6(%rdi)
	movzwl	22(%rdi), %edx
	movl	%edx, %esi
	shll	$8, %esi
	shrdw	$8, %cx, %dx
	movw	%dx, 22(%rdi)
	movzbl	25(%rdi), %ecx
	orl	%esi, %ecx
	movw	%cx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-8, %r8d
	movl	%eax, %esi
	jmp	.LBB7_19
.LBB7_1:
	movzwl	6(%rdi), %r8d
	xorl	%eax, %eax
	testw	%r8w, %r8w
	js	.LBB7_22
# %bb.2:
	testw	%r8w, %r8w
	jne	.LBB7_7
# %bb.3:
	movdqu	8(%rdi), %xmm0
	movzwl	24(%rdi), %ecx
	movl	$16, %eax
	.p2align	4, 0x90
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movw	$0, 4(%rdi)
	movdqu	%xmm0, 6(%rdi)
	movw	%cx, 22(%rdi)
	movw	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	ja	.LBB7_22
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	movd	%xmm0, %r8d
	addl	$16, %eax
	psrldq	$2, %xmm0               # xmm0 = xmm0[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %ecx, %xmm0
	movl	$0, %ecx
	testw	%r8w, %r8w
	je	.LBB7_4
# %bb.6:                                # %.loopexit2
	addl	$-16, %eax
.LBB7_7:
	movzwl	%r8w, %ecx
	cmpl	$255, %ecx
	ja	.LBB7_8
# %bb.14:
	movzwl	24(%rdi), %edx
	movzwl	20(%rdi), %r9d
	movzwl	22(%rdi), %esi
	movzwl	18(%rdi), %ecx
	movd	%ecx, %xmm0
	movzwl	16(%rdi), %ecx
	movd	%ecx, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movzwl	14(%rdi), %ecx
	movd	%ecx, %xmm0
	movzwl	12(%rdi), %ecx
	movd	%ecx, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movzwl	10(%rdi), %ecx
	movd	%ecx, %xmm0
	movzwl	8(%rdi), %ecx
	movd	%ecx, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	%r8d, %xmm3
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	.p2align	4, 0x90
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	shll	$8, %ecx
	movw	%cx, 24(%rdi)
	shrdw	$8, %si, %dx
	movw	%dx, 22(%rdi)
	shrdw	$8, %r9w, %si
	movw	%si, 20(%rdi)
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %r9d, %xmm1
	psrlw	$8, %xmm1
	psllw	$8, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addl	$8, %eax
	pextrw	$1, %xmm0, %r8d
	movl	%esi, %r9d
	movl	%edx, %esi
	movl	%ecx, %edx
	cmpl	$256, %r8d              # imm = 0x100
	jb	.LBB7_15
# %bb.9:
	movd	%xmm0, %r9d
	testw	%r8w, %r8w
	jns	.LBB7_11
	jmp	.LBB7_22
.LBB7_17:
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB7_19:                               # =>This Inner Loop Header: Depth=1
	testw	%si, %si
	je	.LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_19 Depth=1
	movzwl	%si, %edx
	shrl	%edx
	movw	%dx, 4(%rdi)
	movzwl	6(%rdi), %eax
	shldw	$15, %ax, %si
	movzwl	8(%rdi), %ecx
	movw	%si, 6(%rdi)
	shldw	$15, %cx, %ax
	movw	%ax, 8(%rdi)
	movzwl	10(%rdi), %eax
	shldw	$15, %ax, %cx
	movw	%cx, 10(%rdi)
	movzwl	12(%rdi), %ecx
	shldw	$15, %cx, %ax
	movw	%ax, 12(%rdi)
	movzwl	14(%rdi), %eax
	shldw	$15, %ax, %cx
	movw	%cx, 14(%rdi)
	movzwl	16(%rdi), %ecx
	shldw	$15, %cx, %ax
	movw	%ax, 16(%rdi)
	movzwl	18(%rdi), %eax
	shldw	$15, %ax, %cx
	movw	%cx, 18(%rdi)
	movzwl	20(%rdi), %ecx
	shldw	$15, %cx, %ax
	movw	%ax, 20(%rdi)
	movzwl	22(%rdi), %eax
	shldw	$15, %ax, %cx
	movw	%cx, 22(%rdi)
	movzwl	24(%rdi), %ecx
	shrdw	$1, %ax, %cx
	movw	%cx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r8), %eax
	movl	%edx, %esi
	cmpl	$-144, %r8d
	movl	%eax, %r8d
	jg	.LBB7_19
.LBB7_22:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_20:
	movl	%r8d, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_8:
	xorl	%r9d, %r9d
	testw	%r8w, %r8w
	js	.LBB7_22
.LBB7_11:
	movzwl	24(%rdi), %r10d
	movzwl	20(%rdi), %ecx
	movzwl	22(%rdi), %edx
	movzwl	18(%rdi), %esi
	movd	%esi, %xmm0
	movzwl	16(%rdi), %esi
	movd	%esi, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movzwl	14(%rdi), %esi
	movd	%esi, %xmm0
	movzwl	12(%rdi), %esi
	movd	%esi, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r8d, %xmm1
	movd	%r9d, %xmm0
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movzwl	10(%rdi), %esi
	movd	%esi, %xmm1
	movzwl	8(%rdi), %esi
	movd	%esi, %xmm3
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	.p2align	4, 0x90
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %r8d
	movl	%r10d, %eax
	movl	%ecx, %esi
	movl	%edx, %ecx
	movl	%r10d, %edx
	leal	(%rax,%rax), %r10d
	movw	%r10w, 24(%rdi)
	shrdw	$15, %cx, %dx
	shrdw	$15, %si, %cx
	movw	%dx, 22(%rdi)
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %esi, %xmm1
	movw	%cx, 20(%rdi)
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r8), %eax
	cmpl	$159, %r8d
	ja	.LBB7_22
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	pextrw	$1, %xmm0, %esi
	testw	%si, %si
	jns	.LBB7_12
	jmp	.LBB7_22
.Lfunc_end7:
	.size	enormlz, .Lfunc_end7-enormlz
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function emdnorm
.LCPI8_0:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
.LCPI8_1:
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.text
	.p2align	4, 0x90
	.type	emdnorm,@function
emdnorm:                                # @emdnorm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %r15
	movl	%r8d, %r12d
	movq	%rcx, %r14
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%esi, %r13d
	movq	%rdi, %rbx
	callq	enormlz
	cltq
	subq	%rax, %r14
	cmpl	$145, %eax
	jl	.LBB8_3
# %bb.1:
	cmpq	$32766, %r14            # imm = 0x7FFE
	jg	.LBB8_3
.LBB8_2:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 2(%rbx)
	movq	$0, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_54
.LBB8_3:
	testq	%r14, %r14
	js	.LBB8_4
# %bb.6:
	testl	%r12d, %r12d
	je	.LBB8_49
.LBB8_7:
	movl	4(%r15), %edx
	cmpl	(%r15), %edx
	je	.LBB8_21
# %bb.8:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 26(%r15)
	movq	$0, 42(%r15)
	movw	$0, 50(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$11, %r8d
	movl	$11, %esi
	movw	$1, %cx
	movw	$-32768, %r9w           # imm = 0x8000
	movw	$-1, %di
	movl	$12, %eax
	cmpl	$55, %edx
	jle	.LBB8_9
# %bb.12:
	cmpl	$56, %edx
	je	.LBB8_17
# %bb.13:
	cmpl	$64, %edx
	je	.LBB8_16
# %bb.14:
	cmpl	$113, %edx
	jne	.LBB8_20
# %bb.15:
	movl	$10, %r8d
	movw	$-32768, %cx            # imm = 0x8000
	movw	$16384, %r9w            # imm = 0x4000
	movw	$32767, %di             # imm = 0x7FFF
	movl	$10, %eax
	movl	$10, %esi
	jmp	.LBB8_20
.LBB8_4:
	cmpq	$-144, %r14
	jl	.LBB8_2
# %bb.5:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	eshift
	testl	%eax, %eax
	movl	$1, %eax
	cmovnel	%eax, %r13d
	testl	%r12d, %r12d
	jne	.LBB8_7
	jmp	.LBB8_49
.LBB8_9:
	cmpl	$24, %edx
	je	.LBB8_19
# %bb.10:
	cmpl	$53, %edx
	jne	.LBB8_20
# %bb.11:
	movl	$6, %r8d
	movw	$2048, %cx              # imm = 0x800
	movw	$1024, %r9w             # imm = 0x400
	movw	$2047, %di              # imm = 0x7FF
	jmp	.LBB8_18
.LBB8_17:
	movl	$6, %r8d
	movw	$256, %cx               # imm = 0x100
	movw	$128, %r9w
	movw	$255, %di
.LBB8_18:
	movl	$6, %eax
	movl	$6, %esi
	jmp	.LBB8_20
.LBB8_16:
	movl	$6, %r8d
	movl	$6, %esi
	movl	$7, %eax
	jmp	.LBB8_20
.LBB8_19:
	movl	$4, %r8d
	movw	$256, %cx               # imm = 0x100
	movw	$128, %r9w
	movw	$255, %di
	movl	$4, %eax
	movl	$4, %esi
.LBB8_20:
	movl	%eax, 8(%r15)
	movw	%di, 20(%r15)
	movw	%r9w, 22(%r15)
	movw	%cx, 24(%r15)
	movl	%esi, 12(%r15)
	movw	%cx, 26(%r15,%r8,2)
	movl	%edx, (%r15)
.LBB8_21:
	testq	%r14, %r14
	setg	%al
	cmpl	$144, %edx
	sete	%r8b
	orb	%al, %r8b
	jne	.LBB8_23
# %bb.22:
	movzwl	24(%rbx), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	orl	%ecx, %r13d
	movzwl	4(%rbx), %ecx
	movd	%ecx, %xmm0
	shrl	%ecx
	movw	%cx, 4(%rbx)
	movdqu	6(%rbx), %xmm1
	movdqa	%xmm1, %xmm2
	psrlw	$1, %xmm2
	movdqa	.LCPI8_0(%rip), %xmm3   # xmm3 = [0,65535,65535,65535,65535,65535,65535,65535]
	pandn	%xmm0, %xmm3
	pextrw	$7, %xmm1, %ecx
	pslldq	$2, %xmm1               # xmm1 = zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm3, %xmm1
	psllw	$15, %xmm1
	por	%xmm2, %xmm1
	movdqu	%xmm1, 6(%rbx)
	movzwl	22(%rbx), %esi
	shldw	$15, %si, %cx
	movw	%cx, 22(%rbx)
	shrdw	$1, %si, %ax
	movw	%ax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_23:
	movl	8(%r15), %esi
	movl	20(%r15), %eax
	movslq	%esi, %r10
	movzwl	(%rbx,%r10,2), %ecx
	movl	%eax, %edi
	andl	%ecx, %edi
	cmpl	$143, %edx
	jg	.LBB8_38
# %bb.24:
	cmpl	$11, %esi
	jg	.LBB8_38
# %bb.25:
	cmpq	$10, %r10
	movl	$11, %esi
	cmovgq	%r10, %rsi
	subq	%r10, %rsi
	addq	$1, %rsi
	cmpq	$16, %rsi
	jae	.LBB8_27
# %bb.26:
	movq	%r10, %rdx
	jmp	.LBB8_35
.LBB8_27:
	movq	%rsi, %rdx
	andq	$-16, %rdx
	movzwl	%di, %eax
	movd	%eax, %xmm0
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	andl	$1, %r9d
	testq	%rcx, %rcx
	je	.LBB8_28
# %bb.29:
	leaq	(%rbx,%r10,2), %rdi
	addq	$50, %rdi
	movq	%r9, %rcx
	subq	%rax, %rcx
	pxor	%xmm2, %xmm2
	xorl	%eax, %eax
	movdqa	.LCPI8_1(%rip), %xmm3   # xmm3 = [1,1,1,1,1,1,1,1]
	movdqa	%xmm0, %xmm5
	pxor	%xmm4, %xmm4
	.p2align	4, 0x90
.LBB8_30:                               # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi,%rax,2), %xmm6
	movdqu	-32(%rdi,%rax,2), %xmm7
	movdqu	-16(%rdi,%rax,2), %xmm0
	movdqu	(%rdi,%rax,2), %xmm1
	pcmpeqw	%xmm2, %xmm6
	pandn	%xmm3, %xmm6
	por	%xmm5, %xmm6
	pcmpeqw	%xmm2, %xmm7
	pandn	%xmm3, %xmm7
	por	%xmm4, %xmm7
	movdqu	%xmm2, -48(%rdi,%rax,2)
	movdqu	%xmm2, -32(%rdi,%rax,2)
	pcmpeqw	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	por	%xmm6, %xmm0
	pcmpeqw	%xmm2, %xmm1
	pandn	%xmm3, %xmm1
	por	%xmm7, %xmm1
	movdqu	%xmm2, -16(%rdi,%rax,2)
	movdqu	%xmm2, (%rdi,%rax,2)
	addq	$32, %rax
	movdqa	%xmm0, %xmm5
	movdqa	%xmm1, %xmm4
	addq	$2, %rcx
	jne	.LBB8_30
# %bb.31:
	testq	%r9, %r9
	je	.LBB8_33
.LBB8_32:
	addq	%r10, %rax
	movdqu	2(%rbx,%rax,2), %xmm2
	movdqu	18(%rbx,%rax,2), %xmm3
	pxor	%xmm4, %xmm4
	movdqu	%xmm4, 2(%rbx,%rax,2)
	movdqu	%xmm4, 18(%rbx,%rax,2)
	pcmpeqw	%xmm4, %xmm3
	movdqa	.LCPI8_1(%rip), %xmm5   # xmm5 = [1,1,1,1,1,1,1,1]
	pandn	%xmm5, %xmm3
	por	%xmm3, %xmm1
	pcmpeqw	%xmm4, %xmm2
	pandn	%xmm5, %xmm2
	por	%xmm2, %xmm0
.LBB8_33:
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$16, %xmm1
	por	%xmm0, %xmm1
	movd	%xmm1, %edi
	cmpq	%rdx, %rsi
	je	.LBB8_37
# %bb.34:
	addq	%r10, %rdx
.LBB8_35:
	addq	$-1, %rdx
	.p2align	4, 0x90
.LBB8_36:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpw	$0, 4(%rbx,%rdx,2)
	setne	%al
	orl	%eax, %edi
	movw	$0, 4(%rbx,%rdx,2)
	addq	$1, %rdx
	cmpq	$11, %rdx
	jl	.LBB8_36
.LBB8_37:
	movzwl	20(%r15), %eax
	movzwl	(%rbx,%r10,2), %ecx
.LBB8_38:
	notl	%eax
	andl	%eax, %ecx
	movw	%cx, (%rbx,%r10,2)
	movzwl	22(%r15), %eax
	testw	%di, %ax
	je	.LBB8_44
# %bb.39:
	cmpw	%ax, %di
	jne	.LBB8_43
# %bb.40:
	testl	%r13d, %r13d
	je	.LBB8_41
# %bb.42:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_44
.LBB8_43:
	movzwl	50(%r15), %eax
	movzwl	24(%rbx), %ecx
	addq	%rax, %rcx
	movw	%cx, 24(%rbx)
	shrq	$16, %rcx
	movzwl	48(%r15), %eax
	addq	%rcx, %rax
	movzwl	22(%rbx), %ecx
	addq	%rax, %rcx
	movw	%cx, 22(%rbx)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	46(%r15), %eax
	addq	%rcx, %rax
	movzwl	20(%rbx), %ecx
	addq	%rax, %rcx
	movw	%cx, 20(%rbx)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	44(%r15), %eax
	movzwl	18(%rbx), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, 18(%rbx)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	42(%r15), %eax
	movzwl	16(%rbx), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, 16(%rbx)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	40(%r15), %eax
	movzwl	14(%rbx), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, 14(%rbx)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	38(%r15), %eax
	movzwl	12(%rbx), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, 12(%rbx)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	36(%r15), %eax
	movzwl	10(%rbx), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, 10(%rbx)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	34(%r15), %eax
	movzwl	8(%rbx), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, 8(%rbx)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	32(%r15), %eax
	movzwl	6(%rbx), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, 6(%rbx)
	movzwl	4(%rbx), %eax
	shrl	$16, %edx
	addw	30(%r15), %ax
	andl	$1, %edx
	addl	%edx, %eax
	movw	%ax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_44:
	testb	%r8b, %r8b
	je	.LBB8_46
# %bb.45:
	movzwl	4(%rbx), %eax
	testw	%ax, %ax
	jne	.LBB8_48
	jmp	.LBB8_49
.LBB8_46:
	movzwl	24(%rbx), %eax
	movl	%eax, %ecx
	addl	%eax, %ecx
	movw	%cx, 24(%rbx)
	movzwl	22(%rbx), %ecx
	movl	%ecx, %edx
	shldw	$1, %ax, %dx
	movw	%dx, 22(%rbx)
	movzwl	20(%rbx), %eax
	shrdw	$15, %ax, %cx
	movw	%cx, 20(%rbx)
	movdqu	4(%rbx), %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %eax, %xmm1
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movd	%xmm0, %eax
	testw	%ax, %ax
	je	.LBB8_49
.LBB8_48:
	movzwl	%ax, %ecx
	shrl	%ecx
	movw	%cx, 4(%rbx)
	movdqu	6(%rbx), %xmm0
	movdqa	%xmm0, %xmm1
	psrlw	$1, %xmm1
	movd	%eax, %xmm2
	movdqa	.LCPI8_0(%rip), %xmm3   # xmm3 = [0,65535,65535,65535,65535,65535,65535,65535]
	pandn	%xmm2, %xmm3
	pextrw	$7, %xmm0, %eax
	pslldq	$2, %xmm0               # xmm0 = zero,zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm3, %xmm0
	psllw	$15, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 6(%rbx)
	movzwl	22(%rbx), %ecx
	shldw	$15, %cx, %ax
	movw	%ax, 22(%rbx)
	movzwl	24(%rbx), %eax
	shrdw	$1, %cx, %ax
	movw	%ax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
.LBB8_49:
	movw	$0, 24(%rbx)
	cmpq	$32767, %r14            # imm = 0x7FFF
	jl	.LBB8_51
# %bb.50:
	movl	$32767, %eax            # imm = 0x7FFF
	movd	%eax, %xmm0
	movdqu	%xmm0, 2(%rbx)
	movl	$0, 18(%rbx)
	movw	$0, 22(%rbx)
	jmp	.LBB8_54
.LBB8_51:
	testq	%r14, %r14
	js	.LBB8_52
# %bb.53:
	movw	%r14w, 2(%rbx)
	jmp	.LBB8_54
.LBB8_52:
	movw	$0, 2(%rbx)
.LBB8_54:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_41:
	movslq	12(%r15), %rax
	movzwl	24(%r15), %ecx
	testw	%cx, (%rbx,%rax,2)
	jne	.LBB8_43
	jmp	.LBB8_44
.LBB8_28:
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	testq	%r9, %r9
	jne	.LBB8_32
	jmp	.LBB8_33
.Lfunc_end8:
	.size	emdnorm, .Lfunc_end8-emdnorm
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function eshift
.LCPI9_0:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.text
	.p2align	4, 0x90
	.type	eshift,@function
eshift:                                 # @eshift
# %bb.0:
	pushq	%rbp
	pushq	%rbx
                                        # kill: def $esi killed $esi def $rsi
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB9_31
# %bb.1:
	js	.LBB9_16
# %bb.2:
	cmpl	$16, %esi
	jge	.LBB9_3
# %bb.8:
	cmpl	$8, %esi
	jge	.LBB9_9
.LBB9_12:
	testl	%esi, %esi
	jg	.LBB9_13
	jmp	.LBB9_15
.LBB9_16:
	cmpl	$-16, %esi
	jg	.LBB9_17
# %bb.18:
	leal	-1(%rsi), %eax
	cmpl	$-33, %eax
	movl	$-32, %r9d
	cmovgl	%eax, %r9d
	subl	%esi, %r9d
	addl	$16, %r9d
	movzwl	24(%rdi), %r11d
	movzwl	22(%rdi), %eax
	movzwl	20(%rdi), %r10d
	movdqu	4(%rdi), %xmm0
	movl	%r9d, %ecx
	shrl	$4, %ecx
	leal	1(%rcx), %edx
	movl	%edx, %r8d
	andl	$1, %r8d
	testl	%ecx, %ecx
	je	.LBB9_19
# %bb.32:
	subl	%r8d, %edx
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	movl	%r11d, %ebp
	.p2align	4, 0x90
.LBB9_33:                               # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r11d
	orl	%ebx, %ebp
	movw	%cx, 24(%rdi)
	orl	%ebp, %ecx
	movw	%r10w, 22(%rdi)
	movdqu	%xmm0, 6(%rdi)
	movw	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	%xmm0, %xmm1
	pslldq	$2, %xmm1               # xmm1 = zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	pextrw	$7, %xmm0, %eax
	movl	%ecx, %ebx
	movw	%r10w, 24(%rdi)
	movw	%ax, 22(%rdi)
	movdqu	%xmm1, 6(%rdi)
	movw	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	pextrw	$6, %xmm0, %r10d
	pslldq	$4, %xmm0               # xmm0 = zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11]
	movl	%eax, %ecx
	movl	%r11d, %ebp
	addl	$-2, %edx
	jne	.LBB9_33
	jmp	.LBB9_20
.LBB9_3:
	movl	%esi, %eax
	notl	%eax
	cmpl	$-33, %eax
	movl	$-32, %ecx
	cmovgl	%eax, %ecx
	leal	(%rcx,%rsi), %eax
	addl	$16, %eax
	andl	$-16, %eax
	movdqu	6(%rdi), %xmm0
	movzwl	22(%rdi), %ecx
	movzwl	24(%rdi), %edx
	movdqu	%xmm0, 4(%rdi)
	movw	%cx, 20(%rdi)
	movw	%dx, 22(%rdi)
	movw	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %esi
	jl	.LBB9_7
# %bb.4:
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %ecx, %xmm1
	movdqu	%xmm1, 4(%rdi)
	movw	%dx, 20(%rdi)
	movl	$0, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %esi
	jl	.LBB9_7
# %bb.5:
	pextrw	$2, %xmm0, %r8d
	pextrw	$3, %xmm0, %r9d
	pextrw	$4, %xmm0, %r10d
	pextrw	$5, %xmm0, %r11d
	pextrw	$6, %xmm0, %ebx
	pextrw	$7, %xmm0, %ebp
	movd	%edx, %xmm0
	movd	%ecx, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	%ebp, %xmm0
	movd	%ebx, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r11d, %xmm0
	movd	%r10d, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	%r9d, %xmm3
	movd	%r8d, %xmm0
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	leal	-16(%rsi), %ecx
	.p2align	4, 0x90
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, 4(%rdi)
	movl	$0, 20(%rdi)
	movw	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	psrldq	$2, %xmm0               # xmm0 = xmm0[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	addl	$-16, %ecx
	cmpl	$31, %ecx
	jg	.LBB9_6
.LBB9_7:
	subl	%eax, %esi
	addl	$-16, %esi
	cmpl	$8, %esi
	jl	.LBB9_12
.LBB9_9:
	movl	%esi, %eax
	notl	%eax
	cmpl	$-17, %eax
	movl	$-16, %ecx
	cmovgl	%eax, %ecx
	leal	(%rsi,%rcx), %r8d
	addl	$8, %r8d
	andl	$-8, %r8d
	movzwl	24(%rdi), %ecx
	movzwl	22(%rdi), %edx
	movzwl	20(%rdi), %eax
	movdqu	4(%rdi), %xmm0
	leal	8(%rsi), %ebx
	.p2align	4, 0x90
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebp
	shll	$8, %ebp
	movw	%bp, 24(%rdi)
	shrdw	$8, %dx, %cx
	shrdw	$8, %ax, %dx
	movw	%cx, 22(%rdi)
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %eax, %xmm1
	movw	%dx, 20(%rdi)
	psrlw	$8, %xmm1
	psllw	$8, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %ebx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%ebp, %ecx
	cmpl	$15, %ebx
	jg	.LBB9_10
# %bb.11:
	subl	%r8d, %esi
	addl	$-8, %esi
	testl	%esi, %esi
	jle	.LBB9_15
.LBB9_13:
	movzwl	24(%rdi), %eax
	movzwl	22(%rdi), %ecx
	movzwl	20(%rdi), %edx
	movdqu	4(%rdi), %xmm0
	addl	$1, %esi
	.p2align	4, 0x90
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rax), %ebp
	movw	%bp, 24(%rdi)
	shrdw	$15, %cx, %ax
	shrdw	$15, %dx, %cx
	movw	%ax, 22(%rdi)
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %edx, %xmm1
	movw	%cx, 20(%rdi)
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ebp, %eax
	cmpl	$1, %esi
	jg	.LBB9_14
	jmp	.LBB9_15
.LBB9_17:
	negl	%esi
	xorl	%ebx, %ebx
	movl	%esi, %r9d
	cmpl	$8, %r9d
	jge	.LBB9_24
	jmp	.LBB9_27
.LBB9_19:
	xorl	%ebx, %ebx
.LBB9_20:
	andl	$-16, %r9d
	testl	%r8d, %r8d
	je	.LBB9_22
# %bb.21:
	movw	%ax, 24(%rdi)
	movw	%r10w, 22(%rdi)
	movdqu	%xmm0, 6(%rdi)
	movw	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	orl	%ebx, %r11d
	movl	%r11d, %ebx
.LBB9_22:
	addl	%r9d, %esi
	movl	$-16, %r9d
	subl	%esi, %r9d
	cmpl	$8, %r9d
	jl	.LBB9_27
.LBB9_24:
	movl	%r9d, %eax
	notl	%eax
	cmpl	$-17, %eax
	movl	$-16, %ecx
	cmovgl	%eax, %ecx
	leal	(%r9,%rcx), %r8d
	addl	$8, %r8d
	andl	$-8, %r8d
	movzwl	24(%rdi), %eax
	movzwl	4(%rdi), %edx
	movdqu	6(%rdi), %xmm0
	movzwl	22(%rdi), %ecx
	leal	8(%r9), %esi
	movdqa	.LCPI9_0(%rip), %xmm1   # xmm1 = [0,65535,65535,65535,65535,65535,65535,65535]
	.p2align	4, 0x90
.LBB9_25:                               # =>This Inner Loop Header: Depth=1
	movzbl	%al, %ebp
	orl	%ebp, %ebx
	movzwl	%dx, %edx
	movd	%edx, %xmm2
	shrl	$8, %edx
	movw	%dx, 4(%rdi)
	movdqa	%xmm1, %xmm3
	pandn	%xmm2, %xmm3
	movdqa	%xmm0, %xmm2
	pslldq	$2, %xmm2               # xmm2 = zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm3, %xmm2
	psllw	$8, %xmm2
	pextrw	$7, %xmm0, %ebp
	psrlw	$8, %xmm0
	por	%xmm2, %xmm0
	shldw	$8, %cx, %bp
	movdqu	%xmm0, 6(%rdi)
	movw	%bp, 22(%rdi)
	shldw	$8, %ax, %cx
	movw	%cx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %esi
	movl	%ecx, %eax
	movl	%ebp, %ecx
	cmpl	$15, %esi
	jg	.LBB9_25
# %bb.26:
	subl	%r8d, %r9d
	addl	$-8, %r9d
.LBB9_27:
	testl	%r9d, %r9d
	jle	.LBB9_30
# %bb.28:
	movzwl	24(%rdi), %eax
	movzwl	4(%rdi), %edx
	movdqu	6(%rdi), %xmm0
	movzwl	22(%rdi), %ecx
	addl	$1, %r9d
	movdqa	.LCPI9_0(%rip), %xmm1   # xmm1 = [0,65535,65535,65535,65535,65535,65535,65535]
	.p2align	4, 0x90
.LBB9_29:                               # =>This Inner Loop Header: Depth=1
	pextrw	$7, %xmm0, %esi
	shldw	$15, %cx, %si
	shldw	$15, %ax, %cx
	andl	$1, %eax
	orl	%eax, %ebx
	movzwl	%dx, %edx
	movd	%edx, %xmm2
	shrl	%edx
	movw	%dx, 4(%rdi)
	movdqa	%xmm0, %xmm3
	psrlw	$1, %xmm3
	movdqa	%xmm1, %xmm4
	pandn	%xmm2, %xmm4
	pslldq	$2, %xmm0               # xmm0 = zero,zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm4, %xmm0
	psllw	$15, %xmm0
	por	%xmm3, %xmm0
	movdqu	%xmm0, 6(%rdi)
	movw	%si, 22(%rdi)
	movw	%cx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r9d
	movl	%ecx, %eax
	movl	%esi, %ecx
	cmpl	$1, %r9d
	jg	.LBB9_29
.LBB9_30:
	movl	$1, %eax
	testw	%bx, %bx
	jne	.LBB9_31
.LBB9_15:
	xorl	%eax, %eax
.LBB9_31:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	eshift, .Lfunc_end9-eshift
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" NaN "
	.size	.L.str, 6

	.type	etens,@object           # @etens
	.section	.rodata,"a",@progbits
	.p2align	4
etens:
	.short	25974                   # 0x6576
	.short	19090                   # 0x4a92
	.short	32842                   # 0x804a
	.short	5439                    # 0x153f
	.short	51532                   # 0xc94c
	.short	38810                   # 0x979a
	.short	35360                   # 0x8a20
	.short	20994                   # 0x5202
	.short	50272                   # 0xc460
	.short	29989                   # 0x7525
	.short	27186                   # 0x6a32
	.short	52818                   # 0xce52
	.short	12954                   # 0x329a
	.short	10446                   # 0x28ce
	.short	42829                   # 0xa74d
	.short	24036                   # 0x5de4
	.short	50493                   # 0xc53d
	.short	15197                   # 0x3b5d
	.short	40587                   # 0x9e8b
	.short	23186                   # 0x5a92
	.short	21100                   # 0x526c
	.short	20686                   # 0x50ce
	.short	61835                   # 0xf18b
	.short	15656                   # 0x3d28
	.short	25869                   # 0x650d
	.short	3095                    # 0xc17
	.short	33141                   # 0x8175
	.short	30086                   # 0x7586
	.short	51574                   # 0xc976
	.short	19784                   # 0x4d48
	.short	40038                   # 0x9c66
	.short	22776                   # 0x58f8
	.short	48208                   # 0xbc50
	.short	23636                   # 0x5c54
	.short	52325                   # 0xcc65
	.short	37318                   # 0x91c6
	.short	42510                   # 0xa60e
	.short	41134                   # 0xa0ae
	.short	58137                   # 0xe319
	.short	18083                   # 0x46a3
	.short	34078                   # 0x851e
	.short	60087                   # 0xeab7
	.short	39166                   # 0x98fe
	.short	36891                   # 0x901b
	.short	56763                   # 0xddbb
	.short	56973                   # 0xde8d
	.short	40441                   # 0x9df9
	.short	60411                   # 0xebfb
	.short	43646                   # 0xaa7e
	.short	17233                   # 0x4351
	.short	565                     # 0x235
	.short	311                     # 0x137
	.short	14001                   # 0x36b1
	.short	13164                   # 0x336c
	.short	50799                   # 0xc66f
	.short	36063                   # 0x8cdf
	.short	33001                   # 0x80e9
	.short	18377                   # 0x47c9
	.short	37818                   # 0x93ba
	.short	16808                   # 0x41a8
	.short	20728                   # 0x50f8
	.short	9723                    # 0x25fb
	.short	51051                   # 0xc76b
	.short	27505                   # 0x6b71
	.short	15551                   # 0x3cbf
	.short	42709                   # 0xa6d5
	.short	65487                   # 0xffcf
	.short	8009                    # 0x1f49
	.short	49784                   # 0xc278
	.short	16595                   # 0x40d3
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	61472                   # 0xf020
	.short	46493                   # 0xb59d
	.short	11120                   # 0x2b70
	.short	44456                   # 0xada8
	.short	40389                   # 0x9dc5
	.short	16489                   # 0x4069
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1024                    # 0x400
	.short	51647                   # 0xc9bf
	.short	36379                   # 0x8e1b
	.short	16436                   # 0x4034
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	8192                    # 0x2000
	.short	48828                   # 0xbebc
	.short	16409                   # 0x4019
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	40000                   # 0x9c40
	.short	16396                   # 0x400c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	51200                   # 0xc800
	.short	16389                   # 0x4005
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	40960                   # 0xa000
	.short	16386                   # 0x4002
	.size	etens, 260

	.type	eone,@object            # @eone
	.p2align	4
eone:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	32768                   # 0x8000
	.short	16383                   # 0x3fff
	.size	eone, 20

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	" -Infinity "
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" Infinity "
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"NaN"
	.size	.L.str.3, 4

	.type	emtens,@object          # @emtens
	.section	.rodata,"a",@progbits
	.p2align	4
emtens:
	.short	8240                    # 0x2030
	.short	53244                   # 0xcffc
	.short	41411                   # 0xa1c3
	.short	33059                   # 0x8123
	.short	11747                   # 0x2de3
	.short	40926                   # 0x9fde
	.short	53966                   # 0xd2ce
	.short	1224                    # 0x4c8
	.short	42717                   # 0xa6dd
	.short	2776                    # 0xad8
	.short	33380                   # 0x8264
	.short	53963                   # 0xd2cb
	.short	62186                   # 0xf2ea
	.short	4820                    # 0x12d4
	.short	18725                   # 0x4925
	.short	11748                   # 0x2de4
	.short	13366                   # 0x3436
	.short	21327                   # 0x534f
	.short	52910                   # 0xceae
	.short	9579                    # 0x256b
	.short	62783                   # 0xf53f
	.short	63128                   # 0xf698
	.short	27603                   # 0x6bd3
	.short	344                     # 0x158
	.short	34726                   # 0x87a6
	.short	49341                   # 0xc0bd
	.short	55895                   # 0xda57
	.short	33445                   # 0x82a5
	.short	41638                   # 0xa2a6
	.short	12981                   # 0x32b5
	.short	59185                   # 0xe731
	.short	1236                    # 0x4d4
	.short	58354                   # 0xe3f2
	.short	54066                   # 0xd332
	.short	28978                   # 0x7132
	.short	53788                   # 0xd21c
	.short	56099                   # 0xdb23
	.short	60978                   # 0xee32
	.short	36937                   # 0x9049
	.short	14682                   # 0x395a
	.short	41534                   # 0xa23e
	.short	21256                   # 0x5308
	.short	65275                   # 0xfefb
	.short	4437                    # 0x1155
	.short	64145                   # 0xfa91
	.short	6457                    # 0x1939
	.short	25466                   # 0x637a
	.short	17189                   # 0x4325
	.short	49201                   # 0xc031
	.short	15532                   # 0x3cac
	.short	57965                   # 0xe26d
	.short	56286                   # 0xdbde
	.short	53341                   # 0xd05d
	.short	46070                   # 0xb3f6
	.short	44156                   # 0xac7c
	.short	58528                   # 0xe4a0
	.short	25788                   # 0x64bc
	.short	18044                   # 0x467c
	.short	56784                   # 0xddd0
	.short	15957                   # 0x3e55
	.short	10784                   # 0x2a20
	.short	25124                   # 0x6224
	.short	18355                   # 0x47b3
	.short	39127                   # 0x98d7
	.short	16163                   # 0x3f23
	.short	59813                   # 0xe9a5
	.short	42297                   # 0xa539
	.short	59943                   # 0xea27
	.short	43135                   # 0xa87f
	.short	16170                   # 0x3f2a
	.short	2907                    # 0xb5b
	.short	19186                   # 0x4af2
	.short	42369                   # 0xa581
	.short	6381                    # 0x18ed
	.short	26590                   # 0x67de
	.short	38074                   # 0x94ba
	.short	17721                   # 0x4539
	.short	7853                    # 0x1ead
	.short	53169                   # 0xcfb1
	.short	16276                   # 0x3f94
	.short	49009                   # 0xbf71
	.short	43443                   # 0xa9b3
	.short	31113                   # 0x7989
	.short	48744                   # 0xbe68
	.short	19502                   # 0x4c2e
	.short	57691                   # 0xe15b
	.short	50253                   # 0xc44d
	.short	38078                   # 0x94be
	.short	59029                   # 0xe695
	.short	16329                   # 0x3fc9
	.short	15693                   # 0x3d4d
	.short	31805                   # 0x7c3d
	.short	14010                   # 0x36ba
	.short	3371                    # 0xd2b
	.short	64962                   # 0xfdc2
	.short	52988                   # 0xcefc
	.short	33889                   # 0x8461
	.short	30481                   # 0x7711
	.short	43980                   # 0xabcc
	.short	16356                   # 0x3fe4
	.short	49493                   # 0xc155
	.short	42152                   # 0xa4a8
	.short	16462                   # 0x404e
	.short	24851                   # 0x6113
	.short	54211                   # 0xd3c3
	.short	25899                   # 0x652b
	.short	57881                   # 0xe219
	.short	5976                    # 0x1758
	.short	53687                   # 0xd1b7
	.short	16369                   # 0x3ff1
	.short	55050                   # 0xd70a
	.short	28835                   # 0x70a3
	.short	2621                    # 0xa3d
	.short	41943                   # 0xa3d7
	.short	15728                   # 0x3d70
	.short	55050                   # 0xd70a
	.short	28835                   # 0x70a3
	.short	2621                    # 0xa3d
	.short	41943                   # 0xa3d7
	.short	16376                   # 0x3ff8
	.short	52429                   # 0xcccd
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	52428                   # 0xcccc
	.short	16379                   # 0x3ffb
	.size	emtens, 260

	.type	ezero,@object           # @ezero
	.p2align	4
ezero:
	.zero	20
	.size	ezero, 20

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"E%d"
	.size	.L.str.4, 4

	.type	bmask,@object           # @bmask
	.section	.rodata.str2.16,"aMS",@progbits,2
	.p2align	4
bmask:
	.short	65535                   # 0xffff
	.short	65534                   # 0xfffe
	.short	65532                   # 0xfffc
	.short	65528                   # 0xfff8
	.short	65520                   # 0xfff0
	.short	65504                   # 0xffe0
	.short	65472                   # 0xffc0
	.short	65408                   # 0xff80
	.short	65280                   # 0xff00
	.short	65024                   # 0xfe00
	.short	64512                   # 0xfc00
	.short	63488                   # 0xf800
	.short	61440                   # 0xf000
	.short	57344                   # 0xe000
	.short	49152                   # 0xc000
	.short	32768                   # 0x8000
	.short	0                       # 0x0
	.size	bmask, 34

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
