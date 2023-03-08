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
	movl	$42, __A_VARIABLE(%rip)
	movzwl	ws+2(%rip), %eax
	movzwl	ws(%rip), %ecx
	addl	$-2, %ecx
	imull	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movzwl	ws+2(%rip), %eax
	movzwl	ws(%rip), %ecx
	addl	$-2, %ecx
	imull	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	subq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_1
# %bb.2:
	movl	%edx, %r15d
	leaq	(%rcx,%rcx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	xorl	%r14d, %r14d
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rbx, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r15d
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=1
	addq	$8, %r13
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	je	.LBB3_10
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	movq	%r13, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_9
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	movzwl	%r14w, %eax
	testq	%rax, %rax
	jne	.LBB3_9
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	movl	%r15d, %r12d
	movq	progress_full(%rip), %rax
	imulq	%r14, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_8
# %bb.6:                                # %.preheader2
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_7:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movl	$65, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	subq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB3_7
	jmp	.LBB3_8
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB3_22
# %bb.11:
	xorl	%r13d, %r13d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_20:                               #   in Loop: Header=BB3_12 Depth=1
	movq	%r14, progress_printed(%rip)
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB3_21:                               #   in Loop: Header=BB3_12 Depth=1
	addq	$8, %rsi
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r13
	jae	.LBB3_22
.LBB3_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
	movq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jne	.LBB3_13
# %bb.15:                               #   in Loop: Header=BB3_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_21
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	movzwl	%r13w, %eax
	testq	%rax, %rax
	jne	.LBB3_21
# %bb.17:                               #   in Loop: Header=BB3_12 Depth=1
	movq	%rsi, %r12
	leaq	(%rcx,%r13), %rax
	imulq	progress_full(%rip), %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_20
# %bb.18:                               # %.preheader
                                        #   in Loop: Header=BB3_12 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_19:                               #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movl	$65, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	subq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jb	.LBB3_19
	jmp	.LBB3_20
.LBB3_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_22:
	xorl	%eax, %eax
.LBB3_23:
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
.LBB3_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%r15d, %r15d
	je	.LBB3_23
# %bb.14:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, %esi             # imm = 0xFFF
	jne	.LBB4_13
# %bb.1:
	movq	%rsi, %rax
	shrq	$4, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	shrq	$13, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rcx              # imm = 0x200
	je	.LBB4_12
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #       Child Loop BB4_8 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movabsq	$2685821657736338717, %rdi # imm = 0x2545F4914F6CDD1D
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB4_10:                               #   in Loop: Header=BB4_4 Depth=2
	addq	$4096, %r13             # imm = 0x1000
	addq	$4096, %r14             # imm = 0x1000
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	subq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, %esi             # imm = 0xFFF
	jne	.LBB5_13
# %bb.1:
	movq	%rsi, %rax
	shrq	$4, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	shrq	$13, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%r8b, %r12d
	xorl	%eax, %eax
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_11:                               #   in Loop: Header=BB5_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	je	.LBB5_12
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #       Child Loop BB5_8 Depth 3
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testb	$1, %al
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmoveq	-80(%rbp), %rdi         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
.LBB5_10:                               #   in Loop: Header=BB5_4 Depth=2
	addq	$4096, %rdx             # imm = 0x1000
	addq	$4096, %rbx             # imm = 0x1000
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r15
	je	.LBB5_11
.LBB5_4:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_8 Depth 3
	movq	%rdi, (%rbx)
	movq	%rdi, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	subq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, %esi             # imm = 0xFFF
	jne	.LBB6_15
# %bb.1:
	shrq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB6_12:                               #   in Loop: Header=BB6_3 Depth=1
	addq	$8, %r15
	addq	$8, %r13
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r14
	jae	.LBB6_13
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	movq	(%r15), %rcx
	movq	(%r13), %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rcx
	jne	.LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	subq	progress_printed(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jb	.LBB6_10
	jmp	.LBB6_11
.LBB6_13:
	xorl	%eax, %eax
	jmp	.LBB6_14
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%edx, %edx
	jne	.LBB6_5
.LBB6_14:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	addl	%r12d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	je	.LBB7_7
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$40, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, -76(%rbp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB8_1
# %bb.2:
	movl	%ecx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	%rsi, %r15
	shrq	$4, %r15
	leaq	(%rdi,%r15,8), %rdx
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	movl	%r14d, -60(%rbp)        # 4-byte Spill
	movq	%rsi, %rax
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_45:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	cmpl	-76(%rbp), %r12d        # 4-byte Folded Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB8_46
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_11 Depth 3
                                        #     Child Loop BB8_21 Depth 2
                                        #       Child Loop BB8_25 Depth 3
                                        #     Child Loop BB8_35 Depth 2
                                        #       Child Loop BB8_39 Depth 3
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	je	.LBB8_4
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.12, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	memtest_addressing
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.13, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	memtest_fill_random
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	memtest_addressing
	movq	%rbx, %rsi
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	memtest_fill_random
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	addl	-44(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	-72(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB8_7
	.p2align	4, 0x90
.LBB8_15:                               #   in Loop: Header=BB8_7 Depth=2
	movl	$.L.str.11, %edi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rdx         # 8-byte Reload
.LBB8_16:                               #   in Loop: Header=BB8_7 Depth=2
	addl	%r14d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	movl	-60(%rbp), %r14d        # 4-byte Reload
	je	.LBB8_17
.LBB8_7:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_11 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB8_15
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, -56(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_47
# %bb.9:                                #   in Loop: Header=BB8_7 Depth=2
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB8_14
# %bb.10:                               # %.preheader3
                                        #   in Loop: Header=BB8_7 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_11:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_12
# %bb.13:                               #   in Loop: Header=BB8_11 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jb	.LBB8_11
.LBB8_14:                               #   in Loop: Header=BB8_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_16
.LBB8_12:                               #   in Loop: Header=BB8_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_17:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.14, %edi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	xorl	%edx, %edx
	movq	$-1, %rcx
	movl	$83, %r8d
	movl	%r14d, %r9d
	callq	memtest_fill_value
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_20
	.p2align	4, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	xorl	%edx, %edx
	movq	$-1, %rcx
	movl	$83, %r8d
	xorl	%r9d, %r9d
	callq	memtest_fill_value
.LBB8_20:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB8_21
	.p2align	4, 0x90
.LBB8_29:                               #   in Loop: Header=BB8_21 Depth=2
	movl	$.L.str.11, %edi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rdx         # 8-byte Reload
.LBB8_30:                               #   in Loop: Header=BB8_21 Depth=2
	addl	%r14d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ebx
	movl	-60(%rbp), %r14d        # 4-byte Reload
	je	.LBB8_31
.LBB8_21:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_25 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB8_29
# %bb.22:                               #   in Loop: Header=BB8_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, -56(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_47
# %bb.23:                               #   in Loop: Header=BB8_21 Depth=2
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB8_28
# %bb.24:                               # %.preheader1
                                        #   in Loop: Header=BB8_21 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_25:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_26
# %bb.27:                               #   in Loop: Header=BB8_25 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jb	.LBB8_25
.LBB8_28:                               #   in Loop: Header=BB8_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_30
.LBB8_26:                               #   in Loop: Header=BB8_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_30
	.p2align	4, 0x90
.LBB8_31:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.15, %edi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movl	$67, %r8d
	movl	%r14d, %r9d
	callq	memtest_fill_value
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_34
	.p2align	4, 0x90
.LBB8_33:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movl	$67, %r8d
	xorl	%r9d, %r9d
	callq	memtest_fill_value
.LBB8_34:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%r12d, -44(%rbp)        # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB8_35
	.p2align	4, 0x90
.LBB8_43:                               #   in Loop: Header=BB8_35 Depth=2
	movl	$.L.str.11, %edi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	memtest_compare
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-72(%rbp), %rdx         # 8-byte Reload
.LBB8_44:                               #   in Loop: Header=BB8_35 Depth=2
	addl	%r14d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ebx
	movl	-60(%rbp), %r14d        # 4-byte Reload
	je	.LBB8_45
.LBB8_35:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_39 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB8_43
# %bb.36:                               #   in Loop: Header=BB8_35 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, -56(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_47
# %bb.37:                               #   in Loop: Header=BB8_35 Depth=2
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB8_42
# %bb.38:                               # %.preheader
                                        #   in Loop: Header=BB8_35 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_39:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_40
# %bb.41:                               #   in Loop: Header=BB8_39 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jb	.LBB8_39
.LBB8_42:                               #   in Loop: Header=BB8_35 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_44
.LBB8_40:                               #   in Loop: Header=BB8_35 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_44
.LBB8_1:
	xorl	%eax, %eax
.LBB8_46:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_47:
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
	subq	$1048744, %rsp          # imm = 0x1000A8
	movl	%edx, -60(%rbp)         # 4-byte Spill
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, %esi             # imm = 0xFFF
	je	.LBB9_1
.LBB9_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$1048744, %rsp          # imm = 0x1000A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_1:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8192, %rsi             # imm = 0x2000
	jb	.LBB9_14
# %bb.2:
	movabsq	$2685821657736338717, %r14 # imm = 0x2545F4914F6CDD1D
	leaq	(%rdi,%rsi), %r15
	addq	$-4088, %r15            # imm = 0xF008
	xorl	%ecx, %ecx
	movq	%rdi, %r13
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r15, -88(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_11:                               #   in Loop: Header=BB9_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
.LBB9_12:                               #   in Loop: Header=BB9_3 Depth=1
	movq	%r13, %rdi
	leaq	-1048784(%rbp), %rsi
	movq	%r8, %rbx
	movl	%eax, %r12d
	callq	memcpy
	leaq	(%r13,%rbx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %ecx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	subq	-80(%rbp), %rsi         # 8-byte Folded Reload
	je	.LBB9_13
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_31 Depth 3
                                        #         Child Loop BB9_35 Depth 4
                                        #       Child Loop BB9_41 Depth 3
                                        #       Child Loop BB9_44 Depth 3
                                        #       Child Loop BB9_48 Depth 3
                                        #       Child Loop BB9_54 Depth 3
                                        #       Child Loop BB9_111 Depth 3
                                        #       Child Loop BB9_117 Depth 3
                                        #       Child Loop BB9_56 Depth 3
                                        #         Child Loop BB9_60 Depth 4
                                        #         Child Loop BB9_64 Depth 4
                                        #       Child Loop BB9_67 Depth 3
                                        #       Child Loop BB9_70 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_80 Depth 3
                                        #       Child Loop BB9_125 Depth 3
                                        #       Child Loop BB9_131 Depth 3
                                        #       Child Loop BB9_82 Depth 3
                                        #         Child Loop BB9_86 Depth 4
                                        #         Child Loop BB9_90 Depth 4
                                        #       Child Loop BB9_93 Depth 3
                                        #       Child Loop BB9_96 Depth 3
                                        #       Child Loop BB9_100 Depth 3
                                        #       Child Loop BB9_106 Depth 3
                                        #       Child Loop BB9_139 Depth 3
                                        #       Child Loop BB9_145 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4096, %rsi             # imm = 0x1000
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jne	.LBB9_5
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	addq	$-4096, %r13            # imm = 0xF000
	movl	$42, __A_VARIABLE(%rip)
	movl	$8192, %esi             # imm = 0x2000
	movl	$8192, %edx             # imm = 0x2000
	leaq	-1048784(%rbp), %rdi
	jmp	.LBB9_9
	.p2align	4, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=1
	movl	$1048576, %edx          # imm = 0x100000
	cmpq	$1048575, %rsi          # imm = 0xFFFFF
	leaq	-1048784(%rbp), %rdi
	ja	.LBB9_9
# %bb.6:                                #   in Loop: Header=BB9_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %esi             # imm = 0x1000
	jne	.LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, %rdx
	jmp	.LBB9_10
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=1
	leaq	-4096(%rsi), %rdx
	.p2align	4, 0x90
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB9_10:                               #   in Loop: Header=BB9_3 Depth=1
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r13, %rsi
	callq	memcpy
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, %r8
	shrq	$3, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB9_11
# %bb.15:                               #   in Loop: Header=BB9_3 Depth=1
	movq	%rdx, %r12
	shrq	$4, %r12
	movq	%rdx, %rcx
	shrq	$13, %rcx
	leaq	-1(%r8), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	leaq	-1(%rcx), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%r8d, %eax
	andl	$3, %eax
	movl	%ecx, %esi
	andl	$1, %esi
	movl	%ecx, %r9d
	andl	$3, %r9d
	movq	%rax, -144(%rbp)        # 8-byte Spill
	subq	%r8, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	negq	%rdi
	leaq	(,%r12,8), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	subq	%rax, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	subq	%rcx, %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rcx, %rax
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	subq	%rcx, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r9, -200(%rbp)         # 8-byte Spill
	shlq	$12, %r9
	leaq	(,%r12,8), %rbx
	addq	%r13, %rbx
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_16
	.p2align	4, 0x90
.LBB9_146:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB9_148:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%edi, %eax
	movl	-56(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edi
	cmpl	-60(%rbp), %r10d        # 4-byte Folded Reload
	je	.LBB9_12
.LBB9_16:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_31 Depth 3
                                        #         Child Loop BB9_35 Depth 4
                                        #       Child Loop BB9_41 Depth 3
                                        #       Child Loop BB9_44 Depth 3
                                        #       Child Loop BB9_48 Depth 3
                                        #       Child Loop BB9_54 Depth 3
                                        #       Child Loop BB9_111 Depth 3
                                        #       Child Loop BB9_117 Depth 3
                                        #       Child Loop BB9_56 Depth 3
                                        #         Child Loop BB9_60 Depth 4
                                        #         Child Loop BB9_64 Depth 4
                                        #       Child Loop BB9_67 Depth 3
                                        #       Child Loop BB9_70 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_80 Depth 3
                                        #       Child Loop BB9_125 Depth 3
                                        #       Child Loop BB9_131 Depth 3
                                        #       Child Loop BB9_82 Depth 3
                                        #         Child Loop BB9_86 Depth 4
                                        #         Child Loop BB9_90 Depth 4
                                        #       Child Loop BB9_93 Depth 3
                                        #       Child Loop BB9_96 Depth 3
                                        #       Child Loop BB9_100 Depth 3
                                        #       Child Loop BB9_106 Depth 3
                                        #       Child Loop BB9_139 Depth 3
                                        #       Child Loop BB9_145 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB9_27
# %bb.17:                               #   in Loop: Header=BB9_16 Depth=2
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%r13, %rax
	cmpq	$3, -168(%rbp)          # 8-byte Folded Reload
	jb	.LBB9_19
	.p2align	4, 0x90
.LBB9_18:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%rax), %rsi
	movq	%rsi, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rax), %rsi
	movq	%rsi, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rax), %rsi
	movq	%rsi, 24(%rax)
	addq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	jne	.LBB9_18
.LBB9_19:                               #   in Loop: Header=BB9_16 Depth=2
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	je	.LBB9_22
# %bb.20:                               # %.preheader41
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB9_21:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, (%rax)
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jne	.LBB9_21
.LBB9_22:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_23:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rax, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_24
# %bb.25:                               #   in Loop: Header=BB9_23 Depth=3
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rcx
	jb	.LBB9_23
# %bb.26:                               #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_29
	.p2align	4, 0x90
.LBB9_27:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB9_28
	.p2align	4, 0x90
.LBB9_24:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$1, %eax
.LBB9_28:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_29:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$4095, %edx             # imm = 0xFFF
	jne	.LBB9_161
# %bb.30:                               #   in Loop: Header=BB9_16 Depth=2
	addl	$1, %r10d
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	addl	%edi, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdx
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%rbx, %rsi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movabsq	$-3372857614747716250, %r10 # imm = 0xD13133DE9AFDB566
	xorl	%ebx, %ebx
	jmp	.LBB9_31
	.p2align	4, 0x90
.LBB9_39:                               #   in Loop: Header=BB9_31 Depth=3
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-8, %r11
	addq	$8, %rsi
	addq	$-8, %r15
	addq	$8, %rdx
	cmpq	$512, %rbx              # imm = 0x200
	je	.LBB9_40
.LBB9_31:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_35 Depth 4
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB9_39
# %bb.32:                               #   in Loop: Header=BB9_31 Depth=3
	cmpq	$0, -120(%rbp)          # 8-byte Folded Reload
	je	.LBB9_33
# %bb.34:                               # %.preheader7
                                        #   in Loop: Header=BB9_31 Depth=3
	movq	-192(%rbp), %rax        # 8-byte Reload
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB9_35:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        #       Parent Loop BB9_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r10, %rdi
	shrq	$12, %rdi
	xorq	%r10, %rdi
	movq	%rdi, %rcx
	shlq	$25, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, %rdi
	shrq	$27, %rdi
	xorq	%rcx, %rdi
	movq	%rdi, %rcx
	shrq	$12, %rcx
	xorq	%rdi, %rcx
	imulq	%r14, %rdi
	movq	%rdi, (%rsi,%r8)
	movq	%rdi, (%rdx,%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdi
	shlq	$25, %rdi
	xorq	%rcx, %rdi
	movq	%rdi, %r10
	shrq	$27, %r10
	xorq	%rdi, %r10
	movq	%r10, %rcx
	imulq	%r14, %rcx
	movq	%rcx, 4096(%rsi,%r8)
	movq	%rcx, 4096(%rdx,%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8192, %r8              # imm = 0x2000
	addq	$2, %rax
	jne	.LBB9_35
# %bb.36:                               # %.loopexit8
                                        #   in Loop: Header=BB9_31 Depth=3
	movq	%r8, %rax
	subq	%r11, %rax
	subq	%r15, %r8
	cmpq	$0, -208(%rbp)          # 8-byte Folded Reload
	je	.LBB9_39
	jmp	.LBB9_38
	.p2align	4, 0x90
.LBB9_33:                               #   in Loop: Header=BB9_31 Depth=3
	leaq	(,%rbx,8), %r8
	addq	%r13, %r8
	leaq	(%r8,%r12,8), %rax
	cmpq	$0, -208(%rbp)          # 8-byte Folded Reload
	je	.LBB9_39
.LBB9_38:                               #   in Loop: Header=BB9_31 Depth=3
	movq	%r10, %rcx
	shrq	$12, %rcx
	xorq	%r10, %rcx
	movq	%rcx, %rdi
	shlq	$25, %rdi
	xorq	%rcx, %rdi
	movq	%rdi, %r10
	shrq	$27, %r10
	xorq	%rdi, %r10
	movq	%r10, %rcx
	imulq	%r14, %rcx
	movq	%rcx, (%rax)
	movq	%rcx, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_39
	.p2align	4, 0x90
.LBB9_40:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_41:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r11,%rax,8), %rcx
	cmpq	4096(%r11,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_42
# %bb.149:                              #   in Loop: Header=BB9_41 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r11,%rax,8), %rcx
	cmpq	4104(%r11,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_42
# %bb.150:                              #   in Loop: Header=BB9_41 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB9_41
	jmp	.LBB9_43
	.p2align	4, 0x90
.LBB9_42:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_43:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_44:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-4104(%rdx,%rax,8), %rcx
	cmpq	-8(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_45
# %bb.151:                              #   in Loop: Header=BB9_44 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-4096(%rdx,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_45
# %bb.152:                              #   in Loop: Header=BB9_44 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB9_44
	jmp	.LBB9_46
	.p2align	4, 0x90
.LBB9_45:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_46:                               #   in Loop: Header=BB9_16 Depth=2
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ecx
	testq	%r12, %r12
	je	.LBB9_52
# %bb.47:                               # %.preheader35
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_48:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rbx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_49
# %bb.50:                               #   in Loop: Header=BB9_48 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_48
# %bb.51:                               #   in Loop: Header=BB9_16 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_52
	.p2align	4, 0x90
.LBB9_49:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
.LBB9_52:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_109
# %bb.53:                               # %.preheader33
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_54:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rsi
	cmpq	(%rbx,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_55
# %bb.108:                              #   in Loop: Header=BB9_54 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_54
	jmp	.LBB9_109
	.p2align	4, 0x90
.LBB9_55:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB9_109:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %esi
	testq	%r12, %r12
	je	.LBB9_115
# %bb.110:                              # %.preheader31
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_111:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rsi
	cmpq	(%rbx,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_112
# %bb.113:                              #   in Loop: Header=BB9_111 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_111
# %bb.114:                              #   in Loop: Header=BB9_16 Depth=2
	xorl	%esi, %esi
	jmp	.LBB9_115
	.p2align	4, 0x90
.LBB9_112:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
.LBB9_115:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_120
# %bb.116:                              # %.preheader29
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_117:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rbx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_118
# %bb.119:                              #   in Loop: Header=BB9_117 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_117
.LBB9_120:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB9_121
	.p2align	4, 0x90
.LBB9_118:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB9_121:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%edx, %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdx
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	xorl	%edi, %edi
	jmp	.LBB9_56
	.p2align	4, 0x90
.LBB9_65:                               #   in Loop: Header=BB9_56 Depth=3
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-8, %r10
	addq	$8, %rbx
	addq	$-8, %r8
	addq	$8, %rdx
	cmpq	$512, %rdi              # imm = 0x200
	je	.LBB9_66
.LBB9_56:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_60 Depth 4
                                        #         Child Loop BB9_64 Depth 4
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB9_65
# %bb.57:                               #   in Loop: Header=BB9_56 Depth=3
	movq	%rdi, %rax
	shlq	$63, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	movq	%rax, %rsi
	sarq	$47, %rsi
	orq	%rcx, %rsi
	movq	%rax, %rcx
	sarq	$31, %rcx
	sarq	$15, %rax
	orq	%rcx, %rax
	orq	%rsi, %rax
	cmpq	$3, -120(%rbp)          # 8-byte Folded Reload
	jae	.LBB9_59
# %bb.58:                               #   in Loop: Header=BB9_56 Depth=3
	leaq	(,%rdi,8), %rsi
	addq	%r13, %rsi
	leaq	(%rsi,%r12,8), %rcx
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	jne	.LBB9_63
	jmp	.LBB9_65
	.p2align	4, 0x90
.LBB9_59:                               # %.preheader5
                                        #   in Loop: Header=BB9_56 Depth=3
	movq	-152(%rbp), %rcx        # 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB9_60:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        #       Parent Loop BB9_56 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, (%rbx,%rsi)
	movq	%rax, (%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 4096(%rbx,%rsi)
	movq	%rax, 4096(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8192(%rbx,%rsi)
	movq	%rax, 8192(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 12288(%rbx,%rsi)
	movq	%rax, 12288(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16384, %rsi            # imm = 0x4000
	addq	$4, %rcx
	jne	.LBB9_60
# %bb.61:                               # %.loopexit6
                                        #   in Loop: Header=BB9_56 Depth=3
	movq	%rsi, %rcx
	subq	%r10, %rcx
	subq	%r8, %rsi
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB9_65
.LBB9_63:                               # %.preheader3
                                        #   in Loop: Header=BB9_56 Depth=3
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB9_64:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        #       Parent Loop BB9_56 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, (%rcx,%r15)
	movq	%rax, (%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4096, %r15             # imm = 0x1000
	cmpq	%r15, %r9
	jne	.LBB9_64
	jmp	.LBB9_65
	.p2align	4, 0x90
.LBB9_66:                               #   in Loop: Header=BB9_16 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	-48(%rbp), %eax         # 4-byte Folded Reload
	addl	%eax, -56(%rbp)         # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_67:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r11,%rax,8), %rcx
	cmpq	4096(%r11,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_68
# %bb.153:                              #   in Loop: Header=BB9_67 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r11,%rax,8), %rcx
	cmpq	4104(%r11,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_68
# %bb.154:                              #   in Loop: Header=BB9_67 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB9_67
	jmp	.LBB9_69
	.p2align	4, 0x90
.LBB9_68:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_69:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_70:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-4104(%rdx,%rax,8), %rcx
	cmpq	-8(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_71
# %bb.155:                              #   in Loop: Header=BB9_70 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-4096(%rdx,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_71
# %bb.156:                              #   in Loop: Header=BB9_70 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB9_70
	jmp	.LBB9_72
	.p2align	4, 0x90
.LBB9_71:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_72:                               #   in Loop: Header=BB9_16 Depth=2
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ecx
	testq	%r12, %r12
	je	.LBB9_78
# %bb.73:                               # %.preheader25
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_74:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rbx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_75
# %bb.76:                               #   in Loop: Header=BB9_74 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_74
# %bb.77:                               #   in Loop: Header=BB9_16 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_78
	.p2align	4, 0x90
.LBB9_75:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
.LBB9_78:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_123
# %bb.79:                               # %.preheader23
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_80:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rsi
	cmpq	(%rbx,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_81
# %bb.122:                              #   in Loop: Header=BB9_80 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_80
	jmp	.LBB9_123
	.p2align	4, 0x90
.LBB9_81:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB9_123:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %esi
	testq	%r12, %r12
	je	.LBB9_129
# %bb.124:                              # %.preheader21
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_125:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rsi
	cmpq	(%rbx,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_126
# %bb.127:                              #   in Loop: Header=BB9_125 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_125
# %bb.128:                              #   in Loop: Header=BB9_16 Depth=2
	xorl	%esi, %esi
	jmp	.LBB9_129
	.p2align	4, 0x90
.LBB9_126:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
.LBB9_129:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_134
# %bb.130:                              # %.preheader19
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_131:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rbx,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_132
# %bb.133:                              #   in Loop: Header=BB9_131 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_131
.LBB9_134:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB9_135
	.p2align	4, 0x90
.LBB9_132:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB9_135:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%edx, %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdx
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	xorl	%r15d, %r15d
	jmp	.LBB9_82
	.p2align	4, 0x90
.LBB9_91:                               #   in Loop: Header=BB9_82 Depth=3
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-8, %r10
	addq	$8, %rbx
	addq	$-8, %r8
	addq	$8, %rdx
	cmpq	$512, %r15              # imm = 0x200
	je	.LBB9_92
.LBB9_82:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_86 Depth 4
                                        #         Child Loop BB9_90 Depth 4
	testb	$1, %r15b
	movabsq	$6148914691236517205, %rax # imm = 0x5555555555555555
	movabsq	$-6148914691236517206, %rcx # imm = 0xAAAAAAAAAAAAAAAA
	cmoveq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB9_91
# %bb.83:                               #   in Loop: Header=BB9_82 Depth=3
	movq	%rax, %rcx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movq	%rax, %rsi
	shlq	$32, %rsi
	shlq	$48, %rax
	orq	%rsi, %rax
	orq	%rcx, %rax
	cmpq	$3, -120(%rbp)          # 8-byte Folded Reload
	jae	.LBB9_85
# %bb.84:                               #   in Loop: Header=BB9_82 Depth=3
	leaq	(,%r15,8), %rsi
	addq	%r13, %rsi
	leaq	(%rsi,%r12,8), %rcx
	testb	$3, -72(%rbp)           # 1-byte Folded Reload
	jne	.LBB9_89
	jmp	.LBB9_91
	.p2align	4, 0x90
.LBB9_85:                               # %.preheader1
                                        #   in Loop: Header=BB9_82 Depth=3
	movq	-152(%rbp), %rcx        # 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB9_86:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        #       Parent Loop BB9_82 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, (%rbx,%rsi)
	movq	%rax, (%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 4096(%rbx,%rsi)
	movq	%rax, 4096(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8192(%rbx,%rsi)
	movq	%rax, 8192(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 12288(%rbx,%rsi)
	movq	%rax, 12288(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16384, %rsi            # imm = 0x4000
	addq	$4, %rcx
	jne	.LBB9_86
# %bb.87:                               # %.loopexit2
                                        #   in Loop: Header=BB9_82 Depth=3
	movq	%rsi, %rcx
	subq	%r10, %rcx
	subq	%r8, %rsi
	testb	$3, -72(%rbp)           # 1-byte Folded Reload
	je	.LBB9_91
.LBB9_89:                               # %.preheader
                                        #   in Loop: Header=BB9_82 Depth=3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_90:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        #       Parent Loop BB9_82 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, (%rcx,%rdi)
	movq	%rax, (%rsi,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4096, %rdi             # imm = 0x1000
	cmpq	%rdi, %r9
	jne	.LBB9_90
	jmp	.LBB9_91
	.p2align	4, 0x90
.LBB9_92:                               #   in Loop: Header=BB9_16 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	-48(%rbp), %eax         # 4-byte Folded Reload
	addl	%eax, -56(%rbp)         # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movl	-124(%rbp), %r10d       # 4-byte Reload
	.p2align	4, 0x90
.LBB9_93:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r11,%rax,8), %rcx
	cmpq	4096(%r11,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_94
# %bb.157:                              #   in Loop: Header=BB9_93 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r11,%rax,8), %rcx
	cmpq	4104(%r11,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_94
# %bb.158:                              #   in Loop: Header=BB9_93 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB9_93
	jmp	.LBB9_95
	.p2align	4, 0x90
.LBB9_94:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_95:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_96:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-4104(%r15,%rax,8), %rcx
	cmpq	-8(%r15,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_97
# %bb.159:                              #   in Loop: Header=BB9_96 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-4096(%r15,%rax,8), %rcx
	cmpq	(%r15,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_97
# %bb.160:                              #   in Loop: Header=BB9_96 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB9_96
	jmp	.LBB9_98
	.p2align	4, 0x90
.LBB9_97:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB9_98:                               #   in Loop: Header=BB9_16 Depth=2
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	testq	%r12, %r12
	je	.LBB9_104
# %bb.99:                               # %.preheader15
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_100:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rax,8), %rsi
	cmpq	(%rbx,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_101
# %bb.102:                              #   in Loop: Header=BB9_100 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB9_100
# %bb.103:                              #   in Loop: Header=BB9_16 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_104
	.p2align	4, 0x90
.LBB9_101:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB9_104:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_137
# %bb.105:                              # %.preheader13
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_106:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rdi,8), %rsi
	cmpq	(%rbx,%rdi,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_107
# %bb.136:                              #   in Loop: Header=BB9_106 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdi
	jb	.LBB9_106
	jmp	.LBB9_137
	.p2align	4, 0x90
.LBB9_107:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
.LBB9_137:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%eax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %edi
	testq	%r12, %r12
	je	.LBB9_143
# %bb.138:                              # %.preheader11
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_139:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rdi,8), %rsi
	cmpq	(%rbx,%rdi,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_140
# %bb.141:                              #   in Loop: Header=BB9_139 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdi
	jb	.LBB9_139
# %bb.142:                              #   in Loop: Header=BB9_16 Depth=2
	xorl	%edi, %edi
	jmp	.LBB9_143
	.p2align	4, 0x90
.LBB9_140:                              #   in Loop: Header=BB9_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
.LBB9_143:                              #   in Loop: Header=BB9_16 Depth=2
	addl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_148
# %bb.144:                              # %.preheader9
                                        #   in Loop: Header=BB9_16 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_145:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rsi
	cmpq	(%rbx,%rcx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_146
# %bb.147:                              #   in Loop: Header=BB9_145 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	jb	.LBB9_145
	jmp	.LBB9_148
.LBB9_161:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB11_2
# %bb.1:
	movl	$5242900, ws(%rip)      # imm = 0x500014
	movl	$42, __A_VARIABLE(%rip)
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
