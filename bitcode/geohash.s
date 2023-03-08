	.text
	.file	"geohash.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function geohashGetCoordRange
.LCPI0_0:
	.quad	-4582834833314545664    # double -180
	.quad	4640537203540230144     # double 180
.LCPI0_1:
	.quad	-4587686678794764544    # double -85.051128779999999
	.quad	4635685358060011264     # double 85.051128779999999
	.text
	.globl	geohashGetCoordRange
	.p2align	4, 0x90
	.type	geohashGetCoordRange,@function
geohashGetCoordRange:                   # @geohashGetCoordRange
# %bb.0:
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [-1.8E+2,1.8E+2]
	movups	%xmm0, (%rdi)
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [-8.5051128779999999E+1,8.5051128779999999E+1]
	movups	%xmm0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	geohashGetCoordRange, .Lfunc_end0-geohashGetCoordRange
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashEncode
.LCPI1_0:
	.quad	-4587686678794764544    # double -85.051128779999999
.LCPI1_1:
	.quad	4640537203540230144     # double 180
.LCPI1_2:
	.quad	-4582834833314545664    # double -180
.LCPI1_3:
	.quad	4635685358060011264     # double 85.051128779999999
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI1_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	geohashEncode
	.p2align	4, 0x90
	.type	geohashEncode,@function
geohashEncode:                          # @geohashEncode
# %bb.0:
	xorl	%eax, %eax
	cmpb	$32, %dl
	ja	.LBB1_19
# %bb.1:
	movq	%rcx, %r8
	testq	%rcx, %rcx
	je	.LBB1_19
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB1_19
# %bb.3:
	testb	%dl, %dl
	je	.LBB1_19
# %bb.4:
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm2
	jne	.LBB1_7
	jnp	.LBB1_5
.LBB1_7:
	testq	%rdi, %rdi
	jne	.LBB1_8
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_5:
	testq	%rdi, %rdi
	je	.LBB1_19
# %bb.6:
	movsd	(%rsi), %xmm3           # xmm3 = mem[0],zero
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm3
	jne	.LBB1_8
	jnp	.LBB1_19
.LBB1_8:
	movsd	8(%rdi), %xmm3          # xmm3 = mem[0],zero
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm3
	jne	.LBB1_10
	jp	.LBB1_10
# %bb.9:
	movsd	(%rdi), %xmm5           # xmm5 = mem[0],zero
	ucomisd	%xmm4, %xmm5
	jne	.LBB1_10
	jnp	.LBB1_19
.LBB1_10:
	movsd	.LCPI1_0(%rip), %xmm4   # xmm4 = mem[0],zero
	ucomisd	%xmm1, %xmm4
	ja	.LBB1_19
# %bb.11:
	ucomisd	.LCPI1_1(%rip), %xmm0
	ja	.LBB1_19
# %bb.12:
	movsd	.LCPI1_2(%rip), %xmm4   # xmm4 = mem[0],zero
	ucomisd	%xmm0, %xmm4
	ja	.LBB1_19
# %bb.13:
	ucomisd	.LCPI1_3(%rip), %xmm1
	ja	.LBB1_19
# %bb.14:
	movq	$0, (%r8)
	movb	%dl, 8(%r8)
	ucomisd	%xmm2, %xmm1
	ja	.LBB1_19
# %bb.15:
	movsd	(%rsi), %xmm4           # xmm4 = mem[0],zero
	ucomisd	%xmm1, %xmm4
	ja	.LBB1_19
# %bb.16:
	ucomisd	%xmm3, %xmm0
	ja	.LBB1_19
# %bb.17:
	movsd	(%rdi), %xmm5           # xmm5 = mem[0],zero
	ucomisd	%xmm0, %xmm5
	ja	.LBB1_19
# %bb.18:
	subsd	%xmm4, %xmm1
	subsd	%xmm4, %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm5, %xmm0
	subsd	%xmm5, %xmm3
	divsd	%xmm3, %xmm0
	movl	$1, %eax
	movl	%edx, %ecx
	shlq	%cl, %rax
	movq	%rax, %xmm2
	punpckldq	.LCPI1_4(%rip), %xmm2 # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	subpd	.LCPI1_5(%rip), %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm3
	cvttsd2si	%xmm1, %rax
	cvttsd2si	%xmm3, %rcx
	movl	%eax, %eax
	movl	%ecx, %ecx
	movq	%rax, %rdx
	shlq	$16, %rdx
	orq	%rax, %rdx
	movabsq	$281470681808895, %rax  # imm = 0xFFFF0000FFFF
	andq	%rax, %rdx
	movq	%rcx, %rsi
	shlq	$16, %rsi
	orq	%rcx, %rsi
	andq	%rax, %rsi
	movq	%rdx, %rax
	shlq	$8, %rax
	orq	%rdx, %rax
	movabsq	$71777214294589695, %rcx # imm = 0xFF00FF00FF00FF
	andq	%rcx, %rax
	movq	%rsi, %rdx
	shlq	$8, %rdx
	orq	%rsi, %rdx
	andq	%rcx, %rdx
	movq	%rax, %rcx
	shlq	$4, %rcx
	orq	%rax, %rcx
	movabsq	$1085102592571150095, %rax # imm = 0xF0F0F0F0F0F0F0F
	andq	%rax, %rcx
	movq	%rdx, %rsi
	shlq	$4, %rsi
	orq	%rdx, %rsi
	andq	%rax, %rsi
	leaq	(,%rcx,4), %rax
	orq	%rcx, %rax
	movabsq	$3689348814741910323, %rcx # imm = 0x3333333333333333
	andq	%rcx, %rax
	leaq	(,%rsi,4), %rdx
	orq	%rsi, %rdx
	andq	%rcx, %rdx
	leaq	(%rax,%rax), %rcx
	orq	%rax, %rcx
	movabsq	$6148914691236517205, %rax # imm = 0x5555555555555555
	andq	%rcx, %rax
	leaq	(%rdx,%rdx), %rcx
	leaq	(,%rdx,4), %rdx
	orq	%rcx, %rdx
	movabsq	$-6148914691236517206, %rcx # imm = 0xAAAAAAAAAAAAAAAA
	andq	%rdx, %rcx
	orq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%r8)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	geohashEncode, .Lfunc_end1-geohashEncode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function geohashEncodeType
.LCPI2_0:
	.quad	-4582834833314545664    # double -180
	.quad	4640537203540230144     # double 180
.LCPI2_1:
	.quad	-4587686678794764544    # double -85.051128779999999
	.quad	4635685358060011264     # double 85.051128779999999
	.text
	.globl	geohashEncodeType
	.p2align	4, 0x90
	.type	geohashEncodeType,@function
geohashEncodeType:                      # @geohashEncodeType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, %rcx
	movl	%edi, %edx
	leaq	-16(%rbp), %rsi
	movaps	.LCPI2_0(%rip), %xmm2   # xmm2 = [-1.8E+2,1.8E+2]
	movaps	%xmm2, -32(%rbp)
	movaps	.LCPI2_1(%rip), %xmm2   # xmm2 = [-8.5051128779999999E+1,8.5051128779999999E+1]
	movaps	%xmm2, -16(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-32(%rbp), %rdi
	callq	geohashEncode
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	geohashEncodeType, .Lfunc_end2-geohashEncodeType
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function geohashEncodeWGS84
.LCPI3_0:
	.quad	-4582834833314545664    # double -180
	.quad	4640537203540230144     # double 180
.LCPI3_1:
	.quad	-4587686678794764544    # double -85.051128779999999
	.quad	4635685358060011264     # double 85.051128779999999
	.text
	.globl	geohashEncodeWGS84
	.p2align	4, 0x90
	.type	geohashEncodeWGS84,@function
geohashEncodeWGS84:                     # @geohashEncodeWGS84
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, %rcx
	movl	%edi, %edx
	leaq	-16(%rbp), %rsi
	movaps	.LCPI3_0(%rip), %xmm2   # xmm2 = [-1.8E+2,1.8E+2]
	movaps	%xmm2, -32(%rbp)
	movaps	.LCPI3_1(%rip), %xmm2   # xmm2 = [-8.5051128779999999E+1,8.5051128779999999E+1]
	movaps	%xmm2, -16(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-32(%rbp), %rdi
	callq	geohashEncode
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	geohashEncodeWGS84, .Lfunc_end3-geohashEncodeWGS84
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function geohashDecode
.LCPI4_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI4_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	geohashDecode
	.p2align	4, 0x90
	.type	geohashDecode,@function
geohashDecode:                          # @geohashDecode
# %bb.0:
	subq	$7, %rsp
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.8:
	testq	%rdx, %rdx
	jne	.LBB4_3
# %bb.9:
	xorl	%eax, %eax
	jmp	.LBB4_10
.LBB4_1:
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.LBB4_10
# %bb.2:
	testq	%rdx, %rdx
	je	.LBB4_10
.LBB4_3:
	xorl	%eax, %eax
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm2
	jne	.LBB4_5
	jp	.LBB4_5
# %bb.4:
	ucomisd	%xmm4, %xmm3
	jne	.LBB4_5
	jnp	.LBB4_10
.LBB4_5:
	ucomisd	%xmm4, %xmm0
	jne	.LBB4_7
	jp	.LBB4_7
# %bb.6:
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm1
	jne	.LBB4_7
	jnp	.LBB4_10
.LBB4_7:
	movq	%rdi, (%rdx)
	movb	%sil, 8(%rdx)
	movl	(%rsp), %eax
	movl	3(%rsp), %ecx
	movl	%eax, 9(%rdx)
	movl	%ecx, 12(%rdx)
	movq	%rdi, %r8
	shrq	%r8
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	andq	%rcx, %rdi
	andq	%rcx, %r8
	movq	%rdi, %rcx
	shrq	%rcx
	orq	%rdi, %rcx
	movabsq	$3689348814741910323, %rdi # imm = 0x3333333333333333
	andq	%rdi, %rcx
	movq	%r8, %rax
	shrq	%rax
	orq	%r8, %rax
	andq	%rdi, %rax
	movq	%rcx, %rdi
	shrq	$2, %rdi
	orq	%rcx, %rdi
	movabsq	$1085102592571150095, %r8 # imm = 0xF0F0F0F0F0F0F0F
	andq	%r8, %rdi
	movq	%rax, %r9
	shrq	$2, %r9
	orq	%rax, %r9
	andq	%r8, %r9
	movq	%rdi, %rax
	shrq	$4, %rax
	orq	%rdi, %rax
	movabsq	$71777214294589695, %rdi # imm = 0xFF00FF00FF00FF
	andq	%rdi, %rax
	movq	%r9, %rcx
	shrq	$4, %rcx
	orq	%r9, %rcx
	andq	%rdi, %rcx
	movq	%rax, %rdi
	shrq	$8, %rdi
	orq	%rax, %rdi
	movq	%rcx, %rax
	shrq	$8, %rax
	orq	%rcx, %rax
	movzwl	%di, %r9d
	shrq	$16, %rdi
	andl	$-65536, %edi           # imm = 0xFFFF0000
	leal	(%rdi,%r9), %ecx
	movzwl	%ax, %r8d
	shrq	$16, %rax
	andl	$-65536, %eax           # imm = 0xFFFF0000
	leal	(%rax,%r8), %r10d
	movl	$42, __A_VARIABLE(%rip)
	subsd	%xmm2, %xmm3
	cvtsi2sd	%rcx, %xmm5
	movl	$1, %r11d
	movl	%esi, %ecx
	shlq	%cl, %r11
	movq	%r11, %xmm6
	punpckldq	.LCPI4_0(%rip), %xmm6 # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1]
	subpd	.LCPI4_1(%rip), %xmm6
	subsd	%xmm0, %xmm1
	movapd	%xmm6, %xmm4
	unpckhpd	%xmm6, %xmm4    # xmm4 = xmm4[1],xmm6[1]
	addsd	%xmm6, %xmm4
	divsd	%xmm4, %xmm5
	mulsd	%xmm3, %xmm5
	addsd	%xmm2, %xmm5
	movsd	%xmm5, 32(%rdx)
	leal	1(%rdi,%r9), %ecx
	xorps	%xmm5, %xmm5
	cvtsi2sd	%rcx, %xmm5
	divsd	%xmm4, %xmm5
	mulsd	%xmm3, %xmm5
	addsd	%xmm2, %xmm5
	movsd	%xmm5, 40(%rdx)
	cvtsi2sd	%r10, %xmm2
	divsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%rdx)
	leal	1(%rax,%r8), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	divsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 24(%rdx)
	movl	$1, %eax
.LBB4_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$7, %rsp
	retq
.Lfunc_end4:
	.size	geohashDecode, .Lfunc_end4-geohashDecode
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashDecodeType
.LCPI5_0:
	.quad	-4582834833314545664    # double -180
.LCPI5_1:
	.quad	4640537203540230144     # double 180
.LCPI5_2:
	.quad	-4587686678794764544    # double -85.051128779999999
.LCPI5_3:
	.quad	4635685358060011264     # double 85.051128779999999
	.text
	.globl	geohashDecodeType
	.p2align	4, 0x90
	.type	geohashDecodeType,@function
geohashDecodeType:                      # @geohashDecodeType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI5_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI5_3(%rip), %xmm3   # xmm3 = mem[0],zero
	callq	geohashDecode
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	geohashDecodeType, .Lfunc_end5-geohashDecodeType
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashDecodeWGS84
.LCPI6_0:
	.quad	-4582834833314545664    # double -180
.LCPI6_1:
	.quad	4640537203540230144     # double 180
.LCPI6_2:
	.quad	-4587686678794764544    # double -85.051128779999999
.LCPI6_3:
	.quad	4635685358060011264     # double 85.051128779999999
	.text
	.globl	geohashDecodeWGS84
	.p2align	4, 0x90
	.type	geohashDecodeWGS84,@function
geohashDecodeWGS84:                     # @geohashDecodeWGS84
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI6_3(%rip), %xmm3   # xmm3 = mem[0],zero
	callq	geohashDecode
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	geohashDecodeWGS84, .Lfunc_end6-geohashDecodeWGS84
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashDecodeAreaToLongLat
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	geohashDecodeAreaToLongLat
	.p2align	4, 0x90
	.type	geohashDecodeAreaToLongLat,@function
geohashDecodeAreaToLongLat:             # @geohashDecodeAreaToLongLat
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB7_1
# %bb.2:
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	addsd	24(%rdi), %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsi)
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	addsd	40(%rdi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsi)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	geohashDecodeAreaToLongLat, .Lfunc_end7-geohashDecodeAreaToLongLat
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashDecodeToLongLatType
.LCPI8_0:
	.quad	-4582834833314545664    # double -180
.LCPI8_1:
	.quad	4640537203540230144     # double 180
.LCPI8_2:
	.quad	-4587686678794764544    # double -85.051128779999999
.LCPI8_3:
	.quad	4635685358060011264     # double 85.051128779999999
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_4:
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	geohashDecodeToLongLatType
	.p2align	4, 0x90
	.type	geohashDecodeToLongLatType,@function
geohashDecodeToLongLatType:             # @geohashDecodeToLongLatType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -32(%rbp)
	movapd	%xmm0, -48(%rbp)
	movapd	%xmm0, -64(%rbp)
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.LBB8_3
# %bb.1:
	movq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%sil, %esi
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI8_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	-64(%rbp), %rdx
	callq	geohashDecode
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_3
# %bb.2:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movhpd	-24(%rbp), %xmm0        # xmm0 = xmm0[0],mem[0]
	movupd	-40(%rbp), %xmm1
	addpd	%xmm1, %xmm0
	mulpd	.LCPI8_4(%rip), %xmm0
	movupd	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	geohashDecodeToLongLatType, .Lfunc_end8-geohashDecodeToLongLatType
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashDecodeToLongLatWGS84
.LCPI9_0:
	.quad	-4582834833314545664    # double -180
.LCPI9_1:
	.quad	4640537203540230144     # double 180
.LCPI9_2:
	.quad	-4587686678794764544    # double -85.051128779999999
.LCPI9_3:
	.quad	4635685358060011264     # double 85.051128779999999
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI9_4:
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	geohashDecodeToLongLatWGS84
	.p2align	4, 0x90
	.type	geohashDecodeToLongLatWGS84,@function
geohashDecodeToLongLatWGS84:            # @geohashDecodeToLongLatWGS84
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -32(%rbp)
	movapd	%xmm0, -48(%rbp)
	movapd	%xmm0, -64(%rbp)
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.LBB9_3
# %bb.1:
	movq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%sil, %esi
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI9_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	-64(%rbp), %rdx
	callq	geohashDecode
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_3
# %bb.2:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movhpd	-24(%rbp), %xmm0        # xmm0 = xmm0[0],mem[0]
	movupd	-40(%rbp), %xmm1
	addpd	%xmm1, %xmm0
	mulpd	.LCPI9_4(%rip), %xmm0
	movupd	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	geohashDecodeToLongLatWGS84, .Lfunc_end9-geohashDecodeToLongLatWGS84
                                        # -- End function
	.globl	geohashNeighbors        # -- Begin function geohashNeighbors
	.p2align	4, 0x90
	.type	geohashNeighbors,@function
geohashNeighbors:                       # @geohashNeighbors
# %bb.0:
	movups	(%rdi), %xmm0
	movups	%xmm0, 16(%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, 32(%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, 48(%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, 80(%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, 112(%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, 64(%rsi)
	movups	(%rdi), %xmm0
	movups	%xmm0, 96(%rsi)
	movq	16(%rsi), %rdi
	movabsq	$-6148914691236517206, %r9 # imm = 0xAAAAAAAAAAAAAAAA
	movq	%rdi, %r10
	movabsq	$6148914691236517205, %r8 # imm = 0x5555555555555555
	movb	24(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r8, %rax
	shrq	%cl, %rax
	andq	%r9, %r10
	movq	%r9, %rdx
	shrq	%cl, %rdx
	andq	%r8, %rdi
	addq	%r10, %rax
	addq	$1, %rax
	andq	%rax, %rdx
	orq	%rdi, %rdx
	movq	%rdx, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rsi), %rax
	movq	%rax, %rdx
	andq	%r9, %rdx
	andq	%r8, %rax
	movb	40(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r8, %rdi
	shrq	%cl, %rdi
	orq	%rdx, %rdi
	movq	%r9, %rdx
	sarq	%cl, %rdx
	addq	%rdi, %rdx
	movq	%r9, %rdi
	shrq	%cl, %rdi
	andq	%rdx, %rdi
	orq	%rax, %rdi
	movq	%rdi, 32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rsi), %rax
	movq	%rax, %r10
	andq	%r9, %r10
	andq	%r8, %rax
	movb	56(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r9, %rdi
	shrq	%cl, %rdi
	orq	%rdi, %rax
	notq	%rdi
	movq	%r8, %rdx
	shrq	%cl, %rdx
	addq	%rax, %rdi
	andq	%rdi, %rdx
	orq	%r10, %rdx
	movq	%rdx, 48(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rax
	movq	%rax, %rdx
	andq	%r9, %rdx
	andq	%r8, %rax
	movb	8(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r9, %rdi
	shrq	%cl, %rdi
	addq	%rdi, %rax
	addq	$1, %rax
	movq	%r8, %rdi
	shrq	%cl, %rdi
	andq	%rax, %rdi
	orq	%rdx, %rdi
	movq	%rdi, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%rsi), %rax
	movq	%rax, %rdx
	andq	%r9, %rdx
	movb	104(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r8, %r10
	shrq	%cl, %r10
	orq	%r10, %rdx
	movq	%r9, %rdi
	sarq	%cl, %rdi
	addq	%rdx, %rdi
	movq	%r9, %rdx
	shrq	%cl, %rdx
	andq	%rdx, %rdi
	orq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	andq	%r9, %rdi
	andq	%r8, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	andq	%r10, %rax
	orq	%rdi, %rax
	movq	%rax, 96(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%rsi), %rax
	movq	%rax, %r10
	movb	72(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r8, %rdi
	shrq	%cl, %rdi
	andq	%r9, %r10
	movq	%r9, %rdx
	shrq	%cl, %rdx
	leaq	(%rdi,%r10), %rcx
	addq	$1, %rcx
	andq	%rdx, %rcx
	orq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	andq	%r9, %rcx
	andq	%r8, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	andq	%rdi, %rax
	orq	%rcx, %rax
	movq	%rax, 64(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	80(%rsi), %rax
	movq	%rax, %rdx
	andq	%r9, %rdx
	movb	88(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r8, %r10
	shrq	%cl, %r10
	addq	%r10, %rdx
	addq	$1, %rdx
	movq	%r9, %rdi
	shrq	%cl, %rdi
	andq	%rdi, %rdx
	orq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	andq	%r9, %rdx
	andq	%r8, %rax
	orq	%rdi, %rax
	notq	%rdi
	addq	%rax, %rdi
	andq	%r10, %rdi
	orq	%rdx, %rdi
	movq	%rdi, 80(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	112(%rsi), %rdi
	movq	%rdi, %rax
	andq	%r9, %rax
	movb	120(%rsi), %cl
	addb	%cl, %cl
	negb	%cl
	movq	%r8, %r10
	shrq	%cl, %r10
	orq	%r10, %rax
	movq	%r9, %rdx
	sarq	%cl, %rdx
	addq	%rax, %rdx
	movq	%r9, %rax
	shrq	%cl, %rax
	andq	%rax, %rdx
	orq	%rdx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	andq	%r9, %rdx
	andq	%r8, %rdi
	orq	%rax, %rdi
	notq	%rax
	addq	%rdi, %rax
	andq	%r10, %rax
	orq	%rdx, %rax
	movq	%rax, 112(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	geohashNeighbors, .Lfunc_end10-geohashNeighbors
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
