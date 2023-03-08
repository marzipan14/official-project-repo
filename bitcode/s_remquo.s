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
	subq	$24, %rsp
	movq	%rdi, %r12
	movq	%xmm0, %r8
	movq	%r8, %rax
	shrq	$32, %rax
	movl	%eax, %r11d
	andl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	cmpl	$2146435071, %r11d      # imm = 0x7FEFFFFF
	ja	.LBB0_3
# %bb.1:
	movq	%xmm1, %r14
	movq	%r14, %r10
	shrq	$32, %r10
	movl	%r10d, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	movl	%edx, %ecx
	orl	%r14d, %ecx
	je	.LBB0_3
# %bb.2:
	movl	%r14d, %ecx
	negl	%ecx
	orl	%r14d, %ecx
	shrl	$31, %ecx
	orl	%edx, %ecx
	cmpl	$2146435073, %ecx       # imm = 0x7FF00001
	jb	.LBB0_4
.LBB0_3:
	movl	$0, (%r12)
	mulsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm0
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	movl	%r10d, %edi
	xorl	%eax, %edi
	movl	%eax, %ecx
	andl	$-2147483648, %ecx      # imm = 0x80000000
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpl	%edx, %r11d
	jbe	.LBB0_5
.LBB0_11:
	cmpl	$1048575, %r11d         # imm = 0xFFFFF
	ja	.LBB0_19
# %bb.12:
	testl	%r11d, %r11d
	je	.LBB0_13
# %bb.16:
	movl	%eax, %ecx
	shll	$11, %ecx
	movl	$-1022, %esi            # imm = 0xFC02
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_18 Depth=1
	addl	$-1, %esi
	addl	%ecx, %ecx
	jmp	.LBB0_18
.LBB0_5:
	xorl	%r13d, %r13d
	cmpl	%r14d, %r8d
	jb	.LBB0_6
# %bb.7:
	cmpl	%edx, %r11d
	jb	.LBB0_6
# %bb.8:
	cmpl	%r14d, %r8d
	jne	.LBB0_11
# %bb.9:
	xorl	%eax, %eax
	testl	$-2147483648, %edi      # imm = 0x80000000
	sete	%al
	addl	%eax, %eax
	addl	$-1, %eax
	jmp	.LBB0_10
.LBB0_19:
	movl	%r11d, %esi
	shrl	$20, %esi
	addl	$-1023, %esi            # imm = 0xFC01
.LBB0_20:
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	ja	.LBB0_28
# %bb.21:
	testl	%edx, %edx
	je	.LBB0_22
# %bb.25:
	movl	%r10d, %ecx
	shll	$11, %ecx
	movl	$-1022, %r9d            # imm = 0xFC02
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_29
# %bb.26:                               #   in Loop: Header=BB0_27 Depth=1
	addl	$-1, %r9d
	addl	%ecx, %ecx
	jmp	.LBB0_27
.LBB0_28:
	movl	%edx, %r9d
	shrl	$20, %r9d
	addl	$-1023, %r9d            # imm = 0xFC01
.LBB0_29:
	cmpl	$-1022, %esi            # imm = 0xFC02
	jl	.LBB0_31
# %bb.30:
	andl	$1048575, %eax          # imm = 0xFFFFF
	orl	$1048576, %eax          # imm = 0x100000
	movl	%r8d, %r15d
	cmpl	$-1022, %r9d            # imm = 0xFC02
	jl	.LBB0_36
	jmp	.LBB0_35
.LBB0_31:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%esi, %ecx
	cmpl	$31, %ecx
	jg	.LBB0_33
# %bb.32:
	shldl	%cl, %r8d, %r11d
	movl	%r8d, %r15d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r15d
	movl	%r11d, %eax
	cmpl	$-1022, %r9d            # imm = 0xFC02
	jge	.LBB0_35
.LBB0_36:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%r9d, %ecx
	cmpl	$31, %ecx
	jg	.LBB0_38
# %bb.37:
	shldl	%cl, %r14d, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r14d
	movl	%edx, %r10d
	jmp	.LBB0_39
.LBB0_6:
	movl	%edi, %r14d
	movl	%r8d, %r15d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_60
.LBB0_33:
	movl	%r8d, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	xorl	%r15d, %r15d
	cmpl	$-1022, %r9d            # imm = 0xFC02
	jl	.LBB0_36
.LBB0_35:
	andl	$1048575, %r10d         # imm = 0xFFFFF
	orl	$1048576, %r10d         # imm = 0x100000
	jmp	.LBB0_39
.LBB0_38:
	movl	%r14d, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	xorl	%r14d, %r14d
.LBB0_39:
	movl	%edi, %r11d
	movl	%r15d, %edx
	subl	%r14d, %edx
	movl	%eax, %edi
	sbbl	%r10d, %edi
	cmpl	%r9d, %esi
	je	.LBB0_40
# %bb.41:                               # %.preheader1
	movl	%r9d, %ebx
	subl	%esi, %ebx
	xorl	%ecx, %ecx
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=1
	shldl	$1, %edx, %edi
	orl	$1, %ecx
	movl	%edx, %r15d
	movl	%edi, %eax
.LBB0_45:                               #   in Loop: Header=BB0_42 Depth=1
	addl	%r15d, %r15d
	addl	%ecx, %ecx
	movl	%r15d, %edx
	subl	%r14d, %edx
	movl	%eax, %edi
	sbbl	%r10d, %edi
	incl	%ebx
	je	.LBB0_46
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	testl	%edi, %edi
	jns	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	shldl	$1, %r15d, %eax
	jmp	.LBB0_45
.LBB0_40:
	xorl	%ecx, %ecx
.LBB0_46:
	movl	%edi, %r13d
	shrl	$31, %r13d
	orl	%ecx, %r13d
	xorl	$1, %r13d
	testl	%edi, %edi
	cmovnsl	%edx, %r15d
	cmovnsl	%edi, %eax
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB0_49
# %bb.47:
	cmpl	$1048575, %eax          # imm = 0xFFFFF
	jg	.LBB0_48
# %bb.50:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	shldl	$1, %r15d, %eax
	addl	%r15d, %r15d
	addl	$-1, %r9d
	cmpl	$1048576, %eax          # imm = 0x100000
	jl	.LBB0_51
# %bb.52:
	cmpl	$-1022, %r9d            # imm = 0xFC02
	jl	.LBB0_54
.LBB0_53:
	movl	%r11d, %r14d
	addl	$-1048576, %eax         # imm = 0xFFF00000
	shll	$20, %r9d
	addl	$1072693248, %r9d       # imm = 0x3FF00000
	orl	%eax, %r9d
	movl	%r9d, %r11d
	jmp	.LBB0_60
.LBB0_49:
	andl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	movl	%r13d, %eax
	negl	%eax
	testl	$-2147483648, %r11d     # imm = 0x80000000
	cmovel	%r13d, %eax
.LBB0_10:
	movl	%eax, (%r12)
	shrq	$63, %r8
	movq	Zero(,%r8,8), %xmm0     # xmm0 = mem[0],zero
	jmp	.LBB0_67
.LBB0_48:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	cmpl	$-1022, %r9d            # imm = 0xFC02
	jge	.LBB0_53
.LBB0_54:
	movl	$-1022, %ecx            # imm = 0xFC02
	subl	%r9d, %ecx
	movl	%r11d, %r14d
	cmpl	$20, %ecx
	jg	.LBB0_56
# %bb.55:
	shrdl	%cl, %eax, %r15d
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, %r11d
	jmp	.LBB0_60
.LBB0_13:
	movl	$-1043, %esi            # imm = 0xFBED
	testl	%r8d, %r8d
	jle	.LBB0_20
# %bb.14:                               # %.preheader7
	movl	%r8d, %ecx
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %esi
	addl	%ecx, %ecx
	testl	%ecx, %ecx
	jg	.LBB0_15
	jmp	.LBB0_20
.LBB0_22:
	movl	$-1043, %r9d            # imm = 0xFBED
	testl	%r14d, %r14d
	jle	.LBB0_29
# %bb.23:                               # %.preheader3
	movl	%r14d, %ecx
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %r9d
	addl	%ecx, %ecx
	testl	%ecx, %ecx
	jg	.LBB0_24
	jmp	.LBB0_29
.LBB0_56:
	cmpl	$31, %ecx
	jg	.LBB0_58
# %bb.57:
                                        # kill: def $cl killed $cl killed $ecx
	shrdl	%cl, %eax, %r15d
	jmp	.LBB0_59
.LBB0_58:
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, %r15d
.LBB0_59:
	movl	%ebx, %r11d
.LBB0_60:
	shlq	$32, %r11
	movl	%r15d, %eax
	orq	%r11, %rax
	movq	%rax, %xmm0
	movq	%xmm0, -56(%rbp)        # 8-byte Folded Spill
	movdqa	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_68
# %bb.61:
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_65
# %bb.62:
	testb	$1, %r13b
	je	.LBB0_66
# %bb.63:
	ucomisd	%xmm0, %xmm1
	jmp	.LBB0_64
.LBB0_68:
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	ja	.LBB0_65
# %bb.69:
	testb	$1, %r13b
	je	.LBB0_66
# %bb.70:
	ucomisd	%xmm2, %xmm1
.LBB0_64:
	jne	.LBB0_66
	jp	.LBB0_66
.LBB0_65:
	addl	$1, %r13d
	subsd	%xmm0, %xmm2
.LBB0_66:
	movq	%xmm2, %rax
	movl	%eax, %ecx
	shrq	$32, %rax
	xorl	%eax, %ebx
	shlq	$32, %rbx
	orq	%rbx, %rcx
	movq	%rcx, %xmm0
	andl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	movl	%r13d, %eax
	negl	%eax
	testl	$-2147483648, %r14d     # imm = 0x80000000
	cmovel	%r13d, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_67
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
