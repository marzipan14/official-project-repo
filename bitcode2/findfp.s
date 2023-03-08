	.text
	.file	"findfp.c"
	.globl	__sfmoreglue            # -- Begin function __sfmoreglue
	.p2align	4, 0x90
	.type	__sfmoreglue,@function
__sfmoreglue:                           # @__sfmoreglue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	leal	-1(%r14), %eax
	cltq
	imulq	$176, %rax, %rdi
	addq	$200, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rax, %rbx
	movq	$0, (%rax)
	movl	%r14d, 8(%rax)
	movq	%rax, %rdi
	addq	$24, %rdi
	movq	%rdi, 16(%rax)
	movslq	%r14d, %rax
	imulq	$176, %rax, %rdx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_3
.LBB0_1:
	xorl	%ebx, %ebx
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__sfmoreglue, .Lfunc_end0-__sfmoreglue
                                        # -- End function
	.globl	__sfp                   # -- Begin function __sfp
	.p2align	4, 0x90
	.type	__sfp,@function
__sfp:                                  # @__sfp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	leaq	-28(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movq	_global_impure_ptr(%rip), %rbx
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
# %bb.1:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	addq	$1312, %rbx             # imm = 0x520
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rbx
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_7
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	addl	$1, %eax
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_11
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	addq	$176, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	cmpl	$1, %eax
	jg	.LBB1_5
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	movq	(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB1_3
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$728, %edi              # imm = 0x2D8
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_9
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, %rbx
	movq	$0, (%rax)
	movl	$4, 8(%rax)
	movq	%rax, %rdi
	addq	$24, %rdi
	movq	%rdi, 16(%rax)
	movl	$704, %edx              # imm = 0x2C0
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.LBB1_11:
	movl	$-65535, 16(%rbx)       # imm = 0xFFFF0001
	movl	$0, 172(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	leaq	164(%rbx), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, 88(%rbx)
	movl	$0, 96(%rbx)
	movq	$0, 120(%rbx)
	movl	$0, 128(%rbx)
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB1_12
.Lfunc_end1:
	.size	__sfp, .Lfunc_end1-__sfp
                                        # -- End function
	.globl	__sfp_lock_acquire      # -- Begin function __sfp_lock_acquire
	.p2align	4, 0x90
	.type	__sfp_lock_acquire,@function
__sfp_lock_acquire:                     # @__sfp_lock_acquire
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	__sfp_lock_acquire, .Lfunc_end2-__sfp_lock_acquire
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __sinit
.LCPI3_0:
	.zero	16
	.text
	.globl	__sinit
	.p2align	4, 0x90
	.type	__sinit,@function
__sinit:                                # @__sinit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_2
# %bb.1:
	movq	%rdi, %r14
	movq	$_cleanup_r, 88(%rdi)
	movq	$0, 1312(%rdi)
	movl	$3, 1320(%rdi)
	leaq	1336(%rdi), %rax
	movq	%rax, 1328(%rdi)
	movq	8(%rdi), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$4, 16(%rbx)
	movl	$0, 172(%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	leaq	164(%rbx), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, 48(%rbx)
	movl	$__swrite, %eax
	movq	%rax, %xmm0
	movl	$__sread, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -32(%rbp)        # 16-byte Spill
	movdqu	%xmm1, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rbx
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx)
	movl	$65545, 16(%rbx)        # imm = 0x10009
	movl	$0, 172(%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	leaq	164(%rbx), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, 48(%rbx)
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	movups	%xmm0, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$131090, 16(%rbx)       # imm = 0x20012
	movl	$0, 172(%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	leaq	164(%rbx), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, 48(%rbx)
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	movups	%xmm0, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, 80(%r14)
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	__sinit, .Lfunc_end3-__sinit
                                        # -- End function
	.globl	__sfp_lock_release      # -- Begin function __sfp_lock_release
	.p2align	4, 0x90
	.type	__sfp_lock_release,@function
__sfp_lock_release:                     # @__sfp_lock_release
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	__sfp_lock_release, .Lfunc_end4-__sfp_lock_release
                                        # -- End function
	.globl	_cleanup_r              # -- Begin function _cleanup_r
	.p2align	4, 0x90
	.type	_cleanup_r,@function
_cleanup_r:                             # @_cleanup_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$_fclose_r, %esi
	callq	_fwalk_reent
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_cleanup_r, .Lfunc_end5-_cleanup_r
                                        # -- End function
	.globl	_cleanup                # -- Begin function _cleanup
	.p2align	4, 0x90
	.type	_cleanup,@function
_cleanup:                               # @_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_global_impure_ptr(%rip), %rdi
	movl	$_fclose_r, %esi
	callq	_fwalk_reent
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_cleanup, .Lfunc_end6-_cleanup
                                        # -- End function
	.globl	__sinit_lock_acquire    # -- Begin function __sinit_lock_acquire
	.p2align	4, 0x90
	.type	__sinit_lock_acquire,@function
__sinit_lock_acquire:                   # @__sinit_lock_acquire
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	__sinit_lock_acquire, .Lfunc_end7-__sinit_lock_acquire
                                        # -- End function
	.globl	__sinit_lock_release    # -- Begin function __sinit_lock_release
	.p2align	4, 0x90
	.type	__sinit_lock_release,@function
__sinit_lock_release:                   # @__sinit_lock_release
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end8:
	.size	__sinit_lock_release, .Lfunc_end8-__sinit_lock_release
                                        # -- End function
	.globl	__fp_lock_all           # -- Begin function __fp_lock_all
	.p2align	4, 0x90
	.type	__fp_lock_all,@function
__fp_lock_all:                          # @__fp_lock_all
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	callq	__getreent
	movl	$__fp_lock, %esi
	movq	%rax, %rdi
	callq	_fwalk
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	__fp_lock_all, .Lfunc_end9-__fp_lock_all
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __fp_lock
	.type	__fp_lock,@function
__fp_lock:                              # @__fp_lock
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	__fp_lock, .Lfunc_end10-__fp_lock
                                        # -- End function
	.globl	__fp_unlock_all         # -- Begin function __fp_unlock_all
	.p2align	4, 0x90
	.type	__fp_unlock_all,@function
__fp_unlock_all:                        # @__fp_unlock_all
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movl	$__fp_unlock, %esi
	movq	%rax, %rdi
	callq	_fwalk
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	__fp_unlock_all, .Lfunc_end11-__fp_unlock_all
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __fp_unlock
	.type	__fp_unlock,@function
__fp_unlock:                            # @__fp_unlock
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	__fp_unlock, .Lfunc_end12-__fp_unlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
