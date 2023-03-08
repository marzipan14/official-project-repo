	.text
	.file	"e_fmod.c"
	.globl	__ieee754_fmod          # -- Begin function __ieee754_fmod
	.p2align	4, 0x90
	.type	__ieee754_fmod,@function
__ieee754_fmod:                         # @__ieee754_fmod
# %bb.0:
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movq	%xmm0, %r8
	movq	%r8, %r9
	shrq	$32, %r9
	movl	%r9d, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %esi       # imm = 0x7FEFFFFF
	ja	.LBB0_3
# %bb.1:
	movq	%xmm1, %r10
	movq	%r10, %r11
	shrq	$32, %r11
	movl	%r11d, %edi
	andl	$2147483647, %edi       # imm = 0x7FFFFFFF
	movl	%edi, %eax
	orl	%r10d, %eax
	je	.LBB0_3
# %bb.2:
	movl	%r10d, %eax
	negl	%eax
	orl	%r10d, %eax
	shrl	$31, %eax
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435073, %eax       # imm = 0x7FF00001
	jb	.LBB0_4
.LBB0_3:
	mulsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm0
.LBB0_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %esi
	jbe	.LBB0_5
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %esi          # imm = 0xFFFFF
	ja	.LBB0_17
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_11
# %bb.14:
	movl	%r9d, %eax
	shll	$11, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1022, %r14d           # imm = 0xFC02
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jle	.LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_16 Depth=1
	addl	$-1, %r14d
	addl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_62
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %r8d
	jb	.LBB0_62
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_9
	jmp	.LBB0_8
.LBB0_17:
	movl	%esi, %r14d
	shrl	$20, %r14d
	addl	$-1023, %r14d           # imm = 0xFC01
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %edi          # imm = 0xFFFFF
	ja	.LBB0_26
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_20
# %bb.23:
	movl	%r11d, %ecx
	shll	$11, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1022, %eax            # imm = 0xFC02
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_25 Depth=1
	addl	$-1, %eax
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_25
.LBB0_26:
	movl	%edi, %eax
	shrl	$20, %eax
	addl	$-1023, %eax            # imm = 0xFC01
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1022, %r14d           # imm = 0xFC02
	jl	.LBB0_29
# %bb.28:
	movl	%r9d, %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	orl	$1048576, %esi          # imm = 0x100000
	movl	%r8d, %edx
	jmp	.LBB0_32
.LBB0_29:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	jg	.LBB0_31
# %bb.30:
	shldl	%cl, %r8d, %esi
	movl	%r8d, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	jmp	.LBB0_32
.LBB0_31:
	movl	%r8d, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	xorl	%edx, %edx
.LBB0_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1022, %eax            # imm = 0xFC02
	jl	.LBB0_34
# %bb.33:
	andl	$1048575, %r11d         # imm = 0xFFFFF
	orl	$1048576, %r11d         # imm = 0x100000
	jmp	.LBB0_37
.LBB0_34:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	jg	.LBB0_36
# %bb.35:
	shldl	%cl, %r10d, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	movl	%edi, %r11d
	jmp	.LBB0_37
.LBB0_36:
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	subl	%r11d, %ecx
	movl	%edx, %edi
	subl	%r10d, %edi
	setb	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	je	.LBB0_46
# %bb.38:                               # %.preheader1
	movl	%eax, %ebp
	subl	%r14d, %ebp
	jmp	.LBB0_39
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_39 Depth=1
	addl	%esi, %esi
	movl	%edx, %ecx
	shrl	$31, %ecx
.LBB0_45:                               #   in Loop: Header=BB0_39 Depth=1
	orl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	subl	%r11d, %ecx
	movl	%edx, %edi
	subl	%r10d, %edi
	setb	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incl	%ebp
	je	.LBB0_46
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %bl
	je	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	addl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB0_42
# %bb.43:                               #   in Loop: Header=BB0_39 Depth=1
	movl	%ecx, %edx
	orl	%edi, %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_8
# %bb.44:                               #   in Loop: Header=BB0_39 Depth=1
	addl	%ecx, %ecx
	movl	%edi, %esi
	shrl	$31, %esi
	movl	%edi, %edx
	jmp	.LBB0_45
.LBB0_46:
	testb	%bl, %bl
	je	.LBB0_48
# %bb.47:
	addl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_48:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB0_50
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	movl	%edi, %edx
.LBB0_50:
	movl	%edx, %ecx
	orl	%esi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_8
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %esi          # imm = 0xFFFFF
	jg	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	shldl	$1, %edx, %esi
	addl	%edx, %edx
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048576, %esi          # imm = 0x100000
	jl	.LBB0_52
.LBB0_53:
	andl	$-2147483648, %r9d      # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1022, %eax            # imm = 0xFC02
	jl	.LBB0_55
# %bb.54:
	addl	$-1048576, %esi         # imm = 0xFFF00000
	shll	$20, %eax
	addl	$1072693248, %eax       # imm = 0x3FF00000
	orl	%r9d, %eax
	orl	%esi, %eax
	jmp	.LBB0_61
.LBB0_8:
	shrq	$63, %r8
	movsd	Zero(,%r8,8), %xmm0     # xmm0 = mem[0],zero
	jmp	.LBB0_62
.LBB0_55:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20, %ecx
	jg	.LBB0_57
# %bb.56:
	shrdl	%cl, %esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	jmp	.LBB0_60
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1043, %r14d           # imm = 0xFBED
	testl	%r8d, %r8d
	jle	.LBB0_18
# %bb.12:                               # %.preheader7
	movl	%r8d, %eax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %r14d
	addl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_13
	jmp	.LBB0_18
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1043, %eax            # imm = 0xFBED
	testl	%r10d, %r10d
	jle	.LBB0_27
# %bb.21:                               # %.preheader3
	movl	%r10d, %ecx
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %eax
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_22
	jmp	.LBB0_27
.LBB0_57:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	jg	.LBB0_59
# %bb.58:
                                        # kill: def $cl killed $cl killed $ecx
	shrdl	%cl, %esi, %edx
	movl	%r9d, %eax
	jmp	.LBB0_60
.LBB0_59:
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movl	%r9d, %eax
	movl	%esi, %edx
.LBB0_60:
	movl	$42, __A_VARIABLE(%rip)
	orl	%r9d, %eax
.LBB0_61:
	shlq	$32, %rax
	movl	%edx, %ecx
	orq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %xmm0
	jmp	.LBB0_62
.Lfunc_end0:
	.size	__ieee754_fmod, .Lfunc_end0-__ieee754_fmod
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
