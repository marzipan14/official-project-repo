	.text
	.file	"ldtoa.c"
	.globl	_ldtoa_r                # -- Begin function _ldtoa_r
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
	subq	$456, %rsp              # imm = 0x1C8
	movq	%r9, -480(%rbp)         # 8-byte Spill
	movq	%r8, %r14
	movq	%rcx, %r15
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movq	%rdi, %r13
	fldt	16(%rbp)
	fstpt	-496(%rbp)
	movabsq	$622770257919, %rax     # imm = 0x90FFFFFFFF
	movq	%rax, -472(%rbp)
	movq	96(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	movl	104(%r13), %ecx
	movl	%ecx, 8(%rsi)
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 12(%rsi)
	movq	%r13, %rdi
	callq	_Bfree
	movq	$0, 96(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	leaq	-496(%rbp), %rdi
	leaq	-384(%rbp), %rbx
	movq	%rbx, %rsi
	callq	e64toe
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -366(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_28
.LBB0_5:
	xorl	%eax, %eax
.LBB0_6:
	movl	-228(%rbp), %ebx        # 4-byte Reload
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ebx
	jne	.LBB0_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movq	-336(%rbp), %r14        # 8-byte Reload
	movl	%r14d, %ecx
	jmp	.LBB0_10
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	-336(%rbp), %r14        # 8-byte Reload
	je	.LBB0_11
# %bb.9:
	leal	-1(%r14), %ecx
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, %eax
	cmpl	$43, %ecx
	jge	.LBB0_12
	jmp	.LBB0_13
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$20, %eax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
.LBB0_13:
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movl	-468(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	leaq	-384(%rbp), %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_22
# %bb.14:
	leaq	-304(%rbp), %rdi
	movl	$.L.str, %esi
.LBB0_15:
	xorl	%eax, %eax
	callq	sprintf
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$9999, %r12d            # imm = 0x270F
.LBB0_17:
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)
	movl	%r12d, -456(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-366(%rbp), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_19
# %bb.18:
	leaq	-384(%rbp), %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_20
	jmp	.LBB0_21
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	leaq	-384(%rbp), %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_24
.LBB0_21:
	movl	$9999, (%r15)           # imm = 0x270F
	jmp	.LBB0_86
.LBB0_22:
	movl	$144, -468(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-384(%rbp), %esi
	movzwl	-382(%rbp), %ecx
	movw	%si, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, -142(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-380(%rbp), %edx
	movw	%dx, -140(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-378(%rbp), %ebx
	movw	%bx, -138(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-376(%rbp), %r12d
	movw	%r12w, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-374(%rbp), %r10d
	movw	%r10w, -134(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-372(%rbp), %r9d
	movw	%r9w, -132(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-370(%rbp), %r8d
	movw	%r8w, -130(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-368(%rbp), %r11d
	movw	%r11w, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-366(%rbp), %eax
	movw	%ax, -126(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB0_29
# %bb.23:
	movl	$0, -308(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_30
.LBB0_24:
	movl	-456(%rbp), %eax
	addl	$1, %eax
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	-304(%rbp), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_78
# %bb.25:                               # %.preheader3
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %cl
	je	.LBB0_79
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-303(%rbp,%rax), %ecx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_26
	jmp	.LBB0_81
.LBB0_28:
	movl	$1, %eax
	jmp	.LBB0_6
.LBB0_29:
	andl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, -126(%rbp)
	movw	$-1, %di
	movl	%edi, -308(%rbp)        # 4-byte Spill
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -224(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -220(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -212(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -210(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-32768, -208(%rbp)     # imm = 0x8000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$16383, -206(%rbp)      # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	movq	%r13, -392(%rbp)        # 8-byte Spill
	je	.LBB0_34
# %bb.31:
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_44
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -308(%rbp)          # 2-byte Folded Reload
	movl	-228(%rbp), %ebx        # 4-byte Reload
	leaq	-304(%rbp), %rdi
	je	.LBB0_112
# %bb.33:
	movl	$.L.str.1, %esi
	jmp	.LBB0_113
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	jne	.LBB0_43
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	jne	.LBB0_43
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jne	.LBB0_43
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%bx, %bx
	jne	.LBB0_43
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	jne	.LBB0_43
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r10w, %r10w
	jne	.LBB0_43
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r9w, %r9w
	jne	.LBB0_43
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r8w, %r8w
	jne	.LBB0_43
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r11w, %r11w
	je	.LBB0_208
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_46
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r11w, %r11w
	movl	-228(%rbp), %ebx        # 4-byte Reload
	js	.LBB0_46
# %bb.45:
	leaq	-304(%rbp), %rdi
	movl	$.L.str.3, %esi
	jmp	.LBB0_15
.LBB0_46:
	leaq	-144(%rbp), %rsi
	movl	$eone, %edi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r15, -344(%rbp)        # 8-byte Spill
	je	.LBB0_209
# %bb.47:
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_114
# %bb.48:
	cmpw	$0, -126(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_198
# %bb.49:
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %r14
	movq	%r14, %rsi
	callq	emovi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movzwl	-56(%rbp), %eax
	leaq	-112(%rbp), %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_67 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	jne	.LBB0_77
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-76(%rbp), %eax
	movw	%ax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-74(%rbp), %ecx
	movw	%cx, -106(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-72(%rbp), %ecx
	movw	%cx, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-70(%rbp), %ecx
	movw	%cx, -102(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-68(%rbp), %ecx
	movw	%cx, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-66(%rbp), %ecx
	movw	%cx, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-64(%rbp), %ecx
	movw	%cx, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %ecx
	movw	%cx, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-60(%rbp), %ecx
	movw	%cx, -92(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-58(%rbp), %ecx
	movw	%cx, -90(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_52:                               #   Parent Loop BB0_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=2
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=2
	movzwl	%ax, %eax
	shrl	%eax
	movw	%ax, -112(%rbp,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_52 Depth=2
	movzwl	%ax, %eax
	orl	$32768, %eax            # imm = 0x8000
	movw	%ax, -112(%rbp,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_56:                               #   in Loop: Header=BB0_52 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %ecx
	je	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_52 Depth=2
	addl	%edx, %edx
	movzwl	-110(%rbp,%rcx,2), %eax
	addq	$1, %rcx
	jmp	.LBB0_52
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_60
	.p2align	4, 0x90
.LBB0_59:                               #   in Loop: Header=BB0_60 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpl	$13, %eax
	je	.LBB0_64
.LBB0_60:                               #   Parent Loop BB0_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-112(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_62:                               #   in Loop: Header=BB0_60 Depth=2
	movzwl	%dx, %edx
	shrl	%edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_59
# %bb.63:                               #   in Loop: Header=BB0_60 Depth=2
	movzwl	%dx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	eaddm
	movzwl	-110(%rbp), %eax
	addl	$3, %eax
	movw	%ax, -110(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-108(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	jne	.LBB0_66
	jmp	.LBB0_74
	.p2align	4, 0x90
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-108(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	je	.LBB0_73
.LBB0_66:                               #   Parent Loop BB0_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_67 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_67:                               #   Parent Loop BB0_50 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=3
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=3
	movzwl	%si, %esi
	shrl	%esi
	movw	%si, -112(%rbp,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_67 Depth=3
	movzwl	%si, %esi
	orl	$32768, %esi            # imm = 0x8000
	movw	%si, -112(%rbp,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_71:                               #   in Loop: Header=BB0_67 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %ecx
	je	.LBB0_65
# %bb.72:                               #   in Loop: Header=BB0_67 Depth=3
	addl	%edx, %edx
	movzwl	-110(%rbp,%rcx,2), %esi
	addq	$1, %rcx
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_73:                               #   in Loop: Header=BB0_50 Depth=1
	movw	%ax, -110(%rbp)
.LBB0_74:                               #   in Loop: Header=BB0_50 Depth=1
	cmpw	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_77
# %bb.75:                               #   in Loop: Header=BB0_50 Depth=1
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-112(%rbp), %ecx
	movw	%cx, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -78(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-106(%rbp), %eax
	movl	%eax, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-102(%rbp), %eax
	movw	%ax, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-100(%rbp), %eax
	movw	%ax, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-98(%rbp), %eax
	movw	%ax, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-96(%rbp), %eax
	movw	%ax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-94(%rbp), %eax
	movw	%ax, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-92(%rbp), %eax
	movw	%ax, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-90(%rbp), %eax
	movw	%ax, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$43, %ebx
	jb	.LBB0_50
.LBB0_77:
	leaq	-80(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	emovo
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-128(%rbp), %eax
	jmp	.LBB0_201
.LBB0_78:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-304(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_85
.LBB0_79:
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	movzbl	-303(%rbp,%rax), %ecx
	movb	%cl, -304(%rbp,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_80
.LBB0_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_82:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-305(%rbp,%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	leaq	-1(%rax), %rax
	jl	.LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	cmpb	$69, %cl
	jne	.LBB0_82
.LBB0_84:
	addq	%rbp, %rax
	addq	$-304, %rax             # imm = 0xFED0
.LBB0_85:
	movb	$0, (%rax)
.LBB0_86:
	leaq	-304(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_87:                               #   in Loop: Header=BB0_88 Depth=1
	addq	$1, %rcx
.LBB0_88:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %al
	je	.LBB0_87
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	je	.LBB0_87
# %bb.90:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_91:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rax), %edx
	movb	%dl, -304(%rbp,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB0_91
# %bb.92:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jne	.LBB0_94
# %bb.93:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	jmp	.LBB0_95
.LBB0_94:
	movl	-456(%rbp), %ecx
	movq	-352(%rbp), %rdx        # 8-byte Reload
	cmpl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovgel	%edx, %ecx
	movslq	%ecx, %rcx
.LBB0_95:
	leaq	(%rax,%rbp), %rbx
	addq	$-305, %rbx             # imm = 0xFECF
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, -306(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_100
# %bb.96:
	leaq	-304(%rbp), %rax
	.p2align	4, 0x90
.LBB0_97:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jle	.LBB0_100
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	leaq	-1(%rbx), %rdx
	movb	$0, -1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, -2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rbx
	je	.LBB0_97
# %bb.99:
	movq	%rdx, %rbx
.LBB0_100:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, -228(%rbp)          # 4-byte Folded Reload
	movq	-352(%rbp), %rax        # 8-byte Reload
	jne	.LBB0_103
# %bb.101:
	addl	-456(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_104
# %bb.102:
	movl	(%r15), %eax
	jmp	.LBB0_105
.LBB0_103:
	movl	$42, __A_VARIABLE(%rip)
	addl	$9, %r14d
	jmp	.LBB0_106
.LBB0_104:
	leaq	-304(%rbp), %rbx
	movb	$0, -304(%rbp)
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_105:
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r14d
	addl	$3, %r14d
.LBB0_106:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 104(%r13)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	jb	.LBB0_109
# %bb.107:                              # %.preheader
	movslq	%r14d, %rax
	movl	$4, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_108:                              # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	movl	%esi, 104(%r13)
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ecx, %rdx
	addq	$28, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jbe	.LBB0_108
.LBB0_109:
	movq	%r13, %rdi
	callq	_Balloc
	movq	%rax, %r15
	movq	%rax, 96(%r13)
	leaq	-304(%rbp), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-480(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_111
# %bb.110:
	subq	%r14, %rbx
	movq	%r15, %rax
	addq	%rbx, %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_111:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_112:
	movl	$.L.str.2, %esi
.LBB0_113:
	xorl	%eax, %eax
	callq	sprintf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-136(%rbp), %eax
	movw	%ax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-134(%rbp), %eax
	movw	%ax, -102(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-132(%rbp), %eax
	movw	%ax, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-130(%rbp), %eax
	movw	%ax, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-128(%rbp), %eax
	movw	%ax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$16526, -94(%rbp)       # imm = 0x408E
	movl	$42, __A_VARIABLE(%rip)
	movw	$16, %r14w
	movl	$etens+160, %r13d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_116
	.p2align	4, 0x90
.LBB0_115:                              #   in Loop: Header=BB0_116 Depth=1
	addq	$20, %r13
	shrl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r14w, %r14w
	je	.LBB0_192
.LBB0_116:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_186 Depth 2
	movq	%r13, %rdi
	leaq	-112(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	leaq	-472(%rbp), %rcx
	callq	ediv
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-224(%rbp), %r15d
	movzwl	-222(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-220(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-218(%rbp), %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-216(%rbp), %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-214(%rbp), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-212(%rbp), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-210(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-208(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-206(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %edi
	andl	$32767, %edi            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r14w, %r14d
	cmpl	$16382, %edi            # imm = 0x3FFE
	ja	.LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_131
	.p2align	4, 0x90
.LBB0_118:                              #   in Loop: Header=BB0_116 Depth=1
	movq	%r13, -320(%rbp)        # 8-byte Spill
	movl	$16526, %r13d           # imm = 0x408E
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, -78(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%bx, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subl	%edi, %r13d
	jle	.LBB0_128
# %bb.119:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %r13d
	movw	%dx, -240(%rbp)         # 2-byte Spill
	jl	.LBB0_129
# %bb.120:                              #   in Loop: Header=BB0_116 Depth=1
	movw	%r11w, -322(%rbp)       # 2-byte Spill
	movw	%r10w, -324(%rbp)       # 2-byte Spill
	movw	%r9w, -230(%rbp)        # 2-byte Spill
	movw	%r8w, -146(%rbp)        # 2-byte Spill
	leal	-16527(%rdi), %r8d
	cmpl	$-33, %r8d
	movl	$-32, %ecx
	cmovlel	%ecx, %r8d
	subl	%edi, %r8d
	addl	$16542, %r8d            # imm = 0x409E
	movl	%r8d, %r9d
	shrl	$4, %r9d
	addl	$1, %r9d
	movl	%r9d, %r11d
	leaq	-80(%rbp), %r10
	andl	$3, %r11d
	je	.LBB0_124
# %bb.121:                              # %.preheader16
                                        #   in Loop: Header=BB0_116 Depth=1
	leal	-16526(%rdi), %r13d
	negl	%r11d
	leaq	-80(%rbp), %r10
	.p2align	4, 0x90
.LBB0_122:                              #   Parent Loop BB0_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%r10)
	addq	$2, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$16, %r13d
	incl	%r11d
	jne	.LBB0_122
# %bb.123:                              # %.loopexit17
                                        #   in Loop: Header=BB0_116 Depth=1
	negl	%r13d
.LBB0_124:                              #   in Loop: Header=BB0_116 Depth=1
	cmpl	$48, %r8d
	jb	.LBB0_127
# %bb.125:                              # %.preheader14
                                        #   in Loop: Header=BB0_116 Depth=1
	addl	$64, %r13d
	.p2align	4, 0x90
.LBB0_126:                              #   Parent Loop BB0_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-64, %r13d
	addq	$8, %r10
	cmpl	$79, %r13d
	jg	.LBB0_126
.LBB0_127:                              #   in Loop: Header=BB0_116 Depth=1
	leaq	-80(,%r9,2), %rdx
	addq	%rbp, %rdx
	andl	$-16, %r8d
	addl	%r8d, %edi
	movl	$16510, %r13d           # imm = 0x407E
	subl	%edi, %r13d
	movzwl	-80(%rbp,%r9,2), %edi
	movzwl	-146(%rbp), %r8d        # 2-byte Folded Reload
	movzwl	-230(%rbp), %r9d        # 2-byte Folded Reload
	movzwl	-324(%rbp), %r10d       # 2-byte Folded Reload
	movzwl	-322(%rbp), %r11d       # 2-byte Folded Reload
	jmp	.LBB0_130
.LBB0_128:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-320(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_169
.LBB0_129:                              #   in Loop: Header=BB0_116 Depth=1
	movl	%r15d, %edi
	leaq	-80(%rbp), %rdx
.LBB0_130:                              #   in Loop: Header=BB0_116 Depth=1
	movslq	%r13d, %rcx
	andw	bmask(%rcx,%rcx), %di
	movw	%di, (%rdx)
	movq	-320(%rbp), %r13        # 8-byte Reload
	movzwl	-240(%rbp), %edx        # 2-byte Folded Reload
.LBB0_131:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	jns	.LBB0_167
# %bb.132:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-80(%rbp), %r15w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.133:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-78(%rbp), %dx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.134:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-76(%rbp), %r12w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.135:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-74(%rbp), %r11w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.136:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-72(%rbp), %r10w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.137:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-70(%rbp), %r9w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.138:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-68(%rbp), %r8w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.139:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-66(%rbp), %bx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.140:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-64(%rbp), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_167
	.p2align	4, 0x90
.LBB0_142:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$eone, %edi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-32768, -64(%rbp)      # imm = 0x8000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$16383, -62(%rbp)       # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_166
.LBB0_144:                              #   in Loop: Header=BB0_116 Depth=1
	leaq	-80(%rbp), %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_166
.LBB0_146:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_149
# %bb.147:                              #   in Loop: Header=BB0_116 Depth=1
	leaq	-80(%rbp), %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_150
# %bb.148:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_145
.LBB0_149:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_150:                              #   in Loop: Header=BB0_116 Depth=1
	movq	%r13, -320(%rbp)        # 8-byte Spill
	movl	$eone, %edi
	leaq	-304(%rbp), %rsi
	callq	emovi
	leaq	-80(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	emovi
	movl	$42, __A_VARIABLE(%rip)
	movl	-304(%rbp), %edx
	notl	%edx
	movw	%dx, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-302(%rbp), %edi
	movzwl	%di, %eax
	movzwl	-190(%rbp), %r8d
	movzwl	%r8w, %r13d
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %rsi
	jle	.LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-192(%rbp), %ecx
	movzwl	-188(%rbp), %ebx
	movw	%bx, -240(%rbp)         # 2-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-186(%rbp), %ebx
	movw	%bx, -230(%rbp)         # 2-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-184(%rbp), %ebx
	movw	%bx, -146(%rbp)         # 2-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-182(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-180(%rbp), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-178(%rbp), %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-176(%rbp), %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-174(%rbp), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-172(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-170(%rbp), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, -190(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-300(%rbp), %edx
	movw	%dx, -188(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-298(%rbp), %edx
	movw	%dx, -186(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-296(%rbp), %edx
	movw	%dx, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-294(%rbp), %edx
	movw	%dx, -182(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-292(%rbp), %edx
	movw	%dx, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-290(%rbp), %edx
	movw	%dx, -178(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-288(%rbp), %edx
	movw	%dx, -176(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-286(%rbp), %edx
	movw	%dx, -174(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-284(%rbp), %edx
	movw	%dx, -172(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-282(%rbp), %edx
	movw	%dx, -170(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, -302(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-240(%rbp), %ecx        # 2-byte Folded Reload
	movw	%cx, -300(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-230(%rbp), %ecx        # 2-byte Folded Reload
	movw	%cx, -298(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-146(%rbp), %ecx        # 2-byte Folded Reload
	movw	%cx, -296(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%bx, -294(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, -292(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, -290(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, -286(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, -284(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, -282(%rbp)
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -280(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	negq	%rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_152:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	leaq	-192(%rbp), %rax
	je	.LBB0_155
# %bb.153:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-145, %rsi
	jl	.LBB0_164
# %bb.154:                              #   in Loop: Header=BB0_116 Depth=1
	leaq	-304(%rbp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	eshift
	movl	%eax, %r12d
	jmp	.LBB0_158
.LBB0_155:                              #   in Loop: Header=BB0_116 Depth=1
	leaq	-304(%rbp), %rdi
	movq	%rax, %rsi
	callq	ecmpm
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_177
# %bb.156:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_181
# %bb.157:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-192(%rbp), %eax
	movq	%r13, -240(%rbp)        # 8-byte Spill
	movzwl	-190(%rbp), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-188(%rbp), %ecx
	movw	%cx, -146(%rbp)         # 2-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-186(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-184(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-182(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-180(%rbp), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-178(%rbp), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-176(%rbp), %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-174(%rbp), %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-172(%rbp), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-170(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-304(%rbp), %ecx
	movw	%cx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-302(%rbp), %ecx
	movw	%cx, -190(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-300(%rbp), %ecx
	movw	%cx, -188(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-298(%rbp), %ecx
	movw	%cx, -186(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-296(%rbp), %ecx
	movw	%cx, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-294(%rbp), %ecx
	movw	%cx, -182(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-292(%rbp), %ecx
	movw	%cx, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-290(%rbp), %ecx
	movw	%cx, -178(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-288(%rbp), %ecx
	movw	%cx, -176(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-286(%rbp), %ecx
	movw	%cx, -174(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-284(%rbp), %ecx
	movw	%cx, -172(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-282(%rbp), %ecx
	movw	%cx, -170(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, -302(%rbp)
	movq	-240(%rbp), %r13        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-146(%rbp), %eax        # 2-byte Folded Reload
	movw	%ax, -300(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, -298(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, -296(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, -294(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, -292(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, -290(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, -286(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, -284(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, -282(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -280(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB0_158:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_159:                              #   in Loop: Header=BB0_116 Depth=1
	movzwl	-304(%rbp), %eax
	cmpw	-192(%rbp), %ax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-304(%rbp), %rdi
	leaq	-192(%rbp), %r15
	movq	%r15, %rsi
	jne	.LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_116 Depth=1
	callq	eaddm
	xorl	%edx, %edx
	jmp	.LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_116 Depth=1
	callq	esubm
	movl	$1, %edx
.LBB0_162:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r13, %rcx
	movl	$64, %r8d
	leaq	-472(%rbp), %r9
	callq	emdnorm
	movq	%r15, %rax
.LBB0_163:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_164:                              #   in Loop: Header=BB0_116 Depth=1
	movq	%rax, %rdi
	leaq	-80(%rbp), %rsi
	callq	emovo
.LBB0_165:                              #   in Loop: Header=BB0_116 Depth=1
	movq	-320(%rbp), %r13        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_166:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-224(%rbp), %r15d
.LBB0_167:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	-80(%rbp), %r15w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.168:                              #   in Loop: Header=BB0_116 Depth=1
	movzwl	-222(%rbp), %ecx
	movzwl	-78(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%dx, %cx
	jne	.LBB0_115
.LBB0_169:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-220(%rbp), %eax
	cmpw	-76(%rbp), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.170:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-218(%rbp), %esi
	cmpw	-74(%rbp), %si
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.171:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-216(%rbp), %edi
	cmpw	-72(%rbp), %di
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.172:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-214(%rbp), %r8d
	cmpw	-70(%rbp), %r8w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.173:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-212(%rbp), %r9d
	cmpw	-68(%rbp), %r9w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.174:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-210(%rbp), %r10d
	cmpw	-66(%rbp), %r10w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.175:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-208(%rbp), %r11d
	cmpw	-64(%rbp), %r11w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_115
# %bb.176:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, -110(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, -106(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, -102(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-206(%rbp), %eax
	movw	%ax, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	%r14d, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_115
.LBB0_177:                              #   in Loop: Header=BB0_116 Depth=1
	movzwl	-304(%rbp), %eax
	cmpw	-192(%rbp), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_182
# %bb.178:                              #   in Loop: Header=BB0_116 Depth=1
	cmpw	$0, -190(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-192(%rbp), %rax
	je	.LBB0_183
.LBB0_179:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_180:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r13d
	movw	%r13w, -190(%rbp)
	jmp	.LBB0_163
.LBB0_181:                              #   in Loop: Header=BB0_116 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB0_159
.LBB0_182:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_165
.LBB0_183:                              #   in Loop: Header=BB0_116 Depth=1
	cmpw	$0, -186(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_191
# %bb.184:                              # %.preheader13
                                        #   in Loop: Header=BB0_116 Depth=1
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_186 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB0_190
.LBB0_186:                              #   Parent Loop BB0_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-192(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_186 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_188:                              #   in Loop: Header=BB0_186 Depth=2
	addl	%edx, %edx
	movw	%dx, -192(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_185
# %bb.189:                              #   in Loop: Header=BB0_186 Depth=2
	orl	$1, %edx
	movw	%dx, -192(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_185
.LBB0_190:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-192(%rbp), %rax
	jmp	.LBB0_163
.LBB0_191:                              #   in Loop: Header=BB0_116 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -188(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_180
	jmp	.LBB0_179
.LBB0_192:
	movzwl	-126(%rbp), %eax
	addw	-94(%rbp), %ax
	addl	$-16526, %eax           # imm = 0xBF72
	movw	%ax, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-112(%rbp), %ecx
	movw	%cx, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-110(%rbp), %ecx
	movl	%ecx, -142(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-106(%rbp), %ecx
	movw	%cx, -138(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-104(%rbp), %ecx
	movw	%cx, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-102(%rbp), %ecx
	movw	%cx, -134(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-100(%rbp), %ecx
	movw	%cx, -132(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-98(%rbp), %ecx
	movw	%cx, -130(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-96(%rbp), %ecx
	movw	%cx, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -126(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -224(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -222(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -220(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -218(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -216(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -214(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -212(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -210(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-32768, -208(%rbp)     # imm = 0x8000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$16383, -206(%rbp)      # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rsi
	movl	$etens+240, %edi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_210
# %bb.193:                              # %.preheader11
	movl	$etens, %r15d
	movw	$4096, %bx              # imm = 0x1000
	leaq	-112(%rbp), %r14
	leaq	-472(%rbp), %r12
	leaq	-224(%rbp), %r13
	.p2align	4, 0x90
.LBB0_194:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%bx, %ebx
	testl	%eax, %eax
	jg	.LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_194 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	ediv
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	emul
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=1
	shrl	%ebx
	movl	$42, __A_VARIABLE(%rip)
	testw	%bx, %bx
	je	.LBB0_210
# %bb.197:                              #   in Loop: Header=BB0_194 Depth=1
	addq	$20, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$etens+240, %edi
	movq	%r14, %rsi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_194
	jmp	.LBB0_210
.LBB0_198:
	movzwl	-128(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testw	%ax, %ax
	js	.LBB0_201
# %bb.199:                              # %.preheader20
	leaq	-144(%rbp), %rbx
	leaq	-472(%rbp), %r14
	.p2align	4, 0x90
.LBB0_200:                              # =>This Inner Loop Header: Depth=1
	movl	$etens+240, %edi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	emul
	addl	$-1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-128(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	jns	.LBB0_200
.LBB0_201:
	movq	%r12, -160(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-136(%rbp), %ecx
	movw	%cx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-134(%rbp), %ecx
	movw	%cx, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-132(%rbp), %ecx
	movw	%cx, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-130(%rbp), %ecx
	movw	%cx, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-126(%rbp), %eax
	movw	%ax, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -224(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -222(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -220(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -218(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -216(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -214(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -212(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -210(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-32768, -208(%rbp)     # imm = 0x8000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$16383, -206(%rbp)      # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rsi
	movl	$eone, %edi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_207
# %bb.202:                              # %.preheader18
	movl	$etens, %r15d
	movl	$-4096, %ebx            # imm = 0xF000
	movl	$emtens, %r14d
	leaq	-80(%rbp), %r12
	.p2align	4, 0x90
.LBB0_203:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_203 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	leaq	-472(%rbp), %r13
	movq	%r13, %rcx
	callq	emul
	movq	%r15, %rdi
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%r13, %rcx
	callq	emul
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=1
	leal	1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jb	.LBB0_207
# %bb.206:                              #   in Loop: Header=BB0_203 Depth=1
	movl	%ebx, %r13d
	shrl	$31, %r13d
	addl	%ebx, %r13d
	sarl	%r13d
	addq	$20, %r14
	addq	$20, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$eone, %edi
	movq	%r12, %rsi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ebx
	testl	%eax, %eax
	jg	.LBB0_203
.LBB0_207:
	leaq	-224(%rbp), %rdi
	leaq	-472(%rbp), %rcx
	movl	$eone, %esi
	movq	%rdi, %rdx
	callq	ediv
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_210
.LBB0_208:
	movq	%r15, -344(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_209:
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB0_210:
	leaq	-224(%rbp), %r14
	leaq	-80(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	emovi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-72(%rbp), %eax
	movw	%ax, -216(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-70(%rbp), %eax
	movw	%ax, -214(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-68(%rbp), %eax
	movw	%ax, -212(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-66(%rbp), %eax
	movw	%ax, -210(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-64(%rbp), %eax
	movw	%ax, -208(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %eax
	movw	%ax, -206(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-60(%rbp), %eax
	movw	%ax, -204(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-58(%rbp), %eax
	movw	%ax, -202(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -200(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-144(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	emovi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-72(%rbp), %eax
	movw	%ax, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-70(%rbp), %eax
	movw	%ax, -134(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-68(%rbp), %eax
	movw	%ax, -132(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-66(%rbp), %eax
	movw	%ax, -130(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-64(%rbp), %eax
	movw	%ax, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %eax
	movw	%ax, -126(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-60(%rbp), %eax
	movw	%ax, -124(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-58(%rbp), %eax
	movw	%ax, -122(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-472(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	eiremain
	movzwl	-396(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB0_212
# %bb.211:
	movl	-308(%rbp), %r15d       # 4-byte Reload
	jmp	.LBB0_235
.LBB0_212:
	leaq	-144(%rbp), %r14
	leaq	-112(%rbp), %r12
	leaq	-224(%rbp), %rbx
	leaq	-472(%rbp), %r13
	movl	-308(%rbp), %r15d       # 4-byte Reload
	jmp	.LBB0_214
	.p2align	4, 0x90
.LBB0_213:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	eaddm
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	eiremain
	movzwl	-396(%rbp), %ecx
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	$-1, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	jne	.LBB0_235
.LBB0_214:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_217 Depth 2
                                        #     Child Loop BB0_222 Depth 2
                                        #     Child Loop BB0_230 Depth 2
	movl	$ezero, %esi
	movq	%r14, %rdi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_234
# %bb.215:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_217
	.p2align	4, 0x90
.LBB0_216:                              #   in Loop: Header=BB0_217 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB0_221
.LBB0_217:                              #   Parent Loop BB0_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-144(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_217 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_219:                              #   in Loop: Header=BB0_217 Depth=2
	addl	%edx, %edx
	movw	%dx, -144(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_216
# %bb.220:                              #   in Loop: Header=BB0_217 Depth=2
	orl	$1, %edx
	movw	%dx, -144(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_216
	.p2align	4, 0x90
.LBB0_221:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-136(%rbp), %eax
	movw	%ax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-134(%rbp), %eax
	movw	%ax, -102(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-132(%rbp), %eax
	movw	%ax, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-130(%rbp), %eax
	movw	%ax, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-128(%rbp), %eax
	movw	%ax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-126(%rbp), %eax
	movw	%ax, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-124(%rbp), %eax
	movw	%ax, -92(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-122(%rbp), %eax
	movw	%ax, -90(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_222:                              #   Parent Loop BB0_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_222 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_224:                              #   in Loop: Header=BB0_222 Depth=2
	addl	%edx, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_222 Depth=2
	orl	$1, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_226:                              #   in Loop: Header=BB0_222 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_222 Depth=2
	addl	%ecx, %ecx
	movzwl	-114(%rbp,%rax,2), %edx
	addq	$-1, %rax
	jmp	.LBB0_222
	.p2align	4, 0x90
.LBB0_228:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_230
	.p2align	4, 0x90
.LBB0_229:                              #   in Loop: Header=BB0_230 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB0_213
.LBB0_230:                              #   Parent Loop BB0_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-112(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_230 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_232:                              #   in Loop: Header=BB0_230 Depth=2
	addl	%edx, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_229
# %bb.233:                              #   in Loop: Header=BB0_230 Depth=2
	orl	$1, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_229
.LBB0_234:
	xorl	%ecx, %ecx
.LBB0_235:
	testw	%r15w, %r15w
	movl	$32, %eax
	movl	$45, %edx
	cmovel	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-352(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$3, -228(%rbp)          # 4-byte Folded Reload
	jne	.LBB0_237
# %bb.236:
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_237:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$43, %eax
	movq	-392(%rbp), %r13        # 8-byte Reload
	movq	-336(%rbp), %r14        # 8-byte Reload
	movq	-344(%rbp), %r15        # 8-byte Reload
	jl	.LBB0_239
# %bb.238:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, %eax
.LBB0_239:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$10, %cx
	jne	.LBB0_242
# %bb.240:
	movw	$11825, -303(%rbp)      # imm = 0x2E31
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_244
# %bb.241:
	leaq	-300(%rbp), %rbx
	movb	$48, -301(%rbp)
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	jmp	.LBB0_246
.LBB0_242:
	addb	$48, %cl
	movb	%cl, -303(%rbp)
	leaq	-301(%rbp), %rcx
	movb	$46, -302(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_269
# %bb.243:
	movq	%r15, -344(%rbp)        # 8-byte Spill
	movl	$0, -240(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_247
.LBB0_244:
	leaq	-301(%rbp), %rbx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_285
# %bb.245:
	movl	%ecx, %eax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	xorl	%edx, %edx
.LBB0_246:
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r15, -344(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	shrl	$31, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
.LBB0_247:
	movl	%eax, %r15d
	xorl	%r14d, %r14d
	leaq	-144(%rbp), %rbx
	leaq	-472(%rbp), %r12
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %r13
	jmp	.LBB0_249
	.p2align	4, 0x90
.LBB0_248:                              #   in Loop: Header=BB0_249 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rdi
	movq	%rbx, %rsi
	callq	eaddm
	leaq	-224(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	eiremain
	movb	-396(%rbp), %al
	addb	$48, %al
	movb	%al, (%r13)
	addq	$1, %r13
	leal	1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r14d
	movl	%eax, %r14d
	je	.LBB0_268
.LBB0_249:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_251 Depth 2
                                        #     Child Loop BB0_256 Depth 2
                                        #     Child Loop BB0_264 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_251
	.p2align	4, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_251 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB0_255
.LBB0_251:                              #   Parent Loop BB0_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-144(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_251 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_253:                              #   in Loop: Header=BB0_251 Depth=2
	addl	%edx, %edx
	movw	%dx, -144(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_250
# %bb.254:                              #   in Loop: Header=BB0_251 Depth=2
	orl	$1, %edx
	movw	%dx, -144(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_250
	.p2align	4, 0x90
.LBB0_255:                              #   in Loop: Header=BB0_249 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-136(%rbp), %eax
	movw	%ax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-134(%rbp), %eax
	movw	%ax, -102(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-132(%rbp), %eax
	movw	%ax, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-130(%rbp), %eax
	movw	%ax, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-128(%rbp), %eax
	movw	%ax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-126(%rbp), %eax
	movw	%ax, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-124(%rbp), %eax
	movw	%ax, -92(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-122(%rbp), %eax
	movw	%ax, -90(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_256:                              #   Parent Loop BB0_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_256 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=2
	addl	%edx, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_256 Depth=2
	orl	$1, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_260:                              #   in Loop: Header=BB0_256 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_256 Depth=2
	addl	%ecx, %ecx
	movzwl	-114(%rbp,%rax,2), %edx
	addq	$-1, %rax
	jmp	.LBB0_256
	.p2align	4, 0x90
.LBB0_262:                              #   in Loop: Header=BB0_249 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_264
	.p2align	4, 0x90
.LBB0_263:                              #   in Loop: Header=BB0_264 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB0_248
.LBB0_264:                              #   Parent Loop BB0_249 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-112(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB0_266
# %bb.265:                              #   in Loop: Header=BB0_264 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=2
	addl	%edx, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB0_263
# %bb.267:                              #   in Loop: Header=BB0_264 Depth=2
	orl	$1, %edx
	movw	%dx, -112(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_263
.LBB0_268:
	movq	-320(%rbp), %rcx        # 8-byte Reload
	addq	%r15, %rcx
	addq	$1, %rcx
	movq	-392(%rbp), %r13        # 8-byte Reload
	movq	-336(%rbp), %r14        # 8-byte Reload
	movq	-344(%rbp), %r15        # 8-byte Reload
	jmp	.LBB0_270
.LBB0_269:
	movb	$1, %al
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB0_270:
	leaq	-1(%rcx), %rbx
	cmpw	$5, -396(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_286
# %bb.271:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_274
# %bb.272:
	movq	%rcx, %r12
	leaq	-144(%rbp), %rdi
	leaq	-224(%rbp), %r14
	movq	%r14, %rsi
	callq	emovo
	movl	$ezero, %esi
	movq	%r14, %rdi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_276
# %bb.273:
	movq	%r12, %rcx
	movb	-2(%r12), %al
	addq	$-2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
	cmpb	$0, -240(%rbp)          # 1-byte Folded Reload
	movq	-336(%rbp), %r14        # 8-byte Reload
	jne	.LBB0_275
	jmp	.LBB0_279
.LBB0_274:
	movl	$42, __A_VARIABLE(%rip)
	movb	-2(%rcx), %al
	addq	$-2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
	cmpb	$0, -240(%rbp)          # 1-byte Folded Reload
	je	.LBB0_279
.LBB0_275:
	movb	$49, (%rcx)
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_285
.LBB0_276:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -240(%rbp)          # 1-byte Folded Reload
	movq	-336(%rbp), %r14        # 8-byte Reload
	jne	.LBB0_286
# %bb.277:
	leaq	-2(%r12), %rdx
	xorl	%eax, %eax
	cmpb	$46, -2(%r12)
	sete	%al
	movq	%rdx, %rcx
	subq	%rax, %rcx
	testb	$1, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_286
# %bb.278:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdx), %al
	movl	$42, __A_VARIABLE(%rip)
.LBB0_279:
	andb	$127, %al
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	cmpb	$46, %al
	je	.LBB0_283
# %bb.280:                              # %.preheader5
	addq	$1, %rdx
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB0_281:                              # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %edx
	movb	%dl, -1(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %al
	jb	.LBB0_286
# %bb.282:                              #   in Loop: Header=BB0_281 Depth=1
	movb	$48, -1(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rcx), %eax
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	andb	$127, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	jne	.LBB0_281
.LBB0_283:
	movb	-2(%rcx), %al
	leal	1(%rax), %edx
	movb	%dl, -2(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %al
	jl	.LBB0_286
# %bb.284:
	movq	-160(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movb	$49, -2(%rcx)
.LBB0_285:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_286:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	-160(%rbp), %r12        # 8-byte Reload
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	sprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	-228(%rbp), %ebx        # 4-byte Reload
	jmp	.LBB0_17
.Lfunc_end0:
	.size	_ldtoa_r, .Lfunc_end0-_ldtoa_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function e64toe
	.type	e64toe,@function
e64toe:                                 # @e64toe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -46(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rdi), %eax
	movw	%ax, -38(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rdi), %esi
	movw	%si, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rdi), %edx
	movw	%dx, -34(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rdi), %ecx
	movw	%cx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rdi), %r8d
	movw	%r8w, -30(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %edi
	movl	$42, __A_VARIABLE(%rip)
	andw	$32767, %di             # imm = 0x7FFF
	je	.LBB1_1
# %bb.10:
	movzwl	%di, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %edi            # imm = 0x7FFF
	jne	.LBB1_11
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	jne	.LBB1_13
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	jne	.LBB1_13
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jne	.LBB1_13
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%cx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB1_13
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$32767, 18(%rbx)        # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r8w, %r8w
	jns	.LBB1_17
# %bb.14:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_16
# %bb.15:
	xorb	$-128, 19(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_16
.LBB1_1:
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	js	.LBB1_2
# %bb.3:
	leaq	-48(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	emovi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB1_9
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movzwl	-80(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	addl	%edx, %edx
	movw	%dx, -80(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	orl	$1, %edx
	movw	%dx, -80(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147467264, 16(%rbx)   # imm = 0x7FFFC000
	jmp	.LBB1_16
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	emovo
	jmp	.LBB1_17
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_11:
	movw	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-38(%rbp), %eax
	movw	%ax, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-36(%rbp), %eax
	movw	%ax, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-34(%rbp), %eax
	movw	%ax, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-32(%rbp), %eax
	movw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, 18(%rbx)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	e64toe, .Lfunc_end1-e64toe
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function eisnan
	.type	eisnan,@function
eisnan:                                 # @eisnan
# %bb.0:
	movzwl	18(%rdi), %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB2_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jne	.LBB2_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 2(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 6(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 12(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 14(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_3
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	eisnan, .Lfunc_end2-eisnan
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
	fstpt	-16(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	e64toe
	movzwl	-30(%rbp), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB3_2
# %bb.1:
	leaq	-48(%rbp), %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	movl	$1, %eax
	adcl	$0, %eax
	jmp	.LBB3_3
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ldcheck, .Lfunc_end3-_ldcheck
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function emovi
	.type	emovi,@function
emovi:                                  # @emovi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movswl	18(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	shrl	$15, %eax
	movw	%ax, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movw	%ax, 2(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB4_5
# %bb.1:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_3
# %bb.2:
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
	movw	%ax, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rbx), %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rbx), %eax
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rbx), %eax
	movw	%ax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rbx), %eax
	movw	%ax, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rbx), %eax
	movw	%ax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rbx), %eax
	movw	%ax, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rbx), %eax
	movw	%ax, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rbx), %eax
	movw	%ax, 22(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-2(%rbx), %eax
	movw	%ax, 24(%r14)
	jmp	.LBB4_4
.LBB4_5:
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
	movw	%ax, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rbx), %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rbx), %eax
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rbx), %eax
	movw	%ax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rbx), %eax
	movw	%ax, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rbx), %eax
	movw	%ax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rbx), %eax
	movw	%ax, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rbx), %eax
	movw	%ax, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rbx), %eax
	movw	%ax, 22(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%r14)
	jmp	.LBB4_6
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 22(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%r14)
.LBB4_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	emovi, .Lfunc_end4-emovi
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function emovo
	.type	emovo,@function
emovo:                                  # @emovo
# %bb.0:
	movzwl	(%rdi), %ecx
	movzwl	2(%rdi), %eax
	movl	%eax, %edx
	orl	$-32768, %edx           # imm = 0x8000
	testw	%cx, %cx
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %edx
	movw	%dx, 18(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %edx            # imm = 0x7FFF
	jne	.LBB5_13
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 6(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 12(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 14(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_12
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147467264, 16(%rsi)   # imm = 0x7FFFC000
	jmp	.LBB5_14
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rdi), %eax
	movw	%ax, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rdi), %eax
	movw	%ax, 14(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rdi), %eax
	movw	%ax, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rdi), %eax
	movw	%ax, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rdi), %eax
	movw	%ax, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rdi), %eax
	movw	%ax, 6(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %eax
	movw	%ax, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rdi), %eax
	movw	%ax, 2(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rdi), %eax
	movw	%ax, (%rsi)
.LBB5_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpw	$1, %cx
	sbbw	%dx, %dx
	notl	%edx
	orl	%eax, %edx
	orl	$32767, %edx            # imm = 0x7FFF
	movw	%dx, 18(%rsi)
	jmp	.LBB5_15
.Lfunc_end5:
	.size	emovo, .Lfunc_end5-emovo
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ecmp
	.type	ecmp,@function
ecmp:                                   # @ecmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_2
# %bb.1:
	movq	%r14, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_3
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %eax
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_3:
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	callq	emovi
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	callq	emovi
	movzwl	-80(%rbp), %eax
	cmpw	-48(%rbp), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_4
# %bb.8:
	xorl	%ecx, %ecx
	testw	%ax, %ax
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-78(%rbp), %edx
	movzwl	-46(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-76(%rbp), %edx
	movzwl	-44(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-74(%rbp), %edx
	movzwl	-42(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-72(%rbp), %edx
	movzwl	-40(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-70(%rbp), %edx
	movzwl	-38(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-68(%rbp), %edx
	movzwl	-36(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-66(%rbp), %edx
	movzwl	-34(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-64(%rbp), %edx
	movzwl	-32(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %edx
	movzwl	-30(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-60(%rbp), %edx
	movzwl	-28(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-58(%rbp), %edx
	movzwl	-26(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	jne	.LBB6_9
.LBB6_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB6_12
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -78(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.5:
	cmpw	$0, -46(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.24:
	cmpw	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.26:
	cmpw	$0, -42(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.28:
	cmpw	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.30:
	cmpw	$0, -38(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.32:
	cmpw	$0, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.34:
	cmpw	$0, -34(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.36:
	cmpw	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.38:
	cmpw	$0, -30(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.40:
	cmpw	$0, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_7
# %bb.42:
	cmpw	$0, -26(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_43
.LBB6_7:
	xorl	%ecx, %ecx
	testw	%ax, %ax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$-1, %eax
	jmp	.LBB6_12
.LBB6_9:
	movb	%al, %cl
	leal	(%rcx,%rcx), %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %dx
	ja	.LBB6_11
# %bb.10:
	negl	%eax
.LBB6_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_12
.LBB6_43:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_23
.Lfunc_end6:
	.size	ecmp, .Lfunc_end6-ecmp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ediv
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
	subq	$152, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rbx), %eax
	movw	%ax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rbx), %eax
	movw	%ax, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rbx), %eax
	movw	%ax, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rbx), %eax
	movw	%ax, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rbx), %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rbx), %eax
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rbx), %eax
	movw	%ax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rbx), %eax
	movw	%ax, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
	movw	%ax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rbx), %eax
	jmp	.LBB7_4
.LBB7_2:
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r15), %eax
	movw	%ax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%r15), %eax
	movw	%ax, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%r15), %eax
	movw	%ax, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%r15), %eax
	movw	%ax, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%r15), %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%r15), %eax
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%r15), %eax
	movw	%ax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%r15), %eax
	movw	%ax, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%r15), %eax
	movw	%ax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%r15), %eax
.LBB7_4:
	movw	%ax, 18(%r14)
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_9:
	movl	$ezero, %esi
	movq	%rbx, %rdi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_11
# %bb.10:
	movl	$ezero, %esi
	movq	%r15, %rdi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_15
.LBB7_11:
	movzwl	18(%rbx), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB7_16
# %bb.12:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_17
# %bb.13:
	movzwl	18(%r15), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB7_16
# %bb.14:
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_17
.LBB7_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147467264, 16(%r14)   # imm = 0x7FFFC000
	jmp	.LBB7_6
.LBB7_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_17:
	movzwl	18(%r15), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB7_21
# %bb.18:
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_22
# %bb.19:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_69
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB7_70
.LBB7_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_22:
	movzwl	18(%rbx), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB7_25
# %bb.23:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_26
.LBB7_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 18(%r14)
	jmp	.LBB7_5
.LBB7_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_26:
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdi
	callq	emovi
	leaq	-80(%rbp), %rsi
	movq	%r15, %rdi
	callq	emovi
	movzwl	-110(%rbp), %ebx
	movzwl	-78(%rbp), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB7_28
# %bb.27:
	movl	%ebx, %eax
	jmp	.LBB7_39
.LBB7_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_38
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_75
.LBB7_38:
	leaq	-80(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-110(%rbp), %eax
.LBB7_39:
	movzwl	%bx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	movq	%r14, -144(%rbp)        # 8-byte Spill
	jne	.LBB7_51
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -106(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -102(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -92(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -90(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_76
.LBB7_50:
	leaq	-112(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB7_51:
	movq	%r15, -136(%rbp)        # 8-byte Spill
	movzwl	-80(%rbp), %eax
	movw	%ax, 52(%r12)
	movzwl	-78(%rbp), %eax
	movw	%ax, 54(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 58(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 60(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 62(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 66(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 68(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 70(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 72(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 74(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 76(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	xorl	%ecx, %ecx
	jmp	.LBB7_53
	.p2align	4, 0x90
.LBB7_52:                               #   in Loop: Header=BB7_53 Depth=1
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpl	$13, %eax
	je	.LBB7_57
.LBB7_53:                               # =>This Inner Loop Header: Depth=1
	movzwl	-80(%rbp,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB7_55
# %bb.54:                               #   in Loop: Header=BB7_53 Depth=1
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB7_55:                               #   in Loop: Header=BB7_53 Depth=1
	movzwl	%dx, %edx
	shrl	%edx
	movw	%dx, -80(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB7_52
# %bb.56:                               #   in Loop: Header=BB7_53 Depth=1
	movzwl	%dx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, -80(%rbp,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_52
.LBB7_57:
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-106(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	shlq	$16, %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movzwl	-76(%rbp), %ecx
	movzwl	-74(%rbp), %eax
	movl	$28, %r13d
	leaq	-192(%rbp), %r12
	leaq	-80(%rbp), %r15
	jmp	.LBB7_60
	.p2align	4, 0x90
.LBB7_58:                               #   in Loop: Header=BB7_60 Depth=1
	addl	$-2, %r14d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	esubm
	movl	$42, __A_VARIABLE(%rip)
.LBB7_59:                               #   in Loop: Header=BB7_60 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	esubm
	movq	-120(%rbp), %rax        # 8-byte Reload
	movw	%r14w, (%rax,%r13,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-74(%rbp), %ecx
	movzwl	-72(%rbp), %eax
	movw	%cx, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-70(%rbp), %ebx
	movw	%bx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-68(%rbp), %r8d
	movw	%r8w, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-66(%rbp), %edi
	movw	%di, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-64(%rbp), %esi
	movw	%si, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-62(%rbp), %r10d
	movw	%r10w, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-60(%rbp), %edx
	movw	%dx, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-58(%rbp), %r9d
	movw	%r9w, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-56(%rbp), %r11d
	movw	%r11w, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	cmpq	$39, %r13
	je	.LBB7_65
.LBB7_60:                               # =>This Inner Loop Header: Depth=1
	movzwl	%cx, %ecx
	shlq	$16, %rcx
	movzwl	%ax, %eax
	orq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movw	$-1, %r14w
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	jb	.LBB7_62
# %bb.61:                               #   in Loop: Header=BB7_60 Depth=1
	xorl	%edx, %edx
	divq	-152(%rbp)              # 8-byte Folded Reload
	movq	%rax, %r14
.LBB7_62:                               #   in Loop: Header=BB7_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r14w, %edi
	leaq	-112(%rbp), %rbx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	m16m
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ecmpm
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB7_59
# %bb.63:                               #   in Loop: Header=BB7_60 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	esubm
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ecmpm
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB7_58
# %bb.64:                               #   in Loop: Header=BB7_60 Depth=1
	addl	$-1, %r14d
	jmp	.LBB7_59
.LBB7_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	%ebx, %r8d
	orl	%eax, %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	%esi, %r10d
	orl	%r8d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	%edx, %r9d
	orl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orw	%r11w, %r9w
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_67
# %bb.66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	jmp	.LBB7_68
.LBB7_67:
	xorl	%esi, %esi
.LBB7_68:
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	52(%r9), %eax
	movw	%ax, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	54(%r9), %eax
	movw	%ax, -78(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	56(%r9), %eax
	movw	%ax, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	58(%r9), %eax
	movw	%ax, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	60(%r9), %eax
	movw	%ax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	62(%r9), %eax
	movw	%ax, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	64(%r9), %eax
	movw	%ax, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	66(%r9), %eax
	movw	%ax, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	68(%r9), %eax
	movw	%ax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	70(%r9), %eax
	movw	%ax, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	72(%r9), %eax
	movw	%ax, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	74(%r9), %eax
	movw	%ax, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	76(%r9), %eax
	movw	%ax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rdx, %rcx
	addq	$16383, %rcx            # imm = 0x3FFF
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movl	$64, %r8d
	callq	emdnorm
	movzwl	-112(%rbp), %eax
	xorl	%ecx, %ecx
	cmpw	-80(%rbp), %ax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	negl	%ecx
	movw	%cx, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	emovo
	jmp	.LBB7_8
.LBB7_69:
	movzwl	18(%rbx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$15, %ebx
.LBB7_70:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_72
# %bb.71:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB7_73
.LBB7_72:
	movzwl	18(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$15, %eax
.LBB7_73:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
.LBB7_74:
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$32767, %edx            # imm = 0x7FFF
	movl	$65535, %eax            # imm = 0xFFFF
	cmovel	%edx, %eax
	shll	$15, %ecx
	movw	%cx, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 18(%r14)
	jmp	.LBB7_7
.LBB7_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_24
.LBB7_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-112(%rbp), %eax
	xorl	%ecx, %ecx
	cmpw	-80(%rbp), %ax
	jmp	.LBB7_74
.Lfunc_end7:
	.size	ediv, .Lfunc_end7-ediv
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
	subq	$184, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rbx), %eax
	movw	%ax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rbx), %eax
	movw	%ax, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rbx), %eax
	movw	%ax, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rbx), %eax
	movw	%ax, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rbx), %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rbx), %eax
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rbx), %eax
	movw	%ax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rbx), %eax
	movw	%ax, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
	movw	%ax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rbx), %eax
	jmp	.LBB8_4
.LBB8_2:
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r15), %eax
	movw	%ax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%r15), %eax
	movw	%ax, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%r15), %eax
	movw	%ax, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%r15), %eax
	movw	%ax, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%r15), %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%r15), %eax
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%r15), %eax
	movw	%ax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%r15), %eax
	movw	%ax, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%r15), %eax
	movw	%ax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%r15), %eax
.LBB8_4:
	movw	%ax, 18(%r14)
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_9:
	movzwl	18(%rbx), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB8_12
# %bb.10:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_13
# %bb.11:
	movl	$ezero, %esi
	movq	%r15, %rdi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_13
	jmp	.LBB8_16
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_13:
	movzwl	18(%r15), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB8_17
# %bb.14:
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_18
# %bb.15:
	movl	$ezero, %esi
	movq	%rbx, %rdi
	callq	ecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_18
.LBB8_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147467264, 16(%r14)   # imm = 0x7FFFC000
	jmp	.LBB8_6
.LBB8_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_18:
	movzwl	18(%rbx), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB8_20
# %bb.19:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_21
	jmp	.LBB8_23
.LBB8_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_21:
	movzwl	18(%r15), %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB8_25
# %bb.22:
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_26
.LBB8_23:
	movq	%rbx, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_58
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB8_59
.LBB8_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_26:
	leaq	-144(%rbp), %rsi
	movq	%rbx, %rdi
	callq	emovi
	leaq	-80(%rbp), %rsi
	movq	%r15, %rdi
	callq	emovi
	movzwl	-142(%rbp), %r13d
	movzwl	-78(%rbp), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB8_28
# %bb.27:
	movl	%r15d, %eax
	jmp	.LBB8_39
.LBB8_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -140(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -138(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -134(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -132(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -130(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -126(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -124(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_38
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -122(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_63
.LBB8_38:
	leaq	-144(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-78(%rbp), %eax
.LBB8_39:
	movzwl	%r15w, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	movq	%r14, -184(%rbp)        # 8-byte Spill
	movq	%r13, -176(%rbp)        # 8-byte Spill
	je	.LBB8_41
# %bb.40:
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB8_52
.LBB8_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_51
# %bb.50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_63
.LBB8_51:
	leaq	-80(%rbp), %rdi
	callq	enormlz
	cltq
	subq	%rax, %rbx
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-78(%rbp), %eax
.LBB8_52:
	leaq	52(%r12), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movzwl	-80(%rbp), %ecx
	movw	%cx, 52(%r12)
	movw	%ax, 54(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 58(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 60(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 62(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 66(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 68(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 70(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 72(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 74(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -152(%rbp)        # 8-byte Spill
	movw	$0, 76(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -104(%rbp)          # 4-byte Folded Spill
	movl	$12, %edi
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
	movl	$0, %r11d
	movl	$0, %r14d
	movl	$0, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	jmp	.LBB8_55
	.p2align	4, 0x90
.LBB8_53:                               #   in Loop: Header=BB8_55 Depth=1
	movzwl	%bx, %edi
	leaq	-80(%rbp), %rsi
	leaq	-224(%rbp), %rbx
	movq	%rbx, %rdx
	callq	m16m
	movq	%rbx, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	eaddm
	movl	$42, __A_VARIABLE(%rip)
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movzwl	76(%rcx), %r8d
	movzwl	74(%rcx), %eax
	movw	%ax, -42(%rbp)          # 2-byte Spill
	movzwl	72(%rcx), %r13d
	movzwl	70(%rcx), %edx
	movzwl	68(%rcx), %r9d
	movzwl	66(%rcx), %r10d
	movzwl	64(%rcx), %r14d
	movzwl	62(%rcx), %r11d
	movzwl	60(%rcx), %r12d
	movzwl	56(%rcx), %r15d
	movzwl	58(%rcx), %edi
.LBB8_54:                               #   in Loop: Header=BB8_55 Depth=1
	movzwl	%r8w, %eax
	movl	-84(%rbp), %esi         # 4-byte Reload
	orl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-42(%rbp), %r8d         # 2-byte Folded Reload
	movw	%r8w, 76(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 74(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 72(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 70(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 68(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r14w, 66(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 64(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, 62(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 60(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, 58(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 56(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addq	$-1, %rcx
	movl	%r15d, %ebx
                                        # kill: def $r15w killed $r15w killed $r15d def $r15d
	movl	%r15d, -104(%rbp)       # 4-byte Spill
	movl	%r10d, %eax
	movl	%edi, %r10d
                                        # kill: def $di killed $di def $edi
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movl	%r12d, %r15d
	movl	%r12d, %edi
	movl	%edi, -96(%rbp)         # 4-byte Spill
	movl	%r11d, %r12d
                                        # kill: def $r11w killed $r11w def $r11d
	movw	%r14w, -86(%rbp)        # 2-byte Spill
                                        # kill: def $r14w killed $r14w def $r14d
	movw	%ax, -88(%rbp)          # 2-byte Spill
                                        # kill: def $ax killed $ax def $eax
	movq	%rcx, %rdi
	movw	%r9w, -90(%rbp)         # 2-byte Spill
	movl	%r9d, %ecx
	movw	%dx, -160(%rbp)         # 2-byte Spill
                                        # kill: def $dx killed $dx def $edx
	movw	%r13w, -84(%rbp)        # 2-byte Spill
                                        # kill: def $r13w killed $r13w def $r13d
                                        # kill: def $r8w killed $r8w def $r8d
	cmpl	$2, %edi
	je	.LBB8_57
.LBB8_55:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movzwl	-144(%rbp,%rdi,2), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testw	%bx, %bx
	jne	.LBB8_53
# %bb.56:                               #   in Loop: Header=BB8_55 Depth=1
	xorl	%r15d, %r15d
	movl	-104(%rbp), %esi        # 4-byte Reload
	movl	%esi, %edi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	%esi, %r12d
	movl	-96(%rbp), %esi         # 4-byte Reload
	movl	%esi, %ebx
	movl	%r11d, %esi
	movl	%ebx, %r11d
	movl	%r14d, %r10d
	movl	%esi, %r14d
	movl	%eax, %r9d
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%r13d, %eax
	movl	%ecx, %r13d
	movw	%ax, -42(%rbp)          # 2-byte Spill
	movq	-152(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB8_54
.LBB8_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-152(%rbp), %r9         # 8-byte Reload
	movzwl	52(%r9), %eax
	movw	%ax, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	54(%r9), %eax
	movw	%ax, -78(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%bx, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-86(%rbp), %eax         # 2-byte Folded Reload
	movw	%ax, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-88(%rbp), %eax         # 2-byte Folded Reload
	movw	%ax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-90(%rbp), %eax         # 2-byte Folded Reload
	movw	%ax, -62(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-160(%rbp), %eax        # 2-byte Folded Reload
	movw	%ax, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-84(%rbp), %eax         # 2-byte Folded Reload
	movw	%ax, -58(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-42(%rbp), %eax         # 2-byte Folded Reload
	movw	%ax, -56(%rbp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	leaq	-16382(%rax,%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r15
	movq	%r15, %rdi
	xorl	%edx, %edx
	movl	$64, %r8d
	callq	emdnorm
	movzwl	-144(%rbp), %eax
	xorl	%ecx, %ecx
	cmpw	-80(%rbp), %ax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	negl	%ecx
	movw	%cx, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	emovo
	jmp	.LBB8_8
.LBB8_58:
	movzwl	18(%rbx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$15, %ebx
.LBB8_59:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	eisnan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_61
# %bb.60:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB8_62
.LBB8_61:
	movzwl	18(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$15, %eax
.LBB8_62:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$32767, %edx            # imm = 0x7FFF
	movl	$65535, %eax            # imm = 0xFFFF
	cmovel	%edx, %eax
	shll	$15, %ecx
	movw	%cx, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 18(%r14)
	jmp	.LBB8_7
.LBB8_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 18(%r14)
	jmp	.LBB8_5
.Lfunc_end8:
	.size	emul, .Lfunc_end8-emul
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function eaddm
	.type	eaddm,@function
eaddm:                                  # @eaddm
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	24(%rdi), %eax
	movzwl	24(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 24(%rsi)
	shrq	$16, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rdi), %eax
	addq	%rcx, %rax
	movzwl	22(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 22(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rdi), %eax
	addq	%rcx, %rax
	movzwl	20(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 20(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %eax
	addq	%rcx, %rax
	movzwl	18(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 18(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rdi), %eax
	addq	%rcx, %rax
	movzwl	16(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 16(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rdi), %eax
	addq	%rcx, %rax
	movzwl	14(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 14(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rdi), %eax
	addq	%rcx, %rax
	movzwl	12(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 12(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rdi), %eax
	addq	%rcx, %rax
	movzwl	10(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 10(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rdi), %eax
	addq	%rcx, %rax
	movzwl	8(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 8(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rdi), %eax
	addq	%rcx, %rax
	movzwl	6(%rsi), %ecx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 6(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$16, %ecx
	andl	$1, %ecx
	addw	4(%rdi), %cx
	addw	4(%rsi), %cx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	eaddm, .Lfunc_end9-eaddm
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
	pushq	%rax
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 54(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 56(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 58(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 62(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 66(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 68(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 70(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 72(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 74(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 76(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	jge	.LBB10_1
.LBB10_17:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	movq	%r14, %r9
	callq	emdnorm
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB10_16:                              #   in Loop: Header=BB10_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	leaq	-1(%r12), %r12
	jle	.LBB10_17
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #     Child Loop BB10_11 Depth 2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ecmpm
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB10_3
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	esubm
	movw	$1, %ax
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB10_5
	.p2align	4, 0x90
.LBB10_9:                               #   in Loop: Header=BB10_5 Depth=2
	addl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpl	$-11, %ecx
	je	.LBB10_10
.LBB10_5:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	76(%r14,%rcx,2), %esi
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	jns	.LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_5 Depth=2
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:                               #   in Loop: Header=BB10_5 Depth=2
	addl	%esi, %esi
	movw	%si, 76(%r14,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_5 Depth=2
	orl	$1, %esi
	movw	%si, 76(%r14,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_9
	.p2align	4, 0x90
.LBB10_10:                              #   in Loop: Header=BB10_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	orw	%ax, 76(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB10_11
	.p2align	4, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_11 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB10_16
.LBB10_11:                              #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB10_13:                              #   in Loop: Header=BB10_11 Depth=2
	addl	%edx, %edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_11 Depth=2
	orl	$1, %edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_15
.Lfunc_end10:
	.size	eiremain, .Lfunc_end10-eiremain
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function enormlz
	.type	enormlz,@function
enormlz:                                # @enormlz
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movzwl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB11_1
# %bb.18:
	movzwl	%ax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB11_20
# %bb.19:
	movq	%rbx, %rdi
	callq	eshdn8
	movl	$42, __A_VARIABLE(%rip)
	movl	$-8, %eax
.LBB11_20:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_21
	.p2align	4, 0x90
.LBB11_29:                              #   in Loop: Header=BB11_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-144, %eax
	movl	%r14d, %eax
	jle	.LBB11_30
.LBB11_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_23 Depth 2
	movzwl	4(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	je	.LBB11_31
# %bb.22:                               #   in Loop: Header=BB11_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_23:                              #   Parent Loop BB11_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB11_25
# %bb.24:                               #   in Loop: Header=BB11_23 Depth=2
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB11_25:                              #   in Loop: Header=BB11_23 Depth=2
	movzwl	%si, %esi
	shrl	%esi
	movw	%si, (%rbx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB11_27
# %bb.26:                               #   in Loop: Header=BB11_23 Depth=2
	movzwl	%si, %esi
	orl	$32768, %esi            # imm = 0x8000
	movw	%si, (%rbx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:                              #   in Loop: Header=BB11_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %ecx
	je	.LBB11_29
# %bb.28:                               #   in Loop: Header=BB11_23 Depth=2
	addl	%edx, %edx
	movzwl	2(%rbx,%rcx,2), %esi
	addq	$1, %rcx
	jmp	.LBB11_23
.LBB11_1:
	movzwl	6(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	testw	%ax, %ax
	js	.LBB11_30
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	jne	.LBB11_7
# %bb.3:
	movzwl	8(%rbx), %r8d
	movzwl	10(%rbx), %r9d
	movzwl	12(%rbx), %r10d
	movzwl	14(%rbx), %r11d
	movzwl	16(%rbx), %r15d
	movzwl	18(%rbx), %edx
	movzwl	20(%rbx), %esi
	movzwl	22(%rbx), %edi
	movzwl	24(%rbx), %ecx
	movl	$16, %r14d
	.p2align	4, 0x90
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, %r10d
	movl	%r15d, %r11d
	movl	%edx, %r15d
	movl	%esi, %edx
	movl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r15w, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %r14d
	ja	.LBB11_30
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	movl	%ecx, %edi
	addl	$16, %r14d
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB11_4
# %bb.6:                                # %.loopexit3
	addl	$-16, %r14d
.LBB11_7:
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ecx
	ja	.LBB11_8
	.p2align	4, 0x90
.LBB11_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	eshup8
	addl	$8, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB11_9
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB11_30
	.p2align	4, 0x90
.LBB11_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_12 Depth 2
	movl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
	xorl	%edx, %edx
	jmp	.LBB11_12
	.p2align	4, 0x90
.LBB11_16:                              #   in Loop: Header=BB11_12 Depth=2
	addl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpl	$1, %ecx
	je	.LBB11_17
.LBB11_12:                              #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%rcx,2), %esi
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	jns	.LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=2
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB11_14:                              #   in Loop: Header=BB11_12 Depth=2
	addl	%esi, %esi
	movw	%si, (%rbx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB11_16
# %bb.15:                               #   in Loop: Header=BB11_12 Depth=2
	orl	$1, %esi
	movw	%si, (%rbx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_16
	.p2align	4, 0x90
.LBB11_17:                              #   in Loop: Header=BB11_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$159, %eax
	ja	.LBB11_30
# %bb.10:                               #   in Loop: Header=BB11_11 Depth=1
	cmpw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB11_11
.LBB11_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	enormlz, .Lfunc_end11-enormlz
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function emdnorm
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$145, %eax
	jl	.LBB12_3
# %bb.1:
	cmpq	$32766, %r14            # imm = 0x7FFE
	jg	.LBB12_3
.LBB12_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_64
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	js	.LBB12_4
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB12_62
# %bb.8:
	movl	4(%r15), %eax
	cmpl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_22
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 26(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 28(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 30(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 34(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 36(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 38(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 42(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 44(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 46(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 50(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$11, %r8d
	movl	$11, %esi
	movw	$1, %dx
	movw	$-32768, %r9w           # imm = 0x8000
	movw	$-1, %di
	movl	$12, %ecx
	cmpl	$55, %eax
	jle	.LBB12_10
# %bb.13:
	cmpl	$56, %eax
	je	.LBB12_18
# %bb.14:
	cmpl	$64, %eax
	je	.LBB12_17
# %bb.15:
	cmpl	$113, %eax
	jne	.LBB12_21
# %bb.16:
	movl	$10, %r8d
	movw	$-32768, %dx            # imm = 0x8000
	movw	$16384, %r9w            # imm = 0x4000
	movw	$32767, %di             # imm = 0x7FFF
	movl	$10, %ecx
	movl	$10, %esi
	jmp	.LBB12_21
.LBB12_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-144, %r14
	jl	.LBB12_2
# %bb.5:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	eshift
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB12_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB12_7
.LBB12_10:
	cmpl	$24, %eax
	je	.LBB12_20
# %bb.11:
	cmpl	$53, %eax
	jne	.LBB12_21
# %bb.12:
	movl	$6, %r8d
	movw	$2048, %dx              # imm = 0x800
	movw	$1024, %r9w             # imm = 0x400
	movw	$2047, %di              # imm = 0x7FF
	jmp	.LBB12_19
.LBB12_18:
	movl	$6, %r8d
	movw	$256, %dx               # imm = 0x100
	movw	$128, %r9w
	movw	$255, %di
.LBB12_19:
	movl	$6, %ecx
	movl	$6, %esi
	jmp	.LBB12_21
.LBB12_17:
	movl	$6, %r8d
	movl	$6, %esi
	movl	$7, %ecx
	jmp	.LBB12_21
.LBB12_20:
	movl	$4, %r8d
	movw	$256, %dx               # imm = 0x100
	movw	$128, %r9w
	movw	$255, %di
	movl	$4, %ecx
	movl	$4, %esi
.LBB12_21:
	movl	%ecx, 8(%r15)
	movw	%di, 20(%r15)
	movw	%r9w, 22(%r15)
	movw	%dx, 24(%r15)
	movl	%esi, 12(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 26(%r15,%r8,2)
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_22:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jg	.LBB12_31
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	je	.LBB12_31
# %bb.24:
	movzwl	24(%rbx), %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edx
	xorl	%esi, %esi
	jmp	.LBB12_25
	.p2align	4, 0x90
.LBB12_29:                              #   in Loop: Header=BB12_25 Depth=1
	addl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpl	$13, %edx
	je	.LBB12_30
.LBB12_25:                              # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx,%rdx,2), %edi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB12_27
# %bb.26:                               #   in Loop: Header=BB12_25 Depth=1
	orl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB12_27:                              #   in Loop: Header=BB12_25 Depth=1
	movzwl	%di, %edi
	shrl	%edi
	movw	%di, (%rbx,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	je	.LBB12_29
# %bb.28:                               #   in Loop: Header=BB12_25 Depth=1
	movzwl	%di, %edi
	orl	$32768, %edi            # imm = 0x8000
	movw	%di, (%rbx,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_29
.LBB12_30:
	orl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_31:
	movslq	8(%r15), %rdx
	movzwl	(%rbx,%rdx,2), %esi
	movl	20(%r15), %edi
	movl	%edi, %ecx
	andl	%esi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$143, %eax
	jg	.LBB12_38
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %edx
	jg	.LBB12_38
# %bb.33:                               # %.preheader
	leaq	-1(%rdx), %rax
	jmp	.LBB12_34
	.p2align	4, 0x90
.LBB12_36:                              #   in Loop: Header=BB12_34 Depth=1
	movw	$0, 4(%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	$11, %rax
	jge	.LBB12_37
.LBB12_34:                              # =>This Inner Loop Header: Depth=1
	cmpw	$0, 4(%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_36
# %bb.35:                               #   in Loop: Header=BB12_34 Depth=1
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_36
.LBB12_37:
	movzwl	20(%r15), %edi
	movzwl	(%rbx,%rdx,2), %esi
.LBB12_38:
	notl	%edi
	andl	%edi, %esi
	movw	%si, (%rbx,%rdx,2)
	movzwl	22(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %ax
	je	.LBB12_44
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %cx
	jne	.LBB12_43
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB12_41
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB12_44
.LBB12_43:
	leaq	26(%r15), %rdi
	movq	%rbx, %rsi
	callq	eaddm
	movl	$42, __A_VARIABLE(%rip)
.LBB12_44:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jg	.LBB12_53
# %bb.45:
	cmpl	$144, 4(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_53
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB12_47
	.p2align	4, 0x90
.LBB12_51:                              #   in Loop: Header=BB12_47 Depth=1
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB12_52
.LBB12_47:                              # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB12_49
# %bb.48:                               #   in Loop: Header=BB12_47 Depth=1
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB12_49:                              #   in Loop: Header=BB12_47 Depth=1
	addl	%edx, %edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB12_51
# %bb.50:                               #   in Loop: Header=BB12_47 Depth=1
	orl	$1, %edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_51
.LBB12_52:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_53:
	movzwl	4(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	je	.LBB12_62
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB12_55:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB12_57
# %bb.56:                               #   in Loop: Header=BB12_55 Depth=1
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB12_57:                              #   in Loop: Header=BB12_55 Depth=1
	movzwl	%dx, %edx
	shrl	%edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB12_59
# %bb.58:                               #   in Loop: Header=BB12_55 Depth=1
	movzwl	%dx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_59:                              #   in Loop: Header=BB12_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %eax
	je	.LBB12_61
# %bb.60:                               #   in Loop: Header=BB12_55 Depth=1
	addl	%ecx, %ecx
	movzwl	2(%rbx,%rax,2), %edx
	addq	$1, %rax
	jmp	.LBB12_55
.LBB12_61:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB12_62:
	movw	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32767, %r14            # imm = 0x7FFF
	jl	.LBB12_65
# %bb.63:
	movw	$32767, 2(%rbx)         # imm = 0x7FFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 22(%rbx)
.LBB12_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_66
.LBB12_65:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testq	%r14, %r14
	cmovlel	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movw	%r14w, 2(%rbx)
.LBB12_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_41:
	movslq	12(%r15), %rax
	movzwl	24(%r15), %ecx
	andw	(%rbx,%rax,2), %cx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_43
	jmp	.LBB12_44
.Lfunc_end12:
	.size	emdnorm, .Lfunc_end12-emdnorm
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function eshup8
	.type	eshup8,@function
eshup8:                                 # @eshup8
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	24(%rdi), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	movw	%cx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rdi), %ecx
	movl	%ecx, %edx
	shldw	$8, %ax, %dx
	movw	%dx, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rdi), %eax
	shrdw	$8, %ax, %cx
	movw	%cx, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %ecx
	shrdw	$8, %cx, %ax
	movw	%ax, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rdi), %eax
	shrdw	$8, %ax, %cx
	movw	%cx, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rdi), %ecx
	shrdw	$8, %cx, %ax
	movw	%ax, 14(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rdi), %eax
	shrdw	$8, %ax, %cx
	movw	%cx, 12(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rdi), %ecx
	shrdw	$8, %cx, %ax
	movw	%ax, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rdi), %eax
	shrdw	$8, %ax, %cx
	movw	%cx, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rdi), %ecx
	shrdw	$8, %cx, %ax
	movw	%ax, 6(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shldw	$8, %cx, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end13:
	.size	eshup8, .Lfunc_end13-eshup8
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function eshdn8
	.type	eshdn8,@function
eshdn8:                                 # @eshdn8
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rdi), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rdi), %ecx
	shldw	$8, %cx, %ax
	movw	%ax, 6(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rdi), %eax
	shldw	$8, %ax, %cx
	movw	%cx, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rdi), %ecx
	shldw	$8, %cx, %ax
	movw	%ax, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rdi), %eax
	shldw	$8, %ax, %cx
	movw	%cx, 12(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rdi), %ecx
	shldw	$8, %cx, %ax
	movw	%ax, 14(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rdi), %eax
	shldw	$8, %ax, %cx
	movw	%cx, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %ecx
	shldw	$8, %cx, %ax
	movw	%ax, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rdi), %eax
	shldw	$8, %ax, %cx
	movw	%cx, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rdi), %ecx
	movl	%ecx, %edx
	shll	$8, %edx
	shrdw	$8, %ax, %cx
	movw	%cx, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	25(%rdi), %eax
	orl	%edx, %eax
	movw	%ax, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end14:
	.size	eshdn8, .Lfunc_end14-eshdn8
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function m16m
	.type	m16m,@function
m16m:                                   # @m16m
# %bb.0:
	subq	$40, %rsp
	movl	%edi, %r8d
	leaq	24(%rsp), %rdi
	movl	$0, 22(%rsp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %r10d
	jmp	.LBB15_1
	.p2align	4, 0x90
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
	imulq	%r8, %rax
	movzwl	%ax, %r9d
	movzwl	(%rdi), %ecx
	addq	%r9, %rcx
	leaq	-2(%rdi), %r9
	movw	%cx, (%rdi)
	shrq	$16, %rcx
	shrq	$16, %rax
	addq	%rcx, %rax
	movzwl	-2(%rdi), %ecx
	addq	%rax, %rcx
	movw	%cx, -2(%rdi)
	shrq	$16, %rcx
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	movw	%cx, -4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r10
	movq	%r9, %rdi
	cmpl	$2, %r10d
	je	.LBB15_5
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r10,2), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB15_3
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	leaq	-2(%rdi), %r9
	xorl	%ecx, %ecx
	jmp	.LBB15_4
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rsp), %eax
	movw	%ax, 4(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rsp), %eax
	movw	%ax, 6(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rsp), %eax
	movw	%ax, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rsp), %eax
	movw	%ax, 10(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rsp), %eax
	movw	%ax, 12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rsp), %eax
	movw	%ax, 14(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rsp), %eax
	movw	%ax, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rsp), %eax
	movw	%ax, 18(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rsp), %eax
	movw	%ax, 20(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rsp), %eax
	movw	%ax, 22(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	24(%rsp), %eax
	movw	%ax, 24(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	retq
.Lfunc_end15:
	.size	m16m, .Lfunc_end15-m16m
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ecmpm
	.type	ecmpm,@function
ecmpm:                                  # @ecmpm
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rdi), %eax
	movzwl	4(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rdi), %eax
	movzwl	6(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rdi), %eax
	movzwl	8(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rdi), %eax
	movzwl	10(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rdi), %eax
	movzwl	12(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rdi), %eax
	movzwl	14(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rdi), %eax
	movzwl	16(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %eax
	movzwl	18(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rdi), %eax
	movzwl	20(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rdi), %eax
	movzwl	22(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	24(%rdi), %eax
	movzwl	24(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %ax
	jne	.LBB16_2
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB16_2:
	xorl	%edx, %edx
	cmpw	%cx, %ax
	seta	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rdx,%rdx), %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end16:
	.size	ecmpm, .Lfunc_end16-ecmpm
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function esubm
	.type	esubm,@function
esubm:                                  # @esubm
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	24(%rsi), %eax
	movzwl	24(%rdi), %ecx
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 24(%rsi)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	22(%rsi), %ecx
	movzwl	22(%rdi), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 22(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	20(%rsi), %eax
	movzwl	20(%rdi), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 20(%rsi)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rsi), %ecx
	movzwl	18(%rdi), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 18(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rsi), %eax
	movzwl	16(%rdi), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 16(%rsi)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	14(%rsi), %ecx
	movzwl	14(%rdi), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 14(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	12(%rsi), %eax
	movzwl	12(%rdi), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 12(%rsi)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rsi), %ecx
	movzwl	10(%rdi), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 10(%rsi)
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shrl	$16, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%rsi), %eax
	movzwl	8(%rdi), %edx
	subq	%rdx, %rax
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 8(%rsi)
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	$16, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rsi), %ecx
	movzwl	6(%rdi), %edx
	subq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 6(%rsi)
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rsi), %ecx
	movzwl	4(%rdi), %edx
	subl	%edx, %ecx
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	esubm, .Lfunc_end17-esubm
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function eshift
	.type	eshift,@function
eshift:                                 # @eshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB18_44
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_21
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %r14d
	jl	.LBB18_8
# %bb.3:
	movl	%r14d, %eax
	notl	%eax
	cmpl	$-33, %eax
	movl	$-32, %ecx
	cmovgl	%eax, %ecx
	leal	(%rcx,%r14), %r8d
	addl	$16, %r8d
	andl	$-16, %r8d
	movzwl	6(%rbx), %edx
	movzwl	8(%rbx), %r13d
	movzwl	10(%rbx), %eax
	movzwl	12(%rbx), %ecx
	movzwl	14(%rbx), %r10d
	movzwl	16(%rbx), %r11d
	movzwl	18(%rbx), %r12d
	movzwl	20(%rbx), %esi
	movzwl	22(%rbx), %edi
	movzwl	24(%rbx), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	jl	.LBB18_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %r14d
	jl	.LBB18_7
# %bb.5:                                # %.preheader4
	leal	-16(%r14), %edx
	.p2align	4, 0x90
.LBB18_6:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 6(%rbx)
	movl	%ecx, %eax
	movl	%r10d, %ecx
	movl	%r11d, %r10d
	movl	%r12d, %r11d
	movl	%esi, %r12d
	movl	%edi, %esi
	movl	%r9d, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r12w, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %edx
	xorl	%r9d, %r9d
	cmpl	$31, %edx
	jg	.LBB18_6
.LBB18_7:
	subl	%r8d, %r14d
	addl	$-16, %r14d
.LBB18_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r14d
	jl	.LBB18_12
# %bb.9:
	movl	%r14d, %eax
	notl	%eax
	cmpl	$-17, %eax
	movl	$-16, %ecx
	cmovgl	%eax, %ecx
	leal	(%r14,%rcx), %r12d
	addl	$8, %r12d
	andl	$-8, %r12d
	leal	8(%r14), %r13d
	.p2align	4, 0x90
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	eshup8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %r13d
	cmpl	$15, %r13d
	jg	.LBB18_10
# %bb.11:
	subl	%r12d, %r14d
	addl	$-8, %r14d
.LBB18_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jg	.LBB18_14
	jmp	.LBB18_44
	.p2align	4, 0x90
.LBB18_13:                              #   in Loop: Header=BB18_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	movl	%eax, %r14d
	jle	.LBB18_43
.LBB18_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_16 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	xorl	%ecx, %ecx
	jmp	.LBB18_16
	.p2align	4, 0x90
.LBB18_15:                              #   in Loop: Header=BB18_16 Depth=2
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	cmpl	$1, %eax
	je	.LBB18_13
.LBB18_16:                              #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jns	.LBB18_18
# %bb.17:                               #   in Loop: Header=BB18_16 Depth=2
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB18_18:                              #   in Loop: Header=BB18_16 Depth=2
	addl	%edx, %edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB18_15
# %bb.19:                               #   in Loop: Header=BB18_16 Depth=2
	orl	$1, %edx
	movw	%dx, (%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_15
.LBB18_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-16, %r14d
	jg	.LBB18_27
# %bb.22:
	leal	-1(%r14), %eax
	cmpl	$-33, %eax
	movl	$-32, %ecx
	cmovgl	%eax, %ecx
	subl	%r14d, %ecx
	addl	$16, %ecx
	andl	$-16, %ecx
	movzwl	24(%rbx), %r15d
	movzwl	22(%rbx), %r12d
	movzwl	20(%rbx), %eax
	movzwl	18(%rbx), %r9d
	movzwl	16(%rbx), %r8d
	movzwl	14(%rbx), %r11d
	movzwl	12(%rbx), %r13d
	movzwl	10(%rbx), %edx
	movzwl	8(%rbx), %esi
	movzwl	4(%rbx), %r10d
	movzwl	6(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	movw	%r12w, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-16, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-32, %r14d
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jg	.LBB18_26
# %bb.23:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	movl	$-16, %ecx
	subl	%r14d, %ecx
                                        # kill: def $r15w killed $r15w killed $r15d def $r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%di, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jl	.LBB18_26
# %bb.24:                               # %.preheader
	addl	$16, %ecx
	.p2align	4, 0x90
.LBB18_25:                              # =>This Inner Loop Header: Depth=1
	orl	%r15d, %eax
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 24(%rbx)
	movl	%r9d, %eax
	movl	%r8d, %r9d
	movl	%r11d, %r8d
	movl	%r13d, %r11d
	movl	%edx, %r13d
	movl	%esi, %edx
	movl	%edi, %esi
	movl	%r10d, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r9w, 22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r8w, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r11w, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r13w, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r10w, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %ecx
	xorl	%r10d, %r10d
	cmpl	$47, %ecx
	jg	.LBB18_25
.LBB18_26:
	addl	-48(%rbp), %r14d        # 4-byte Folded Reload
	subl	%r14d, %r12d
	jmp	.LBB18_28
.LBB18_27:
	negl	%r14d
	xorl	%r15d, %r15d
	movl	%r14d, %r12d
.LBB18_28:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r12d
	jl	.LBB18_32
# %bb.29:
	movl	%r12d, %eax
	notl	%eax
	cmpl	$-17, %eax
	movl	$-16, %ecx
	cmovgl	%eax, %ecx
	leal	(%r12,%rcx), %r14d
	addl	$8, %r14d
	andl	$-8, %r14d
	leal	8(%r12), %r13d
	.p2align	4, 0x90
.LBB18_30:                              # =>This Inner Loop Header: Depth=1
	movzbl	24(%rbx), %eax
	orl	%eax, %r15d
	movq	%rbx, %rdi
	callq	eshdn8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %r13d
	cmpl	$15, %r13d
	jg	.LBB18_30
# %bb.31:
	subl	%r14d, %r12d
	addl	$-8, %r12d
.LBB18_32:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jg	.LBB18_37
# %bb.33:
	movl	%r15d, %eax
.LBB18_34:
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB18_43
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB18_44
	.p2align	4, 0x90
.LBB18_36:                              #   in Loop: Header=BB18_37 Depth=1
	movzwl	%ax, %eax
	orl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
	cmpl	$1, %r12d
	movl	%ecx, %r12d
	jle	.LBB18_34
.LBB18_37:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_39 Depth 2
	movzwl	24(%rbx), %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	xorl	%edx, %edx
	jmp	.LBB18_39
	.p2align	4, 0x90
.LBB18_38:                              #   in Loop: Header=BB18_39 Depth=2
	addl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpl	$13, %ecx
	je	.LBB18_36
.LBB18_39:                              #   Parent Loop BB18_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%rcx,2), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB18_41
# %bb.40:                               #   in Loop: Header=BB18_39 Depth=2
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB18_41:                              #   in Loop: Header=BB18_39 Depth=2
	movzwl	%si, %esi
	shrl	%esi
	movw	%si, (%rbx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB18_38
# %bb.42:                               #   in Loop: Header=BB18_39 Depth=2
	movzwl	%si, %esi
	orl	$32768, %esi            # imm = 0x8000
	movw	%si, (%rbx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_38
.LBB18_43:
	xorl	%r15d, %r15d
.LBB18_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	eshift, .Lfunc_end18-eshift
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
