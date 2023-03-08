	.text
	.file	"memtest.c"
	.globl	memtest_progress_start  # -- Begin function memtest_progress_start
	.p2align	4, 0x90
	.type	memtest_progress_start,@function
memtest_progress_start:                 # @memtest_progress_start
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movzwl	ws+2(%rip), %eax
	movzwl	ws(%rip), %ecx
	addl	$-2, %ecx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB0_3
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$1, %ebx
	movzwl	ws+2(%rip), %eax
	movzwl	ws(%rip), %ecx
	addl	$-2, %ecx
	imull	%eax, %ecx
	cmpl	%ecx, %ebx
	jl	.LBB0_2
.LBB0_3:
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.5, %edi
	movq	%r15, %rsi
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	printf
	movq	$0, progress_printed(%rip)
	movzwl	ws+2(%rip), %eax
	movzwl	ws(%rip), %ecx
	addl	$-3, %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rax, progress_full(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	memtest_progress_start, .Lfunc_end0-memtest_progress_start
                                        # -- End function
	.globl	memtest_progress_end    # -- Begin function memtest_progress_end
	.p2align	4, 0x90
	.type	memtest_progress_end,@function
memtest_progress_end:                   # @memtest_progress_end
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	memtest_progress_end, .Lfunc_end1-memtest_progress_end
                                        # -- End function
	.globl	memtest_progress_step   # -- Begin function memtest_progress_step
	.p2align	4, 0x90
	.type	memtest_progress_step,@function
memtest_progress_step:                  # @memtest_progress_step
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %ecx
	movq	%rdi, %rax
	imulq	progress_full(%rip), %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %r14
	cmpq	progress_printed(%rip), %rax
	je	.LBB2_3
# %bb.1:
	movsbl	%cl, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str.6, %edi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	movq	%r14, %rax
	subq	progress_printed(%rip), %rax
	cmpq	%rax, %rbx
	jb	.LBB2_2
.LBB2_3:
	movq	%r14, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	memtest_progress_step, .Lfunc_end2-memtest_progress_step
                                        # -- End function
	.globl	memtest_addressing      # -- Begin function memtest_addressing
	.p2align	4, 0x90
	.type	memtest_addressing,@function
memtest_addressing:                     # @memtest_addressing
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rcx
	shrq	$3, %rcx
	je	.LBB3_21
# %bb.1:
	movl	%edx, %r15d
	leaq	(%rcx,%rcx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	xorl	%r14d, %r14d
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	movq	%rbx, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r15d
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	addq	$8, %r13
	addq	$1, %r14
	cmpq	%rcx, %r14
	je	.LBB3_9
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	movq	%r13, (%r13)
	testl	%r15d, %r15d
	je	.LBB3_8
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movzwl	%r14w, %eax
	testq	%rax, %rax
	jne	.LBB3_8
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movl	%r15d, %r12d
	movq	progress_full(%rip), %rax
	imulq	%r14, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	movq	%rax, %rbx
	cmpq	progress_printed(%rip), %rax
	je	.LBB3_7
# %bb.5:                                # %.preheader2
                                        #   in Loop: Header=BB3_2 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_6:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movl	$65, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r15
	movq	%rbx, %rax
	subq	progress_printed(%rip), %rax
	cmpq	%rax, %r15
	jb	.LBB3_6
	jmp	.LBB3_7
.LBB3_9:
	testq	%rcx, %rcx
	je	.LBB3_21
# %bb.10:
	xorl	%r13d, %r13d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB3_11
	.p2align	4, 0x90
.LBB3_19:                               #   in Loop: Header=BB3_11 Depth=1
	movq	%r14, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB3_20:                               #   in Loop: Header=BB3_11 Depth=1
	addq	$8, %rsi
	addq	$1, %r13
	cmpq	%rcx, %r13
	jae	.LBB3_21
.LBB3_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	movq	(%rsi), %rdx
	cmpq	%rsi, %rdx
	jne	.LBB3_12
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=1
	testl	%r15d, %r15d
	je	.LBB3_20
# %bb.15:                               #   in Loop: Header=BB3_11 Depth=1
	movzwl	%r13w, %eax
	testq	%rax, %rax
	jne	.LBB3_20
# %bb.16:                               #   in Loop: Header=BB3_11 Depth=1
	movq	%rsi, %r12
	leaq	(%rcx,%r13), %rax
	imulq	progress_full(%rip), %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	movq	%rax, %r14
	cmpq	progress_printed(%rip), %rax
	je	.LBB3_19
# %bb.17:                               # %.preheader
                                        #   in Loop: Header=BB3_11 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_18:                               #   Parent Loop BB3_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movl	$65, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	movq	%r14, %rax
	subq	progress_printed(%rip), %rax
	cmpq	%rax, %rbx
	jb	.LBB3_18
	jmp	.LBB3_19
.LBB3_21:
	xorl	%eax, %eax
.LBB3_22:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_12:
	movl	$1, %eax
	testl	%r15d, %r15d
	je	.LBB3_22
# %bb.13:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end3:
	.size	memtest_addressing, .Lfunc_end3-memtest_addressing
                                        # -- End function
	.globl	memtest_fill_random     # -- Begin function memtest_fill_random
	.p2align	4, 0x90
	.type	memtest_fill_random,@function
memtest_fill_random:                    # @memtest_fill_random
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	testl	$4095, %esi             # imm = 0xFFF
	jne	.LBB4_13
# %bb.1:
	movq	%rsi, %rax
	shrq	$4, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	shrq	$13, %rsi
	movabsq	$-3372857614747716250, %rbx # imm = 0xD13133DE9AFDB566
	movabsq	$2685821657736338717, %rdi # imm = 0x2545F4914F6CDD1D
	xorl	%ecx, %ecx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	$512, %rcx              # imm = 0x200
	je	.LBB4_12
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #       Child Loop BB4_8 Depth 3
	testq	%rsi, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	je	.LBB4_11
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,8), %r13
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(,%rax,8), %r14
	addq	%r13, %r14
	imulq	%rsi, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB4_4
	.p2align	4, 0x90
.LBB4_9:                                #   in Loop: Header=BB4_4 Depth=2
	movq	%rbx, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movabsq	$2685821657736338717, %rdi # imm = 0x2545F4914F6CDD1D
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB4_10:                               #   in Loop: Header=BB4_4 Depth=2
	addq	$4096, %r13             # imm = 0x1000
	addq	$4096, %r14             # imm = 0x1000
	addq	$1, %r12
	cmpq	%rsi, %r12
	je	.LBB4_11
.LBB4_4:                                #   Parent Loop BB4_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_8 Depth 3
	movq	%rbx, %rax
	shrq	$12, %rax
	xorq	%rbx, %rax
	movq	%rax, %rcx
	shlq	$25, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rbx
	shrq	$27, %rbx
	xorq	%rcx, %rbx
	movq	%rbx, %rax
	imulq	%rdi, %rax
	movq	%rax, (%r14)
	movq	%rax, (%r13)
	testl	%edx, %edx
	je	.LBB4_10
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=2
	movzwl	%r12w, %eax
	testq	%rax, %rax
	jne	.LBB4_10
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=2
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r12, %rax
	imulq	progress_full(%rip), %rax
	xorl	%edx, %edx
	divq	-56(%rbp)               # 8-byte Folded Reload
	movq	%rax, %rbx
	cmpq	progress_printed(%rip), %rax
	je	.LBB4_9
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB4_4 Depth=2
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB4_8:                                #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$.L.str.6, %edi
	movl	$82, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r15
	movq	%rbx, %rax
	subq	progress_printed(%rip), %rax
	cmpq	%rax, %r15
	jb	.LBB4_8
	jmp	.LBB4_9
.LBB4_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_13:
	movl	$.L.str.8, %edi
	movl	$.L__func__.memtest_fill_random, %edx
	movl	$.L.str.9, %ecx
	movl	$146, %esi
	callq	__assert_func
.Lfunc_end4:
	.size	memtest_fill_random, .Lfunc_end4-memtest_fill_random
                                        # -- End function
	.globl	memtest_fill_value      # -- Begin function memtest_fill_value
	.p2align	4, 0x90
	.type	memtest_fill_value,@function
memtest_fill_value:                     # @memtest_fill_value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	testl	$4095, %esi             # imm = 0xFFF
	jne	.LBB5_13
# %bb.1:
	movq	%rsi, %rax
	shrq	$4, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	shrq	$13, %rsi
	movsbl	%r8b, %r12d
	xorl	%eax, %eax
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_11:                               #   in Loop: Header=BB5_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$512, %rax              # imm = 0x200
	je	.LBB5_12
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #       Child Loop BB5_8 Depth 3
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testb	$1, %al
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmoveq	-80(%rbp), %rdi         # 8-byte Folded Reload
	testq	%rsi, %rsi
	je	.LBB5_11
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	leaq	(%rax,%r8,8), %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rbx
	movq	%rdi, %rax
	shlq	$16, %rax
	orq	%rdi, %rax
	movq	%rdi, %rcx
	shlq	$32, %rcx
	shlq	$48, %rdi
	orq	%rcx, %rdi
	orq	%rax, %rdi
	imulq	%rsi, %r8
	movq	%r8, -104(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_9:                                #   in Loop: Header=BB5_4 Depth=2
	movq	%r14, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
.LBB5_10:                               #   in Loop: Header=BB5_4 Depth=2
	addq	$4096, %rdx             # imm = 0x1000
	addq	$4096, %rbx             # imm = 0x1000
	addq	$1, %r15
	cmpq	%rsi, %r15
	je	.LBB5_11
.LBB5_4:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_8 Depth 3
	movq	%rdi, (%rbx)
	movq	%rdi, (%rdx)
	testl	%r9d, %r9d
	je	.LBB5_10
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=2
	movzwl	%r15w, %eax
	testq	%rax, %rax
	jne	.LBB5_10
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=2
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	%r15, %rax
	imulq	progress_full(%rip), %rax
	xorl	%edx, %edx
	divq	-64(%rbp)               # 8-byte Folded Reload
	movq	%rax, %r14
	cmpq	progress_printed(%rip), %rax
	je	.LBB5_9
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB5_4 Depth=2
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB5_8:                                #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$.L.str.6, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r13
	movq	%r14, %rax
	subq	progress_printed(%rip), %rax
	cmpq	%rax, %r13
	jb	.LBB5_8
	jmp	.LBB5_9
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_13:
	movl	$.L.str.8, %edi
	movl	$.L__func__.memtest_fill_value, %edx
	movl	$.L.str.9, %ecx
	movl	$171, %esi
	callq	__assert_func
.Lfunc_end5:
	.size	memtest_fill_value, .Lfunc_end5-memtest_fill_value
                                        # -- End function
	.globl	memtest_compare         # -- Begin function memtest_compare
	.p2align	4, 0x90
	.type	memtest_compare,@function
memtest_compare:                        # @memtest_compare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testl	$4095, %esi             # imm = 0xFFF
	jne	.LBB6_15
# %bb.1:
	shrq	$4, %rsi
	je	.LBB6_13
# %bb.2:
	movq	%rdi, %r15
	leaq	(%rdi,%rsi,8), %r13
	xorl	%r14d, %r14d
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_11:                               #   in Loop: Header=BB6_3 Depth=1
	movq	%rbx, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB6_12:                               #   in Loop: Header=BB6_3 Depth=1
	addq	$8, %r15
	addq	$8, %r13
	addq	$1, %r14
	cmpq	%rsi, %r14
	jae	.LBB6_13
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	movq	(%r15), %rcx
	movq	(%r13), %r8
	cmpq	%r8, %rcx
	jne	.LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	testl	%edx, %edx
	je	.LBB6_12
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	movzwl	%r14w, %eax
	testq	%rax, %rax
	jne	.LBB6_12
# %bb.8:                                #   in Loop: Header=BB6_3 Depth=1
	movq	progress_full(%rip), %rax
	imulq	%r14, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rbx
	cmpq	progress_printed(%rip), %rax
	je	.LBB6_11
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB6_10:                               #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movl	$61, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r12
	movq	%rbx, %rax
	subq	progress_printed(%rip), %rax
	cmpq	%rax, %r12
	jb	.LBB6_10
	jmp	.LBB6_11
.LBB6_13:
	xorl	%eax, %eax
	jmp	.LBB6_14
.LBB6_4:
	movl	$1, %eax
	testl	%edx, %edx
	jne	.LBB6_5
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_15:
	movl	$.L.str.8, %edi
	movl	$.L__func__.memtest_compare, %edx
	movl	$.L.str.9, %ecx
	movl	$198, %esi
	callq	__assert_func
.LBB6_5:
	movl	$.L.str.10, %edi
	movq	%r15, %rsi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end6:
	.size	memtest_compare, .Lfunc_end6-memtest_compare
                                        # -- End function
	.globl	memtest_compare_times   # -- Begin function memtest_compare_times
	.p2align	4, 0x90
	.type	memtest_compare_times,@function
memtest_compare_times:                  # @memtest_compare_times
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB7_1
# %bb.2:
	movl	%r8d, %r14d
	movl	%ecx, %ebx
	movq	%rdi, %r13
	xorl	%r15d, %r15d
	jmp	.LBB7_3
	.p2align	4, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$.L.str.11, %edi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%eax, %r12d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	addl	%r12d, %r15d
	addl	$-1, %ebx
	je	.LBB7_7
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	jne	.LBB7_5
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	xorl	%edx, %edx
	callq	memtest_compare
	movl	%eax, %r12d
	jmp	.LBB7_6
.LBB7_1:
	xorl	%r15d, %r15d
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	memtest_compare_times, .Lfunc_end7-memtest_compare_times
                                        # -- End function
	.globl	memtest_test            # -- Begin function memtest_test
	.p2align	4, 0x90
	.type	memtest_test,@function
memtest_test:                           # @memtest_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%edx, -100(%rbp)        # 4-byte Spill
	testl	%edx, %edx
	je	.LBB8_1
# %bb.2:
	movl	%ecx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	%rsi, %rdx
	shrq	$4, %rdx
	leaq	(%rdi,%rdx,8), %rsi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_122:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movl	%r13d, %r12d
	movq	%rdi, %r13
	.p2align	4, 0x90
.LBB8_117:                              #   in Loop: Header=BB8_3 Depth=1
	addl	%ebx, %r15d
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	-104(%rbp), %eax        # 4-byte Folded Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	addl	-72(%rbp), %ecx         # 4-byte Folded Reload
	addl	%eax, %ecx
	addl	-68(%rbp), %r14d        # 4-byte Folded Reload
	addl	%ecx, %r14d
	addl	%r15d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	movl	-44(%rbp), %ebx         # 4-byte Reload
	cmpl	-100(%rbp), %ebx        # 4-byte Folded Reload
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB8_118
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_53 Depth 2
                                        #     Child Loop BB8_62 Depth 2
                                        #     Child Loop BB8_24 Depth 2
                                        #     Child Loop BB8_31 Depth 2
                                        #     Child Loop BB8_78 Depth 2
                                        #     Child Loop BB8_87 Depth 2
                                        #     Child Loop BB8_38 Depth 2
                                        #     Child Loop BB8_96 Depth 2
                                        #     Child Loop BB8_105 Depth 2
                                        #     Child Loop BB8_114 Depth 2
	movl	%eax, -104(%rbp)        # 4-byte Spill
	addl	$1, %ebx
	testl	%r12d, %r12d
	je	.LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.12, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	memtest_addressing
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.13, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	memtest_fill_random
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	memtest_addressing
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	memtest_fill_random
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	testl	%r12d, %r12d
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	je	.LBB8_7
# %bb.44:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	memtest_compare
	movl	%eax, %r14d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
.LBB8_45:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	memtest_compare
	movq	%r13, %r12
	movl	%eax, %r13d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	addl	%r14d, %r13d
.LBB8_50:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	-48(%rbp), %edx         # 4-byte Reload
	callq	memtest_compare
	movl	%ebx, %r14d
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, %ebx
	movl	%ebx, -72(%rbp)         # 4-byte Spill
	movl	%r14d, %ebx
.LBB8_59:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	-48(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r12, %r13
.LBB8_67:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_19
# %bb.68:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.14, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	$-1, %rcx
	movl	$83, %r8d
	movl	%r14d, %r9d
	callq	memtest_fill_value
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_21
.LBB8_69:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%ebx, %r12d
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
.LBB8_70:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%r12d, %r14d
	movl	%eax, %r12d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	addl	%ebx, %r12d
.LBB8_75:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r14d, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	-48(%rbp), %edx         # 4-byte Reload
	callq	memtest_compare
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	addl	%r12d, %ebx
	movl	%ebx, -68(%rbp)         # 4-byte Spill
.LBB8_84:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r14d, %ebx
	movl	%r14d, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movl	%r12d, %edx
	callq	memtest_compare
	movl	%eax, %r14d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB8_90:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB8_33
# %bb.91:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.15, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movl	$67, %r8d
	movl	%r12d, %r9d
	callq	memtest_fill_value
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB8_35
.LBB8_92:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	memtest_compare
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
.LBB8_93:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebx, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	memtest_compare
	movl	%eax, %r13d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	addl	-76(%rbp), %r13d        # 4-byte Folded Reload
	movl	%r12d, %ebx
	movq	%r15, %r12
.LBB8_102:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	memtest_compare
	movl	%eax, %r15d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, %r15d
.LBB8_111:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movl	%r12d, %edx
	callq	memtest_compare
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB8_117
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jne	.LBB8_119
# %bb.8:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %r9
	testq	%rdx, %rdx
	je	.LBB8_120
# %bb.9:                                # %.preheader15
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	%r9, %r13
	.p2align	4, 0x90
.LBB8_10:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_11
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_10
# %bb.13:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB8_14
	.p2align	4, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	$-1, %rcx
	movl	$83, %r8d
	xorl	%r9d, %r9d
	callq	memtest_fill_value
	testl	%r14d, %r14d
	jne	.LBB8_69
.LBB8_21:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jne	.LBB8_119
# %bb.22:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r14d, %r12d
	testq	%rdx, %rdx
	je	.LBB8_121
# %bb.23:                               # %.preheader9
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, %r14d
	xorl	%eax, %eax
	movl	-44(%rbp), %r12d        # 4-byte Reload
	.p2align	4, 0x90
.LBB8_24:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_25
# %bb.26:                               #   in Loop: Header=BB8_24 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_24
# %bb.27:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB8_28
	.p2align	4, 0x90
.LBB8_33:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movl	$67, %r8d
	xorl	%r9d, %r9d
	callq	memtest_fill_value
	testl	%r12d, %r12d
	jne	.LBB8_92
.LBB8_35:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jne	.LBB8_119
# %bb.36:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movl	%r12d, %r13d
	testq	%rdx, %rdx
	je	.LBB8_122
# %bb.37:                               # %.preheader3
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_38:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_39
# %bb.40:                               #   in Loop: Header=BB8_38 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_38
# %bb.41:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB8_42
.LBB8_120:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movl	%r12d, %r14d
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	%r9, %r13
	jmp	.LBB8_67
.LBB8_121:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB8_90
.LBB8_11:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r14d
.LBB8_14:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB8_45
# %bb.15:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	jne	.LBB8_119
# %bb.16:                               # %.preheader14
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movq	%r9, %rdi
	.p2align	4, 0x90
.LBB8_17:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_18
# %bb.46:                               #   in Loop: Header=BB8_17 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_17
# %bb.47:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB8_48
.LBB8_25:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %ebx
.LBB8_28:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB8_70
# %bb.29:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	jne	.LBB8_119
# %bb.30:                               # %.preheader8
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%r14d, %r12d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_31:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_32
# %bb.71:                               #   in Loop: Header=BB8_31 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_31
# %bb.72:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%edi, %edi
	jmp	.LBB8_73
.LBB8_39:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r12d
.LBB8_42:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movl	-44(%rbp), %ebx         # 4-byte Reload
	je	.LBB8_94
# %bb.43:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, -76(%rbp)        # 4-byte Spill
	movl	%r13d, %r12d
	movq	%rdi, %r13
	jmp	.LBB8_93
.LBB8_94:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -64(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_119
# %bb.95:                               # %.preheader2
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_96:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_97
# %bb.98:                               #   in Loop: Header=BB8_96 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_96
# %bb.99:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB8_100
.LBB8_18:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r13d
.LBB8_48:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%r14d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB8_51
# %bb.49:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	%r9, %r12
	jmp	.LBB8_50
.LBB8_32:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %edi
.LBB8_73:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%ebx, %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB8_76
# %bb.74:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movl	%edi, %r12d
	jmp	.LBB8_75
.LBB8_97:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %ebx
.LBB8_100:                              #   in Loop: Header=BB8_3 Depth=1
	addl	%r12d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB8_103
# %bb.101:                              #   in Loop: Header=BB8_3 Depth=1
	movl	%r13d, %eax
	movl	%ebx, %r13d
	movl	%eax, %ebx
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB8_102
.LBB8_51:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	jne	.LBB8_119
# %bb.52:                               # %.preheader13
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_53:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_54
# %bb.55:                               #   in Loop: Header=BB8_53 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_53
# %bb.56:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_57
.LBB8_76:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	jne	.LBB8_119
# %bb.77:                               # %.preheader7
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_78:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_79
# %bb.80:                               #   in Loop: Header=BB8_78 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_78
# %bb.81:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_82
.LBB8_103:                              #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -64(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_119
# %bb.104:                              # %.preheader1
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%r13d, %r8d
	.p2align	4, 0x90
.LBB8_105:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_106
# %bb.107:                              #   in Loop: Header=BB8_105 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_105
# %bb.108:                              #   in Loop: Header=BB8_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB8_109
.LBB8_54:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %eax
.LBB8_57:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%r13d, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB8_60
# %bb.58:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	%r9, %r12
	jmp	.LBB8_59
.LBB8_79:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %eax
.LBB8_82:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB8_85
# %bb.83:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB8_84
.LBB8_106:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r15d
.LBB8_109:                              #   in Loop: Header=BB8_3 Depth=1
	addl	%ebx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB8_112
# %bb.110:                              #   in Loop: Header=BB8_3 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB8_111
.LBB8_60:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	jne	.LBB8_119
# %bb.61:                               # %.preheader10
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	%r9, %r13
	.p2align	4, 0x90
.LBB8_62:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_63
# %bb.64:                               #   in Loop: Header=BB8_62 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_62
# %bb.65:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB8_66
.LBB8_85:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r15d            # imm = 0xFFF
	jne	.LBB8_119
# %bb.86:                               # %.preheader4
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	-44(%rbp), %ebx         # 4-byte Reload
	.p2align	4, 0x90
.LBB8_87:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_88
# %bb.89:                               #   in Loop: Header=BB8_87 Depth=2
	addq	$1, %rax
	xorl	%r14d, %r14d
	cmpq	%rdx, %rax
	jb	.LBB8_87
	jmp	.LBB8_90
.LBB8_112:                              #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -64(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_119
# %bb.113:                              # %.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%r13d, %r12d
	movq	%rdi, %r13
	.p2align	4, 0x90
.LBB8_114:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_115
# %bb.116:                              #   in Loop: Header=BB8_114 Depth=2
	addq	$1, %rax
	xorl	%ebx, %ebx
	cmpq	%rdx, %rax
	jb	.LBB8_114
	jmp	.LBB8_117
.LBB8_63:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, -52(%rbp)           # 4-byte Folded Spill
.LBB8_66:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, %r14d
	jmp	.LBB8_67
.LBB8_88:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r14d
	jmp	.LBB8_90
.LBB8_115:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %ebx
	jmp	.LBB8_117
.LBB8_1:
	xorl	%r14d, %r14d
.LBB8_118:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_119:
	movl	$.L.str.8, %edi
	movl	$.L__func__.memtest_compare, %edx
	movl	$.L.str.9, %ecx
	movl	$198, %esi
	callq	__assert_func
.Lfunc_end8:
	.size	memtest_test, .Lfunc_end8-memtest_test
                                        # -- End function
	.globl	memtest_preserving_test # -- Begin function memtest_preserving_test
	.p2align	4, 0x90
	.type	memtest_preserving_test,@function
memtest_preserving_test:                # @memtest_preserving_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048760, %rsp          # imm = 0x1000B8
	movl	%edx, -76(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpq	$8192, %rsi             # imm = 0x2000
	jb	.LBB9_100
# %bb.1:
	movl	%esi, %eax
	andl	$4095, %eax             # imm = 0xFFF
	testq	%rax, %rax
	jne	.LBB9_100
# %bb.2:
	movq	%rdi, %r12
	movabsq	$2685821657736338717, %r15 # imm = 0x2545F4914F6CDD1D
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	-1048800(%rbp), %r14
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edi
.LBB9_142:                              #   in Loop: Header=BB9_3 Depth=1
	movl	%edi, -56(%rbp)         # 4-byte Spill
	movq	%r12, %rdi
	movq	%r14, %rbx
	leaq	-1048800(%rbp), %r14
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r8, %r13
	callq	memcpy
	movq	-144(%rbp), %rsi        # 8-byte Reload
	subq	%rbx, %rsi
	leaq	(%r12,%r13,8), %r12
	movl	-56(%rbp), %eax         # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_29 Depth 3
                                        #         Child Loop BB9_33 Depth 4
                                        #       Child Loop BB9_40 Depth 3
                                        #       Child Loop BB9_46 Depth 3
                                        #       Child Loop BB9_50 Depth 3
                                        #       Child Loop BB9_110 Depth 3
                                        #       Child Loop BB9_52 Depth 3
                                        #         Child Loop BB9_56 Depth 4
                                        #         Child Loop BB9_60 Depth 4
                                        #       Child Loop BB9_64 Depth 3
                                        #       Child Loop BB9_70 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_124 Depth 3
                                        #       Child Loop BB9_76 Depth 3
                                        #         Child Loop BB9_80 Depth 4
                                        #         Child Loop BB9_84 Depth 4
                                        #       Child Loop BB9_88 Depth 3
                                        #       Child Loop BB9_94 Depth 3
                                        #       Child Loop BB9_98 Depth 3
                                        #       Child Loop BB9_138 Depth 3
	cmpq	$4096, %rsi             # imm = 0x1000
	je	.LBB9_143
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	testq	%rsi, %rsi
	je	.LBB9_100
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	movl	$1048576, %eax          # imm = 0x100000
	cmpq	$1048575, %rsi          # imm = 0xFFFFF
	jbe	.LBB9_6
	jmp	.LBB9_7
	.p2align	4, 0x90
.LBB9_143:                              #   in Loop: Header=BB9_3 Depth=1
	addq	$-4096, %r12            # imm = 0xF000
	movl	$8192, %esi             # imm = 0x2000
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, %rax
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	leaq	-4096(%rax), %rcx
	testl	$4096, %eax             # imm = 0x1000
	cmoveq	%rax, %rcx
	movq	%r14, %rdi
	movq	%rcx, %r14
	movq	%r12, %rsi
	movq	%rcx, %rdx
	callq	memcpy
	movq	%r14, %r8
	shrq	$3, %r8
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	je	.LBB9_8
# %bb.9:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, %r13
	shrq	$4, %r13
	movq	%r14, %r11
	shrq	$13, %r11
	movq	%r8, %rcx
	movabsq	$2305843009213693948, %rax # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rax, %rcx
	movq	%r14, %rax
	shrq	$5, %rax
	leaq	-4(,%rax,4), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	shrq	$2, %rax
	addq	$1, %rax
	movl	%r11d, %edx
	andl	$1, %edx
	movl	%eax, %esi
	andl	$1, %esi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%r11d, %r10d
	andl	$7, %r10d
	movq	%r12, %rsi
	negq	%rsi
	leaq	(,%r13,8), %rax
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	subq	%rax, %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	subq	%r11, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rax
	subq	%r11, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r10, -208(%rbp)        # 8-byte Spill
	shlq	$12, %r10
	leaq	-1(%r11), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leaq	(%r12,%rcx,8), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	leaq	56(%r12), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	(%r12,%r13,8), %rbx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_131:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movl	-84(%rbp), %r9d         # 4-byte Reload
.LBB9_132:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
.LBB9_133:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movl	%ecx, %eax
.LBB9_141:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%edx, %eax
	addl	%eax, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %esi
	cmpl	-76(%rbp), %r9d         # 4-byte Folded Reload
	je	.LBB9_142
.LBB9_10:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_29 Depth 3
                                        #         Child Loop BB9_33 Depth 4
                                        #       Child Loop BB9_40 Depth 3
                                        #       Child Loop BB9_46 Depth 3
                                        #       Child Loop BB9_50 Depth 3
                                        #       Child Loop BB9_110 Depth 3
                                        #       Child Loop BB9_52 Depth 3
                                        #         Child Loop BB9_56 Depth 4
                                        #         Child Loop BB9_60 Depth 4
                                        #       Child Loop BB9_64 Depth 3
                                        #       Child Loop BB9_70 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_124 Depth 3
                                        #       Child Loop BB9_76 Depth 3
                                        #         Child Loop BB9_80 Depth 4
                                        #         Child Loop BB9_84 Depth 4
                                        #       Child Loop BB9_88 Depth 3
                                        #       Child Loop BB9_94 Depth 3
                                        #       Child Loop BB9_98 Depth 3
                                        #       Child Loop BB9_138 Depth 3
	movl	$0, %eax
	testq	%r8, %r8
	je	.LBB9_27
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=2
	cmpq	$32, %r14
	jae	.LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%r12, %rax
	xorl	%edx, %edx
	jmp	.LBB9_20
	.p2align	4, 0x90
.LBB9_13:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	je	.LBB9_14
# %bb.15:                               # %.preheader30
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	movq	-160(%rbp), %rdx        # 8-byte Reload
	.p2align	4, 0x90
.LBB9_16:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-56(%rcx), %rsi
	leaq	-48(%rcx), %rdi
	movq	%rdi, %xmm0
	movq	%rsi, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	leaq	-40(%rcx), %rsi
	leaq	-32(%rcx), %rdi
	movq	%rdi, %xmm0
	movq	%rsi, %xmm2
	punpcklqdq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	movdqu	%xmm1, -56(%rcx)
	movdqu	%xmm2, -40(%rcx)
	leaq	-24(%rcx), %rsi
	leaq	-16(%rcx), %rdi
	movq	%rdi, %xmm0
	movq	%rsi, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	leaq	-8(%rcx), %rsi
	movq	%rcx, %xmm0
	movq	%rsi, %xmm2
	punpcklqdq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	movdqu	%xmm1, -24(%rcx)
	movdqu	%xmm2, -8(%rcx)
	addq	$8, %rax
	addq	$64, %rcx
	addq	$-2, %rdx
	jne	.LBB9_16
# %bb.17:                               #   in Loop: Header=BB9_10 Depth=2
	cmpq	$0, -176(%rbp)          # 8-byte Folded Reload
	je	.LBB9_19
.LBB9_18:                               #   in Loop: Header=BB9_10 Depth=2
	leaq	(%r12,%rax,8), %rcx
	leaq	(,%rax,8), %rdx
	movq	%rdx, %rsi
	orq	$8, %rsi
	addq	%r12, %rsi
	movq	%rcx, %xmm0
	movq	%rsi, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	movq	%rdx, %rcx
	orq	$16, %rcx
	addq	%r12, %rcx
	orq	$24, %rdx
	addq	%r12, %rdx
	movq	%rdx, %xmm1
	movq	%rcx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	movdqu	%xmm0, (%r12,%rax,8)
	movdqu	%xmm2, 16(%r12,%rax,8)
.LBB9_19:                               #   in Loop: Header=BB9_10 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	cmpq	%rcx, %r8
	movq	-56(%rbp), %rsi         # 8-byte Reload
	je	.LBB9_22
.LBB9_20:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%r8, %rcx
	subq	%rdx, %rcx
	.p2align	4, 0x90
.LBB9_21:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, (%rax)
	addq	$8, %rax
	addq	$-1, %rcx
	jne	.LBB9_21
.LBB9_22:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%r12, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_23:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rax, (%rax)
	jne	.LBB9_24
# %bb.25:                               #   in Loop: Header=BB9_23 Depth=3
	addq	$8, %rax
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jb	.LBB9_23
# %bb.26:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_27
	.p2align	4, 0x90
.LBB9_24:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_27:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, %r14d            # imm = 0xFFF
	jne	.LBB9_144
# %bb.28:                               # %.preheader26
                                        #   in Loop: Header=BB9_10 Depth=2
	addl	$1, %r9d
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	addl	%esi, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%r12, %rbx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	movabsq	$-3372857614747716250, %rdi # imm = 0xD13133DE9AFDB566
	xorl	%eax, %eax
	jmp	.LBB9_29
	.p2align	4, 0x90
.LBB9_37:                               #   in Loop: Header=BB9_29 Depth=3
	addq	$1, %rax
	addq	$-8, %r12
	addq	$8, %rdx
	addq	$-8, %r9
	addq	$8, %rbx
	cmpq	$512, %rax              # imm = 0x200
	je	.LBB9_38
.LBB9_29:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_33 Depth 4
	testq	%r11, %r11
	je	.LBB9_37
# %bb.30:                               #   in Loop: Header=BB9_29 Depth=3
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB9_31
# %bb.32:                               # %.preheader7
                                        #   in Loop: Header=BB9_29 Depth=3
	movq	-200(%rbp), %r8         # 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB9_33:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rdi, %rcx
	shrq	$12, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, %rdi
	shlq	$25, %rdi
	xorq	%rcx, %rdi
	movq	%rdi, %rcx
	shrq	$27, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, %rdi
	shrq	$12, %rdi
	xorq	%rcx, %rdi
	imulq	%r15, %rcx
	movq	%rcx, (%rdx,%rsi)
	movq	%rcx, (%rbx,%rsi)
	movq	%rdi, %rcx
	shlq	$25, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, %rdi
	shrq	$27, %rdi
	xorq	%rcx, %rdi
	movq	%rdi, %rcx
	imulq	%r15, %rcx
	movq	%rcx, 4096(%rdx,%rsi)
	movq	%rcx, 4096(%rbx,%rsi)
	addq	$8192, %rsi             # imm = 0x2000
	addq	$2, %r8
	jne	.LBB9_33
# %bb.34:                               # %.loopexit8
                                        #   in Loop: Header=BB9_29 Depth=3
	movq	%rsi, %r8
	subq	%r12, %r8
	subq	%r9, %rsi
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB9_37
	jmp	.LBB9_36
	.p2align	4, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_29 Depth=3
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rsi
	leaq	(%rsi,%r13,8), %r8
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB9_37
.LBB9_36:                               #   in Loop: Header=BB9_29 Depth=3
	movq	%rdi, %rcx
	shrq	$12, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, %r14
	shlq	$25, %r14
	xorq	%rcx, %r14
	movq	%r14, %rdi
	shrq	$27, %rdi
	xorq	%r14, %rdi
	movq	%rdi, %rcx
	imulq	%r15, %rcx
	movq	%rcx, (%r8)
	movq	%rcx, (%rsi)
	jmp	.LBB9_37
	.p2align	4, 0x90
.LBB9_38:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_103
# %bb.39:                               # %.preheader25
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_40:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rax,8), %rcx
	cmpq	(%rdi,%rax,8), %rcx
	jne	.LBB9_41
# %bb.42:                               #   in Loop: Header=BB9_40 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_40
# %bb.43:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_44
	.p2align	4, 0x90
.LBB9_103:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB9_104
	.p2align	4, 0x90
.LBB9_41:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
.LBB9_44:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_104
# %bb.45:                               # %.preheader24
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_46:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rax,8), %rdx
	cmpq	(%rdi,%rax,8), %rdx
	jne	.LBB9_47
# %bb.101:                              #   in Loop: Header=BB9_46 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_46
# %bb.102:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_48
	.p2align	4, 0x90
.LBB9_104:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB9_105:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB9_114:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rdi, %rsi
	movq	-96(%rbp), %r14         # 8-byte Reload
	xorl	%ebx, %ebx
	jmp	.LBB9_52
	.p2align	4, 0x90
.LBB9_61:                               #   in Loop: Header=BB9_52 Depth=3
	addq	$1, %rbx
	addq	$-8, %r14
	addq	$8, %rsi
	addq	$-8, %r8
	addq	$8, %rax
	cmpq	$512, %rbx              # imm = 0x200
	je	.LBB9_62
.LBB9_52:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_56 Depth 4
                                        #         Child Loop BB9_60 Depth 4
	testq	%r11, %r11
	je	.LBB9_61
# %bb.53:                               #   in Loop: Header=BB9_52 Depth=3
	movq	%rbx, %rcx
	shlq	$63, %rcx
	movq	%rcx, %rdx
	sarq	$63, %rdx
	movq	%rcx, %rdi
	sarq	$47, %rdi
	orq	%rdx, %rdi
	movq	%rcx, %rdx
	sarq	$31, %rdx
	sarq	$15, %rcx
	orq	%rdx, %rcx
	orq	%rdi, %rcx
	cmpq	$7, -112(%rbp)          # 8-byte Folded Reload
	jae	.LBB9_55
# %bb.54:                               #   in Loop: Header=BB9_52 Depth=3
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rbx,8), %r9
	leaq	(%r9,%r13,8), %rdx
	cmpq	$0, -208(%rbp)          # 8-byte Folded Reload
	jne	.LBB9_59
	jmp	.LBB9_61
	.p2align	4, 0x90
.LBB9_55:                               # %.preheader5
                                        #   in Loop: Header=BB9_52 Depth=3
	movq	-136(%rbp), %rdx        # 8-byte Reload
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB9_56:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rsi,%r9)
	movq	%rcx, (%rax,%r9)
	movq	%rcx, 4096(%rsi,%r9)
	movq	%rcx, 4096(%rax,%r9)
	movq	%rcx, 8192(%rsi,%r9)
	movq	%rcx, 8192(%rax,%r9)
	movq	%rcx, 12288(%rsi,%r9)
	movq	%rcx, 12288(%rax,%r9)
	movq	%rcx, 16384(%rsi,%r9)
	movq	%rcx, 16384(%rax,%r9)
	movq	%rcx, 20480(%rsi,%r9)
	movq	%rcx, 20480(%rax,%r9)
	movq	%rcx, 24576(%rsi,%r9)
	movq	%rcx, 24576(%rax,%r9)
	movq	%rcx, 28672(%rsi,%r9)
	movq	%rcx, 28672(%rax,%r9)
	addq	$32768, %r9             # imm = 0x8000
	addq	$8, %rdx
	jne	.LBB9_56
# %bb.57:                               # %.loopexit6
                                        #   in Loop: Header=BB9_52 Depth=3
	movq	%r9, %rdx
	subq	%r14, %rdx
	subq	%r8, %r9
	cmpq	$0, -208(%rbp)          # 8-byte Folded Reload
	je	.LBB9_61
.LBB9_59:                               # %.preheader3
                                        #   in Loop: Header=BB9_52 Depth=3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_60:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rdx,%r12)
	movq	%rcx, (%r9,%r12)
	addq	$4096, %r12             # imm = 0x1000
	cmpq	%r12, %r10
	jne	.LBB9_60
	jmp	.LBB9_61
	.p2align	4, 0x90
.LBB9_62:                               #   in Loop: Header=BB9_10 Depth=2
	movl	-44(%rbp), %ebx         # 4-byte Reload
	addl	-80(%rbp), %ebx         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_117
# %bb.63:                               # %.preheader19
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_64:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rax,8), %rcx
	cmpq	(%rdi,%rax,8), %rcx
	jne	.LBB9_65
# %bb.66:                               #   in Loop: Header=BB9_64 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_64
# %bb.67:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_68
	.p2align	4, 0x90
.LBB9_117:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB9_118
	.p2align	4, 0x90
.LBB9_65:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
.LBB9_68:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_118
# %bb.69:                               # %.preheader18
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_70:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rax,8), %rdx
	cmpq	(%rdi,%rax,8), %rdx
	jne	.LBB9_71
# %bb.115:                              #   in Loop: Header=BB9_70 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_70
# %bb.116:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_72
	.p2align	4, 0x90
.LBB9_118:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB9_119:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r14d
.LBB9_128:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%ebx, -56(%rbp)         # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rdi, %rsi
	movq	-96(%rbp), %r12         # 8-byte Reload
	xorl	%ebx, %ebx
	jmp	.LBB9_76
	.p2align	4, 0x90
.LBB9_85:                               #   in Loop: Header=BB9_76 Depth=3
	addq	$1, %rbx
	addq	$-8, %r12
	addq	$8, %rsi
	addq	$-8, %r8
	addq	$8, %rax
	cmpq	$512, %rbx              # imm = 0x200
	je	.LBB9_86
.LBB9_76:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_80 Depth 4
                                        #         Child Loop BB9_84 Depth 4
	testb	$1, %bl
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	cmoveq	%rdx, %rcx
	testq	%r11, %r11
	je	.LBB9_85
# %bb.77:                               #   in Loop: Header=BB9_76 Depth=3
	movq	%rcx, %rdx
	shlq	$16, %rdx
	orq	%rcx, %rdx
	movq	%rcx, %rdi
	shlq	$32, %rdi
	shlq	$48, %rcx
	orq	%rdi, %rcx
	orq	%rdx, %rcx
	cmpq	$7, -112(%rbp)          # 8-byte Folded Reload
	jae	.LBB9_79
# %bb.78:                               #   in Loop: Header=BB9_76 Depth=3
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rbx,8), %r9
	leaq	(%r9,%r13,8), %rdx
	testb	$7, %r11b
	jne	.LBB9_83
	jmp	.LBB9_85
	.p2align	4, 0x90
.LBB9_79:                               # %.preheader1
                                        #   in Loop: Header=BB9_76 Depth=3
	movq	-136(%rbp), %rdx        # 8-byte Reload
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB9_80:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rsi,%r9)
	movq	%rcx, (%rax,%r9)
	movq	%rcx, 4096(%rsi,%r9)
	movq	%rcx, 4096(%rax,%r9)
	movq	%rcx, 8192(%rsi,%r9)
	movq	%rcx, 8192(%rax,%r9)
	movq	%rcx, 12288(%rsi,%r9)
	movq	%rcx, 12288(%rax,%r9)
	movq	%rcx, 16384(%rsi,%r9)
	movq	%rcx, 16384(%rax,%r9)
	movq	%rcx, 20480(%rsi,%r9)
	movq	%rcx, 20480(%rax,%r9)
	movq	%rcx, 24576(%rsi,%r9)
	movq	%rcx, 24576(%rax,%r9)
	movq	%rcx, 28672(%rsi,%r9)
	movq	%rcx, 28672(%rax,%r9)
	addq	$32768, %r9             # imm = 0x8000
	addq	$8, %rdx
	jne	.LBB9_80
# %bb.81:                               # %.loopexit2
                                        #   in Loop: Header=BB9_76 Depth=3
	movq	%r9, %rdx
	subq	%r12, %rdx
	subq	%r8, %r9
	testb	$7, %r11b
	je	.LBB9_85
.LBB9_83:                               # %.preheader
                                        #   in Loop: Header=BB9_76 Depth=3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_84:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rdx,%rdi)
	movq	%rcx, (%r9,%rdi)
	addq	$4096, %rdi             # imm = 0x1000
	cmpq	%rdi, %r10
	jne	.LBB9_84
	jmp	.LBB9_85
	.p2align	4, 0x90
.LBB9_86:                               #   in Loop: Header=BB9_10 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	%r14d, %eax
	movl	-56(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_131
# %bb.87:                               # %.preheader13
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	-84(%rbp), %r9d         # 4-byte Reload
	.p2align	4, 0x90
.LBB9_88:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r12,%rax,8), %rcx
	cmpq	(%rbx,%rax,8), %rcx
	jne	.LBB9_89
# %bb.90:                               #   in Loop: Header=BB9_88 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_88
# %bb.91:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_92
	.p2align	4, 0x90
.LBB9_89:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_92:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_132
# %bb.93:                               # %.preheader12
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_94:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r12,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_95
# %bb.129:                              #   in Loop: Header=BB9_94 Depth=3
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB9_94
# %bb.130:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_96
.LBB9_47:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_48:                               #   in Loop: Header=BB9_10 Depth=2
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_105
# %bb.49:                               # %.preheader23
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_50:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rcx,8), %rdx
	cmpq	(%rdi,%rcx,8), %rdx
	jne	.LBB9_51
# %bb.106:                              #   in Loop: Header=BB9_50 Depth=3
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB9_50
# %bb.107:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%edx, %edx
	jmp	.LBB9_108
.LBB9_71:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_72:                               #   in Loop: Header=BB9_10 Depth=2
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_119
# %bb.73:                               # %.preheader17
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_74:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rcx,8), %rdx
	cmpq	(%rdi,%rcx,8), %rdx
	jne	.LBB9_75
# %bb.120:                              #   in Loop: Header=BB9_74 Depth=3
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB9_74
# %bb.121:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%r14d, %r14d
	jmp	.LBB9_122
.LBB9_95:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
.LBB9_96:                               #   in Loop: Header=BB9_10 Depth=2
	addl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_133
# %bb.97:                               # %.preheader11
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_98:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r12,%rax,8), %rdx
	cmpq	(%rbx,%rax,8), %rdx
	jne	.LBB9_99
# %bb.134:                              #   in Loop: Header=BB9_98 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_98
# %bb.135:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_136
.LBB9_51:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %edx
.LBB9_108:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movl	%edx, -80(%rbp)         # 4-byte Spill
	je	.LBB9_113
# %bb.109:                              # %.preheader20
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_110:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rax,8), %rcx
	cmpq	(%rdi,%rax,8), %rcx
	jne	.LBB9_111
# %bb.112:                              #   in Loop: Header=BB9_110 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_110
.LBB9_113:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB9_114
.LBB9_75:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %r14d
.LBB9_122:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_127
# %bb.123:                              # %.preheader14
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_124:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsi,%rax,8), %rcx
	cmpq	(%rdi,%rax,8), %rcx
	jne	.LBB9_125
# %bb.126:                              #   in Loop: Header=BB9_124 Depth=3
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB9_124
.LBB9_127:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB9_128
.LBB9_99:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_136:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%ecx, %eax
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB9_141
# %bb.137:                              # %.preheader9
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_138:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r12,%rcx,8), %rsi
	cmpq	(%rbx,%rcx,8), %rsi
	jne	.LBB9_139
# %bb.140:                              #   in Loop: Header=BB9_138 Depth=3
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB9_138
	jmp	.LBB9_141
.LBB9_14:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -176(%rbp)          # 8-byte Folded Reload
	jne	.LBB9_18
	jmp	.LBB9_19
.LBB9_111:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB9_114
.LBB9_125:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB9_128
.LBB9_139:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %edx
	jmp	.LBB9_141
.LBB9_100:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	addq	$1048760, %rsp          # imm = 0x1000B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_144:
	movl	$.L.str.8, %edi
	movl	$.L__func__.memtest_fill_random, %edx
	movl	$.L.str.9, %ecx
	movl	$146, %esi
	callq	__assert_func
.Lfunc_end9:
	.size	memtest_preserving_test, .Lfunc_end9-memtest_preserving_test
                                        # -- End function
	.globl	memtest_alloc_and_test  # -- Begin function memtest_alloc_and_test
	.p2align	4, 0x90
	.type	memtest_alloc_and_test,@function
memtest_alloc_and_test:                 # @memtest_alloc_and_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	%rdi, %rbx
	shlq	$20, %rbx
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB10_2
# %bb.1:
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	$1, %ecx
	callq	memtest_test
	movq	%r12, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_2:
	callq	__getreent
	movq	24(%rax), %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end10:
	.size	memtest_alloc_and_test, .Lfunc_end10-memtest_alloc_and_test
                                        # -- End function
	.globl	memtest                 # -- Begin function memtest
	.p2align	4, 0x90
	.type	memtest,@function
memtest:                                # @memtest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$ws, %edx
	movl	$1, %edi
	movl	$21523, %esi            # imm = 0x5413
	xorl	%eax, %eax
	callq	ioctl
	cmpl	$-1, %eax
	jne	.LBB11_2
# %bb.1:
	movl	$5242900, ws(%rip)      # imm = 0x500014
.LBB11_2:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	memtest_alloc_and_test
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end11:
	.size	memtest, .Lfunc_end11-memtest
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[H\033[2J"
	.size	.L.str, 8

	.type	ws,@object              # @ws
	.local	ws
	.comm	ws,8,2
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Please keep the test running several minutes per GB of memory.\n"
	.size	.L.str.2, 64

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Also check http://www.memtest86.com/ and http://pyropus.ca/software/memtester/"
	.size	.L.str.3, 79

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033[H\033[2K"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s [%d]\n"
	.size	.L.str.5, 9

	.type	progress_printed,@object # @progress_printed
	.comm	progress_printed,8,8
	.type	progress_full,@object   # @progress_full
	.comm	progress_full,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n*** MEMORY ADDRESSING ERROR: %p contains %lu\n"
	.size	.L.str.7, 47

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/memtest.c"
	.size	.L.str.8, 75

	.type	.L__func__.memtest_fill_random,@object # @__func__.memtest_fill_random
.L__func__.memtest_fill_random:
	.asciz	"memtest_fill_random"
	.size	.L__func__.memtest_fill_random, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(bytes & 4095) == 0"
	.size	.L.str.9, 20

	.type	.L__func__.memtest_fill_value,@object # @__func__.memtest_fill_value
.L__func__.memtest_fill_value:
	.asciz	"memtest_fill_value"
	.size	.L__func__.memtest_fill_value, 19

	.type	.L__func__.memtest_compare,@object # @__func__.memtest_compare
.L__func__.memtest_compare:
	.asciz	"memtest_compare"
	.size	.L__func__.memtest_compare, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n*** MEMORY ERROR DETECTED: %p != %p (%lu vs %lu)\n"
	.size	.L.str.10, 51

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Compare"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Addressing test"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Random fill"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Solid fill"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Checkerboard fill"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unable to allocate %zu megabytes: %s"
	.size	.L.str.16, 37

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\nYour memory passed this test.\n"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Please if you are still in doubt use the following two tools:\n"
	.size	.L.str.18, 63

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1) memtest86: http://www.memtest86.com/\n"
	.size	.L.str.19, 41

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"2) memtester: http://pyropus.ca/software/memtester/\n"
	.size	.L.str.20, 53

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
