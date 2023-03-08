	.text
	.file	"notify.c"
	.globl	keyspaceEventsStringToFlags # -- Begin function keyspaceEventsStringToFlags
	.p2align	4, 0x90
	.type	keyspaceEventsStringToFlags,@function
keyspaceEventsStringToFlags:            # @keyspaceEventsStringToFlags
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %dl
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB0_1
# %bb.2:                                # %.preheader
	addq	$1, %rdi
	xorl	%ecx, %ecx
	jmp	.LBB0_3
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$1024, %edx             # imm = 0x400
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	orl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi), %edx
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	testb	%dl, %dl
	je	.LBB0_17
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movsbl	%dl, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	addl	$-36, %esi
	cmpl	$86, %esi
	ja	.LBB0_17
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$2044, %edx             # imm = 0x7FC
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$8, %edx
	jmp	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %edx
	jmp	.LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %edx
	jmp	.LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$512, %edx              # imm = 0x200
	jmp	.LBB0_16
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$4, %edx
	jmp	.LBB0_16
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$64, %edx
	jmp	.LBB0_16
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$16, %edx
	jmp	.LBB0_16
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$32, %edx
	jmp	.LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$256, %edx              # imm = 0x100
	jmp	.LBB0_16
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$128, %edx
	jmp	.LBB0_16
.LBB0_1:
	xorl	%eax, %eax
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	keyspaceEventsStringToFlags, .Lfunc_end0-keyspaceEventsStringToFlags
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_6
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_14
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_13
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_12
	.quad	.LBB0_17
	.quad	.LBB0_5
	.quad	.LBB0_9
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_7
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_8
	.quad	.LBB0_15
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_11
	.quad	.LBB0_17
	.quad	.LBB0_10
                                        # -- End function
	.text
	.globl	keyspaceEventsFlagsToString # -- Begin function keyspaceEventsFlagsToString
	.p2align	4, 0x90
	.type	keyspaceEventsFlagsToString,@function
keyspaceEventsFlagsToString:            # @keyspaceEventsFlagsToString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	sdsempty
	movl	%ebx, %ecx
	andl	$2044, %ecx             # imm = 0x7FC
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2044, %ecx             # imm = 0x7FC
	jne	.LBB1_2
# %bb.1:
	movl	$.L.str, %esi
	jmp	.LBB1_20
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	je	.LBB1_4
# %bb.3:
	movl	$.L.str.1, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	je	.LBB1_6
# %bb.5:
	movl	$.L.str.2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %bl
	je	.LBB1_8
# %bb.7:
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %bl
	je	.LBB1_10
# %bb.9:
	movl	$.L.str.4, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %bl
	je	.LBB1_12
# %bb.11:
	movl	$.L.str.5, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jns	.LBB1_14
# %bb.13:
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ebx              # imm = 0x100
	je	.LBB1_16
# %bb.15:
	movl	$.L.str.7, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %ebx              # imm = 0x200
	je	.LBB1_18
# %bb.17:
	movl	$.L.str.8, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %ebx             # imm = 0x400
	je	.LBB1_21
# %bb.19:
	movl	$.L.str.9, %esi
.LBB1_20:
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	je	.LBB1_23
# %bb.22:
	movl	$.L.str.10, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %bl
	je	.LBB1_25
# %bb.24:
	movl	$.L.str.11, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	keyspaceEventsFlagsToString, .Lfunc_end1-keyspaceEventsFlagsToString
                                        # -- End function
	.globl	notifyKeyspaceEvent     # -- Begin function notifyKeyspaceEvent
	.p2align	4, 0x90
	.type	notifyKeyspaceEvent,@function
notifyKeyspaceEvent:                    # @notifyKeyspaceEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	%edi, %ebx
	callq	moduleNotifyKeyspaceEvent
	andl	server+2920(%rip), %ebx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_8
# %bb.1:
	movq	%r14, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, %r13
	movl	server+2920(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	testb	$1, %al
	je	.LBB2_3
# %bb.2:
	movl	$.L.str.12, %edi
	movl	$11, %esi
	callq	sdsnewlen
	movq	%r13, %rbx
	movq	%rax, %r13
	movslq	%r12d, %rdx
	leaq	-64(%rbp), %rdi
	movl	$24, %esi
	callq	ll2string
	movl	%eax, %r14d
	movslq	%eax, %rdx
	movq	%r13, %rdi
	movq	%rbx, %r13
	leaq	-64(%rbp), %rsi
	callq	sdscatlen
	movl	$.L.str.13, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	pubsubPublishMessage
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2920(%rip), %eax
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB2_7
# %bb.4:
	movq	%r13, %rbx
	movl	$.L.str.14, %edi
	movl	$11, %esi
	callq	sdsnewlen
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	jne	.LBB2_6
# %bb.5:
	movslq	%r12d, %rdx
	leaq	-64(%rbp), %rdi
	movl	$24, %esi
	callq	ll2string
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_6:
	movslq	%r14d, %rdx
	leaq	-64(%rbp), %rsi
	movq	%r13, %rdi
	callq	sdscatlen
	movl	$.L.str.13, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rbx, %r13
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	callq	sdscatsds
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	pubsubPublishMessage
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB2_7:
	movq	%r13, %rdi
	callq	decrRefCount
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	notifyKeyspaceEvent, .Lfunc_end2-notifyKeyspaceEvent
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"A"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"g"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"$"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"l"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"s"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"h"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"z"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"e"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"t"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"K"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"E"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"__keyspace@"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"__:"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"__keyevent@"
	.size	.L.str.14, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
