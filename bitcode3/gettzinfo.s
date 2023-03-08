	.text
	.file	"gettzinfo.c"
	.globl	__gettzinfo             # -- Begin function __gettzinfo
	.p2align	4, 0x90
	.type	__gettzinfo,@function
__gettzinfo:                            # @__gettzinfo
# %bb.0:
	movl	$tzinfo, %eax
	retq
.Lfunc_end0:
	.size	__gettzinfo, .Lfunc_end0-__gettzinfo
                                        # -- End function
	.type	tzinfo,@object          # @tzinfo
	.data
	.p2align	3
tzinfo:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.byte	74                      # 0x4a
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.byte	74                      # 0x4a
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.size	tzinfo, 88

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
