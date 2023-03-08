	.text
	.file	"month_lengths.c"
	.type	__month_lengths,@object # @__month_lengths
	.section	.rodata,"a",@progbits
	.globl	__month_lengths
	.p2align	4
__month_lengths:
	.long	31                      # 0x1f
	.long	28                      # 0x1c
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	29                      # 0x1d
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.size	__month_lengths, 96

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
