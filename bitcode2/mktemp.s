	.text
	.file	"mktemp.c"
	.globl	_mkstemp_r              # -- Begin function _mkstemp_r
	.p2align	4, 0x90
	.type	_mkstemp_r,@function
_mkstemp_r:                             # @_mkstemp_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	xorl	%ebx, %ebx
	leaq	-12(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-12(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mkstemp_r, .Lfunc_end0-_mkstemp_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _gettemp
	.type	_gettemp,@function
_gettemp:                               # @_gettemp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%r9d, %r15d
	movq	%r8, %r14
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	callq	_getpid_r
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	je	.LBB1_3
# %bb.1:                                # %.preheader6
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rcx)
	leaq	1(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
.LBB1_3:
	movq	%rcx, %rdx
	subq	%r12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	jb	.LBB1_4
# %bb.5:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movl	%r15d, -52(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	subq	%r14, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r15
	cmpq	%r12, %rdi
	jbe	.LBB1_9
# %bb.6:                                # %.preheader4
	notq	%r14
	addq	%rcx, %r14
	movl	$3435973837, %ecx       # imm = 0xCCCCCCCD
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %r15
	cmpb	$88, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movl	%eax, %edx
	imulq	%rcx, %rdx
	shrq	$35, %rdx
	leal	(%rdx,%rdx), %esi
	leal	(%rsi,%rsi,4), %esi
	subl	%esi, %eax
	orb	$48, %al
	movb	%al, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r15), %r14
	movl	%edx, %eax
	cmpq	%r12, %r15
	ja	.LBB1_7
.LBB1_9:
	movq	%rdi, %rax
	subq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rax
	jg	.LBB1_10
.LBB1_4:
	movl	$22, (%r13)
.LBB1_32:
	xorl	%eax, %eax
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_10:
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jbe	.LBB1_18
# %bb.11:                               # %.preheader2
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	cmpb	$47, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_13
# %bb.17:                               #   in Loop: Header=BB1_12 Depth=1
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	ja	.LBB1_12
.LBB1_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB1_19
# %bb.31:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$88, (%rax)
	jmp	.LBB1_32
.LBB1_19:
	addq	$1, %r15
	orl	$2562, -52(%rbp)        # 4-byte Folded Spill
                                        # imm = 0xA02
.LBB1_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, %r14
	movq	%r13, %rdi
	movq	%r12, %rsi
	testq	%rbx, %rbx
	je	.LBB1_28
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	$384, %ecx              # imm = 0x180
	callq	_open_r
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_22
# %bb.23:                               #   in Loop: Header=BB1_20 Depth=1
	cmpl	$17, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_24
	jmp	.LBB1_32
.LBB1_28:                               #   in Loop: Header=BB1_20 Depth=1
	leaq	-152(%rbp), %rdx
	callq	_stat_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_29
.LBB1_24:                               #   in Loop: Header=BB1_20 Depth=1
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	je	.LBB1_33
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB1_26:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$122, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_30
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=2
	movb	$97, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB1_26
	jmp	.LBB1_33
.LBB1_30:                               #   in Loop: Header=BB1_20 Depth=1
	callq	__locale_ctype_ptr
	movq	%r14, %rdi
	movzbl	(%rbx), %ecx
	leal	1(%rcx), %edx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%dl, %eax
	movl	$97, %ecx
	cmovnel	%ecx, %eax
	movb	%al, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_20
.LBB1_13:
	movq	%rdi, %r14
	movb	$0, (%rbx)
	leaq	-152(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	_stat_r
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_33
# %bb.14:
	testl	$16384, -148(%rbp)      # imm = 0x4000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_16
# %bb.15:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$20, (%rcx)
	jmp	.LBB1_33
.LBB1_16:
	movq	%r14, %rdi
	movb	$47, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_18
.LBB1_22:
	movl	$1, %eax
	jmp	.LBB1_33
.LBB1_29:
	xorl	%eax, %eax
	cmpl	$2, (%r13)
	sete	%al
	jmp	.LBB1_33
.Lfunc_end1:
	.size	_gettemp, .Lfunc_end1-_gettemp
                                        # -- End function
	.globl	_mkdtemp_r              # -- Begin function _mkdtemp_r
	.p2align	4, 0x90
	.type	_mkdtemp_r,@function
_mkdtemp_r:                             # @_mkdtemp_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_gettemp
	testl	%eax, %eax
	cmovneq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_mkdtemp_r, .Lfunc_end2-_mkdtemp_r
                                        # -- End function
	.globl	_mkstemps_r             # -- Begin function _mkstemps_r
	.p2align	4, 0x90
	.type	_mkstemps_r,@function
_mkstemps_r:                            # @_mkstemps_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movslq	%edx, %r8
	leaq	-12(%rbp), %rdx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-12(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_mkstemps_r, .Lfunc_end3-_mkstemps_r
                                        # -- End function
	.globl	_mkostemp_r             # -- Begin function _mkostemp_r
	.p2align	4, 0x90
	.type	_mkostemp_r,@function
_mkostemp_r:                            # @_mkostemp_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r9d
	andl	$-4, %r9d
	xorl	%ebx, %ebx
	leaq	-12(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-12(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_mkostemp_r, .Lfunc_end4-_mkostemp_r
                                        # -- End function
	.globl	_mkostemps_r            # -- Begin function _mkostemps_r
	.p2align	4, 0x90
	.type	_mkostemps_r,@function
_mkostemps_r:                           # @_mkostemps_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r9d
	movslq	%edx, %r8
	andl	$-4, %r9d
	leaq	-12(%rbp), %rdx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-12(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_mkostemps_r, .Lfunc_end5-_mkostemps_r
                                        # -- End function
	.globl	_mktemp_r               # -- Begin function _mktemp_r
	.p2align	4, 0x90
	.type	_mktemp_r,@function
_mktemp_r:                              # @_mktemp_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_gettemp
	testl	%eax, %eax
	cmovneq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_mktemp_r, .Lfunc_end6-_mktemp_r
                                        # -- End function
	.globl	mkstemp                 # -- Begin function mkstemp
	.p2align	4, 0x90
	.type	mkstemp,@function
mkstemp:                                # @mkstemp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	callq	__getreent
	xorl	%ebx, %ebx
	leaq	-20(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-20(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mkstemp, .Lfunc_end7-mkstemp
                                        # -- End function
	.globl	mkdtemp                 # -- Begin function mkdtemp
	.p2align	4, 0x90
	.type	mkdtemp,@function
mkdtemp:                                # @mkdtemp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	__getreent
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_gettemp
	testl	%eax, %eax
	cmovneq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mkdtemp, .Lfunc_end8-mkdtemp
                                        # -- End function
	.globl	mkstemps                # -- Begin function mkstemps
	.p2align	4, 0x90
	.type	mkstemps,@function
mkstemps:                               # @mkstemps
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	__getreent
	movslq	%ebx, %r8
	leaq	-20(%rbp), %rdx
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-20(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	mkstemps, .Lfunc_end9-mkstemps
                                        # -- End function
	.globl	mkostemp                # -- Begin function mkostemp
	.p2align	4, 0x90
	.type	mkostemp,@function
mkostemp:                               # @mkostemp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r15d
	movq	%rdi, %r14
	callq	__getreent
	andl	$-4, %r15d
	xorl	%ebx, %ebx
	leaq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r15d, %r9d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-28(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mkostemp, .Lfunc_end10-mkostemp
                                        # -- End function
	.globl	mkostemps               # -- Begin function mkostemps
	.p2align	4, 0x90
	.type	mkostemps,@function
mkostemps:                              # @mkostemps
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%edx, %r12d
	movl	%esi, %r14d
	movq	%rdi, %r15
	callq	__getreent
	movslq	%r14d, %r8
	andl	$-4, %r12d
	leaq	-36(%rbp), %rdx
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	movl	%r12d, %r9d
	callq	_gettemp
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	orl	-36(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mkostemps, .Lfunc_end11-mkostemps
                                        # -- End function
	.globl	mktemp                  # -- Begin function mktemp
	.p2align	4, 0x90
	.type	mktemp,@function
mktemp:                                 # @mktemp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	__getreent
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_gettemp
	testl	%eax, %eax
	cmovneq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	mktemp, .Lfunc_end12-mktemp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
