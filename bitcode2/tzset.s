	.text
	.file	"tzset.c"
	.globl	_tzset_unlocked         # -- Begin function _tzset_unlocked
	.p2align	4, 0x90
	.type	_tzset_unlocked,@function
_tzset_unlocked:                        # @_tzset_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	%rax, %rdi
	callq	_tzset_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_tzset_unlocked, .Lfunc_end0-_tzset_unlocked
                                        # -- End function
	.globl	tzset                   # -- Begin function tzset
	.p2align	4, 0x90
	.type	tzset,@function
tzset:                                  # @tzset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__tz_lock
	callq	__getreent
	movq	%rax, %rdi
	callq	_tzset_unlocked_r
	callq	__tz_unlock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tzset, .Lfunc_end1-tzset
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
