	.text
	.file	"ef_rem_pio2.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_rem_pio2f
.LCPI0_0:
	.long	1132462080              # float 256
.LCPI0_2:
	.long	1059256708              # float 0.636619806
.LCPI0_3:
	.long	1056964608              # float 0.5
.LCPI0_4:
	.long	3217624960              # float -1.57078552
.LCPI0_5:
	.long	926237763               # float 1.08043341E-5
.LCPI0_6:
	.long	926237696               # float 1.08042732E-5
.LCPI0_7:
	.long	780509960               # float 6.07709993E-11
.LCPI0_8:
	.long	780509952               # float 6.07709438E-11
.LCPI0_9:
	.long	613232946               # float 6.12323426E-17
.LCPI0_10:
	.long	1070141312              # float 1.57078552
.LCPI0_11:
	.long	3073721411              # float -1.08043341E-5
.LCPI0_12:
	.long	3073721344              # float -1.08042732E-5
.LCPI0_13:
	.long	2927993608              # float -6.07709993E-11
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_rem_pio2f
	.p2align	4, 0x90
	.type	__ieee754_rem_pio2f,@function
__ieee754_rem_pio2f:                    # @__ieee754_rem_pio2f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movd	%xmm0, %r15d
	movl	%r15d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$1061752792, %ebx       # imm = 0x3F490FD8
	ja	.LBB0_2
# %bb.1:
	movss	%xmm0, (%r14)
	movl	$0, 4(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_29
.LBB0_2:
	cmpl	$1075235811, %ebx       # imm = 0x4016CBE3
	ja	.LBB0_12
# %bb.3:
	testl	%r15d, %r15d
	jle	.LBB0_8
# %bb.4:
	addss	.LCPI0_4(%rip), %xmm0
	andl	$2147483632, %r15d      # imm = 0x7FFFFFF0
	cmpl	$1070141392, %r15d      # imm = 0x3FC90FD0
	jne	.LBB0_5
# %bb.7:
	addss	.LCPI0_12(%rip), %xmm0
	movss	.LCPI0_13(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_6
.LBB0_12:
	cmpl	$1128861568, %ebx       # imm = 0x43490F80
	ja	.LBB0_22
# %bb.13:
	callq	fabsf
	movss	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_3(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm2
	movss	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cmpl	$31, %eax
	jg	.LBB0_16
# %bb.14:
	movl	%r15d, %ecx
	andl	$2147483392, %ecx       # imm = 0x7FFFFF00
	movslq	%eax, %rdx
	cmpl	npio2_hw-4(,%rdx,4), %ecx
	jne	.LBB0_15
.LBB0_16:
	shrl	$23, %ebx
	movaps	%xmm1, %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, (%r14)
	movd	%xmm3, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	movl	%ebx, %edx
	subl	%ecx, %edx
	cmpl	$9, %edx
	jl	.LBB0_20
# %bb.17:
	movss	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	subss	%xmm3, %xmm4
	movss	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	subss	%xmm4, %xmm1
	subss	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm4, %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, (%r14)
	movd	%xmm3, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	subl	%ecx, %ebx
	cmpl	$26, %ebx
	jl	.LBB0_18
# %bb.19:
	movss	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movaps	%xmm4, %xmm1
	subss	%xmm0, %xmm1
	mulss	.LCPI0_9(%rip), %xmm2
	subss	%xmm1, %xmm4
	subss	%xmm0, %xmm4
	subss	%xmm4, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	movss	%xmm3, (%r14)
	movaps	%xmm2, %xmm0
	jmp	.LBB0_20
.LBB0_22:
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB0_23
# %bb.24:
	movl	%ebx, %edx
	shrl	$23, %edx
	addl	$-134, %edx
	movl	%edx, %eax
	shll	$23, %eax
	subl	%eax, %ebx
	movd	%ebx, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm1
	subss	%xmm1, %xmm0
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm3
	movss	%xmm1, -36(%rbp)
	movss	%xmm3, -32(%rbp)
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$2, %ecx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movss	-36(%rbp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	addq	$-1, %rcx
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_26
	jnp	.LBB0_25
.LBB0_26:
	addl	$2, %ecx
	leaq	-36(%rbp), %rdi
	movl	$two_over_pi, %r9d
	movq	%r14, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$2, %r8d
	callq	__kernel_rem_pio2f
	testl	%r15d, %r15d
	jns	.LBB0_29
# %bb.27:
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%r14), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movaps	.LCPI0_1(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm2, %xmm0
	movss	%xmm0, (%r14)
	xorps	%xmm2, %xmm1
	jmp	.LBB0_28
.LBB0_8:
	addss	.LCPI0_10(%rip), %xmm0
	andl	$2147483632, %r15d      # imm = 0x7FFFFFF0
	cmpl	$1070141392, %r15d      # imm = 0x3FC90FD0
	jne	.LBB0_9
# %bb.11:
	addss	.LCPI0_6(%rip), %xmm0
	movss	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_10
.LBB0_5:
	movss	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB0_6:
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r14)
	subss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 4(%r14)
	movl	$1, %eax
	jmp	.LBB0_29
.LBB0_23:
	subss	%xmm0, %xmm0
	movss	%xmm0, 4(%r14)
	movss	%xmm0, (%r14)
	xorl	%eax, %eax
	jmp	.LBB0_29
.LBB0_9:
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB0_10:
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%r14)
	subss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 4(%r14)
	movl	$-1, %eax
	jmp	.LBB0_29
.LBB0_15:
	movaps	%xmm1, %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, (%r14)
	jmp	.LBB0_20
.LBB0_18:
	movaps	%xmm4, %xmm1
.LBB0_20:
	subss	%xmm3, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, 4(%r14)
	testl	%r15d, %r15d
	jns	.LBB0_29
# %bb.21:
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm0, %xmm3
	movss	%xmm3, (%r14)
	xorps	%xmm0, %xmm1
.LBB0_28:
	movss	%xmm1, 4(%r14)
	negl	%eax
.LBB0_29:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_rem_pio2f, .Lfunc_end0-__ieee754_rem_pio2f
                                        # -- End function
	.type	npio2_hw,@object        # @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	4
npio2_hw:
	.long	1070141184              # 0x3fc90f00
	.long	1078529792              # 0x40490f00
	.long	1083624192              # 0x4096cb00
	.long	1086918400              # 0x40c90f00
	.long	1090212608              # 0x40fb5300
	.long	1092012800              # 0x4116cb00
	.long	1093659904              # 0x412fed00
	.long	1095307008              # 0x41490f00
	.long	1096954112              # 0x41623100
	.long	1098601216              # 0x417b5300
	.long	1099577856              # 0x418a3a00
	.long	1100401408              # 0x4196cb00
	.long	1101224960              # 0x41a35c00
	.long	1102048512              # 0x41afed00
	.long	1102872064              # 0x41bc7e00
	.long	1103695616              # 0x41c90f00
	.long	1104519168              # 0x41d5a000
	.long	1105342720              # 0x41e23100
	.long	1106166272              # 0x41eec200
	.long	1106989824              # 0x41fb5300
	.long	1107554816              # 0x4203f200
	.long	1107966464              # 0x420a3a00
	.long	1108378368              # 0x42108300
	.long	1108790016              # 0x4216cb00
	.long	1109201920              # 0x421d1400
	.long	1109613568              # 0x42235c00
	.long	1110025472              # 0x4229a500
	.long	1110437120              # 0x422fed00
	.long	1110849024              # 0x42363600
	.long	1111260672              # 0x423c7e00
	.long	1111672576              # 0x4242c700
	.long	1112084224              # 0x42490f00
	.size	npio2_hw, 128

	.type	two_over_pi,@object     # @two_over_pi
	.p2align	4
two_over_pi:
	.long	162                     # 0xa2
	.long	249                     # 0xf9
	.long	131                     # 0x83
	.long	110                     # 0x6e
	.long	78                      # 0x4e
	.long	68                      # 0x44
	.long	21                      # 0x15
	.long	41                      # 0x29
	.long	252                     # 0xfc
	.long	39                      # 0x27
	.long	87                      # 0x57
	.long	209                     # 0xd1
	.long	245                     # 0xf5
	.long	52                      # 0x34
	.long	221                     # 0xdd
	.long	192                     # 0xc0
	.long	219                     # 0xdb
	.long	98                      # 0x62
	.long	149                     # 0x95
	.long	153                     # 0x99
	.long	60                      # 0x3c
	.long	67                      # 0x43
	.long	144                     # 0x90
	.long	65                      # 0x41
	.long	254                     # 0xfe
	.long	81                      # 0x51
	.long	99                      # 0x63
	.long	171                     # 0xab
	.long	222                     # 0xde
	.long	187                     # 0xbb
	.long	197                     # 0xc5
	.long	97                      # 0x61
	.long	183                     # 0xb7
	.long	36                      # 0x24
	.long	110                     # 0x6e
	.long	58                      # 0x3a
	.long	66                      # 0x42
	.long	77                      # 0x4d
	.long	210                     # 0xd2
	.long	224                     # 0xe0
	.long	6                       # 0x6
	.long	73                      # 0x49
	.long	46                      # 0x2e
	.long	234                     # 0xea
	.long	9                       # 0x9
	.long	209                     # 0xd1
	.long	146                     # 0x92
	.long	28                      # 0x1c
	.long	254                     # 0xfe
	.long	29                      # 0x1d
	.long	235                     # 0xeb
	.long	28                      # 0x1c
	.long	177                     # 0xb1
	.long	41                      # 0x29
	.long	167                     # 0xa7
	.long	62                      # 0x3e
	.long	232                     # 0xe8
	.long	130                     # 0x82
	.long	53                      # 0x35
	.long	245                     # 0xf5
	.long	46                      # 0x2e
	.long	187                     # 0xbb
	.long	68                      # 0x44
	.long	132                     # 0x84
	.long	233                     # 0xe9
	.long	156                     # 0x9c
	.long	112                     # 0x70
	.long	38                      # 0x26
	.long	180                     # 0xb4
	.long	95                      # 0x5f
	.long	126                     # 0x7e
	.long	65                      # 0x41
	.long	57                      # 0x39
	.long	145                     # 0x91
	.long	214                     # 0xd6
	.long	57                      # 0x39
	.long	131                     # 0x83
	.long	83                      # 0x53
	.long	57                      # 0x39
	.long	244                     # 0xf4
	.long	156                     # 0x9c
	.long	132                     # 0x84
	.long	95                      # 0x5f
	.long	139                     # 0x8b
	.long	189                     # 0xbd
	.long	249                     # 0xf9
	.long	40                      # 0x28
	.long	59                      # 0x3b
	.long	31                      # 0x1f
	.long	248                     # 0xf8
	.long	151                     # 0x97
	.long	255                     # 0xff
	.long	222                     # 0xde
	.long	5                       # 0x5
	.long	152                     # 0x98
	.long	15                      # 0xf
	.long	239                     # 0xef
	.long	47                      # 0x2f
	.long	17                      # 0x11
	.long	139                     # 0x8b
	.long	90                      # 0x5a
	.long	10                      # 0xa
	.long	109                     # 0x6d
	.long	31                      # 0x1f
	.long	109                     # 0x6d
	.long	54                      # 0x36
	.long	126                     # 0x7e
	.long	207                     # 0xcf
	.long	39                      # 0x27
	.long	203                     # 0xcb
	.long	9                       # 0x9
	.long	183                     # 0xb7
	.long	79                      # 0x4f
	.long	70                      # 0x46
	.long	63                      # 0x3f
	.long	102                     # 0x66
	.long	158                     # 0x9e
	.long	95                      # 0x5f
	.long	234                     # 0xea
	.long	45                      # 0x2d
	.long	117                     # 0x75
	.long	39                      # 0x27
	.long	186                     # 0xba
	.long	199                     # 0xc7
	.long	235                     # 0xeb
	.long	229                     # 0xe5
	.long	241                     # 0xf1
	.long	123                     # 0x7b
	.long	61                      # 0x3d
	.long	7                       # 0x7
	.long	57                      # 0x39
	.long	247                     # 0xf7
	.long	138                     # 0x8a
	.long	82                      # 0x52
	.long	146                     # 0x92
	.long	234                     # 0xea
	.long	107                     # 0x6b
	.long	251                     # 0xfb
	.long	95                      # 0x5f
	.long	177                     # 0xb1
	.long	31                      # 0x1f
	.long	141                     # 0x8d
	.long	93                      # 0x5d
	.long	8                       # 0x8
	.long	86                      # 0x56
	.long	3                       # 0x3
	.long	48                      # 0x30
	.long	70                      # 0x46
	.long	252                     # 0xfc
	.long	123                     # 0x7b
	.long	107                     # 0x6b
	.long	171                     # 0xab
	.long	240                     # 0xf0
	.long	207                     # 0xcf
	.long	188                     # 0xbc
	.long	32                      # 0x20
	.long	154                     # 0x9a
	.long	244                     # 0xf4
	.long	54                      # 0x36
	.long	29                      # 0x1d
	.long	169                     # 0xa9
	.long	227                     # 0xe3
	.long	145                     # 0x91
	.long	97                      # 0x61
	.long	94                      # 0x5e
	.long	230                     # 0xe6
	.long	27                      # 0x1b
	.long	8                       # 0x8
	.long	101                     # 0x65
	.long	153                     # 0x99
	.long	133                     # 0x85
	.long	95                      # 0x5f
	.long	20                      # 0x14
	.long	160                     # 0xa0
	.long	104                     # 0x68
	.long	64                      # 0x40
	.long	141                     # 0x8d
	.long	255                     # 0xff
	.long	216                     # 0xd8
	.long	128                     # 0x80
	.long	77                      # 0x4d
	.long	115                     # 0x73
	.long	39                      # 0x27
	.long	49                      # 0x31
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	21                      # 0x15
	.long	86                      # 0x56
	.long	202                     # 0xca
	.long	115                     # 0x73
	.long	168                     # 0xa8
	.long	201                     # 0xc9
	.long	96                      # 0x60
	.long	226                     # 0xe2
	.long	123                     # 0x7b
	.long	192                     # 0xc0
	.long	140                     # 0x8c
	.long	107                     # 0x6b
	.size	two_over_pi, 792

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
