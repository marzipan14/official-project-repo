	.text
	.file	"tzset_r.c"
	.globl	_tzset_unlocked_r       # -- Begin function _tzset_unlocked_r
	.p2align	4, 0x90
	.type	_tzset_unlocked_r,@function
_tzset_unlocked_r:                      # @_tzset_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	callq	__gettzinfo
	movq	%rax, %r13
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	_getenv_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rax, %rbx
	movq	prev_tzenv(%rip), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.4:
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_45
# %bb.5:
	movq	prev_tzenv(%rip), %rdi
	jmp	.LBB0_6
.LBB0_1:
	movq	$0, _timezone(%rip)
	movl	$0, _daylight(%rip)
	movl	$.L.str.1, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, _tzname(%rip)
	movq	prev_tzenv(%rip), %rdi
	callq	free
	movq	$0, prev_tzenv(%rip)
	jmp	.LBB0_45
.LBB0_3:
	xorl	%edi, %edi
.LBB0_6:
	callq	free
	movq	%rbx, %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, prev_tzenv(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.7:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	cmpb	$58, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
# %bb.9:
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	leaq	-52(%rbp), %r15
	movl	$.L.str.2, %esi
	movl	$__tzname_std, %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	siscanf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_45
# %bb.11:
	movslq	-52(%rbp), %rax
	leaq	(%rbx,%rax), %r12
	movb	(%rbx,%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
	cmpb	$45, %al
	je	.LBB0_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	cmpb	$43, %al
	jne	.LBB0_14
.LBB0_13:
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movw	$0, -44(%rbp)
	movw	$0, -42(%rbp)
	leaq	-42(%rbp), %rbx
	leaq	-46(%rbp), %rdx
	leaq	-44(%rbp), %r8
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	movq	%r15, %rcx
	movq	%r15, %r9
	xorl	%eax, %eax
	pushq	%r15
	pushq	%rbx
	callq	siscanf
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_45
# %bb.15:
	movzwl	-42(%rbp), %eax
	movzwl	-44(%rbp), %ecx
	imulq	$60, %rcx, %rcx
	addq	%rax, %rcx
	movzwl	-46(%rbp), %eax
	imulq	$3600, %rax, %rax       # imm = 0xE10
	addq	%rcx, %rax
	imulq	%r14, %rax
	movq	%rax, 40(%r13)
	movq	$__tzname_std, _tzname(%rip)
	movslq	-52(%rbp), %rax
	addq	%rax, %r12
	leaq	-52(%rbp), %rcx
	movl	$.L.str.2, %esi
	movl	$__tzname_dst, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	siscanf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_16
# %bb.17:
	movq	$__tzname_dst, _tzname+8(%rip)
	movslq	-52(%rbp), %rax
	leaq	(%r12,%rax), %r15
	movb	(%r12,%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
	cmpb	$45, %al
	je	.LBB0_19
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	cmpb	$43, %al
	jne	.LBB0_20
.LBB0_19:
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movw	$0, -46(%rbp)
	movw	$0, -44(%rbp)
	movw	$0, -42(%rbp)
	movl	$0, -52(%rbp)
	leaq	-46(%rbp), %rdx
	leaq	-44(%rbp), %r8
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	leaq	-52(%rbp), %rcx
	movq	%rcx, %r9
	xorl	%eax, %eax
	pushq	%rcx
	leaq	-42(%rbp), %rbx
	pushq	%rbx
	callq	siscanf
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_21
# %bb.22:
	movzwl	-42(%rbp), %eax
	movzwl	-44(%rbp), %ecx
	imulq	$60, %rcx, %rcx
	addq	%rax, %rcx
	movzwl	-46(%rbp), %eax
	imulq	$3600, %rax, %rax       # imm = 0xE10
	addq	%rcx, %rax
	imulq	%r14, %rax
	jmp	.LBB0_23
.LBB0_16:
	movq	_tzname(%rip), %rax
	movq	%rax, _tzname+8(%rip)
	movq	40(%r13), %rax
	movq	%rax, _timezone(%rip)
	movl	$0, _daylight(%rip)
	jmp	.LBB0_45
.LBB0_21:
	movq	$-3600, %rax            # imm = 0xF1F0
	addq	40(%r13), %rax
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	addq	$8, %r14
	movq	%rax, 80(%r13)
	movslq	-52(%rbp), %rax
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movq	%r13, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	leaq	-46(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-44(%rbp), %r8
	movq	%rcx, %r9
	xorl	%eax, %eax
	pushq	%rcx
	leaq	-42(%rbp), %rbx
	pushq	%rbx
	callq	siscanf
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-42(%rbp), %edx
	movzwl	-44(%rbp), %ecx
	movzwl	-46(%rbp), %eax
.LBB0_43:                               #   in Loop: Header=BB0_24 Depth=1
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	imull	$60, %ecx, %ecx
	addl	%edx, %ecx
	movzwl	%ax, %eax
	imull	$3600, %eax, %eax       # imm = 0xE10
	addl	%ecx, %eax
	movl	%eax, 16(%r14)
	movslq	-52(%rbp), %rax
	addq	%rax, %r15
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %r14
	cmpq	$2, %r12
	jae	.LBB0_44
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	cmpb	$44, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB0_26:                               #   in Loop: Header=BB0_24 Depth=1
	cmpb	$77, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_34
# %bb.27:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	leaq	-58(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	%rcx, %r9
	xorl	%eax, %eax
	pushq	%rcx
	leaq	-54(%rbp), %rbx
	pushq	%rbx
	callq	siscanf
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB0_45
# %bb.28:                               #   in Loop: Header=BB0_24 Depth=1
	movzwl	-58(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_45
# %bb.29:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$12, %ax
	ja	.LBB0_45
# %bb.30:                               #   in Loop: Header=BB0_24 Depth=1
	movzwl	-56(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_45
# %bb.31:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$5, %cx
	ja	.LBB0_45
# %bb.32:                               #   in Loop: Header=BB0_24 Depth=1
	movzwl	-54(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %edx
	ja	.LBB0_45
# %bb.33:                               #   in Loop: Header=BB0_24 Depth=1
	movb	$77, (%r14)
	movl	%eax, 4(%r14)
	movl	%ecx, 8(%r14)
	movl	%edx, 12(%r14)
	movslq	-52(%rbp), %rax
	addq	%rax, %r15
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_24 Depth=1
	movzbl	(%r15), %ebx
	leaq	1(%r15), %r13
	cmpb	$74, %bl
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	leaq	-80(%rbp), %rsi
	movl	$10, %edx
	callq	strtoul
	movw	%ax, -54(%rbp)
	movq	-80(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	je	.LBB0_35
# %bb.38:                               #   in Loop: Header=BB0_24 Depth=1
	cmpb	$74, %bl
	movl	$68, %ecx
	movl	$74, %edx
	cmovel	%edx, %ecx
	movb	%cl, (%r14)
	movzwl	%ax, %eax
	movl	%eax, 12(%r14)
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_39
.LBB0_35:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_36
# %bb.37:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movb	$77, 48(%r13)
	movabsq	$4294967307, %rax       # imm = 0x10000000B
	movq	%rax, 52(%r13)
	movl	$0, 60(%r13)
	jmp	.LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movb	$77, 8(%r13)
	movabsq	$8589934595, %rax       # imm = 0x200000003
	movq	%rax, 12(%r13)
	movl	$0, 20(%r13)
	.p2align	4, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_40:                               #   in Loop: Header=BB0_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movw	$2, -46(%rbp)
	movw	$0, -44(%rbp)
	movw	$0, -42(%rbp)
	movl	$0, -52(%rbp)
	cmpb	$47, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_24 Depth=1
	xorl	%ecx, %ecx
	movw	$2, %ax
	xorl	%edx, %edx
	jmp	.LBB0_43
.LBB0_44:
	movl	4(%r13), %edi
	callq	__tzcalc_limits
	movq	40(%r13), %rax
	movq	%rax, _timezone(%rip)
	xorl	%ecx, %ecx
	cmpq	80(%r13), %rax
	setne	%cl
	movl	%ecx, _daylight(%rip)
.LBB0_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_tzset_unlocked_r, .Lfunc_end0-_tzset_unlocked_r
                                        # -- End function
	.globl	_tzset_r                # -- Begin function _tzset_r
	.p2align	4, 0x90
	.type	_tzset_r,@function
_tzset_r:                               # @_tzset_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__tz_lock
	movq	%rbx, %rdi
	callq	_tzset_unlocked_r
	callq	__tz_unlock
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_tzset_r, .Lfunc_end1-_tzset_r
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TZ"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GMT"
	.size	.L.str.1, 4

	.type	prev_tzenv,@object      # @prev_tzenv
	.local	prev_tzenv
	.comm	prev_tzenv,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%10[^0-9,+-]%n"
	.size	.L.str.2, 15

	.type	__tzname_std,@object    # @__tzname_std
	.local	__tzname_std
	.comm	__tzname_std,11,1
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%hu%n:%hu%n:%hu%n"
	.size	.L.str.3, 18

	.type	__tzname_dst,@object    # @__tzname_dst
	.local	__tzname_dst
	.comm	__tzname_dst,11,1
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"M%hu%n.%hu%n.%hu%n"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/%hu%n:%hu%n:%hu%n"
	.size	.L.str.5, 19

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
