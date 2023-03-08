	.text
	.file	"e_fmod.c"
	.globl	__ieee754_fmod          # -- Begin function __ieee754_fmod
	.p2align	4, 0x90
	.type	__ieee754_fmod,@function
__ieee754_fmod:                         # @__ieee754_fmod
# %bb.0:
	pushq	%rbp
	pushq	%rbx
	movq	%xmm0, %r8
	movq	%r8, %r9
	shrq	$32, %r9
	movl	%r9d, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
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
	cmpl	$2146435073, %eax       # imm = 0x7FF00001
	jb	.LBB0_4
.LBB0_3:
	mulsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm0
.LBB0_56:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	cmpl	%edi, %esi
	ja	.LBB0_9
# %bb.5:
	cmpl	%r10d, %r8d
	jb	.LBB0_56
# %bb.6:
	cmpl	%edi, %esi
	jb	.LBB0_56
# %bb.7:
	cmpl	%r10d, %r8d
	je	.LBB0_8
.LBB0_9:
	cmpl	$1048575, %esi          # imm = 0xFFFFF
	ja	.LBB0_17
# %bb.10:
	testl	%esi, %esi
	je	.LBB0_11
# %bb.14:
	movl	%r9d, %eax
	shll	$11, %eax
	movl	$-1022, %ebx            # imm = 0xFC02
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jle	.LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_16 Depth=1
	addl	$-1, %ebx
	addl	%eax, %eax
	jmp	.LBB0_16
.LBB0_17:
	movl	%esi, %ebx
	shrl	$20, %ebx
	addl	$-1023, %ebx            # imm = 0xFC01
.LBB0_18:
	cmpl	$1048575, %edi          # imm = 0xFFFFF
	ja	.LBB0_26
# %bb.19:
	testl	%edi, %edi
	je	.LBB0_20
# %bb.23:
	movl	%r11d, %ecx
	shll	$11, %ecx
	movl	$-1022, %eax            # imm = 0xFC02
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_25 Depth=1
	addl	$-1, %eax
	addl	%ecx, %ecx
	jmp	.LBB0_25
.LBB0_26:
	movl	%edi, %eax
	shrl	$20, %eax
	addl	$-1023, %eax            # imm = 0xFC01
.LBB0_27:
	cmpl	$-1022, %ebx            # imm = 0xFC02
	jl	.LBB0_29
# %bb.28:
	movl	%r9d, %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	orl	$1048576, %esi          # imm = 0x100000
	movl	%r8d, %edx
	cmpl	$-1022, %eax            # imm = 0xFC02
	jl	.LBB0_34
	jmp	.LBB0_33
.LBB0_29:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%ebx, %ecx
	cmpl	$31, %ecx
	jg	.LBB0_31
# %bb.30:
	shldl	%cl, %r8d, %esi
	movl	%r8d, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	cmpl	$-1022, %eax            # imm = 0xFC02
	jge	.LBB0_33
.LBB0_34:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%eax, %ecx
	cmpl	$31, %ecx
	jg	.LBB0_36
# %bb.35:
	shldl	%cl, %r10d, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	movl	%edi, %r11d
	jmp	.LBB0_37
.LBB0_31:
	movl	%r8d, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	xorl	%edx, %edx
	cmpl	$-1022, %eax            # imm = 0xFC02
	jl	.LBB0_34
.LBB0_33:
	andl	$1048575, %r11d         # imm = 0xFFFFF
	orl	$1048576, %r11d         # imm = 0x100000
	jmp	.LBB0_37
.LBB0_36:
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
.LBB0_37:
	movl	%edx, %edi
	subl	%r10d, %edi
	movl	%esi, %ecx
	sbbl	%r11d, %ecx
	cmpl	%eax, %ebx
	je	.LBB0_44
# %bb.38:                               # %.preheader1
	movl	%eax, %ebp
	subl	%ebx, %ebp
	jmp	.LBB0_39
	.p2align	4, 0x90
.LBB0_40:                               #   in Loop: Header=BB0_39 Depth=1
	addl	%esi, %esi
	movl	%edx, %ecx
	shrl	$31, %ecx
.LBB0_43:                               #   in Loop: Header=BB0_39 Depth=1
	orl	%ecx, %esi
	addl	%edx, %edx
	movl	%edx, %edi
	subl	%r10d, %edi
	movl	%esi, %ecx
	sbbl	%r11d, %ecx
	incl	%ebp
	je	.LBB0_44
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	js	.LBB0_40
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=1
	movl	%ecx, %edx
	orl	%edi, %edx
	je	.LBB0_8
# %bb.42:                               #   in Loop: Header=BB0_39 Depth=1
	addl	%ecx, %ecx
	movl	%edi, %esi
	shrl	$31, %esi
	movl	%edi, %edx
	jmp	.LBB0_43
.LBB0_44:
	testl	%ecx, %ecx
	cmovnsl	%ecx, %esi
	cmovnsl	%edi, %edx
	movl	%esi, %ecx
	orl	%edx, %ecx
	je	.LBB0_8
# %bb.45:
	cmpl	$1048575, %esi          # imm = 0xFFFFF
	jg	.LBB0_47
	.p2align	4, 0x90
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	shldl	$1, %edx, %esi
	addl	%edx, %edx
	addl	$-1, %eax
	cmpl	$1048576, %esi          # imm = 0x100000
	jl	.LBB0_46
.LBB0_47:
	andl	$-2147483648, %r9d      # imm = 0x80000000
	cmpl	$-1022, %eax            # imm = 0xFC02
	jl	.LBB0_49
# %bb.48:
	addl	$-1048576, %esi         # imm = 0xFFF00000
	shll	$20, %eax
	addl	$1072693248, %eax       # imm = 0x3FF00000
	orl	%r9d, %eax
	orl	%esi, %eax
	jmp	.LBB0_55
.LBB0_8:
	shrq	$63, %r8
	movsd	Zero(,%r8,8), %xmm0     # xmm0 = mem[0],zero
	jmp	.LBB0_56
.LBB0_49:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%eax, %ecx
	cmpl	$20, %ecx
	jg	.LBB0_51
# %bb.50:
	shrdl	%cl, %esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	jmp	.LBB0_54
.LBB0_11:
	movl	$-1043, %ebx            # imm = 0xFBED
	testl	%r8d, %r8d
	jle	.LBB0_18
# %bb.12:                               # %.preheader7
	movl	%r8d, %eax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %ebx
	addl	%eax, %eax
	testl	%eax, %eax
	jg	.LBB0_13
	jmp	.LBB0_18
.LBB0_20:
	movl	$-1043, %eax            # imm = 0xFBED
	testl	%r10d, %r10d
	jle	.LBB0_27
# %bb.21:                               # %.preheader3
	movl	%r10d, %ecx
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %eax
	addl	%ecx, %ecx
	testl	%ecx, %ecx
	jg	.LBB0_22
	jmp	.LBB0_27
.LBB0_51:
	cmpl	$31, %ecx
	jg	.LBB0_53
# %bb.52:
                                        # kill: def $cl killed $cl killed $ecx
	shrdl	%cl, %esi, %edx
	movl	%r9d, %eax
	jmp	.LBB0_54
.LBB0_53:
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movl	%r9d, %eax
	movl	%esi, %edx
.LBB0_54:
	orl	%r9d, %eax
.LBB0_55:
	shlq	$32, %rax
	movl	%edx, %ecx
	orq	%rax, %rcx
	movq	%rcx, %xmm0
	jmp	.LBB0_56
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
