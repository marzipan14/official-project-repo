	.text
	.file	"strsignal.c"
	.globl	strsignal               # -- Begin function strsignal
	.p2align	4, 0x90
	.type	strsignal,@function
strsignal:                              # @strsignal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	callq	__getreent
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r14), %eax
	cmpl	$31, %eax
	jae	.LBB0_1
# %bb.2:
	movl	$2145353727, %ecx       # imm = 0x7FDF7FFF
	btl	%eax, %ecx
	jb	.LBB0_3
.LBB0_1:
	addq	$288, %rbx              # imm = 0x120
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	siprintf
	jmp	.LBB0_4
.LBB0_3:
	cltq
	movq	.Lswitch.table.strsignal(,%rax,8), %rbx
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strsignal, .Lfunc_end0-strsignal
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hangup"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Interrupt"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Quit"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Illegal instruction"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Trace/breakpoint trap"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"IOT trap"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Floating point exception"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Killed"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Bus error"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Segmentation fault"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Bad system call"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Broken pipe"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Alarm clock"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Terminated"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Urgent I/O condition"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Stopped (signal)"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Stopped"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Continued"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Child exited"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Stopped (tty input)"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"I/O possible"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Window changed"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"User defined signal 1"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"User defined signal 2"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Power Failure"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"CPU time limit exceeded"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"File size limit exceeded"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Virtual timer expired"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Profiling timer expired"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Unknown signal %d"
	.size	.L.str.29, 18

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.strsignal,@object # @switch.table.strsignal
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.strsignal:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.8
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.22
	.quad	.L.str.9
	.quad	.L.str.23
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str
	.quad	.L.str.18
	.quad	.L.str.17
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.19
	.quad	.L.str
	.quad	.L.str.14
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.21
	.quad	.L.str.20
	.quad	.L.str.24
	.quad	.L.str.10
	.size	.Lswitch.table.strsignal, 248

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
