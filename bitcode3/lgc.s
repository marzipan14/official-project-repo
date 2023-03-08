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
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_15
# %bb.1:
	movl	%esi, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB0_4
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	movzbl	9(%rbx), %eax
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	orb	$8, %al
	movb	%al, 9(%rbx)
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, %r14
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	testl	%r13d, %r13d
	setne	%cl
	movzbl	9(%rbx), %eax
	testb	$3, %al
	setne	%dl
	testb	$8, %al
	jne	.LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	orb	%dl, %cl
	je	.LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	testb	$4, 10(%rdi)
	jne	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	movq	312(%rax), %rdx
	movl	$2, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rax
	movq	32(%rbx), %rcx
	orb	$8, 9(%rbx)
	addq	%rcx, %r15
	addq	$40, %r15
	movq	%rax, (%r14)
	movq	80(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	80(%r12), %rax
	movq	%rbx, (%rax)
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, (%rbx)
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, 80(%r12)
	jmp	.LBB0_3
.LBB0_15:
	xorl	%r15d, %r15d
.LBB0_16:
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
	movq	32(%rdi), %rax
	cmpq	$0, 80(%rax)
	je	.LBB1_3
# %bb.1:                                # %.preheader
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	GCTM
	movq	32(%rbx), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB1_2
.LBB1_3:
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
	cmpq	%rax, %rbx
	je	.LBB2_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB2_3
.LBB2_1:
	movq	$0, 80(%r15)
.LBB2_3:
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
	testq	%rdi, %rdi
	je	.LBB2_7
# %bb.4:
	testb	$4, 10(%rdi)
	jne	.LBB2_7
# %bb.5:
	movq	32(%r14), %rax
	movq	312(%rax), %rdx
	movl	$2, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB2_7
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
	cmpl	$0, 12(%r15)
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
	movslq	12(%r15), %rax
	addq	$8, %r12
	cmpq	%rax, %rbx
	jl	.LBB3_2
.LBB3_3:
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
	movq	%rsi, %r15
	movq	(%rsi), %rbx
	testq	%rbx, %rbx
	je	.LBB4_21
# %bb.1:
	movq	%rdx, %r12
	movq	32(%rdi), %r13
	movb	32(%r13), %al
	xorb	$3, %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	addq	$1, %r12
	movq	%rdi, %r14
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movzbl	9(%rbx), %eax
	movl	%eax, %ecx
	xorb	$3, %cl
	testb	%cl, -41(%rbp)          # 1-byte Folded Reload
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	andb	$-8, %al
	movzbl	32(%r13), %ecx
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, 9(%rbx)
	movq	%rbx, %r15
.LBB4_20:                               #   in Loop: Header=BB4_2 Depth=1
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB4_21
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %r12
	je	.LBB4_21
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	cmpb	$8, 8(%rbx)
	jne	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	leaq	152(%rbx), %rsi
	movq	%r14, %rdi
	movq	$-3, %rdx
	callq	sweeplist
	movq	%r14, %rdi
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, (%r15)
	cmpq	40(%r13), %rbx
	jne	.LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 40(%r13)
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=1
	movzbl	8(%rbx), %eax
	addb	$-4, %al
	cmpb	$6, %al
	ja	.LBB4_20
# %bb.10:                               #   in Loop: Header=BB4_2 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rdi), %rax
	addl	$-1, 8(%rax)
	movq	16(%rbx), %rdx
	addq	$25, %rdx
	jmp	.LBB4_18
.LBB4_14:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaH_free
	jmp	.LBB4_19
.LBB4_12:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaF_freeclosure
	jmp	.LBB4_19
.LBB4_17:                               #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rbx), %rdx
	addq	$40, %rdx
.LBB4_18:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	jmp	.LBB4_19
.LBB4_15:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaE_freethread
	jmp	.LBB4_19
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaF_freeproto
	jmp	.LBB4_19
.LBB4_13:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaF_freeupval
	.p2align	4, 0x90
.LBB4_19:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%r14, %rdi
	jmp	.LBB4_20
.LBB4_21:
	movq	%r15, %rax
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
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	singlestep
	movzbl	33(%r14), %ecx
	testb	%cl, %cl
	je	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	subq	%rax, %rbx
	testq	%rbx, %rbx
	jg	.LBB5_1
.LBB5_3:
	testb	%cl, %cl
	je	.LBB5_7
# %bb.4:
	movq	136(%r14), %rax
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
	cmpq	$4, %rax
	ja	.LBB6_73
# %bb.1:
	movq	%rdi, %r14
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_2:
	movq	%r14, %rdi
	callq	markroot
	jmp	.LBB6_73
.LBB6_3:
	cmpq	$0, 56(%r12)
	je	.LBB6_4
# %bb.75:
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	propagatemark           # TAILCALL
.LBB6_55:
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
	jl	.LBB6_57
# %bb.56:
	movb	$3, 33(%r12)
.LBB6_57:
	movq	120(%r12), %rax
	subq	%rbx, %rax
	addq	%rax, 128(%r12)
	movl	$10, %eax
	jmp	.LBB6_74
.LBB6_58:
	movq	48(%r12), %rsi
	movq	120(%r12), %r13
	movl	$40, %edx
	movq	%r14, %rdi
	callq	sweeplist
	movq	%rax, 48(%r12)
	cmpq	$0, (%rax)
	jne	.LBB6_68
# %bb.59:
	movq	32(%r14), %rbx
	movl	12(%rbx), %esi
	leal	3(%rsi), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	cmpl	$65, %esi
	jl	.LBB6_62
# %bb.60:
	sarl	$2, %eax
	cmpl	%eax, 8(%rbx)
	jae	.LBB6_62
# %bb.61:
	shrl	%esi
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	luaS_resize
.LBB6_62:
	movq	104(%rbx), %rdx
	cmpq	$65, %rdx
	jb	.LBB6_67
# %bb.63:
	movq	%rdx, %r15
	shrq	%r15
	leaq	1(%r15), %rax
	cmpq	$-3, %rax
	ja	.LBB6_65
# %bb.64:
	movq	88(%rbx), %rsi
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	luaM_realloc_
	jmp	.LBB6_66
.LBB6_69:
	cmpq	$0, 80(%r12)
	je	.LBB6_72
# %bb.70:
	movq	%r14, %rdi
	callq	GCTM
	movq	128(%r12), %rcx
	movl	$100, %eax
	cmpq	$101, %rcx
	jb	.LBB6_74
# %bb.71:
	addq	$-100, %rcx
	movq	%rcx, 128(%r12)
	jmp	.LBB6_74
.LBB6_72:
	movb	$0, 33(%r12)
	movq	$0, 136(%r12)
	jmp	.LBB6_73
.LBB6_4:
	leaq	184(%r12), %r15
	movq	216(%r12), %rbx
	cmpq	%r15, %rbx
	jne	.LBB6_5
	jmp	.LBB6_12
	.p2align	4, 0x90
.LBB6_9:                                #   in Loop: Header=BB6_5 Depth=1
	movq	32(%rbx), %rbx
	cmpq	%r15, %rbx
	je	.LBB6_11
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	testb	$7, 9(%rbx)
	jne	.LBB6_9
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movq	16(%rbx), %rax
	cmpl	$4, 8(%rax)
	jl	.LBB6_9
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=1
	movq	(%rax), %rsi
	testb	$3, 9(%rsi)
	je	.LBB6_9
# %bb.8:                                #   in Loop: Header=BB6_5 Depth=1
	movq	%r12, %rdi
	callq	reallymarkobject
	jmp	.LBB6_9
	.p2align	4, 0x90
.LBB6_10:                               #   in Loop: Header=BB6_11 Depth=1
	movq	%r12, %rdi
	callq	propagatemark
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%r12)
	jne	.LBB6_10
.LBB6_12:
	movq	72(%r12), %rax
	movq	%rax, 56(%r12)
	movq	$0, 72(%r12)
	testb	$3, 9(%r14)
	je	.LBB6_14
# %bb.13:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	reallymarkobject
.LBB6_14:
	movq	%r12, %rdi
	callq	markmt
	cmpq	$0, 56(%r12)
	je	.LBB6_17
	.p2align	4, 0x90
.LBB6_15:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	cmpq	$0, 56(%r12)
	jne	.LBB6_15
.LBB6_17:
	movq	64(%r12), %rax
	movq	%rax, 56(%r12)
	movq	$0, 64(%r12)
	testq	%rax, %rax
	je	.LBB6_19
	.p2align	4, 0x90
.LBB6_18:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	cmpq	$0, 56(%r12)
	jne	.LBB6_18
.LBB6_19:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	luaC_separateudata
	movq	%rax, %r14
	movq	80(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB6_21
	.p2align	4, 0x90
.LBB6_20:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB6_20
.LBB6_21:
	cmpq	$0, 56(%r12)
	je	.LBB6_22
# %bb.23:                               # %.preheader2
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB6_24:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	propagatemark
	addq	%rax, %r15
	cmpq	$0, 56(%r12)
	jne	.LBB6_24
	jmp	.LBB6_25
.LBB6_22:
	xorl	%r15d, %r15d
.LBB6_25:
	movq	72(%r12), %r8
	jmp	.LBB6_26
	.p2align	4, 0x90
.LBB6_53:                               #   in Loop: Header=BB6_26 Depth=1
	movq	48(%r8), %r8
.LBB6_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
                                        #     Child Loop BB6_39 Depth 2
	testq	%r8, %r8
	je	.LBB6_54
# %bb.27:                               #   in Loop: Header=BB6_26 Depth=1
	movslq	56(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB6_38
# %bb.28:                               #   in Loop: Header=BB6_26 Depth=1
	movb	9(%r8), %al
	andb	$16, %al
	je	.LBB6_38
# %bb.29:                               #   in Loop: Header=BB6_26 Depth=1
	movq	%rcx, %rdx
	shlq	$4, %rdx
	addq	$-8, %rdx
	jmp	.LBB6_30
	.p2align	4, 0x90
.LBB6_32:                               #   in Loop: Header=BB6_30 Depth=2
	andb	$-4, %bl
	movb	%bl, 9(%rax)
.LBB6_37:                               #   in Loop: Header=BB6_30 Depth=2
	addq	$-16, %rdx
	testq	%rcx, %rcx
	je	.LBB6_38
.LBB6_30:                               #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	movq	24(%r8), %rsi
	movl	(%rsi,%rdx), %edi
	cmpl	$4, %edi
	jl	.LBB6_37
# %bb.31:                               #   in Loop: Header=BB6_30 Depth=2
	movq	-8(%rsi,%rdx), %rax
	movzbl	9(%rax), %ebx
	je	.LBB6_32
# %bb.33:                               #   in Loop: Header=BB6_30 Depth=2
	testb	$3, %bl
	jne	.LBB6_36
# %bb.34:                               #   in Loop: Header=BB6_30 Depth=2
	cmpl	$7, %edi
	jne	.LBB6_37
# %bb.35:                               #   in Loop: Header=BB6_30 Depth=2
	andb	$8, %bl
	je	.LBB6_37
.LBB6_36:                               #   in Loop: Header=BB6_30 Depth=2
	movl	$0, (%rsi,%rdx)
	jmp	.LBB6_37
	.p2align	4, 0x90
.LBB6_38:                               #   in Loop: Header=BB6_26 Depth=1
	movb	11(%r8), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	cltq
	leaq	(%rax,%rax,4), %rdx
	leaq	1(%rax), %rcx
	leaq	24(,%rdx,8), %rdx
	jmp	.LBB6_39
.LBB6_46:                               #   in Loop: Header=BB6_39 Depth=2
	andb	$-4, %bl
	movb	%bl, 9(%rax)
	.p2align	4, 0x90
.LBB6_52:                               #   in Loop: Header=BB6_39 Depth=2
	addq	$-40, %rdx
	addq	$-1, %rcx
	je	.LBB6_53
.LBB6_39:                               #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r8), %rsi
	movl	-16(%rsi,%rdx), %edi
	testl	%edi, %edi
	je	.LBB6_52
# %bb.40:                               #   in Loop: Header=BB6_39 Depth=2
	cmpl	$4, (%rsi,%rdx)
	jl	.LBB6_44
# %bb.41:                               #   in Loop: Header=BB6_39 Depth=2
	movq	-8(%rsi,%rdx), %rax
	movzbl	9(%rax), %ebx
	jne	.LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_39 Depth=2
	andb	$-4, %bl
	movb	%bl, 9(%rax)
	movl	-16(%rsi,%rdx), %edi
	jmp	.LBB6_44
.LBB6_43:                               #   in Loop: Header=BB6_39 Depth=2
	testb	$3, %bl
	jne	.LBB6_50
	.p2align	4, 0x90
.LBB6_44:                               #   in Loop: Header=BB6_39 Depth=2
	cmpl	$4, %edi
	jl	.LBB6_52
# %bb.45:                               #   in Loop: Header=BB6_39 Depth=2
	movq	-24(%rsi,%rdx), %rax
	movzbl	9(%rax), %ebx
	je	.LBB6_46
# %bb.47:                               #   in Loop: Header=BB6_39 Depth=2
	testb	$3, %bl
	jne	.LBB6_50
# %bb.48:                               #   in Loop: Header=BB6_39 Depth=2
	cmpl	$7, %edi
	jne	.LBB6_52
# %bb.49:                               #   in Loop: Header=BB6_39 Depth=2
	andb	$8, %bl
	je	.LBB6_52
	.p2align	4, 0x90
.LBB6_50:                               #   in Loop: Header=BB6_39 Depth=2
	movl	$0, -16(%rsi,%rdx)
	cmpl	$4, (%rsi,%rdx)
	jl	.LBB6_52
# %bb.51:                               #   in Loop: Header=BB6_39 Depth=2
	movl	$11, (%rsi,%rdx)
	jmp	.LBB6_52
.LBB6_54:
	xorb	$3, 32(%r12)
	movl	$0, 36(%r12)
	leaq	40(%r12), %rax
	movq	%rax, 48(%r12)
	movb	$2, 33(%r12)
	movq	120(%r12), %rax
	addq	%r14, %r15
	subq	%r15, %rax
	movq	%rax, 128(%r12)
.LBB6_73:
	xorl	%eax, %eax
	jmp	.LBB6_74
.LBB6_65:
	movq	%r14, %rdi
	callq	luaM_toobig
.LBB6_66:
	movq	%rax, 88(%rbx)
	movq	%r15, 104(%rbx)
.LBB6_67:
	movb	$4, 33(%r12)
.LBB6_68:
	movq	120(%r12), %rax
	subq	%r13, %rax
	addq	%rax, 128(%r12)
	movl	$400, %eax              # imm = 0x190
.LBB6_74:
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
	.quad	.LBB6_55
	.quad	.LBB6_58
	.quad	.LBB6_69
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
	jmp	.LBB7_3
.LBB7_2:
	cmpb	$4, %al
	je	.LBB7_4
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	singlestep
	cmpb	$4, 33(%r14)
	jne	.LBB7_3
.LBB7_4:
	movq	%rbx, %rdi
	callq	markroot
	cmpb	$0, 33(%r14)
	je	.LBB7_7
	.p2align	4, 0x90
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	singlestep
	cmpb	$0, 33(%r14)
	jne	.LBB7_5
.LBB7_7:
	movq	128(%r14), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movslq	144(%r14), %rax
	imulq	%rdx, %rax
	movq	%rax, 112(%r14)
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
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	32(%rdi), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	176(%rbx), %rsi
	testb	$3, 9(%rsi)
	je	.LBB8_2
# %bb.1:
	movq	%rbx, %rdi
	callq	reallymarkobject
	movq	176(%rbx), %rsi
.LBB8_2:
	cmpl	$4, 128(%rsi)
	jl	.LBB8_5
# %bb.3:
	movq	120(%rsi), %rsi
	testb	$3, 9(%rsi)
	je	.LBB8_5
# %bb.4:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB8_5:
	movq	32(%r14), %rax
	cmpl	$4, 168(%rax)
	jl	.LBB8_8
# %bb.6:
	movq	160(%rax), %rsi
	testb	$3, 9(%rsi)
	je	.LBB8_8
# %bb.7:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB8_8:
	movq	%rbx, %rdi
	callq	markmt
	movb	$1, 33(%rbx)
	popq	%rbx
	popq	%r14
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
	movq	32(%rdi), %rdi
	cmpb	$1, 33(%rdi)
	jne	.LBB9_1
# %bb.2:
	movq	%rdx, %rsi
	jmp	reallymarkobject        # TAILCALL
.LBB9_1:
	movb	9(%rsi), %al
	andb	$-8, %al
	movb	32(%rdi), %cl
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, 9(%rsi)
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movb	9(%rsi), %al
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	movq	24(%rbx), %rbx
	movzbl	9(%rbx), %eax
	testb	$3, %al
	je	.LBB10_18
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	andb	$-4, %al
	movb	%al, 9(%rbx)
	movzbl	8(%rbx), %ecx
	cmpb	$7, %cl
	jne	.LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	movq	16(%rbx), %rsi
	orb	$4, %al
	movb	%al, 9(%rbx)
	testq	%rsi, %rsi
	je	.LBB10_7
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	testb	$3, 9(%rsi)
	je	.LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_1 Depth=1
	movq	%r14, %rdi
	callq	reallymarkobject
	jmp	.LBB10_7
.LBB10_2:
	addb	$-5, %cl
	cmpb	$5, %cl
	ja	.LBB10_18
# %bb.3:
	movzbl	%cl, %eax
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_14:
	movq	56(%r14), %rax
	movq	%rax, 48(%rbx)
	jmp	.LBB10_17
.LBB10_13:
	movq	56(%r14), %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB10_17
.LBB10_15:
	movq	56(%r14), %rax
	movq	%rax, 160(%rbx)
	jmp	.LBB10_17
.LBB10_16:
	movq	56(%r14), %rax
	movq	%rax, 104(%rbx)
.LBB10_17:
	movq	%rbx, 56(%r14)
.LBB10_18:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_8:
	movq	16(%rbx), %rax
	cmpl	$4, 8(%rax)
	jl	.LBB10_11
# %bb.9:
	movq	(%rax), %rsi
	testb	$3, 9(%rsi)
	je	.LBB10_11
# %bb.10:
	movq	%r14, %rdi
	callq	reallymarkobject
	movq	16(%rbx), %rax
.LBB10_11:
	leaq	24(%rbx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_18
# %bb.12:
	orb	$4, 9(%rbx)
	jmp	.LBB10_18
.Lfunc_end10:
	.size	reallymarkobject, .Lfunc_end10-reallymarkobject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_14
	.quad	.LBB10_13
	.quad	.LBB10_18
	.quad	.LBB10_15
	.quad	.LBB10_16
	.quad	.LBB10_8
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
	movq	32(%rdi), %rax
	movq	40(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, 40(%rax)
	movb	9(%rsi), %cl
	testb	$7, %cl
	je	.LBB13_1
.LBB13_8:
	retq
.LBB13_1:
	cmpb	$1, 33(%rax)
	jne	.LBB13_6
# %bb.2:
	movl	%ecx, %eax
	orb	$4, %al
	movb	%al, 9(%rsi)
	movq	16(%rsi), %rax
	cmpl	$4, 8(%rax)
	jl	.LBB13_8
# %bb.3:
	movq	(%rax), %rax
	testb	$3, 9(%rax)
	je	.LBB13_8
# %bb.4:
	movq	32(%rdi), %rdi
	cmpb	$1, 33(%rdi)
	jne	.LBB13_5
# %bb.9:
	movq	%rax, %rsi
	jmp	reallymarkobject        # TAILCALL
.LBB13_6:
	andb	$-8, %cl
	movb	32(%rax), %al
.LBB13_7:
	andb	$3, %al
	orb	%cl, %al
	movb	%al, 9(%rsi)
	retq
.LBB13_5:
	andb	$-8, %cl
	movb	32(%rdi), %al
	jmp	.LBB13_7
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
	xorl	%eax, %eax
	addb	$-5, %cl
	cmpb	$4, %cl
	ja	.LBB14_105
# %bb.1:
	movq	%rdi, %r15
	movzbl	%cl, %ecx
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_2:
	movq	48(%r13), %rax
	movq	%rax, 56(%r15)
	movq	16(%r13), %rsi
	testq	%rsi, %rsi
	movq	%r15, -64(%rbp)         # 8-byte Spill
	je	.LBB14_71
# %bb.3:
	testb	$3, 9(%rsi)
	je	.LBB14_5
# %bb.4:
	movq	%r15, %rdi
	callq	reallymarkobject
	movq	16(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB14_71
.LBB14_5:
	xorl	%ebx, %ebx
	testb	$8, 10(%rsi)
	movl	$0, %eax
	jne	.LBB14_72
# %bb.6:
	movq	320(%r15), %rdx
	movq	%rsi, %rdi
	movl	$3, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB14_71
# %bb.7:
	movq	%rax, %r12
	xorl	%ebx, %ebx
	cmpl	$4, 8(%rax)
	movl	$0, %eax
	jne	.LBB14_72
# %bb.8:
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
	movq	%r14, %rcx
	orq	%rax, %rcx
	je	.LBB14_10
# %bb.9:
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
.LBB14_10:
	testq	%r14, %r14
	je	.LBB14_12
# %bb.11:
	testq	%rax, %rax
	jne	.LBB14_93
.LBB14_12:
	testq	%rax, %rax
	je	.LBB14_106
# %bb.13:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movb	$1, %r12b
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB14_79
.LBB14_14:
	movq	16(%r13), %rax
	movq	%rax, 56(%r15)
	movq	24(%r13), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_16
# %bb.15:
	movq	%r15, %rdi
	callq	reallymarkobject
.LBB14_16:
	cmpb	$0, 10(%r13)
	je	.LBB14_95
# %bb.17:
	movb	11(%r13), %al
	testb	%al, %al
	je	.LBB14_103
# %bb.18:                               # %.preheader
	leaq	48(%r13), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB14_20
	.p2align	4, 0x90
.LBB14_19:                              #   in Loop: Header=BB14_20 Depth=1
	addq	$1, %r14
	movzbl	%al, %ecx
	addq	$16, %rbx
	cmpq	%rcx, %r14
	jae	.LBB14_104
.LBB14_20:                              # =>This Inner Loop Header: Depth=1
	cmpl	$4, (%rbx)
	jl	.LBB14_19
# %bb.21:                               #   in Loop: Header=BB14_20 Depth=1
	movq	-8(%rbx), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_19
# %bb.22:                               #   in Loop: Header=BB14_20 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movzbl	11(%r13), %eax
	jmp	.LBB14_19
.LBB14_23:
	movq	160(%r13), %rax
	movq	%rax, 56(%r15)
	movq	64(%r15), %rax
	movq	%rax, 160(%r13)
	movq	%r13, 64(%r15)
	andb	$-5, 9(%r13)
	cmpl	$4, 128(%r13)
	jl	.LBB14_26
# %bb.24:
	movq	120(%r13), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_26
# %bb.25:
	movq	%r15, %rdi
	callq	reallymarkobject
.LBB14_26:
	movq	16(%r13), %rax
	movq	40(%r13), %rcx
	movq	80(%r13), %rdx
	movq	%rax, %r14
	cmpq	%rcx, %rdx
	ja	.LBB14_29
# %bb.27:                               # %.preheader7
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB14_28:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rdx), %rsi
	cmpq	%rsi, %r14
	cmovbq	%rsi, %r14
	addq	$40, %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB14_28
.LBB14_29:
	movq	64(%r13), %rbx
	jmp	.LBB14_31
	.p2align	4, 0x90
.LBB14_30:                              #   in Loop: Header=BB14_31 Depth=1
	addq	$16, %rbx
.LBB14_31:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rbx
	jae	.LBB14_36
# %bb.32:                               #   in Loop: Header=BB14_31 Depth=1
	cmpl	$4, 8(%rbx)
	jl	.LBB14_30
# %bb.33:                               #   in Loop: Header=BB14_31 Depth=1
	movq	(%rbx), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_30
# %bb.34:                               #   in Loop: Header=BB14_31 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movq	16(%r13), %rax
	jmp	.LBB14_30
	.p2align	4, 0x90
.LBB14_35:                              #   in Loop: Header=BB14_36 Depth=1
	movl	$0, 8(%rbx)
	addq	$16, %rbx
.LBB14_36:                              # =>This Inner Loop Header: Depth=1
	cmpq	%r14, %rbx
	jbe	.LBB14_35
# %bb.37:
	movl	92(%r13), %esi
	cmpl	$20001, %esi            # imm = 0x4E21
	jge	.LBB14_44
# %bb.38:
	subq	64(%r13), %r14
	cmpl	$17, %esi
	jl	.LBB14_41
# %bb.39:
	movq	40(%r13), %rax
	subq	80(%r13), %rax
	shrq	$3, %rax
	imull	$858993460, %eax, %eax  # imm = 0x33333334
	cmpl	%esi, %eax
	jge	.LBB14_41
# %bb.40:
	shrl	%esi
	andl	$32767, %esi            # imm = 0x7FFF
	movq	%r13, %rdi
	callq	luaD_reallocCI
.LBB14_41:
	shrq	$2, %r14
	andl	$-4, %r14d
	movl	88(%r13), %esi
	cmpl	%esi, %r14d
	jge	.LBB14_44
# %bb.42:
	cmpl	$91, %esi
	jl	.LBB14_44
# %bb.43:
	shrl	%esi
	movq	%r13, %rdi
	callq	luaD_reallocstack
.LBB14_44:
	movslq	88(%r13), %rax
	shlq	$4, %rax
	movslq	92(%r13), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$184, %rax
	jmp	.LBB14_105
.LBB14_45:
	movq	104(%r13), %rax
	movq	%rax, 56(%r15)
	movq	64(%r13), %rax
	testq	%rax, %rax
	je	.LBB14_47
# %bb.46:
	andb	$-4, 9(%rax)
.LBB14_47:
	movl	76(%r13), %eax
	testl	%eax, %eax
	jle	.LBB14_53
# %bb.48:
	movl	$8, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB14_50
	.p2align	4, 0x90
.LBB14_49:                              #   in Loop: Header=BB14_50 Depth=1
	addq	$1, %r14
	movslq	%eax, %rcx
	addq	$16, %rbx
	cmpq	%rcx, %r14
	jge	.LBB14_53
.LBB14_50:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rcx
	cmpl	$4, (%rcx,%rbx)
	jl	.LBB14_49
# %bb.51:                               #   in Loop: Header=BB14_50 Depth=1
	movq	-8(%rcx,%rbx), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_49
# %bb.52:                               #   in Loop: Header=BB14_50 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	76(%r13), %eax
	jmp	.LBB14_49
.LBB14_53:
	movl	72(%r13), %eax
	testl	%eax, %eax
	jle	.LBB14_58
# %bb.54:
	xorl	%ecx, %ecx
	jmp	.LBB14_56
	.p2align	4, 0x90
.LBB14_55:                              #   in Loop: Header=BB14_56 Depth=1
	addq	$1, %rcx
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB14_58
.LBB14_56:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rdx
	movq	(%rdx,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB14_55
# %bb.57:                               #   in Loop: Header=BB14_56 Depth=1
	andb	$-4, 9(%rdx)
	movl	72(%r13), %eax
	jmp	.LBB14_55
.LBB14_58:
	movl	88(%r13), %eax
	testl	%eax, %eax
	jle	.LBB14_64
# %bb.59:
	xorl	%ebx, %ebx
	jmp	.LBB14_61
	.p2align	4, 0x90
.LBB14_60:                              #   in Loop: Header=BB14_61 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB14_64
.LBB14_61:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rcx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB14_60
# %bb.62:                               #   in Loop: Header=BB14_61 Depth=1
	testb	$3, 9(%rsi)
	je	.LBB14_60
# %bb.63:                               #   in Loop: Header=BB14_61 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movl	88(%r13), %eax
	jmp	.LBB14_60
.LBB14_64:
	movslq	92(%r13), %rcx
	testq	%rcx, %rcx
	jle	.LBB14_70
# %bb.65:
	xorl	%eax, %eax
	movl	%ecx, %esi
	xorl	%edx, %edx
	jmp	.LBB14_67
	.p2align	4, 0x90
.LBB14_66:                              #   in Loop: Header=BB14_67 Depth=1
	addq	$1, %rdx
	movslq	%esi, %rcx
	addq	$16, %rax
	cmpq	%rcx, %rdx
	jge	.LBB14_69
.LBB14_67:                              # =>This Inner Loop Header: Depth=1
	movq	48(%r13), %rcx
	movq	(%rcx,%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB14_66
# %bb.68:                               #   in Loop: Header=BB14_67 Depth=1
	andb	$-4, 9(%rcx)
	movl	92(%r13), %esi
	jmp	.LBB14_66
.LBB14_69:
	movl	88(%r13), %eax
.LBB14_70:
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
	jmp	.LBB14_105
.LBB14_71:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
.LBB14_72:
	movslq	56(%r13), %r14
	testq	%r14, %r14
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB14_78
# %bb.73:
	movq	%r14, %rbx
	shlq	$4, %rbx
	addq	$-8, %rbx
	jmp	.LBB14_75
	.p2align	4, 0x90
.LBB14_74:                              #   in Loop: Header=BB14_75 Depth=1
	addq	$-16, %rbx
	testq	%r14, %r14
	je	.LBB14_78
.LBB14_75:                              # =>This Inner Loop Header: Depth=1
	addq	$-1, %r14
	movq	24(%r13), %rax
	cmpl	$4, (%rax,%rbx)
	jl	.LBB14_74
# %bb.76:                               #   in Loop: Header=BB14_75 Depth=1
	movq	-8(%rax,%rbx), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_74
# %bb.77:                               #   in Loop: Header=BB14_75 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	jmp	.LBB14_74
.LBB14_78:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
.LBB14_79:
	movb	11(%r13), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	cltq
	leaq	(%rax,%rax,4), %rcx
	leaq	1(%rax), %rbx
	leaq	24(,%rcx,8), %r14
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB14_81
	.p2align	4, 0x90
.LBB14_80:                              #   in Loop: Header=BB14_81 Depth=1
	addq	$-40, %r14
	addq	$-1, %rbx
	je	.LBB14_92
.LBB14_81:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %r15
	cmpl	$0, -16(%r15,%r14)
	je	.LBB14_90
# %bb.82:                               #   in Loop: Header=BB14_81 Depth=1
	testb	%al, %al
	jne	.LBB14_86
# %bb.83:                               #   in Loop: Header=BB14_81 Depth=1
	cmpl	$4, (%r15,%r14)
	jl	.LBB14_86
# %bb.84:                               #   in Loop: Header=BB14_81 Depth=1
	movq	-8(%r15,%r14), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_86
# %bb.85:                               #   in Loop: Header=BB14_81 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	reallymarkobject
	movl	-44(%rbp), %eax         # 4-byte Reload
	.p2align	4, 0x90
.LBB14_86:                              #   in Loop: Header=BB14_81 Depth=1
	testb	%r12b, %r12b
	jne	.LBB14_80
# %bb.87:                               #   in Loop: Header=BB14_81 Depth=1
	cmpl	$4, -16(%r15,%r14)
	jl	.LBB14_80
# %bb.88:                               #   in Loop: Header=BB14_81 Depth=1
	movq	-24(%r15,%r14), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_80
# %bb.89:                               #   in Loop: Header=BB14_81 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	reallymarkobject
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB14_80
	.p2align	4, 0x90
.LBB14_90:                              #   in Loop: Header=BB14_81 Depth=1
	cmpl	$4, (%r15,%r14)
	jl	.LBB14_80
# %bb.91:                               #   in Loop: Header=BB14_81 Depth=1
	movl	$11, (%r15,%r14)
	jmp	.LBB14_80
.LBB14_92:
	movq	-56(%rbp), %rax         # 8-byte Reload
	orl	%eax, -48(%rbp)         # 4-byte Folded Spill
	je	.LBB14_94
.LBB14_93:
	andb	$-5, 9(%r13)
.LBB14_94:
	movslq	56(%r13), %rax
	movb	11(%r13), %cl
	movl	$1, %edx
	shll	%cl, %edx
	shlq	$4, %rax
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$64, %rax
	jmp	.LBB14_105
.LBB14_95:
	movq	32(%r13), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_97
# %bb.96:
	movq	%r15, %rdi
	callq	reallymarkobject
.LBB14_97:
	movb	11(%r13), %al
	testb	%al, %al
	je	.LBB14_103
# %bb.98:
	xorl	%ebx, %ebx
	jmp	.LBB14_100
	.p2align	4, 0x90
.LBB14_99:                              #   in Loop: Header=BB14_100 Depth=1
	addq	$1, %rbx
	movzbl	%al, %ecx
	cmpq	%rcx, %rbx
	jae	.LBB14_104
.LBB14_100:                             # =>This Inner Loop Header: Depth=1
	movq	40(%r13,%rbx,8), %rsi
	testb	$3, 9(%rsi)
	je	.LBB14_99
# %bb.101:                              #   in Loop: Header=BB14_100 Depth=1
	movq	%r15, %rdi
	callq	reallymarkobject
	movzbl	11(%r13), %eax
	jmp	.LBB14_99
.LBB14_103:
	xorl	%eax, %eax
.LBB14_104:
	cmpb	$1, 10(%r13)
	movzbl	%al, %eax
	movb	$4, %cl
	sbbb	$0, %cl
	shll	%cl, %eax
	addl	$40, %eax
.LBB14_105:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_106:
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB14_72
.Lfunc_end14:
	.size	propagatemark, .Lfunc_end14-propagatemark
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_2
	.quad	.LBB14_14
	.quad	.LBB14_105
	.quad	.LBB14_23
	.quad	.LBB14_45
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function markmt
	.type	markmt,@function
markmt:                                 # @markmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	224(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB15_3
# %bb.1:
	testb	$3, 9(%rsi)
	je	.LBB15_3
# %bb.2:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_3:
	movq	232(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_6
# %bb.4:
	testb	$3, 9(%rsi)
	je	.LBB15_6
# %bb.5:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_6:
	movq	240(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_9
# %bb.7:
	testb	$3, 9(%rsi)
	je	.LBB15_9
# %bb.8:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_9:
	movq	248(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_12
# %bb.10:
	testb	$3, 9(%rsi)
	je	.LBB15_12
# %bb.11:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_12:
	movq	256(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_15
# %bb.13:
	testb	$3, 9(%rsi)
	je	.LBB15_15
# %bb.14:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_15:
	movq	264(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_18
# %bb.16:
	testb	$3, 9(%rsi)
	je	.LBB15_18
# %bb.17:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_18:
	movq	272(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_21
# %bb.19:
	testb	$3, 9(%rsi)
	je	.LBB15_21
# %bb.20:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_21:
	movq	280(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_24
# %bb.22:
	testb	$3, 9(%rsi)
	je	.LBB15_24
# %bb.23:
	movq	%rbx, %rdi
	callq	reallymarkobject
.LBB15_24:
	movq	288(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_26
# %bb.25:
	testb	$3, 9(%rsi)
	je	.LBB15_26
# %bb.27:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	reallymarkobject        # TAILCALL
.LBB15_26:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	markmt, .Lfunc_end15-markmt
                                        # -- End function
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
