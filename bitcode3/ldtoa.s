	.text
	.file	"ldtoa.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _ldtoa_r
.LCPI0_0:
	.short	65535                   # 0xffff
	.short	16383                   # 0x3fff
	.short	0                       # 0x0
	.short	32768                   # 0x8000
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
.LCPI0_1:
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
	subq	$536, %rsp              # imm = 0x218
	movq	%r9, %r14
	movq	%r8, %r12
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movl	%edx, %r13d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	fldt	16(%rbp)
	fstpt	-576(%rbp)
	movabsq	$622770257919, %rax     # imm = 0x90FFFFFFFF
	movq	%rax, -544(%rbp)
	movq	96(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	movl	104(%rbx), %ecx
	movl	%ecx, 8(%rsi)
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 12(%rsi)
	movq	%rbx, %rdi
	callq	_Bfree
	movq	$0, 96(%rbx)
.LBB0_2:
	movq	%rbx, -448(%rbp)        # 8-byte Spill
	leaq	-576(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	callq	e64toe
	movzwl	-270(%rbp), %r8d
	movl	%r8d, %ebx
	andl	$32767, %ebx            # imm = 0x7FFF
	cmpl	$32767, %ebx            # imm = 0x7FFF
	jne	.LBB0_13
# %bb.3:
	cmpw	$0, -288(%rbp)
	jne	.LBB0_14
# %bb.4:
	cmpw	$0, -286(%rbp)
	jne	.LBB0_14
# %bb.5:
	cmpw	$0, -284(%rbp)
	jne	.LBB0_14
# %bb.6:
	cmpw	$0, -282(%rbp)
	jne	.LBB0_14
# %bb.7:
	cmpw	$0, -280(%rbp)
	jne	.LBB0_14
# %bb.8:
	cmpw	$0, -278(%rbp)
	jne	.LBB0_14
# %bb.9:
	cmpw	$0, -276(%rbp)
	jne	.LBB0_14
# %bb.10:
	cmpw	$0, -274(%rbp)
	jne	.LBB0_14
# %bb.11:
	testw	%r8w, %r8w
	jns	.LBB0_14
# %bb.12:
	movl	$1, %edx
	cmpw	$0, -272(%rbp)
	je	.LBB0_15
	jmp	.LBB0_14
.LBB0_13:
	testw	%r8w, %r8w
	js	.LBB0_33
.LBB0_14:
	xorl	%edx, %edx
.LBB0_15:
	movzwl	%bx, %ecx
	xorl	%esi, %esi
	movl	%r15d, %eax
	cmpl	$3, %r15d
	setne	%sil
	movl	%r13d, %edi
	subl	%esi, %edi
	testl	%r15d, %r15d
	movl	$20, %esi
	cmovnel	%edi, %esi
	cmpl	$43, %esi
	movl	$42, %edi
	cmovll	%esi, %edi
	movl	%edi, -416(%rbp)        # 4-byte Spill
	movl	%edx, (%r12)
	movl	-540(%rbp), %edx
	movzwl	-288(%rbp), %r9d
	cmpl	$32767, %ecx            # imm = 0x7FFF
	movl	%edx, -452(%rbp)        # 4-byte Spill
	jne	.LBB0_26
# %bb.16:
	testw	%r9w, %r9w
	movq	%r14, %r12
	jne	.LBB0_25
# %bb.17:
	cmpw	$0, -286(%rbp)
	jne	.LBB0_25
# %bb.18:
	cmpw	$0, -284(%rbp)
	jne	.LBB0_25
# %bb.19:
	cmpw	$0, -282(%rbp)
	jne	.LBB0_25
# %bb.20:
	cmpw	$0, -280(%rbp)
	jne	.LBB0_25
# %bb.21:
	cmpw	$0, -278(%rbp)
	jne	.LBB0_25
# %bb.22:
	cmpw	$0, -276(%rbp)
	jne	.LBB0_25
# %bb.23:
	cmpw	$0, -274(%rbp)
	jne	.LBB0_25
# %bb.24:
	cmpw	$0, -272(%rbp)
	je	.LBB0_262
.LBB0_25:
	leaq	-368(%rbp), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	sprintf
	movl	$9999, %ebx             # imm = 0x270F
	jmp	.LBB0_207
.LBB0_26:
	movdqu	-286(%rbp), %xmm1
	movq	%r14, %r12
.LBB0_27:
	movl	$144, -540(%rbp)
	movw	%r9w, -112(%rbp)
	movdqu	%xmm1, -110(%rbp)
	movswl	%r8w, %edi
	shrl	$15, %edi
	movw	%bx, -94(%rbp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -176(%rbp)
	movl	$1073709056, -160(%rbp) # imm = 0x3FFF8000
	testw	%bx, %bx
	movq	%r13, -440(%rbp)        # 8-byte Spill
	movq	-448(%rbp), %r14        # 8-byte Reload
	je	.LBB0_31
# %bb.28:
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB0_34
# %bb.29:
	testw	%di, %di
	je	.LBB0_48
# %bb.30:
	leaq	-368(%rbp), %rdi
	movl	$.L.str.1, %esi
	jmp	.LBB0_49
.LBB0_31:
	pextrw	$7, %xmm1, %eax
	movl	%r9d, %ecx
	orl	%eax, %ecx
	pextrw	$6, %xmm1, %eax
	pextrw	$5, %xmm1, %edx
	orl	%eax, %edx
	orl	%ecx, %edx
	pextrw	$4, %xmm1, %eax
	pextrw	$3, %xmm1, %ecx
	pextrw	$2, %xmm1, %esi
	orl	%eax, %ecx
	orl	%ecx, %esi
	pextrw	$1, %xmm1, %eax
	orl	%edx, %esi
	orl	%esi, %eax
	movd	%xmm1, %ecx
	orw	%ax, %cx
	jne	.LBB0_36
# %bb.32:
	movl	%edi, -428(%rbp)        # 4-byte Spill
	movl	%r15d, -244(%rbp)       # 4-byte Spill
	movq	%r12, -464(%rbp)        # 8-byte Spill
	jmp	.LBB0_47
.LBB0_33:
	movl	$1, %edx
	jmp	.LBB0_15
.LBB0_34:
	pextrw	$7, %xmm1, %eax
	testw	%ax, %ax
	js	.LBB0_36
# %bb.35:
	leaq	-368(%rbp), %rdi
	movl	$.L.str.3, %esi
	jmp	.LBB0_49
.LBB0_36:
	movdqa	%xmm1, -240(%rbp)       # 16-byte Spill
	movl	%r9d, %r13d
	movl	%edi, -428(%rbp)        # 4-byte Spill
	leaq	-112(%rbp), %rsi
	movl	$eone, %edi
	callq	ecmp
	testl	%eax, %eax
	movq	%r12, -464(%rbp)        # 8-byte Spill
	movl	%r15d, -244(%rbp)       # 4-byte Spill
	je	.LBB0_47
# %bb.37:
	js	.LBB0_50
# %bb.38:
	movdqa	-240(%rbp), %xmm1       # 16-byte Reload
	pextrw	$1, %xmm1, %r12d
	pextrw	$2, %xmm1, %r10d
	pextrw	$3, %xmm1, %r14d
	pextrw	$4, %xmm1, %r9d
	pextrw	$5, %xmm1, %edi
	movd	%xmm1, %r11d
	pextrw	$6, %xmm1, %r8d
	movl	%ebx, %esi
	testw	%si, %si
	movl	%r13d, %eax
	je	.LBB0_135
# %bb.39:
	movw	$0, -80(%rbp)
	movw	%si, -78(%rbp)
	movw	$0, -76(%rbp)
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, -74(%rbp)
	movw	%ax, -58(%rbp)
	movw	$0, -56(%rbp)
	pextrw	$7, %xmm1, %r13d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movzwl	%r13w, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movzwl	%r8w, %edx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	shrl	%edx
                                        # kill: def $ecx killed $ecx killed $rcx
	shll	$15, %ecx
	orl	%edx, %ecx
	movzwl	%di, %esi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi
	shrl	%esi
	shll	$15, %r8d
	orl	%esi, %r8d
	shrdw	$1, %dx, %r8w
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movzwl	%r9w, %edx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	shrl	%edx
	shll	$15, %edi
	orl	%edx, %edi
	shrdw	$1, %si, %di
	movl	%edi, -216(%rbp)        # 4-byte Spill
	movzwl	%r14w, %r15d
	movl	%r15d, %edi
	shrl	%edi
	shll	$15, %r9d
	orl	%edi, %r9d
	shrdw	$1, %dx, %r9w
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movzwl	%r10w, %esi
	movl	%esi, %edx
	shrl	%edx
	shll	$15, %r14d
	orl	%edx, %r14d
	shrdw	$1, %di, %r14w
	movzwl	%r12w, %r8d
	movl	%r8d, %edi
	shrl	%edi
	shll	$15, %r10d
	orl	%edi, %r10d
	shrdw	$1, %dx, %r10w
	movzwl	%r11w, %r9d
	movl	%r9d, %ebx
	shrl	%ebx
	shll	$15, %r12d
	orl	%ebx, %r12d
	shrdw	$1, %di, %r12w
	movl	%r13d, %edi
	andl	$-2, %edi
	shll	$14, %edi
	movzwl	%cx, %edx
	shrl	%edx
	orl	%edi, %edx
	movzwl	%ax, %ecx
	movl	%ecx, %edi
	shrl	%edi
	shll	$15, %r11d
	orl	%edi, %r11d
	shrdw	$1, %bx, %r11w
	shll	$15, %edi
	andl	$1, %eax
	shll	$14, %eax
	orl	%edi, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	movzwl	%r11w, %r11d
	addq	%rcx, %r11
	movzwl	%r12w, %r12d
	addq	%r9, %r12
	movq	%r11, %rax
	shrq	$16, %rax
	addq	%rax, %r12
	movzwl	%r10w, %r9d
	addq	%r8, %r9
	movl	%r12d, %eax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %r9
	movzwl	%r14w, %edi
	addq	%rsi, %rdi
	movl	%r9d, %eax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rdi
	movzwl	-212(%rbp), %esi        # 2-byte Folded Reload
	addq	%r15, %rsi
	movl	%edi, %eax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rsi
	movzwl	-216(%rbp), %ebx        # 2-byte Folded Reload
	addq	-384(%rbp), %rbx        # 8-byte Folded Reload
	movl	%esi, %eax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rbx
	movzwl	-392(%rbp), %eax        # 2-byte Folded Reload
	addq	-408(%rbp), %rax        # 8-byte Folded Reload
	movl	%ebx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rax
	movzwl	%dx, %r8d
	addq	-256(%rbp), %r8         # 8-byte Folded Reload
	movl	%eax, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %r8
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %r13
	shrq	$2, %r13
	addq	%rcx, %r13
	movl	%r8d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %r13
	movd	-400(%rbp), %xmm1       # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movd	%edi, %xmm0
	movd	%esi, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movd	%ebx, %xmm3
	movd	%eax, %xmm0
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movd	%r12d, %xmm2
	movd	%r9d, %xmm3
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	movd	%r11d, %xmm2
	punpcklwd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	punpcklqdq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0]
	testl	$65536, %r13d           # imm = 0x10000
	jne	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	movl	-180(%rbp), %esi        # 4-byte Reload
	addl	$3, %esi
	jmp	.LBB0_43
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_40 Depth=1
	movl	%r13d, %edx
	shrl	%edx
	shldw	$15, %r8w, %r13w
	orl	$32768, %edx            # imm = 0x8000
	movd	%r11d, %xmm1
	movd	%r12d, %xmm2
	punpcklwd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	movd	%r9d, %xmm1
	movd	%edi, %xmm3
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movd	%esi, %xmm1
	movd	%ebx, %xmm2
	punpcklwd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	movd	%eax, %xmm1
	movd	%r8d, %xmm4
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	punpcklqdq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0]
	psllw	$15, %xmm4
	psrlw	$1, %xmm0
	por	%xmm4, %xmm0
	movl	-180(%rbp), %esi        # 4-byte Reload
	addl	$4, %esi
	movl	%r13d, %r8d
	movl	%edx, %r13d
.LBB0_43:                               #   in Loop: Header=BB0_40 Depth=1
	pextrw	$7, %xmm0, %eax
	testw	%ax, %ax
	movq	-240(%rbp), %rdx        # 8-byte Reload
	jne	.LBB0_139
# %bb.44:                               #   in Loop: Header=BB0_40 Depth=1
	movzwl	%si, %eax
	cmpl	$16382, %eax            # imm = 0x3FFE
	ja	.LBB0_139
# %bb.45:                               #   in Loop: Header=BB0_40 Depth=1
	movw	%si, -78(%rbp)
	movw	$0, -76(%rbp)
	movw	%r13w, -74(%rbp)
	movw	%r8w, -72(%rbp)
	movd	%xmm0, %edi
	pextrw	$1, %xmm0, %r9d
	movw	%di, -70(%rbp)
	movw	%r9w, -68(%rbp)
	pextrw	$2, %xmm0, %r14d
	movw	%r14w, -66(%rbp)
	pextrw	$3, %xmm0, %r10d
	movw	%r10w, -64(%rbp)
	pextrw	$4, %xmm0, %r12d
	pextrw	$5, %xmm0, %r11d
	movw	%r12w, -62(%rbp)
	movw	%r11w, -60(%rbp)
	pextrw	$6, %xmm0, %eax
	movw	%ax, -58(%rbp)
	movw	$0, -56(%rbp)
	addl	$1, %edx
	cmpl	$43, %edx
	jb	.LBB0_40
# %bb.46:
	movw	$0, -208(%rbp)
	movw	%si, -206(%rbp)
	movw	$0, -204(%rbp)
	movw	$0, -184(%rbp)
	movw	%ax, -186(%rbp)
	movw	%r11w, -188(%rbp)
	movw	%r12w, -190(%rbp)
	movw	%r10w, -192(%rbp)
	movw	%r14w, -194(%rbp)
	movw	%r9w, -196(%rbp)
	movw	%di, -198(%rbp)
	movw	%r8w, -200(%rbp)
	movw	%r13w, -202(%rbp)
	movl	%esi, %ecx
	orl	$-32768, %ecx           # imm = 0x8000
	cmpw	$0, -80(%rbp)
	cmovel	%esi, %ecx
	movw	%cx, -94(%rbp)
	negl	%edx
	jmp	.LBB0_143
.LBB0_47:
	xorl	%eax, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB0_155
.LBB0_48:
	leaq	-368(%rbp), %rdi
	movl	$.L.str.2, %esi
.LBB0_49:
	xorl	%eax, %eax
	callq	sprintf
	movl	$9999, %ebx             # imm = 0x270F
	jmp	.LBB0_208
.LBB0_50:
	movw	%r13w, -208(%rbp)
	movdqa	-240(%rbp), %xmm0       # 16-byte Reload
	movdqu	%xmm0, -206(%rbp)
	movw	$16526, -190(%rbp)      # imm = 0x408E
	movw	$16, %r12w
	movl	$etens+160, %r14d
	xorl	%eax, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	jmp	.LBB0_53
.LBB0_51:                               #   in Loop: Header=BB0_53 Depth=1
	leaq	-176(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_53 Depth=1
	addq	$20, %r14
	shrl	%r12d
	testw	%r12w, %r12w
	je	.LBB0_129
.LBB0_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_62 Depth 2
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	ediv
	movdqa	-176(%rbp), %xmm0
	movzwl	-160(%rbp), %r8d
	movzwl	-158(%rbp), %edx
	movl	%edx, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movzwl	%r12w, %r12d
	movd	%xmm0, %r11d
	cmpl	$16382, %eax            # imm = 0x3FFE
	ja	.LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=1
	pxor	%xmm1, %xmm1
	movdqa	%xmm1, -80(%rbp)
	movl	$0, -64(%rbp)
	xorl	%eax, %eax
	movdqa	.LCPI0_0(%rip), %xmm2   # xmm2 = [65535,16383,0,32768,0,0,0,0]
	testw	%dx, %dx
	jns	.LBB0_114
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=1
	movl	$16526, %edi            # imm = 0x408E
	movdqa	%xmm0, -80(%rbp)
	movw	%r8w, -64(%rbp)
	movw	%dx, -62(%rbp)
	subl	%eax, %edi
	pxor	%xmm1, %xmm1
	jle	.LBB0_64
# %bb.56:                               #   in Loop: Header=BB0_53 Depth=1
	cmpl	$16, %edi
	movdqa	.LCPI0_0(%rip), %xmm2   # xmm2 = [65535,16383,0,32768,0,0,0,0]
	jl	.LBB0_65
# %bb.57:                               #   in Loop: Header=BB0_53 Depth=1
	leal	-16527(%rax), %r15d
	cmpl	$-33, %r15d
	movl	$-32, %ecx
	cmovlel	%ecx, %r15d
	subl	%eax, %r15d
	addl	$16542, %r15d           # imm = 0x409E
	movl	%r15d, %r9d
	shrl	$4, %r9d
	addl	$1, %r9d
	leaq	-80(%rbp), %rsi
	cmpl	$16, %r9d
	jb	.LBB0_61
# %bb.58:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r9d, %ecx
	movl	%r9d, %r10d
	andl	$15, %r10d
	subq	%r10, %rcx
	leaq	-80(,%rcx,2), %rsi
	addq	%rbp, %rsi
	leal	16(%r15), %edi
	andl	$240, %edi
	subl	%eax, %edi
	movl	%r15d, %ebx
	andl	$-16, %ebx
	subl	%ebx, %edi
	addl	$16510, %edi            # imm = 0x407E
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_59:                               #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm1, -80(%rbp,%rbx,2)
	movdqa	%xmm1, -64(%rbp,%rbx,2)
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	jne	.LBB0_59
# %bb.60:                               #   in Loop: Header=BB0_53 Depth=1
	testl	%r10d, %r10d
	leaq	-176(%rbp), %rbx
	je	.LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=1
	addl	$16, %edi
	.p2align	4, 0x90
.LBB0_62:                               #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%rsi)
	addq	$2, %rsi
	addl	$-16, %edi
	cmpl	$31, %edi
	jg	.LBB0_62
.LBB0_63:                               #   in Loop: Header=BB0_53 Depth=1
	leaq	-80(,%r9,2), %rcx
	addq	%rbp, %rcx
	andl	$-16, %r15d
	addl	%r15d, %eax
	movl	$16510, %edi            # imm = 0x407E
	subl	%eax, %edi
	movzwl	-80(%rbp,%r9,2), %eax
	leaq	-544(%rbp), %r15
	jmp	.LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$1, %xmm0, %edx
	movl	%r11d, %eax
	jmp	.LBB0_116
.LBB0_65:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r11d, %eax
	leaq	-80(%rbp), %rcx
.LBB0_66:                               #   in Loop: Header=BB0_53 Depth=1
	movslq	%edi, %rsi
	andw	bmask(%rsi,%rsi), %ax
	movw	%ax, (%rcx)
	movzwl	-80(%rbp), %eax
	testw	%dx, %dx
	jns	.LBB0_114
.LBB0_67:                               #   in Loop: Header=BB0_53 Depth=1
	movdqu	-78(%rbp), %xmm1
	pextrw	$1, %xmm1, %r15d
	pextrw	$2, %xmm1, %ebx
	pextrw	$3, %xmm1, %r9d
	pextrw	$4, %xmm1, %ecx
	pextrw	$5, %xmm1, %r10d
	pextrw	$6, %xmm1, %r13d
	movd	%xmm1, %edi
	pextrw	$7, %xmm1, %edx
	movl	%edx, -296(%rbp)        # 4-byte Spill
	cmpw	%ax, %r11w
	jne	.LBB0_77
# %bb.68:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$1, %xmm0, %edx
	cmpw	%di, %dx
	jne	.LBB0_77
# %bb.69:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$2, %xmm0, %esi
	cmpw	%r15w, %si
	jne	.LBB0_77
# %bb.70:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$3, %xmm0, %esi
	cmpw	%bx, %si
	jne	.LBB0_77
# %bb.71:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$4, %xmm0, %esi
	cmpw	%r9w, %si
	jne	.LBB0_77
# %bb.72:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$5, %xmm0, %esi
	cmpw	%cx, %si
	jne	.LBB0_77
# %bb.73:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$6, %xmm0, %esi
	cmpw	%r10w, %si
	jne	.LBB0_77
# %bb.74:                               #   in Loop: Header=BB0_53 Depth=1
	pextrw	$7, %xmm0, %esi
	cmpw	%r13w, %si
	jne	.LBB0_77
# %bb.75:                               #   in Loop: Header=BB0_53 Depth=1
	cmpw	-296(%rbp), %r8w        # 2-byte Folded Reload
	jne	.LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r11d, %eax
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	jmp	.LBB0_116
.LBB0_77:                               #   in Loop: Header=BB0_53 Depth=1
	movzwl	-62(%rbp), %edx
	movl	%edx, %r8d
	andl	$32767, %r8d            # imm = 0x7FFF
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB0_80
# %bb.78:                               #   in Loop: Header=BB0_53 Depth=1
	orl	%eax, %edi
	orl	%edi, %r15d
	orl	%ebx, %r9d
	orl	%r15d, %r9d
	orl	%ecx, %r10d
	orl	%r10d, %r13d
	orl	%r9d, %r13d
	orw	-296(%rbp), %r13w       # 2-byte Folded Reload
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	jne	.LBB0_114
# %bb.79:                               #   in Loop: Header=BB0_53 Depth=1
	movw	$0, -80(%rbp)
	jmp	.LBB0_112
.LBB0_80:                               #   in Loop: Header=BB0_53 Depth=1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movq	$0, -352(%rbp)
	movw	$0, -344(%rbp)
	movswl	%dx, %edx
	shrl	$15, %edx
	movw	%dx, -144(%rbp)
	movw	%r8w, -142(%rbp)
	movw	$0, -140(%rbp)
	movdqu	%xmm0, -138(%rbp)
	movw	%ax, -122(%rbp)
	movw	$0, -120(%rbp)
	movdqa	%xmm2, -368(%rbp)
	movl	$16383, %esi            # imm = 0x3FFF
	subq	%r8, %rsi
	jle	.LBB0_84
# %bb.81:                               #   in Loop: Header=BB0_53 Depth=1
	movdqa	%xmm2, -144(%rbp)
	movq	$0, -128(%rbp)
	movw	$0, -120(%rbp)
	movw	%dx, -368(%rbp)
	movw	%r8w, -366(%rbp)
	movw	$0, -364(%rbp)
	movdqu	%xmm0, -362(%rbp)
	movw	%ax, -346(%rbp)
	movw	$0, -344(%rbp)
	negq	%rsi
	movl	%edi, %r11d
	movl	$16383, %edi            # imm = 0x3FFF
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movl	%r11d, %edi
	movl	%ebx, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %ebx
	movl	%edx, %ecx
	movw	$-32768, %r11w          # imm = 0x8000
	movl	%r11d, -256(%rbp)       # 4-byte Spill
	xorl	%edx, %edx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movw	%r8w, -262(%rbp)        # 2-byte Spill
	movl	%ecx, %edx
	movl	%ebx, %ecx
	movw	%dx, -146(%rbp)         # 2-byte Spill
	movw	$16383, %r8w            # imm = 0x3FFF
	movw	$-1, %dx
	movl	%edx, -408(%rbp)        # 4-byte Spill
	movl	$0, %edx
	movl	$0, -180(%rbp)          # 4-byte Folded Spill
	movl	$0, -212(%rbp)          # 4-byte Folded Spill
	movl	$0, -216(%rbp)          # 4-byte Folded Spill
	movl	$0, -384(%rbp)          # 4-byte Folded Spill
	movl	$0, -392(%rbp)          # 4-byte Folded Spill
	xorl	%r11d, %r11d
	testq	%rsi, %rsi
	je	.LBB0_85
.LBB0_82:                               #   in Loop: Header=BB0_53 Depth=1
	cmpq	$-146, %rsi
	jg	.LBB0_100
# %bb.83:                               #   in Loop: Header=BB0_53 Depth=1
	movzwl	%r8w, %eax
	leal	-32768(%rax), %ecx
	cmpw	$0, -408(%rbp)          # 2-byte Folded Reload
	cmovnel	%ecx, %eax
	movw	%ax, -62(%rbp)
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	movl	-256(%rbp), %esi        # 4-byte Reload
	movq	-424(%rbp), %rax        # 8-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movl	%edx, %r9d
	movl	-216(%rbp), %edx        # 4-byte Reload
	movl	-384(%rbp), %edi        # 4-byte Reload
	movl	-392(%rbp), %r10d       # 4-byte Reload
	jmp	.LBB0_110
.LBB0_84:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%edx, -408(%rbp)        # 4-byte Spill
	movw	$-1, -146(%rbp)         # 2-byte Folded Spill
	movw	$16383, -262(%rbp)      # 2-byte Folded Spill
                                        # imm = 0x3FFF
                                        # kill: def $ax killed $ax killed $eax def $rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movl	$0, %eax
                                        # kill: def $di killed $di killed $edi def $edi
	movl	%edi, -260(%rbp)        # 4-byte Spill
	movl	$0, %edi
                                        # kill: def $r15w killed $r15w killed $r15d def $r15d
	movl	%r15d, -180(%rbp)       # 4-byte Spill
                                        # kill: def $bx killed $bx killed $ebx def $ebx
	movl	%ebx, -212(%rbp)        # 4-byte Spill
                                        # kill: def $r9w killed $r9w killed $r9d def $r9d
	movl	%r9d, -216(%rbp)        # 4-byte Spill
                                        # kill: def $cx killed $cx killed $ecx def $ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
                                        # kill: def $r10w killed $r10w killed $r10d def $r10d
	movl	%r10d, -392(%rbp)       # 4-byte Spill
	movl	%r13d, %r11d
	movl	-296(%rbp), %ecx        # 4-byte Reload
                                        # kill: def $cx killed $cx killed $ecx def $ecx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	$0, %r15d
	movl	$0, -412(%rbp)          # 4-byte Folded Spill
	movl	$0, %r9d
	movl	$0, %ecx
	movl	$0, %r10d
	xorl	%r13d, %r13d
	movw	$-32768, %dx            # imm = 0x8000
	movl	%edx, -296(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %edx        # 4-byte Reload
	movq	%r8, -400(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	jne	.LBB0_82
.LBB0_85:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%r11d, -372(%rbp)       # 4-byte Spill
	movl	-296(%rbp), %edx        # 4-byte Reload
	movl	%edi, %ebx
	movl	%edx, %edi
	movl	-256(%rbp), %esi        # 4-byte Reload
	movl	%esi, %r11d
	cmpw	%si, %dx
	movl	%edx, %esi
	movl	%ebx, %edi
	jne	.LBB0_98
# %bb.86:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r13d, %esi
	movl	-372(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %r13w
	jne	.LBB0_98
# %bb.87:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r10d, %esi
	movl	-392(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %r10w
	jne	.LBB0_98
# %bb.88:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%ecx, %esi
	movl	-384(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %cx
	jne	.LBB0_98
# %bb.89:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r9d, %esi
	movl	-216(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %r9w
	jne	.LBB0_98
# %bb.90:                               #   in Loop: Header=BB0_53 Depth=1
	movl	-412(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, %esi
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %bx
	jne	.LBB0_98
# %bb.91:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%r15d, %esi
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %r15w
	jne	.LBB0_98
# %bb.92:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%edi, %esi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %di
	jne	.LBB0_98
# %bb.93:                               #   in Loop: Header=BB0_53 Depth=1
	movl	%eax, %esi
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %r11d
	cmpw	%dx, %ax
	jne	.LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_53 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	cmpw	%ax, -146(%rbp)         # 2-byte Folded Reload
	jne	.LBB0_127
# %bb.95:                               #   in Loop: Header=BB0_53 Depth=1
	testw	%r8w, %r8w
	jne	.LBB0_128
# %bb.96:                               #   in Loop: Header=BB0_53 Depth=1
	cmpw	$0, -256(%rbp)          # 2-byte Folded Reload
	js	.LBB0_128
# %bb.97:                               #   in Loop: Header=BB0_53 Depth=1
	movw	$0, -120(%rbp)
	movq	-424(%rbp), %rax        # 8-byte Reload
	leal	(%rax,%rax), %r13d
	movw	%r13w, -122(%rbp)
	movl	%eax, %r9d
	movl	-260(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r9w
	movl	%eax, %r10d
	movl	-180(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r10w
	movw	%r9w, -124(%rbp)
	movw	%r10w, -126(%rbp)
	movl	%eax, %r11d
	movl	-212(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r11w
	movw	%r11w, -128(%rbp)
	movl	%eax, %r15d
	movl	-216(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %r15w
	movw	%r15w, -130(%rbp)
	movl	%eax, %ebx
	movl	-384(%rbp), %eax        # 4-byte Reload
	shrdw	$15, %ax, %bx
                                        # kill: def $ax killed $ax killed $eax
	movl	-392(%rbp), %ecx        # 4-byte Reload
	shrdw	$15, %cx, %ax
	movw	%bx, -132(%rbp)
	movw	%ax, -134(%rbp)
                                        # kill: def $cx killed $cx killed $ecx
	movl	-372(%rbp), %edi        # 4-byte Reload
	shrdw	$15, %di, %cx
	movw	%cx, -136(%rbp)
	movl	-256(%rbp), %esi        # 4-byte Reload
	movzwl	%si, %edx
	shldw	$1, %di, %si
	shrl	$15, %edx
	movw	%si, -138(%rbp)
	movw	%dx, -140(%rbp)
	xorl	%edx, %edx
	cmpw	$0, -146(%rbp)          # 2-byte Folded Reload
	setne	%dl
	shll	$15, %edx
	movw	%dx, -62(%rbp)
                                        # kill: def $cx killed $cx def $ecx
                                        # kill: def $ax killed $ax def $eax
	movl	%ebx, %edi
	movl	%r15d, %edx
	movl	%r11d, %r8d
	movl	%ecx, %r11d
	movl	%r10d, %ecx
	movl	%eax, %r10d
                                        # kill: def $r9w killed $r9w def $r9d
	movl	%r13d, %eax
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	jmp	.LBB0_110
.LBB0_98:                               #   in Loop: Header=BB0_53 Depth=1
	cmpw	%r11w, %si
	jbe	.LBB0_102
# %bb.99:                               #   in Loop: Header=BB0_53 Depth=1
	movzwl	-146(%rbp), %edx        # 2-byte Folded Reload
	movw	%dx, -144(%rbp)
	movzwl	-262(%rbp), %esi        # 2-byte Folded Reload
	movw	%si, -142(%rbp)
	movw	$0, -140(%rbp)
	movl	-296(%rbp), %esi        # 4-byte Reload
	movw	%si, -138(%rbp)
	movw	%r13w, -136(%rbp)
	movw	%r10w, -134(%rbp)
	movw	%cx, -132(%rbp)
	movw	%r9w, -130(%rbp)
	movl	-412(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -128(%rbp)
	movw	%r15w, -126(%rbp)
	movw	%di, -124(%rbp)
	movw	%ax, -122(%rbp)
	movl	-408(%rbp), %ecx        # 4-byte Reload
	movw	%cx, -368(%rbp)
	movw	%r8w, -366(%rbp)
	movw	$0, -364(%rbp)
	movl	-256(%rbp), %eax        # 4-byte Reload
	movw	%ax, -362(%rbp)
	movl	-372(%rbp), %eax        # 4-byte Reload
	movw	%ax, -360(%rbp)
	movl	-392(%rbp), %eax        # 4-byte Reload
	movw	%ax, -358(%rbp)
	movl	-384(%rbp), %eax        # 4-byte Reload
	movw	%ax, -356(%rbp)
	movl	-216(%rbp), %eax        # 4-byte Reload
	movw	%ax, -354(%rbp)
	movl	-212(%rbp), %eax        # 4-byte Reload
	movw	%ax, -352(%rbp)
	movl	-180(%rbp), %eax        # 4-byte Reload
	movw	%ax, -350(%rbp)
	movl	-260(%rbp), %eax        # 4-byte Reload
	movw	%ax, -348(%rbp)
	movq	-424(%rbp), %rax        # 8-byte Reload
	movw	%ax, -346(%rbp)
	movw	$0, -120(%rbp)
	movw	$0, -344(%rbp)
	movl	%edx, %eax
	jmp	.LBB0_103
.LBB0_100:                              #   in Loop: Header=BB0_53 Depth=1
	leaq	-368(%rbp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	eshift
	movq	-400(%rbp), %r8         # 8-byte Reload
	movl	%eax, %esi
	movzwl	-368(%rbp), %ecx
	movzwl	-144(%rbp), %eax
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	cmpw	%ax, %cx
	je	.LBB0_104
.LBB0_101:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-120(%rbp), %eax
	movzwl	-344(%rbp), %ecx
	subq	%rcx, %rax
	movw	%ax, -120(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-122(%rbp), %ecx
	movzwl	-346(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -122(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-124(%rbp), %eax
	movzwl	-348(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -124(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-126(%rbp), %ecx
	movzwl	-350(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -126(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-128(%rbp), %eax
	movzwl	-352(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -128(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-130(%rbp), %ecx
	movzwl	-354(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -130(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-132(%rbp), %eax
	movzwl	-356(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -132(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-134(%rbp), %ecx
	movzwl	-358(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -134(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-136(%rbp), %eax
	movzwl	-360(%rbp), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movw	%ax, -136(%rbp)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movzwl	-138(%rbp), %ecx
	movzwl	-362(%rbp), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movw	%cx, -138(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	-140(%rbp), %eax
	subl	-364(%rbp), %eax
	subl	%ecx, %eax
	movl	$1, %edx
	jmp	.LBB0_105
.LBB0_102:                              #   in Loop: Header=BB0_53 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	-146(%rbp), %ecx        # 2-byte Folded Reload
                                        # kill: def $cx killed $cx def $ecx
.LBB0_103:                              #   in Loop: Header=BB0_53 Depth=1
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	movq	-400(%rbp), %r8         # 8-byte Reload
	xorl	%esi, %esi
	cmpw	%ax, %cx
	jne	.LBB0_101
.LBB0_104:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-344(%rbp), %eax
	movzwl	-120(%rbp), %ecx
	addq	%rax, %rcx
	movw	%cx, -120(%rbp)
	shrq	$16, %rcx
	movzwl	-346(%rbp), %eax
	addq	%rcx, %rax
	movzwl	-122(%rbp), %ecx
	addq	%rax, %rcx
	movw	%cx, -122(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-348(%rbp), %eax
	addq	%rcx, %rax
	movzwl	-124(%rbp), %ecx
	addq	%rax, %rcx
	movw	%cx, -124(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-350(%rbp), %eax
	movzwl	-126(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -126(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-352(%rbp), %eax
	movzwl	-128(%rbp), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, -128(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-354(%rbp), %eax
	movzwl	-130(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -130(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-356(%rbp), %eax
	movzwl	-132(%rbp), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, -132(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-358(%rbp), %eax
	movzwl	-134(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -134(%rbp)
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-360(%rbp), %eax
	movzwl	-136(%rbp), %ecx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	movw	%cx, -136(%rbp)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movzwl	-362(%rbp), %eax
	movzwl	-138(%rbp), %edx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%dx, -138(%rbp)
	movzwl	-140(%rbp), %eax
	shrl	$16, %edx
	andl	$1, %edx
	addw	-364(%rbp), %ax
	addl	%edx, %eax
	xorl	%edx, %edx
.LBB0_105:                              #   in Loop: Header=BB0_53 Depth=1
	movw	%ax, -140(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%r8, %rcx
	movl	$64, %r8d
	movq	%r15, %r9
	callq	emdnorm
	movzwl	-144(%rbp), %edx
	movzwl	-142(%rbp), %ecx
	movzwl	-138(%rbp), %esi
	movzwl	-136(%rbp), %r11d
.LBB0_106:                              #   in Loop: Header=BB0_53 Depth=1
	movl	%ecx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	testw	%dx, %dx
	cmovel	%ecx, %eax
	movw	%ax, -62(%rbp)
	movzwl	%cx, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	pxor	%xmm0, %xmm0
	jne	.LBB0_109
# %bb.107:                              #   in Loop: Header=BB0_53 Depth=1
	orl	%r11d, %esi
	orw	-134(%rbp), %si
	orw	-132(%rbp), %si
	orw	-130(%rbp), %si
	orw	-128(%rbp), %si
	orw	-126(%rbp), %si
	orw	-124(%rbp), %si
	orw	-122(%rbp), %si
	orw	-120(%rbp), %si
	movdqa	%xmm0, -80(%rbp)
	je	.LBB0_111
# %bb.108:                              #   in Loop: Header=BB0_53 Depth=1
	movl	$2147467264, -64(%rbp)  # imm = 0x7FFFC000
	jmp	.LBB0_112
.LBB0_109:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-134(%rbp), %r10d
	movzwl	-132(%rbp), %edi
	movzwl	-130(%rbp), %edx
	movzwl	-128(%rbp), %r8d
	movzwl	-126(%rbp), %ecx
	movzwl	-124(%rbp), %r9d
	movzwl	-122(%rbp), %eax
.LBB0_110:                              #   in Loop: Header=BB0_53 Depth=1
	movw	%si, -64(%rbp)
	movw	%r11w, -66(%rbp)
	movw	%r10w, -68(%rbp)
	movw	%di, -70(%rbp)
	movw	%dx, -72(%rbp)
	movw	%r8w, -74(%rbp)
	movw	%cx, -76(%rbp)
	movw	%r9w, -78(%rbp)
	movw	%ax, -80(%rbp)
                                        # kill: def $ax killed $ax killed $rax def $eax
	jmp	.LBB0_113
.LBB0_111:                              #   in Loop: Header=BB0_53 Depth=1
	movw	$0, -64(%rbp)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -62(%rbp)
.LBB0_112:                              #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
.LBB0_113:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-176(%rbp), %r11d
	.p2align	4, 0x90
.LBB0_114:                              #   in Loop: Header=BB0_53 Depth=1
	cmpw	%ax, %r11w
	jne	.LBB0_52
# %bb.115:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-78(%rbp), %edx
	cmpw	%dx, -174(%rbp)
	jne	.LBB0_52
.LBB0_116:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-172(%rbp), %ecx
	cmpw	-76(%rbp), %cx
	jne	.LBB0_52
# %bb.117:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-170(%rbp), %esi
	cmpw	-74(%rbp), %si
	jne	.LBB0_52
# %bb.118:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-168(%rbp), %edi
	cmpw	-72(%rbp), %di
	jne	.LBB0_52
# %bb.119:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-166(%rbp), %ebx
	cmpw	-70(%rbp), %bx
	jne	.LBB0_51
# %bb.120:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-164(%rbp), %r8d
	cmpw	-68(%rbp), %r8w
	jne	.LBB0_51
# %bb.121:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-162(%rbp), %r9d
	cmpw	-66(%rbp), %r9w
	jne	.LBB0_51
# %bb.122:                              #   in Loop: Header=BB0_53 Depth=1
	movzwl	-160(%rbp), %r10d
	cmpw	-64(%rbp), %r10w
	jne	.LBB0_51
# %bb.123:                              #   in Loop: Header=BB0_53 Depth=1
	movw	%ax, -208(%rbp)
	movw	%dx, -206(%rbp)
	movw	%cx, -204(%rbp)
	movw	%si, -202(%rbp)
	movw	%di, -200(%rbp)
	movw	%bx, -198(%rbp)
	movw	%r8w, -196(%rbp)
	movw	%r9w, -194(%rbp)
	movw	%r10w, -192(%rbp)
	movzwl	-158(%rbp), %eax
	movw	%ax, -190(%rbp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	addl	%r12d, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
.LBB0_127:                              #   in Loop: Header=BB0_53 Depth=1
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -80(%rbp)
	movl	$0, -64(%rbp)
	xorl	%eax, %eax
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	jmp	.LBB0_113
.LBB0_128:                              #   in Loop: Header=BB0_53 Depth=1
	movq	-400(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movw	%cx, -142(%rbp)
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	leaq	-544(%rbp), %r15
	movl	-256(%rbp), %esi        # 4-byte Reload
	movl	-372(%rbp), %r11d       # 4-byte Reload
	movzwl	-146(%rbp), %edx        # 2-byte Folded Reload
	jmp	.LBB0_106
.LBB0_129:
	movzwl	-94(%rbp), %eax
	addw	-190(%rbp), %ax
	addl	$-16526, %eax           # imm = 0xBF72
	movw	%ax, -190(%rbp)
	movdqa	-208(%rbp), %xmm0
	movdqa	%xmm0, -112(%rbp)
	movzwl	-192(%rbp), %ecx
	movw	%cx, -96(%rbp)
	movw	%ax, -94(%rbp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -176(%rbp)
	movl	$1073709056, -160(%rbp) # imm = 0x3FFF8000
	leaq	-208(%rbp), %rsi
	movl	$etens+240, %edi
	callq	ecmp
	testl	%eax, %eax
	jg	.LBB0_155
# %bb.130:                              # %.preheader11
	movl	$etens, %r12d
	movw	$4096, %bx              # imm = 0x1000
	leaq	-208(%rbp), %r14
	leaq	-544(%rbp), %r15
	leaq	-176(%rbp), %r13
	.p2align	4, 0x90
.LBB0_131:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	ecmp
	movzwl	%bx, %ebx
	testl	%eax, %eax
	jg	.LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_131 Depth=1
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
	movq	-240(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=1
	shrl	%ebx
	testw	%bx, %bx
	je	.LBB0_155
# %bb.134:                              #   in Loop: Header=BB0_131 Depth=1
	addq	$20, %r12
	movl	$etens+240, %edi
	movq	%r14, %rsi
	callq	ecmp
	testl	%eax, %eax
	jle	.LBB0_131
	jmp	.LBB0_155
.LBB0_135:
	pextrw	$7, %xmm1, %r13d
	testw	%r13w, %r13w
	js	.LBB0_144
# %bb.136:                              # %.preheader16
	xorl	%eax, %eax
	leaq	-112(%rbp), %r15
	leaq	-544(%rbp), %r14
	.p2align	4, 0x90
.LBB0_137:                              # =>This Inner Loop Header: Depth=1
	movl	$etens+240, %edi
	movq	%r15, %rsi
	movq	%rax, %rbx
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	emul
	movq	%rbx, %rax
	addl	$-1, %eax
	movzwl	-96(%rbp), %r13d
	testw	%r13w, %r13w
	jns	.LBB0_137
# %bb.138:
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movzwl	-112(%rbp), %eax
	movzwl	-110(%rbp), %r11d
	movzwl	-108(%rbp), %r12d
	movzwl	-106(%rbp), %r10d
	movzwl	-104(%rbp), %r14d
	movzwl	-102(%rbp), %r9d
	movzwl	-100(%rbp), %edi
	movzwl	-98(%rbp), %r8d
	movzwl	-94(%rbp), %ecx
	jmp	.LBB0_147
.LBB0_139:
	movw	$0, -208(%rbp)
	movw	%si, -206(%rbp)
	movw	$0, -204(%rbp)
	movdqu	%xmm0, -198(%rbp)
	movw	%r8w, -200(%rbp)
	movzwl	-78(%rbp), %eax
	movl	%eax, %ecx
	orl	$-32768, %ecx           # imm = 0x8000
	cmpw	$0, -80(%rbp)
	movw	%r13w, -202(%rbp)
	cmovel	%eax, %ecx
	movw	%cx, -94(%rbp)
	negl	%edx
	movzwl	-74(%rbp), %r13d
	movzwl	-72(%rbp), %r8d
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_142
# %bb.140:
	orl	%r13d, %r8d
	orw	-70(%rbp), %r8w
	orw	-68(%rbp), %r8w
	orw	-66(%rbp), %r8w
	orw	-64(%rbp), %r8w
	orw	-62(%rbp), %r8w
	orw	-60(%rbp), %r8w
	orw	-58(%rbp), %r8w
	orw	-56(%rbp), %r8w
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -112(%rbp)
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	je	.LBB0_145
# %bb.141:
	movl	$2147467264, -96(%rbp)  # imm = 0x7FFFC000
	movw	$-16384, %r13w          # imm = 0xC000
	movw	$32767, %cx             # imm = 0x7FFF
	jmp	.LBB0_146
.LBB0_142:
	movzwl	-70(%rbp), %edi
	movzwl	-68(%rbp), %r9d
	movzwl	-66(%rbp), %r14d
	movzwl	-64(%rbp), %r10d
	movzwl	-62(%rbp), %r12d
	movzwl	-60(%rbp), %r11d
	movzwl	-58(%rbp), %eax
.LBB0_143:
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movw	%r13w, -96(%rbp)
	movw	%r8w, -98(%rbp)
	movw	%di, -100(%rbp)
	movw	%r9w, -102(%rbp)
	movw	%r14w, -104(%rbp)
	movw	%r10w, -106(%rbp)
	movw	%r12w, -108(%rbp)
	movw	%r11w, -110(%rbp)
	movw	%ax, -112(%rbp)
	jmp	.LBB0_147
.LBB0_144:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB0_147
.LBB0_145:
	movw	$0, -96(%rbp)
	orl	$32767, %ecx            # imm = 0x7FFF
	movw	%cx, -94(%rbp)
	xorl	%r13d, %r13d
.LBB0_146:
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	xorl	%eax, %eax
.LBB0_147:
	movw	%ax, -80(%rbp)
	movw	%r11w, -78(%rbp)
	movw	%r12w, -76(%rbp)
	movw	%r10w, -74(%rbp)
	movw	%r14w, -72(%rbp)
	movw	%r9w, -70(%rbp)
	movw	%di, -68(%rbp)
	movw	%r8w, -66(%rbp)
	movw	%r13w, -64(%rbp)
	movw	%cx, -62(%rbp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -176(%rbp)
	movl	$1073709056, -160(%rbp) # imm = 0x3FFF8000
	leaq	-80(%rbp), %rsi
	movl	$eone, %edi
	callq	ecmp
	testl	%eax, %eax
	jle	.LBB0_154
# %bb.148:                              # %.preheader14
	movl	$etens, %r12d
	movl	$-4096, %ebx            # imm = 0xF000
	movl	$emtens, %r14d
	leaq	-80(%rbp), %r15
	.p2align	4, 0x90
.LBB0_149:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	ecmp
	testl	%eax, %eax
	js	.LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_149 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	leaq	-544(%rbp), %r13
	movq	%r13, %rcx
	callq	emul
	movq	%r12, %rdi
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%r13, %rcx
	callq	emul
	movq	-240(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	jmp	.LBB0_152
	.p2align	4, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
.LBB0_152:                              #   in Loop: Header=BB0_149 Depth=1
	movq	%rax, -240(%rbp)        # 8-byte Spill
	leal	1(%rbx), %eax
	cmpl	$3, %eax
	jb	.LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_149 Depth=1
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
	jg	.LBB0_149
.LBB0_154:
	leaq	-176(%rbp), %rdi
	leaq	-544(%rbp), %rcx
	movl	$eone, %esi
	movq	%rdi, %rdx
	callq	ediv
.LBB0_155:
	movswl	-158(%rbp), %eax
	movl	%eax, %ecx
	shrl	$15, %ecx
	movw	%cx, -80(%rbp)
	andl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -78(%rbp)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_158
# %bb.156:
	movdqa	-176(%rbp), %xmm0
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
	je	.LBB0_159
# %bb.157:
	movw	$0, -76(%rbp)
	movzwl	-160(%rbp), %edx
	movl	-244(%rbp), %r13d       # 4-byte Reload
	jmp	.LBB0_160
.LBB0_158:
	movw	$0, -76(%rbp)
	movdqu	-174(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -74(%rbp)
	movzwl	-176(%rbp), %r9d
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
	movl	-244(%rbp), %r13d       # 4-byte Reload
	jmp	.LBB0_161
.LBB0_159:
	movzwl	-160(%rbp), %edx
	movw	$0, -76(%rbp)
	testw	%dx, %dx
	movl	-244(%rbp), %r13d       # 4-byte Reload
	je	.LBB0_188
.LBB0_160:
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movw	%dx, -74(%rbp)
	movdqu	%xmm0, -72(%rbp)
	movzwl	-178(%rbp), %esi
	movw	%si, -56(%rbp)
.LBB0_161:
	movw	%cx, -176(%rbp)
	movw	%ax, -174(%rbp)
	movw	$0, -172(%rbp)
	movw	%dx, -170(%rbp)
	movw	%di, -168(%rbp)
	movw	%bx, -166(%rbp)
	movw	%r14w, -164(%rbp)
	movw	%r15w, -162(%rbp)
	movw	%r10w, -160(%rbp)
	movw	%r11w, -158(%rbp)
	movw	%r8w, -156(%rbp)
	movw	%r9w, -154(%rbp)
	movw	$0, -152(%rbp)
	movzwl	-94(%rbp), %eax
	movswl	%ax, %ecx
	shrl	$15, %ecx
	movw	%cx, -80(%rbp)
	andl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -78(%rbp)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_164
# %bb.162:
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
	je	.LBB0_165
# %bb.163:
	movw	$0, -76(%rbp)
	movzwl	-96(%rbp), %esi
	jmp	.LBB0_166
.LBB0_164:
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
	jmp	.LBB0_167
.LBB0_165:
	movzwl	-96(%rbp), %esi
	movw	$0, -76(%rbp)
	testw	%si, %si
	je	.LBB0_189
.LBB0_166:
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
.LBB0_167:
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
	leaq	-176(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-544(%rbp), %rdx
	callq	eiremain
	movzwl	-468(%rbp), %eax
	testw	%ax, %ax
	je	.LBB0_169
# %bb.168:
	movl	%r13d, %r15d
	jmp	.LBB0_173
.LBB0_169:
	leaq	-112(%rbp), %r12
	movl	%r13d, %r15d
	.p2align	4, 0x90
.LBB0_170:                              # =>This Inner Loop Header: Depth=1
	movl	$ezero, %esi
	movq	%r12, %rdi
	callq	ecmp
	testl	%eax, %eax
	je	.LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_170 Depth=1
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
	movl	-112(%rbp), %edx
	movl	%edx, -208(%rbp)
	movdqa	%xmm0, %xmm2
	psrlw	$14, %xmm2
	movdqa	.LCPI0_1(%rip), %xmm3   # xmm3 = [1,1,1,1,1,1,1,1]
	pand	%xmm3, %xmm2
	movw	$0, -184(%rbp)
	shrl	$13, %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	leal	(,%rax,4), %esi
	movw	%si, -186(%rbp)
	andl	$2, %ecx
	leal	(%rcx,%r9,4), %r10d
	orl	%edx, %r10d
	movw	%r10w, -188(%rbp)
	psrlw	$13, %xmm0
	pand	%xmm3, %xmm0
	paddw	%xmm2, %xmm2
	movzwl	%si, %r8d
	movzwl	%ax, %r11d
	pextrw	$7, %xmm1, %r13d
	pextrw	$6, %xmm1, %r14d
	pextrw	$5, %xmm1, %esi
	pextrw	$4, %xmm1, %eax
	pextrw	$3, %xmm1, %ecx
	pextrw	$2, %xmm1, %edx
	pextrw	$1, %xmm1, %edi
	addq	%r8, %r11
	movd	%xmm1, %r8d
	psllw	$2, %xmm1
	por	%xmm2, %xmm1
	por	%xmm0, %xmm1
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
	addq	%rbx, %rsi
	movw	%r14w, -96(%rbp)
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	shrl	$16, %r14d
	andl	$1, %r14d
	addq	%r14, %rsi
	movw	%si, -98(%rbp)
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	shrl	$16, %esi
	pextrw	$4, %xmm1, %ebx
	andl	$1, %esi
	addq	%rbx, %rax
	pextrw	$3, %xmm1, %ebx
	addq	%rsi, %rax
	addq	%rbx, %rcx
	movdqu	%xmm1, -204(%rbp)
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
	addq	%rax, %rdi
	addq	%rdx, %rdi
	movw	%di, -106(%rbp)
	shrl	$16, %edi
	andl	$1, %edi
	movd	%xmm1, %eax
	addl	%r8d, %eax
	addl	%edi, %eax
	movw	%ax, -108(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%r12, %rsi
	leaq	-544(%rbp), %rdx
	callq	eiremain
	movq	-240(%rbp), %rax        # 8-byte Reload
	addl	$-1, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movzwl	-468(%rbp), %eax
	testw	%ax, %ax
	je	.LBB0_170
	jmp	.LBB0_173
.LBB0_172:
	xorl	%eax, %eax
.LBB0_173:
	cmpw	$0, -428(%rbp)          # 2-byte Folded Reload
	movl	$32, %ecx
	movl	$45, %edx
	cmovel	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	$3, %r15d
	movb	%dl, -368(%rbp)
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmovel	%edx, %ecx
	addl	-416(%rbp), %ecx        # 4-byte Folded Reload
	cmpl	$43, %ecx
	movl	$42, %esi
	cmovll	%ecx, %esi
	cmpw	$10, %ax
	jne	.LBB0_176
# %bb.174:
	movw	$11825, -367(%rbp)      # imm = 0x2E31
	testl	%ecx, %ecx
	movq	-440(%rbp), %r13        # 8-byte Reload
	jle	.LBB0_178
# %bb.175:
	leaq	-364(%rbp), %r12
	movb	$48, -365(%rbp)
	addl	$-1, %esi
	addl	$1, %edx
	testl	%esi, %esi
	jns	.LBB0_179
	jmp	.LBB0_177
.LBB0_176:
	leal	48(%rax), %ecx
	movb	%cl, -367(%rbp)
	leaq	-365(%rbp), %r12
	movb	$46, -366(%rbp)
	movq	-440(%rbp), %r13        # 8-byte Reload
	testl	%esi, %esi
	jns	.LBB0_179
.LBB0_177:
	movb	$1, %bl
	jmp	.LBB0_182
.LBB0_178:
	leaq	-365(%rbp), %r12
	addl	$1, %edx
	movq	%r12, %r14
	testl	%esi, %esi
	movl	$0, %esi
	js	.LBB0_206
.LBB0_179:
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movl	%r15d, -244(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	addl	$1, %esi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_180:                              # =>This Inner Loop Header: Depth=1
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
	movl	-112(%rbp), %edx
	movl	%edx, -208(%rbp)
	movdqa	%xmm0, %xmm2
	psrlw	$14, %xmm2
	movdqa	.LCPI0_1(%rip), %xmm3   # xmm3 = [1,1,1,1,1,1,1,1]
	pand	%xmm3, %xmm2
	movw	$0, -184(%rbp)
	shrl	$13, %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	leal	(,%rax,4), %esi
	movw	%si, -186(%rbp)
	andl	$2, %ecx
	leal	(%rcx,%r9,4), %r10d
	orl	%edx, %r10d
	movw	%r10w, -188(%rbp)
	psrlw	$13, %xmm0
	pand	%xmm3, %xmm0
	paddw	%xmm2, %xmm2
	movzwl	%si, %r8d
	movzwl	%ax, %r11d
	pextrw	$7, %xmm1, %r15d
	pextrw	$6, %xmm1, %ebx
	pextrw	$5, %xmm1, %esi
	pextrw	$4, %xmm1, %eax
	pextrw	$3, %xmm1, %ecx
	pextrw	$2, %xmm1, %edx
	pextrw	$1, %xmm1, %r13d
	addq	%r8, %r11
	movd	%xmm1, %r8d
	psllw	$2, %xmm1
	por	%xmm2, %xmm1
	por	%xmm0, %xmm1
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
	pextrw	$6, %xmm1, %edi
	addq	%rdi, %rbx
	movw	%r15w, -94(%rbp)
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shrl	$16, %r15d
	andl	$1, %r15d
	addq	%r15, %rbx
	pextrw	$5, %xmm1, %edi
	addq	%rdi, %rsi
	movw	%bx, -96(%rbp)
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	shrl	$16, %ebx
	andl	$1, %ebx
	addq	%rbx, %rsi
	movw	%si, -98(%rbp)
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	shrl	$16, %esi
	pextrw	$4, %xmm1, %edi
	andl	$1, %esi
	addq	%rdi, %rax
	pextrw	$3, %xmm1, %edi
	addq	%rsi, %rax
	addq	%rdi, %rcx
	movdqu	%xmm1, -204(%rbp)
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
	addq	%rax, %r13
	addq	%rdx, %r13
	movw	%r13w, -106(%rbp)
	shrl	$16, %r13d
	andl	$1, %r13d
	movd	%xmm1, %eax
	addl	%r8d, %eax
	addl	%r13d, %eax
	movw	%ax, -108(%rbp)
	leaq	-176(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-544(%rbp), %rdx
	callq	eiremain
	movzbl	-468(%rbp), %eax
	addb	$48, %al
	movb	%al, (%r12,%r14)
	addq	$1, %r14
	cmpl	%r14d, -296(%rbp)       # 4-byte Folded Reload
	jne	.LBB0_180
# %bb.181:
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r12
	addq	$1, %r12
	movzwl	-468(%rbp), %eax
	xorl	%ebx, %ebx
	movq	-440(%rbp), %r13        # 8-byte Reload
	movl	-244(%rbp), %r15d       # 4-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
.LBB0_182:
	leaq	-1(%r12), %r14
	cmpw	$5, %ax
	jb	.LBB0_206
# %bb.183:
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	jne	.LBB0_192
# %bb.184:
	movzwl	-110(%rbp), %edx
	movl	%edx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	cmpw	$0, -112(%rbp)
	cmovel	%edx, %eax
	movw	%ax, -158(%rbp)
	movzwl	-106(%rbp), %ecx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB0_187
# %bb.185:
	orw	-104(%rbp), %cx
	orw	-102(%rbp), %cx
	orw	-100(%rbp), %cx
	orw	-98(%rbp), %cx
	orw	-96(%rbp), %cx
	orw	-94(%rbp), %cx
	orw	-92(%rbp), %cx
	orw	-90(%rbp), %cx
	orw	-88(%rbp), %cx
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -176(%rbp)
	je	.LBB0_190
# %bb.186:
	movl	$2147467264, -160(%rbp) # imm = 0x7FFFC000
	jmp	.LBB0_191
.LBB0_187:
	movw	%cx, -160(%rbp)
	movdqu	-104(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqa	%xmm0, -176(%rbp)
	jmp	.LBB0_191
.LBB0_188:
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
	jmp	.LBB0_161
.LBB0_189:
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
	jmp	.LBB0_167
.LBB0_190:
	movw	$0, -160(%rbp)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -158(%rbp)
.LBB0_191:
	leaq	-176(%rbp), %rdi
	movl	$ezero, %esi
	callq	ecmp
	testl	%eax, %eax
	movq	-240(%rbp), %rdx        # 8-byte Reload
	je	.LBB0_201
.LBB0_192:
	addq	$-2, %r12
	testb	%bl, %bl
	je	.LBB0_194
# %bb.193:
	movb	$49, (%r12)
	addl	$1, %edx
	jmp	.LBB0_206
.LBB0_194:
	movb	(%r12), %al
.LBB0_195:
	andb	$127, %al
	movq	%r14, %rcx
	cmpb	$46, %al
	je	.LBB0_199
# %bb.196:                              # %.preheader5
	addq	$1, %r12
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB0_197:                              # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %edx
	movb	%dl, -1(%rcx)
	cmpb	$57, %al
	jb	.LBB0_205
# %bb.198:                              #   in Loop: Header=BB0_197 Depth=1
	movb	$48, -1(%rcx)
	movzbl	-2(%rcx), %eax
	addq	$-1, %rcx
	andb	$127, %al
	cmpb	$46, %al
	jne	.LBB0_197
.LBB0_199:
	movb	-2(%rcx), %al
	leal	1(%rax), %edx
	movb	%dl, -2(%rcx)
	cmpb	$57, %al
	jl	.LBB0_205
# %bb.200:
	movq	-240(%rbp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movb	$49, -2(%rcx)
	jmp	.LBB0_206
.LBB0_201:
	testb	%bl, %bl
	jne	.LBB0_206
# %bb.202:
	movb	-2(%r12), %al
	addq	$-2, %r12
	xorl	%ecx, %ecx
	cmpb	$46, %al
	sete	%cl
	movq	%r12, %rdx
	subq	%rcx, %rdx
	testb	$1, (%rdx)
	jne	.LBB0_195
.LBB0_205:
	movq	-240(%rbp), %rdx        # 8-byte Reload
.LBB0_206:
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	movq	%rdx, %rbx
	xorl	%eax, %eax
	callq	sprintf
	movq	-464(%rbp), %r12        # 8-byte Reload
.LBB0_207:
	movq	-448(%rbp), %r14        # 8-byte Reload
.LBB0_208:
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	%eax, -540(%rbp)
	movl	%ebx, -528(%rbp)
	movzwl	-270(%rbp), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	cmpl	$32767, %eax            # imm = 0x7FFF
	movq	-552(%rbp), %rsi        # 8-byte Reload
	jne	.LBB0_226
# %bb.209:
	cmpw	$0, -288(%rbp)
	jne	.LBB0_225
# %bb.210:
	cmpw	$0, -286(%rbp)
	jne	.LBB0_225
# %bb.211:
	cmpw	$0, -284(%rbp)
	jne	.LBB0_218
# %bb.212:
	cmpw	$0, -282(%rbp)
	jne	.LBB0_218
# %bb.213:
	cmpw	$0, -280(%rbp)
	jne	.LBB0_218
# %bb.214:
	cmpw	$0, -278(%rbp)
	jne	.LBB0_218
# %bb.215:
	cmpw	$0, -276(%rbp)
	jne	.LBB0_218
# %bb.216:
	cmpw	$0, -274(%rbp)
	jne	.LBB0_218
# %bb.217:
	cmpw	$0, -272(%rbp)
	je	.LBB0_225
.LBB0_218:
	cmpw	$0, -284(%rbp)
	jne	.LBB0_225
# %bb.219:
	cmpw	$0, -282(%rbp)
	jne	.LBB0_225
# %bb.220:
	cmpw	$0, -280(%rbp)
	jne	.LBB0_225
# %bb.221:
	cmpw	$0, -278(%rbp)
	jne	.LBB0_225
# %bb.222:
	cmpw	$0, -276(%rbp)
	jne	.LBB0_225
# %bb.223:
	cmpw	$0, -274(%rbp)
	jne	.LBB0_225
# %bb.224:
	cmpw	$0, -272(%rbp)
	je	.LBB0_226
.LBB0_225:
	movl	$9999, (%rsi)           # imm = 0x270F
	jmp	.LBB0_234
.LBB0_226:
	addl	$1, %ebx
	movl	%ebx, (%rsi)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_227:                              # =>This Inner Loop Header: Depth=1
	movzbl	-368(%rbp,%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_231
# %bb.228:                              #   in Loop: Header=BB0_227 Depth=1
	cmpb	$46, %cl
	je	.LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_227 Depth=1
	addq	$1, %rax
	jmp	.LBB0_227
	.p2align	4, 0x90
.LBB0_230:                              # =>This Inner Loop Header: Depth=1
	movzbl	-367(%rbp,%rax), %ecx
	movb	%cl, -368(%rbp,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB0_230
	.p2align	4, 0x90
.LBB0_231:                              # =>This Inner Loop Header: Depth=1
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	jle	.LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_231 Depth=1
	cmpb	$69, -368(%rbp,%rax)
	movq	%rcx, %rax
	jne	.LBB0_231
.LBB0_233:
	movb	$0, -367(%rbp,%rcx)
.LBB0_234:
	leaq	-367(%rbp), %rax
	jmp	.LBB0_236
	.p2align	4, 0x90
.LBB0_235:                              #   in Loop: Header=BB0_236 Depth=1
	addq	$1, %rax
.LBB0_236:                              # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ecx
	cmpb	$32, %cl
	je	.LBB0_235
# %bb.237:                              #   in Loop: Header=BB0_236 Depth=1
	cmpb	$45, %cl
	je	.LBB0_235
# %bb.238:
	movb	%cl, -368(%rbp)
	testb	%cl, %cl
	je	.LBB0_242
# %bb.239:                              # %.preheader1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_240:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %edx
	movb	%dl, -367(%rbp,%rcx)
	addq	$1, %rcx
	testb	%dl, %dl
	jne	.LBB0_240
# %bb.241:                              # %.loopexit2
	leaq	(%rcx,%rbp), %rbx
	addq	$-368, %rbx             # imm = 0xFE90
	jmp	.LBB0_243
.LBB0_242:
	leaq	-368(%rbp), %rbx
.LBB0_243:
	movl	$1, %eax
	cmpl	$2, %r15d
	je	.LBB0_245
# %bb.244:
	movl	-528(%rbp), %eax
	movl	-416(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	cltq
.LBB0_245:
	cmpb	$48, -1(%rbx)
	jne	.LBB0_249
# %bb.246:
	leaq	-368(%rbp), %rcx
	.p2align	4, 0x90
.LBB0_247:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %rdx
	jle	.LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_247 Depth=1
	movb	$0, -1(%rbx)
	cmpb	$48, -2(%rbx)
	leaq	-1(%rbx), %rbx
	je	.LBB0_247
.LBB0_249:
	cmpl	$3, %r15d
	jne	.LBB0_252
# %bb.250:
	movl	-416(%rbp), %eax        # 4-byte Reload
	addl	-528(%rbp), %eax
	js	.LBB0_253
# %bb.251:
	movl	(%rsi), %eax
	jmp	.LBB0_254
.LBB0_252:
	addl	$9, %r13d
	jmp	.LBB0_255
.LBB0_253:
	leaq	-368(%rbp), %rbx
	movb	$0, -368(%rbp)
	movl	$0, (%rsi)
	xorl	%eax, %eax
.LBB0_254:
	addl	%eax, %r13d
	addl	$3, %r13d
.LBB0_255:
	movl	$0, 104(%r14)
	xorl	%esi, %esi
	cmpl	$32, %r13d
	jb	.LBB0_259
# %bb.256:                              # %.preheader
	movslq	%r13d, %rax
	movl	$4, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_257:                              # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	addq	$28, %rdx
	cmpq	%rax, %rdx
	jbe	.LBB0_257
# %bb.258:
	movl	%esi, 104(%r14)
.LBB0_259:
	movq	%r14, %rdi
	callq	_Balloc
	movq	%rax, %r15
	movq	%rax, 96(%r14)
	leaq	-368(%rbp), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcpy
	testq	%r12, %r12
	je	.LBB0_261
# %bb.260:
	subq	%r14, %rbx
	movq	%r15, %rax
	addq	%rbx, %rax
	movq	%rax, (%r12)
.LBB0_261:
	movq	%r15, %rax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_262:
	pxor	%xmm1, %xmm1
	jmp	.LBB0_27
.Lfunc_end0:
	.size	_ldtoa_r, .Lfunc_end0-_ldtoa_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function e64toe
	.type	e64toe,@function
e64toe:                                 # @e64toe
# %bb.0:
	pushq	%rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	$0, (%rsp)
	movw	$0, 8(%rsp)
	movzwl	(%rdi), %ecx
	movw	%cx, 10(%rsp)
	movzwl	2(%rdi), %r9d
	movw	%r9w, 12(%rsp)
	movzwl	4(%rdi), %edx
	movw	%dx, 14(%rsp)
	movzwl	6(%rdi), %r8d
	movw	%r8w, 16(%rsp)
	movzwl	8(%rdi), %eax
	movw	%ax, 18(%rsp)
	movl	%eax, %edi
	andw	$32767, %di             # imm = 0x7FFF
	je	.LBB1_3
.LBB1_1:
	movzwl	%di, %edi
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB1_2
# %bb.10:
	orl	%r9d, %ecx
	orw	%dx, %cx
	jne	.LBB1_12
# %bb.11:
	movzwl	%r8w, %ecx
	cmpl	$32768, %ecx            # imm = 0x8000
	jne	.LBB1_12
# %bb.15:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	movw	$0, 16(%rsi)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, 18(%rsi)
	jmp	.LBB1_14
.LBB1_2:
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
	jmp	.LBB1_14
.LBB1_3:
	testw	%r8w, %r8w
	js	.LBB1_1
# %bb.4:
	movzwl	%di, %r10d
	cmpl	$32767, %r10d           # imm = 0x7FFF
	jne	.LBB1_6
# %bb.5:
	movl	%ecx, %r11d
	orl	%r9d, %r11d
	movl	%edx, %ebx
	orl	%r8d, %ebx
	xorl	%ebp, %ebp
	orw	%r11w, %bx
	cmovel	%ebp, %edx
	cmovel	%ebp, %r8d
.LBB1_6:
	leal	(%rcx,%rcx), %r11d
	shrdw	$15, %r9w, %cx
	shrdw	$15, %dx, %r9w
	shldw	$1, %dx, %r8w
	movl	%eax, %edx
	orl	$-32768, %edx           # imm = 0x8000
	testw	%ax, %ax
	cmovsl	%edx, %edi
	movw	%di, 18(%rsi)
	cmpl	$32767, %r10d           # imm = 0x7FFF
	jne	.LBB1_9
# %bb.7:
	orl	%ecx, %r11d
	orl	%r11d, %r9d
	orw	%r8w, %r9w
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	jne	.LBB1_13
# %bb.8:
	movw	$0, 16(%rsi)
	orl	$32767, %edi            # imm = 0x7FFF
	movw	%di, 18(%rsi)
	jmp	.LBB1_14
.LBB1_12:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
.LBB1_13:
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	jmp	.LBB1_14
.LBB1_9:
	movw	%r8w, 16(%rsi)
	movw	%r9w, 14(%rsi)
	movw	%cx, 12(%rsi)
	movw	%r11w, 10(%rsi)
	movw	$0, 8(%rsi)
	movq	$0, (%rsi)
.LBB1_14:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
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
	jne	.LBB2_10
# %bb.1:
	movl	$1, %eax
	cmpw	$0, -32(%rbp)
	jne	.LBB2_10
# %bb.2:
	cmpw	$0, -30(%rbp)
	jne	.LBB2_10
# %bb.3:
	cmpw	$0, -28(%rbp)
	jne	.LBB2_10
# %bb.4:
	cmpw	$0, -26(%rbp)
	jne	.LBB2_10
# %bb.5:
	cmpw	$0, -24(%rbp)
	jne	.LBB2_10
# %bb.6:
	cmpw	$0, -22(%rbp)
	jne	.LBB2_10
# %bb.7:
	cmpw	$0, -20(%rbp)
	jne	.LBB2_10
# %bb.8:
	cmpw	$0, -18(%rbp)
	jne	.LBB2_10
# %bb.9:
	cmpw	$1, -16(%rbp)
	movl	$1, %eax
	adcl	$0, %eax
.LBB2_10:
	addq	$48, %rsp
	popq	%rbp
	retq
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
	jne	.LBB3_10
# %bb.1:
	movl	$-2, %eax
	cmpw	$0, (%rdi)
	jne	.LBB3_54
# %bb.2:
	cmpw	$0, 2(%rdi)
	jne	.LBB3_54
# %bb.3:
	cmpw	$0, 4(%rdi)
	jne	.LBB3_54
# %bb.4:
	cmpw	$0, 6(%rdi)
	jne	.LBB3_54
# %bb.5:
	cmpw	$0, 8(%rdi)
	jne	.LBB3_54
# %bb.6:
	cmpw	$0, 10(%rdi)
	jne	.LBB3_54
# %bb.7:
	cmpw	$0, 12(%rdi)
	jne	.LBB3_54
# %bb.8:
	cmpw	$0, 14(%rdi)
	jne	.LBB3_54
# %bb.9:
	cmpw	$0, 16(%rdi)
	jne	.LBB3_54
.LBB3_10:
	movzwl	18(%rsi), %r9d
	movl	%r9d, %r8d
	andl	$32767, %r8d            # imm = 0x7FFF
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB3_20
# %bb.11:
	movl	$-2, %eax
	cmpw	$0, (%rsi)
	jne	.LBB3_54
# %bb.12:
	cmpw	$0, 2(%rsi)
	jne	.LBB3_54
# %bb.13:
	cmpw	$0, 4(%rsi)
	jne	.LBB3_54
# %bb.14:
	cmpw	$0, 6(%rsi)
	jne	.LBB3_54
# %bb.15:
	cmpw	$0, 8(%rsi)
	jne	.LBB3_54
# %bb.16:
	cmpw	$0, 10(%rsi)
	jne	.LBB3_54
# %bb.17:
	cmpw	$0, 12(%rsi)
	jne	.LBB3_54
# %bb.18:
	cmpw	$0, 14(%rsi)
	jne	.LBB3_54
# %bb.19:
	cmpw	$0, 16(%rsi)
	jne	.LBB3_54
.LBB3_20:
	movzwl	%cx, %eax
	movswl	%r14w, %ebx
	shrl	$15, %ebx
	movw	%bx, 48(%rsp)
	movw	%ax, 50(%rsp)
	cmpl	$32767, %eax            # imm = 0x7FFF
	movl	%ebx, 116(%rsp)         # 4-byte Spill
	jne	.LBB3_33
# %bb.21:
	movzwl	(%rdi), %edx
	movzwl	2(%rdi), %eax
	movl	%edx, %ebp
	orw	%ax, %bp
	movl	%edx, 88(%rsp)          # 4-byte Spill
	jne	.LBB3_29
# %bb.22:
	cmpw	$0, 4(%rdi)
	jne	.LBB3_28
# %bb.23:
	cmpw	$0, 6(%rdi)
	jne	.LBB3_28
# %bb.24:
	cmpw	$0, 8(%rdi)
	jne	.LBB3_28
# %bb.25:
	cmpw	$0, 10(%rdi)
	jne	.LBB3_28
# %bb.26:
	cmpw	$0, 12(%rdi)
	jne	.LBB3_28
# %bb.27:
	cmpw	$0, 14(%rdi)
	je	.LBB3_30
.LBB3_28:
	xorl	%eax, %eax
.LBB3_29:
	movw	$0, 52(%rsp)
	movzwl	16(%rdi), %ebp
	movzwl	14(%rdi), %r11d
	movzwl	12(%rdi), %r10d
	movzwl	10(%rdi), %edx
	movzwl	8(%rdi), %r13d
	movzwl	4(%rdi), %r15d
	movzwl	6(%rdi), %r12d
.LBB3_32:
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
	jmp	.LBB3_34
.LBB3_33:
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
.LBB3_34:
	movzwl	%r8w, %edi
	movswl	%r9w, %r13d
	shrl	$15, %r13d
	movw	%r13w, 16(%rsp)
	movw	%di, 18(%rsp)
	cmpl	$32767, %edi            # imm = 0x7FFF
	movl	%r9d, 112(%rsp)         # 4-byte Spill
	movl	%edx, 88(%rsp)          # 4-byte Spill
	movl	%r11d, 92(%rsp)         # 4-byte Spill
	movl	%r15d, 108(%rsp)        # 4-byte Spill
	movl	%r12d, 104(%rsp)        # 4-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	jne	.LBB3_47
# %bb.35:
	movzwl	(%rsi), %edi
	movzwl	2(%rsi), %ebx
	movl	%edi, 96(%rsp)          # 4-byte Spill
                                        # kill: def $di killed $di killed $edi
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	orw	%bx, %di
	jne	.LBB3_43
# %bb.36:
	cmpw	$0, 4(%rsi)
	jne	.LBB3_42
# %bb.37:
	cmpw	$0, 6(%rsi)
	jne	.LBB3_42
# %bb.38:
	cmpw	$0, 8(%rsi)
	jne	.LBB3_42
# %bb.39:
	cmpw	$0, 10(%rsi)
	jne	.LBB3_42
# %bb.40:
	cmpw	$0, 12(%rsi)
	jne	.LBB3_42
# %bb.41:
	cmpw	$0, 14(%rsi)
	je	.LBB3_44
.LBB3_42:
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
.LBB3_43:
	movw	$0, 20(%rsp)
	movzwl	16(%rsi), %ebx
	movzwl	14(%rsi), %r11d
	movzwl	12(%rsi), %r9d
	movzwl	10(%rsi), %r10d
	movzwl	8(%rsi), %r12d
	movzwl	4(%rsi), %r15d
	movzwl	6(%rsi), %edi
.LBB3_46:
	movw	%bx, 22(%rsp)
	movw	%r11w, 24(%rsp)
	movw	%r9w, 26(%rsp)
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
	jmp	.LBB3_48
.LBB3_47:
	movw	$0, 20(%rsp)
	movdqu	2(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, 22(%rsp)
	movzwl	(%rsi), %edx
	movw	%dx, 38(%rsp)
	pextrw	$7, %xmm0, %ebx
	pextrw	$6, %xmm0, %r11d
	pextrw	$5, %xmm0, %r9d
	pextrw	$4, %xmm0, %r10d
	pextrw	$3, %xmm0, %r12d
	pextrw	$2, %xmm0, %edi
	movw	$0, 40(%rsp)
	pextrw	$1, %xmm0, %r15d
	movd	%xmm0, 12(%rsp)         # 4-byte Folded Spill
.LBB3_48:
	movl	116(%rsp), %esi         # 4-byte Reload
	cmpw	%r13w, %si
	jne	.LBB3_49
# %bb.52:
	xorl	%edx, %edx
	testw	%si, %si
	sete	%sil
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.55:
	movl	%ebp, %eax
	movl	%eax, %ecx
	movl	%ebx, %r8d
	cmpw	%bx, %ax
	jne	.LBB3_53
# %bb.56:
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	movl	%r11d, %r8d
	cmpw	%r11w, %ax
	jne	.LBB3_53
# %bb.57:
	movzwl	58(%rsp), %ecx
	movzwl	26(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.58:
	movzwl	60(%rsp), %ecx
	movzwl	28(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.59:
	movzwl	62(%rsp), %ecx
	movzwl	30(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.60:
	movzwl	64(%rsp), %ecx
	movzwl	32(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.61:
	movzwl	66(%rsp), %ecx
	movzwl	34(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.62:
	movzwl	68(%rsp), %ecx
	movzwl	36(%rsp), %r8d
	cmpw	%r8w, %cx
	jne	.LBB3_53
# %bb.63:
	movzwl	70(%rsp), %ecx
	movzwl	38(%rsp), %r8d
	xorl	%eax, %eax
	cmpw	%r8w, %cx
	je	.LBB3_54
.LBB3_53:
	movb	%sil, %dl
	addl	%edx, %edx
	addl	$-1, %edx
	movl	%edx, %eax
	negl	%eax
	cmpw	%r8w, %cx
	cmoval	%edx, %eax
	jmp	.LBB3_54
.LBB3_49:
	orl	112(%rsp), %r14d        # 4-byte Folded Reload
	andl	$32767, %r14d           # imm = 0x7FFF
	orl	%r14d, %ebp
	movl	92(%rsp), %ecx          # 4-byte Reload
	orl	%ebx, %ecx
	orl	%ebp, %ecx
	movl	100(%rsp), %ebp         # 4-byte Reload
	orl	%r11d, %ebp
	orl	%ebp, %r9d
	orl	%ecx, %r9d
	orl	80(%rsp), %r10d         # 4-byte Folded Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	orl	%r10d, %ecx
	orl	%ecx, %r12d
	orl	%r9d, %r12d
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
	je	.LBB3_50
# %bb.51:
	xorl	%eax, %eax
	testw	%si, %si
	sete	%al
	addl	%eax, %eax
	addl	$-1, %eax
	jmp	.LBB3_54
.LBB3_50:
	xorl	%eax, %eax
.LBB3_54:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_30:
	movzwl	16(%rdi), %ebp
	movw	$0, 52(%rsp)
	testw	%bp, %bp
	je	.LBB3_64
# %bb.31:
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB3_32
.LBB3_44:
	movzwl	16(%rsi), %ebx
	movw	$0, 20(%rsp)
	testw	%bx, %bx
	je	.LBB3_65
# %bb.45:
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	jmp	.LBB3_46
.LBB3_64:
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
	jmp	.LBB3_34
.LBB3_65:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 22(%rsp)
	movl	$0, 38(%rsp)
	xorl	%edx, %edx
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	jmp	.LBB3_48
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
	subq	$328, %rsp              # imm = 0x148
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movzwl	18(%rdi), %r14d
	movl	%r14d, %r15d
	andl	$32767, %r15d           # imm = 0x7FFF
	cmpl	$32767, %r15d           # imm = 0x7FFF
	jne	.LBB4_11
# %bb.1:
	movzwl	(%rbx), %eax
	testw	%ax, %ax
	jne	.LBB4_10
# %bb.2:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_10
# %bb.3:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_10
# %bb.4:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_10
# %bb.5:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_10
# %bb.6:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_10
# %bb.7:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_10
# %bb.8:
	cmpw	$0, 14(%rbx)
	jne	.LBB4_10
# %bb.9:
	cmpw	$0, 16(%rbx)
	je	.LBB4_11
.LBB4_10:
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
	jmp	.LBB4_155
.LBB4_11:
	movzwl	18(%r13), %ecx
	movl	%ecx, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movq	%rax, -160(%rbp)        # 8-byte Spill
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB4_22
# %bb.12:
	movzwl	(%r13), %eax
	testw	%ax, %ax
	jne	.LBB4_21
# %bb.13:
	cmpw	$0, 2(%r13)
	jne	.LBB4_21
# %bb.14:
	cmpw	$0, 4(%r13)
	jne	.LBB4_21
# %bb.15:
	cmpw	$0, 6(%r13)
	jne	.LBB4_21
# %bb.16:
	cmpw	$0, 8(%r13)
	jne	.LBB4_21
# %bb.17:
	cmpw	$0, 10(%r13)
	jne	.LBB4_21
# %bb.18:
	cmpw	$0, 12(%r13)
	jne	.LBB4_21
# %bb.19:
	cmpw	$0, 14(%r13)
	jne	.LBB4_21
# %bb.20:
	cmpw	$0, 16(%r13)
	je	.LBB4_22
.LBB4_21:
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
	jmp	.LBB4_155
.LBB4_22:
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	$ezero, %esi
	movq	%rbx, %rdi
	callq	ecmp
	testl	%eax, %eax
	jne	.LBB4_24
# %bb.23:
	movl	$ezero, %esi
	movq	%r13, %rdi
	callq	ecmp
	testl	%eax, %eax
	je	.LBB4_44
.LBB4_24:
	movzwl	%r15w, %r8d
	movzwl	-160(%rbp), %edx        # 2-byte Folded Reload
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB4_45
# %bb.25:
	cmpw	$0, (%rbx)
	jne	.LBB4_45
# %bb.26:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_45
# %bb.27:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_45
# %bb.28:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_45
# %bb.29:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_45
# %bb.30:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_45
# %bb.31:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_45
# %bb.32:
	cmpw	$0, 14(%rbx)
	jne	.LBB4_45
# %bb.33:
	cmpw	$0, 16(%rbx)
	je	.LBB4_34
.LBB4_45:
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB4_68
# %bb.46:
	cmpw	$0, (%r13)
	jne	.LBB4_68
.LBB4_47:
	cmpw	$0, 2(%r13)
	jne	.LBB4_68
# %bb.48:
	cmpw	$0, 4(%r13)
	jne	.LBB4_68
# %bb.49:
	cmpw	$0, 6(%r13)
	jne	.LBB4_68
# %bb.50:
	cmpw	$0, 8(%r13)
	jne	.LBB4_68
# %bb.51:
	cmpw	$0, 10(%r13)
	jne	.LBB4_68
# %bb.52:
	cmpw	$0, 12(%r13)
	jne	.LBB4_68
# %bb.53:
	cmpw	$0, 14(%r13)
	jne	.LBB4_68
# %bb.54:
	cmpw	$0, 16(%r13)
	je	.LBB4_55
.LBB4_68:
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB4_79
# %bb.69:
	cmpw	$0, (%rbx)
	jne	.LBB4_79
.LBB4_70:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_79
# %bb.71:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_79
# %bb.72:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_79
# %bb.73:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_79
# %bb.74:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_79
# %bb.75:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_79
# %bb.76:
	cmpw	$0, 14(%rbx)
	jne	.LBB4_79
# %bb.77:
	cmpw	$0, 16(%rbx)
	je	.LBB4_78
.LBB4_79:
	movswl	%r14w, %eax
	shrl	$15, %eax
	movw	%ax, -112(%rbp)
	movw	%r8w, -110(%rbp)
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB4_92
# %bb.80:
	movzwl	(%rbx), %r9d
	movzwl	2(%rbx), %r14d
	movl	%r9d, %eax
	orw	%r14w, %ax
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jne	.LBB4_88
# %bb.81:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_87
# %bb.82:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_87
# %bb.83:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_87
# %bb.84:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_87
# %bb.85:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_87
# %bb.86:
	cmpw	$0, 14(%rbx)
	je	.LBB4_89
.LBB4_87:
	xorl	%r14d, %r14d
.LBB4_88:
	movw	$0, -108(%rbp)
	movzwl	16(%rbx), %r10d
	movzwl	14(%rbx), %edx
	movzwl	12(%rbx), %edi
	movzwl	10(%rbx), %esi
	movzwl	8(%rbx), %eax
	movzwl	4(%rbx), %r11d
	movzwl	6(%rbx), %ecx
.LBB4_91:
	movw	%r10w, -106(%rbp)
	movw	%dx, -104(%rbp)
	movw	%di, -102(%rbp)
	movw	%si, -100(%rbp)
	movw	%ax, -98(%rbp)
	movw	%cx, -96(%rbp)
	movw	%r11w, -94(%rbp)
	movw	%r14w, -92(%rbp)
	movw	%r9w, -90(%rbp)
	movzwl	-2(%rbx), %eax
	movw	%ax, -88(%rbp)
	movl	-120(%rbp), %edx        # 4-byte Reload
	jmp	.LBB4_93
.LBB4_92:
	movw	$0, -108(%rbp)
	movdqu	2(%rbx), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, -106(%rbp)
	movzwl	(%rbx), %eax
	movw	%ax, -90(%rbp)
	movw	$0, -88(%rbp)
.LBB4_93:
	movswl	-128(%rbp), %eax        # 2-byte Folded Reload
	shrl	$15, %eax
	movw	%ax, -80(%rbp)
	movw	%dx, -78(%rbp)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB4_108
# %bb.94:
	movzwl	(%r13), %r8d
	movzwl	2(%r13), %ecx
	movl	%r8d, %eax
	orw	%cx, %ax
	jne	.LBB4_102
# %bb.95:
	cmpw	$0, 4(%r13)
	jne	.LBB4_101
# %bb.96:
	cmpw	$0, 6(%r13)
	jne	.LBB4_101
# %bb.97:
	cmpw	$0, 8(%r13)
	jne	.LBB4_101
# %bb.98:
	cmpw	$0, 10(%r13)
	jne	.LBB4_101
# %bb.99:
	cmpw	$0, 12(%r13)
	jne	.LBB4_101
# %bb.100:
	cmpw	$0, 14(%r13)
	je	.LBB4_104
.LBB4_101:
	xorl	%ecx, %ecx
.LBB4_102:
	movw	$0, -76(%rbp)
	movzwl	16(%r13), %r9d
	movzwl	14(%r13), %esi
	movzwl	12(%r13), %edx
	movzwl	10(%r13), %eax
	movzwl	8(%r13), %ebx
	movzwl	4(%r13), %r10d
	movzwl	6(%r13), %edi
.LBB4_103:
	movw	%r9w, -74(%rbp)
	movw	%si, -72(%rbp)
	movw	%dx, -70(%rbp)
	movw	%ax, -68(%rbp)
	movw	%bx, -66(%rbp)
	movw	%di, -64(%rbp)
	movw	%r10w, -62(%rbp)
	movw	%cx, -60(%rbp)
	movw	%r8w, -58(%rbp)
	movzwl	-2(%r13), %eax
	movw	%ax, -56(%rbp)
.LBB4_107:
	movl	$32767, %eax            # imm = 0x7FFF
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r15, %r8
	jmp	.LBB4_111
.LBB4_108:
	movw	$0, -76(%rbp)
	movdqu	2(%r13), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -74(%rbp)
	movzwl	(%r13), %eax
	movw	%ax, -58(%rbp)
	movw	$0, -56(%rbp)
	cmpw	$0, -160(%rbp)          # 2-byte Folded Reload
	jne	.LBB4_111
# %bb.109:
	pextrw	$7, %xmm0, %ecx
	pextrw	$6, %xmm0, %edx
	orl	%ecx, %edx
	pextrw	$5, %xmm0, %ecx
	pextrw	$4, %xmm0, %esi
	orl	%ecx, %esi
	orl	%edx, %esi
	pextrw	$3, %xmm0, %ecx
	pextrw	$2, %xmm0, %edx
	orl	%ecx, %edx
	pextrw	$1, %xmm0, %ecx
	orl	%edx, %ecx
	orl	%esi, %ecx
	movd	%xmm0, %edx
	orl	%ecx, %edx
	orw	%ax, %dx
	je	.LBB4_78
# %bb.110:
	movq	%r8, %rbx
	leaq	-80(%rbp), %rdi
	callq	enormlz
	movq	%rbx, %r8
	cltq
	subq	%rax, -160(%rbp)        # 8-byte Folded Spill
	movzwl	-110(%rbp), %r15d
.LBB4_111:
	testw	%r15w, %r15w
	movq	%r12, -256(%rbp)        # 8-byte Spill
	movq	%r8, -248(%rbp)         # 8-byte Spill
	jne	.LBB4_114
# %bb.112:
	cmpw	$0, -108(%rbp)
	jne	.LBB4_113
# %bb.156:
	cmpw	$0, -106(%rbp)
	jne	.LBB4_113
# %bb.157:
	cmpw	$0, -104(%rbp)
	jne	.LBB4_113
# %bb.158:
	cmpw	$0, -102(%rbp)
	jne	.LBB4_113
# %bb.159:
	cmpw	$0, -100(%rbp)
	jne	.LBB4_113
# %bb.160:
	cmpw	$0, -98(%rbp)
	jne	.LBB4_113
# %bb.161:
	cmpw	$0, -96(%rbp)
	jne	.LBB4_113
# %bb.162:
	cmpw	$0, -94(%rbp)
	jne	.LBB4_113
# %bb.163:
	cmpw	$0, -92(%rbp)
	jne	.LBB4_113
# %bb.164:
	cmpw	$0, -90(%rbp)
	je	.LBB4_165
.LBB4_113:
	leaq	-112(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, -248(%rbp)        # 8-byte Folded Spill
.LBB4_114:
	movzwl	-80(%rbp), %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
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
	movzwl	-106(%rbp), %eax
	movq	%rax, %rcx
	shlq	$16, %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movd	%xmm1, %eax
	movl	$2, %esi
	jmp	.LBB4_115
	.p2align	4, 0x90
.LBB4_138:                              #   in Loop: Header=BB4_115 Depth=1
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %r14d
	movq	%r13, %r10
	movq	-136(%rbp), %r13        # 8-byte Reload
.LBB4_149:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-56(%rbp), %r12d
	movzwl	%r13w, %ecx
	subq	%rcx, %r12
	movzwl	-58(%rbp), %r13d
	movzwl	%r9w, %ecx
	subq	%rcx, %r13
	movl	%r12d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r13
	movzwl	-60(%rbp), %r9d
	movzwl	%r8w, %ecx
	subq	%rcx, %r9
	movl	%r13d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r9
	movzwl	-62(%rbp), %r8d
	movzwl	%di, %ecx
	subq	%rcx, %r8
	movl	%r9d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r8
	movzwl	-64(%rbp), %r15d
	movzwl	%r10w, %ecx
	subq	%rcx, %r15
	movl	%r8d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r15
	movzwl	-66(%rbp), %ecx
	movzwl	-144(%rbp), %edx        # 2-byte Folded Reload
	subq	%rdx, %rcx
	movl	%r15d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	subq	%rdx, %rcx
	movzwl	-68(%rbp), %ebx
	movzwl	-152(%rbp), %eax        # 2-byte Folded Reload
	subq	%rax, %rbx
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$1, %eax
	subq	%rax, %rbx
	movzwl	-70(%rbp), %edx
	movzwl	-120(%rbp), %eax        # 2-byte Folded Reload
	subq	%rax, %rdx
	movl	%ebx, %eax
	shrl	$16, %eax
	andl	$1, %eax
	subq	%rax, %rdx
	movzwl	-72(%rbp), %eax
	movzwl	-168(%rbp), %edi        # 2-byte Folded Reload
	subq	%rdi, %rax
	movl	%edx, %edi
	shrl	$16, %edi
	andl	$1, %edi
	subq	%rdi, %rax
	movzwl	-74(%rbp), %edi
	movzwl	-128(%rbp), %esi        # 2-byte Folded Reload
	subq	%rsi, %rdi
	movl	%eax, %esi
	shrl	$16, %esi
	andl	$1, %esi
	subq	%rsi, %rdi
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	-360(%rbp), %r10        # 8-byte Reload
	movw	%r14w, 52(%rsi,%r10,2)
	movq	%r10, %rsi
	movw	%di, -76(%rbp)
	movw	%ax, -74(%rbp)
	movw	%dx, -72(%rbp)
	movw	%bx, -70(%rbp)
	movw	%cx, -68(%rbp)
	movw	%r15w, -66(%rbp)
	movw	%r8w, -64(%rbp)
	movw	%r9w, -62(%rbp)
	movw	%r13w, -60(%rbp)
	movw	%r12w, -58(%rbp)
	movw	$0, -56(%rbp)
	addq	$1, %rsi
	cmpq	$13, %rsi
	je	.LBB4_150
.LBB4_115:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_118 Depth 2
	movzwl	%di, %edx
	shlq	$16, %rdx
	movzwl	%ax, %ecx
	orq	%rdx, %rcx
	movw	$-1, %ax
	cmpq	%rcx, -352(%rbp)        # 8-byte Folded Reload
	jb	.LBB4_117
# %bb.116:                              #   in Loop: Header=BB4_115 Depth=1
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	-264(%rbp)              # 8-byte Folded Reload
.LBB4_117:                              #   in Loop: Header=BB4_115 Depth=1
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movzwl	%ax, %eax
	movl	$0, -186(%rbp)
	movl	$12, %ecx
	leaq	-184(%rbp), %rdx
	jmp	.LBB4_118
	.p2align	4, 0x90
.LBB4_120:                              #   in Loop: Header=BB4_118 Depth=2
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
.LBB4_121:                              #   in Loop: Header=BB4_118 Depth=2
	movw	%bx, -4(%rdx)
	addq	$-1, %rcx
	movq	%rsi, %rdx
	cmpl	$2, %ecx
	je	.LBB4_122
.LBB4_118:                              #   Parent Loop BB4_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-112(%rbp,%rcx,2), %edi
	testq	%rdi, %rdi
	jne	.LBB4_120
# %bb.119:                              #   in Loop: Header=BB4_118 Depth=2
	leaq	-2(%rdx), %rsi
	xorl	%ebx, %ebx
	jmp	.LBB4_121
	.p2align	4, 0x90
.LBB4_122:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-204(%rbp), %edx
	movzwl	-202(%rbp), %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movzwl	-200(%rbp), %r14d
	movzwl	-198(%rbp), %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movzwl	-196(%rbp), %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movzwl	-194(%rbp), %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movzwl	-192(%rbp), %r13d
	movzwl	-190(%rbp), %edi
	movzwl	-188(%rbp), %r8d
	movzwl	-186(%rbp), %r9d
	movzwl	-184(%rbp), %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movzwl	-76(%rbp), %r12d
	movl	%edx, %ecx
	movl	%r12d, %ebx
	cmpw	%r12w, %dx
	jne	.LBB4_124
# %bb.123:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-74(%rbp), %ebx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	cmpw	%bx, %ax
	jne	.LBB4_124
# %bb.129:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-72(%rbp), %ebx
	movl	%r14d, %ecx
	cmpw	%bx, %r14w
	jne	.LBB4_124
# %bb.130:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-70(%rbp), %ebx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	cmpw	%bx, %ax
	jne	.LBB4_124
# %bb.131:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-68(%rbp), %ebx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movl	%r10d, %ecx
	cmpw	%bx, %r10w
	jne	.LBB4_124
# %bb.132:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-66(%rbp), %ebx
	movq	-144(%rbp), %r10        # 8-byte Reload
	movl	%r10d, %ecx
	cmpw	%bx, %r10w
	jne	.LBB4_124
# %bb.133:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-64(%rbp), %ebx
	movq	%r13, %r10
	movl	%r10d, %ecx
	cmpw	%bx, %r10w
	jne	.LBB4_124
# %bb.134:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-62(%rbp), %ebx
	movl	%edi, %ecx
	cmpw	%bx, %di
	jne	.LBB4_124
# %bb.135:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-60(%rbp), %ebx
	movl	%r8d, %ecx
	cmpw	%bx, %r8w
	jne	.LBB4_124
# %bb.136:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-58(%rbp), %ebx
	movl	%r9d, %ecx
	cmpw	%bx, %r9w
	jne	.LBB4_124
# %bb.137:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-56(%rbp), %ebx
	movq	-136(%rbp), %r10        # 8-byte Reload
	movl	%r10d, %ecx
	cmpw	%bx, %r10w
	je	.LBB4_138
	.p2align	4, 0x90
.LBB4_124:                              #   in Loop: Header=BB4_115 Depth=1
	cmpw	%bx, %cx
	jbe	.LBB4_138
# %bb.125:                              #   in Loop: Header=BB4_115 Depth=1
	movq	%rdi, %rcx
	movzwl	%dx, %r15d
	movq	-128(%rbp), %r11        # 8-byte Reload
	movzwl	%r11w, %r11d
	movzwl	%r14w, %r14d
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movzwl	%si, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movzwl	%di, %edi
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movzwl	%bx, %ebx
	movq	%r13, %r10
	movzwl	%r10w, %r10d
	movzwl	%cx, %ecx
	movzwl	%r8w, %r8d
	movzwl	%r9w, %r9d
	movq	-136(%rbp), %r13        # 8-byte Reload
	movzwl	%r13w, %r13d
	movzwl	-88(%rbp), %eax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	subq	%rax, %r13
	movl	%r13d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-90(%rbp), %eax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	subq	%rax, %r9
	subq	%rdx, %r9
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-92(%rbp), %eax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	subq	%rax, %r8
	subq	%rdx, %r8
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-94(%rbp), %eax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	subq	%rax, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-96(%rbp), %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	subq	%rcx, %r10
	subq	%rdx, %r10
	movl	%r10d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-98(%rbp), %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	subq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	movl	%ebx, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-100(%rbp), %ebx
	movq	%rbx, -328(%rbp)        # 8-byte Spill
	subq	%rbx, %rdi
	subq	%rdx, %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%edi, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-102(%rbp), %ebx
	movq	%rbx, -344(%rbp)        # 8-byte Spill
	subq	%rbx, %rsi
	subq	%rdx, %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-104(%rbp), %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	subq	%rcx, %r14
	subq	%rdx, %r14
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	shrl	$16, %edx
	andl	$1, %edx
	movzwl	-106(%rbp), %eax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	subq	%rax, %r11
	subq	%rdx, %r11
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	shrl	$16, %edx
	subl	-108(%rbp), %r15d
	andl	$1, %edx
	subl	%edx, %r15d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	leal	-1(%rcx), %r14d
	cmpw	%r15w, %r12w
	jne	.LBB4_127
# %bb.126:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-74(%rbp), %r12d
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.139:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-72(%rbp), %r12d
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movl	%ebx, %r15d
	cmpw	%bx, %r12w
	jne	.LBB4_127
# %bb.140:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-70(%rbp), %r12d
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.141:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-68(%rbp), %r12d
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.142:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-66(%rbp), %r12d
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.143:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-64(%rbp), %r12d
	movl	%r10d, %r15d
	cmpw	%r10w, %r12w
	jne	.LBB4_127
# %bb.144:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-62(%rbp), %r12d
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.145:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-60(%rbp), %r12d
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.146:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-58(%rbp), %r12d
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	cmpw	%ax, %r12w
	jne	.LBB4_127
# %bb.147:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	-56(%rbp), %r12d
	movl	%r13d, %r15d
	cmpw	%r13w, %r12w
	jne	.LBB4_127
# %bb.148:                              #   in Loop: Header=BB4_115 Depth=1
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	jmp	.LBB4_149
	.p2align	4, 0x90
.LBB4_127:                              #   in Loop: Header=BB4_115 Depth=1
	cmpw	%r12w, %r15w
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	jbe	.LBB4_149
# %bb.128:                              #   in Loop: Header=BB4_115 Depth=1
	movzwl	%r13w, %r13d
	subq	-272(%rbp), %r13        # 8-byte Folded Reload
	movzwl	%r9w, %r9d
	subq	-280(%rbp), %r9         # 8-byte Folded Reload
	movq	%rcx, %rbx
	movl	%r13d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r9
	movzwl	%r8w, %r8d
	subq	-288(%rbp), %r8         # 8-byte Folded Reload
	movl	%r9d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r8
	movzwl	%di, %edi
	subq	-296(%rbp), %rdi        # 8-byte Folded Reload
	movl	%r8d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdi
	movzwl	%r10w, %r10d
	subq	-304(%rbp), %r10        # 8-byte Folded Reload
	movl	%edi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %r10
	movq	-144(%rbp), %rax        # 8-byte Reload
	movzwl	%ax, %eax
	subq	-320(%rbp), %rax        # 8-byte Folded Reload
	movl	%r10d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rax
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movzwl	%dx, %edx
	subq	-328(%rbp), %rdx        # 8-byte Folded Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movzwl	%si, %esi
	subq	-344(%rbp), %rsi        # 8-byte Folded Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rsi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movzwl	%ax, %eax
	subq	-312(%rbp), %rax        # 8-byte Folded Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%esi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subq	%rcx, %rax
	movq	-128(%rbp), %rdx        # 8-byte Reload
	subl	-336(%rbp), %edx        # 4-byte Folded Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	subl	%ecx, %edx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	addl	$-2, %ebx
	movl	%ebx, %r14d
	jmp	.LBB4_149
.LBB4_150:
	orl	%r12d, %r13d
	orl	%r13d, %r9d
	orl	%r9d, %r8d
	orl	%r8d, %r15d
	orl	%r15d, %ecx
	orl	%ecx, %ebx
	orl	%ebx, %edx
	orl	%edx, %eax
	movq	-232(%rbp), %r9         # 8-byte Reload
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
	movq	-160(%rbp), %rcx        # 8-byte Reload
	subq	-248(%rbp), %rcx        # 8-byte Folded Reload
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
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movw	%ax, 18(%rsi)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB4_154
# %bb.151:
	movzwl	-72(%rbp), %ecx
	orw	-74(%rbp), %cx
	orw	-70(%rbp), %cx
	orw	-68(%rbp), %cx
	orw	-66(%rbp), %cx
	orw	-64(%rbp), %cx
	orw	-62(%rbp), %cx
	orw	-60(%rbp), %cx
	orw	-58(%rbp), %cx
	orw	-56(%rbp), %cx
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsi)
	je	.LBB4_153
# %bb.152:
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	jmp	.LBB4_155
.LBB4_154:
	movzwl	-74(%rbp), %eax
	movw	%ax, 16(%rsi)
	movdqu	-72(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, (%rsi)
	jmp	.LBB4_155
.LBB4_153:
	movw	$0, 16(%rsi)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, 18(%rsi)
	jmp	.LBB4_155
.LBB4_78:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
	movl	$0, 16(%r12)
	jmp	.LBB4_155
.LBB4_89:
	movzwl	16(%rbx), %r10d
	movw	$0, -108(%rbp)
	testw	%r10w, %r10w
	je	.LBB4_166
# %bb.90:
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB4_91
.LBB4_104:
	movzwl	16(%r13), %r9d
	movw	$0, -76(%rbp)
	testw	%r9w, %r9w
	je	.LBB4_106
# %bb.105:
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB4_103
.LBB4_166:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -106(%rbp)
	movl	$0, -90(%rbp)
	movl	-120(%rbp), %edx        # 4-byte Reload
	jmp	.LBB4_93
.LBB4_106:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	jmp	.LBB4_107
.LBB4_34:
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB4_70
# %bb.35:
	cmpw	$0, (%r13)
	jne	.LBB4_70
# %bb.36:
	cmpw	$0, 2(%r13)
	jne	.LBB4_47
# %bb.37:
	cmpw	$0, 4(%r13)
	jne	.LBB4_47
# %bb.38:
	cmpw	$0, 6(%r13)
	jne	.LBB4_47
# %bb.39:
	cmpw	$0, 8(%r13)
	jne	.LBB4_47
# %bb.40:
	cmpw	$0, 10(%r13)
	jne	.LBB4_47
# %bb.41:
	cmpw	$0, 12(%r13)
	jne	.LBB4_47
# %bb.42:
	cmpw	$0, 14(%r13)
	jne	.LBB4_47
# %bb.43:
	cmpw	$0, 16(%r13)
	jne	.LBB4_47
.LBB4_44:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
	movl	$2147467264, 16(%r12)   # imm = 0x7FFFC000
.LBB4_155:
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_55:
	cmpl	$32767, %r8d            # imm = 0x7FFF
	jne	.LBB4_65
# %bb.56:
	xorl	%eax, %eax
	cmpw	$0, (%rbx)
	jne	.LBB4_66
# %bb.57:
	cmpw	$0, 2(%rbx)
	jne	.LBB4_66
# %bb.58:
	cmpw	$0, 4(%rbx)
	jne	.LBB4_66
# %bb.59:
	cmpw	$0, 6(%rbx)
	jne	.LBB4_66
# %bb.60:
	cmpw	$0, 8(%rbx)
	jne	.LBB4_66
# %bb.61:
	cmpw	$0, 10(%rbx)
	jne	.LBB4_66
# %bb.62:
	cmpw	$0, 12(%rbx)
	jne	.LBB4_66
# %bb.63:
	cmpw	$0, 14(%rbx)
	jne	.LBB4_66
# %bb.64:
	cmpw	$0, 16(%rbx)
	jne	.LBB4_66
.LBB4_65:
	shrl	$15, %r14d
	movl	%r14d, %eax
.LBB4_66:
	movq	-128(%rbp), %rcx        # 8-byte Reload
	shrl	$15, %ecx
	cmpl	%ecx, %eax
	jmp	.LBB4_67
.LBB4_165:
	movzwl	-112(%rbp), %eax
	cmpw	-80(%rbp), %ax
.LBB4_67:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
	movw	$0, 16(%r12)
	movl	$32767, %eax            # imm = 0x7FFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovel	%eax, %ecx
	movw	%cx, 18(%r12)
	jmp	.LBB4_155
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
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movzwl	18(%rdi), %r14d
	movl	%r14d, %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB5_11
# %bb.1:
	movzwl	(%r12), %eax
	testw	%ax, %ax
	jne	.LBB5_10
# %bb.2:
	cmpw	$0, 2(%r12)
	jne	.LBB5_10
# %bb.3:
	cmpw	$0, 4(%r12)
	jne	.LBB5_10
# %bb.4:
	cmpw	$0, 6(%r12)
	jne	.LBB5_10
# %bb.5:
	cmpw	$0, 8(%r12)
	jne	.LBB5_10
# %bb.6:
	cmpw	$0, 10(%r12)
	jne	.LBB5_10
# %bb.7:
	cmpw	$0, 12(%r12)
	jne	.LBB5_10
# %bb.8:
	cmpw	$0, 14(%r12)
	jne	.LBB5_10
# %bb.9:
	cmpw	$0, 16(%r12)
	je	.LBB5_11
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
	jmp	.LBB5_121
.LBB5_11:
	movzwl	18(%r15), %r8d
	movl	%r8d, %edx
	andl	$32767, %edx            # imm = 0x7FFF
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB5_22
# %bb.12:
	movzwl	(%r15), %eax
	testw	%ax, %ax
	jne	.LBB5_21
# %bb.13:
	cmpw	$0, 2(%r15)
	jne	.LBB5_21
# %bb.14:
	cmpw	$0, 4(%r15)
	jne	.LBB5_21
# %bb.15:
	cmpw	$0, 6(%r15)
	jne	.LBB5_21
# %bb.16:
	cmpw	$0, 8(%r15)
	jne	.LBB5_21
# %bb.17:
	cmpw	$0, 10(%r15)
	jne	.LBB5_21
# %bb.18:
	cmpw	$0, 12(%r15)
	jne	.LBB5_21
# %bb.19:
	cmpw	$0, 14(%r15)
	jne	.LBB5_21
# %bb.20:
	cmpw	$0, 16(%r15)
	je	.LBB5_22
.LBB5_21:
	movw	%ax, (%rbx)
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
	jmp	.LBB5_121
.LBB5_22:
	movzwl	%cx, %esi
	cmpl	$32767, %esi            # imm = 0x7FFF
	movq	%rdx, %rax
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	jne	.LBB5_33
# %bb.23:
	cmpw	$0, (%r12)
	jne	.LBB5_33
# %bb.24:
	cmpw	$0, 2(%r12)
	jne	.LBB5_33
# %bb.25:
	cmpw	$0, 4(%r12)
	jne	.LBB5_33
# %bb.26:
	cmpw	$0, 6(%r12)
	jne	.LBB5_33
# %bb.27:
	cmpw	$0, 8(%r12)
	jne	.LBB5_33
# %bb.28:
	cmpw	$0, 10(%r12)
	jne	.LBB5_33
# %bb.29:
	cmpw	$0, 12(%r12)
	jne	.LBB5_33
# %bb.30:
	cmpw	$0, 14(%r12)
	jne	.LBB5_33
# %bb.31:
	cmpw	$0, 16(%r12)
	jne	.LBB5_33
# %bb.32:
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	$ezero, %esi
	movq	%r15, %rdi
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, -96(%rbp)          # 8-byte Spill
	callq	ecmp
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	testl	%eax, %eax
	je	.LBB5_142
.LBB5_33:
	movzwl	%dx, %r9d
	cmpl	$32767, %r9d            # imm = 0x7FFF
	jne	.LBB5_44
# %bb.34:
	cmpw	$0, (%r15)
	jne	.LBB5_44
# %bb.35:
	cmpw	$0, 2(%r15)
	jne	.LBB5_44
# %bb.36:
	cmpw	$0, 4(%r15)
	jne	.LBB5_44
# %bb.37:
	cmpw	$0, 6(%r15)
	jne	.LBB5_44
# %bb.38:
	cmpw	$0, 8(%r15)
	jne	.LBB5_44
# %bb.39:
	cmpw	$0, 10(%r15)
	jne	.LBB5_44
# %bb.40:
	cmpw	$0, 12(%r15)
	jne	.LBB5_44
# %bb.41:
	cmpw	$0, 14(%r15)
	jne	.LBB5_44
# %bb.42:
	cmpw	$0, 16(%r15)
	jne	.LBB5_44
# %bb.43:
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	$ezero, %esi
	movq	%r12, %rdi
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	callq	ecmp
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-104(%rbp), %r9d        # 4-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	testl	%eax, %eax
	je	.LBB5_142
.LBB5_44:
	cmpl	$32767, %esi            # imm = 0x7FFF
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	jne	.LBB5_54
# %bb.45:
	cmpw	$0, (%r12)
	jne	.LBB5_54
# %bb.46:
	cmpw	$0, 2(%r12)
	jne	.LBB5_54
# %bb.47:
	cmpw	$0, 4(%r12)
	jne	.LBB5_54
# %bb.48:
	cmpw	$0, 6(%r12)
	jne	.LBB5_54
# %bb.49:
	cmpw	$0, 8(%r12)
	jne	.LBB5_54
# %bb.50:
	cmpw	$0, 10(%r12)
	jne	.LBB5_54
# %bb.51:
	cmpw	$0, 12(%r12)
	jne	.LBB5_54
# %bb.52:
	cmpw	$0, 14(%r12)
	jne	.LBB5_54
# %bb.53:
	cmpw	$0, 16(%r12)
	je	.LBB5_130
.LBB5_54:
	cmpl	$32767, %r9d            # imm = 0x7FFF
	jne	.LBB5_64
# %bb.55:
	cmpw	$0, (%r15)
	jne	.LBB5_64
# %bb.56:
	cmpw	$0, 2(%r15)
	jne	.LBB5_64
# %bb.57:
	cmpw	$0, 4(%r15)
	jne	.LBB5_64
# %bb.58:
	cmpw	$0, 6(%r15)
	jne	.LBB5_64
# %bb.59:
	cmpw	$0, 8(%r15)
	jne	.LBB5_64
# %bb.60:
	cmpw	$0, 10(%r15)
	jne	.LBB5_64
# %bb.61:
	cmpw	$0, 12(%r15)
	jne	.LBB5_64
# %bb.62:
	cmpw	$0, 14(%r15)
	jne	.LBB5_64
# %bb.63:
	cmpw	$0, 16(%r15)
	je	.LBB5_128
.LBB5_64:
	movswl	%r14w, %eax
	shrl	$15, %eax
	movw	%ax, -144(%rbp)
	movw	%si, -142(%rbp)
	cmpl	$32767, %esi            # imm = 0x7FFF
	movq	%r13, -224(%rbp)        # 8-byte Spill
	jne	.LBB5_75
# %bb.65:
	movzwl	(%r12), %r13d
	movzwl	2(%r12), %edi
	movl	%r13d, %eax
	orw	%di, %ax
	movq	%r8, -96(%rbp)          # 8-byte Spill
	jne	.LBB5_73
# %bb.66:
	cmpw	$0, 4(%r12)
	jne	.LBB5_72
# %bb.67:
	cmpw	$0, 6(%r12)
	jne	.LBB5_72
# %bb.68:
	cmpw	$0, 8(%r12)
	jne	.LBB5_72
# %bb.69:
	cmpw	$0, 10(%r12)
	jne	.LBB5_72
# %bb.70:
	cmpw	$0, 12(%r12)
	jne	.LBB5_72
# %bb.71:
	cmpw	$0, 14(%r12)
	je	.LBB5_122
.LBB5_72:
	xorl	%edi, %edi
.LBB5_73:
	movw	$0, -140(%rbp)
	movzwl	16(%r12), %esi
	movzwl	14(%r12), %r8d
	movzwl	12(%r12), %eax
	movzwl	10(%r12), %ebx
	movzwl	8(%r12), %r14d
	movzwl	4(%r12), %r10d
	movzwl	6(%r12), %r11d
.LBB5_74:
	movw	%si, -138(%rbp)
	movw	%r8w, -136(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movw	%ax, -134(%rbp)
	movw	%bx, -132(%rbp)
	movw	%r14w, -130(%rbp)
	movw	%r11w, -128(%rbp)
	movw	%r10w, -126(%rbp)
	movw	%di, -124(%rbp)
	movw	%r13w, -122(%rbp)
	movzwl	-2(%r12), %eax
	movw	%ax, -120(%rbp)
	movl	%r8d, %r12d
	movq	-96(%rbp), %r8          # 8-byte Reload
	jmp	.LBB5_76
.LBB5_75:
	movw	$0, -140(%rbp)
	movdqu	2(%r12), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	movdqu	%xmm1, -138(%rbp)
	movzwl	(%r12), %r13d
	movw	%r13w, -122(%rbp)
	pextrw	$7, %xmm0, %esi
	pextrw	$6, %xmm0, %r12d
	pextrw	$5, %xmm0, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	pextrw	$4, %xmm0, %ebx
	pextrw	$3, %xmm0, %r14d
	pextrw	$2, %xmm0, %r11d
	movw	$0, -120(%rbp)
	pextrw	$1, %xmm0, %r10d
	movd	%xmm0, %edi
.LBB5_76:
	movswl	%r8w, %eax
	shrl	$15, %eax
	movw	%ax, -80(%rbp)
	movw	%r9w, -78(%rbp)
	cmpl	$32767, %r9d            # imm = 0x7FFF
	jne	.LBB5_88
# %bb.77:
	movl	%r13d, %r8d
	movl	%ebx, -96(%rbp)         # 4-byte Spill
	movzwl	(%r15), %edx
	movzwl	2(%r15), %r13d
	movl	%edx, %eax
	orw	%r13w, %ax
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	movl	%r11d, -176(%rbp)       # 4-byte Spill
	movl	%r14d, -168(%rbp)       # 4-byte Spill
	movl	%r12d, -160(%rbp)       # 4-byte Spill
	jne	.LBB5_85
# %bb.78:
	cmpw	$0, 4(%r15)
	jne	.LBB5_84
# %bb.79:
	cmpw	$0, 6(%r15)
	jne	.LBB5_84
# %bb.80:
	cmpw	$0, 8(%r15)
	jne	.LBB5_84
# %bb.81:
	cmpw	$0, 10(%r15)
	jne	.LBB5_84
# %bb.82:
	cmpw	$0, 12(%r15)
	jne	.LBB5_84
# %bb.83:
	cmpw	$0, 14(%r15)
	je	.LBB5_124
.LBB5_84:
	xorl	%r13d, %r13d
.LBB5_85:
	movl	%r8d, %r12d
	movw	$0, -76(%rbp)
	movzwl	16(%r15), %eax
	movzwl	14(%r15), %r14d
	movzwl	12(%r15), %r8d
	movzwl	10(%r15), %r11d
	movzwl	8(%r15), %r10d
	movzwl	4(%r15), %ebx
	movzwl	6(%r15), %r9d
.LBB5_86:
	movw	%ax, -74(%rbp)
	movw	%r14w, -72(%rbp)
	movw	%r8w, -70(%rbp)
	movw	%r11w, -68(%rbp)
	movw	%r10w, -66(%rbp)
	movw	%r9w, -64(%rbp)
	movw	%bx, -62(%rbp)
	movw	%r13w, -60(%rbp)
	movw	%dx, -58(%rbp)
	movzwl	-2(%r15), %eax
	movw	%ax, -56(%rbp)
.LBB5_87:
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	%r12d, %r13d
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	-176(%rbp), %r11d       # 4-byte Reload
	movl	-168(%rbp), %r14d       # 4-byte Reload
	movl	-160(%rbp), %r12d       # 4-byte Reload
	movl	-96(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB5_89
.LBB5_88:
	movw	$0, -76(%rbp)
	movdqu	2(%r15), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, -74(%rbp)
	movzwl	(%r15), %eax
	movw	%ax, -58(%rbp)
	movw	$0, -56(%rbp)
.LBB5_89:
	testw	%cx, %cx
	movl	-44(%rbp), %eax         # 4-byte Reload
	je	.LBB5_91
# %bb.90:
	movl	%edx, %eax
	jmp	.LBB5_93
.LBB5_91:
	orl	%r12d, %esi
	orl	%eax, %ebx
	orl	%esi, %ebx
	orl	%r14d, %r11d
	orl	%r11d, %r10d
	orl	%ebx, %r10d
	orl	%r10d, %edi
	orw	%r13w, %di
	je	.LBB5_120
# %bb.92:
	leaq	-144(%rbp), %rdi
	movq	%rcx, %rbx
	callq	enormlz
	movq	%rbx, %rcx
	cltq
	subq	%rax, %rcx
	movzwl	-78(%rbp), %eax
.LBB5_93:
	testw	%ax, %ax
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jne	.LBB5_105
# %bb.94:
	cmpw	$0, -76(%rbp)
	jne	.LBB5_104
# %bb.95:
	cmpw	$0, -74(%rbp)
	jne	.LBB5_104
# %bb.96:
	cmpw	$0, -72(%rbp)
	jne	.LBB5_104
# %bb.97:
	cmpw	$0, -70(%rbp)
	jne	.LBB5_104
# %bb.98:
	cmpw	$0, -68(%rbp)
	jne	.LBB5_104
# %bb.99:
	cmpw	$0, -66(%rbp)
	jne	.LBB5_104
# %bb.100:
	cmpw	$0, -64(%rbp)
	jne	.LBB5_104
# %bb.101:
	cmpw	$0, -62(%rbp)
	jne	.LBB5_104
# %bb.102:
	cmpw	$0, -60(%rbp)
	jne	.LBB5_104
# %bb.103:
	cmpw	$0, -58(%rbp)
	je	.LBB5_120
.LBB5_104:
	leaq	-80(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, -152(%rbp)        # 8-byte Folded Spill
	movzwl	-78(%rbp), %eax
.LBB5_105:
	movzwl	-80(%rbp), %ecx
	movw	%cx, 52(%rbx)
	movw	%ax, 54(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 56(%rbx)
	movl	$0, 72(%rbx)
	movw	$0, 76(%rbx)
	leaq	-120(%rbp), %r8
	movl	$0, -212(%rbp)          # 4-byte Folded Spill
	movl	$3, -44(%rbp)           # 4-byte Folded Spill
	movl	$0, -208(%rbp)          # 4-byte Folded Spill
	xorl	%ebx, %ebx
	movl	$0, -204(%rbp)          # 4-byte Folded Spill
	movl	$0, -200(%rbp)          # 4-byte Folded Spill
	movl	$0, -196(%rbp)          # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	jmp	.LBB5_108
	.p2align	4, 0x90
.LBB5_106:                              #   in Loop: Header=BB5_108 Depth=1
	movzwl	-252(%rbp), %r9d
	movzwl	-250(%rbp), %r13d
	movzwl	-248(%rbp), %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movzwl	-246(%rbp), %r14d
	movzwl	-244(%rbp), %r12d
	movzwl	-242(%rbp), %r8d
	movzwl	-240(%rbp), %eax
	movzwl	-238(%rbp), %edx
	movzwl	-236(%rbp), %ecx
	movzwl	-234(%rbp), %esi
	movzwl	-232(%rbp), %ebx
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
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%esi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rbx
	movw	%bx, 72(%r10)
	movzwl	70(%r10), %esi
	addq	%rdx, %rsi
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addq	%rcx, %rsi
	movw	%si, 70(%r10)
	movzwl	68(%r10), %ecx
	addq	%rax, %rcx
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	shrl	$16, %eax
	andl	$1, %eax
	addq	%rax, %rcx
	movw	%cx, 68(%r10)
	movzwl	66(%r10), %edx
	addq	%r8, %rdx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
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
	addq	-192(%rbp), %rbx        # 8-byte Folded Reload
	movq	%rdx, -192(%rbp)        # 8-byte Spill
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
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	addw	56(%r10), %r9w
	addl	%ecx, %r9d
	movl	%r9d, %eax
	movw	%r9w, 56(%r10)
	movl	%r15d, %r12d
.LBB5_107:                              #   in Loop: Header=BB5_108 Depth=1
	movq	-272(%rbp), %r8         # 8-byte Reload
	addq	$-2, %r8
	movzwl	%di, %ecx
	orl	%ecx, %r12d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movw	%di, 76(%r10)
	movq	-104(%rbp), %r13        # 8-byte Reload
	movw	%r13w, 74(%r10)
	movq	-176(%rbp), %r14        # 8-byte Reload
	movw	%r14w, 72(%r10)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movw	%cx, 70(%r10)
	movq	%r11, %r15
	movw	%r15w, 68(%r10)
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movw	%dx, 66(%r10)
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movw	%si, 64(%r10)
	movw	%bx, 62(%r10)
	movq	-264(%rbp), %r9         # 8-byte Reload
	movw	%r9w, 60(%r10)
	movw	%ax, 58(%r10)
	movw	$0, 56(%r10)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	addl	$1, %r11d
	movl	%eax, %r10d
                                        # kill: def $ax killed $ax killed $eax def $eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movq	%rbx, %rax
                                        # kill: def $bx killed $bx killed $rbx def $ebx
                                        # kill: def $si killed $si killed $rsi def $esi
	movl	%esi, -204(%rbp)        # 4-byte Spill
                                        # kill: def $dx killed $dx killed $rdx def $edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movq	%r15, %r9
	movl	%r15d, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %r15d
	movl	%r14d, %esi
	movl	%r13d, %edx
                                        # kill: def $di killed $di killed $rdi def $rdi
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	cmpl	$13, %r11d
	je	.LBB5_115
.LBB5_108:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_112 Depth 2
	movzwl	(%r8), %eax
	testq	%rax, %rax
	movq	%r8, -272(%rbp)         # 8-byte Spill
	je	.LBB5_114
# %bb.109:                              #   in Loop: Header=BB5_108 Depth=1
	movl	%r12d, %r15d
	movl	$0, -234(%rbp)
	movl	$12, %ecx
	leaq	-232(%rbp), %rdx
	movq	-224(%rbp), %r10        # 8-byte Reload
	jmp	.LBB5_112
	.p2align	4, 0x90
.LBB5_110:                              #   in Loop: Header=BB5_112 Depth=2
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
.LBB5_111:                              #   in Loop: Header=BB5_112 Depth=2
	movw	%bx, -4(%rdx)
	addq	$-1, %rcx
	movq	%rsi, %rdx
	cmpl	$2, %ecx
	je	.LBB5_106
.LBB5_112:                              #   Parent Loop BB5_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-80(%rbp,%rcx,2), %edi
	testq	%rdi, %rdi
	jne	.LBB5_110
# %bb.113:                              #   in Loop: Header=BB5_112 Depth=2
	leaq	-2(%rdx), %rsi
	xorl	%ebx, %ebx
	jmp	.LBB5_111
	.p2align	4, 0x90
.LBB5_114:                              #   in Loop: Header=BB5_108 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax def $rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%ebx, %ecx
	movl	%eax, %ebx
                                        # kill: def $cx killed $cx killed $ecx def $rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r11d
	movl	$0, %eax
	movl	-196(%rbp), %ecx        # 4-byte Reload
                                        # kill: def $cx killed $cx killed $ecx def $rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movl	%r15d, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movl	%esi, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-224(%rbp), %r10        # 8-byte Reload
	jmp	.LBB5_107
.LBB5_115:
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movzwl	52(%rbx), %ecx
	movw	%cx, -80(%rbp)
	movzwl	54(%rbx), %ecx
	movw	%cx, -78(%rbp)
	movw	$0, -76(%rbp)
	movw	%r10w, -74(%rbp)
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movw	%cx, -72(%rbp)
	movw	%ax, -70(%rbp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movw	%ax, -68(%rbp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movw	%ax, -66(%rbp)
	movw	%r9w, -64(%rbp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movw	%ax, -62(%rbp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movw	%ax, -60(%rbp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movw	%ax, -58(%rbp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movw	%ax, -56(%rbp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$-16382, %rcx           # imm = 0xC002
	leaq	-80(%rbp), %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$64, %r8d
	movq	%rbx, %r9
	callq	emdnorm
	movzwl	-144(%rbp), %ecx
	movzwl	-78(%rbp), %edx
	movl	%edx, %eax
	orl	$-32768, %eax           # imm = 0x8000
	xorl	%esi, %esi
	cmpw	-80(%rbp), %cx
	sete	%sil
	cmovel	%edx, %eax
	addl	$-1, %esi
	movw	%si, -80(%rbp)
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movw	%ax, 18(%rsi)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB5_118
# %bb.116:
	movzwl	-72(%rbp), %ecx
	orw	-74(%rbp), %cx
	orw	-70(%rbp), %cx
	orw	-68(%rbp), %cx
	orw	-66(%rbp), %cx
	orw	-64(%rbp), %cx
	orw	-62(%rbp), %cx
	orw	-60(%rbp), %cx
	orw	-58(%rbp), %cx
	orw	-56(%rbp), %cx
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsi)
	je	.LBB5_119
# %bb.117:
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	jmp	.LBB5_121
.LBB5_118:
	movzwl	-74(%rbp), %eax
	movw	%ax, 16(%rsi)
	movdqu	-72(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	movdqu	%xmm0, (%rsi)
	jmp	.LBB5_121
.LBB5_119:
	movw	$0, 16(%rsi)
	orl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, 18(%rsi)
	jmp	.LBB5_121
.LBB5_120:
	pxor	%xmm0, %xmm0
	movq	-88(%rbp), %rax         # 8-byte Reload
	movdqu	%xmm0, (%rax)
	movl	$0, 16(%rax)
.LBB5_121:
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_122:
	movzwl	16(%r12), %esi
	movw	$0, -140(%rbp)
	testw	%si, %si
	je	.LBB5_126
# %bb.123:
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.LBB5_74
.LBB5_124:
	movl	%r8d, %r12d
	movzwl	16(%r15), %eax
	movw	$0, -76(%rbp)
	testw	%ax, %ax
	je	.LBB5_127
# %bb.125:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	jmp	.LBB5_86
.LBB5_126:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -138(%rbp)
	movl	$0, -122(%rbp)
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	-96(%rbp), %r8          # 8-byte Reload
	jmp	.LBB5_76
.LBB5_127:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -74(%rbp)
	movl	$0, -58(%rbp)
	jmp	.LBB5_87
.LBB5_128:
	cmpl	$32767, %esi            # imm = 0x7FFF
	jne	.LBB5_138
# %bb.129:
	xorl	%eax, %eax
	cmpw	$0, (%r12)
	jne	.LBB5_140
.LBB5_130:
	xorl	%eax, %eax
	cmpw	$0, 2(%r12)
	jne	.LBB5_139
# %bb.131:
	cmpw	$0, 4(%r12)
	jne	.LBB5_139
# %bb.132:
	cmpw	$0, 6(%r12)
	jne	.LBB5_139
# %bb.133:
	cmpw	$0, 8(%r12)
	jne	.LBB5_139
# %bb.134:
	cmpw	$0, 10(%r12)
	jne	.LBB5_139
# %bb.135:
	cmpw	$0, 12(%r12)
	jne	.LBB5_139
# %bb.136:
	cmpw	$0, 14(%r12)
	jne	.LBB5_139
# %bb.137:
	cmpw	$0, 16(%r12)
	jne	.LBB5_139
.LBB5_138:
	shrl	$15, %r14d
	movl	%r14d, %eax
.LBB5_139:
	cmpl	$32767, %r9d            # imm = 0x7FFF
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jne	.LBB5_158
.LBB5_140:
	xorl	%ecx, %ecx
	cmpw	$0, (%r15)
	jne	.LBB5_141
# %bb.143:
	cmpw	$0, 2(%r15)
	jne	.LBB5_141
# %bb.145:
	cmpw	$0, 4(%r15)
	jne	.LBB5_141
# %bb.147:
	cmpw	$0, 6(%r15)
	jne	.LBB5_141
# %bb.149:
	cmpw	$0, 8(%r15)
	jne	.LBB5_141
# %bb.151:
	cmpw	$0, 10(%r15)
	jne	.LBB5_141
# %bb.153:
	cmpw	$0, 12(%r15)
	jne	.LBB5_141
# %bb.155:
	cmpw	$0, 14(%r15)
	je	.LBB5_157
.LBB5_141:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB5_159
.LBB5_142:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx)
	movl	$2147467264, 16(%rbx)   # imm = 0x7FFFC000
	jmp	.LBB5_121
.LBB5_157:
	cmpw	$0, 16(%r15)
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jne	.LBB5_159
.LBB5_158:
	shrl	$15, %r8d
	movl	%r8d, %ecx
.LBB5_159:
	cmpl	%ecx, %eax
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rdx)
	movw	$0, 16(%rdx)
	movl	$32767, %eax            # imm = 0x7FFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovel	%eax, %ecx
	movw	%cx, 18(%rdx)
	jmp	.LBB5_121
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
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	emdnorm                 # TAILCALL
.LBB6_2:
	movzwl	4(%rbx), %eax
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_3:                                #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=1
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
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movzwl	4(%rdi), %esi
	testw	%si, %si
	je	.LBB7_1
# %bb.17:
	movzwl	%si, %eax
	cmpl	$255, %eax
	jbe	.LBB7_18
# %bb.19:
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
	movl	$-8, %ecx
	movl	%eax, %esi
	jmp	.LBB7_20
.LBB7_1:
	movzwl	6(%rdi), %r9d
	xorl	%eax, %eax
	testw	%r9w, %r9w
	js	.LBB7_24
# %bb.2:
	testw	%r9w, %r9w
	jne	.LBB7_7
# %bb.3:
	movzwl	8(%rdi), %ebp
	movzwl	10(%rdi), %ebx
	movzwl	12(%rdi), %esi
	movzwl	14(%rdi), %edx
	movzwl	16(%rdi), %r14d
	movzwl	18(%rdi), %r11d
	movzwl	20(%rdi), %r10d
	movzwl	22(%rdi), %r8d
	movzwl	24(%rdi), %ecx
	movl	$16, %eax
	.p2align	4, 0x90
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movl	%ebp, %r9d
	movl	%ebx, %ebp
	movl	%esi, %ebx
	movl	%edx, %esi
	movl	%r14d, %edx
	movl	%r11d, %r14d
	movl	%r10d, %r11d
	movl	%r8d, %r10d
	movl	%ecx, %r8d
	cmpl	$144, %eax
	ja	.LBB7_23
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	addl	$16, %eax
	xorl	%ecx, %ecx
	testw	%r9w, %r9w
	je	.LBB7_4
# %bb.6:
	movw	$0, 4(%rdi)
	movw	%bp, 8(%rdi)
	movw	%r9w, 6(%rdi)
	movw	%bx, 10(%rdi)
	movw	%si, 12(%rdi)
	movw	%dx, 14(%rdi)
	movw	%r14w, 16(%rdi)
	movw	%r11w, 18(%rdi)
	movw	%r10w, 20(%rdi)
	movw	%r8w, 22(%rdi)
	movw	$0, 24(%rdi)
	addl	$-16, %eax
.LBB7_7:
	movzwl	%r9w, %ecx
	cmpl	$255, %ecx
	ja	.LBB7_8
# %bb.12:
	movzwl	24(%rdi), %ecx
	movzwl	20(%rdi), %esi
	movzwl	22(%rdi), %edx
	movzwl	18(%rdi), %ebp
	movd	%ebp, %xmm0
	movzwl	16(%rdi), %ebp
	movd	%ebp, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movzwl	14(%rdi), %ebp
	movd	%ebp, %xmm0
	movzwl	12(%rdi), %ebp
	movd	%ebp, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movzwl	10(%rdi), %ebp
	movd	%ebp, %xmm0
	movzwl	8(%rdi), %ebp
	movd	%ebp, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	%r9d, %xmm3
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	.p2align	4, 0x90
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
                                        # kill: def $cx killed $cx killed $ecx def $ecx
	movl	%esi, %ebp
	movl	%edx, %esi
	movl	%ecx, %edx
	shrdw	$8, %si, %dx
	shrdw	$8, %bp, %si
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %ebp, %xmm1
	shll	$8, %ecx
	psrlw	$8, %xmm1
	psllw	$8, %xmm0
	por	%xmm1, %xmm0
	addl	$8, %eax
	pextrw	$1, %xmm0, %r9d
	cmpl	$256, %r9d              # imm = 0x100
	jb	.LBB7_13
# %bb.9:
	movw	%cx, 24(%rdi)
	movw	%dx, 22(%rdi)
	movw	%si, 20(%rdi)
	movdqu	%xmm0, 4(%rdi)
	movd	%xmm0, %ecx
	testw	%r9w, %r9w
	jns	.LBB7_11
	jmp	.LBB7_24
.LBB7_18:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB7_20:                               # =>This Inner Loop Header: Depth=1
	testw	%si, %si
	je	.LBB7_21
# %bb.22:                               #   in Loop: Header=BB7_20 Depth=1
	movzwl	%si, %edx
	shrl	%edx
	movw	%dx, 4(%rdi)
	movzwl	6(%rdi), %eax
	shldw	$15, %ax, %si
	movzwl	8(%rdi), %ebp
	movw	%si, 6(%rdi)
	shldw	$15, %bp, %ax
	movw	%ax, 8(%rdi)
	movzwl	10(%rdi), %eax
	shldw	$15, %ax, %bp
	movw	%bp, 10(%rdi)
	movzwl	12(%rdi), %esi
	shldw	$15, %si, %ax
	movw	%ax, 12(%rdi)
	movzwl	14(%rdi), %eax
	shldw	$15, %ax, %si
	movw	%si, 14(%rdi)
	movzwl	16(%rdi), %esi
	shldw	$15, %si, %ax
	movw	%ax, 16(%rdi)
	movzwl	18(%rdi), %eax
	shldw	$15, %ax, %si
	movw	%si, 18(%rdi)
	movzwl	20(%rdi), %esi
	shldw	$15, %si, %ax
	movw	%ax, 20(%rdi)
	movzwl	22(%rdi), %eax
	shldw	$15, %ax, %si
	movw	%si, 22(%rdi)
	movzwl	24(%rdi), %esi
	shrdw	$1, %ax, %si
	movw	%si, 24(%rdi)
	leal	-1(%rcx), %eax
	movl	%edx, %esi
	cmpl	$-143, %ecx
	movl	%eax, %ecx
	jge	.LBB7_20
	jmp	.LBB7_24
.LBB7_21:
	movl	%ecx, %eax
	jmp	.LBB7_24
.LBB7_8:
	xorl	%ecx, %ecx
	testw	%r9w, %r9w
	js	.LBB7_24
.LBB7_11:
	movzwl	24(%rdi), %r8d
	movzwl	20(%rdi), %edx
	movzwl	22(%rdi), %esi
	movzwl	18(%rdi), %ebp
	movd	%ebp, %xmm0
	movzwl	16(%rdi), %ebp
	movd	%ebp, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movzwl	14(%rdi), %ebp
	movd	%ebp, %xmm0
	movzwl	12(%rdi), %ebp
	movd	%ebp, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r9d, %xmm1
	movd	%ecx, %xmm0
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movzwl	10(%rdi), %ecx
	movd	%ecx, %xmm1
	movzwl	8(%rdi), %ecx
	movd	%ecx, %xmm3
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	.p2align	4, 0x90
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movl	%r8d, %eax
	movl	%edx, %ebp
	movl	%esi, %edx
	movl	%r8d, %esi
	shrdw	$15, %dx, %si
	shrdw	$15, %bp, %dx
	leal	(%rax,%rax), %r8d
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %ebp, %xmm1
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	cmpl	$159, %ecx
	ja	.LBB7_16
# %bb.14:                               #   in Loop: Header=BB7_15 Depth=1
	leal	1(%rcx), %eax
	pextrw	$1, %xmm0, %ebp
	testw	%bp, %bp
	jns	.LBB7_15
.LBB7_16:
	movw	%r8w, 24(%rdi)
	movw	%si, 22(%rdi)
	movw	%dx, 20(%rdi)
	movdqu	%xmm0, 4(%rdi)
	addl	$1, %ecx
	movl	%ecx, %eax
	jmp	.LBB7_24
.LBB7_23:
	movw	$0, 4(%rdi)
	movw	%bp, 8(%rdi)
	movw	%r9w, 6(%rdi)
	movw	%bx, 10(%rdi)
	movw	%si, 12(%rdi)
	movw	%dx, 14(%rdi)
	movw	%r14w, 16(%rdi)
	movw	%r11w, 18(%rdi)
	movw	%r10w, 20(%rdi)
	movw	%r8w, 22(%rdi)
	movw	$0, 24(%rdi)
.LBB7_24:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movl	$0, 18(%rbx)
	movw	$0, 22(%rbx)
	movl	$12, %eax
	xorl	%r14d, %r14d
	jmp	.LBB8_52
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
	andl	$1, %edx
	addw	30(%r15), %ax
	addl	%edx, %eax
	movw	%ax, 4(%rbx)
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
	movl	$11, %eax
	xorl	%r14d, %r14d
	jmp	.LBB8_52
.LBB8_51:
	xorl	%eax, %eax
	testq	%r14, %r14
	cmovlel	%eax, %r14d
	movl	$1, %eax
.LBB8_52:
	movw	%r14w, (%rbx,%rax,2)
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
	je	.LBB9_34
# %bb.1:
	js	.LBB9_17
# %bb.2:
	cmpl	$16, %esi
	jge	.LBB9_3
# %bb.8:
	cmpl	$8, %esi
	jge	.LBB9_9
.LBB9_12:
	testl	%esi, %esi
	jg	.LBB9_13
	jmp	.LBB9_16
.LBB9_17:
	cmpl	$-16, %esi
	jg	.LBB9_18
# %bb.19:
	movzwl	24(%rdi), %eax
	movzwl	22(%rdi), %r9d
	movzwl	20(%rdi), %edx
	movdqu	4(%rdi), %xmm0
	leal	-1(%rsi), %ecx
	cmpl	$-33, %ecx
	movl	$-32, %r8d
	cmovgl	%ecx, %r8d
	subl	%esi, %r8d
	addl	$16, %r8d
	movl	%r8d, %r11d
	shrl	$4, %r11d
	addl	$1, %r11d
	movl	%r11d, %r10d
	andl	$3, %r10d
	cmpl	$48, %r8d
	jae	.LBB9_35
# %bb.20:
	xorl	%ebx, %ebx
                                        # implicit-def: $xmm1
	jmp	.LBB9_21
.LBB9_3:
	movdqu	6(%rdi), %xmm0
	movzwl	22(%rdi), %edx
	movl	%esi, %eax
	notl	%eax
	cmpl	$-33, %eax
	movl	$-32, %ebx
	cmovgl	%eax, %ebx
	movzwl	24(%rdi), %ecx
	leal	(%rbx,%rsi), %eax
	addl	$16, %eax
	andl	$-16, %eax
	cmpl	$32, %esi
	jl	.LBB9_4
# %bb.5:
	cmpl	$48, %esi
	jl	.LBB9_6
# %bb.38:                               # %.preheader2
	pextrw	$2, %xmm0, %r8d
	pextrw	$3, %xmm0, %r9d
	pextrw	$4, %xmm0, %r10d
	pextrw	$5, %xmm0, %r11d
	pextrw	$6, %xmm0, %ebx
	pextrw	$7, %xmm0, %ebp
	movd	%ecx, %xmm0
	movd	%edx, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	%ebp, %xmm0
	movd	%ebx, %xmm2
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r11d, %xmm0
	movd	%r10d, %xmm3
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	%r9d, %xmm0
	movd	%r8d, %xmm1
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpcklqdq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	leal	-16(%rsi), %ecx
	.p2align	4, 0x90
.LBB9_39:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm1, %xmm0
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	addl	$-16, %ecx
	cmpl	$31, %ecx
	jg	.LBB9_39
# %bb.40:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.LBB9_7
.LBB9_18:
	negl	%esi
	xorl	%ebx, %ebx
	movl	%esi, %r10d
	cmpl	$8, %r10d
	jge	.LBB9_26
	jmp	.LBB9_29
.LBB9_4:
	movl	%ecx, %ebx
	movl	%edx, %ecx
	jmp	.LBB9_7
.LBB9_35:
	subl	%r10d, %r11d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_36:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm1
	movl	%eax, %ecx
	pextrw	$7, %xmm0, %ebp
	orl	%ebx, %ecx
	pextrw	$6, %xmm0, %eax
	orl	%r9d, %edx
	orl	%ecx, %edx
	orl	%ebp, %edx
	pextrw	$5, %xmm0, %r9d
	movl	%edx, %ebx
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	pextrw	$4, %xmm1, %edx
	addl	$-4, %r11d
	jne	.LBB9_36
# %bb.37:
	pslldq	$6, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9]
.LBB9_21:
	andl	$-16, %r8d
	movl	%eax, %ecx
	testl	%r10d, %r10d
	je	.LBB9_24
# %bb.22:                               # %.preheader
	negl	%r10d
	.p2align	4, 0x90
.LBB9_23:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm1
	movl	%r9d, %ecx
	movl	%edx, %r9d
	orl	%ebx, %eax
	movl	%eax, %ebx
	pslldq	$2, %xmm0               # xmm0 = zero,zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	pextrw	$7, %xmm1, %edx
	movl	%ecx, %eax
	incl	%r10d
	jne	.LBB9_23
.LBB9_24:
	addl	%r8d, %esi
	movl	$-16, %r10d
	subl	%esi, %r10d
	movw	%cx, 24(%rdi)
	movw	%r9w, 22(%rdi)
	movdqu	%xmm1, 6(%rdi)
	movw	$0, 4(%rdi)
	cmpl	$8, %r10d
	jl	.LBB9_29
.LBB9_26:
	movzwl	24(%rdi), %edx
	movzwl	4(%rdi), %esi
	movdqu	6(%rdi), %xmm0
	movzwl	22(%rdi), %ecx
	movl	%r10d, %eax
	notl	%eax
	cmpl	$-17, %eax
	movl	$-16, %ebp
	cmovgl	%eax, %ebp
	leal	(%r10,%rbp), %r8d
	addl	$8, %r8d
	andl	$-8, %r8d
	leal	8(%r10), %eax
	movdqa	.LCPI9_0(%rip), %xmm1   # xmm1 = [0,65535,65535,65535,65535,65535,65535,65535]
	.p2align	4, 0x90
.LBB9_27:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %r9d
	movl	%ecx, %edx
	movzbl	%r9b, %ecx
	orl	%ecx, %ebx
	movzwl	%si, %esi
	movd	%esi, %xmm2
	shrl	$8, %esi
	movdqa	%xmm1, %xmm3
	pandn	%xmm2, %xmm3
	movdqa	%xmm0, %xmm2
	pslldq	$2, %xmm2               # xmm2 = zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm3, %xmm2
	psllw	$8, %xmm2
	pextrw	$7, %xmm0, %ecx
	psrlw	$8, %xmm0
	por	%xmm2, %xmm0
	shldw	$8, %dx, %cx
	shldw	$8, %r9w, %dx
	addl	$-8, %eax
	cmpl	$15, %eax
	jg	.LBB9_27
# %bb.28:
	subl	%r8d, %r10d
	addl	$-8, %r10d
	movw	%dx, 24(%rdi)
	movw	%si, 4(%rdi)
	movdqu	%xmm0, 6(%rdi)
	movw	%cx, 22(%rdi)
.LBB9_29:
	testl	%r10d, %r10d
	jle	.LBB9_33
# %bb.30:
	movzwl	24(%rdi), %esi
	movzwl	4(%rdi), %edx
	movdqu	6(%rdi), %xmm0
	movzwl	22(%rdi), %eax
	addl	$1, %r10d
	movdqa	.LCPI9_0(%rip), %xmm1   # xmm1 = [0,65535,65535,65535,65535,65535,65535,65535]
	.p2align	4, 0x90
.LBB9_31:                               # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	movl	%eax, %esi
	pextrw	$7, %xmm0, %eax
	shldw	$15, %si, %ax
	shldw	$15, %cx, %si
	andl	$1, %ecx
	orl	%ecx, %ebx
	movzwl	%dx, %edx
	movd	%edx, %xmm2
	shrl	%edx
	movdqa	%xmm0, %xmm3
	psrlw	$1, %xmm3
	movdqa	%xmm1, %xmm4
	pandn	%xmm2, %xmm4
	pslldq	$2, %xmm0               # xmm0 = zero,zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm4, %xmm0
	psllw	$15, %xmm0
	por	%xmm3, %xmm0
	addl	$-1, %r10d
	cmpl	$1, %r10d
	jg	.LBB9_31
# %bb.32:
	movw	%si, 24(%rdi)
	movw	%dx, 4(%rdi)
	movdqu	%xmm0, 6(%rdi)
	movw	%ax, 22(%rdi)
.LBB9_33:
	movl	$1, %eax
	testw	%bx, %bx
	jne	.LBB9_34
	jmp	.LBB9_16
.LBB9_6:
	psrldq	$2, %xmm0               # xmm0 = xmm0[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %edx, %xmm0
	xorl	%ebx, %ebx
.LBB9_7:
	subl	%eax, %esi
	addl	$-16, %esi
	movdqu	%xmm0, 4(%rdi)
	movw	%cx, 20(%rdi)
	movw	%bx, 22(%rdi)
	movw	$0, 24(%rdi)
	cmpl	$8, %esi
	jl	.LBB9_12
.LBB9_9:
	movzwl	24(%rdi), %edx
	movzwl	22(%rdi), %eax
	movzwl	20(%rdi), %ecx
	movl	%esi, %ebp
	notl	%ebp
	cmpl	$-17, %ebp
	movl	$-16, %ebx
	cmovgl	%ebp, %ebx
	movdqu	4(%rdi), %xmm0
	leal	(%rsi,%rbx), %r8d
	addl	$8, %r8d
	andl	$-8, %r8d
	leal	8(%rsi), %ebx
	.p2align	4, 0x90
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
                                        # kill: def $dx killed $dx killed $edx def $edx
	movl	%ecx, %ebp
	movl	%eax, %ecx
	movl	%edx, %eax
	shll	$8, %edx
	shrdw	$8, %cx, %ax
	shrdw	$8, %bp, %cx
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %ebp, %xmm1
	psrlw	$8, %xmm1
	psllw	$8, %xmm0
	por	%xmm1, %xmm0
	addl	$-8, %ebx
	cmpl	$15, %ebx
	jg	.LBB9_10
# %bb.11:
	subl	%r8d, %esi
	addl	$-8, %esi
	movw	%dx, 24(%rdi)
	movw	%ax, 22(%rdi)
	movw	%cx, 20(%rdi)
	movdqu	%xmm0, 4(%rdi)
	testl	%esi, %esi
	jle	.LBB9_16
.LBB9_13:
	movzwl	24(%rdi), %edx
	movzwl	22(%rdi), %eax
	movzwl	20(%rdi), %ecx
	movdqu	4(%rdi), %xmm0
	addl	$1, %esi
	.p2align	4, 0x90
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
                                        # kill: def $dx killed $dx killed $edx def $rdx
	movl	%ecx, %ebp
	movl	%eax, %ecx
	movl	%edx, %eax
	addl	%edx, %edx
	shrdw	$15, %cx, %ax
	shrdw	$15, %bp, %cx
	movdqa	%xmm0, %xmm1
	psrldq	$2, %xmm1               # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
	pinsrw	$7, %ebp, %xmm1
	psrlw	$15, %xmm1
	paddw	%xmm0, %xmm0
	por	%xmm1, %xmm0
	addl	$-1, %esi
	cmpl	$1, %esi
	jg	.LBB9_14
# %bb.15:
	movw	%dx, 24(%rdi)
	movw	%ax, 22(%rdi)
	movw	%cx, 20(%rdi)
	movdqu	%xmm0, 4(%rdi)
.LBB9_16:
	xorl	%eax, %eax
.LBB9_34:
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
