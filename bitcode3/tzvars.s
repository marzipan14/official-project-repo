	.text
	.file	"tzvars.c"
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GMT"
	.size	.L.str, 4

	.type	_tzname,@object         # @_tzname
	.data
	.globl	_tzname
	.p2align	4
_tzname:
	.quad	.L.str
	.quad	.L.str
	.size	_tzname, 16

	.type	_daylight,@object       # @_daylight
	.bss
	.globl	_daylight
	.p2align	2
_daylight:
	.long	0                       # 0x0
	.size	_daylight, 4

	.type	_timezone,@object       # @_timezone
	.globl	_timezone
	.p2align	3
_timezone:
	.quad	0                       # 0x0
	.size	_timezone, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
