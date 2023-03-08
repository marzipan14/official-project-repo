	.text
	.file	"s_remquo.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function remquo
.LCPI0_0:
	.quad	9007199254740992        # double 4.4501477170144028E-308
.LCPI0_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	remquo
	.p2align	4, 0x90
	.type	remquo,@function
remquo:                                 # @remquo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movq	%xmm0, %r8
	movq	%r8, %r13
	shrq	$32, %r13
	movl	%r13d, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %edx       # imm = 0x7FEFFFFF
	ja	.LBB0_3
# %bb.1:
	movq	%xmm1, %r9
	movq	%r9, %r11
	shrq	$32, %r11
	movl	%r11d, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	orl	%r9d, %ecx
	je	.LBB0_3
# %bb.2:
	movl	%r9d, %ecx
	negl	%ecx
	orl	%r9d, %ecx
	shrl	$31, %ecx
	orl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435073, %ecx       # imm = 0x7FF00001
	jb	.LBB0_5
.LBB0_3:
	movl	$0, (%r12)
	mulsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm0
.LBB0_4:
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
.LBB0_5:
	movl	%r11d, %r14d
	xorl	%r13d, %r14d
	movl	%r13d, %r15d
	andl	$-2147483648, %r15d     # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jbe	.LBB0_11
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	ja	.LBB0_13
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_57
# %bb.8:
	movl	%r13d, %ecx
	shll	$11, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1022, %ebx            # imm = 0xFC02
	testl	%ecx, %ecx
	jle	.LBB0_14
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %ebx
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_10
	jmp	.LBB0_14
.LBB0_11:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jb	.LBB0_12
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %r8d
	jae	.LBB0_54
.LBB0_12:
	movl	%r8d, %edi
	jmp	.LBB0_67
.LBB0_13:
	movl	%edx, %ebx
	shrl	$20, %ebx
	addl	$-1023, %ebx            # imm = 0xFC01
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %eax          # imm = 0xFFFFF
	ja	.LBB0_19
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_60
# %bb.16:
	movl	%r11d, %ecx
	shll	$11, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1022, %r10d           # imm = 0xFC02
	testl	%ecx, %ecx
	jle	.LBB0_20
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %r10d
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_18
	jmp	.LBB0_20
.LBB0_19:
	movl	%eax, %r10d
	shrl	$20, %r10d
	addl	$-1023, %r10d           # imm = 0xFC01
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1022, %ebx            # imm = 0xFC02
	jl	.LBB0_22
# %bb.21:
	andl	$1048575, %r13d         # imm = 0xFFFFF
	orl	$1048576, %r13d         # imm = 0x100000
	movl	%r8d, %esi
	jmp	.LBB0_27
.LBB0_22:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	jg	.LBB0_26
# %bb.23:
	shldl	%cl, %r8d, %edx
	movl	%r8d, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movl	%edx, %r13d
	jmp	.LBB0_27
.LBB0_26:
	movl	%r8d, %r13d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r13d
	xorl	%esi, %esi
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1022, %r10d           # imm = 0xFC02
	jl	.LBB0_29
# %bb.28:
	andl	$1048575, %r11d         # imm = 0xFFFFF
	orl	$1048576, %r11d         # imm = 0x100000
	jmp	.LBB0_32
.LBB0_29:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%r10d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	jg	.LBB0_31
# %bb.30:
	shldl	%cl, %r9d, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r9d
	movl	%eax, %r11d
	jmp	.LBB0_32
.LBB0_31:
	movl	%r9d, %r11d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r11d
	xorl	%r9d, %r9d
.LBB0_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edx
	subl	%r11d, %edx
	movl	%esi, %edi
	subl	%r9d, %edi
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %ebx
	je	.LBB0_40
# %bb.33:                               # %.preheader1
	movl	%r10d, %ecx
	subl	%ebx, %ecx
	xorl	%ebx, %ebx
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_36 Depth=1
	shldl	$1, %edi, %edx
	orl	$1, %ebx
	movl	%edi, %esi
	movl	%edx, %r13d
.LBB0_35:                               #   in Loop: Header=BB0_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %esi
	addl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edx
	subl	%r11d, %edx
	movl	%esi, %edi
	subl	%r9d, %edi
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incl	%ecx
	je	.LBB0_41
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=1
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:                               #   in Loop: Header=BB0_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB0_34
# %bb.39:                               #   in Loop: Header=BB0_36 Depth=1
	shldl	$1, %esi, %r13d
	jmp	.LBB0_35
.LBB0_40:
	xorl	%ebx, %ebx
.LBB0_41:
	testb	%al, %al
	je	.LBB0_43
# %bb.42:
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB0_45
# %bb.44:
	orl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_46
.LBB0_45:
	movl	%esi, %edi
	movl	%r13d, %edx
.LBB0_46:
	movl	%edx, %eax
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_51
# %bb.47:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	jg	.LBB0_49
	.p2align	4, 0x90
.LBB0_48:                               # =>This Inner Loop Header: Depth=1
	shldl	$1, %edi, %edx
	addl	%edi, %edi
	addl	$-1, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048576, %edx          # imm = 0x100000
	jl	.LBB0_48
.LBB0_49:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1022, %r10d           # imm = 0xFC02
	jl	.LBB0_52
# %bb.50:
	addl	$-1048576, %edx         # imm = 0xFFF00000
	shll	$20, %r10d
	addl	$1072693248, %r10d      # imm = 0x3FF00000
	orl	%edx, %r10d
	movl	%r10d, %edx
	jmp	.LBB0_67
.LBB0_51:
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	%ebx, %eax
	negl	%eax
	testl	$-2147483648, %r14d     # imm = 0x80000000
	cmovel	%ebx, %eax
	jmp	.LBB0_56
.LBB0_52:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%r10d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20, %ecx
	jg	.LBB0_63
# %bb.53:
	shrdl	%cl, %edx, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	jmp	.LBB0_67
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
# %bb.55:
	xorl	%eax, %eax
	testl	$-2147483648, %r14d     # imm = 0x80000000
	sete	%al
	addl	%eax, %eax
	addl	$-1, %eax
.LBB0_56:
	movl	%eax, (%r12)
	shrq	$63, %r8
	movq	Zero(,%r8,8), %xmm0     # xmm0 = mem[0],zero
	jmp	.LBB0_4
.LBB0_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1043, %ebx            # imm = 0xFBED
	testl	%r8d, %r8d
	jle	.LBB0_14
# %bb.58:                               # %.preheader7
	movl	%r8d, %ecx
	.p2align	4, 0x90
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %ebx
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_59
	jmp	.LBB0_14
.LBB0_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1043, %r10d           # imm = 0xFBED
	testl	%r9d, %r9d
	jle	.LBB0_20
# %bb.61:                               # %.preheader3
	movl	%r9d, %ecx
	.p2align	4, 0x90
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %r10d
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_62
	jmp	.LBB0_20
.LBB0_63:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	jg	.LBB0_65
# %bb.64:
                                        # kill: def $cl killed $cl killed $ecx
	shrdl	%cl, %edx, %edi
	jmp	.LBB0_66
.LBB0_65:
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	movl	%edx, %edi
.LBB0_66:
	movl	%r15d, %edx
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	shlq	$32, %rdx
	movl	%edi, %eax
	orq	%rdx, %rax
	movq	%rax, %xmm0
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movdqa	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_70
# %bb.68:
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_74
# %bb.69:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_72
.LBB0_70:
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_74
# %bb.71:
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm2, %xmm1
.LBB0_72:
	jne	.LBB0_75
	jp	.LBB0_75
# %bb.73:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	je	.LBB0_75
.LBB0_74:
	addl	$1, %ebx
	subsd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_75:
	movq	%xmm2, %rax
	movl	%eax, %ecx
	shrq	$32, %rax
	xorl	%eax, %r15d
	shlq	$32, %r15
	orq	%r15, %rcx
	movq	%rcx, %xmm0
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	%ebx, %eax
	negl	%eax
	testl	$-2147483648, %r14d     # imm = 0x80000000
	cmovel	%ebx, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_4
.Lfunc_end0:
	.size	remquo, .Lfunc_end0-remquo
                                        # -- End function
	.type	Zero,@object            # @Zero
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
Zero:
	.quad	0                       # double 0
	.quad	-9223372036854775808    # double -0
	.size	Zero, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
