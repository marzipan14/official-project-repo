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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fflush                  # TAILCALL
.Lfunc_end0:
	.size	memtest_progress_start, .Lfunc_end0-memtest_progress_start
                                        # -- End function
	.globl	memtest_progress_end    # -- Begin function memtest_progress_end
	.p2align	4, 0x90
	.type	memtest_progress_end,@function
memtest_progress_end:                   # @memtest_progress_end
# %bb.0:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	jmp	printf                  # TAILCALL
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fflush                  # TAILCALL
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
	subq	$88, %rsp
	movl	%edx, -116(%rbp)        # 4-byte Spill
	testl	%edx, %edx
	je	.LBB8_1
# %bb.2:
	movl	%ecx, %r15d
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	shrq	$4, %rdi
	leaq	(%rbx,%rdi,8), %rdx
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	movq	%rsi, %rcx
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%r15d, -96(%rbp)        # 4-byte Spill
	jmp	.LBB8_3
.LBB8_33:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r10d, %r10d
.LBB8_105:                              #   in Loop: Header=BB8_3 Depth=1
	movl	%r8d, %r15d
	movl	-88(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %ebx         # 4-byte Reload
	movl	-52(%rbp), %eax         # 4-byte Reload
	.p2align	4, 0x90
.LBB8_128:                              #   in Loop: Header=BB8_3 Depth=1
	addl	%r13d, %r10d
	addl	%esi, %ebx
	addl	-60(%rbp), %eax         # 4-byte Folded Reload
	addl	%ebx, %eax
	addl	-56(%rbp), %r14d        # 4-byte Folded Reload
	addl	%eax, %r14d
	addl	%r10d, %r14d
	movl	%r14d, %eax
	cmpl	-116(%rbp), %r12d       # 4-byte Folded Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	je	.LBB8_129
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
                                        #     Child Loop BB8_48 Depth 2
                                        #     Child Loop BB8_57 Depth 2
                                        #     Child Loop BB8_66 Depth 2
                                        #     Child Loop BB8_23 Depth 2
                                        #     Child Loop BB8_78 Depth 2
                                        #     Child Loop BB8_87 Depth 2
                                        #     Child Loop BB8_96 Depth 2
                                        #     Child Loop BB8_35 Depth 2
                                        #     Child Loop BB8_107 Depth 2
                                        #     Child Loop BB8_116 Depth 2
                                        #     Child Loop BB8_125 Depth 2
	movl	%eax, -88(%rbp)         # 4-byte Spill
	addl	$1, %r12d
	testl	%r15d, %r15d
	je	.LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.12, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	memtest_addressing
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.13, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	memtest_fill_random
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %rdi
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	memtest_addressing
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	memtest_fill_random
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	testl	%r15d, %r15d
	movl	%r12d, -64(%rbp)        # 4-byte Spill
	je	.LBB8_7
# %bb.41:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	memtest_compare
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB8_42:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	memtest_compare
	movq	%r14, %rbx
	movl	%r15d, %r13d
	movl	%eax, %r15d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addl	-60(%rbp), %r15d        # 4-byte Folded Reload
.LBB8_54:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	memtest_compare
	movl	%r12d, %r14d
	movl	%eax, %r12d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addl	%r15d, %r12d
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	movq	%rbx, %r12
.LBB8_63:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r14d, %esi
	callq	memtest_progress_start
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %r14
	movq	%r12, %rsi
	movl	%r13d, %edx
	callq	memtest_compare
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-60(%rbp), %r12d        # 4-byte Reload
.LBB8_70:                               #   in Loop: Header=BB8_3 Depth=1
	testl	%r13d, %r13d
	je	.LBB8_17
# %bb.71:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.14, %edi
	movl	-64(%rbp), %esi         # 4-byte Reload
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	$-1, %rcx
	movl	$83, %r8d
	movl	%r13d, %r9d
	callq	memtest_fill_value
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r14d            # imm = 0xFFF
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	jne	.LBB8_130
# %bb.8:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %r8d
	testq	%rdx, %rdx
	je	.LBB8_9
# %bb.10:                               # %.preheader15
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r8d, %r15d
	.p2align	4, 0x90
.LBB8_11:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_12
# %bb.13:                               #   in Loop: Header=BB8_11 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_11
# %bb.14:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jne	.LBB8_16
.LBB8_43:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, %r14d            # imm = 0xFFF
	jne	.LBB8_130
# %bb.44:                               #   in Loop: Header=BB8_3 Depth=1
	testq	%rdx, %rdx
	je	.LBB8_45
# %bb.47:                               # %.preheader14
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_48:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_49
# %bb.50:                               #   in Loop: Header=BB8_48 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_48
# %bb.51:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, %eax
	xorl	%r15d, %r15d
	jmp	.LBB8_52
	.p2align	4, 0x90
.LBB8_17:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	$-1, %rcx
	movl	$83, %r8d
	xorl	%r9d, %r9d
	callq	memtest_fill_value
.LBB8_18:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB8_19
# %bb.72:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	-64(%rbp), %r12d        # 4-byte Reload
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	callq	memtest_compare
	movl	%eax, %r15d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB8_73:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	callq	memtest_compare
	movl	%eax, %r13d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addl	%r15d, %r13d
.LBB8_84:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	-96(%rbp), %edx         # 4-byte Reload
	callq	memtest_compare
	movl	%r12d, %r15d
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addl	%r13d, %ebx
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	movq	-80(%rbp), %r13         # 8-byte Reload
.LBB8_93:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	-96(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	callq	memtest_compare
	movl	%eax, %r14d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB8_99:                               #   in Loop: Header=BB8_3 Depth=1
	testl	%ebx, %ebx
	je	.LBB8_29
# %bb.100:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.15, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movl	$67, %r8d
	movl	%ebx, %r9d
	callq	memtest_fill_value
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	testl	%ebx, %ebx
	je	.LBB8_31
.LBB8_101:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	%r13, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	memtest_compare
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB8_102:                              #   in Loop: Header=BB8_3 Depth=1
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	memtest_compare
	movl	%ebx, %r13d
	movq	%r15, %rbx
	movl	%eax, %r15d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addl	-68(%rbp), %r15d        # 4-byte Folded Reload
.LBB8_113:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	memtest_compare
	movl	%r12d, %r14d
	movl	%r13d, %r12d
	movq	%rbx, %r13
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addl	%r15d, %ebx
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movq	%r13, %rbx
	movl	%r12d, %r13d
	movl	%r14d, %r12d
	movl	-92(%rbp), %r14d        # 4-byte Reload
.LBB8_122:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$.L.str.11, %edi
	movl	%r12d, %esi
	callq	memtest_progress_start
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r13d, %r15d
	movl	%r13d, %edx
	callq	memtest_compare
	movl	%eax, %r13d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-88(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %ebx         # 4-byte Reload
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	-68(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB8_128
	.p2align	4, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_3 Depth=1
	movl	-64(%rbp), %r8d         # 4-byte Reload
	testl	$4095, %r14d            # imm = 0xFFF
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	jne	.LBB8_130
# %bb.20:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %r9
	movl	%r13d, %r15d
	xorl	%r14d, %r14d
	testq	%rdx, %rdx
	je	.LBB8_21
# %bb.22:                               # %.preheader9
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%r8d, %r12d
	movq	%r9, %rbx
	.p2align	4, 0x90
.LBB8_23:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_24
# %bb.25:                               #   in Loop: Header=BB8_23 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_23
# %bb.26:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	testl	%r15d, %r15d
	jne	.LBB8_28
.LBB8_74:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.75:                               #   in Loop: Header=BB8_3 Depth=1
	testq	%rdx, %rdx
	je	.LBB8_76
# %bb.77:                               # %.preheader8
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movq	%r9, %rdi
	.p2align	4, 0x90
.LBB8_78:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_79
# %bb.80:                               #   in Loop: Header=BB8_78 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_78
# %bb.81:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB8_82
	.p2align	4, 0x90
.LBB8_29:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%r13, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movabsq	$-6148914691236517206, %rdx # imm = 0xAAAAAAAAAAAAAAAA
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	movl	$67, %r8d
	xorl	%r9d, %r9d
	callq	memtest_fill_value
	testl	%ebx, %ebx
	jne	.LBB8_101
.LBB8_31:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	jne	.LBB8_130
# %bb.32:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%ebx, %r8d
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB8_33
# %bb.34:                               # %.preheader3
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%r8d, %ebx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB8_35:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	jne	.LBB8_36
# %bb.37:                               #   in Loop: Header=BB8_35 Depth=2
	addq	$1, %rax
	cmpq	%rdi, %rax
	jb	.LBB8_35
# %bb.38:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r10d, %r10d
	testl	%ebx, %ebx
	jne	.LBB8_40
.LBB8_103:                              #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.104:                              #   in Loop: Header=BB8_3 Depth=1
	testq	%rdi, %rdi
	je	.LBB8_105
# %bb.106:                              # %.preheader2
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_107:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	jne	.LBB8_108
# %bb.109:                              #   in Loop: Header=BB8_107 Depth=2
	addq	$1, %rax
	cmpq	%rdi, %rax
	jb	.LBB8_107
# %bb.110:                              #   in Loop: Header=BB8_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB8_111
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
.LBB8_46:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r8d, %r13d
	movq	%rdi, %rbx
	jmp	.LBB8_70
.LBB8_21:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
.LBB8_76:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r8d, %r12d
	movl	%r15d, %ebx
	movq	%r9, %r13
	jmp	.LBB8_99
.LBB8_12:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r12d
	testl	%r15d, %r15d
	je	.LBB8_43
.LBB8_16:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	movl	-64(%rbp), %r12d        # 4-byte Reload
	movq	%rdi, %rbx
	jmp	.LBB8_42
.LBB8_24:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, -56(%rbp)           # 4-byte Folded Spill
	testl	%r15d, %r15d
	je	.LBB8_74
.LBB8_28:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r15d, %r13d
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	-56(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB8_73
.LBB8_36:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r10d
	testl	%ebx, %ebx
	je	.LBB8_103
.LBB8_40:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	jmp	.LBB8_102
.LBB8_45:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB8_46
.LBB8_49:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r12d, %eax
	movl	$1, %r15d
.LBB8_52:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%eax, %r15d
	testl	%r8d, %r8d
	je	.LBB8_55
# %bb.53:                               #   in Loop: Header=BB8_3 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	-64(%rbp), %r12d        # 4-byte Reload
	movl	%r8d, %r13d
	jmp	.LBB8_54
.LBB8_79:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r13d
.LBB8_82:                               #   in Loop: Header=BB8_3 Depth=1
	addl	-56(%rbp), %r13d        # 4-byte Folded Reload
	testl	%r15d, %r15d
	je	.LBB8_85
# %bb.83:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r8d, %r12d
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r9, %rbx
	jmp	.LBB8_84
.LBB8_108:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r15d
.LBB8_111:                              #   in Loop: Header=BB8_3 Depth=1
	addl	%r10d, %r15d
	testl	%r8d, %r8d
	je	.LBB8_114
# %bb.112:                              #   in Loop: Header=BB8_3 Depth=1
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, %r13d
	jmp	.LBB8_113
.LBB8_55:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.56:                               # %.preheader13
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_57:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_58
# %bb.59:                               #   in Loop: Header=BB8_57 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_57
# %bb.60:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_61
.LBB8_85:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.86:                               # %.preheader7
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_87:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_88
# %bb.89:                               #   in Loop: Header=BB8_87 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_87
# %bb.90:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_91
.LBB8_114:                              #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.115:                              # %.preheader1
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB8_116:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	jne	.LBB8_117
# %bb.118:                              #   in Loop: Header=BB8_116 Depth=2
	addq	$1, %rax
	cmpq	%rdi, %rax
	jb	.LBB8_116
# %bb.119:                              #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_120
.LBB8_58:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %eax
.LBB8_61:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%r15d, %eax
	testl	%r8d, %r8d
	movl	%eax, %r12d
	je	.LBB8_64
# %bb.62:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r8d, %r13d
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	-64(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB8_63
.LBB8_88:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %eax
.LBB8_91:                               #   in Loop: Header=BB8_3 Depth=1
	addl	%r13d, %eax
	testl	%r15d, %r15d
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB8_94
# %bb.92:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%r8d, %r12d
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r9, %r13
	jmp	.LBB8_93
.LBB8_117:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %eax
.LBB8_120:                              #   in Loop: Header=BB8_3 Depth=1
	addl	%r15d, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB8_123
# %bb.121:                              #   in Loop: Header=BB8_3 Depth=1
	movl	%r8d, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB8_122
.LBB8_64:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.65:                               # %.preheader10
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %r14         # 8-byte Reload
	movl	%r8d, %r13d
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB8_66:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_67
# %bb.68:                               #   in Loop: Header=BB8_66 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_66
# %bb.69:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB8_70
.LBB8_94:                               #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	jne	.LBB8_130
# %bb.95:                               # %.preheader4
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%r8d, %r12d
	movl	%r15d, %ebx
	movq	%r9, %r13
	.p2align	4, 0x90
.LBB8_96:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rax,8), %rcx
	cmpq	(%rsi,%rax,8), %rcx
	jne	.LBB8_97
# %bb.98:                               #   in Loop: Header=BB8_96 Depth=2
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB8_96
	jmp	.LBB8_99
.LBB8_123:                              #   in Loop: Header=BB8_3 Depth=1
	testl	$4095, -48(%rbp)        # 4-byte Folded Reload
                                        # imm = 0xFFF
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	$0, %r13d
	jne	.LBB8_130
# %bb.124:                              # %.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%r9d, %r9d
	movl	%r8d, %r15d
	movl	-88(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %ebx         # 4-byte Reload
	movl	-52(%rbp), %eax         # 4-byte Reload
	.p2align	4, 0x90
.LBB8_125:                              #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%r9,8), %rcx
	cmpq	(%rdx,%r9,8), %rcx
	jne	.LBB8_126
# %bb.127:                              #   in Loop: Header=BB8_125 Depth=2
	addq	$1, %r9
	cmpq	%rdi, %r9
	jb	.LBB8_125
	jmp	.LBB8_128
.LBB8_67:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB8_70
.LBB8_97:                               #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r14d
	jmp	.LBB8_99
.LBB8_126:                              #   in Loop: Header=BB8_3 Depth=1
	movl	$1, %r13d
	jmp	.LBB8_128
.LBB8_1:
	xorl	%r14d, %r14d
.LBB8_129:
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_130:
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
	movl	%edx, -68(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	cmpq	$8192, %rsi             # imm = 0x2000
	jb	.LBB9_91
# %bb.1:
	movl	%esi, %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	testq	%rcx, %rcx
	jne	.LBB9_91
# %bb.2:
	movq	%rdi, %r13
	movabsq	$2685821657736338717, %r15 # imm = 0x2545F4914F6CDD1D
	xorl	%eax, %eax
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edi
.LBB9_138:                              #   in Loop: Header=BB9_3 Depth=1
	movl	%edi, %ebx
	movq	%r13, %rdi
	leaq	-1048800(%rbp), %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	-144(%rbp), %rsi        # 8-byte Reload
	subq	%r14, %rsi
	leaq	(%r13,%r12,8), %r13
	movl	%ebx, %eax
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_29 Depth 3
                                        #         Child Loop BB9_33 Depth 4
                                        #       Child Loop BB9_41 Depth 3
                                        #       Child Loop BB9_47 Depth 3
                                        #       Child Loop BB9_97 Depth 3
                                        #       Child Loop BB9_103 Depth 3
                                        #       Child Loop BB9_49 Depth 3
                                        #         Child Loop BB9_53 Depth 4
                                        #         Child Loop BB9_57 Depth 4
                                        #       Child Loop BB9_62 Depth 3
                                        #       Child Loop BB9_68 Depth 3
                                        #       Child Loop BB9_112 Depth 3
                                        #       Child Loop BB9_118 Depth 3
                                        #       Child Loop BB9_70 Depth 3
                                        #         Child Loop BB9_74 Depth 4
                                        #         Child Loop BB9_78 Depth 4
                                        #       Child Loop BB9_83 Depth 3
                                        #       Child Loop BB9_89 Depth 3
                                        #       Child Loop BB9_127 Depth 3
                                        #       Child Loop BB9_133 Depth 3
	cmpq	$4096, %rsi             # imm = 0x1000
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB9_139
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	testq	%rsi, %rsi
	je	.LBB9_91
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	movl	$1048576, %eax          # imm = 0x100000
	cmpq	$1048575, %rsi          # imm = 0xFFFFF
	jbe	.LBB9_6
	jmp	.LBB9_7
	.p2align	4, 0x90
.LBB9_139:                              #   in Loop: Header=BB9_3 Depth=1
	addq	$-4096, %r13            # imm = 0xF000
	movl	$8192, %esi             # imm = 0x2000
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, %rax
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	leaq	-4096(%rax), %r14
	testl	$4096, %eax             # imm = 0x1000
	cmoveq	%rax, %r14
	leaq	-1048800(%rbp), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	%r14, %r12
	shrq	$3, %r12
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB9_8
# %bb.9:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, %rbx
	shrq	$4, %rbx
	movq	%r14, %r11
	shrq	$13, %r11
	movq	%r12, %rcx
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
	movq	%r13, %rsi
	negq	%rsi
	leaq	(,%rbx,8), %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	subq	%rax, %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	subq	%r11, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rax
	subq	%r11, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r10, -208(%rbp)        # 8-byte Spill
	shlq	$12, %r10
	leaq	-1(%r11), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leaq	(,%rcx,8), %rax
	addq	%r13, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	leaq	56(%r13), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	(%r13,%rbx,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movabsq	$-6148914691236517206, %r9 # imm = 0xAAAAAAAAAAAAAAAA
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_81:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
.LBB9_137:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%eax, %ecx
	addl	%ecx, %edi
	movl	%edi, %r8d
	movl	-76(%rbp), %eax         # 4-byte Reload
	cmpl	-68(%rbp), %eax         # 4-byte Folded Reload
	je	.LBB9_138
.LBB9_10:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_29 Depth 3
                                        #         Child Loop BB9_33 Depth 4
                                        #       Child Loop BB9_41 Depth 3
                                        #       Child Loop BB9_47 Depth 3
                                        #       Child Loop BB9_97 Depth 3
                                        #       Child Loop BB9_103 Depth 3
                                        #       Child Loop BB9_49 Depth 3
                                        #         Child Loop BB9_53 Depth 4
                                        #         Child Loop BB9_57 Depth 4
                                        #       Child Loop BB9_62 Depth 3
                                        #       Child Loop BB9_68 Depth 3
                                        #       Child Loop BB9_112 Depth 3
                                        #       Child Loop BB9_118 Depth 3
                                        #       Child Loop BB9_70 Depth 3
                                        #         Child Loop BB9_74 Depth 4
                                        #         Child Loop BB9_78 Depth 4
                                        #       Child Loop BB9_83 Depth 3
                                        #       Child Loop BB9_89 Depth 3
                                        #       Child Loop BB9_127 Depth 3
                                        #       Child Loop BB9_133 Depth 3
	movl	$0, %eax
	testq	%r12, %r12
	je	.LBB9_27
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=2
	cmpq	$32, %r14
	jae	.LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%r13, %rax
	xorl	%edx, %edx
	jmp	.LBB9_20
	.p2align	4, 0x90
.LBB9_13:                               #   in Loop: Header=BB9_10 Depth=2
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
	leaq	(,%rax,8), %rcx
	addq	%r13, %rcx
	leaq	(,%rax,8), %rdx
	movq	%rdx, %rsi
	orq	$8, %rsi
	addq	%r13, %rsi
	movq	%rcx, %xmm0
	movq	%rsi, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	movq	%rdx, %rcx
	orq	$16, %rcx
	addq	%r13, %rcx
	orq	$24, %rdx
	addq	%r13, %rdx
	movq	%rdx, %xmm1
	movq	%rcx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	movdqu	%xmm0, (%r13,%rax,8)
	movdqu	%xmm2, 16(%r13,%rax,8)
.LBB9_19:                               #   in Loop: Header=BB9_10 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	cmpq	%rcx, %r12
	je	.LBB9_22
.LBB9_20:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%r12, %rcx
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
	movq	%r13, %rax
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
	cmpq	%r12, %rcx
	jb	.LBB9_23
# %bb.26:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_27
	.p2align	4, 0x90
.LBB9_24:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_27:                               #   in Loop: Header=BB9_10 Depth=2
	testl	$4095, %r14d            # imm = 0xFFF
	jne	.LBB9_140
# %bb.28:                               # %.preheader26
                                        #   in Loop: Header=BB9_10 Depth=2
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	addl	%r8d, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r13, %rbx
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %r12         # 8-byte Reload
	movabsq	$-3372857614747716250, %rdi # imm = 0xD13133DE9AFDB566
	xorl	%eax, %eax
	jmp	.LBB9_29
	.p2align	4, 0x90
.LBB9_37:                               #   in Loop: Header=BB9_29 Depth=3
	addq	$1, %rax
	addq	$-8, %r12
	addq	$8, %rdx
	addq	$-8, %r14
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
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
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
	subq	%r14, %rsi
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB9_37
	jmp	.LBB9_36
	.p2align	4, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_29 Depth=3
	leaq	(,%rax,8), %rsi
	addq	%r13, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rsi,%rcx,8), %r8
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB9_37
.LBB9_36:                               #   in Loop: Header=BB9_29 Depth=3
	movq	%rdi, %rcx
	shrq	$12, %rcx
	xorq	%rdi, %rcx
	movq	%r13, %r9
	movq	%rcx, %r13
	shlq	$25, %r13
	xorq	%rcx, %r13
	movq	%r13, %rdi
	shrq	$27, %rdi
	xorq	%r13, %rdi
	movq	%r9, %r13
	movabsq	$-6148914691236517206, %r9 # imm = 0xAAAAAAAAAAAAAAAA
	movq	%rdi, %rcx
	imulq	%r15, %rcx
	movq	%rcx, (%r8)
	movq	%rcx, (%rsi)
	jmp	.LBB9_37
	.p2align	4, 0x90
.LBB9_38:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB9_39
# %bb.40:                               # %.preheader25
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_41:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_42
# %bb.43:                               #   in Loop: Header=BB9_41 Depth=3
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB9_41
# %bb.44:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%esi, %esi
	testq	%rdi, %rdi
	jne	.LBB9_46
	jmp	.LBB9_106
	.p2align	4, 0x90
.LBB9_39:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%esi, %esi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB9_106
	.p2align	4, 0x90
.LBB9_42:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %esi
	testq	%rdi, %rdi
	je	.LBB9_106
.LBB9_46:                               # %.preheader24
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_47:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_48
# %bb.92:                               #   in Loop: Header=BB9_47 Depth=3
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB9_47
# %bb.93:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_94
.LBB9_48:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
.LBB9_94:                               #   in Loop: Header=BB9_10 Depth=2
	addl	%esi, %ecx
	testq	%rdi, %rdi
	je	.LBB9_95
# %bb.96:                               # %.preheader23
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_97:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rdx,8), %rsi
	cmpq	(%rbx,%rdx,8), %rsi
	jne	.LBB9_98
# %bb.99:                               #   in Loop: Header=BB9_97 Depth=3
	addq	$1, %rdx
	cmpq	%rdi, %rdx
	jb	.LBB9_97
# %bb.100:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%esi, %esi
	jmp	.LBB9_101
.LBB9_95:                               #   in Loop: Header=BB9_10 Depth=2
	movl	%ecx, %esi
	jmp	.LBB9_106
.LBB9_98:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %esi
.LBB9_101:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%ecx, %esi
	testq	%rdi, %rdi
	je	.LBB9_106
# %bb.102:                              # %.preheader20
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_103:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_104
# %bb.105:                              #   in Loop: Header=BB9_103 Depth=3
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB9_103
	jmp	.LBB9_106
.LBB9_14:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -176(%rbp)          # 8-byte Folded Reload
	jne	.LBB9_18
	jmp	.LBB9_19
.LBB9_104:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
	.p2align	4, 0x90
.LBB9_106:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%eax, %esi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%r13, %rax
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-88(%rbp), %r8          # 8-byte Reload
	xorl	%esi, %esi
	jmp	.LBB9_49
	.p2align	4, 0x90
.LBB9_58:                               #   in Loop: Header=BB9_49 Depth=3
	addq	$1, %rsi
	addq	$-8, %r8
	addq	$8, %rdi
	addq	$-8, %r14
	addq	$8, %rax
	cmpq	$512, %rsi              # imm = 0x200
	je	.LBB9_59
.LBB9_49:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_53 Depth 4
                                        #         Child Loop BB9_57 Depth 4
	testq	%r11, %r11
	je	.LBB9_58
# %bb.50:                               #   in Loop: Header=BB9_49 Depth=3
	movq	%rsi, %rcx
	shlq	$63, %rcx
	movq	%rcx, %rdx
	sarq	$63, %rdx
	movq	%rcx, %rbx
	sarq	$47, %rbx
	orq	%rdx, %rbx
	movq	%rcx, %rdx
	sarq	$31, %rdx
	sarq	$15, %rcx
	orq	%rdx, %rcx
	orq	%rbx, %rcx
	cmpq	$7, -104(%rbp)          # 8-byte Folded Reload
	jae	.LBB9_52
# %bb.51:                               #   in Loop: Header=BB9_49 Depth=3
	leaq	(,%rsi,8), %rdx
	addq	%r13, %rdx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	leaq	(%rdx,%rbx,8), %rbx
	cmpq	$0, -208(%rbp)          # 8-byte Folded Reload
	jne	.LBB9_56
	jmp	.LBB9_58
	.p2align	4, 0x90
.LBB9_52:                               # %.preheader5
                                        #   in Loop: Header=BB9_49 Depth=3
	movq	-136(%rbp), %rbx        # 8-byte Reload
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_53:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rdi,%rdx)
	movq	%rcx, (%rax,%rdx)
	movq	%rcx, 4096(%rdi,%rdx)
	movq	%rcx, 4096(%rax,%rdx)
	movq	%rcx, 8192(%rdi,%rdx)
	movq	%rcx, 8192(%rax,%rdx)
	movq	%rcx, 12288(%rdi,%rdx)
	movq	%rcx, 12288(%rax,%rdx)
	movq	%rcx, 16384(%rdi,%rdx)
	movq	%rcx, 16384(%rax,%rdx)
	movq	%rcx, 20480(%rdi,%rdx)
	movq	%rcx, 20480(%rax,%rdx)
	movq	%rcx, 24576(%rdi,%rdx)
	movq	%rcx, 24576(%rax,%rdx)
	movq	%rcx, 28672(%rdi,%rdx)
	movq	%rcx, 28672(%rax,%rdx)
	addq	$32768, %rdx            # imm = 0x8000
	addq	$8, %rbx
	jne	.LBB9_53
# %bb.54:                               # %.loopexit6
                                        #   in Loop: Header=BB9_49 Depth=3
	movq	%rdx, %rbx
	subq	%r8, %rbx
	subq	%r14, %rdx
	cmpq	$0, -208(%rbp)          # 8-byte Folded Reload
	je	.LBB9_58
.LBB9_56:                               # %.preheader3
                                        #   in Loop: Header=BB9_49 Depth=3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_57:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rbx,%r12)
	movq	%rcx, (%rdx,%r12)
	addq	$4096, %r12             # imm = 0x1000
	cmpq	%r12, %r10
	jne	.LBB9_57
	jmp	.LBB9_58
	.p2align	4, 0x90
.LBB9_59:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB9_60
# %bb.61:                               # %.preheader19
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	-72(%rbp), %eax         # 4-byte Reload
	.p2align	4, 0x90
.LBB9_62:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_63
# %bb.64:                               #   in Loop: Header=BB9_62 Depth=3
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB9_62
# %bb.65:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%esi, %esi
	testq	%rdi, %rdi
	jne	.LBB9_67
	jmp	.LBB9_121
	.p2align	4, 0x90
.LBB9_60:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%esi, %esi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	-72(%rbp), %eax         # 4-byte Reload
	jmp	.LBB9_121
	.p2align	4, 0x90
.LBB9_63:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %esi
	testq	%rdi, %rdi
	je	.LBB9_121
.LBB9_67:                               # %.preheader18
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_68:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_69
# %bb.107:                              #   in Loop: Header=BB9_68 Depth=3
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB9_68
# %bb.108:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_109
.LBB9_69:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
.LBB9_109:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%esi, %ecx
	testq	%rdi, %rdi
	je	.LBB9_110
# %bb.111:                              # %.preheader17
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_112:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rdx,8), %rsi
	cmpq	(%rbx,%rdx,8), %rsi
	jne	.LBB9_113
# %bb.114:                              #   in Loop: Header=BB9_112 Depth=3
	addq	$1, %rdx
	cmpq	%rdi, %rdx
	jb	.LBB9_112
# %bb.115:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%esi, %esi
	jmp	.LBB9_116
.LBB9_110:                              #   in Loop: Header=BB9_10 Depth=2
	movl	%ecx, %esi
	jmp	.LBB9_121
.LBB9_113:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %esi
.LBB9_116:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%ecx, %esi
	testq	%rdi, %rdi
	je	.LBB9_121
# %bb.117:                              # %.preheader14
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_118:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	cmpq	(%rbx,%rcx,8), %rdx
	jne	.LBB9_119
# %bb.120:                              #   in Loop: Header=BB9_118 Depth=3
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB9_118
	jmp	.LBB9_121
.LBB9_119:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %r8d
	.p2align	4, 0x90
.LBB9_121:                              #   in Loop: Header=BB9_10 Depth=2
	addl	%r8d, %esi
	movl	%esi, -108(%rbp)        # 4-byte Spill
	addl	%eax, -64(%rbp)         # 4-byte Folded Spill
	movq	%r13, %rax
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rbx, %rsi
	movq	-88(%rbp), %r12         # 8-byte Reload
	xorl	%ebx, %ebx
	jmp	.LBB9_70
	.p2align	4, 0x90
.LBB9_79:                               #   in Loop: Header=BB9_70 Depth=3
	addq	$1, %rbx
	addq	$-8, %r12
	addq	$8, %rsi
	addq	$-8, %r8
	addq	$8, %rax
	cmpq	$512, %rbx              # imm = 0x200
	je	.LBB9_80
.LBB9_70:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_74 Depth 4
                                        #         Child Loop BB9_78 Depth 4
	testb	$1, %bl
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	cmoveq	%r9, %rcx
	testq	%r11, %r11
	je	.LBB9_79
# %bb.71:                               #   in Loop: Header=BB9_70 Depth=3
	movq	%rcx, %rdx
	shlq	$16, %rdx
	orq	%rcx, %rdx
	movq	%rcx, %rdi
	shlq	$32, %rdi
	shlq	$48, %rcx
	orq	%rdi, %rcx
	orq	%rdx, %rcx
	cmpq	$7, -104(%rbp)          # 8-byte Folded Reload
	jae	.LBB9_73
# %bb.72:                               #   in Loop: Header=BB9_70 Depth=3
	leaq	(,%rbx,8), %r14
	addq	%r13, %r14
	movq	-56(%rbp), %rdx         # 8-byte Reload
	leaq	(%r14,%rdx,8), %rdx
	testb	$7, %r11b
	jne	.LBB9_77
	jmp	.LBB9_79
	.p2align	4, 0x90
.LBB9_73:                               # %.preheader1
                                        #   in Loop: Header=BB9_70 Depth=3
	movq	-136(%rbp), %rdx        # 8-byte Reload
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB9_74:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rsi,%r14)
	movq	%rcx, (%rax,%r14)
	movq	%rcx, 4096(%rsi,%r14)
	movq	%rcx, 4096(%rax,%r14)
	movq	%rcx, 8192(%rsi,%r14)
	movq	%rcx, 8192(%rax,%r14)
	movq	%rcx, 12288(%rsi,%r14)
	movq	%rcx, 12288(%rax,%r14)
	movq	%rcx, 16384(%rsi,%r14)
	movq	%rcx, 16384(%rax,%r14)
	movq	%rcx, 20480(%rsi,%r14)
	movq	%rcx, 20480(%rax,%r14)
	movq	%rcx, 24576(%rsi,%r14)
	movq	%rcx, 24576(%rax,%r14)
	movq	%rcx, 28672(%rsi,%r14)
	movq	%rcx, 28672(%rax,%r14)
	addq	$32768, %r14            # imm = 0x8000
	addq	$8, %rdx
	jne	.LBB9_74
# %bb.75:                               # %.loopexit2
                                        #   in Loop: Header=BB9_70 Depth=3
	movq	%r14, %rdx
	subq	%r12, %rdx
	subq	%r8, %r14
	testb	$7, %r11b
	je	.LBB9_79
.LBB9_77:                               # %.preheader
                                        #   in Loop: Header=BB9_70 Depth=3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_78:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        #       Parent Loop BB9_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rcx, (%rdx,%rdi)
	movq	%rcx, (%r14,%rdi)
	addq	$4096, %rdi             # imm = 0x1000
	cmpq	%rdi, %r10
	jne	.LBB9_78
	jmp	.LBB9_79
	.p2align	4, 0x90
.LBB9_80:                               #   in Loop: Header=BB9_10 Depth=2
	movl	-64(%rbp), %edi         # 4-byte Reload
	addl	-108(%rbp), %edi        # 4-byte Folded Reload
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB9_81
# %bb.82:                               # %.preheader13
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
	.p2align	4, 0x90
.LBB9_83:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rdx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	(%rsi,%rcx,8), %rdx
	jne	.LBB9_84
# %bb.85:                               #   in Loop: Header=BB9_83 Depth=3
	addq	$1, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB9_83
# %bb.86:                               #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	jne	.LBB9_88
	jmp	.LBB9_137
	.p2align	4, 0x90
.LBB9_84:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
	testq	%rbx, %rbx
	je	.LBB9_137
.LBB9_88:                               # %.preheader12
                                        #   in Loop: Header=BB9_10 Depth=2
	movl	%edi, %r8d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_89:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rdx,8), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	(%rdi,%rdx,8), %rsi
	jne	.LBB9_90
# %bb.122:                              #   in Loop: Header=BB9_89 Depth=3
	addq	$1, %rdx
	cmpq	%rbx, %rdx
	jb	.LBB9_89
# %bb.123:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%edx, %edx
	jmp	.LBB9_124
.LBB9_90:                               #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %edx
.LBB9_124:                              #   in Loop: Header=BB9_10 Depth=2
	movl	%r8d, %edi
	addl	%ecx, %edx
	testq	%rbx, %rbx
	je	.LBB9_125
# %bb.126:                              # %.preheader11
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_127:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx,8), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	(%rdi,%rcx,8), %rsi
	jne	.LBB9_128
# %bb.129:                              #   in Loop: Header=BB9_127 Depth=3
	addq	$1, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB9_127
# %bb.130:                              #   in Loop: Header=BB9_10 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_131
.LBB9_125:                              #   in Loop: Header=BB9_10 Depth=2
	movl	%edx, %ecx
	jmp	.LBB9_137
.LBB9_128:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %ecx
.LBB9_131:                              #   in Loop: Header=BB9_10 Depth=2
	movl	%r8d, %edi
	addl	%edx, %ecx
	testq	%rbx, %rbx
	je	.LBB9_137
# %bb.132:                              # %.preheader9
                                        #   in Loop: Header=BB9_10 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_133:                              #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rdx,8), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	(%rdi,%rdx,8), %rsi
	jne	.LBB9_134
# %bb.135:                              #   in Loop: Header=BB9_133 Depth=3
	addq	$1, %rdx
	cmpq	%rbx, %rdx
	jb	.LBB9_133
	jmp	.LBB9_136
.LBB9_134:                              #   in Loop: Header=BB9_10 Depth=2
	movl	$1, %eax
.LBB9_136:                              #   in Loop: Header=BB9_10 Depth=2
	movl	%r8d, %edi
	jmp	.LBB9_137
.LBB9_91:
                                        # kill: def $eax killed $eax killed $rax
	addq	$1048760, %rsp          # imm = 0x1000B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_140:
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
	je	.LBB10_1
# %bb.2:
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	$1, %ecx
	callq	memtest_test
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB10_1:
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
