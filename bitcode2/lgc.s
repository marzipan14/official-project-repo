	.text
	.file	"lgc.c"
	.hidden	luaC_separateudata      # -- Begin function luaC_separateudata
	.globl	luaC_separateudata
	.p2align	4, 0x90
	.type	luaC_separateudata,@function
luaC_separateudata:                     # @luaC_separateudata
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	32(%rdi), %r12
	movq	176(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_17
# %bb.1:
	movl	%esi, %r13d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	9(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%eax, %ecx
	andb	$3, %cl
	je	.LBB0_2
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	16(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	testb	$4, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	movq	312(%rax), %rdx
	movl	$2, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rax
	movq	32(%rbx), %rcx
	addq	%rcx, %r15
	addq	$40, %r15
	orb	$8, 9(%rbx)
	movq	%rax, (%r14)
	movq	80(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	80(%r12), %rax
	movq	%rbx, (%rax)
	jmp	.LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	orb	$8, %al
	movb	%al, 9(%rbx)
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, %r14
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_4
	jmp	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	movzbl	9(%rbx), %eax
	jmp	.LBB0_13
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, (%rbx)
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, 80(%r12)
	jmp	.LBB0_3
.LBB0_17:
	xorl	%r15d, %r15d
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaC_separateudata, .Lfunc_end0-luaC_separateudata
                                        # -- End function
	.hidden	luaC_callGCTM           # -- Begin function luaC_callGCTM
	.globl	luaC_callGCTM
	.p2align	4, 0x90
	.type	luaC_callGCTM,@function
luaC_callGCTM:                          # @luaC_callGCTM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rdi), %rax
	cmpq	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_3
# %bb.1:                                # %.preheader
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	GCTM
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %rax
	cmpq	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaC_callGCTM, .Lfunc_end1-luaC_callGCTM
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function GCTM
	.type	GCTM,@function
GCTM:                                   # @GCTM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	32(%rdi), %r15
	movq	80(%r15), %rax
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB2_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB2_3
.LBB2_1:
	movq	$0, 80(%r15)
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%r15), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	176(%r15), %rax
	movq	%rbx, (%rax)
	movb	9(%rbx), %al
	andb	$-8, %al
	movb	32(%r15), %cl
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, 9(%rbx)
	movq	16(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_7
# %bb.4:
	testb	$4, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_7
# %bb.5:
	movq	32(%r14), %rax
	movq	312(%rax), %rdx
	movl	$2, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# %bb.6:
	movb	101(%r14), %r12b
	movq	112(%r15), %r13
	movb	$0, 101(%r14)
	movq	120(%r15), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 112(%r15)
	movq	16(%r14), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	16(%r14), %rax
	movq	%rbx, 16(%rax)
	movl	$7, 24(%rax)
	movq	16(%r14), %rsi
	leaq	32(%rsi), %rax
	movq	%rax, 16(%r14)
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	luaD_call
	movb	%r12b, 101(%r14)
	movq	%r13, 112(%r15)
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	GCTM, .Lfunc_end2-GCTM
                                        # -- End function
	.hidden	luaC_freeall            # -- Begin function luaC_freeall
	.globl	luaC_freeall
	.p2align	4, 0x90
	.type	luaC_freeall,@function
luaC_freeall:                           # @luaC_freeall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	32(%rdi), %r15
	movb	$67, 32(%r15)
	leaq	40(%r15), %rsi
	movq	$-3, %rdx
	callq	sweeplist
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 12(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB3_3
# %bb.1:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	addq	%r12, %rsi
	movq	%r14, %rdi
	movq	$-3, %rdx
	callq	sweeplist
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	12(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r12
	cmpq	%rax, %rbx
	jl	.LBB3_2
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaC_freeall, .Lfunc_end3-luaC_freeall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sweeplist
	.type	sweeplist,@function
sweeplist:                              # @sweeplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	32(%rdi), %r13
	movb	32(%r13), %r15b
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB4_22
# %bb.1:
	movq	%rdx, %r12
	xorb	$3, %r15b
	addq	$1, %r12
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movzbl	9(%rbx), %eax
	movl	%eax, %ecx
	xorb	$3, %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %cl
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	andb	$-8, %al
	movzbl	32(%r13), %ecx
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, 9(%rbx)
	movq	%rbx, %r14
.LBB4_21:                               #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB4_22
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	je	.LBB4_22
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	cmpb	$8, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	leaq	152(%rbx), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	$-3, %rdx
	callq	sweeplist
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	cmpq	40(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=1
	movzbl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	addb	$-4, %al
	cmpb	$6, %al
	ja	.LBB4_20
# %bb.10:                               #   in Loop: Header=BB4_2 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	32(%rdi), %rax
	addl	$-1, 8(%rax)
	movq	16(%rbx), %rdx
	addq	$25, %rdx
	jmp	.LBB4_18
.LBB4_14:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaH_free
	jmp	.LBB4_19
.LBB4_12:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaF_freeclosure
	jmp	.LBB4_19
.LBB4_17:                               #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rbx), %rdx
	addq	$40, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB4_18:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	jmp	.LBB4_19
.LBB4_15:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaE_freethread
	jmp	.LBB4_19
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaF_freeproto
	jmp	.LBB4_19
.LBB4_13:                               #   in Loop: Header=BB4_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaF_freeupval
	.p2align	4, 0x90
.LBB4_19:                               #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_20:                               #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_21
.LBB4_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sweeplist, .Lfunc_end4-sweeplist
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_16
	.quad	.LBB4_14
	.quad	.LBB4_12
	.quad	.LBB4_17
	.quad	.LBB4_15
	.quad	.LBB4_11
	.quad	.LBB4_13
                                        # -- End function
	.text
	.hidden	luaC_step               # -- Begin function luaC_step
	.globl	luaC_step
	.p2align	4, 0x90
	.type	luaC_step,@function
luaC_step:                              # @luaC_step
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	32(%rdi), %r14
	movl	148(%r14), %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	testl	%eax, %eax
	movabsq	$9223372036854775806, %rbx # imm = 0x7FFFFFFFFFFFFFFE
	cmovneq	%rax, %rbx
	movq	120(%r14), %rax
	subq	112(%r14), %rax
	addq	%rax, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	singlestep
	movzbl	33(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jg	.LBB5_1
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB5_7
# %bb.4:
	movq	136(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1023, %rax             # imm = 0x3FF
	ja	.LBB5_6
# %bb.5:
	movl	$1024, %eax             # imm = 0x400
	addq	120(%r14), %rax
	jmp	.LBB5_8
.LBB5_7:
	movq	128(%r14), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movslq	144(%r14), %rax
	imulq	%rdx, %rax
	jmp	.LBB5_8
.LBB5_6:
	addq	$-1024, %rax            # imm = 0xFC00
	movq	%rax, 136(%r14)
	movq	120(%r14), %rax
.LBB5_8:
	movq	%rax, 112(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaC_step, .Lfunc_end5-luaC_step
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function singlestep
	.type	singlestep,@function
singlestep:                             # @singlestep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	32(%rdi), %r12
	movzbl	33(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rax
	ja	.LBB6_87
# %bb.1:
	movq	%rdi, %r14
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_2:
	movq	%r14, %rdi
	callq	markroot
	jmp	.LBB6_87
.LBB6_3:
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_19
# %bb.4:
	movq	%r12, %rdi
	callq	propagatemark
	jmp	.LBB6_92
.LBB6_5:
	movq	120(%r12), %rbx
	movslq	36(%r12), %rsi
	leal	1(%rsi), %eax
	movl	%eax, 36(%r12)
	shlq	$3, %rsi
	addq	(%r12), %rsi
	movq	%r14, %rdi
	movq	$-3, %rdx
	callq	sweeplist
	movl	36(%r12), %eax
	cmpl	12(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB6_7
# %bb.6:
	movb	$3, 33(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_7:
	movq	120(%r12), %rax
	subq	%rbx, %rax
	addq	%rax, 128(%r12)
	movl	$10, %eax
	jmp	.LBB6_92
.LBB6_8:
	movq	48(%r12), %rsi
	movq	120(%r12), %r13
	movl	$40, %edx
	movq	%r14, %rdi
	callq	sweeplist
	movq	%rax, 48(%r12)
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_91
# %bb.9:
	movq	32(%r14), %rbx
	movl	12(%rbx), %esi
	leal	3(%rsi), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$2, %eax
	cmpl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB6_12
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65, %esi
	jl	.LBB6_12
# %bb.11:
	shrl	%esi
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	luaS_resize
	movl	$42, __A_VARIABLE(%rip)
.LBB6_12:
	movq	104(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %rdx
	jb	.LBB6_90
# %bb.13:
	movq	%rdx, %r15
	shrq	%r15
	leaq	1(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %rax
	ja	.LBB6_88
# %bb.14:
	movq	88(%rbx), %rsi
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	luaM_realloc_
	jmp	.LBB6_89
.LBB6_15:
	cmpq	$0, 80(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_18
# %bb.16:
	movq	%r14, %rdi
	callq	GCTM
	movq	128(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$100, %eax
	cmpq	$101, %rcx
	jb	.LBB6_92
# %bb.17:
	addq	$-100, %rcx
	movq	%rcx, 128(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_92
.LBB6_18:
	movb	$0, 33(%r12)
	movq	$0, 136(%r12)
	jmp	.LBB6_87
.LBB6_19:
	leaq	184(%r12), %r15
	movq	216(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jne	.LBB6_29
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_21
	.p2align	4, 0x90
.LBB6_28:                               #   in Loop: Header=BB6_29 Depth=1
	movq	32(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	je	.LBB6_44
.LBB6_29:                               # =>This Inner Loop Header: Depth=1
	movzbl	9(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB6_28
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %al
	jne	.LBB6_28
# %bb.31:                               #   in Loop: Header=BB6_29 Depth=1
	movq	16(%rbx), %rax
	cmpl	$4, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB6_28
# %bb.32:                               #   in Loop: Header=BB6_29 Depth=1
	movq	(%rax), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_28
# %bb.33:                               #   in Loop: Header=BB6_29 Depth=1
	movq	%r12, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_28
.LBB6_44:
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_21
	.p2align	4, 0x90
.LBB6_45:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_45
.LBB6_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r12), %rax
	movq	%rax, 56(%r12)
	movq	$0, 72(%r12)
	testb	$3, 9(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_23
# %bb.22:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB6_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %ebx
	jmp	.LBB6_25
	.p2align	4, 0x90
.LBB6_24:                               #   in Loop: Header=BB6_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	$37, %rbx
	je	.LBB6_34
.LBB6_25:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB6_24
# %bb.26:                               #   in Loop: Header=BB6_25 Depth=1
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_24
# %bb.27:                               #   in Loop: Header=BB6_25 Depth=1
	movq	%r12, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_24
.LBB6_34:
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB6_35:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_37
# %bb.36:                               #   in Loop: Header=BB6_35 Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	jmp	.LBB6_35
.LBB6_37:
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r12), %rax
	movq	%rax, 56(%r12)
	movq	$0, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_39
	.p2align	4, 0x90
.LBB6_38:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_38
.LBB6_39:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	luaC_separateudata
	movq	%rax, %r14
	movq	80(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_41
	.p2align	4, 0x90
.LBB6_40:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rbx
	movzbl	9(%rbx), %eax
	andb	$-8, %al
	movzbl	32(%r12), %ecx
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, 9(%rbx)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	reallymarkobject
	cmpq	80(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_40
.LBB6_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_46
# %bb.42:                               # %.preheader2
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB6_43:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_43
	jmp	.LBB6_47
.LBB6_46:
	xorl	%r15d, %r15d
.LBB6_47:
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r12), %r8
	jmp	.LBB6_49
	.p2align	4, 0x90
.LBB6_48:                               #   in Loop: Header=BB6_49 Depth=1
	movq	48(%r8), %r8
.LBB6_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_53 Depth 2
                                        #     Child Loop BB6_71 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB6_86
# %bb.50:                               #   in Loop: Header=BB6_49 Depth=1
	movslq	56(%r8), %rcx
	testb	$16, 9(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_66
# %bb.51:                               #   in Loop: Header=BB6_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB6_66
# %bb.52:                               #   in Loop: Header=BB6_49 Depth=1
	movq	%rcx, %rdx
	shlq	$4, %rdx
	addq	$-8, %rdx
	.p2align	4, 0x90
.LBB6_53:                               #   Parent Loop BB6_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	movq	24(%r8), %rsi
	movl	(%rsi,%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %edi
	jl	.LBB6_56
# %bb.54:                               #   in Loop: Header=BB6_53 Depth=2
	movq	-8(%rsi,%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	9(%rax), %ebx
	jne	.LBB6_60
# %bb.55:                               #   in Loop: Header=BB6_53 Depth=2
	andb	$-4, %bl
	movb	%bl, 9(%rax)
.LBB6_56:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_57:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_58:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_59:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-16, %rdx
	testq	%rcx, %rcx
	jne	.LBB6_53
	jmp	.LBB6_66
	.p2align	4, 0x90
.LBB6_60:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %bl
	je	.LBB6_63
# %bb.61:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_62:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$0, (%rsi,%rdx)
	jmp	.LBB6_58
.LBB6_63:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %edi
	jne	.LBB6_57
# %bb.64:                               #   in Loop: Header=BB6_53 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	je	.LBB6_59
	jmp	.LBB6_62
	.p2align	4, 0x90
.LBB6_66:                               #   in Loop: Header=BB6_49 Depth=1
	movb	11(%r8), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	notl	%eax
	movl	$42, __A_VARIABLE(%rip)
	cltq
	leaq	(%rax,%rax,4), %rdx
	leaq	1(%rax), %rcx
	leaq	24(,%rdx,8), %rdx
	jmp	.LBB6_71
.LBB6_67:                               #   in Loop: Header=BB6_71 Depth=2
	andb	$-4, %bl
	movb	%bl, 9(%rax)
.LBB6_68:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_69:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_70:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-40, %rdx
	addq	$-1, %rcx
	je	.LBB6_48
.LBB6_71:                               #   Parent Loop BB6_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r8), %rsi
	movl	-16(%rsi,%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB6_70
# %bb.72:                               #   in Loop: Header=BB6_71 Depth=2
	movl	(%rsi,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jle	.LBB6_75
# %bb.73:                               #   in Loop: Header=BB6_71 Depth=2
	movq	-8(%rsi,%rdx), %r9
	movl	$42, __A_VARIABLE(%rip)
	movzbl	9(%r9), %ebx
	cmpl	$4, %eax
	jne	.LBB6_81
# %bb.74:                               #   in Loop: Header=BB6_71 Depth=2
	andb	$-4, %bl
	movb	%bl, 9(%r9)
	movl	$42, __A_VARIABLE(%rip)
	movl	-16(%rsi,%rdx), %edi
	jmp	.LBB6_76
	.p2align	4, 0x90
.LBB6_75:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_76:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_77:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %edi
	jl	.LBB6_68
# %bb.78:                               #   in Loop: Header=BB6_71 Depth=2
	movq	-24(%rsi,%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	9(%rax), %ebx
	je	.LBB6_67
# %bb.79:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %bl
	je	.LBB6_84
# %bb.80:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_82
.LBB6_81:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %bl
	je	.LBB6_77
.LBB6_82:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$0, -16(%rsi,%rdx)
	cmpl	$4, (%rsi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB6_69
# %bb.83:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$11, (%rsi,%rdx)
	jmp	.LBB6_68
.LBB6_84:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %edi
	jne	.LBB6_69
# %bb.85:                               #   in Loop: Header=BB6_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	je	.LBB6_70
	jmp	.LBB6_82
.LBB6_86:
	movl	$42, __A_VARIABLE(%rip)
	xorb	$3, 32(%r12)
	movl	$0, 36(%r12)
	leaq	40(%r12), %rax
	movq	%rax, 48(%r12)
	movb	$2, 33(%r12)
	movq	120(%r12), %rax
	addq	%r14, %r15
	subq	%r15, %rax
	movq	%rax, 128(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_87:
	xorl	%eax, %eax
	jmp	.LBB6_92
.LBB6_88:
	movq	%r14, %rdi
	callq	luaM_toobig
.LBB6_89:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 88(%rbx)
	movq	%r15, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_90:
	movl	$42, __A_VARIABLE(%rip)
	movb	$4, 33(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_91:
	movq	120(%r12), %rax
	subq	%r13, %rax
	addq	%rax, 128(%r12)
	movl	$400, %eax              # imm = 0x190
.LBB6_92:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	singlestep, .Lfunc_end6-singlestep
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_5
	.quad	.LBB6_8
	.quad	.LBB6_15
                                        # -- End function
	.text
	.hidden	luaC_fullgc             # -- Begin function luaC_fullgc
	.globl	luaC_fullgc
	.p2align	4, 0x90
	.type	luaC_fullgc,@function
luaC_fullgc:                            # @luaC_fullgc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	32(%rdi), %r14
	movb	33(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	ja	.LBB7_2
# %bb.1:
	movl	$0, 36(%r14)
	leaq	40(%r14), %rax
	movq	%rax, 48(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%r14)
	movq	$0, 72(%r14)
	movb	$2, 33(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_3
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	je	.LBB7_4
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	singlestep
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, 33(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
.LBB7_4:
	movq	%rbx, %rdi
	callq	markroot
	.p2align	4, 0x90
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 33(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_7
# %bb.5:                                #   in Loop: Header=BB7_6 Depth=1
	movq	%rbx, %rdi
	callq	singlestep
	jmp	.LBB7_6
.LBB7_7:
	movq	128(%r14), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movslq	144(%r14), %rax
	imulq	%rdx, %rax
	movq	%rax, 112(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaC_fullgc, .Lfunc_end7-luaC_fullgc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function markroot
	.type	markroot,@function
markroot:                               # @markroot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	32(%rdi), %r15
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%r15)
	movq	$0, 72(%r15)
	movq	176(%r15), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_2
# %bb.1:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%r15), %rsi
.LBB8_2:
	cmpl	$4, 128(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB8_5
# %bb.3:
	movq	120(%rsi), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_5
# %bb.4:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB8_5:
	movq	32(%r14), %rax
	cmpl	$4, 168(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB8_8
# %bb.6:
	movq	160(%rax), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_8
# %bb.7:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %ebx
	jmp	.LBB8_9
	.p2align	4, 0x90
.LBB8_12:                               #   in Loop: Header=BB8_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	$37, %rbx
	je	.LBB8_13
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_12
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_9 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_12
.LBB8_13:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, 33(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	markroot, .Lfunc_end8-markroot
                                        # -- End function
	.hidden	luaC_barrierf           # -- Begin function luaC_barrierf
	.globl	luaC_barrierf
	.p2align	4, 0x90
	.type	luaC_barrierf,@function
luaC_barrierf:                          # @luaC_barrierf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rdi
	cmpb	$1, 33(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_2
# %bb.1:
	movq	%rdx, %rsi
	callq	reallymarkobject
	jmp	.LBB9_3
.LBB9_2:
	movb	9(%rsi), %al
	andb	$-8, %al
	movb	32(%rdi), %cl
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, 9(%rsi)
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaC_barrierf, .Lfunc_end9-luaC_barrierf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function reallymarkobject
	.type	reallymarkobject,@function
reallymarkobject:                       # @reallymarkobject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movb	8(%rsi), %cl
	movb	9(%rsi), %al
	andb	$-4, %al
	movb	%al, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-5, %cl
	cmpb	$5, %cl
	ja	.LBB10_18
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzbl	%cl, %ecx
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_13:
	movq	56(%r14), %rax
	movq	%rax, 48(%rbx)
	jmp	.LBB10_16
.LBB10_12:
	movq	56(%r14), %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB10_16
.LBB10_2:
	movq	16(%rbx), %rsi
	orb	$4, %al
	movb	%al, 9(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB10_5
# %bb.3:
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_5
# %bb.4:
	movq	%r14, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB10_5:
	movq	24(%rbx), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_17
# %bb.6:
	movq	%r14, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_17
.LBB10_14:
	movq	56(%r14), %rax
	movq	%rax, 160(%rbx)
	jmp	.LBB10_16
.LBB10_15:
	movq	56(%r14), %rax
	movq	%rax, 104(%rbx)
.LBB10_16:
	movq	%rbx, 56(%r14)
.LBB10_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_18:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_7:
	movq	16(%rbx), %rax
	cmpl	$4, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_10
# %bb.8:
	movq	(%rax), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_10
# %bb.9:
	movq	%r14, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
.LBB10_10:
	leaq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB10_17
# %bb.11:
	orb	$4, 9(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_17
.Lfunc_end10:
	.size	reallymarkobject, .Lfunc_end10-reallymarkobject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_13
	.quad	.LBB10_12
	.quad	.LBB10_2
	.quad	.LBB10_14
	.quad	.LBB10_15
	.quad	.LBB10_7
                                        # -- End function
	.text
	.hidden	luaC_barrierback        # -- Begin function luaC_barrierback
	.globl	luaC_barrierback
	.p2align	4, 0x90
	.type	luaC_barrierback,@function
luaC_barrierback:                       # @luaC_barrierback
# %bb.0:
	movq	32(%rdi), %rax
	andb	$-5, 9(%rsi)
	movq	64(%rax), %rcx
	movq	%rcx, 48(%rsi)
	movq	%rsi, 64(%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end11:
	.size	luaC_barrierback, .Lfunc_end11-luaC_barrierback
                                        # -- End function
	.hidden	luaC_link               # -- Begin function luaC_link
	.globl	luaC_link
	.p2align	4, 0x90
	.type	luaC_link,@function
luaC_link:                              # @luaC_link
# %bb.0:
	movq	32(%rdi), %rax
	movq	40(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, 40(%rax)
	movb	32(%rax), %al
	andb	$3, %al
	movb	%al, 9(%rsi)
	movb	%dl, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end12:
	.size	luaC_link, .Lfunc_end12-luaC_link
                                        # -- End function
	.hidden	luaC_linkupval          # -- Begin function luaC_linkupval
	.globl	luaC_linkupval
	.p2align	4, 0x90
	.type	luaC_linkupval,@function
luaC_linkupval:                         # @luaC_linkupval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rax
	movq	40(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, 40(%rax)
	movzbl	9(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB13_11
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %cl
	jne	.LBB13_11
# %bb.2:
	cmpb	$1, 33(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_9
# %bb.3:
	movl	%ecx, %eax
	orb	$4, %al
	movb	%al, 9(%rsi)
	movq	16(%rsi), %rax
	cmpl	$4, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB13_11
# %bb.4:
	movq	(%rax), %rax
	testb	$3, 9(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_11
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rdi), %rdi
	cmpb	$1, 33(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_7
# %bb.6:
	movq	%rax, %rsi
	callq	reallymarkobject
	jmp	.LBB13_8
.LBB13_9:
	andb	$-8, %cl
	movb	32(%rax), %al
	andb	$3, %al
	orb	%cl, %al
	movb	%al, 9(%rsi)
	jmp	.LBB13_10
.LBB13_7:
	andb	$-8, %cl
	movb	32(%rdi), %al
	andb	$3, %al
	orb	%cl, %al
	movb	%al, 9(%rsi)
.LBB13_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaC_linkupval, .Lfunc_end13-luaC_linkupval
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function propagatemark
	.type	propagatemark,@function
propagatemark:                          # @propagatemark
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	56(%rdi), %r13
	orb	$4, 9(%r13)
	movb	8(%r13), %cl
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addb	$-5, %cl
	cmpb	$4, %cl
	ja	.LBB14_113
# %bb.1:
	movq	%rdi, %r15
	movzbl	%cl, %ecx
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_2:
	movq	48(%r13), %rax
	movq	%rax, 56(%r15)
	movq	16(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movq	%r15, -64(%rbp)         # 8-byte Spill
	je	.LBB14_66
# %bb.3:
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_74
# %bb.4:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB14_75
	jmp	.LBB14_83
.LBB14_5:
	movq	16(%r13), %rax
	movq	%rax, 56(%r15)
	movq	24(%r13), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_7
# %bb.6:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB14_7:
	cmpb	$0, 10(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_67
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB14_111
# %bb.9:                                # %.preheader
	leaq	48(%r13), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_10:                              #   in Loop: Header=BB14_11 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rcx, %r14
	jae	.LBB14_112
.LBB14_11:                              # =>This Inner Loop Header: Depth=1
	cmpl	$4, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_10
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=1
	movq	-8(%rbx), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_10
# %bb.13:                               #   in Loop: Header=BB14_11 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movzbl	11(%r13), %eax
	jmp	.LBB14_10
.LBB14_14:
	movq	160(%r13), %rax
	movq	%rax, 56(%r15)
	movq	64(%r15), %rax
	movq	%rax, 160(%r13)
	movq	%r13, 64(%r15)
	andb	$-5, 9(%r13)
	cmpl	$4, 128(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_17
# %bb.15:
	movq	120(%r13), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_17
# %bb.16:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB14_17:
	movq	16(%r13), %rax
	movq	80(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
	cmpq	%rdx, %rcx
	jbe	.LBB14_54
.LBB14_18:
	movq	64(%r13), %rbx
	jmp	.LBB14_20
	.p2align	4, 0x90
.LBB14_19:                              #   in Loop: Header=BB14_20 Depth=1
	addq	$16, %rbx
.LBB14_20:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB14_25
# %bb.21:                               #   in Loop: Header=BB14_20 Depth=1
	cmpl	$4, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_19
# %bb.22:                               #   in Loop: Header=BB14_20 Depth=1
	movq	(%rbx), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_19
# %bb.23:                               #   in Loop: Header=BB14_20 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rax
	jmp	.LBB14_19
	.p2align	4, 0x90
.LBB14_24:                              #   in Loop: Header=BB14_25 Depth=1
	movl	$0, 8(%rbx)
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_25:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jbe	.LBB14_24
# %bb.26:
	movq	40(%r13), %rax
	subq	64(%r13), %r14
	movq	80(%r13), %rcx
	movl	92(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20001, %esi            # imm = 0x4E21
	jl	.LBB14_58
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_65
.LBB14_28:
	movq	104(%r13), %rax
	movq	%rax, 56(%r15)
	movq	64(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_30
# %bb.29:
	andb	$-4, 9(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	76(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB14_36
# %bb.31:
	movl	$8, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB14_33
	.p2align	4, 0x90
.LBB14_32:                              #   in Loop: Header=BB14_33 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rcx, %r14
	jge	.LBB14_36
.LBB14_33:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rcx
	cmpl	$4, (%rcx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_32
# %bb.34:                               #   in Loop: Header=BB14_33 Depth=1
	movq	-8(%rcx,%rbx), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_32
# %bb.35:                               #   in Loop: Header=BB14_33 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movl	76(%r13), %eax
	jmp	.LBB14_32
.LBB14_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	72(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB14_41
# %bb.37:
	xorl	%ecx, %ecx
	jmp	.LBB14_39
	.p2align	4, 0x90
.LBB14_38:                              #   in Loop: Header=BB14_39 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jge	.LBB14_41
.LBB14_39:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB14_38
# %bb.40:                               #   in Loop: Header=BB14_39 Depth=1
	andb	$-4, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	72(%r13), %eax
	jmp	.LBB14_38
.LBB14_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	88(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB14_47
# %bb.42:
	xorl	%ebx, %ebx
	jmp	.LBB14_44
	.p2align	4, 0x90
.LBB14_43:                              #   in Loop: Header=BB14_44 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jge	.LBB14_47
.LBB14_44:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rcx
	movq	(%rcx,%rbx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB14_43
# %bb.45:                               #   in Loop: Header=BB14_44 Depth=1
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_43
# %bb.46:                               #   in Loop: Header=BB14_44 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movl	88(%r13), %eax
	jmp	.LBB14_43
.LBB14_47:
	movl	$42, __A_VARIABLE(%rip)
	movslq	92(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB14_53
# %bb.48:
	xorl	%eax, %eax
	movl	%ecx, %esi
	xorl	%edx, %edx
	jmp	.LBB14_50
	.p2align	4, 0x90
.LBB14_49:                              #   in Loop: Header=BB14_50 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jge	.LBB14_52
.LBB14_50:                              # =>This Inner Loop Header: Depth=1
	movq	48(%r13), %rcx
	movq	(%rcx,%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB14_49
# %bb.51:                               #   in Loop: Header=BB14_50 Depth=1
	andb	$-4, 9(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	92(%r13), %esi
	jmp	.LBB14_49
.LBB14_52:
	movl	88(%r13), %eax
.LBB14_53:
	movl	$42, __A_VARIABLE(%rip)
	movslq	80(%r13), %rdx
	cltq
	movslq	76(%r13), %rsi
	addq	%rcx, %rsi
	movslq	84(%r13), %rcx
	movslq	72(%r13), %rdi
	shlq	$4, %rsi
	addq	%rax, %rdi
	addq	%rdx, %rcx
	leaq	(%rsi,%rcx,4), %rax
	leaq	(%rax,%rdi,8), %rax
	addq	$120, %rax
	jmp	.LBB14_113
.LBB14_54:                              # %.preheader7
	movq	%rax, %r14
	jmp	.LBB14_56
	.p2align	4, 0x90
.LBB14_55:                              #   in Loop: Header=BB14_56 Depth=1
	addq	$40, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	ja	.LBB14_18
.LBB14_56:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r14
	jae	.LBB14_55
# %bb.57:                               #   in Loop: Header=BB14_56 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r14
	jmp	.LBB14_55
.LBB14_58:
	subq	%rcx, %rax
	shrq	$3, %rax
	imull	$858993460, %eax, %eax  # imm = 0x33333334
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jge	.LBB14_61
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %esi
	jl	.LBB14_61
# %bb.60:
	shrl	%esi
	andl	$32767, %esi            # imm = 0x7FFF
	movq	%r13, %rdi
	callq	luaD_reallocCI
	movl	$42, __A_VARIABLE(%rip)
.LBB14_61:
	shrq	$2, %r14
	andl	$-4, %r14d
	movl	88(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r14d
	jge	.LBB14_64
# %bb.62:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$91, %esi
	jl	.LBB14_64
# %bb.63:
	shrl	%esi
	movq	%r13, %rdi
	callq	luaD_reallocstack
	movl	$42, __A_VARIABLE(%rip)
.LBB14_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	92(%r13), %esi
.LBB14_65:
	addq	$88, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%r13), %rax
	shlq	$4, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$184, %rax
	jmp	.LBB14_113
.LBB14_66:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_83
.LBB14_67:
	movq	32(%r13), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_69
# %bb.68:
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
.LBB14_69:
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB14_111
# %bb.70:
	xorl	%ebx, %ebx
	jmp	.LBB14_72
	.p2align	4, 0x90
.LBB14_71:                              #   in Loop: Header=BB14_72 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jae	.LBB14_112
.LBB14_72:                              # =>This Inner Loop Header: Depth=1
	movq	40(%r13,%rbx,8), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_71
# %bb.73:                               #   in Loop: Header=BB14_72 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	movzbl	11(%r13), %eax
	jmp	.LBB14_71
.LBB14_111:
	xorl	%eax, %eax
.LBB14_112:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, 10(%r13)
	movb	$4, %cl
	sbbb	$0, %cl
	movzbl	%al, %eax
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$40, %eax
	jmp	.LBB14_113
.LBB14_74:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_75:
	testb	$8, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_83
# %bb.76:
	movq	320(%r15), %rdx
	movq	%rsi, %rdi
	movl	$3, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_84
# %bb.77:
	movq	%rax, %r12
	cmpl	$4, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_84
# %bb.78:
	movq	(%r12), %rdi
	addq	$24, %rdi
	movl	$107, %esi
	callq	strchr
	movq	%rax, %r14
	xorl	%ebx, %ebx
	testq	%rax, %rax
	setne	%al
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	%al, %bl
	movq	(%r12), %rdi
	addq	$24, %rdi
	movl	$118, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rcx
	orq	%rax, %rcx
	je	.LBB14_80
# %bb.79:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	movb	9(%r13), %dl
	andb	$-25, %dl
	shll	$4, %ecx
	leal	(%rcx,%rbx,8), %ecx
	orb	%dl, %cl
	movb	%cl, 9(%r13)
	movq	72(%r15), %rcx
	movq	%rcx, 48(%r13)
	movq	%r13, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_80:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_114
# %bb.81:
	testq	%rax, %rax
	je	.LBB14_114
# %bb.82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_108
.LBB14_83:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_84:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%eax, %eax
.LBB14_85:
	movslq	56(%r13), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB14_91
# %bb.86:
	movq	%r14, %rbx
	shlq	$4, %rbx
	addq	$-8, %rbx
	jmp	.LBB14_88
	.p2align	4, 0x90
.LBB14_87:                              #   in Loop: Header=BB14_88 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-16, %rbx
	testq	%r14, %r14
	je	.LBB14_91
.LBB14_88:                              # =>This Inner Loop Header: Depth=1
	addq	$-1, %r14
	movq	24(%r13), %rax
	cmpl	$4, (%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_87
# %bb.89:                               #   in Loop: Header=BB14_88 Depth=1
	movq	-8(%rax,%rbx), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_87
# %bb.90:                               #   in Loop: Header=BB14_88 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_87
.LBB14_91:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%ebx, %ebx
.LBB14_92:
	movb	11(%r13), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	notl	%eax
	movl	$42, __A_VARIABLE(%rip)
	cltq
	leaq	(%rax,%rax,4), %rcx
	leaq	1(%rax), %r12
	leaq	24(,%rcx,8), %r14
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB14_96
	.p2align	4, 0x90
.LBB14_93:                              #   in Loop: Header=BB14_96 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB14_94:                              #   in Loop: Header=BB14_96 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB14_95:                              #   in Loop: Header=BB14_96 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-40, %r14
	addq	$-1, %r12
	je	.LBB14_107
.LBB14_96:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %r15
	cmpl	$0, -16(%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_105
# %bb.97:                               #   in Loop: Header=BB14_96 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB14_101
# %bb.98:                               #   in Loop: Header=BB14_96 Depth=1
	cmpl	$4, (%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_101
# %bb.99:                               #   in Loop: Header=BB14_96 Depth=1
	movq	-8(%r15,%r14), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_101
# %bb.100:                              #   in Loop: Header=BB14_96 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	reallymarkobject
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB14_101:                             #   in Loop: Header=BB14_96 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jne	.LBB14_95
# %bb.102:                              #   in Loop: Header=BB14_96 Depth=1
	cmpl	$4, -16(%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_95
# %bb.103:                              #   in Loop: Header=BB14_96 Depth=1
	movq	-24(%r15,%r14), %rsi
	testb	$3, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_95
# %bb.104:                              #   in Loop: Header=BB14_96 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	reallymarkobject
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB14_94
	.p2align	4, 0x90
.LBB14_105:                             #   in Loop: Header=BB14_96 Depth=1
	cmpl	$4, (%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB14_93
# %bb.106:                              #   in Loop: Header=BB14_96 Depth=1
	movl	$11, (%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_93
.LBB14_107:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax         # 4-byte Reload
	orl	-56(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_109
.LBB14_108:
	andb	$-5, 9(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_109:
	movslq	56(%r13), %rax
	movb	11(%r13), %cl
	movl	$1, %edx
	shll	%cl, %edx
	shlq	$4, %rax
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$64, %rax
.LBB14_113:
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
.LBB14_114:
	testq	%rax, %rax
	je	.LBB14_116
# %bb.115:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movb	$1, %bl
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB14_92
.LBB14_116:
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB14_85
.Lfunc_end14:
	.size	propagatemark, .Lfunc_end14-propagatemark
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_2
	.quad	.LBB14_5
	.quad	.LBB14_113
	.quad	.LBB14_14
	.quad	.LBB14_28
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaT_gettm
	.hidden	luaD_call
	.hidden	luaF_freeproto
	.hidden	luaF_freeclosure
	.hidden	luaF_freeupval
	.hidden	luaH_free
	.hidden	luaE_freethread
	.hidden	luaM_realloc_
	.hidden	luaD_reallocCI
	.hidden	luaD_reallocstack
	.hidden	luaS_resize
	.hidden	luaM_toobig
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
