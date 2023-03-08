	.text
	.file	"timeouts.c"
	.globl	tcp_timer_needed        # -- Begin function tcp_timer_needed
	.p2align	4, 0x90
	.type	tcp_timer_needed,@function
tcp_timer_needed:                       # @tcp_timer_needed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, tcpip_tcp_timer_active(%rip)
	jne	.LBB0_3
# %bb.1:
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	orq	tcp_tw_pcbs(%rip), %rax
	je	.LBB0_3
# %bb.2:
	movb	$1, tcpip_tcp_timer_active(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	250(%rax), %edi
	movl	$tcpip_tcp_timer, %esi
	xorl	%edx, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tcp_timer_needed, .Lfunc_end0-tcp_timer_needed
                                        # -- End function
	.globl	sys_timeout             # -- Begin function sys_timeout
	.p2align	4, 0x90
	.type	sys_timeout,@function
sys_timeout:                            # @sys_timeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741824, %edi       # imm = 0x40000000
	jae	.LBB1_2
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebx
	callq	sys_now
	addl	%eax, %ebx
	movl	%ebx, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_2:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	sys_timeout, .Lfunc_end1-sys_timeout
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcpip_tcp_timer
	.type	tcpip_tcp_timer,@function
tcpip_tcp_timer:                        # @tcpip_tcp_timer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	tcp_tmr
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	orq	tcp_tw_pcbs(%rip), %rax
	je	.LBB2_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	250(%rax), %edi
	movl	$tcpip_tcp_timer, %esi
	xorl	%edx, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_3
.LBB2_2:
	movb	$0, tcpip_tcp_timer_active(%rip)
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tcpip_tcp_timer, .Lfunc_end2-tcpip_tcp_timer
                                        # -- End function
	.globl	sys_timeouts_init       # -- Begin function sys_timeouts_init
	.p2align	4, 0x90
	.type	sys_timeouts_init,@function
sys_timeouts_init:                      # @sys_timeouts_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	1000(%rax), %edi
	movl	$lwip_cyclic_timer, %esi
	movl	$lwip_cyclic_timers+16, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	1000(%rax), %edi
	movl	$lwip_cyclic_timer, %esi
	movl	$lwip_cyclic_timers+32, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	1000(%rax), %edi
	movl	$lwip_cyclic_timer, %esi
	movl	$lwip_cyclic_timers+48, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	1000(%rax), %edi
	movl	$lwip_cyclic_timer, %esi
	movl	$lwip_cyclic_timers+64, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	1000(%rax), %edi
	movl	$lwip_cyclic_timer, %esi
	movl	$lwip_cyclic_timers+80, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_now
                                        # kill: def $eax killed $eax def $rax
	leal	100(%rax), %edi
	movl	$lwip_cyclic_timer, %esi
	movl	$lwip_cyclic_timers+96, %edx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sys_timeouts_init, .Lfunc_end3-sys_timeouts_init
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_cyclic_timer
	.type	lwip_cyclic_timer,@function
lwip_cyclic_timer:                      # @lwip_cyclic_timer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	*8(%rdi)
	callq	sys_now
	movl	(%rbx), %edi
	movl	current_timeout_due_time(%rip), %ecx
	addl	%edi, %ecx
	cmpl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB4_1
# %bb.2:
	movl	$lwip_cyclic_timer, %esi
	movl	%ecx, %edi
	jmp	.LBB4_3
.LBB4_1:
	addl	%eax, %edi
	movl	$lwip_cyclic_timer, %esi
.LBB4_3:
	movq	%rbx, %rdx
	callq	sys_timeout_abs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lwip_cyclic_timer, .Lfunc_end4-lwip_cyclic_timer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB5_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB5_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.4, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	uk_pr_crit, .Lfunc_end5-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sys_timeout_abs
	.type	sys_timeout_abs,@function
sys_timeout_abs:                        # @sys_timeout_abs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebx
	movl	$10, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_12
# %bb.1:
	movq	$0, (%rax)
	movq	%r15, 16(%rax)
	movq	%r14, 24(%rax)
	movl	%ebx, 8(%rax)
	movq	next_timeout(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB6_2
# %bb.3:
	cmpl	8(%rcx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB6_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB6_9
# %bb.6:
	cmpl	8(%rdx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB6_9
	.p2align	4, 0x90
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB6_13
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=1
	cmpl	8(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	jns	.LBB6_7
	jmp	.LBB6_9
.LBB6_2:
	movq	%rax, next_timeout(%rip)
	jmp	.LBB6_11
.LBB6_4:
	movq	%rcx, (%rax)
	movl	$next_timeout, %ecx
	jmp	.LBB6_10
.LBB6_13:
	movq	%rdx, %rcx
.LBB6_9:
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
.LBB6_10:
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	sys_timeout_abs, .Lfunc_end6-sys_timeout_abs
                                        # -- End function
	.globl	sys_untimeout           # -- Begin function sys_untimeout
	.p2align	4, 0x90
	.type	sys_untimeout,@function
sys_untimeout:                          # @sys_untimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	next_timeout(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB7_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_2 Depth=1
	movq	(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	testq	%rdx, %rdx
	je	.LBB7_6
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rax
	cmpq	%rdi, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_5
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	cmpq	%rsi, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_5
# %bb.4:
	testq	%rcx, %rcx
	movq	(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$next_timeout, %esi
	cmovneq	%rcx, %rsi
	movq	%rdx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$10, %edi
	movq	%rax, %rsi
	callq	memp_free
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sys_untimeout, .Lfunc_end7-sys_untimeout
                                        # -- End function
	.globl	sys_check_timeouts      # -- Begin function sys_check_timeouts
	.p2align	4, 0x90
	.type	sys_check_timeouts,@function
sys_check_timeouts:                     # @sys_check_timeouts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	callq	sys_now
	movl	$42, __A_VARIABLE(%rip)
	movq	next_timeout(%rip), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_6
# %bb.1:                                # %.preheader
	movl	%eax, %r14d
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	next_timeout(%rip), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_6
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsi), %eax
	cmpl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB8_6
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movq	(%rsi), %rcx
	movq	%rcx, next_timeout(%rip)
	movq	16(%rsi), %rbx
	movq	24(%rsi), %r15
	movl	%eax, current_timeout_due_time(%rip)
	movl	$10, %edi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_2 Depth=1
	movq	%r15, %rdi
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_5
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sys_check_timeouts, .Lfunc_end8-sys_check_timeouts
                                        # -- End function
	.globl	sys_restart_timeouts    # -- Begin function sys_restart_timeouts
	.p2align	4, 0x90
	.type	sys_restart_timeouts,@function
sys_restart_timeouts:                   # @sys_restart_timeouts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, next_timeout(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_5
# %bb.1:
	callq	sys_now
	movq	next_timeout(%rip), %rcx
	movl	8(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB9_5
# %bb.2:
	movl	%eax, 8(%rcx)
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB9_5
# %bb.3:                                # %.preheader
	subl	%edx, %eax
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	addl	%eax, 8(%rcx)
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB9_4
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sys_restart_timeouts, .Lfunc_end9-sys_restart_timeouts
                                        # -- End function
	.globl	sys_timeouts_sleeptime  # -- Begin function sys_timeouts_sleeptime
	.p2align	4, 0x90
	.type	sys_timeouts_sleeptime,@function
sys_timeouts_sleeptime:                 # @sys_timeouts_sleeptime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, next_timeout(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_1
# %bb.3:
	callq	sys_now
	movl	%eax, %ecx
	movq	next_timeout(%rip), %rax
	movl	8(%rax), %eax
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB10_2
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB10_5
.LBB10_1:
	movl	$-1, %eax
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sys_timeouts_sleeptime, .Lfunc_end10-sys_timeouts_sleeptime
                                        # -- End function
	.type	lwip_cyclic_timers,@object # @lwip_cyclic_timers
	.section	.rodata,"a",@progbits
	.globl	lwip_cyclic_timers
	.p2align	4
lwip_cyclic_timers:
	.long	250                     # 0xfa
	.zero	4
	.quad	tcp_tmr
	.long	1000                    # 0x3e8
	.zero	4
	.quad	ip_reass_tmr
	.long	1000                    # 0x3e8
	.zero	4
	.quad	etharp_tmr
	.long	1000                    # 0x3e8
	.zero	4
	.quad	dns_tmr
	.long	1000                    # 0x3e8
	.zero	4
	.quad	nd6_tmr
	.long	1000                    # 0x3e8
	.zero	4
	.quad	ip6_reass_tmr
	.long	100                     # 0x64
	.zero	4
	.quad	mld6_tmr
	.size	lwip_cyclic_timers, 112

	.type	lwip_num_cyclic_timers,@object # @lwip_num_cyclic_timers
	.globl	lwip_num_cyclic_timers
	.p2align	2
lwip_num_cyclic_timers:
	.long	7                       # 0x7
	.size	lwip_num_cyclic_timers, 4

	.type	tcpip_tcp_timer_active,@object # @tcpip_tcp_timer_active
	.local	tcpip_tcp_timer_active
	.comm	tcpip_tcp_timer_active,1,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Timeout time too long, max is LWIP_UINT32_MAX/4 msecs"
	.size	.L.str, 54

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	next_timeout,@object    # @next_timeout
	.local	next_timeout
	.comm	next_timeout,8,8
	.type	current_timeout_due_time,@object # @current_timeout_due_time
	.local	current_timeout_due_time
	.comm	current_timeout_due_time,4,4
	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.4,@object # @uk_pr_crit.__str.4
uk_pr_crit.__str.4:
	.asciz	"timeouts.c"
	.size	uk_pr_crit.__str.4, 11

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"sys_timeout: timeout != NULL, pool MEMP_SYS_TIMEOUT is empty"
	.size	.L.str.5, 61

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
