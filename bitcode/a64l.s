	.text
	.file	"a64l.c"
	.globl	a64l                    # -- Begin function a64l
	.p2align	4, 0x90
	.type	a64l,@function
a64l:                                   # @a64l
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	leaq	1(%rdi), %rax
	xorl	%ecx, %ecx
	cmpb	$0, (%rdi)
	cmoveq	%rdi, %rax
	setne	%cl
	leaq	1(%rax), %rdx
	cmpb	$0, (%rdi,%rcx)
	cmoveq	%rax, %rdx
	cmpb	$0, (%rdx)
	leaq	1(%rdx), %rax
	cmoveq	%rdx, %rax
	leaq	1(%rax), %rcx
	cmpb	$0, (%rax)
	cmoveq	%rax, %rcx
	leaq	1(%rcx), %rdx
	cmpb	$0, (%rcx)
	cmoveq	%rcx, %rdx
	cmpb	$0, (%rdx)
	leaq	1(%rdx), %r8
	cmoveq	%rdx, %r8
	xorl	%ecx, %ecx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	shlq	$6, %rcx
	movslq	%esi, %rax
	addq	%rax, %rcx
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %r8
	jbe	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movsbl	-1(%r8), %edx
	addq	$-1, %r8
	leal	-47(%rdx), %eax
	movl	$0, %esi
	cmpl	$75, %eax
	ja	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movslq	%edx, %rax
	movl	.Lswitch.table.a64l-188(,%rax,4), %esi
	jmp	.LBB0_6
.LBB0_7:
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%rcx, %rax
	testl	%ecx, %ecx
	cmovnsq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
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
