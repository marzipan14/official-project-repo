	.text
	.file	"environ.c"
	.type	initial_env,@object     # @initial_env
	.local	initial_env
	.comm	initial_env,8,8
	.type	environ,@object         # @environ
	.data
	.globl	environ
	.p2align	3
environ:
	.quad	initial_env
	.size	environ, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
