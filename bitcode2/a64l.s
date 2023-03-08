	.text
	.file	"a64l.c"
	.globl	a64l                    # -- Begin function a64l
	.p2align	4, 0x90
	.type	a64l,@function
a64l:                                   # @a64l
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 2(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 3(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_17
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_22
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 5(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_24
# %bb.25:
	leaq	6(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_26
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r8
	jmp	.LBB0_4
.LBB0_6:
	leaq	1(%rdi), %r8
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r8
	jbe	.LBB0_20
.LBB0_27:
	xorl	%ecx, %ecx
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	shlq	$6, %rax
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r8
	jbe	.LBB0_10
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movsbl	-1(%r8), %edx
	addq	$-1, %r8
	movl	$42, __A_VARIABLE(%rip)
	leal	-47(%rdx), %eax
	movl	$0, %esi
	cmpl	$75, %eax
	ja	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movslq	%edx, %rax
	movl	.Lswitch.table.a64l-188(,%rax,4), %esi
	jmp	.LBB0_9
.LBB0_10:
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%rcx, %rax
	testl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmovnsq	%rcx, %rax
	jmp	.LBB0_11
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_14:
	leaq	2(%rdi), %r8
	jmp	.LBB0_15
.LBB0_17:
	leaq	3(%rdi), %r8
	jmp	.LBB0_18
.LBB0_22:
	leaq	4(%rdi), %r8
	jmp	.LBB0_19
.LBB0_24:
	leaq	5(%rdi), %r8
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_27
.Lfunc_end0:
	.size	a64l, .Lfunc_end0-a64l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.a64l,@object # @switch.table.a64l
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.a64l:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	28                      # 0x1c
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	32                      # 0x20
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
	.long	36                      # 0x24
	.long	37                      # 0x25
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	38                      # 0x26
	.long	39                      # 0x27
	.long	40                      # 0x28
	.long	41                      # 0x29
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	44                      # 0x2c
	.long	45                      # 0x2d
	.long	46                      # 0x2e
	.long	47                      # 0x2f
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	51                      # 0x33
	.long	52                      # 0x34
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
	.long	56                      # 0x38
	.long	57                      # 0x39
	.long	58                      # 0x3a
	.long	59                      # 0x3b
	.long	60                      # 0x3c
	.long	61                      # 0x3d
	.long	62                      # 0x3e
	.long	63                      # 0x3f
	.size	.Lswitch.table.a64l, 304

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
