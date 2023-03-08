	.text
	.file	"e_rem_pio2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_rem_pio2
.LCPI0_0:
	.quad	4715268809856909312     # double 16777216
.LCPI0_2:
	.quad	4603909380684499075     # double 0.63661977236758138
.LCPI0_3:
	.quad	4602678819172646912     # double 0.5
.LCPI0_4:
	.quad	-4613618979930374144    # double -1.5707963267341256
.LCPI0_5:
	.quad	4454258360616903473     # double 6.0771005065061922E-11
.LCPI0_6:
	.quad	4454258360616747008     # double 6.077100506303966E-11
.LCPI0_7:
	.quad	4297306550709743731     # double 2.0222662487959506E-21
.LCPI0_8:
	.quad	4297306550709518336     # double 2.0222662487111665E-21
.LCPI0_9:
	.quad	4142048980368378305     # double 8.4784276603688995E-32
.LCPI0_10:
	.quad	4609753056924401664     # double 1.5707963267341256
.LCPI0_11:
	.quad	-4769113676237872335    # double -6.0771005065061922E-11
.LCPI0_12:
	.quad	-4769113676238028800    # double -6.077100506303966E-11
.LCPI0_13:
	.quad	-4926065486145032077    # double -2.0222662487959506E-21
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_rem_pio2
	.p2align	4, 0x90
	.type	__ieee754_rem_pio2,@function
__ieee754_rem_pio2:                     # @__ieee754_rem_pio2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	%xmm0, %rax
	movq	%rax, %r15
	shrq	$32, %r15
	movl	%r15d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1072243195, %ebx       # imm = 0x3FE921FB
	ja	.LBB0_2
# %bb.1:
	movsd	%xmm0, (%r14)
	movq	$0, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_32
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073928571, %ebx       # imm = 0x4002D97B
	ja	.LBB0_12
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_8
# %bb.4:
	addsd	.LCPI0_4(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073291771, %ebx       # imm = 0x3FF921FB
	jne	.LBB0_5
# %bb.6:
	addsd	.LCPI0_12(%rip), %xmm0
	movsd	.LCPI0_13(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB0_7
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1094263291, %ebx       # imm = 0x413921FB
	ja	.LBB0_22
# %bb.13:
	callq	fabs
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_3(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sd	%eax, %xmm2
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %eax
	jg	.LBB0_16
# %bb.14:
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	npio2_hw-4(,%rcx,4), %ebx
	jne	.LBB0_15
.LBB0_16:
	shrl	$20, %ebx
	movapd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movsd	%xmm3, (%r14)
	movq	%xmm3, %rcx
	shrq	$52, %rcx
	andl	$2047, %ecx             # imm = 0x7FF
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %edx
	jl	.LBB0_20
# %bb.17:
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	movapd	%xmm1, %xmm4
	subsd	%xmm3, %xmm4
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	subsd	%xmm4, %xmm1
	subsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm4, %xmm3
	subsd	%xmm0, %xmm3
	movsd	%xmm3, (%r14)
	movq	%xmm3, %rcx
	shrq	$52, %rcx
	andl	$2047, %ecx             # imm = 0x7FF
	subl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$50, %ebx
	jl	.LBB0_18
# %bb.19:
	movsd	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movapd	%xmm4, %xmm1
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_9(%rip), %xmm2
	subsd	%xmm1, %xmm4
	subsd	%xmm0, %xmm4
	subsd	%xmm4, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm2, %xmm0
	jmp	.LBB0_20
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_24
# %bb.23:
	subsd	%xmm0, %xmm0
	movsd	%xmm0, 8(%r14)
	movsd	%xmm0, (%r14)
	xorl	%eax, %eax
	jmp	.LBB0_32
.LBB0_8:
	addsd	.LCPI0_10(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073291771, %ebx       # imm = 0x3FF921FB
	jne	.LBB0_9
# %bb.10:
	addsd	.LCPI0_6(%rip), %xmm0
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_11
.LBB0_5:
	movsd	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB0_7:
	movapd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, (%r14)
	subsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm1, 8(%r14)
	movl	$1, %eax
	jmp	.LBB0_32
.LBB0_24:
	movl	%eax, %eax
	movl	%ebx, %edx
	shrl	$20, %edx
	addl	$-1046, %edx            # imm = 0xFBEA
	movl	%edx, %ecx
	shll	$20, %ecx
	subl	%ecx, %ebx
	shlq	$32, %rbx
	orq	%rax, %rbx
	movq	%rbx, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm1, %eax
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	subsd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm1, %eax
	cvtsi2sd	%eax, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm2, -40(%rbp)
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm1, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_25
	jp	.LBB0_25
# %bb.26:                               # %.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-48(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_28
	jnp	.LBB0_27
.LBB0_28:
	addl	$2, %ecx
	jmp	.LBB0_29
.LBB0_9:
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB0_11:
	movapd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, (%r14)
	subsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm1, 8(%r14)
	movl	$-1, %eax
	jmp	.LBB0_32
.LBB0_15:
	movapd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movsd	%xmm3, (%r14)
	jmp	.LBB0_20
.LBB0_18:
	movapd	%xmm4, %xmm1
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	subsd	%xmm3, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jns	.LBB0_32
# %bb.21:
	unpcklpd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	xorpd	.LCPI0_1(%rip), %xmm3
	movupd	%xmm3, (%r14)
	jmp	.LBB0_31
.LBB0_25:
	movl	$3, %ecx
.LBB0_29:
	leaq	-48(%rbp), %rdi
	movl	$two_over_pi, %r9d
	movq	%r14, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$2, %r8d
	callq	__kernel_rem_pio2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jns	.LBB0_32
# %bb.30:
	movupd	(%r14), %xmm0
	xorpd	.LCPI0_1(%rip), %xmm0
	movupd	%xmm0, (%r14)
.LBB0_31:
	negl	%eax
.LBB0_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_rem_pio2, .Lfunc_end0-__ieee754_rem_pio2
                                        # -- End function
	.type	npio2_hw,@object        # @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	4
npio2_hw:
	.long	1073291771              # 0x3ff921fb
	.long	1074340347              # 0x400921fb
	.long	1074977148              # 0x4012d97c
	.long	1075388923              # 0x401921fb
	.long	1075800698              # 0x401f6a7a
	.long	1076025724              # 0x4022d97c
	.long	1076231611              # 0x4025fdbb
	.long	1076437499              # 0x402921fb
	.long	1076643386              # 0x402c463a
	.long	1076849274              # 0x402f6a7a
	.long	1076971356              # 0x4031475c
	.long	1077074300              # 0x4032d97c
	.long	1077177244              # 0x40346b9c
	.long	1077280187              # 0x4035fdbb
	.long	1077383131              # 0x40378fdb
	.long	1077486075              # 0x403921fb
	.long	1077589019              # 0x403ab41b
	.long	1077691962              # 0x403c463a
	.long	1077794906              # 0x403dd85a
	.long	1077897850              # 0x403f6a7a
	.long	1077968460              # 0x40407e4c
	.long	1078019932              # 0x4041475c
	.long	1078071404              # 0x4042106c
	.long	1078122876              # 0x4042d97c
	.long	1078174348              # 0x4043a28c
	.long	1078225820              # 0x40446b9c
	.long	1078277292              # 0x404534ac
	.long	1078328763              # 0x4045fdbb
	.long	1078380235              # 0x4046c6cb
	.long	1078431707              # 0x40478fdb
	.long	1078483179              # 0x404858eb
	.long	1078534651              # 0x404921fb
	.size	npio2_hw, 128

	.type	two_over_pi,@object     # @two_over_pi
	.p2align	4
two_over_pi:
	.long	10680707                # 0xa2f983
	.long	7228996                 # 0x6e4e44
	.long	1387004                 # 0x1529fc
	.long	2578385                 # 0x2757d1
	.long	16069853                # 0xf534dd
	.long	12639074                # 0xc0db62
	.long	9804092                 # 0x95993c
	.long	4427841                 # 0x439041
	.long	16666979                # 0xfe5163
	.long	11263675                # 0xabdebb
	.long	12935607                # 0xc561b7
	.long	2387514                 # 0x246e3a
	.long	4345298                 # 0x424dd2
	.long	14681673                # 0xe00649
	.long	3074569                 # 0x2eea09
	.long	13734428                # 0xd1921c
	.long	16653803                # 0xfe1deb
	.long	1880361                 # 0x1cb129
	.long	10960616                # 0xa73ee8
	.long	8533493                 # 0x8235f5
	.long	3062596                 # 0x2ebb44
	.long	8710556                 # 0x84e99c
	.long	7349940                 # 0x7026b4
	.long	6258241                 # 0x5f7e41
	.long	3772886                 # 0x3991d6
	.long	3769171                 # 0x398353
	.long	3798172                 # 0x39f49c
	.long	8675211                 # 0x845f8b
	.long	12450088                # 0xbdf928
	.long	3874808                 # 0x3b1ff8
	.long	9961438                 # 0x97ffde
	.long	366607                  # 0x5980f
	.long	15675153                # 0xef2f11
	.long	9132554                 # 0x8b5a0a
	.long	7151469                 # 0x6d1f6d
	.long	3571407                 # 0x367ecf
	.long	2607881                 # 0x27cb09
	.long	12013382                # 0xb74f46
	.long	4155038                 # 0x3f669e
	.long	6285869                 # 0x5fea2d
	.long	7677882                 # 0x7527ba
	.long	13102053                # 0xc7ebe5
	.long	15825725                # 0xf17b3d
	.long	473591                  # 0x739f7
	.long	9065106                 # 0x8a5292
	.long	15363067                # 0xea6bfb
	.long	6271263                 # 0x5fb11f
	.long	9264392                 # 0x8d5d08
	.long	5636912                 # 0x560330
	.long	4652155                 # 0x46fc7b
	.long	7056368                 # 0x6babf0
	.long	13614112                # 0xcfbc20
	.long	10155062                # 0x9af436
	.long	1944035                 # 0x1da9e3
	.long	9527646                 # 0x91615e
	.long	15080200                # 0xe61b08
	.long	6658437                 # 0x659985
	.long	6231200                 # 0x5f14a0
	.long	6832269                 # 0x68408d
	.long	16767104                # 0xffd880
	.long	5075751                 # 0x4d7327
	.long	3212806                 # 0x310606
	.long	1398474                 # 0x1556ca
	.long	7579849                 # 0x73a8c9
	.long	6349435                 # 0x60e27b
	.long	12618859                # 0xc08c6b
	.size	two_over_pi, 264

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
