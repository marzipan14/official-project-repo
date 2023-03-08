	.text
	.file	"t_zset.c"
	.globl	zslCreateNode           # -- Begin function zslCreateNode
	.p2align	4, 0x90
	.type	zslCreateNode,@function
zslCreateNode:                          # @zslCreateNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movslq	%edi, %rdi
	shlq	$4, %rdi
	addq	$24, %rdi
	callq	zmalloc
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax)
	movq	%rbx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zslCreateNode, .Lfunc_end0-zslCreateNode
                                        # -- End function
	.globl	zslCreate               # -- Begin function zslCreate
	.p2align	4, 0x90
	.type	zslCreate,@function
zslCreate:                              # @zslCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movl	$1, 24(%rax)
	movq	$0, 16(%rax)
	movl	$1048, %edi             # imm = 0x418
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, (%rbx)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 24(%rax,%rcx)
	movups	%xmm0, 40(%rax,%rcx)
	addq	$32, %rcx
	cmpq	$1024, %rcx             # imm = 0x400
	jne	.LBB1_1
# %bb.2:
	movq	$0, 16(%rax)
	movq	$0, 8(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zslCreate, .Lfunc_end1-zslCreate
                                        # -- End function
	.globl	zslFreeNode             # -- Begin function zslFreeNode
	.p2align	4, 0x90
	.type	zslFreeNode,@function
zslFreeNode:                            # @zslFreeNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end2:
	.size	zslFreeNode, .Lfunc_end2-zslFreeNode
                                        # -- End function
	.globl	zslFree                 # -- Begin function zslFree
	.p2align	4, 0x90
	.type	zslFree,@function
zslFree:                                # @zslFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	movq	24(%rdi), %rbx
	callq	zfree
	testq	%rbx, %rbx
	je	.LBB3_2
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	24(%rbx), %r15
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, %rbx
	testq	%r15, %r15
	jne	.LBB3_1
.LBB3_2:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end3:
	.size	zslFree, .Lfunc_end3-zslFree
                                        # -- End function
	.globl	zslRandomLevel          # -- Begin function zslRandomLevel
	.p2align	4, 0x90
	.type	zslRandomLevel,@function
zslRandomLevel:                         # @zslRandomLevel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	callq	random
	addl	$1, %ebx
	testl	$49152, %eax            # imm = 0xC000
	je	.LBB4_1
# %bb.2:
	cmpl	$64, %ebx
	movl	$64, %eax
	cmovbl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zslRandomLevel, .Lfunc_end4-zslRandomLevel
                                        # -- End function
	.globl	zslInsert               # -- Begin function zslInsert
	.p2align	4, 0x90
	.type	zslInsert,@function
zslInsert:                              # @zslInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$808, %rsp              # imm = 0x328
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB5_30
# %bb.1:
	movslq	24(%r15), %r13
	testq	%r13, %r13
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jle	.LBB5_17
# %bb.2:
	movq	(%r15), %rbx
	movl	%r13d, %eax
	movq	%r15, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	leaq	-1(%r13), %r12
	movl	%eax, %eax
	xorl	%r14d, %r14d
	cmpq	%rax, %r13
	je	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-336(%rbp,%r13,4), %r14d
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	movl	%r14d, -340(%rbp,%r13,4)
	movq	%r12, -72(%rbp)         # 8-byte Spill
	shlq	$4, %r12
	movq	24(%rbx,%r12), %rax
	testq	%rax, %rax
	je	.LBB5_14
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	(%rbx,%r12), %r15
	addq	$24, %r15
	jmp	.LBB5_9
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_9 Depth=2
	movq	(%r15), %rax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB5_8:                                #   in Loop: Header=BB5_9 Depth=2
	movq	%rax, %rcx
	addl	32(%rbx,%r12), %r14d
	movl	%r14d, -340(%rbp,%r13,4)
	leaq	(%rax,%r12), %r15
	addq	$24, %r15
	movq	24(%rax,%r12), %rax
	movq	%rcx, %rbx
	testq	%rax, %rax
	je	.LBB5_15
.LBB5_9:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_8
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=2
	ucomisd	%xmm1, %xmm0
	jne	.LBB5_14
	jp	.LBB5_14
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	testl	%eax, %eax
	js	.LBB5_7
# %bb.12:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rcx
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB5_15
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rcx
.LBB5_15:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%rcx, -856(%rbp,%r13,8)
	cmpq	$2, %r13
	movq	-64(%rbp), %r15         # 8-byte Reload
	jl	.LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_3 Depth=1
	movl	24(%r15), %eax
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%rcx, %rbx
	jmp	.LBB5_3
.LBB5_17:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB5_18:                               # =>This Inner Loop Header: Depth=1
	callq	random
	addl	$1, %r14d
	testl	$49152, %eax            # imm = 0xC000
	je	.LBB5_18
# %bb.19:
	cmpl	$64, %r14d
	movl	$64, %r13d
	cmovbl	%r14d, %r13d
	movslq	24(%r15), %rax
	movl	%r13d, %r12d
	cmpl	%eax, %r13d
	jle	.LBB5_23
# %bb.20:
	movq	(%r15), %rcx
	movq	16(%r15), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	addq	%rcx, %rsi
	addq	$32, %rsi
	.p2align	4, 0x90
.LBB5_21:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -336(%rbp,%rax,4)
	movq	%rcx, -848(%rbp,%rax,8)
	movq	%rdx, (%rsi)
	addq	$1, %rax
	addq	$16, %rsi
	cmpq	%r12, %rax
	jl	.LBB5_21
# %bb.22:
	movl	%r13d, 24(%r15)
.LBB5_23:
	movl	%r13d, %edi
	shll	$4, %edi
	addl	$24, %edi
	callq	zmalloc
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	movl	-336(%rbp), %r8d
	movl	$1, %edx
	xorl	%esi, %esi
	movl	%r8d, %r9d
	.p2align	4, 0x90
.LBB5_24:                               # =>This Inner Loop Header: Depth=1
	movq	-848(%rbp,%rsi,2), %rcx
	movq	24(%rcx,%rsi,4), %rbx
	movq	%rbx, 24(%rax,%rsi,4)
	movq	%rax, 24(%rcx,%rsi,4)
	movq	32(%rcx,%rsi,4), %rbx
	movl	%r8d, %edi
	subl	%r9d, %edi
	subq	%rdi, %rbx
	movq	%rbx, 32(%rax,%rsi,4)
	addl	$1, %edi
	movq	%rdi, 32(%rcx,%rsi,4)
	cmpq	%r12, %rdx
	jae	.LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_24 Depth=1
	movl	-332(%rbp,%rsi), %r9d
	addq	$4, %rsi
	addq	$1, %rdx
	jmp	.LBB5_24
.LBB5_26:
	movslq	24(%r15), %rcx
	cmpl	%ecx, %r13d
	jge	.LBB5_29
# %bb.27:
	cmpl	$64, %r14d
	movl	$64, %edx
	cmovbl	%r14d, %edx
	shlq	$4, %rdx
	.p2align	4, 0x90
.LBB5_28:                               # =>This Inner Loop Header: Depth=1
	movq	-848(%rbp,%r12,8), %rsi
	addq	$1, 32(%rsi,%rdx)
	addq	$1, %r12
	addq	$16, %rdx
	cmpq	%rcx, %r12
	jl	.LBB5_28
.LBB5_29:
	movq	-848(%rbp), %rcx
	xorl	%edx, %edx
	cmpq	(%r15), %rcx
	cmovneq	%rcx, %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rax), %rcx
	leaq	8(%r15), %rdx
	testq	%rcx, %rcx
	leaq	16(%rcx), %rcx
	cmoveq	%rdx, %rcx
	movq	%rax, (%rcx)
	addq	$1, 16(%r15)
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_30:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$137, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end5:
	.size	zslInsert, .Lfunc_end5-zslInsert
                                        # -- End function
	.globl	zslDeleteNode           # -- Begin function zslDeleteNode
	.p2align	4, 0x90
	.type	zslDeleteNode,@function
zslDeleteNode:                          # @zslDeleteNode
# %bb.0:
	movslq	24(%rdi), %r8
	testq	%r8, %r8
	jle	.LBB6_6
# %bb.1:
	movl	$4, %ecx
	xorl	%r11d, %r11d
	jmp	.LBB6_2
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	addq	$-1, (%r9,%rcx,8)
.LBB6_5:                                #   in Loop: Header=BB6_2 Depth=1
	addq	$1, %r11
	addq	$2, %rcx
	cmpq	%r8, %r11
	jge	.LBB6_6
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%r11,8), %r9
	cmpq	%rsi, -8(%r9,%rcx,8)
	jne	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movq	(%rsi,%rcx,8), %r10
	movq	(%r9,%rcx,8), %rax
	addq	%r10, %rax
	addq	$-1, %rax
	movq	%rax, (%r9,%rcx,8)
	movq	-8(%rsi,%rcx,8), %rax
	movq	%rax, -8(%r9,%rcx,8)
	jmp	.LBB6_5
.LBB6_6:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	leaq	8(%rdi), %rdx
	testq	%rcx, %rcx
	leaq	16(%rcx), %rcx
	cmoveq	%rdx, %rcx
	movq	%rax, (%rcx)
	cmpl	$2, %r8d
	jl	.LBB6_10
# %bb.7:
	movq	(%rdi), %rdx
	leal	-1(%r8), %eax
	leaq	1(%r8), %rcx
	shlq	$4, %r8
	addq	%r8, %rdx
	addq	$8, %rdx
	.p2align	4, 0x90
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rdx)
	jne	.LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	movl	%eax, 24(%rdi)
	addq	$-1, %rcx
	addl	$-1, %eax
	addq	$-16, %rdx
	cmpq	$2, %rcx
	jg	.LBB6_8
.LBB6_10:
	addq	$-1, 16(%rdi)
	retq
.Lfunc_end6:
	.size	zslDeleteNode, .Lfunc_end6-zslDeleteNode
                                        # -- End function
	.globl	zslDelete               # -- Begin function zslDelete
	.p2align	4, 0x90
	.type	zslDelete,@function
zslDelete:                              # @zslDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	(%rdi), %rbx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movslq	24(%rdi), %r13
	testq	%r13, %r13
	jle	.LBB7_10
# %bb.1:
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movq	%rbx, -600(%rbp,%r13,8)
	cmpq	$1, %r13
	movq	-64(%rbp), %r13         # 8-byte Reload
	jle	.LBB7_10
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	leaq	-1(%r13), %r12
	movq	%r12, -64(%rbp)         # 8-byte Spill
	shlq	$4, %r12
	movq	24(%rbx,%r12), %rax
	testq	%rax, %rax
	je	.LBB7_9
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	leaq	(%rbx,%r12), %r15
	addq	$24, %r15
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_4 Depth=2
	movq	(%r15), %rax
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=2
	movq	%rax, %rbx
	leaq	(%rax,%r12), %r15
	addq	$24, %r15
	movq	24(%rax,%r12), %rax
	testq	%rax, %rax
	je	.LBB7_9
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB7_8
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=2
	movq	(%rax), %rdi
	movq	%r14, %rsi
	callq	sdscmp
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	testl	%eax, %eax
	js	.LBB7_7
	jmp	.LBB7_9
.LBB7_10:
	movq	24(%rbx), %r12
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB7_27
# %bb.11:
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_27
	jp	.LBB7_27
# %bb.12:
	movq	(%r12), %rdi
	movq	%r14, %rsi
	callq	sdscmp
	testl	%eax, %eax
	jne	.LBB7_27
# %bb.13:
	movq	-48(%rbp), %r8          # 8-byte Reload
	movslq	24(%r8), %rax
	testq	%rax, %rax
	jle	.LBB7_19
# %bb.14:
	movl	$16, %ecx
	movq	%rax, %rdx
	jmp	.LBB7_15
	.p2align	4, 0x90
.LBB7_17:                               #   in Loop: Header=BB7_15 Depth=1
	addq	$-1, (%rsi,%rcx,2)
.LBB7_18:                               #   in Loop: Header=BB7_15 Depth=1
	addq	$8, %rcx
	addq	$-1, %rdx
	je	.LBB7_19
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	movq	-608(%rbp,%rcx), %rsi
	cmpq	%r12, -8(%rsi,%rcx,2)
	jne	.LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=1
	movq	(%r12,%rcx,2), %rdi
	movq	(%rsi,%rcx,2), %rbx
	addq	%rbx, %rdi
	addq	$-1, %rdi
	movq	%rdi, (%rsi,%rcx,2)
	movq	-8(%r12,%rcx,2), %rdi
	movq	%rdi, -8(%rsi,%rcx,2)
	jmp	.LBB7_18
.LBB7_19:
	movq	16(%r12), %rcx
	movq	24(%r12), %rdx
	leaq	8(%r8), %rsi
	testq	%rdx, %rdx
	leaq	16(%rdx), %rdx
	cmoveq	%rsi, %rdx
	movq	%rcx, (%rdx)
	cmpl	$2, %eax
	jl	.LBB7_23
# %bb.20:
	movq	(%r8), %rsi
	leal	-1(%rax), %ecx
	leaq	1(%rax), %rdx
	shlq	$4, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB7_21:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_21 Depth=1
	movl	%ecx, 24(%r8)
	addq	$-1, %rdx
	addl	$-1, %ecx
	addq	$-16, %rax
	cmpq	$2, %rdx
	jg	.LBB7_21
.LBB7_23:
	addq	$-1, 16(%r8)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB7_24
# %bb.25:
	movq	%r12, (%rax)
	jmp	.LBB7_26
.LBB7_24:
	movq	(%r12), %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	zfree
.LBB7_26:
	movl	$1, %r13d
.LBB7_27:
	movl	%r13d, %eax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zslDelete, .Lfunc_end7-zslDelete
                                        # -- End function
	.globl	zslUpdateScore          # -- Begin function zslUpdateScore
	.p2align	4, 0x90
	.type	zslUpdateScore,@function
zslUpdateScore:                         # @zslUpdateScore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movq	%rsi, %r12
	movq	(%rdi), %rbx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movslq	24(%rdi), %r13
	testq	%r13, %r13
	jle	.LBB8_10
# %bb.1:
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	movq	%rbx, -600(%rbp,%r13,8)
	cmpq	$1, %r13
	movq	-64(%rbp), %r13         # 8-byte Reload
	jle	.LBB8_10
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	leaq	-1(%r13), %r15
	movq	%r15, -64(%rbp)         # 8-byte Spill
	shlq	$4, %r15
	movq	24(%rbx,%r15), %rax
	testq	%rax, %rax
	je	.LBB8_9
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	(%rbx,%r15), %r14
	addq	$24, %r14
	jmp	.LBB8_4
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_4 Depth=2
	movq	(%r14), %rax
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=2
	movq	%rax, %rbx
	leaq	(%rax,%r15), %r14
	addq	$24, %r14
	movq	24(%rax,%r15), %rax
	testq	%rax, %rax
	je	.LBB8_9
.LBB8_4:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB8_8
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=2
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_9
	jp	.LBB8_9
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=2
	movq	(%rax), %rdi
	movq	%r12, %rsi
	callq	sdscmp
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	testl	%eax, %eax
	js	.LBB8_7
	jmp	.LBB8_9
.LBB8_10:
	movq	24(%rbx), %r15
	testq	%r15, %r15
	je	.LBB8_31
# %bb.11:
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_31
	jp	.LBB8_31
# %bb.12:
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	sdscmp
	testl	%eax, %eax
	jne	.LBB8_31
# %bb.13:
	movq	16(%r15), %rcx
	testq	%rcx, %rcx
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB8_15
# %bb.14:
	ucomisd	8(%rcx), %xmm0
	jbe	.LBB8_18
.LBB8_15:
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.LBB8_17
# %bb.16:
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jbe	.LBB8_18
.LBB8_17:
	movsd	%xmm0, 8(%r15)
	jmp	.LBB8_30
.LBB8_18:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movslq	24(%rdi), %r8
	testq	%r8, %r8
	jle	.LBB8_25
# %bb.19:
	movl	$16, %ecx
	movq	%r8, %rdx
	jmp	.LBB8_20
	.p2align	4, 0x90
.LBB8_22:                               #   in Loop: Header=BB8_20 Depth=1
	addq	$-1, (%rsi,%rcx,2)
.LBB8_23:                               #   in Loop: Header=BB8_20 Depth=1
	addq	$8, %rcx
	addq	$-1, %rdx
	je	.LBB8_24
.LBB8_20:                               # =>This Inner Loop Header: Depth=1
	movq	-608(%rbp,%rcx), %rsi
	cmpq	%r15, -8(%rsi,%rcx,2)
	jne	.LBB8_22
# %bb.21:                               #   in Loop: Header=BB8_20 Depth=1
	movq	(%r15,%rcx,2), %rax
	movq	(%rsi,%rcx,2), %rbx
	addq	%rbx, %rax
	addq	$-1, %rax
	movq	%rax, (%rsi,%rcx,2)
	movq	-8(%r15,%rcx,2), %rax
	movq	%rax, -8(%rsi,%rcx,2)
	jmp	.LBB8_23
.LBB8_24:
	movq	16(%r15), %rcx
.LBB8_25:
	movq	24(%r15), %rdx
	leaq	8(%rdi), %rsi
	testq	%rdx, %rdx
	leaq	16(%rdx), %rdx
	cmoveq	%rsi, %rdx
	movq	%rcx, (%rdx)
	cmpl	$2, %r8d
	jl	.LBB8_29
# %bb.26:
	movq	(%rdi), %rsi
	leal	-1(%r8), %ecx
	leaq	1(%r8), %rdx
	shlq	$4, %r8
	leaq	(%r8,%rsi), %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB8_27:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	jne	.LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_27 Depth=1
	movl	%ecx, 24(%rdi)
	addq	$-1, %rdx
	addl	$-1, %ecx
	addq	$-16, %rax
	cmpq	$2, %rdx
	jg	.LBB8_27
.LBB8_29:
	addq	$-1, 16(%rdi)
	movq	(%r15), %rsi
	callq	zslInsert
	movq	%rax, %rbx
	movq	$0, (%r15)
	xorl	%edi, %edi
	callq	sdsfree
	movq	%r15, %rdi
	callq	zfree
	movq	%rbx, %r15
.LBB8_30:
	movq	%r15, %rax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_31:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$279, %edx              # imm = 0x117
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	zslUpdateScore, .Lfunc_end8-zslUpdateScore
                                        # -- End function
	.globl	zslValueGteMin          # -- Begin function zslValueGteMin
	.p2align	4, 0x90
	.type	zslValueGteMin,@function
zslValueGteMin:                         # @zslValueGteMin
# %bb.0:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	(%rdi), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 16(%rdi)
	cmovel	%ecx, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end9:
	.size	zslValueGteMin, .Lfunc_end9-zslValueGteMin
                                        # -- End function
	.globl	zslValueLteMax          # -- Begin function zslValueLteMax
	.p2align	4, 0x90
	.type	zslValueLteMax,@function
zslValueLteMax:                         # @zslValueLteMax
# %bb.0:
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	cmpl	$0, 20(%rdi)
	cmovel	%ecx, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end10:
	.size	zslValueLteMax, .Lfunc_end10-zslValueLteMax
                                        # -- End function
	.globl	zslIsInRange            # -- Begin function zslIsInRange
	.p2align	4, 0x90
	.type	zslIsInRange,@function
zslIsInRange:                           # @zslIsInRange
# %bb.0:
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB11_8
# %bb.1:
	jne	.LBB11_4
	jp	.LBB11_4
# %bb.2:
	cmpl	$0, 16(%rsi)
	jne	.LBB11_8
# %bb.3:
	cmpl	$0, 20(%rsi)
	jne	.LBB11_8
.LBB11_4:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB11_8
# %bb.5:
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm1, %xmm2
	seta	%al
	setae	%cl
	cmpl	$0, 16(%rsi)
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB11_8
# %bb.6:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_8
# %bb.7:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	ucomisd	8(%rax), %xmm0
	seta	%cl
	setae	%dl
	cmpl	$0, 20(%rsi)
	cmovel	%edx, %ecx
	movzbl	%cl, %eax
	retq
.LBB11_8:
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	zslIsInRange, .Lfunc_end11-zslIsInRange
                                        # -- End function
	.globl	zslFirstInRange         # -- Begin function zslFirstInRange
	.p2align	4, 0x90
	.type	zslFirstInRange,@function
zslFirstInRange:                        # @zslFirstInRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB12_1
# %bb.2:
	jne	.LBB12_7
	jp	.LBB12_7
# %bb.3:
	cmpl	$0, 16(%rsi)
	jne	.LBB12_1
# %bb.5:
	cmpl	$0, 20(%rsi)
	jne	.LBB12_1
.LBB12_7:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB12_1
# %bb.8:
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	ucomisd	%xmm1, %xmm2
	movl	16(%rsi), %r11d
	seta	%cl
	setae	%dl
	testl	%r11d, %r11d
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB12_1
# %bb.9:
	movq	(%rdi), %rcx
	movq	24(%rcx), %r9
	testq	%r9, %r9
	je	.LBB12_1
# %bb.10:
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	ucomisd	8(%r9), %xmm0
	movl	20(%rsi), %r8d
	seta	%dl
	setae	%r10b
	testl	%r8d, %r8d
	cmovel	%r10d, %edx
	cmpb	$1, %dl
	jne	.LBB12_1
# %bb.11:
	movslq	24(%rdi), %rdi
	testq	%rdi, %rdi
	jg	.LBB12_13
	jmp	.LBB12_21
.LBB12_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB12_12:                              #   in Loop: Header=BB12_13 Depth=1
	cmpq	$1, %r9
	jle	.LBB12_20
.LBB12_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_14 Depth 2
	movq	%rdi, %r9
	addq	$-1, %rdi
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB12_14:                              #   Parent Loop BB12_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	shlq	$4, %rdx
	movq	24(%rcx,%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB12_12
# %bb.15:                               #   in Loop: Header=BB12_14 Depth=2
	movsd	8(%rdx), %xmm2          # xmm2 = mem[0],zero
	xorl	%esi, %esi
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm2
	seta	%sil
	setae	%al
	testl	%r11d, %r11d
	cmovel	%eax, %esi
	cmpb	$1, %sil
	jne	.LBB12_14
	jmp	.LBB12_12
.LBB12_20:
	movq	24(%rcx), %r9
	testq	%r9, %r9
	je	.LBB12_22
.LBB12_21:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	ucomisd	8(%r9), %xmm0
	seta	%cl
	setae	%al
	testl	%r8d, %r8d
	cmovel	%eax, %ecx
	xorl	%eax, %eax
	testb	%cl, %cl
	cmovneq	%r9, %rax
	popq	%rbp
	retq
.LBB12_22:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$346, %edx              # imm = 0x15A
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	zslFirstInRange, .Lfunc_end12-zslFirstInRange
                                        # -- End function
	.globl	zslLastInRange          # -- Begin function zslLastInRange
	.p2align	4, 0x90
	.type	zslLastInRange,@function
zslLastInRange:                         # @zslLastInRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB13_1
# %bb.2:
	jne	.LBB13_7
	jp	.LBB13_7
# %bb.3:
	cmpl	$0, 16(%rsi)
	jne	.LBB13_1
# %bb.5:
	cmpl	$0, 20(%rsi)
	jne	.LBB13_1
.LBB13_7:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_1
# %bb.8:
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm2
	movl	16(%rsi), %r8d
	seta	%al
	setae	%cl
	testl	%r8d, %r8d
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB13_1
# %bb.9:
	movq	(%rdi), %rdx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	.LBB13_1
# %bb.10:
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	ucomisd	8(%rax), %xmm1
	movl	20(%rsi), %r10d
	seta	%cl
	setae	%r9b
	testl	%r10d, %r10d
	cmovel	%r9d, %ecx
	cmpb	$1, %cl
	jne	.LBB13_1
# %bb.11:
	movslq	24(%rdi), %rsi
	testq	%rsi, %rsi
	jg	.LBB13_15
.LBB13_12:
	testq	%rdx, %rdx
	je	.LBB13_22
# %bb.13:
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%cl
	setae	%al
	testl	%r8d, %r8d
	cmovel	%eax, %ecx
	xorl	%eax, %eax
	testb	%cl, %cl
	cmovneq	%rdx, %rax
	popq	%rbp
	retq
.LBB13_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB13_14:                              #   in Loop: Header=BB13_15 Depth=1
	cmpq	$1, %r9
	jle	.LBB13_12
.LBB13_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_16 Depth 2
	movq	%rsi, %r9
	addq	$-1, %rsi
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB13_16:                              #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	24(%rdx,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB13_14
# %bb.17:                               #   in Loop: Header=BB13_16 Depth=2
	xorl	%edi, %edi
	xorl	%eax, %eax
	ucomisd	8(%rcx), %xmm1
	seta	%dil
	setae	%al
	testl	%r10d, %r10d
	cmovel	%eax, %edi
	testb	%dil, %dil
	jne	.LBB13_16
	jmp	.LBB13_14
.LBB13_22:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$371, %edx              # imm = 0x173
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end13:
	.size	zslLastInRange, .Lfunc_end13-zslLastInRange
                                        # -- End function
	.globl	zslDeleteRangeByScore   # -- Begin function zslDeleteRangeByScore
	.p2align	4, 0x90
	.type	zslDeleteRangeByScore,@function
zslDeleteRangeByScore:                  # @zslDeleteRangeByScore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movslq	24(%rdi), %rcx
	testq	%rcx, %rcx
	jg	.LBB14_1
.LBB14_5:
	movq	24(%rax), %r14
	testq	%r14, %r14
	je	.LBB14_6
# %bb.7:
	leaq	8(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB14_8
	.p2align	4, 0x90
.LBB14_4:                               #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, -584(%rbp,%rdx,8)
	cmpq	$1, %rdx
	jle	.LBB14_5
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_2 Depth 2
	movq	%rcx, %rdx
	addq	$-1, %rcx
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB14_2:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rax
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movq	24(%rax,%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB14_4
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	ucomisd	8(%rsi), %xmm0
	setae	%dil
	seta	%bl
	cmpl	$0, 16(%r13)
	cmovel	%ebx, %edi
	testb	%dil, %dil
	jne	.LBB14_2
	jmp	.LBB14_4
	.p2align	4, 0x90
.LBB14_20:                              #   in Loop: Header=BB14_8 Depth=1
	addq	$-1, 16(%r15)
	movq	(%rbx), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictDelete
	movq	(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	addq	$1, %r12
	testq	%r14, %r14
	je	.LBB14_21
.LBB14_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
                                        #     Child Loop BB14_18 Depth 2
	movsd	8(%r13), %xmm0          # xmm0 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	8(%r14), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 20(%r13)
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB14_21
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	movq	%r14, %rbx
	movq	24(%r14), %r14
	movslq	24(%r15), %r8
	movq	%r14, %rcx
	testq	%r8, %r8
	jle	.LBB14_16
# %bb.10:                               #   in Loop: Header=BB14_8 Depth=1
	movl	$16, %ecx
	movq	%r8, %rdx
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_13:                              #   in Loop: Header=BB14_11 Depth=2
	addq	$-1, (%rsi,%rcx,2)
.LBB14_14:                              #   in Loop: Header=BB14_11 Depth=2
	addq	$8, %rcx
	addq	$-1, %rdx
	je	.LBB14_15
.LBB14_11:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-592(%rbp,%rcx), %rsi
	cmpq	%rbx, -8(%rsi,%rcx,2)
	jne	.LBB14_13
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=2
	movq	(%rbx,%rcx,2), %rdi
	movq	(%rsi,%rcx,2), %rax
	addq	%rdi, %rax
	addq	$-1, %rax
	movq	%rax, (%rsi,%rcx,2)
	movq	-8(%rbx,%rcx,2), %rax
	movq	%rax, -8(%rsi,%rcx,2)
	jmp	.LBB14_14
	.p2align	4, 0x90
.LBB14_15:                              #   in Loop: Header=BB14_8 Depth=1
	movq	24(%rbx), %rcx
.LBB14_16:                              #   in Loop: Header=BB14_8 Depth=1
	testq	%rcx, %rcx
	leaq	16(%rcx), %rax
	movq	16(%rbx), %rcx
	cmoveq	-48(%rbp), %rax         # 8-byte Folded Reload
	movq	%rcx, (%rax)
	cmpl	$2, %r8d
	jl	.LBB14_20
# %bb.17:                               #   in Loop: Header=BB14_8 Depth=1
	movq	(%r15), %rax
	leal	-1(%r8), %ecx
	leaq	1(%r8), %rdx
	shlq	$4, %r8
	addq	%r8, %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB14_18:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rax)
	jne	.LBB14_20
# %bb.19:                               #   in Loop: Header=BB14_18 Depth=2
	movl	%ecx, 24(%r15)
	addq	$-1, %rdx
	addl	$-1, %ecx
	addq	$-16, %rax
	cmpq	$2, %rdx
	jg	.LBB14_18
	jmp	.LBB14_20
.LBB14_6:
	xorl	%r12d, %r12d
.LBB14_21:
	movq	%r12, %rax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	zslDeleteRangeByScore, .Lfunc_end14-zslDeleteRangeByScore
                                        # -- End function
	.globl	zslDeleteRangeByLex     # -- Begin function zslDeleteRangeByLex
	.p2align	4, 0x90
	.type	zslDeleteRangeByLex,@function
zslDeleteRangeByLex:                    # @zslDeleteRangeByLex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	movq	%rsi, %r13
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	(%rdi), %rbx
	movslq	24(%rdi), %rax
	testq	%rax, %rax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jg	.LBB15_1
.LBB15_13:
	movq	24(%rbx), %r14
	testq	%r14, %r14
	je	.LBB15_14
# %bb.15:
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB15_16
	.p2align	4, 0x90
.LBB15_12:                              #   in Loop: Header=BB15_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, -600(%rbp,%rax,8)
	cmpq	$1, %rax
	movq	-56(%rbp), %rax         # 8-byte Reload
	jle	.LBB15_13
.LBB15_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	-1(%rax), %r14
	movq	%r14, -56(%rbp)         # 8-byte Spill
	shlq	$4, %r14
	movq	24(%rbx,%r14), %rax
	testq	%rax, %rax
	je	.LBB15_12
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	(%rbx,%r14), %r15
	addq	$24, %r15
	.p2align	4, 0x90
.LBB15_3:                               #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdi
	movl	16(%r13), %r12d
	movq	(%r13), %rsi
	cmpq	%rdi, %rsi
	je	.LBB15_4
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=2
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB15_10
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=2
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB15_10
# %bb.7:                                #   in Loop: Header=BB15_3 Depth=2
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB15_10
# %bb.8:                                #   in Loop: Header=BB15_3 Depth=2
	cmpq	%rdi, %rdx
	je	.LBB15_10
# %bb.9:                                #   in Loop: Header=BB15_3 Depth=2
	callq	sdscmp
	jmp	.LBB15_10
	.p2align	4, 0x90
.LBB15_4:                               #   in Loop: Header=BB15_3 Depth=2
	xorl	%eax, %eax
.LBB15_10:                              #   in Loop: Header=BB15_3 Depth=2
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r12d, %r12d
	cmovel	%eax, %ecx
	testl	%ecx, %ecx
	jne	.LBB15_12
# %bb.11:                               #   in Loop: Header=BB15_3 Depth=2
	movq	(%r15), %rbx
	leaq	(%rbx,%r14), %r15
	addq	$24, %r15
	movq	24(%rbx,%r14), %rax
	testq	%rax, %rax
	jne	.LBB15_3
	jmp	.LBB15_12
	.p2align	4, 0x90
.LBB15_34:                              #   in Loop: Header=BB15_16 Depth=1
	addq	$-1, 16(%rsi)
	movq	(%rbx), %rsi
	movq	%r15, %rdi
	callq	dictDelete
	movq	(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	addq	$1, %r12
	testq	%r14, %r14
	je	.LBB15_35
.LBB15_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_25 Depth 2
                                        #     Child Loop BB15_32 Depth 2
	movq	%r14, %rbx
	movq	(%r14), %rdi
	movl	20(%r13), %r14d
	movq	8(%r13), %rsi
	movl	$0, %eax
	cmpq	%rdi, %rsi
	je	.LBB15_22
# %bb.17:                               #   in Loop: Header=BB15_16 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB15_22
# %bb.18:                               #   in Loop: Header=BB15_16 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB15_22
# %bb.19:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB15_22
# %bb.20:                               #   in Loop: Header=BB15_16 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB15_22
# %bb.21:                               #   in Loop: Header=BB15_16 Depth=1
	callq	sdscmp
	.p2align	4, 0x90
.LBB15_22:                              #   in Loop: Header=BB15_16 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	setle	%dl
	testl	%r14d, %r14d
	cmovnel	%ecx, %edx
	testl	%edx, %edx
	je	.LBB15_35
# %bb.23:                               #   in Loop: Header=BB15_16 Depth=1
	movq	24(%rbx), %r14
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movslq	24(%rsi), %r8
	movq	%r14, %rcx
	testq	%r8, %r8
	jle	.LBB15_30
# %bb.24:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$16, %ecx
	movq	%r8, %rdx
	jmp	.LBB15_25
	.p2align	4, 0x90
.LBB15_27:                              #   in Loop: Header=BB15_25 Depth=2
	addq	$-1, (%rsi,%rcx,2)
.LBB15_28:                              #   in Loop: Header=BB15_25 Depth=2
	addq	$8, %rcx
	addq	$-1, %rdx
	je	.LBB15_29
.LBB15_25:                              #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-608(%rbp,%rcx), %rsi
	cmpq	%rbx, -8(%rsi,%rcx,2)
	jne	.LBB15_27
# %bb.26:                               #   in Loop: Header=BB15_25 Depth=2
	movq	(%rbx,%rcx,2), %rdi
	movq	(%rsi,%rcx,2), %rax
	addq	%rdi, %rax
	addq	$-1, %rax
	movq	%rax, (%rsi,%rcx,2)
	movq	-8(%rbx,%rcx,2), %rax
	movq	%rax, -8(%rsi,%rcx,2)
	jmp	.LBB15_28
	.p2align	4, 0x90
.LBB15_29:                              #   in Loop: Header=BB15_16 Depth=1
	movq	24(%rbx), %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB15_30:                              #   in Loop: Header=BB15_16 Depth=1
	testq	%rcx, %rcx
	leaq	16(%rcx), %rax
	movq	16(%rbx), %rcx
	cmoveq	-56(%rbp), %rax         # 8-byte Folded Reload
	movq	%rcx, (%rax)
	cmpl	$2, %r8d
	jl	.LBB15_34
# %bb.31:                               #   in Loop: Header=BB15_16 Depth=1
	movq	(%rsi), %rax
	leal	-1(%r8), %ecx
	leaq	1(%r8), %rdx
	shlq	$4, %r8
	addq	%r8, %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB15_32:                              #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rax)
	jne	.LBB15_34
# %bb.33:                               #   in Loop: Header=BB15_32 Depth=2
	movl	%ecx, 24(%rsi)
	addq	$-1, %rdx
	addl	$-1, %ecx
	addq	$-16, %rax
	cmpq	$2, %rdx
	jg	.LBB15_32
	jmp	.LBB15_34
.LBB15_14:
	xorl	%r12d, %r12d
.LBB15_35:
	movq	%r12, %rax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zslDeleteRangeByLex, .Lfunc_end15-zslDeleteRangeByLex
                                        # -- End function
	.globl	zslLexValueGteMin       # -- Begin function zslLexValueGteMin
	.p2align	4, 0x90
	.type	zslLexValueGteMin,@function
zslLexValueGteMin:                      # @zslLexValueGteMin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	16(%rsi), %ebx
	movq	(%rsi), %rsi
	cmpq	%rdi, %rsi
	je	.LBB16_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB16_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB16_7
# %bb.4:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB16_7
# %bb.5:
	cmpq	%rdi, %rdx
	je	.LBB16_7
# %bb.6:
	callq	sdscmp
	jmp	.LBB16_7
.LBB16_1:
	xorl	%eax, %eax
.LBB16_7:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%ebx, %ebx
	cmovel	%eax, %ecx
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	zslLexValueGteMin, .Lfunc_end16-zslLexValueGteMin
                                        # -- End function
	.globl	zslLexValueLteMax       # -- Begin function zslLexValueLteMax
	.p2align	4, 0x90
	.type	zslLexValueLteMax,@function
zslLexValueLteMax:                      # @zslLexValueLteMax
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	20(%rsi), %ebx
	movq	8(%rsi), %rsi
	cmpq	%rdi, %rsi
	je	.LBB17_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB17_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB17_7
# %bb.4:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB17_7
# %bb.5:
	cmpq	%rdi, %rdx
	je	.LBB17_7
# %bb.6:
	callq	sdscmp
	jmp	.LBB17_7
.LBB17_1:
	xorl	%eax, %eax
.LBB17_7:
	movl	%eax, %edx
	shrl	$31, %edx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setle	%cl
	testl	%ebx, %ebx
	cmovnel	%edx, %ecx
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	zslLexValueLteMax, .Lfunc_end17-zslLexValueLteMax
                                        # -- End function
	.globl	zslDeleteRangeByRank    # -- Begin function zslDeleteRangeByRank
	.p2align	4, 0x90
	.type	zslDeleteRangeByRank,@function
zslDeleteRangeByRank:                   # @zslDeleteRangeByRank
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	(%rdi), %rax
	movslq	24(%rdi), %r9
	testq	%r9, %r9
	jle	.LBB18_1
# %bb.2:
	movl	%esi, %r10d
	xorl	%r14d, %r14d
	movq	%r9, %rsi
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_6:                               #   in Loop: Header=BB18_3 Depth=1
	movq	%rax, -600(%rbp,%r8,8)
	cmpq	$1, %r8
	jle	.LBB18_7
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_4 Depth 2
	movq	%rsi, %r8
	addq	$-1, %rsi
	movq	%r14, %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB18_4:                               #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	%rbx, %r14
	movq	%rsi, %rdi
	shlq	$4, %rdi
	movq	24(%rcx,%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=2
	movq	32(%rax,%rdi), %rbx
	addq	%r14, %rbx
	cmpq	%r10, %rbx
	jb	.LBB18_4
	jmp	.LBB18_6
.LBB18_1:
	xorl	%r14d, %r14d
.LBB18_7:
	addq	$1, %r14
	movl	%edx, %ecx
	xorl	%r15d, %r15d
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	cmpq	%rcx, %r14
	ja	.LBB18_24
# %bb.8:
	movq	24(%rax), %r13
	testq	%r13, %r13
	je	.LBB18_24
# %bb.9:
	leaq	8(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB18_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_12 Depth 2
                                        #     Child Loop BB18_19 Depth 2
	movq	24(%r13), %rax
	movslq	%r9d, %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	testl	%r9d, %r9d
	jle	.LBB18_17
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=1
	movl	$16, %edx
	movq	%rcx, %rsi
	jmp	.LBB18_12
	.p2align	4, 0x90
.LBB18_13:                              #   in Loop: Header=BB18_12 Depth=2
	movq	(%r13,%rdx,2), %rdi
	movq	(%rax,%rdx,2), %rbx
	addq	%rbx, %rdi
	addq	$-1, %rdi
	movq	%rdi, (%rax,%rdx,2)
	movq	-8(%r13,%rdx,2), %rdi
	movq	%rdi, -8(%rax,%rdx,2)
.LBB18_15:                              #   in Loop: Header=BB18_12 Depth=2
	addq	$8, %rdx
	addq	$-1, %rsi
	je	.LBB18_16
.LBB18_12:                              #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-608(%rbp,%rdx), %rax
	cmpq	%r13, -8(%rax,%rdx,2)
	je	.LBB18_13
# %bb.14:                               #   in Loop: Header=BB18_12 Depth=2
	addq	$-1, (%rax,%rdx,2)
	jmp	.LBB18_15
	.p2align	4, 0x90
.LBB18_16:                              #   in Loop: Header=BB18_10 Depth=1
	movq	24(%r13), %rax
.LBB18_17:                              #   in Loop: Header=BB18_10 Depth=1
	testq	%rax, %rax
	leaq	16(%rax), %rax
	movq	16(%r13), %rdx
	cmoveq	-48(%rbp), %rax         # 8-byte Folded Reload
	movq	%rdx, (%rax)
	cmpl	$2, %r9d
	jl	.LBB18_21
# %bb.18:                               #   in Loop: Header=BB18_10 Depth=1
	movq	(%r12), %rax
	addl	$-1, %r9d
	leaq	1(%rcx), %rdx
	shlq	$4, %rcx
	addq	%rax, %rcx
	addq	$8, %rcx
	.p2align	4, 0x90
.LBB18_19:                              #   Parent Loop BB18_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	jne	.LBB18_21
# %bb.20:                               #   in Loop: Header=BB18_19 Depth=2
	movl	%r9d, 24(%r12)
	addq	$-1, %rdx
	addl	$-1, %r9d
	addq	$-16, %rcx
	cmpq	$2, %rdx
	jg	.LBB18_19
.LBB18_21:                              #   in Loop: Header=BB18_10 Depth=1
	addq	$-1, 16(%r12)
	movq	(%r13), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	dictDelete
	movq	(%r13), %rdi
	callq	sdsfree
	movq	%r13, %rdi
	callq	zfree
	addq	$1, %r15
	addq	$1, %r14
	cmpq	-56(%rbp), %r14         # 8-byte Folded Reload
	ja	.LBB18_24
# %bb.22:                               #   in Loop: Header=BB18_10 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	testq	%r13, %r13
	je	.LBB18_24
# %bb.23:                               #   in Loop: Header=BB18_10 Depth=1
	movl	24(%r12), %r9d
	jmp	.LBB18_10
.LBB18_24:
	movq	%r15, %rax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	zslDeleteRangeByRank, .Lfunc_end18-zslDeleteRangeByRank
                                        # -- End function
	.globl	zslGetRank              # -- Begin function zslGetRank
	.p2align	4, 0x90
	.type	zslGetRank,@function
zslGetRank:                             # @zslGetRank
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movslq	24(%rdi), %rcx
	testq	%rcx, %rcx
	jle	.LBB19_14
# %bb.1:
	movq	(%rdi), %rbx
	xorl	%r13d, %r13d
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB19_2
	.p2align	4, 0x90
.LBB19_13:                              #   in Loop: Header=BB19_2 Depth=1
	cmpq	$1, -72(%rbp)           # 8-byte Folded Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jle	.LBB19_14
.LBB19_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_4 Depth 2
	leaq	-1(%rcx), %rdx
	movq	%rdx, %r12
	shlq	$4, %r12
	movq	24(%rbx,%r12), %rax
	testq	%rax, %rax
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	je	.LBB19_11
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB19_2 Depth=1
	leaq	(%rbx,%r12), %r14
	addq	$24, %r14
	movq	%rbx, %r15
	jmp	.LBB19_4
	.p2align	4, 0x90
.LBB19_10:                              #   in Loop: Header=BB19_4 Depth=2
	addq	32(%r15,%r12), %r13
	movq	%rax, %rbx
	leaq	(%rax,%r12), %r14
	addq	$24, %r14
	movq	24(%rax,%r12), %rax
	movq	%rbx, %r15
	testq	%rax, %rax
	je	.LBB19_11
.LBB19_4:                               #   Parent Loop BB19_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB19_10
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=2
	ucomisd	%xmm0, %xmm1
	jne	.LBB19_6
	jp	.LBB19_6
# %bb.7:                                #   in Loop: Header=BB19_4 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB19_8
# %bb.9:                                #   in Loop: Header=BB19_4 Depth=2
	movq	(%r14), %rax
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB19_10
.LBB19_6:                               #   in Loop: Header=BB19_2 Depth=1
	movq	%r15, %rbx
	jmp	.LBB19_11
.LBB19_8:                               #   in Loop: Header=BB19_2 Depth=1
	movq	%r15, %rbx
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB19_11:                              #   in Loop: Header=BB19_2 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.12:                               #   in Loop: Header=BB19_2 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB19_13
	jmp	.LBB19_15
.LBB19_14:
	xorl	%r13d, %r13d
.LBB19_15:
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	zslGetRank, .Lfunc_end19-zslGetRank
                                        # -- End function
	.globl	zslGetElementByRank     # -- Begin function zslGetElementByRank
	.p2align	4, 0x90
	.type	zslGetElementByRank,@function
zslGetElementByRank:                    # @zslGetElementByRank
# %bb.0:
	movq	(%rdi), %rax
	movslq	24(%rdi), %r8
	xorl	%ecx, %ecx
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	cmpq	%rsi, %rcx
	je	.LBB20_7
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	testq	%r8, %r8
	jle	.LBB20_2
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB20_1 Depth=1
	addq	$-1, %r8
	movq	%rax, %rdi
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB20_4:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movq	%rdi, %rax
	movq	%r8, %rdx
	shlq	$4, %rdx
	movq	24(%rdi,%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB20_6
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=2
	movq	32(%rax,%rdx), %rdx
	addq	%rcx, %rdx
	cmpq	%rsi, %rdx
	jbe	.LBB20_4
	jmp	.LBB20_6
.LBB20_7:
	retq
.LBB20_2:
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	zslGetElementByRank, .Lfunc_end20-zslGetElementByRank
                                        # -- End function
	.globl	zslParseLexRangeItem    # -- Begin function zslParseLexRangeItem
	.p2align	4, 0x90
	.type	zslParseLexRangeItem,@function
zslParseLexRangeItem:                   # @zslParseLexRangeItem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	8(%rdi), %rax
	movsbl	(%rax), %ecx
	movl	$-1, %ebx
	cmpl	$44, %ecx
	jg	.LBB21_5
# %bb.1:
	cmpl	$40, %ecx
	je	.LBB21_10
# %bb.2:
	cmpl	$43, %ecx
	jne	.LBB21_26
# %bb.3:
	cmpb	$0, 1(%rax)
	jne	.LBB21_26
# %bb.4:
	movl	$1, (%rdx)
	movq	shared+80968(%rip), %rax
	jmp	.LBB21_15
.LBB21_5:
	cmpl	$45, %ecx
	je	.LBB21_13
# %bb.6:
	cmpl	$91, %ecx
	jne	.LBB21_26
# %bb.7:
	movl	$0, (%rdx)
	leaq	1(%rax), %rdi
	movzbl	-1(%rax), %esi
	movl	%esi, %ecx
	andb	$7, %cl
	xorl	%ebx, %ebx
	cmpb	$4, %cl
	ja	.LBB21_17
# %bb.8:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI21_0(,%rcx,8)
.LBB21_10:
	movl	$1, (%rdx)
	leaq	1(%rax), %rdi
	movzbl	-1(%rax), %esi
	movl	%esi, %ecx
	andb	$7, %cl
	xorl	%ebx, %ebx
	cmpb	$4, %cl
	ja	.LBB21_17
# %bb.11:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI21_1(,%rcx,8)
.LBB21_12:
	shrq	$3, %rsi
	jmp	.LBB21_25
.LBB21_13:
	cmpb	$0, 1(%rax)
	jne	.LBB21_26
# %bb.14:
	movl	$1, (%rdx)
	movq	shared+80960(%rip), %rax
.LBB21_15:
	movq	%rax, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB21_26
.LBB21_17:
	xorl	%esi, %esi
	jmp	.LBB21_25
.LBB21_22:
	movzbl	-3(%rax), %esi
	jmp	.LBB21_25
.LBB21_23:
	movzwl	-5(%rax), %esi
	jmp	.LBB21_25
.LBB21_24:
	movl	-9(%rax), %esi
	jmp	.LBB21_25
.LBB21_16:
	movq	-17(%rax), %rsi
.LBB21_25:
	addq	$-1, %rsi
	callq	sdsnewlen
	movq	%rax, (%r14)
.LBB21_26:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	zslParseLexRangeItem, .Lfunc_end21-zslParseLexRangeItem
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_12
	.quad	.LBB21_22
	.quad	.LBB21_23
	.quad	.LBB21_24
	.quad	.LBB21_16
.LJTI21_1:
	.quad	.LBB21_12
	.quad	.LBB21_22
	.quad	.LBB21_23
	.quad	.LBB21_24
	.quad	.LBB21_16
                                        # -- End function
	.text
	.globl	zslFreeLexRange         # -- Begin function zslFreeLexRange
	.p2align	4, 0x90
	.type	zslFreeLexRange,@function
zslFreeLexRange:                        # @zslFreeLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB22_3
# %bb.1:
	cmpq	%rax, %rdi
	je	.LBB22_3
# %bb.2:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB22_3:
	movq	8(%rbx), %rdi
	cmpq	%rcx, %rdi
	je	.LBB22_5
# %bb.4:
	cmpq	%rax, %rdi
	je	.LBB22_5
# %bb.6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB22_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	zslFreeLexRange, .Lfunc_end22-zslFreeLexRange
                                        # -- End function
	.globl	zslParseLexRange        # -- Begin function zslParseLexRange
	.p2align	4, 0x90
	.type	zslParseLexRange,@function
zslParseLexRange:                       # @zslParseLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$240, %eax
	movl	(%rdi), %ecx
	andl	%eax, %ecx
	cmpl	$16, %ecx
	je	.LBB23_10
# %bb.1:
	movq	%rsi, %r15
	andl	(%rsi), %eax
	cmpl	$16, %eax
	je	.LBB23_10
# %bb.2:
	movq	%rdx, %rbx
	leaq	8(%rdx), %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdx)
	addq	$16, %rdx
	movq	%rbx, %rsi
	callq	zslParseLexRangeItem
	cmpl	$-1, %eax
	je	.LBB23_4
# %bb.3:
	leaq	20(%rbx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	zslParseLexRangeItem
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	jne	.LBB23_11
.LBB23_4:
	movq	(%rbx), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB23_7
# %bb.5:
	cmpq	%rax, %rdi
	je	.LBB23_7
# %bb.6:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB23_7:
	movq	(%r14), %rdi
	cmpq	%rcx, %rdi
	je	.LBB23_10
# %bb.8:
	cmpq	%rax, %rdi
	je	.LBB23_10
# %bb.9:
	callq	sdsfree
.LBB23_10:
	movl	$-1, %eax
.LBB23_11:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	zslParseLexRange, .Lfunc_end23-zslParseLexRange
                                        # -- End function
	.globl	sdscmplex               # -- Begin function sdscmplex
	.p2align	4, 0x90
	.type	sdscmplex,@function
sdscmplex:                              # @sdscmplex
# %bb.0:
	cmpq	%rsi, %rdi
	je	.LBB24_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB24_6
# %bb.3:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB24_6
# %bb.4:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB24_6
# %bb.5:
	cmpq	%rdi, %rdx
	je	.LBB24_6
# %bb.7:
	jmp	sdscmp                  # TAILCALL
.LBB24_6:
	retq
.LBB24_1:
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	sdscmplex, .Lfunc_end24-sdscmplex
                                        # -- End function
	.globl	zslIsInLexRange         # -- Begin function zslIsInLexRange
	.p2align	4, 0x90
	.type	zslIsInLexRange,@function
zslIsInLexRange:                        # @zslIsInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	movq	8(%rsi), %rsi
	cmpq	%rsi, %rdi
	je	.LBB25_7
# %bb.1:
	movq	shared+80960(%rip), %rax
	cmpq	%rdi, %rax
	je	.LBB25_9
# %bb.2:
	movq	shared+80968(%rip), %rcx
	cmpq	%rsi, %rcx
	je	.LBB25_9
# %bb.3:
	cmpq	%rsi, %rax
	je	.LBB25_27
# %bb.4:
	cmpq	%rdi, %rcx
	je	.LBB25_27
# %bb.5:
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB25_27
# %bb.6:
	jne	.LBB25_9
.LBB25_7:
	cmpl	$0, 16(%rbx)
	jne	.LBB25_27
# %bb.8:
	cmpl	$0, 20(%rbx)
	jne	.LBB25_27
.LBB25_9:
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB25_27
# %bb.10:
	movq	(%rax), %rdi
	movl	16(%rbx), %r15d
	movq	(%rbx), %rsi
	cmpq	%rdi, %rsi
	je	.LBB25_11
# %bb.12:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB25_17
# %bb.13:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB25_17
# %bb.14:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB25_17
# %bb.15:
	cmpq	%rdi, %rdx
	je	.LBB25_17
# %bb.16:
	callq	sdscmp
	jmp	.LBB25_17
.LBB25_11:
	xorl	%eax, %eax
.LBB25_17:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r15d, %r15d
	cmovel	%eax, %ecx
	testl	%ecx, %ecx
	je	.LBB25_27
# %bb.18:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB25_27
# %bb.19:
	movq	(%rax), %rdi
	movl	20(%rbx), %r14d
	movq	8(%rbx), %rsi
	cmpq	%rdi, %rsi
	je	.LBB25_20
# %bb.21:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB25_26
# %bb.22:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB25_26
# %bb.23:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB25_26
# %bb.24:
	cmpq	%rdi, %rdx
	je	.LBB25_26
# %bb.25:
	callq	sdscmp
	jmp	.LBB25_26
.LBB25_27:
	xorl	%eax, %eax
.LBB25_28:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_20:
	xorl	%eax, %eax
.LBB25_26:
	movl	%eax, %edx
	shrl	$31, %edx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setle	%cl
	testl	%r14d, %r14d
	cmovnel	%edx, %ecx
	movl	%ecx, %eax
	jmp	.LBB25_28
.Lfunc_end25:
	.size	zslIsInLexRange, .Lfunc_end25-zslIsInLexRange
                                        # -- End function
	.globl	zslFirstInLexRange      # -- Begin function zslFirstInLexRange
	.p2align	4, 0x90
	.type	zslFirstInLexRange,@function
zslFirstInLexRange:                     # @zslFirstInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	zslIsInLexRange
	testl	%eax, %eax
	je	.LBB26_1
# %bb.2:
	movq	(%r14), %rbx
	movslq	24(%r14), %rax
	testq	%rax, %rax
	jg	.LBB26_3
.LBB26_15:
	movq	24(%rbx), %r14
	testq	%r14, %r14
	je	.LBB26_25
# %bb.16:
	movq	(%r14), %rdi
	movl	20(%r15), %ebx
	movq	8(%r15), %rsi
	cmpq	%rdi, %rsi
	je	.LBB26_17
# %bb.18:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB26_23
# %bb.19:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB26_23
# %bb.20:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB26_23
# %bb.21:
	cmpq	%rdi, %rdx
	je	.LBB26_23
# %bb.22:
	callq	sdscmp
	jmp	.LBB26_23
	.p2align	4, 0x90
.LBB26_14:                              #   in Loop: Header=BB26_3 Depth=1
	cmpq	$1, -48(%rbp)           # 8-byte Folded Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	jle	.LBB26_15
.LBB26_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-1(%rax), %r13
	movq	%r13, -56(%rbp)         # 8-byte Spill
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	testq	%rax, %rax
	je	.LBB26_14
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	(%rbx,%r13), %r14
	addq	$24, %r14
	.p2align	4, 0x90
.LBB26_5:                               #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdi
	movl	16(%r15), %r12d
	movq	(%r15), %rsi
	cmpq	%rdi, %rsi
	je	.LBB26_6
# %bb.7:                                #   in Loop: Header=BB26_5 Depth=2
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB26_12
# %bb.8:                                #   in Loop: Header=BB26_5 Depth=2
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB26_12
# %bb.9:                                #   in Loop: Header=BB26_5 Depth=2
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB26_12
# %bb.10:                               #   in Loop: Header=BB26_5 Depth=2
	cmpq	%rdi, %rdx
	je	.LBB26_12
# %bb.11:                               #   in Loop: Header=BB26_5 Depth=2
	callq	sdscmp
	jmp	.LBB26_12
	.p2align	4, 0x90
.LBB26_6:                               #   in Loop: Header=BB26_5 Depth=2
	xorl	%eax, %eax
.LBB26_12:                              #   in Loop: Header=BB26_5 Depth=2
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r12d, %r12d
	cmovel	%eax, %ecx
	testl	%ecx, %ecx
	jne	.LBB26_14
# %bb.13:                               #   in Loop: Header=BB26_5 Depth=2
	movq	(%r14), %rbx
	leaq	(%rbx,%r13), %r14
	addq	$24, %r14
	movq	24(%rbx,%r13), %rax
	testq	%rax, %rax
	jne	.LBB26_5
	jmp	.LBB26_14
.LBB26_1:
	xorl	%r14d, %r14d
	jmp	.LBB26_24
.LBB26_17:
	xorl	%eax, %eax
.LBB26_23:
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	setle	%dl
	testl	%ebx, %ebx
	cmovnel	%ecx, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmoveq	%rax, %r14
.LBB26_24:
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_25:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$686, %edx              # imm = 0x2AE
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end26:
	.size	zslFirstInLexRange, .Lfunc_end26-zslFirstInLexRange
                                        # -- End function
	.globl	zslLastInLexRange       # -- Begin function zslLastInLexRange
	.p2align	4, 0x90
	.type	zslLastInLexRange,@function
zslLastInLexRange:                      # @zslLastInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	zslIsInLexRange
	testl	%eax, %eax
	je	.LBB27_1
# %bb.2:
	movq	(%r15), %rbx
	movslq	24(%r15), %rax
	testq	%rax, %rax
	jg	.LBB27_3
.LBB27_15:
	testq	%rbx, %rbx
	je	.LBB27_25
# %bb.16:
	movq	(%rbx), %rdi
	movl	16(%r14), %r15d
	movq	(%r14), %rsi
	cmpq	%rdi, %rsi
	je	.LBB27_17
# %bb.18:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB27_23
# %bb.19:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB27_23
# %bb.20:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB27_23
# %bb.21:
	cmpq	%rdi, %rdx
	je	.LBB27_23
# %bb.22:
	callq	sdscmp
	jmp	.LBB27_23
	.p2align	4, 0x90
.LBB27_14:                              #   in Loop: Header=BB27_3 Depth=1
	cmpq	$1, -48(%rbp)           # 8-byte Folded Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	jle	.LBB27_15
.LBB27_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_5 Depth 2
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-1(%rax), %r13
	movq	%r13, -56(%rbp)         # 8-byte Spill
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	testq	%rax, %rax
	je	.LBB27_14
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB27_3 Depth=1
	leaq	(%rbx,%r13), %r15
	addq	$24, %r15
	.p2align	4, 0x90
.LBB27_5:                               #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdi
	movl	20(%r14), %r12d
	movq	8(%r14), %rsi
	cmpq	%rdi, %rsi
	je	.LBB27_6
# %bb.7:                                #   in Loop: Header=BB27_5 Depth=2
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB27_12
# %bb.8:                                #   in Loop: Header=BB27_5 Depth=2
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB27_12
# %bb.9:                                #   in Loop: Header=BB27_5 Depth=2
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB27_12
# %bb.10:                               #   in Loop: Header=BB27_5 Depth=2
	cmpq	%rdi, %rdx
	je	.LBB27_12
# %bb.11:                               #   in Loop: Header=BB27_5 Depth=2
	callq	sdscmp
	jmp	.LBB27_12
	.p2align	4, 0x90
.LBB27_6:                               #   in Loop: Header=BB27_5 Depth=2
	xorl	%eax, %eax
.LBB27_12:                              #   in Loop: Header=BB27_5 Depth=2
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	setle	%dl
	testl	%r12d, %r12d
	cmovnel	%ecx, %edx
	testl	%edx, %edx
	je	.LBB27_14
# %bb.13:                               #   in Loop: Header=BB27_5 Depth=2
	movq	(%r15), %rbx
	leaq	(%rbx,%r13), %r15
	addq	$24, %r15
	movq	24(%rbx,%r13), %rax
	testq	%rax, %rax
	jne	.LBB27_5
	jmp	.LBB27_14
.LBB27_1:
	xorl	%ebx, %ebx
	jmp	.LBB27_24
.LBB27_17:
	xorl	%eax, %eax
.LBB27_23:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r15d, %r15d
	cmovel	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmoveq	%rax, %rbx
.LBB27_24:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_25:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$711, %edx              # imm = 0x2C7
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end27:
	.size	zslLastInLexRange, .Lfunc_end27-zslLastInLexRange
                                        # -- End function
	.globl	zzlGetScore             # -- Begin function zzlGetScore
	.p2align	4, 0x90
	.type	zzlGetScore,@function
zzlGetScore:                            # @zzlGetScore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$152, %rsp
	testq	%rdi, %rdi
	je	.LBB28_1
# %bb.3:
	leaq	-32(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB28_4
# %bb.5:
	movq	-32(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB28_7
# %bb.6:
	movl	-12(%rbp), %edx
	leaq	-160(%rbp), %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movl	-12(%rbp), %eax
	movb	$0, -160(%rbp,%rax)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	strtod
	jmp	.LBB28_8
.LBB28_7:
	cvtsi2sdq	-24(%rbp), %xmm0
.LBB28_8:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB28_1:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$729, %edx              # imm = 0x2D9
	jmp	.LBB28_2
.LBB28_4:
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$730, %edx              # imm = 0x2DA
.LBB28_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end28:
	.size	zzlGetScore, .Lfunc_end28-zzlGetScore
                                        # -- End function
	.globl	ziplistGetObject        # -- Begin function ziplistGetObject
	.p2align	4, 0x90
	.type	ziplistGetObject,@function
ziplistGetObject:                       # @ziplistGetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	testq	%rdi, %rdi
	je	.LBB29_1
# %bb.3:
	leaq	-24(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB29_4
# %bb.5:
	movq	-24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB29_7
# %bb.6:
	movl	-4(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB29_8
.LBB29_7:
	movq	-16(%rbp), %rdi
	callq	sdsfromlonglong
.LBB29_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB29_1:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$749, %edx              # imm = 0x2ED
	jmp	.LBB29_2
.LBB29_4:
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$750, %edx              # imm = 0x2EE
.LBB29_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end29:
	.size	ziplistGetObject, .Lfunc_end29-ziplistGetObject
                                        # -- End function
	.globl	zzlCompareElements      # -- Begin function zzlCompareElements
	.p2align	4, 0x90
	.type	zzlCompareElements,@function
zzlCompareElements:                     # @zzlCompareElements
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r14
	leaq	-40(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB30_5
# %bb.1:
	movq	-40(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB30_3
# %bb.2:
	movl	-28(%rbp), %eax
	jmp	.LBB30_4
.LBB30_3:
	leaq	-80(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	%eax, -28(%rbp)
	movq	%rbx, -40(%rbp)
.LBB30_4:
	cmpl	%r15d, %eax
	cmovael	%r15d, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcmp
	movl	-28(%rbp), %ecx
	subl	%r15d, %ecx
	testl	%eax, %eax
	cmovel	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_5:
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$767, %edx              # imm = 0x2FF
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end30:
	.size	zzlCompareElements, .Lfunc_end30-zzlCompareElements
                                        # -- End function
	.globl	zzlLength               # -- Begin function zzlLength
	.p2align	4, 0x90
	.type	zzlLength,@function
zzlLength:                              # @zzlLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	ziplistLen
	shrl	%eax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	zzlLength, .Lfunc_end31-zzlLength
                                        # -- End function
	.globl	zzlNext                 # -- Begin function zzlNext
	.p2align	4, 0x90
	.type	zzlNext,@function
zzlNext:                                # @zzlNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpq	$0, (%rsi)
	je	.LBB32_2
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB32_2
# %bb.4:
	movq	%rdi, %r12
	callq	ziplistNext
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB32_5
# %bb.7:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	jne	.LBB32_6
# %bb.8:
	movl	$.L.str.8, %edi
	movl	$.L.str.1, %esi
	movl	$793, %edx              # imm = 0x319
	jmp	.LBB32_3
.LBB32_5:
	xorl	%eax, %eax
.LBB32_6:
	movq	%rbx, (%r15)
	movq	%rax, (%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_2:
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$788, %edx              # imm = 0x314
.LBB32_3:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	zzlNext, .Lfunc_end32-zzlNext
                                        # -- End function
	.globl	zzlPrev                 # -- Begin function zzlPrev
	.p2align	4, 0x90
	.type	zzlPrev,@function
zzlPrev:                                # @zzlPrev
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB33_2
# %bb.1:
	movq	%rdx, %r14
	cmpq	$0, (%rdx)
	je	.LBB33_2
# %bb.4:
	movq	%rdi, %r12
	callq	ziplistPrev
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB33_5
# %bb.7:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistPrev
	testq	%rax, %rax
	jne	.LBB33_6
# %bb.8:
	movl	$.L.str.9, %edi
	movl	$.L.str.1, %esi
	movl	$812, %edx              # imm = 0x32C
	jmp	.LBB33_3
.LBB33_5:
	xorl	%eax, %eax
.LBB33_6:
	movq	%rax, (%r15)
	movq	%rbx, (%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB33_2:
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$807, %edx              # imm = 0x327
.LBB33_3:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end33:
	.size	zzlPrev, .Lfunc_end33-zzlPrev
                                        # -- End function
	.globl	zzlIsInRange            # -- Begin function zzlIsInRange
	.p2align	4, 0x90
	.type	zzlIsInRange,@function
zzlIsInRange:                           # @zzlIsInRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	xorl	%r14d, %r14d
	ucomisd	8(%rsi), %xmm0
	ja	.LBB34_8
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	jne	.LBB34_4
	jp	.LBB34_4
# %bb.2:
	cmpl	$0, 16(%rbx)
	jne	.LBB34_8
# %bb.3:
	cmpl	$0, 20(%rbx)
	jne	.LBB34_8
.LBB34_4:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB34_8
# %bb.5:
	movq	%rax, %rdi
	callq	zzlGetScore
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	(%rbx), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 16(%rbx)
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB34_8
# %bb.6:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB34_9
# %bb.7:
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	cmpl	$0, 20(%rbx)
	cmovel	%ecx, %eax
	movzbl	%al, %r14d
.LBB34_8:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_9:
	movl	$.L.str.10, %edi
	movl	$.L.str.1, %esi
	movl	$840, %edx              # imm = 0x348
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end34:
	.size	zzlIsInRange, .Lfunc_end34-zzlIsInRange
                                        # -- End function
	.globl	zzlFirstInRange         # -- Begin function zzlFirstInRange
	.p2align	4, 0x90
	.type	zzlFirstInRange,@function
zzlFirstInRange:                        # @zzlFirstInRange
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
	movq	%rdi, %r12
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	zzlIsInRange
	testl	%eax, %eax
	je	.LBB35_7
# %bb.1:
	testq	%r13, %r13
	je	.LBB35_7
# %bb.2:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB35_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB35_8
# %bb.4:                                #   in Loop: Header=BB35_3 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zzlGetScore
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	(%r15), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 16(%r15)
	cmovel	%ecx, %eax
	cmpb	$1, %al
	je	.LBB35_5
# %bb.6:                                #   in Loop: Header=BB35_3 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB35_3
	jmp	.LBB35_7
.LBB35_5:
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	cmpl	$0, 20(%r15)
	cmovel	%ecx, %eax
	xorl	%r14d, %r14d
	testb	%al, %al
	cmovneq	%r13, %r14
.LBB35_7:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_8:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$859, %edx              # imm = 0x35B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end35:
	.size	zzlFirstInRange, .Lfunc_end35-zzlFirstInRange
                                        # -- End function
	.globl	zzlLastInRange          # -- Begin function zzlLastInRange
	.p2align	4, 0x90
	.type	zzlLastInRange,@function
zzlLastInRange:                         # @zzlLastInRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$-2, %esi
	callq	ziplistIndex
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	zzlIsInRange
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB36_8
# %bb.1:
	testq	%rbx, %rbx
	je	.LBB36_8
# %bb.2:
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB36_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB36_4
# %bb.6:                                #   in Loop: Header=BB36_3 Depth=1
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	cmpl	$0, 20(%r14)
	cmovel	%ecx, %eax
	cmpb	$1, %al
	je	.LBB36_7
# %bb.9:                                #   in Loop: Header=BB36_3 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistPrev
	testq	%rax, %rax
	je	.LBB36_8
# %bb.10:                               #   in Loop: Header=BB36_3 Depth=1
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	ziplistPrev
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB36_3
# %bb.11:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$901, %edx              # imm = 0x385
	jmp	.LBB36_5
.LBB36_7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	(%r14), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 16(%r14)
	cmovel	%ecx, %eax
	xorl	%r15d, %r15d
	testb	%al, %al
	cmovneq	%rbx, %r15
.LBB36_8:
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_4:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$887, %edx              # imm = 0x377
.LBB36_5:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end36:
	.size	zzlLastInRange, .Lfunc_end36-zzlLastInRange
                                        # -- End function
	.globl	zzlLexValueGteMin       # -- Begin function zzlLexValueGteMin
	.p2align	4, 0x90
	.type	zzlLexValueGteMin,@function
zzlLexValueGteMin:                      # @zzlLexValueGteMin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	ziplistGetObject
	movq	%rax, %r14
	movl	16(%rbx), %r15d
	movq	(%rbx), %rsi
	cmpq	%rax, %rsi
	je	.LBB37_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB37_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB37_7
# %bb.4:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB37_7
# %bb.5:
	cmpq	%r14, %rdx
	je	.LBB37_7
# %bb.6:
	movq	%r14, %rdi
	callq	sdscmp
	jmp	.LBB37_7
.LBB37_1:
	xorl	%eax, %eax
.LBB37_7:
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setg	%bl
	notl	%eax
	shrl	$31, %eax
	testl	%r15d, %r15d
	cmovel	%eax, %ebx
	movq	%r14, %rdi
	callq	sdsfree
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	zzlLexValueGteMin, .Lfunc_end37-zzlLexValueGteMin
                                        # -- End function
	.globl	zzlLexValueLteMax       # -- Begin function zzlLexValueLteMax
	.p2align	4, 0x90
	.type	zzlLexValueLteMax,@function
zzlLexValueLteMax:                      # @zzlLexValueLteMax
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	ziplistGetObject
	movq	%rax, %r14
	movl	20(%rbx), %r15d
	movq	8(%rbx), %rsi
	cmpq	%rax, %rsi
	je	.LBB38_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB38_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB38_7
# %bb.4:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB38_7
# %bb.5:
	cmpq	%r14, %rdx
	je	.LBB38_7
# %bb.6:
	movq	%r14, %rdi
	callq	sdscmp
	jmp	.LBB38_7
.LBB38_1:
	xorl	%eax, %eax
.LBB38_7:
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setle	%bl
	testl	%r15d, %r15d
	cmovnel	%ecx, %ebx
	movq	%r14, %rdi
	callq	sdsfree
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	zzlLexValueLteMax, .Lfunc_end38-zzlLexValueLteMax
                                        # -- End function
	.globl	zzlIsInLexRange         # -- Begin function zzlIsInLexRange
	.p2align	4, 0x90
	.type	zzlIsInLexRange,@function
zzlIsInLexRange:                        # @zzlIsInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	movq	8(%rsi), %rsi
	cmpq	%rsi, %rdi
	je	.LBB39_7
# %bb.1:
	movq	shared+80960(%rip), %rax
	cmpq	%rdi, %rax
	je	.LBB39_9
# %bb.2:
	movq	shared+80968(%rip), %rcx
	cmpq	%rsi, %rcx
	je	.LBB39_9
# %bb.3:
	xorl	%r15d, %r15d
	cmpq	%rsi, %rax
	je	.LBB39_26
# %bb.4:
	cmpq	%rdi, %rcx
	je	.LBB39_26
# %bb.5:
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB39_26
# %bb.6:
	jne	.LBB39_9
.LBB39_7:
	xorl	%r15d, %r15d
	cmpl	$0, 16(%rbx)
	jne	.LBB39_26
# %bb.8:
	cmpl	$0, 20(%rbx)
	jne	.LBB39_26
.LBB39_9:
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB39_10
# %bb.11:
	movq	%rax, %rdi
	callq	ziplistGetObject
	movq	%rax, %r12
	movl	16(%rbx), %edi
	movq	(%rbx), %rsi
	xorl	%r15d, %r15d
	movl	$0, %eax
	cmpq	%r12, %rsi
	je	.LBB39_17
# %bb.12:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r12, %rcx
	je	.LBB39_17
# %bb.13:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB39_17
# %bb.14:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB39_17
# %bb.15:
	cmpq	%r12, %rdx
	je	.LBB39_17
# %bb.16:
	movl	%edi, %r13d
	movq	%r12, %rdi
	callq	sdscmp
	movl	%r13d, %edi
.LBB39_17:
	xorl	%r13d, %r13d
	testl	%eax, %eax
	setg	%r13b
	notl	%eax
	shrl	$31, %eax
	testl	%edi, %edi
	cmovel	%eax, %r13d
	movq	%r12, %rdi
	callq	sdsfree
	testl	%r13d, %r13d
	je	.LBB39_26
# %bb.18:
	xorl	%r12d, %r12d
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB39_27
# %bb.19:
	movq	%rax, %rdi
	callq	ziplistGetObject
	movq	%rax, %r14
	movl	20(%rbx), %r13d
	movq	8(%rbx), %rsi
	cmpq	%rax, %rsi
	je	.LBB39_25
# %bb.20:
	movq	shared+80960(%rip), %rax
	movl	$-1, %r12d
	cmpq	%r14, %rax
	je	.LBB39_25
# %bb.21:
	movq	shared+80968(%rip), %rcx
	cmpq	%rsi, %rcx
	je	.LBB39_25
# %bb.22:
	movl	$1, %r12d
	cmpq	%rsi, %rax
	je	.LBB39_25
# %bb.23:
	cmpq	%r14, %rcx
	je	.LBB39_25
# %bb.24:
	movq	%r14, %rdi
	callq	sdscmp
	movl	%eax, %r12d
.LBB39_25:
	movl	%r12d, %eax
	shrl	$31, %eax
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	setle	%r15b
	testl	%r13d, %r13d
	cmovnel	%eax, %r15d
	movq	%r14, %rdi
	callq	sdsfree
	jmp	.LBB39_26
.LBB39_10:
	xorl	%r15d, %r15d
.LBB39_26:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB39_27:
	movl	$.L.str.10, %edi
	movl	$.L.str.1, %esi
	movl	$939, %edx              # imm = 0x3AB
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end39:
	.size	zzlIsInLexRange, .Lfunc_end39-zzlIsInLexRange
                                        # -- End function
	.globl	zzlFirstInLexRange      # -- Begin function zzlFirstInLexRange
	.p2align	4, 0x90
	.type	zzlFirstInLexRange,@function
zzlFirstInLexRange:                     # @zzlFirstInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	callq	zzlIsInLexRange
	testl	%eax, %eax
	je	.LBB40_21
# %bb.1:
	testq	%r14, %r14
	je	.LBB40_21
# %bb.2:
	movq	%r14, %r12
	.p2align	4, 0x90
.LBB40_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	ziplistGetObject
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	16(%rax), %r13d
	movq	(%rax), %rsi
	movl	$0, %eax
	cmpq	%rbx, %rsi
	je	.LBB40_9
# %bb.4:                                #   in Loop: Header=BB40_3 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	je	.LBB40_9
# %bb.5:                                #   in Loop: Header=BB40_3 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB40_9
# %bb.6:                                #   in Loop: Header=BB40_3 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB40_9
# %bb.7:                                #   in Loop: Header=BB40_3 Depth=1
	cmpq	%rbx, %rdx
	je	.LBB40_9
# %bb.8:                                #   in Loop: Header=BB40_3 Depth=1
	movq	%rbx, %rdi
	callq	sdscmp
	.p2align	4, 0x90
.LBB40_9:                               #   in Loop: Header=BB40_3 Depth=1
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setg	%r14b
	notl	%eax
	shrl	$31, %eax
	testl	%r13d, %r13d
	cmovel	%eax, %r14d
	movq	%rbx, %rdi
	callq	sdsfree
	testl	%r14d, %r14d
	jne	.LBB40_10
# %bb.18:                               #   in Loop: Header=BB40_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB40_22
# %bb.19:                               #   in Loop: Header=BB40_3 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB40_3
# %bb.20:
	xorl	%r12d, %r12d
	jmp	.LBB40_21
.LBB40_10:
	movq	%r12, %rdi
	callq	ziplistGetObject
	movq	%rax, %r14
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %r15d
	movq	8(%rax), %rsi
	cmpq	%r14, %rsi
	je	.LBB40_11
# %bb.12:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB40_17
# %bb.13:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB40_17
# %bb.14:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB40_17
# %bb.15:
	cmpq	%r14, %rdx
	je	.LBB40_17
# %bb.16:
	movq	%r14, %rdi
	callq	sdscmp
	jmp	.LBB40_17
.LBB40_11:
	xorl	%eax, %eax
.LBB40_17:
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setle	%bl
	testl	%r15d, %r15d
	cmovnel	%ecx, %ebx
	movq	%r14, %rdi
	callq	sdsfree
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmoveq	%rax, %r12
.LBB40_21:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB40_22:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$964, %edx              # imm = 0x3C4
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end40:
	.size	zzlFirstInLexRange, .Lfunc_end40-zzlFirstInLexRange
                                        # -- End function
	.globl	zzlLastInLexRange       # -- Begin function zzlLastInLexRange
	.p2align	4, 0x90
	.type	zzlLastInLexRange,@function
zzlLastInLexRange:                      # @zzlLastInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$-2, %esi
	callq	ziplistIndex
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	callq	zzlIsInLexRange
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB41_18
# %bb.1:
	testq	%r14, %r14
	je	.LBB41_18
# %bb.2:
	movq	%r14, %r12
	.p2align	4, 0x90
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	ziplistGetObject
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %r13d
	movq	8(%rax), %rsi
	movl	$0, %eax
	cmpq	%rbx, %rsi
	je	.LBB41_9
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	je	.LBB41_9
# %bb.5:                                #   in Loop: Header=BB41_3 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB41_9
# %bb.6:                                #   in Loop: Header=BB41_3 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB41_9
# %bb.7:                                #   in Loop: Header=BB41_3 Depth=1
	cmpq	%rbx, %rdx
	je	.LBB41_9
# %bb.8:                                #   in Loop: Header=BB41_3 Depth=1
	movq	%rbx, %rdi
	callq	sdscmp
	.p2align	4, 0x90
.LBB41_9:                               #   in Loop: Header=BB41_3 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%r13d, %r13d
	cmovnel	%ecx, %r14d
	movq	%rbx, %rdi
	callq	sdsfree
	testl	%r14d, %r14d
	jne	.LBB41_10
# %bb.19:                               #   in Loop: Header=BB41_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ziplistPrev
	testq	%rax, %rax
	je	.LBB41_20
# %bb.21:                               #   in Loop: Header=BB41_3 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistPrev
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB41_3
# %bb.22:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$991, %edx              # imm = 0x3DF
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB41_10:
	movq	%r12, %rdi
	callq	ziplistGetObject
	movq	%rax, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	16(%rax), %r14d
	movq	(%rax), %rsi
	cmpq	%r15, %rsi
	je	.LBB41_11
# %bb.12:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r15, %rcx
	je	.LBB41_17
# %bb.13:
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB41_17
# %bb.14:
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB41_17
# %bb.15:
	cmpq	%r15, %rdx
	je	.LBB41_17
# %bb.16:
	movq	%r15, %rdi
	callq	sdscmp
	jmp	.LBB41_17
.LBB41_20:
	xorl	%r12d, %r12d
	jmp	.LBB41_18
.LBB41_11:
	xorl	%eax, %eax
.LBB41_17:
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setg	%bl
	notl	%eax
	shrl	$31, %eax
	testl	%r14d, %r14d
	cmovel	%eax, %ebx
	movq	%r15, %rdi
	callq	sdsfree
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmoveq	%rax, %r12
.LBB41_18:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	zzlLastInLexRange, .Lfunc_end41-zzlLastInLexRange
                                        # -- End function
	.globl	zzlFind                 # -- Begin function zzlFind
	.p2align	4, 0x90
	.type	zzlFind,@function
zzlFind:                                # @zzlFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB42_16
# %bb.1:
	movq	%rax, %r13
	.p2align	4, 0x90
.LBB42_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB42_17
# %bb.3:                                #   in Loop: Header=BB42_2 Depth=1
	movq	%rax, %rbx
	movzbl	-1(%r15), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB42_4
# %bb.5:                                #   in Loop: Header=BB42_2 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI42_0(,%rax,8)
.LBB42_6:                               #   in Loop: Header=BB42_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB42_11
.LBB42_10:                              #   in Loop: Header=BB42_2 Depth=1
	movq	-17(%r15), %rdx
	jmp	.LBB42_11
.LBB42_8:                               #   in Loop: Header=BB42_2 Depth=1
	movzwl	-5(%r15), %edx
	jmp	.LBB42_11
.LBB42_9:                               #   in Loop: Header=BB42_2 Depth=1
	movl	-9(%r15), %edx
	jmp	.LBB42_11
.LBB42_7:                               #   in Loop: Header=BB42_2 Depth=1
	movzbl	-3(%r15), %edx
	jmp	.LBB42_11
.LBB42_4:                               #   in Loop: Header=BB42_2 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB42_11:                              #   in Loop: Header=BB42_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	ziplistCompare
	testl	%eax, %eax
	jne	.LBB42_12
# %bb.14:                               #   in Loop: Header=BB42_2 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB42_2
# %bb.15:
	xorl	%r13d, %r13d
	jmp	.LBB42_16
.LBB42_12:
	testq	%r14, %r14
	je	.LBB42_16
# %bb.13:
	movq	%rbx, %rdi
	callq	zzlGetScore
	movsd	%xmm0, (%r14)
.LBB42_16:
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_17:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$1004, %edx             # imm = 0x3EC
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end42:
	.size	zzlFind, .Lfunc_end42-zzlFind
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI42_0:
	.quad	.LBB42_6
	.quad	.LBB42_7
	.quad	.LBB42_8
	.quad	.LBB42_9
	.quad	.LBB42_10
                                        # -- End function
	.text
	.globl	zzlDelete               # -- Begin function zzlDelete
	.p2align	4, 0x90
	.type	zzlDelete,@function
zzlDelete:                              # @zzlDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rbx
	movq	%rbx, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	ziplistDelete
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end43:
	.size	zzlDelete, .Lfunc_end43-zzlDelete
                                        # -- End function
	.globl	zzlInsertAt             # -- Begin function zzlInsertAt
	.p2align	4, 0x90
	.type	zzlInsertAt,@function
zzlInsertAt:                            # @zzlInsertAt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	-176(%rbp), %rdi
	movl	$128, %esi
	callq	d2string
	movl	%eax, %r14d
	testq	%rbx, %rbx
	je	.LBB44_1
# %bb.10:
	movq	%rbx, %r13
	subq	%r15, %r13
	movzbl	-1(%r12), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB44_11
# %bb.12:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI44_0(,%rax,8)
.LBB44_13:
	shrq	$3, %rcx
	jmp	.LBB44_18
.LBB44_1:
	movzbl	-1(%r12), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB44_2
# %bb.3:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI44_1(,%rax,8)
.LBB44_4:
	shrq	$3, %rdx
	jmp	.LBB44_9
.LBB44_17:
	movq	-17(%r12), %rcx
	jmp	.LBB44_18
.LBB44_15:
	movzwl	-5(%r12), %ecx
	jmp	.LBB44_18
.LBB44_16:
	movl	-9(%r12), %ecx
	jmp	.LBB44_18
.LBB44_14:
	movzbl	-3(%r12), %ecx
	jmp	.LBB44_18
.LBB44_11:
	xorl	%ecx, %ecx
.LBB44_18:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	ziplistInsert
	movq	%rax, %rbx
	addq	%rax, %r13
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB44_21
# %bb.19:
	leaq	-176(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%r14d, %ecx
	callq	ziplistInsert
	jmp	.LBB44_20
.LBB44_8:
	movq	-17(%r12), %rdx
	jmp	.LBB44_9
.LBB44_6:
	movzwl	-5(%r12), %edx
	jmp	.LBB44_9
.LBB44_7:
	movl	-9(%r12), %edx
	jmp	.LBB44_9
.LBB44_5:
	movzbl	-3(%r12), %edx
	jmp	.LBB44_9
.LBB44_2:
	xorl	%edx, %edx
.LBB44_9:
	movq	%r15, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	leaq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r14d, %edx
	movl	$1, %ecx
	callq	ziplistPush
.LBB44_20:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_21:
	movl	$.L.str.12, %edi
	movl	$.L.str.1, %esi
	movl	$1046, %edx             # imm = 0x416
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end44:
	.size	zzlInsertAt, .Lfunc_end44-zzlInsertAt
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI44_0:
	.quad	.LBB44_13
	.quad	.LBB44_14
	.quad	.LBB44_15
	.quad	.LBB44_16
	.quad	.LBB44_17
.LJTI44_1:
	.quad	.LBB44_4
	.quad	.LBB44_5
	.quad	.LBB44_6
	.quad	.LBB44_7
	.quad	.LBB44_8
                                        # -- End function
	.text
	.globl	zzlInsert               # -- Begin function zzlInsert
	.p2align	4, 0x90
	.type	zzlInsert,@function
zzlInsert:                              # @zzlInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%esi, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB45_15
# %bb.1:
	movq	%rax, %r12
	jmp	.LBB45_2
.LBB45_12:                              #   in Loop: Header=BB45_2 Depth=1
	movq	-17(%r14), %rdx
	.p2align	4, 0x90
.LBB45_13:                              #   in Loop: Header=BB45_2 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	zzlCompareElements
	testl	%eax, %eax
	jg	.LBB45_25
.LBB45_14:                              #   in Loop: Header=BB45_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB45_15
.LBB45_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB45_24
# %bb.3:                                #   in Loop: Header=BB45_2 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zzlGetScore
	ucomisd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	ja	.LBB45_25
# %bb.4:                                #   in Loop: Header=BB45_2 Depth=1
	jne	.LBB45_14
	jp	.LBB45_14
# %bb.5:                                #   in Loop: Header=BB45_2 Depth=1
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB45_6
# %bb.7:                                #   in Loop: Header=BB45_2 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI45_0(,%rax,8)
.LBB45_8:                               #   in Loop: Header=BB45_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB45_13
.LBB45_10:                              #   in Loop: Header=BB45_2 Depth=1
	movzwl	-5(%r14), %edx
	jmp	.LBB45_13
.LBB45_11:                              #   in Loop: Header=BB45_2 Depth=1
	movl	-9(%r14), %edx
	jmp	.LBB45_13
.LBB45_9:                               #   in Loop: Header=BB45_2 Depth=1
	movzbl	-3(%r14), %edx
	jmp	.LBB45_13
.LBB45_6:                               #   in Loop: Header=BB45_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB45_13
.LBB45_15:
	leaq	-176(%rbp), %rdi
	movl	$128, %esi
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	d2string
	movl	%eax, %ebx
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB45_16
# %bb.17:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI45_1(,%rax,8)
.LBB45_18:
	shrq	$3, %rdx
	jmp	.LBB45_23
.LBB45_25:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	zzlInsertAt             # TAILCALL
.LBB45_19:
	movzbl	-3(%r14), %edx
	jmp	.LBB45_23
.LBB45_20:
	movzwl	-5(%r14), %edx
	jmp	.LBB45_23
.LBB45_21:
	movl	-9(%r14), %edx
	jmp	.LBB45_23
.LBB45_22:
	movq	-17(%r14), %rdx
	jmp	.LBB45_23
.LBB45_16:
	xorl	%edx, %edx
.LBB45_23:
	movq	%r15, %rdi
	movq	%r14, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	leaq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ebx, %edx
	movl	$1, %ecx
	callq	ziplistPush
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_24:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$1060, %edx             # imm = 0x424
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end45:
	.size	zzlInsert, .Lfunc_end45-zzlInsert
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI45_0:
	.quad	.LBB45_8
	.quad	.LBB45_9
	.quad	.LBB45_10
	.quad	.LBB45_11
	.quad	.LBB45_12
.LJTI45_1:
	.quad	.LBB45_18
	.quad	.LBB45_19
	.quad	.LBB45_20
	.quad	.LBB45_21
	.quad	.LBB45_22
                                        # -- End function
	.text
	.globl	zzlDeleteRangeByScore   # -- Begin function zzlDeleteRangeByScore
	.p2align	4, 0x90
	.type	zzlDeleteRangeByScore,@function
zzlDeleteRangeByScore:                  # @zzlDeleteRangeByScore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	testq	%rdx, %rdx
	je	.LBB46_2
# %bb.1:
	movq	$0, (%r14)
.LBB46_2:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	zzlFirstInRange
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB46_9
# %bb.3:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB46_7
# %bb.4:
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB46_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	cmpl	$0, 20(%r15)
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB46_7
# %bb.6:                                #   in Loop: Header=BB46_5 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	ziplistDelete
	movq	%rax, %r13
	addq	$1, %rbx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	ziplistNext
	testq	%rax, %rax
	jne	.LBB46_5
.LBB46_7:
	testq	%r14, %r14
	je	.LBB46_9
# %bb.8:
	movq	%rbx, (%r14)
.LBB46_9:
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end46:
	.size	zzlDeleteRangeByScore, .Lfunc_end46-zzlDeleteRangeByScore
                                        # -- End function
	.globl	zzlDeleteRangeByLex     # -- Begin function zzlDeleteRangeByLex
	.p2align	4, 0x90
	.type	zzlDeleteRangeByLex,@function
zzlDeleteRangeByLex:                    # @zzlDeleteRangeByLex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	testq	%rdx, %rdx
	je	.LBB47_2
# %bb.1:
	movq	$0, (%r14)
.LBB47_2:
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	zzlFirstInLexRange
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB47_18
# %bb.3:
	movq	%rax, %rbx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB47_4
# %bb.5:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB47_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %r12d
	movq	8(%rax), %rsi
	movl	$0, %eax
	cmpq	%rbx, %rsi
	je	.LBB47_12
# %bb.7:                                #   in Loop: Header=BB47_6 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	je	.LBB47_12
# %bb.8:                                #   in Loop: Header=BB47_6 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB47_12
# %bb.9:                                #   in Loop: Header=BB47_6 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB47_12
# %bb.10:                               #   in Loop: Header=BB47_6 Depth=1
	cmpq	%rbx, %rdx
	je	.LBB47_12
# %bb.11:                               #   in Loop: Header=BB47_6 Depth=1
	movq	%rbx, %rdi
	callq	sdscmp
	.p2align	4, 0x90
.LBB47_12:                              #   in Loop: Header=BB47_6 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%r12d, %r12d
	cmovnel	%ecx, %r14d
	movq	%rbx, %rdi
	callq	sdsfree
	testl	%r14d, %r14d
	je	.LBB47_15
# %bb.13:                               #   in Loop: Header=BB47_6 Depth=1
	movq	%r13, %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	ziplistDelete
	movq	%rax, %r13
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	ziplistNext
	addq	$1, %r15
	testq	%rax, %rax
	je	.LBB47_15
# %bb.14:                               #   in Loop: Header=BB47_6 Depth=1
	movq	-48(%rbp), %rbx
	jmp	.LBB47_6
.LBB47_15:
	movq	-56(%rbp), %r14         # 8-byte Reload
	testq	%r14, %r14
	je	.LBB47_18
.LBB47_17:
	movq	%r15, (%r14)
.LBB47_18:
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB47_4:
	xorl	%r15d, %r15d
	testq	%r14, %r14
	jne	.LBB47_17
	jmp	.LBB47_18
.Lfunc_end47:
	.size	zzlDeleteRangeByLex, .Lfunc_end47-zzlDeleteRangeByLex
                                        # -- End function
	.globl	zzlDeleteRangeByRank    # -- Begin function zzlDeleteRangeByRank
	.p2align	4, 0x90
	.type	zzlDeleteRangeByRank,@function
zzlDeleteRangeByRank:                   # @zzlDeleteRangeByRank
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	subl	%esi, %edx
	addl	$1, %edx
	testq	%rcx, %rcx
	je	.LBB48_2
# %bb.1:
	movl	%edx, %eax
	movq	%rax, (%rcx)
.LBB48_2:
	addl	%esi, %esi
	addl	$-2, %esi
	addl	%edx, %edx
	jmp	ziplistDeleteRange      # TAILCALL
.Lfunc_end48:
	.size	zzlDeleteRangeByRank, .Lfunc_end48-zzlDeleteRangeByRank
                                        # -- End function
	.globl	zsetLength              # -- Begin function zsetLength
	.p2align	4, 0x90
	.type	zsetLength,@function
zsetLength:                             # @zsetLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB49_4
# %bb.1:
	cmpb	$5, %al
	jne	.LBB49_3
# %bb.2:
	movq	8(%rdi), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	popq	%rbp
	retq
.LBB49_4:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	popq	%rbp
	retq
.LBB49_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end49:
	.size	zsetLength, .Lfunc_end49-zsetLength
                                        # -- End function
	.globl	zsetConvert             # -- Begin function zsetConvert
	.p2align	4, 0x90
	.type	zsetConvert,@function
zsetConvert:                            # @zsetConvert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movl	(%rdi), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	%esi, %ecx
	je	.LBB50_38
# %bb.1:
	movl	%esi, %ebx
	movq	%rdi, %r13
	andb	$15, %al
	cmpb	$7, %al
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB50_22
# %bb.2:
	cmpb	$5, %al
	jne	.LBB50_36
# %bb.3:
	cmpl	$7, %ebx
	jne	.LBB50_4
# %bb.6:
	movq	8(%r13), %r15
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r14
	xorl	%ebx, %ebx
	movl	$zsetDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, (%r14)
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r12
	movl	$1, 24(%rax)
	movq	$0, 16(%rax)
	movl	$1048, %edi             # imm = 0x418
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, (%r12)
	.p2align	4, 0x90
.LBB50_7:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 24(%rax,%rbx)
	movups	%xmm0, 40(%rax,%rbx)
	addq	$32, %rbx
	cmpq	$1024, %rbx             # imm = 0x400
	jne	.LBB50_7
# %bb.8:
	movq	$0, 16(%rax)
	movq	$0, 8(%r12)
	movq	%r12, 8(%r14)
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -224(%rbp)
	testq	%rax, %rax
	je	.LBB50_9
# %bb.11:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB50_16
# %bb.12:
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	leaq	-80(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%rbx, %rdi
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB50_21
# %bb.13:
	leaq	-88(%rbp), %r13
	.p2align	4, 0x90
.LBB50_14:                              # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB50_15
# %bb.17:                               #   in Loop: Header=BB50_14 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB50_18
	.p2align	4, 0x90
.LBB50_15:                              #   in Loop: Header=BB50_14 Depth=1
	movq	-72(%rbp), %rdi
	callq	sdsfromlonglong
.LBB50_18:                              #   in Loop: Header=BB50_14 Depth=1
	movq	%rax, %r12
	movq	8(%r14), %rdi
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	zslInsert
	movq	(%r14), %rdi
	leaq	8(%rax), %rdx
	movq	%r12, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB50_39
# %bb.19:                               #   in Loop: Header=BB50_14 Depth=1
	movq	%r15, %rdi
	leaq	-224(%rbp), %rsi
	movq	%r13, %rdx
	callq	zzlNext
	movq	-224(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB50_37
# %bb.20:                               #   in Loop: Header=BB50_14 Depth=1
	movq	-88(%rbp), %rdi
	callq	zzlGetScore
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	jne	.LBB50_14
.LBB50_21:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$1196, %r8d             # imm = 0x4AC
.LBB50_10:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB50_22:
	callq	ziplistNew
	cmpl	$5, %ebx
	jne	.LBB50_23
# %bb.24:
	movq	%rax, %r12
	movq	8(%r13), %rbx
	movq	(%rbx), %rdi
	callq	dictRelease
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	movq	24(%rdi), %r13
	callq	zfree
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	8(%rbx), %rdi
	callq	zfree
	testq	%r13, %r13
	je	.LBB50_35
# %bb.25:
	leaq	-224(%rbp), %rbx
	jmp	.LBB50_26
.LBB50_33:                              #   in Loop: Header=BB50_26 Depth=1
	movq	-17(%r15), %rdx
	.p2align	4, 0x90
.LBB50_34:                              #   in Loop: Header=BB50_26 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, %r12
	movq	(%r13), %rdi
	movq	%rbx, %r14
	movq	24(%r13), %rbx
	callq	sdsfree
	movq	%r13, %rdi
	callq	zfree
	movq	%rbx, %r13
	testq	%rbx, %rbx
	movq	%r14, %rbx
	je	.LBB50_35
.LBB50_26:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r15
	movsd	8(%r13), %xmm0          # xmm0 = mem[0],zero
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	d2string
	movl	%eax, %r14d
	movzbl	-1(%r15), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB50_27
# %bb.28:                               #   in Loop: Header=BB50_26 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI50_0(,%rax,8)
.LBB50_29:                              #   in Loop: Header=BB50_26 Depth=1
	shrq	$3, %rdx
	jmp	.LBB50_34
.LBB50_31:                              #   in Loop: Header=BB50_26 Depth=1
	movzwl	-5(%r15), %edx
	jmp	.LBB50_34
.LBB50_32:                              #   in Loop: Header=BB50_26 Depth=1
	movl	-9(%r15), %edx
	jmp	.LBB50_34
.LBB50_30:                              #   in Loop: Header=BB50_26 Depth=1
	movzbl	-3(%r15), %edx
	jmp	.LBB50_34
.LBB50_27:                              #   in Loop: Header=BB50_26 Depth=1
	xorl	%edx, %edx
	jmp	.LBB50_34
.LBB50_35:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r12, 8(%rcx)
	movl	$-241, %eax
	andl	(%rcx), %eax
	orl	$80, %eax
	movl	%eax, (%rcx)
	jmp	.LBB50_38
.LBB50_37:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rdi
	callq	zfree
	movq	%r14, 8(%rbx)
	movl	$-241, %eax
	andl	(%rbx), %eax
	orl	$112, %eax
	movl	%eax, (%rbx)
.LBB50_38:
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_39:
	movl	$.L.str.16, %edi
	movl	$.L.str.1, %esi
	movl	$1203, %edx             # imm = 0x4B3
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB50_36:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1235, %esi             # imm = 0x4D3
	jmp	.LBB50_5
.LBB50_4:
	movl	$.L.str.1, %edi
	movl	$.L.str.14, %edx
	movl	$1183, %esi             # imm = 0x49F
	jmp	.LBB50_5
.LBB50_9:
	movl	$.L.str.15, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r13, %rsi
	movl	$1190, %r8d             # imm = 0x4A6
	jmp	.LBB50_10
.LBB50_16:
	movl	$.L.str.4, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$1192, %r8d             # imm = 0x4A8
	jmp	.LBB50_10
.LBB50_23:
	movl	$.L.str.1, %edi
	movl	$.L.str.14, %edx
	movl	$1214, %esi             # imm = 0x4BE
.LBB50_5:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end50:
	.size	zsetConvert, .Lfunc_end50-zsetConvert
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI50_0:
	.quad	.LBB50_29
	.quad	.LBB50_30
	.quad	.LBB50_31
	.quad	.LBB50_32
	.quad	.LBB50_33
                                        # -- End function
	.text
	.globl	zsetConvertToZiplistIfNeeded # -- Begin function zsetConvertToZiplistIfNeeded
	.p2align	4, 0x90
	.type	zsetConvertToZiplistIfNeeded,@function
zsetConvertToZiplistIfNeeded:           # @zsetConvertToZiplistIfNeeded
# %bb.0:
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$80, %eax
	je	.LBB51_3
# %bb.1:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	cmpq	server+2824(%rip), %rax
	ja	.LBB51_3
# %bb.2:
	cmpq	%rsi, server+2832(%rip)
	jb	.LBB51_3
# %bb.4:
	movl	$5, %esi
	jmp	zsetConvert             # TAILCALL
.LBB51_3:
	retq
.Lfunc_end51:
	.size	zsetConvertToZiplistIfNeeded, .Lfunc_end51-zsetConvertToZiplistIfNeeded
                                        # -- End function
	.globl	zsetScore               # -- Begin function zsetScore
	.p2align	4, 0x90
	.type	zsetScore,@function
zsetScore:                              # @zsetScore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$-1, %ebx
	testq	%rdi, %rdi
	je	.LBB52_8
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB52_8
# %bb.2:
	movq	%rdx, %r14
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB52_5
# %bb.3:
	cmpb	$5, %al
	jne	.LBB52_9
# %bb.4:
	movq	8(%rdi), %rdi
	movq	%r14, %rdx
	callq	zzlFind
	testq	%rax, %rax
	jne	.LBB52_7
	jmp	.LBB52_8
.LBB52_5:
	movq	8(%rdi), %rax
	movq	(%rax), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB52_8
# %bb.6:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, (%r14)
.LBB52_7:
	xorl	%ebx, %ebx
.LBB52_8:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB52_9:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1266, %esi             # imm = 0x4F2
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end52:
	.size	zsetScore, .Lfunc_end52-zsetScore
                                        # -- End function
	.globl	zsetAdd                 # -- Begin function zsetAdd
	.p2align	4, 0x90
	.type	zsetAdd,@function
zsetAdd:                                # @zsetAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	(%rdx), %r15d
	movl	$0, (%rdx)
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB53_9
# %bb.1:
	movb	(%r13), %al
	shrb	$4, %al
	cmpb	$7, %al
	movq	%r14, -56(%rbp)         # 8-byte Spill
	je	.LBB53_10
# %bb.2:
	cmpb	$5, %al
	jne	.LBB53_47
# %bb.3:
	movq	8(%r13), %rdi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rsi
	callq	zzlFind
	testq	%rax, %rax
	je	.LBB53_16
# %bb.4:
	testb	$2, %r15b
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB53_22
# %bb.5:
	movq	%rax, %r14
	testb	$1, %r15b
	je	.LBB53_29
# %bb.6:
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB53_27
# %bb.7:
	testq	%rbx, %rbx
	je	.LBB53_28
# %bb.8:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rbx)
	jmp	.LBB53_29
.LBB53_9:
	movl	$16, (%r12)
	xorl	%ebx, %ebx
	jmp	.LBB53_46
.LBB53_10:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	8(%r13), %r14
	movq	(%r14), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB53_21
# %bb.11:
	testb	$2, %r15b
	jne	.LBB53_22
# %bb.12:
	movq	%rax, %r13
	movq	8(%rax), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movsd	%xmm2, -64(%rbp)
	testb	$1, %r15b
	je	.LBB53_26
# %bb.13:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB53_27
# %bb.14:
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB53_31
# %bb.15:
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, (%rax)
	jmp	.LBB53_32
.LBB53_16:
	testb	$4, %r15b
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB53_22
# %bb.17:
	movq	8(%r13), %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	zzlInsert
	movq	%rax, 8(%r13)
	movq	%rax, %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	cmpq	%rax, server+2824(%rip)
	jb	.LBB53_41
# %bb.18:
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB53_42
# %bb.19:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI53_0(,%rcx,8)
.LBB53_20:
	shrq	$3, %rax
	jmp	.LBB53_40
.LBB53_21:
	testb	$4, %r15b
	je	.LBB53_23
.LBB53_22:
	orb	$8, (%r12)
.LBB53_45:
	movl	$1, %ebx
	jmp	.LBB53_46
.LBB53_23:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdsdup
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	zslInsert
	movq	(%r14), %rdi
	leaq	8(%rax), %rdx
	movq	%rbx, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB53_48
# %bb.24:
	orb	$32, (%r12)
	movl	$1, %ebx
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB53_46
# %bb.25:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	jmp	.LBB53_46
.LBB53_26:
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB53_33
.LBB53_27:
	orb	$16, (%r12)
	xorl	%ebx, %ebx
	jmp	.LBB53_46
.LBB53_28:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB53_29:
	movl	$1, %ebx
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB53_30
	jnp	.LBB53_46
.LBB53_30:
	movq	8(%r13), %rdi
	movq	%r14, -88(%rbp)
	leaq	-88(%rbp), %r14
	movq	%r14, %rsi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	ziplistDelete
	movq	%rax, 8(%r13)
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	zzlInsert
	jmp	.LBB53_35
.LBB53_31:
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB53_32:
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB53_33:
	movl	$1, %ebx
	ucomisd	%xmm2, %xmm1
	jne	.LBB53_34
	jnp	.LBB53_46
.LBB53_34:
	movq	8(%r14), %rdi
	movapd	%xmm2, %xmm0
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	zslUpdateScore
	addq	$8, %rax
.LBB53_35:
	movq	%rax, 8(%r13)
	orb	$64, (%r12)
.LBB53_46:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB53_36:
	movq	-17(%r14), %rax
	jmp	.LBB53_40
.LBB53_37:
	movzwl	-5(%r14), %eax
	jmp	.LBB53_40
.LBB53_38:
	movl	-9(%r14), %eax
	jmp	.LBB53_40
.LBB53_39:
	movzbl	-3(%r14), %eax
.LBB53_40:
	cmpq	server+2832(%rip), %rax
	jbe	.LBB53_42
.LBB53_41:
	movq	%r13, %rdi
	movl	$7, %esi
	callq	zsetConvert
.LBB53_42:
	testq	%rbx, %rbx
	je	.LBB53_44
# %bb.43:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rbx)
.LBB53_44:
	orb	$32, (%r12)
	jmp	.LBB53_45
.LBB53_47:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1416, %esi             # imm = 0x588
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB53_48:
	movl	$.L.str.17, %edi
	movl	$.L.str.1, %esi
	movl	$1407, %edx             # imm = 0x57F
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end53:
	.size	zsetAdd, .Lfunc_end53-zsetAdd
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI53_0:
	.quad	.LBB53_20
	.quad	.LBB53_39
	.quad	.LBB53_37
	.quad	.LBB53_38
	.quad	.LBB53_36
                                        # -- End function
	.text
	.globl	zsetDel                 # -- Begin function zsetDel
	.p2align	4, 0x90
	.type	zsetDel,@function
zsetDel:                                # @zsetDel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB54_4
# %bb.1:
	cmpb	$5, %al
	jne	.LBB54_11
# %bb.2:
	movq	8(%rbx), %rdi
	xorl	%r15d, %r15d
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	zzlFind
	testq	%rax, %rax
	je	.LBB54_9
# %bb.3:
	movq	8(%rbx), %rdi
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	ziplistDelete
	movq	%rax, 8(%rbx)
	movl	$1, %r15d
	jmp	.LBB54_9
.LBB54_4:
	movq	8(%rbx), %rbx
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	dictUnlink
	testq	%rax, %rax
	je	.LBB54_5
# %bb.6:
	movq	8(%rax), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	callq	dictFreeUnlinkedEntry
	movq	8(%rbx), %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	zslDelete
	testl	%eax, %eax
	je	.LBB54_10
# %bb.7:
	movq	(%rbx), %rdi
	callq	htNeedsResize
	movl	$1, %r15d
	testl	%eax, %eax
	je	.LBB54_9
# %bb.8:
	movq	(%rbx), %rdi
	callq	dictResize
	jmp	.LBB54_9
.LBB54_5:
	xorl	%r15d, %r15d
.LBB54_9:
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1456, %esi             # imm = 0x5B0
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB54_10:
	movl	$.L.str.18, %edi
	movl	$.L.str.1, %esi
	movl	$1450, %edx             # imm = 0x5AA
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end54:
	.size	zsetDel, .Lfunc_end54-zsetDel
                                        # -- End function
	.globl	zsetRank                # -- Begin function zsetRank
	.p2align	4, 0x90
	.type	zsetRank,@function
zsetRank:                               # @zsetRank
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%edx, %r15d
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$7, %cl
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB55_3
# %bb.1:
	cmpb	$5, %cl
	jne	.LBB55_45
# %bb.2:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %r12d
	shrl	%r12d
	movl	(%rbx), %eax
	shrl	$4, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB55_4
.LBB55_3:
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rcx
	movq	16(%rcx), %r12
.LBB55_4:
	andb	$15, %al
	cmpb	$7, %al
	je	.LBB55_20
# %bb.5:
	cmpb	$5, %al
	jne	.LBB55_46
# %bb.6:
	movq	8(%rbx), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	je	.LBB55_48
# %bb.7:
	movq	%rax, %r14
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	%r15d, %r12d
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB55_49
# %bb.8:
	xorl	%r13d, %r13d
	leaq	-104(%rbp), %r15
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB55_9:                               # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB55_16
# %bb.10:                               #   in Loop: Header=BB55_9 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI55_0(,%rax,8)
.LBB55_11:                              #   in Loop: Header=BB55_9 Depth=1
	shrq	$3, %rdx
	jmp	.LBB55_17
.LBB55_12:                              #   in Loop: Header=BB55_9 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB55_17
.LBB55_13:                              #   in Loop: Header=BB55_9 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB55_17
.LBB55_14:                              #   in Loop: Header=BB55_9 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB55_17
.LBB55_15:                              #   in Loop: Header=BB55_9 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB55_17
.LBB55_16:                              #   in Loop: Header=BB55_9 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB55_17:                              #   in Loop: Header=BB55_9 Depth=1
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	ziplistCompare
	testl	%eax, %eax
	jne	.LBB55_38
# %bb.18:                               #   in Loop: Header=BB55_9 Depth=1
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rsi
	movq	%r15, %rdx
	callq	zzlNext
	movq	-80(%rbp), %r14
	addq	$1, %r13
	testq	%r14, %r14
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB55_9
	jmp	.LBB55_19
.LBB55_20:
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rbx
	callq	dictFind
	testq	%rax, %rax
	je	.LBB55_19
# %bb.21:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	%r15d, -68(%rbp)        # 4-byte Spill
	movslq	24(%rbx), %rcx
	testq	%rcx, %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jle	.LBB55_43
# %bb.22:
	movq	8(%rax), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	(%rbx), %rbx
	xorl	%r13d, %r13d
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	jmp	.LBB55_24
	.p2align	4, 0x90
.LBB55_23:                              #   in Loop: Header=BB55_24 Depth=1
	cmpq	$1, -96(%rbp)           # 8-byte Folded Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jle	.LBB55_43
.LBB55_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_27 Depth 2
	leaq	-1(%rcx), %r15
	movq	%r15, -88(%rbp)         # 8-byte Spill
	shlq	$4, %r15
	movq	24(%rbx,%r15), %rax
	testq	%rax, %rax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	je	.LBB55_33
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB55_24 Depth=1
	leaq	(%rbx,%r15), %r14
	addq	$24, %r14
	movq	%rbx, %r12
	jmp	.LBB55_27
	.p2align	4, 0x90
.LBB55_26:                              #   in Loop: Header=BB55_27 Depth=2
	addq	32(%r12,%r15), %r13
	movq	%rax, %rbx
	leaq	(%rax,%r15), %r14
	addq	$24, %r14
	movq	24(%rax,%r15), %rax
	movq	%rbx, %r12
	testq	%rax, %rax
	je	.LBB55_33
.LBB55_27:                              #   Parent Loop BB55_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB55_26
# %bb.28:                               #   in Loop: Header=BB55_27 Depth=2
	ucomisd	%xmm1, %xmm0
	jne	.LBB55_31
	jp	.LBB55_31
# %bb.29:                               #   in Loop: Header=BB55_27 Depth=2
	movq	(%rax), %rdi
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB55_32
# %bb.30:                               #   in Loop: Header=BB55_27 Depth=2
	movq	(%r14), %rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB55_26
.LBB55_31:                              #   in Loop: Header=BB55_24 Depth=1
	movq	%r12, %rbx
	jmp	.LBB55_33
.LBB55_32:                              #   in Loop: Header=BB55_24 Depth=1
	movq	%r12, %rbx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB55_33:                              #   in Loop: Header=BB55_24 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB55_23
# %bb.34:                               #   in Loop: Header=BB55_24 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB55_23
# %bb.35:
	testq	%r13, %r13
	je	.LBB55_43
# %bb.36:
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB55_41
# %bb.37:
	movq	-56(%rbp), %rax         # 8-byte Reload
	subq	%r13, %rax
	movq	%rax, %r13
	jmp	.LBB55_42
.LBB55_19:
	movq	$-1, %r13
	jmp	.LBB55_42
.LBB55_38:
	testl	%r12d, %r12d
	je	.LBB55_42
# %bb.39:
	notq	%r13
	addq	-56(%rbp), %r13         # 8-byte Folded Reload
	jmp	.LBB55_42
.LBB55_41:
	addq	$-1, %r13
.LBB55_42:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_43:
	movl	$.L.str.19, %edi
	movl	$.L.str.1, %esi
	movl	$1514, %edx             # imm = 0x5EA
.LBB55_44:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB55_45:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	jmp	.LBB55_47
.LBB55_46:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1523, %esi             # imm = 0x5F3
.LBB55_47:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB55_48:
	movl	$.L.str.15, %edi
	movl	$.L.str.1, %esi
	movl	$1483, %edx             # imm = 0x5CB
	jmp	.LBB55_44
.LBB55_49:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$1485, %edx             # imm = 0x5CD
	jmp	.LBB55_44
.Lfunc_end55:
	.size	zsetRank, .Lfunc_end55-zsetRank
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI55_0:
	.quad	.LBB55_11
	.quad	.LBB55_15
	.quad	.LBB55_13
	.quad	.LBB55_14
	.quad	.LBB55_12
                                        # -- End function
	.text
	.globl	zaddGenericCommand      # -- Begin function zaddGenericCommand
	.p2align	4, 0x90
	.type	zaddGenericCommand,@function
zaddGenericCommand:                     # @zaddGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%esi, %r14d
	movq	72(%rdi), %r12
	movq	8(%r12), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	64(%rdi), %r15d
	movl	$2, %r13d
	cmpl	$3, %r15d
	jl	.LBB56_11
# %bb.1:                                # %.preheader3
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$2, %r13d
	jmp	.LBB56_2
	.p2align	4, 0x90
.LBB56_3:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$2, %ecx
.LBB56_9:                               #   in Loop: Header=BB56_2 Depth=1
	orl	%ecx, %r14d
	addq	$1, %r13
	cmpl	%r13d, %r15d
	jle	.LBB56_10
.LBB56_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12,%r13,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB56_3
# %bb.4:                                #   in Loop: Header=BB56_2 Depth=1
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB56_5
# %bb.6:                                #   in Loop: Header=BB56_2 Depth=1
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB56_7
# %bb.8:                                #   in Loop: Header=BB56_2 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB56_9
	jmp	.LBB56_10
	.p2align	4, 0x90
.LBB56_5:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$4, %ecx
	jmp	.LBB56_9
.LBB56_7:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$65536, %ecx            # imm = 0x10000
	jmp	.LBB56_9
.LBB56_10:                              # %.loopexit4
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB56_11:
	subl	%r13d, %r15d
	je	.LBB56_57
# %bb.12:
	movl	%r15d, %eax
	andl	$1, %eax
	jne	.LBB56_57
# %bb.13:
	movl	%r14d, %eax
	andl	$6, %eax
	cmpl	$6, %eax
	jne	.LBB56_16
# %bb.14:
	movl	$.L.str.25, %esi
	jmp	.LBB56_15
.LBB56_57:
	movq	shared+128(%rip), %rsi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB56_16:
	testb	$1, %r14b
	je	.LBB56_19
# %bb.17:
	cmpl	$4, %r15d
	jl	.LBB56_19
# %bb.18:
	movl	$.L.str.26, %esi
.LBB56_15:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyError           # TAILCALL
.LBB56_19:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	cltq
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	(,%rax,8), %rdi
	callq	zmalloc
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%r15d, -52(%rbp)        # 4-byte Spill
	cmpl	$2, %r15d
	jl	.LBB56_24
# %bb.20:                               # %.preheader
	movl	%r13d, %ebx
	movq	-64(%rbp), %r12         # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB56_22:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	getDoubleFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB56_23
# %bb.21:                               #   in Loop: Header=BB56_22 Depth=1
	addq	$1, %r15
	addq	$8, %r12
	addq	$2, %rbx
	cmpq	-80(%rbp), %r15         # 8-byte Folded Reload
	jl	.LBB56_22
.LBB56_24:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB56_25
# %bb.41:
	movq	%rax, %rdi
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$3, %eax
	je	.LBB56_39
# %bb.42:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB56_54
.LBB56_25:
	testb	$4, %r14b
	jne	.LBB56_26
# %bb.27:
	cmpq	$0, server+2824(%rip)
	je	.LBB56_36
# %bb.28:
	movq	72(%rbx), %rax
	movl	%r13d, %ecx
	movq	8(%rax,%rcx,8), %rax
	movq	8(%rax), %rdx
	movzbl	-1(%rdx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB56_37
# %bb.29:
	movq	server+2832(%rip), %rcx
	movl	%eax, %esi
	andl	$7, %esi
	jmpq	*.LJTI56_0(,%rsi,8)
.LBB56_30:
	shrq	$3, %rax
	jmp	.LBB56_35
.LBB56_23:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB56_54
.LBB56_26:
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.LBB56_49
.LBB56_31:
	movzbl	-3(%rdx), %eax
	jmp	.LBB56_35
.LBB56_32:
	movzwl	-5(%rdx), %eax
	jmp	.LBB56_35
.LBB56_33:
	movl	-9(%rdx), %eax
	jmp	.LBB56_35
.LBB56_34:
	movq	-17(%rdx), %rax
.LBB56_35:
	cmpq	%rax, %rcx
	jae	.LBB56_37
.LBB56_36:
	callq	createZsetObject
	jmp	.LBB56_38
.LBB56_37:
	callq	createZsetZiplistObject
.LBB56_38:
	movq	16(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rbx
	movq	%rax, %rdx
	callq	dbAdd
	movq	%rbx, %rdi
.LBB56_39:
	cmpl	$2, -52(%rbp)           # 4-byte Folded Reload
	jl	.LBB56_40
# %bb.43:
	addl	$1, %r13d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB56_44:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movsd	(%rax,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	movl	%r14d, -56(%rbp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	movl	%r13d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	zsetAdd
	testl	%eax, %eax
	je	.LBB56_45
# %bb.46:                               #   in Loop: Header=BB56_44 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$1, %ecx
	addl	%ecx, %r15d
	movl	%eax, %ecx
	shrl	$6, %ecx
	andl	$1, %ecx
	addl	%ecx, %r12d
	andl	$8, %eax
	cmpl	$1, %eax
	movl	-52(%rbp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	addq	$1, %rbx
	addl	$2, %r13d
	cmpq	-80(%rbp), %rbx         # 8-byte Folded Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	jl	.LBB56_44
# %bb.47:
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%r15, %rbx
	jmp	.LBB56_48
.LBB56_40:
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
.LBB56_48:
	leal	(%r12,%rbx), %eax
	addq	%rax, server+2080(%rip)
.LBB56_49:
	testb	$1, %r14b
	je	.LBB56_53
# %bb.50:
	testl	%ecx, %ecx
	je	.LBB56_52
# %bb.51:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyDouble
	jmp	.LBB56_54
.LBB56_53:
	movl	%r14d, %eax
	shll	$15, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	addl	%ebx, %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyLongLong
	jmp	.LBB56_54
.LBB56_45:
	movl	$.L.str.20, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movq	%r15, %rbx
	jmp	.LBB56_54
.LBB56_52:
	movq	shared+80(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
.LBB56_54:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	orl	%r12d, %ebx
	je	.LBB56_56
# %bb.55:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	callq	signalModifiedKey
	movl	$.L.str.27, %eax
	movl	$.L.str.28, %esi
	testb	$1, %r14b
	cmovneq	%rax, %rsi
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$128, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
.LBB56_56:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	zaddGenericCommand, .Lfunc_end56-zaddGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI56_0:
	.quad	.LBB56_30
	.quad	.LBB56_31
	.quad	.LBB56_32
	.quad	.LBB56_33
	.quad	.LBB56_34
                                        # -- End function
	.text
	.globl	zaddCommand             # -- Begin function zaddCommand
	.p2align	4, 0x90
	.type	zaddCommand,@function
zaddCommand:                            # @zaddCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	zaddGenericCommand      # TAILCALL
.Lfunc_end57:
	.size	zaddCommand, .Lfunc_end57-zaddCommand
                                        # -- End function
	.globl	zincrbyCommand          # -- Begin function zincrbyCommand
	.p2align	4, 0x90
	.type	zincrbyCommand,@function
zincrbyCommand:                         # @zincrbyCommand
# %bb.0:
	movl	$1, %esi
	jmp	zaddGenericCommand      # TAILCALL
.Lfunc_end58:
	.size	zincrbyCommand, .Lfunc_end58-zincrbyCommand
                                        # -- End function
	.globl	zremCommand             # -- Begin function zremCommand
	.p2align	4, 0x90
	.type	zremCommand,@function
zremCommand:                            # @zremCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %r14
	movq	shared+32(%rip), %rdx
	movq	%r14, %rsi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB59_19
# %bb.1:
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB59_2
.LBB59_19:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_2:
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r12)
	jl	.LBB59_18
# %bb.3:
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB59_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r13, %rdi
	callq	zsetDel
	cmpl	$1, %eax
	sbbl	$-1, %r15d
	movzbl	(%r13), %eax
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB59_10
# %bb.5:                                #   in Loop: Header=BB59_4 Depth=1
	cmpb	$5, %al
	jne	.LBB59_9
# %bb.6:                                #   in Loop: Header=BB59_4 Depth=1
	movq	8(%r13), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	testq	%rax, %rax
	jne	.LBB59_7
	jmp	.LBB59_12
	.p2align	4, 0x90
.LBB59_10:                              #   in Loop: Header=BB59_4 Depth=1
	movq	8(%r13), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB59_12
.LBB59_7:                               #   in Loop: Header=BB59_4 Depth=1
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB59_4
# %bb.8:
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	jne	.LBB59_15
.LBB59_14:
	xorl	%r15d, %r15d
	jmp	.LBB59_18
.LBB59_12:
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	dbDelete
	movl	$1, %ebx
	testl	%r15d, %r15d
	je	.LBB59_14
.LBB59_15:
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.29, %esi
	movl	$128, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	testl	%ebx, %ebx
	je	.LBB59_17
# %bb.16:
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
.LBB59_17:
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	signalModifiedKey
	movl	%r15d, %r15d
	addq	%r15, server+2080(%rip)
.LBB59_18:
	movq	%r12, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB59_9:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end59:
	.size	zremCommand, .Lfunc_end59-zremCommand
                                        # -- End function
	.globl	zremrangeGenericCommand # -- Begin function zremrangeGenericCommand
	.p2align	4, 0x90
	.type	zremrangeGenericCommand,@function
zremrangeGenericCommand:                # @zremrangeGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %r15
	movq	$0, -40(%rbp)
	testl	%esi, %esi
	je	.LBB60_1
# %bb.9:
	cmpl	$2, %r14d
	je	.LBB60_14
# %bb.10:
	cmpl	$1, %r14d
	jne	.LBB60_3
# %bb.11:
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-104(%rbp), %rdx
	callq	zslParseRange
	testl	%eax, %eax
	je	.LBB60_3
# %bb.12:
	movl	$.L.str.31, %esi
	jmp	.LBB60_13
.LBB60_1:
	movq	16(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB60_63
# %bb.2:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB60_63
	jmp	.LBB60_3
.LBB60_14:
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-80(%rbp), %rdx
	callq	zslParseLexRange
	testl	%eax, %eax
	je	.LBB60_3
# %bb.15:
	movl	$.L.str.32, %esi
.LBB60_13:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB60_63
.LBB60_3:
	movq	shared+32(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB60_56
# %bb.4:
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB60_5
.LBB60_56:
	cmpl	$2, %r14d
	jne	.LBB60_63
.LBB60_57:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB60_60
# %bb.58:
	cmpq	%rax, %rdi
	je	.LBB60_60
# %bb.59:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB60_60:
	movq	-72(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB60_63
# %bb.61:
	cmpq	%rax, %rdi
	je	.LBB60_63
# %bb.62:
	callq	sdsfree
	jmp	.LBB60_63
.LBB60_5:
	testl	%r14d, %r14d
	je	.LBB60_6
.LBB60_30:
	movb	(%r12), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB60_42
# %bb.31:
	cmpb	$5, %al
	jne	.LBB60_64
# %bb.32:
	testl	%r14d, %r14d
	je	.LBB60_36
# %bb.33:
	cmpl	$1, %r14d
	je	.LBB60_37
# %bb.34:
	cmpl	$2, %r14d
	jne	.LBB60_35
# %bb.38:
	movq	8(%r12), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	zzlDeleteRangeByLex
	jmp	.LBB60_39
.LBB60_42:
	movq	8(%r12), %r12
	testl	%r14d, %r14d
	je	.LBB60_46
# %bb.43:
	cmpl	$1, %r14d
	je	.LBB60_47
# %bb.44:
	cmpl	$2, %r14d
	jne	.LBB60_49
# %bb.45:
	movq	(%r12), %rdx
	movq	8(%r12), %rdi
	leaq	-80(%rbp), %rsi
	callq	zslDeleteRangeByLex
	jmp	.LBB60_48
.LBB60_6:
	movb	(%r12), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB60_18
# %bb.7:
	cmpb	$5, %al
	jne	.LBB60_16
# %bb.8:
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	jmp	.LBB60_19
.LBB60_18:
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB60_19:
	movq	-56(%rbp), %rcx
	testq	%rcx, %rcx
	jns	.LBB60_21
# %bb.20:
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
.LBB60_21:
	movq	-48(%rbp), %rdx
	testq	%rdx, %rdx
	js	.LBB60_22
# %bb.23:
	testq	%rcx, %rcx
	js	.LBB60_24
.LBB60_25:
	cmpq	%rax, %rcx
	jl	.LBB60_26
	jmp	.LBB60_27
.LBB60_22:
	addq	%rax, %rdx
	movq	%rdx, -48(%rbp)
	testq	%rcx, %rcx
	jns	.LBB60_25
.LBB60_24:
	movq	$0, -56(%rbp)
	xorl	%ecx, %ecx
	cmpq	%rax, %rcx
	jge	.LBB60_27
.LBB60_26:
	cmpq	%rdx, %rcx
	jg	.LBB60_27
# %bb.28:
	cmpq	%rax, %rdx
	jl	.LBB60_30
# %bb.29:
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB60_30
.LBB60_27:
	movq	shared+32(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB60_63
.LBB60_37:
	movq	8(%r12), %rdi
	leaq	-104(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	zzlDeleteRangeByScore
	jmp	.LBB60_39
.LBB60_36:
	movq	8(%r12), %rdi
	movl	-56(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	%esi, %ecx
	notl	%ecx
	leal	(%rax,%rcx), %edx
	addl	$2, %edx
                                        # kill: def $eax killed $eax killed $rax def $rax
	addl	%ecx, %eax
	movq	%rdx, -40(%rbp)
	addl	%esi, %esi
	leal	(%rax,%rax), %edx
	addl	$4, %edx
	callq	ziplistDeleteRange
.LBB60_39:
	movq	%rax, %rdi
	movq	%rax, 8(%r12)
	jmp	.LBB60_40
.LBB60_35:
	movq	8(%r12), %rdi
.LBB60_40:
	callq	ziplistLen
	xorl	%r12d, %r12d
	cmpl	$1, %eax
	ja	.LBB60_52
.LBB60_41:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	movl	$1, %r12d
.LBB60_52:
	cmpq	$0, -40(%rbp)
	je	.LBB60_55
# %bb.53:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movslq	%r14d, %rax
	movq	.LzremrangeGenericCommand.event(,%rax,8), %rsi
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$128, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	testl	%r12d, %r12d
	je	.LBB60_55
# %bb.54:
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
.LBB60_55:
	movq	-40(%rbp), %rsi
	addq	%rsi, server+2080(%rip)
	movq	%rbx, %rdi
	callq	addReplyLongLong
	cmpl	$2, %r14d
	je	.LBB60_57
.LBB60_63:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB60_47:
	movq	(%r12), %rdx
	movq	8(%r12), %rdi
	leaq	-104(%rbp), %rsi
	callq	zslDeleteRangeByScore
	jmp	.LBB60_48
.LBB60_46:
	movq	(%r12), %rcx
	movq	8(%r12), %rdi
	movl	-56(%rbp), %esi
	addl	$1, %esi
	movl	-48(%rbp), %edx
	addl	$1, %edx
	callq	zslDeleteRangeByRank
.LBB60_48:
	movq	%rax, -40(%rbp)
.LBB60_49:
	movq	(%r12), %rdi
	callq	htNeedsResize
	testl	%eax, %eax
	je	.LBB60_51
# %bb.50:
	movq	(%r12), %rdi
	callq	dictResize
.LBB60_51:
	movq	(%r12), %rax
	movq	40(%rax), %rcx
	xorl	%r12d, %r12d
	addq	72(%rax), %rcx
	je	.LBB60_41
	jmp	.LBB60_52
.LBB60_64:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1775, %esi             # imm = 0x6EF
	jmp	.LBB60_17
.LBB60_16:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
.LBB60_17:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end60:
	.size	zremrangeGenericCommand, .Lfunc_end60-zremrangeGenericCommand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function zslParseRange
	.type	zslParseRange,@function
zslParseRange:                          # @zslParseRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	$0, 16(%rdx)
	movl	$240, %eax
	andl	(%rdi), %eax
	movq	8(%rdi), %rdi
	cmpl	$16, %eax
	jne	.LBB61_2
# %bb.1:
	cvtsi2sd	%rdi, %xmm0
	movsd	%xmm0, (%rbx)
.LBB61_8:
	movl	$240, %eax
	andl	(%r14), %eax
	movq	8(%r14), %rdi
	cmpl	$16, %eax
	jne	.LBB61_10
# %bb.9:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rdi, %xmm0
	movsd	%xmm0, 8(%rbx)
.LBB61_16:
	xorl	%r15d, %r15d
	jmp	.LBB61_17
.LBB61_2:
	cmpb	$40, (%rdi)
	jne	.LBB61_6
# %bb.3:
	addq	$1, %rdi
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%rbx)
	movq	-32(%rbp), %rax
	movl	$-1, %r15d
	cmpb	$0, (%rax)
	jne	.LBB61_17
# %bb.4:
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB61_17
# %bb.5:
	movl	$1, 16(%rbx)
	jmp	.LBB61_8
.LBB61_10:
	cmpb	$40, (%rdi)
	jne	.LBB61_14
# %bb.11:
	addq	$1, %rdi
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, 8(%rbx)
	movq	-32(%rbp), %rax
	movl	$-1, %r15d
	cmpb	$0, (%rax)
	jne	.LBB61_17
# %bb.12:
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB61_17
# %bb.13:
	movl	$1, 20(%rbx)
	jmp	.LBB61_16
.LBB61_6:
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%rbx)
	movq	-32(%rbp), %rax
	movl	$-1, %r15d
	cmpb	$0, (%rax)
	jne	.LBB61_17
# %bb.7:
	callq	__fpclassifyd
	testl	%eax, %eax
	jne	.LBB61_8
	jmp	.LBB61_17
.LBB61_14:
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, 8(%rbx)
	movq	-32(%rbp), %rax
	movl	$-1, %r15d
	cmpb	$0, (%rax)
	je	.LBB61_15
.LBB61_17:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_15:
	callq	__fpclassifyd
	testl	%eax, %eax
	jne	.LBB61_16
	jmp	.LBB61_17
.Lfunc_end61:
	.size	zslParseRange, .Lfunc_end61-zslParseRange
                                        # -- End function
	.globl	zremrangebyrankCommand  # -- Begin function zremrangebyrankCommand
	.p2align	4, 0x90
	.type	zremrangebyrankCommand,@function
zremrangebyrankCommand:                 # @zremrangebyrankCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	zremrangeGenericCommand # TAILCALL
.Lfunc_end62:
	.size	zremrangebyrankCommand, .Lfunc_end62-zremrangebyrankCommand
                                        # -- End function
	.globl	zremrangebyscoreCommand # -- Begin function zremrangebyscoreCommand
	.p2align	4, 0x90
	.type	zremrangebyscoreCommand,@function
zremrangebyscoreCommand:                # @zremrangebyscoreCommand
# %bb.0:
	movl	$1, %esi
	jmp	zremrangeGenericCommand # TAILCALL
.Lfunc_end63:
	.size	zremrangebyscoreCommand, .Lfunc_end63-zremrangebyscoreCommand
                                        # -- End function
	.globl	zremrangebylexCommand   # -- Begin function zremrangebylexCommand
	.p2align	4, 0x90
	.type	zremrangebylexCommand,@function
zremrangebylexCommand:                  # @zremrangebylexCommand
# %bb.0:
	movl	$2, %esi
	jmp	zremrangeGenericCommand # TAILCALL
.Lfunc_end64:
	.size	zremrangebylexCommand, .Lfunc_end64-zremrangebylexCommand
                                        # -- End function
	.globl	zuiInitIterator         # -- Begin function zuiInitIterator
	.p2align	4, 0x90
	.type	zuiInitIterator,@function
zuiInitIterator:                        # @zuiInitIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB65_17
# %bb.1:
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	cmpl	$3, %ecx
	je	.LBB65_8
# %bb.2:
	cmpl	$2, %ecx
	jne	.LBB65_15
# %bb.3:
	movl	12(%rbx), %ecx
	cmpl	$2, %ecx
	je	.LBB65_16
# %bb.4:
	cmpl	$6, %ecx
	jne	.LBB65_6
# %bb.5:
	movq	8(%rax), %rax
	movq	%rax, 24(%rbx)
	movl	$0, 32(%rbx)
	jmp	.LBB65_17
.LBB65_8:
	movl	12(%rbx), %ecx
	cmpl	$7, %ecx
	je	.LBB65_13
# %bb.9:
	cmpl	$5, %ecx
	jne	.LBB65_14
# %bb.10:
	movq	8(%rax), %rdi
	movq	%rdi, 24(%rbx)
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.LBB65_17
# %bb.11:
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	jne	.LBB65_17
# %bb.12:
	movl	$.L.str.37, %edi
	movl	$.L.str.1, %esi
	movl	$1887, %edx             # imm = 0x75F
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB65_16:
	movq	8(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movq	8(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%rbx)
	movq	%rax, %rdi
	callq	dictNext
	movq	%rax, 40(%rbx)
	jmp	.LBB65_17
.LBB65_13:
	movq	8(%rax), %rax
	movq	%rax, 24(%rbx)
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, 32(%rbx)
.LBB65_17:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB65_15:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$1896, %esi             # imm = 0x768
	jmp	.LBB65_7
.LBB65_6:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1878, %esi             # imm = 0x756
	jmp	.LBB65_7
.LBB65_14:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1893, %esi             # imm = 0x765
.LBB65_7:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end65:
	.size	zuiInitIterator, .Lfunc_end65-zuiInitIterator
                                        # -- End function
	.globl	zuiClearIterator        # -- Begin function zuiClearIterator
	.p2align	4, 0x90
	.type	zuiClearIterator,@function
zuiClearIterator:                       # @zuiClearIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, (%rdi)
	je	.LBB66_10
# %bb.1:
	movl	8(%rdi), %eax
	cmpl	$3, %eax
	je	.LBB66_7
# %bb.2:
	cmpl	$2, %eax
	jne	.LBB66_9
# %bb.3:
	movl	12(%rdi), %eax
	cmpl	$6, %eax
	je	.LBB66_10
# %bb.4:
	cmpl	$2, %eax
	jne	.LBB66_5
# %bb.11:
	movq	32(%rdi), %rdi
	popq	%rbp
	jmp	dictReleaseIterator     # TAILCALL
.LBB66_7:
	movl	12(%rdi), %eax
	orl	$2, %eax
	cmpl	$7, %eax
	jne	.LBB66_8
.LBB66_10:
	popq	%rbp
	retq
.LBB66_9:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$1923, %esi             # imm = 0x783
	jmp	.LBB66_6
.LBB66_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1911, %esi             # imm = 0x777
	jmp	.LBB66_6
.LBB66_8:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1920, %esi             # imm = 0x780
.LBB66_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end66:
	.size	zuiClearIterator, .Lfunc_end66-zuiClearIterator
                                        # -- End function
	.globl	zuiLength               # -- Begin function zuiLength
	.p2align	4, 0x90
	.type	zuiLength,@function
zuiLength:                              # @zuiLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB67_1
# %bb.2:
	movl	8(%rdi), %ecx
	cmpl	$3, %ecx
	je	.LBB67_9
# %bb.3:
	cmpl	$2, %ecx
	jne	.LBB67_14
# %bb.4:
	movl	12(%rdi), %ecx
	cmpl	$2, %ecx
	je	.LBB67_15
# %bb.5:
	cmpl	$6, %ecx
	jne	.LBB67_7
# %bb.6:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
	popq	%rbp
	retq
.LBB67_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB67_9:
	movl	12(%rdi), %ecx
	cmpl	$7, %ecx
	je	.LBB67_12
# %bb.10:
	cmpl	$5, %ecx
	jne	.LBB67_13
# %bb.11:
	movq	8(%rax), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	popq	%rbp
	retq
.LBB67_15:
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	popq	%rbp
	retq
.LBB67_12:
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	popq	%rbp
	retq
.LBB67_14:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$1950, %esi             # imm = 0x79E
	jmp	.LBB67_8
.LBB67_7:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1938, %esi             # imm = 0x792
	jmp	.LBB67_8
.LBB67_13:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1947, %esi             # imm = 0x79B
.LBB67_8:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end67:
	.size	zuiLength, .Lfunc_end67-zuiLength
                                        # -- End function
	.globl	zuiNext                 # -- Begin function zuiNext
	.p2align	4, 0x90
	.type	zuiNext,@function
zuiNext:                                # @zuiNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	cmpq	$0, (%rdi)
	je	.LBB68_23
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	$1, (%rsi)
	je	.LBB68_3
# %bb.2:
	movq	40(%r14), %rdi
	callq	sdsfree
.LBB68_3:
	movl	$80, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	8(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB68_13
# %bb.4:
	cmpl	$2, %eax
	jne	.LBB68_22
# %bb.5:
	movl	12(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB68_9
# %bb.6:
	cmpl	$6, %eax
	jne	.LBB68_11
# %bb.7:
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	leaq	-40(%rbp), %rdx
	callq	intsetGet
	testb	%al, %al
	je	.LBB68_23
# %bb.8:
	movq	-40(%rbp), %rax
	movq	%rax, 64(%r14)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 72(%r14)
	addl	$1, 32(%rbx)
	movl	$1, %eax
	jmp	.LBB68_24
.LBB68_13:
	movl	12(%rbx), %eax
	cmpl	$7, %eax
	je	.LBB68_19
# %bb.14:
	cmpl	$5, %eax
	jne	.LBB68_21
# %bb.15:
	movq	32(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB68_24
# %bb.16:
	cmpq	$0, 40(%rbx)
	je	.LBB68_24
# %bb.17:
	leaq	48(%r14), %rsi
	leaq	56(%r14), %rdx
	leaq	64(%r14), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB68_25
# %bb.18:
	leaq	32(%rbx), %r15
	leaq	40(%rbx), %r12
	movq	40(%rbx), %rdi
	callq	zzlGetScore
	movsd	%xmm0, 72(%r14)
	movq	24(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	zzlNext
	movl	$1, %eax
	jmp	.LBB68_24
.LBB68_9:
	movq	40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB68_23
# %bb.10:
	movq	(%rax), %rax
	movq	%rax, 40(%r14)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 72(%r14)
	movq	32(%rbx), %rdi
	callq	dictNext
	movq	%rax, 40(%rbx)
	movl	$1, %eax
	jmp	.LBB68_24
.LBB68_19:
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB68_23
# %bb.20:
	movq	(%rax), %rax
	movq	%rax, 40(%r14)
	movq	32(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rax, 72(%r14)
	movq	32(%rbx), %rax
	movq	24(%rax), %rax
	movq	%rax, 32(%rbx)
	movl	$1, %eax
	jmp	.LBB68_24
.LBB68_23:
	xorl	%eax, %eax
.LBB68_24:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB68_22:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$2012, %esi             # imm = 0x7DC
	jmp	.LBB68_12
.LBB68_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1987, %esi             # imm = 0x7C3
	jmp	.LBB68_12
.LBB68_21:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2009, %esi             # imm = 0x7D9
.LBB68_12:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB68_25:
	movl	$.L.str.39, %edi
	movl	$.L.str.1, %esi
	movl	$1995, %edx             # imm = 0x7CB
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end68:
	.size	zuiNext, .Lfunc_end68-zuiNext
                                        # -- End function
	.globl	zuiLongLongFromValue    # -- Begin function zuiLongLongFromValue
	.p2align	4, 0x90
	.type	zuiLongLongFromValue,@function
zuiLongLongFromValue:                   # @zuiLongLongFromValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	testb	$2, %al
	jne	.LBB69_15
# %bb.1:
	movl	%eax, %ecx
	orl	$2, %ecx
	movl	%ecx, (%rbx)
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB69_5
# %bb.2:
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB69_8
# %bb.3:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI69_0(,%rax,8)
.LBB69_4:
	shrq	$3, %rsi
	jmp	.LBB69_13
.LBB69_5:
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB69_7
# %bb.6:
	movl	56(%rbx), %esi
	jmp	.LBB69_13
.LBB69_7:
	orl	$6, %eax
	movl	%eax, (%rbx)
	jmp	.LBB69_15
.LBB69_8:
	xorl	%esi, %esi
	jmp	.LBB69_13
.LBB69_9:
	movzbl	-3(%rdi), %esi
	jmp	.LBB69_13
.LBB69_10:
	movzwl	-5(%rdi), %esi
	jmp	.LBB69_13
.LBB69_11:
	movl	-9(%rdi), %esi
	jmp	.LBB69_13
.LBB69_12:
	movq	-17(%rdi), %rsi
.LBB69_13:
	leaq	64(%rbx), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB69_15
# %bb.14:
	orb	$4, (%rbx)
.LBB69_15:
	movl	(%rbx), %eax
	andl	$4, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end69:
	.size	zuiLongLongFromValue, .Lfunc_end69-zuiLongLongFromValue
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI69_0:
	.quad	.LBB69_4
	.quad	.LBB69_9
	.quad	.LBB69_10
	.quad	.LBB69_11
	.quad	.LBB69_12
                                        # -- End function
	.text
	.globl	zuiSdsFromValue         # -- Begin function zuiSdsFromValue
	.p2align	4, 0x90
	.type	zuiSdsFromValue,@function
zuiSdsFromValue:                        # @zuiSdsFromValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	40(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB70_5
# %bb.1:
	movq	%rdi, %rbx
	movq	48(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB70_3
# %bb.2:
	movl	56(%rbx), %esi
	callq	sdsnewlen
	jmp	.LBB70_4
.LBB70_3:
	movq	64(%rbx), %rdi
	callq	sdsfromlonglong
.LBB70_4:
	movq	%rax, 40(%rbx)
	orb	$1, (%rbx)
.LBB70_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end70:
	.size	zuiSdsFromValue, .Lfunc_end70-zuiSdsFromValue
                                        # -- End function
	.globl	zuiNewSdsFromValue      # -- Begin function zuiNewSdsFromValue
	.p2align	4, 0x90
	.type	zuiNewSdsFromValue,@function
zuiNewSdsFromValue:                     # @zuiNewSdsFromValue
# %bb.0:
	movl	(%rdi), %ecx
	movq	40(%rdi), %rax
	testb	$1, %cl
	jne	.LBB71_4
# %bb.1:
	testq	%rax, %rax
	je	.LBB71_2
# %bb.5:
	movq	%rax, %rdi
	jmp	sdsdup                  # TAILCALL
.LBB71_4:
	andl	$-2, %ecx
	movl	%ecx, (%rdi)
	movq	$0, 40(%rdi)
	retq
.LBB71_2:
	movq	48(%rdi), %rax
	testq	%rax, %rax
	je	.LBB71_3
# %bb.6:
	movl	56(%rdi), %esi
	movq	%rax, %rdi
	jmp	sdsnewlen               # TAILCALL
.LBB71_3:
	movq	64(%rdi), %rdi
	jmp	sdsfromlonglong         # TAILCALL
.Lfunc_end71:
	.size	zuiNewSdsFromValue, .Lfunc_end71-zuiNewSdsFromValue
                                        # -- End function
	.globl	zuiBufferFromValue      # -- Begin function zuiBufferFromValue
	.p2align	4, 0x90
	.type	zuiBufferFromValue,@function
zuiBufferFromValue:                     # @zuiBufferFromValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpq	$0, 48(%rdi)
	jne	.LBB72_12
# %bb.1:
	movq	%rdi, %rbx
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB72_11
# %bb.2:
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB72_3
# %bb.4:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI72_0(,%rdx,8)
.LBB72_5:
	shrq	$3, %rcx
	jmp	.LBB72_10
.LBB72_11:
	leaq	4(%rbx), %r14
	movq	64(%rbx), %rdx
	movl	$32, %esi
	movq	%r14, %rdi
	callq	ll2string
	movl	%eax, 56(%rbx)
	movq	%r14, 48(%rbx)
	jmp	.LBB72_12
.LBB72_3:
	xorl	%ecx, %ecx
	jmp	.LBB72_10
.LBB72_6:
	movzbl	-3(%rax), %ecx
	jmp	.LBB72_10
.LBB72_7:
	movzwl	-5(%rax), %ecx
	jmp	.LBB72_10
.LBB72_8:
	movl	-9(%rax), %ecx
	jmp	.LBB72_10
.LBB72_9:
	movq	-17(%rax), %rcx
.LBB72_10:
	movl	%ecx, 56(%rbx)
	movq	%rax, 48(%rbx)
.LBB72_12:
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end72:
	.size	zuiBufferFromValue, .Lfunc_end72-zuiBufferFromValue
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI72_0:
	.quad	.LBB72_5
	.quad	.LBB72_6
	.quad	.LBB72_7
	.quad	.LBB72_8
	.quad	.LBB72_9
                                        # -- End function
	.text
	.globl	zuiFind                 # -- Begin function zuiFind
	.p2align	4, 0x90
	.type	zuiFind,@function
zuiFind:                                # @zuiFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdi), %rax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB73_25
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	cmpl	$3, %ecx
	je	.LBB73_17
# %bb.2:
	cmpl	$2, %ecx
	jne	.LBB73_29
# %bb.3:
	movl	12(%rbx), %ecx
	cmpl	$2, %ecx
	je	.LBB73_9
# %bb.4:
	cmpl	$6, %ecx
	jne	.LBB73_15
# %bb.5:
	movq	%r12, %rdi
	callq	zuiLongLongFromValue
	testl	%eax, %eax
	je	.LBB73_25
# %bb.6:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movq	64(%r12), %rsi
	callq	intsetFind
	testb	%al, %al
	jne	.LBB73_7
	jmp	.LBB73_25
.LBB73_17:
	movq	40(%r12), %rsi
	testq	%rsi, %rsi
	jne	.LBB73_22
# %bb.18:
	movq	48(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB73_20
# %bb.19:
	movl	56(%r12), %esi
	callq	sdsnewlen
	jmp	.LBB73_21
.LBB73_9:
	movq	8(%rax), %rbx
	movq	40(%r12), %rsi
	testq	%rsi, %rsi
	jne	.LBB73_14
# %bb.10:
	movq	48(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB73_12
# %bb.11:
	movl	56(%r12), %esi
	callq	sdsnewlen
	jmp	.LBB73_13
.LBB73_20:
	movq	64(%r12), %rdi
	callq	sdsfromlonglong
.LBB73_21:
	movq	%rax, %rsi
	movq	%rax, 40(%r12)
	orb	$1, (%r12)
.LBB73_22:
	movl	12(%rbx), %eax
	cmpl	$7, %eax
	je	.LBB73_26
# %bb.23:
	cmpl	$5, %eax
	jne	.LBB73_28
# %bb.24:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movq	%r14, %rdx
	callq	zzlFind
	xorl	%r15d, %r15d
	testq	%rax, %rax
	setne	%r15b
	jmp	.LBB73_25
.LBB73_26:
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB73_25
# %bb.27:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB73_8
.LBB73_12:
	movq	64(%r12), %rdi
	callq	sdsfromlonglong
.LBB73_13:
	movq	%rax, %rsi
	movq	%rax, 40(%r12)
	orb	$1, (%r12)
.LBB73_14:
	movq	%rbx, %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB73_25
.LBB73_7:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
.LBB73_8:
	movq	%rax, (%r14)
	movl	$1, %r15d
.LBB73_25:
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB73_29:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$2129, %esi             # imm = 0x851
	jmp	.LBB73_16
.LBB73_15:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$2104, %esi             # imm = 0x838
	jmp	.LBB73_16
.LBB73_28:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2126, %esi             # imm = 0x84E
.LBB73_16:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end73:
	.size	zuiFind, .Lfunc_end73-zuiFind
                                        # -- End function
	.globl	zuiCompareByCardinality # -- Begin function zuiCompareByCardinality
	.p2align	4, 0x90
	.type	zuiCompareByCardinality,@function
zuiCompareByCardinality:                # @zuiCompareByCardinality
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	callq	zuiLength
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	zuiLength
	cmpq	%rax, %rbx
	sbbl	%ecx, %ecx
	cmpq	%rax, %rbx
	movl	$1, %eax
	cmovbel	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end74:
	.size	zuiCompareByCardinality, .Lfunc_end74-zuiCompareByCardinality
                                        # -- End function
	.globl	zunionInterGenericCommand # -- Begin function zunionInterGenericCommand
	.p2align	4, 0x90
	.type	zunionInterGenericCommand,@function
zunionInterGenericCommand:              # @zunionInterGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB75_1
.LBB75_174:
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB75_1:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB75_173
# %bb.2:
	movslq	64(%r13), %rcx
	addq	$-3, %rcx
	cmpq	%rcx, %rax
	jle	.LBB75_4
.LBB75_3:
	movq	shared+128(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	jmp	.LBB75_174
.LBB75_173:
	movl	$.L.str.40, %esi
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB75_174
.LBB75_4:
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	zcalloc
	movq	-80(%rbp), %r15
	testq	%r15, %r15
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jle	.LBB75_12
# %bb.5:
	movl	$3, %ebx
	movabsq	$4607182418800017408, %r14 # imm = 0x3FF0000000000000
	movq	%rax, %r13
	jmp	.LBB75_8
	.p2align	4, 0x90
.LBB75_6:                               #   in Loop: Header=BB75_8 Depth=1
	movq	$0, (%r13)
.LBB75_7:                               #   in Loop: Header=BB75_8 Depth=1
	movq	%r14, 16(%r13)
	movq	-80(%rbp), %r15
	leaq	1(%rbx), %r12
	addq	$-2, %rbx
	addq	$48, %r13
	cmpq	%rbx, %r15
	movq	%r12, %rbx
	jle	.LBB75_11
.LBB75_8:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	72(%rax), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB75_6
# %bb.9:                                #   in Loop: Header=BB75_8 Depth=1
	movl	(%rax), %ecx
	andl	$14, %ecx
	cmpl	$2, %ecx
	jne	.LBB75_37
# %bb.10:                               #   in Loop: Header=BB75_8 Depth=1
	movq	%rax, (%r13)
	movl	(%rax), %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r13)
	movl	(%rax), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 12(%r13)
	jmp	.LBB75_7
.LBB75_11:
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	jmp	.LBB75_13
.LBB75_12:
	movl	$3, %r12d
.LBB75_13:
	movl	64(%r13), %ebx
	subl	%r12d, %ebx
	jle	.LBB75_38
# %bb.14:
	je	.LBB75_38
# %bb.15:
	movq	-88(%rbp), %rax         # 8-byte Reload
	leaq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	addq	$64, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
.LBB75_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_28 Depth 2
	movslq	%ebx, %rax
	movslq	%r12d, %r13
	cmpq	%rax, %r15
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	jge	.LBB75_18
# %bb.17:                               #   in Loop: Header=BB75_16 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %r14
	movq	(%r14,%r13,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.41, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB75_25
.LBB75_18:                              #   in Loop: Header=BB75_16 Depth=1
	cmpl	$2, %ebx
	jl	.LBB75_145
# %bb.19:                               #   in Loop: Header=BB75_16 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rbx
	movq	(%rbx,%r13,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.43, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB75_145
# %bb.20:                               #   in Loop: Header=BB75_16 Depth=1
	movq	8(%rbx,%r13,8), %rax
	movq	8(%rax), %r14
	movl	$.L.str.44, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB75_24
# %bb.21:                               #   in Loop: Header=BB75_16 Depth=1
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	je	.LBB75_31
# %bb.22:                               #   in Loop: Header=BB75_16 Depth=1
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$3, -60(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	movq	%rbx, %r14
	je	.LBB75_32
	jmp	.LBB75_23
.LBB75_24:                              #   in Loop: Header=BB75_16 Depth=1
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	jmp	.LBB75_32
.LBB75_25:                              #   in Loop: Header=BB75_16 Depth=1
	leal	1(%r12), %eax
	testq	%r15, %r15
	jle	.LBB75_34
# %bb.26:                               #   in Loop: Header=BB75_16 Depth=1
	movslq	%eax, %rbx
	movq	(%r14,%rbx,8), %rsi
	movl	$.L.str.42, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	getDoubleFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB75_30
# %bb.27:                               # %.preheader4
                                        #   in Loop: Header=BB75_16 Depth=1
	leaq	8(,%rbx,8), %r14
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB75_28:                              #   Parent Loop BB75_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rcx), %r13
	movq	-80(%rbp), %r15
	cmpq	%r13, %r15
	jle	.LBB75_35
# %bb.29:                               #   in Loop: Header=BB75_28 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	addq	%r14, %rax
	movq	(%rax,%rcx,8), %rsi
	movl	$.L.str.42, %ecx
	movq	%rbx, %rdx
	callq	getDoubleFromObjectOrReply
	addq	$48, %rbx
	movq	%r13, %rcx
	testl	%eax, %eax
	je	.LBB75_28
	jmp	.LBB75_30
.LBB75_31:                              #   in Loop: Header=BB75_16 Depth=1
	movl	$2, -60(%rbp)           # 4-byte Folded Spill
	movq	%rbx, %r14
.LBB75_32:                              #   in Loop: Header=BB75_16 Depth=1
	addl	$2, %r12d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	addl	$-2, %ebx
	movl	%r12d, %eax
.LBB75_33:                              #   in Loop: Header=BB75_16 Depth=1
	movl	%eax, %r12d
	testl	%ebx, %ebx
	jne	.LBB75_16
	jmp	.LBB75_39
.LBB75_34:                              #   in Loop: Header=BB75_16 Depth=1
	addl	$-1, %ebx
	jmp	.LBB75_36
.LBB75_35:                              #   in Loop: Header=BB75_16 Depth=1
	movl	-56(%rbp), %ebx         # 4-byte Reload
	subl	%ecx, %ebx
	addl	$-2, %ebx
	leal	(%r12,%rcx), %eax
	addl	$2, %eax
.LBB75_36:                              #   in Loop: Header=BB75_16 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	jmp	.LBB75_33
.LBB75_38:
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
.LBB75_39:
	movl	$48, %edx
	movl	$zuiCompareByCardinality, %ecx
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	qsort
	callq	createZsetObject
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	8(%rax), %r15
	leaq	-216(%rbp), %rdi
	movl	$80, %edx
	xorl	%esi, %esi
	callq	memset
	movl	-108(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	movq	%r15, -128(%rbp)        # 8-byte Spill
	je	.LBB75_93
# %bb.40:
	cmpl	$2, %eax
	jne	.LBB75_171
# %bb.41:
	movq	%r12, %rdi
	callq	zuiLength
	testq	%rax, %rax
	je	.LBB75_144
# %bb.42:
	movq	%r12, %rdi
	callq	zuiInitIterator
	leaq	-216(%rbp), %rsi
	movq	%r12, %rdi
	callq	zuiNext
	testl	%eax, %eax
	je	.LBB75_147
# %bb.43:
	movq	%r12, %r14
	addq	$48, %r14
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-216(%rbp), %r13
	movq	%r12, %rbx
	leaq	-104(%rbp), %r12
	jmp	.LBB75_47
	.p2align	4, 0x90
.LBB75_45:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-128(%rbp), %r15        # 8-byte Reload
.LBB75_46:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	zuiNext
	testl	%eax, %eax
	je	.LBB75_148
.LBB75_47:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_54 Depth 2
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB75_49
# %bb.48:                               #   in Loop: Header=BB75_47 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB75_49:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-80(%rbp), %rax
	movl	$1, %r15d
	cmpq	$2, %rax
	jl	.LBB75_67
# %bb.50:                               # %.preheader
                                        #   in Loop: Header=BB75_47 Depth=1
	movl	$1, %r15d
	movq	%r14, %rbx
	jmp	.LBB75_54
	.p2align	4, 0x90
.LBB75_51:                              #   in Loop: Header=BB75_54 Depth=2
	minsd	%xmm0, %xmm1
.LBB75_52:                              #   in Loop: Header=BB75_54 Depth=2
	movapd	%xmm1, %xmm0
.LBB75_53:                              #   in Loop: Header=BB75_54 Depth=2
	addq	$1, %r15
	movq	-80(%rbp), %rax
	addq	$48, %rbx
	cmpq	%r15, %rax
	jle	.LBB75_66
.LBB75_54:                              #   Parent Loop BB75_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	(%rcx), %rax
	je	.LBB75_60
# %bb.55:                               #   in Loop: Header=BB75_54 Depth=2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	zuiFind
	testl	%eax, %eax
	je	.LBB75_44
# %bb.56:                               #   in Loop: Header=BB75_54 Depth=2
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB75_65
# %bb.57:                               #   in Loop: Header=BB75_54 Depth=2
	cmpl	$2, %eax
	je	.LBB75_51
# %bb.58:                               #   in Loop: Header=BB75_54 Depth=2
	cmpl	$1, %eax
	je	.LBB75_59
	jmp	.LBB75_169
	.p2align	4, 0x90
.LBB75_60:                              #   in Loop: Header=BB75_54 Depth=2
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	16(%rbx), %xmm1
	movsd	%xmm1, -104(%rbp)
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	je	.LBB75_65
# %bb.61:                               #   in Loop: Header=BB75_54 Depth=2
	cmpl	$2, %eax
	je	.LBB75_51
# %bb.62:                               #   in Loop: Header=BB75_54 Depth=2
	cmpl	$1, %eax
	jne	.LBB75_169
.LBB75_59:                              #   in Loop: Header=BB75_54 Depth=2
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB75_53
# %bb.64:                               #   in Loop: Header=BB75_54 Depth=2
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB75_53
	.p2align	4, 0x90
.LBB75_65:                              #   in Loop: Header=BB75_54 Depth=2
	maxsd	%xmm0, %xmm1
	jmp	.LBB75_52
.LBB75_66:                              #   in Loop: Header=BB75_47 Depth=1
	movl	%r15d, %r15d
.LBB75_67:                              #   in Loop: Header=BB75_47 Depth=1
	cmpq	%r15, %rax
	jne	.LBB75_45
.LBB75_68:                              #   in Loop: Header=BB75_47 Depth=1
	movl	-216(%rbp), %eax
	movq	-176(%rbp), %rbx
	testb	$1, %al
	movq	-128(%rbp), %r15        # 8-byte Reload
	jne	.LBB75_71
# %bb.69:                               #   in Loop: Header=BB75_47 Depth=1
	testq	%rbx, %rbx
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	je	.LBB75_72
# %bb.70:                               #   in Loop: Header=BB75_47 Depth=1
	movq	%rbx, %rdi
	callq	sdsdup
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rbx
	jmp	.LBB75_76
.LBB75_71:                              #   in Loop: Header=BB75_47 Depth=1
	andl	$-2, %eax
	movl	%eax, -216(%rbp)
	movq	$0, -176(%rbp)
	jmp	.LBB75_76
.LBB75_44:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-80(%rbp), %rax
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpq	%r15, %rax
	je	.LBB75_68
	jmp	.LBB75_45
.LBB75_72:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-168(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB75_74
# %bb.73:                               #   in Loop: Header=BB75_47 Depth=1
	movl	-160(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB75_75
.LBB75_74:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-152(%rbp), %rdi
	callq	sdsfromlonglong
.LBB75_75:                              #   in Loop: Header=BB75_47 Depth=1
	movq	%rax, %rbx
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB75_76:                              #   in Loop: Header=BB75_47 Depth=1
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	zslInsert
	movq	(%r15), %rdi
	leaq	8(%rax), %rdx
	movq	%rbx, %rsi
	callq	dictAdd
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB75_46
# %bb.77:                               #   in Loop: Header=BB75_47 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI75_2(,%rcx,8)
.LBB75_78:                              #   in Loop: Header=BB75_47 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB75_83
.LBB75_79:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-17(%rbx), %rcx
	jmp	.LBB75_83
.LBB75_80:                              #   in Loop: Header=BB75_47 Depth=1
	movzwl	-5(%rbx), %ecx
	jmp	.LBB75_83
.LBB75_81:                              #   in Loop: Header=BB75_47 Depth=1
	movl	-9(%rbx), %ecx
	jmp	.LBB75_83
.LBB75_82:                              #   in Loop: Header=BB75_47 Depth=1
	movzbl	-3(%rbx), %ecx
.LBB75_83:                              #   in Loop: Header=BB75_47 Depth=1
	cmpq	-48(%rbp), %rcx         # 8-byte Folded Reload
	jbe	.LBB75_46
# %bb.84:                               #   in Loop: Header=BB75_47 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB75_91
# %bb.85:                               #   in Loop: Header=BB75_47 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI75_3(,%rcx,8)
.LBB75_86:                              #   in Loop: Header=BB75_47 Depth=1
	shrq	$3, %rax
	jmp	.LBB75_92
.LBB75_87:                              #   in Loop: Header=BB75_47 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB75_92
.LBB75_88:                              #   in Loop: Header=BB75_47 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB75_92
.LBB75_89:                              #   in Loop: Header=BB75_47 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB75_92
.LBB75_90:                              #   in Loop: Header=BB75_47 Depth=1
	movzbl	-3(%rbx), %eax
	jmp	.LBB75_92
.LBB75_91:                              #   in Loop: Header=BB75_47 Depth=1
	xorl	%eax, %eax
.LBB75_92:                              #   in Loop: Header=BB75_47 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_46
.LBB75_93:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$setAccumulatorDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, %r13
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.LBB75_150
# %bb.94:
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	(%rax,%r12), %rdi
	addq	$-48, %rdi
	callq	zuiLength
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	dictExpand
	cmpq	$0, -80(%rbp)
	jle	.LBB75_149
# %bb.95:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_98
	.p2align	4, 0x90
.LBB75_96:                              #   in Loop: Header=BB75_98 Depth=1
	movq	%r15, %rdi
	callq	zuiClearIterator
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB75_97:                              #   in Loop: Header=BB75_98 Depth=1
	movq	-136(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	cmpq	%rcx, -80(%rbp)
	jle	.LBB75_150
.LBB75_98:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_104 Depth 2
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$4, %rbx
	leaq	(%r12,%rbx), %r15
	movq	%r15, %rdi
	callq	zuiLength
	testq	%rax, %rax
	je	.LBB75_97
# %bb.99:                               #   in Loop: Header=BB75_98 Depth=1
	movq	%r15, %rdi
	callq	zuiInitIterator
	movq	%r15, %rdi
	leaq	-216(%rbp), %rsi
	callq	zuiNext
	testl	%eax, %eax
	je	.LBB75_96
# %bb.100:                              #   in Loop: Header=BB75_98 Depth=1
	addq	%rbx, %r12
	addq	$16, %r12
	jmp	.LBB75_104
	.p2align	4, 0x90
.LBB75_101:                             #   in Loop: Header=BB75_104 Depth=2
	minsd	8(%r14), %xmm0
.LBB75_102:                             #   in Loop: Header=BB75_104 Depth=2
	movsd	%xmm0, 8(%r14)
.LBB75_103:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%r15, %rdi
	leaq	-216(%rbp), %rsi
	callq	zuiNext
	testl	%eax, %eax
	je	.LBB75_96
.LBB75_104:                             #   Parent Loop BB75_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB75_106
# %bb.105:                              #   in Loop: Header=BB75_104 Depth=2
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB75_106:                             #   in Loop: Header=BB75_104 Depth=2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB75_111
# %bb.107:                              #   in Loop: Header=BB75_104 Depth=2
	movq	-168(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB75_109
# %bb.108:                              #   in Loop: Header=BB75_104 Depth=2
	movl	-160(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB75_110
.LBB75_109:                             #   in Loop: Header=BB75_104 Depth=2
	movq	-152(%rbp), %rdi
	callq	sdsfromlonglong
.LBB75_110:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%rax, %rsi
	movq	%rax, -176(%rbp)
	orb	$1, -216(%rbp)
.LBB75_111:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%r13, %rdi
	leaq	-104(%rbp), %rdx
	callq	dictAddRaw
	movq	-104(%rbp), %r14
	testq	%r14, %r14
	je	.LBB75_117
# %bb.112:                              #   in Loop: Header=BB75_104 Depth=2
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB75_120
# %bb.113:                              #   in Loop: Header=BB75_104 Depth=2
	cmpl	$2, %eax
	je	.LBB75_101
# %bb.114:                              #   in Loop: Header=BB75_104 Depth=2
	cmpl	$1, %eax
	jne	.LBB75_169
# %bb.115:                              #   in Loop: Header=BB75_104 Depth=2
	addsd	8(%r14), %xmm0
	movsd	%xmm0, 8(%r14)
	callq	__fpclassifyd
	testl	%eax, %eax
	jne	.LBB75_103
# %bb.116:                              #   in Loop: Header=BB75_104 Depth=2
	movq	$0, 8(%r14)
	jmp	.LBB75_103
	.p2align	4, 0x90
.LBB75_117:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%rax, %rbx
	movl	-216(%rbp), %ecx
	movq	-176(%rbp), %rax
	testb	$1, %cl
	jne	.LBB75_121
# %bb.118:                              #   in Loop: Header=BB75_104 Depth=2
	testq	%rax, %rax
	je	.LBB75_125
# %bb.119:                              #   in Loop: Header=BB75_104 Depth=2
	movq	%rax, %rdi
	callq	sdsdup
	jmp	.LBB75_122
	.p2align	4, 0x90
.LBB75_120:                             #   in Loop: Header=BB75_104 Depth=2
	maxsd	8(%r14), %xmm0
	jmp	.LBB75_102
.LBB75_121:                             #   in Loop: Header=BB75_104 Depth=2
	andl	$-2, %ecx
	movl	%ecx, -216(%rbp)
	movq	$0, -176(%rbp)
.LBB75_122:                             #   in Loop: Header=BB75_104 Depth=2
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB75_141
# %bb.123:                              #   in Loop: Header=BB75_104 Depth=2
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI75_0(,%rdx,8)
.LBB75_124:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%rcx, %rdx
	shrq	$3, %rdx
	cmpq	-48(%rbp), %rdx         # 8-byte Folded Reload
	ja	.LBB75_131
	jmp	.LBB75_141
.LBB75_125:                             #   in Loop: Header=BB75_104 Depth=2
	movq	-168(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB75_134
# %bb.126:                              #   in Loop: Header=BB75_104 Depth=2
	movl	-160(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB75_122
.LBB75_127:                             #   in Loop: Header=BB75_104 Depth=2
	movq	-17(%rax), %rdx
	cmpq	-48(%rbp), %rdx         # 8-byte Folded Reload
	ja	.LBB75_131
	jmp	.LBB75_141
.LBB75_128:                             #   in Loop: Header=BB75_104 Depth=2
	movzwl	-5(%rax), %edx
	cmpq	-48(%rbp), %rdx         # 8-byte Folded Reload
	ja	.LBB75_131
	jmp	.LBB75_141
.LBB75_129:                             #   in Loop: Header=BB75_104 Depth=2
	movl	-9(%rax), %edx
	cmpq	-48(%rbp), %rdx         # 8-byte Folded Reload
	ja	.LBB75_131
	jmp	.LBB75_141
.LBB75_130:                             #   in Loop: Header=BB75_104 Depth=2
	movzbl	-3(%rax), %edx
	cmpq	-48(%rbp), %rdx         # 8-byte Folded Reload
	jbe	.LBB75_141
.LBB75_131:                             #   in Loop: Header=BB75_104 Depth=2
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB75_139
# %bb.132:                              #   in Loop: Header=BB75_104 Depth=2
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI75_1(,%rdx,8)
.LBB75_133:                             #   in Loop: Header=BB75_104 Depth=2
	shrq	$3, %rcx
	jmp	.LBB75_140
.LBB75_134:                             #   in Loop: Header=BB75_104 Depth=2
	movq	-152(%rbp), %rdi
	callq	sdsfromlonglong
	jmp	.LBB75_122
.LBB75_135:                             #   in Loop: Header=BB75_104 Depth=2
	movq	-17(%rax), %rcx
	jmp	.LBB75_140
.LBB75_136:                             #   in Loop: Header=BB75_104 Depth=2
	movzwl	-5(%rax), %ecx
	jmp	.LBB75_140
.LBB75_137:                             #   in Loop: Header=BB75_104 Depth=2
	movl	-9(%rax), %ecx
	jmp	.LBB75_140
.LBB75_138:                             #   in Loop: Header=BB75_104 Depth=2
	movzbl	-3(%rax), %ecx
	jmp	.LBB75_140
.LBB75_139:                             #   in Loop: Header=BB75_104 Depth=2
	xorl	%ecx, %ecx
.LBB75_140:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB75_141:                             #   in Loop: Header=BB75_104 Depth=2
	movq	(%r13), %rcx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB75_143
# %bb.142:                              #   in Loop: Header=BB75_104 Depth=2
	movq	8(%r13), %rdi
	movq	%rax, %rsi
	callq	*%rcx
.LBB75_143:                             #   in Loop: Header=BB75_104 Depth=2
	movq	%rax, (%rbx)
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rbx)
	jmp	.LBB75_103
.LBB75_37:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	shared+112(%rip), %rsi
	jmp	.LBB75_146
.LBB75_144:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_154
.LBB75_30:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB75_168
.LBB75_145:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	shared+128(%rip), %rsi
.LBB75_146:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB75_174
.LBB75_147:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
.LBB75_148:
	movq	%rbx, %rdi
	callq	zuiClearIterator
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%rbx, %r12
	jmp	.LBB75_154
.LBB75_149:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB75_150:
	movq	%r13, %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	(%r15), %rdi
	movq	72(%r13), %rsi
	addq	40(%r13), %rsi
	callq	dictExpand
	.p2align	4, 0x90
.LBB75_151:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB75_153
# %bb.152:                              #   in Loop: Header=BB75_151 Depth=1
	movq	(%rax), %rbx
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	zslInsert
	movq	(%r15), %rdi
	leaq	8(%rax), %rdx
	movq	%rbx, %rsi
	callq	dictAdd
	jmp	.LBB75_151
.LBB75_153:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	%r13, %rdi
	callq	dictRelease
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
.LBB75_154:
	movq	16(%r13), %rdi
	movq	%r14, %rbx
	movq	%r14, %rsi
	callq	dbDelete
	movl	%eax, %r14d
	movq	8(%r15), %rax
	cmpq	$0, 16(%rax)
	je	.LBB75_162
# %bb.155:
	movl	$240, %eax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	andl	(%rdi), %eax
	cmpl	$80, %eax
	je	.LBB75_159
# %bb.156:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	cmpq	server+2824(%rip), %rax
	ja	.LBB75_159
# %bb.157:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, server+2832(%rip)
	jb	.LBB75_159
# %bb.158:
	movl	$5, %esi
	callq	zsetConvert
.LBB75_159:
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	dbAdd
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movb	(%rcx), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB75_164
# %bb.160:
	cmpb	$5, %al
	jne	.LBB75_172
# %bb.161:
	movq	8(%rcx), %rdi
	callq	ziplistLen
	movl	%eax, %esi
	shrl	%esi
	jmp	.LBB75_165
.LBB75_162:
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	testl	%r14d, %r14d
	je	.LBB75_167
# %bb.163:
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	callq	signalModifiedKey
	movq	16(%r13), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	jmp	.LBB75_166
.LBB75_164:
	movq	8(%rcx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rsi
.LBB75_165:
	movq	%r13, %rdi
	callq	addReplyLongLong
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	callq	signalModifiedKey
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	movl	$.L.str.48, %eax
	movl	$.L.str.49, %esi
	cmoveq	%rax, %rsi
	movq	16(%r13), %rax
	movl	40(%rax), %ecx
	movl	$128, %edi
.LBB75_166:
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
.LBB75_167:
	movq	%r12, %rdi
.LBB75_168:
	callq	zfree
	jmp	.LBB75_174
.LBB75_23:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	jmp	.LBB75_3
.LBB75_169:
	movl	$.L.str.1, %edi
	movl	$.L.str.61, %edx
	movl	$2159, %esi             # imm = 0x86F
.LBB75_170:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB75_171:
	movl	$.L.str.1, %edi
	movl	$.L.str.47, %edx
	movl	$2376, %esi             # imm = 0x948
	jmp	.LBB75_170
.LBB75_172:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	jmp	.LBB75_170
.Lfunc_end75:
	.size	zunionInterGenericCommand, .Lfunc_end75-zunionInterGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI75_0:
	.quad	.LBB75_124
	.quad	.LBB75_130
	.quad	.LBB75_128
	.quad	.LBB75_129
	.quad	.LBB75_127
.LJTI75_1:
	.quad	.LBB75_133
	.quad	.LBB75_138
	.quad	.LBB75_136
	.quad	.LBB75_137
	.quad	.LBB75_135
.LJTI75_2:
	.quad	.LBB75_78
	.quad	.LBB75_82
	.quad	.LBB75_80
	.quad	.LBB75_81
	.quad	.LBB75_79
.LJTI75_3:
	.quad	.LBB75_86
	.quad	.LBB75_90
	.quad	.LBB75_88
	.quad	.LBB75_89
	.quad	.LBB75_87
                                        # -- End function
	.text
	.globl	zunionstoreCommand      # -- Begin function zunionstoreCommand
	.p2align	4, 0x90
	.type	zunionstoreCommand,@function
zunionstoreCommand:                     # @zunionstoreCommand
# %bb.0:
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	xorl	%edx, %edx
	jmp	zunionInterGenericCommand # TAILCALL
.Lfunc_end76:
	.size	zunionstoreCommand, .Lfunc_end76-zunionstoreCommand
                                        # -- End function
	.globl	zinterstoreCommand      # -- Begin function zinterstoreCommand
	.p2align	4, 0x90
	.type	zinterstoreCommand,@function
zinterstoreCommand:                     # @zinterstoreCommand
# %bb.0:
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movl	$2, %edx
	jmp	zunionInterGenericCommand # TAILCALL
.Lfunc_end77:
	.size	zinterstoreCommand, .Lfunc_end77-zinterstoreCommand
                                        # -- End function
	.globl	zrangeGenericCommand    # -- Begin function zrangeGenericCommand
	.p2align	4, 0x90
	.type	zrangeGenericCommand,@function
zrangeGenericCommand:                   # @zrangeGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%esi, %r15d
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rsi
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB78_10
# %bb.1:
	movq	72(%r12), %rax
	movq	24(%rax), %rsi
	leaq	-96(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB78_10
# %bb.2:
	movl	64(%r12), %eax
	cmpl	$5, %eax
	jne	.LBB78_5
# %bb.3:
	movq	72(%r12), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.50, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB78_6
# %bb.4:
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB78_8
.LBB78_5:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	cmpl	$5, %eax
	jl	.LBB78_8
.LBB78_6:
	movq	shared+128(%rip), %rsi
.LBB78_7:
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB78_10
.LBB78_8:
	movq	shared+104(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB78_10
# %bb.9:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB78_11
.LBB78_10:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB78_11:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$7, %al
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	je	.LBB78_14
# %bb.12:
	cmpb	$5, %al
	jne	.LBB78_80
# %bb.13:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %r13d
	shrl	%r13d
	jmp	.LBB78_15
.LBB78_14:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %r13
.LBB78_15:
	movq	-56(%rbp), %rbx
	testq	%rbx, %rbx
	jns	.LBB78_17
# %bb.16:
	addq	%r13, %rbx
	movq	%rbx, -56(%rbp)
.LBB78_17:
	movq	-96(%rbp), %r14
	testq	%r14, %r14
	js	.LBB78_20
# %bb.18:
	testq	%rbx, %rbx
	js	.LBB78_21
.LBB78_19:
	cmpq	%r13, %rbx
	jl	.LBB78_22
	jmp	.LBB78_43
.LBB78_20:
	addq	%r13, %r14
	movq	%r14, -96(%rbp)
	testq	%rbx, %rbx
	jns	.LBB78_19
.LBB78_21:
	movq	$0, -56(%rbp)
	xorl	%ebx, %ebx
	cmpq	%r13, %rbx
	jge	.LBB78_43
.LBB78_22:
	cmpq	%r14, %rbx
	jg	.LBB78_43
# %bb.23:
	cmpq	%r13, %r14
	jl	.LBB78_25
# %bb.24:
	leaq	-1(%r13), %r14
	movq	%r14, -96(%rbp)
.LBB78_25:
	movq	%r14, %rsi
	subq	%rbx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	(%rcx), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB78_44
# %bb.26:
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	cmpb	$5, %al
	jne	.LBB78_81
# %bb.27:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r13
	movl	-56(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %esi
	xorl	$-2, %esi
	movl	%r15d, -100(%rbp)       # 4-byte Spill
	testl	%r15d, %r15d
	cmovel	%eax, %esi
	movq	%r13, %rdi
	callq	ziplistIndex
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB78_83
# %bb.28:
	movq	%rax, %rbx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB78_10
# %bb.29:
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB78_42
# %bb.30:                               # %.preheader
	notq	%r14
	addq	-112(%rbp), %r14        # 8-byte Folded Reload
.LBB78_31:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	leaq	-128(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB78_77
# %bb.32:                               #   in Loop: Header=BB78_31 Depth=1
	movq	-128(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB78_37
# %bb.33:                               #   in Loop: Header=BB78_31 Depth=1
	movl	-104(%rbp), %edx
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB78_35
.LBB78_34:                              #   in Loop: Header=BB78_31 Depth=1
	movq	%r15, %rdi
	callq	zzlGetScore
	movq	%r12, %rdi
	callq	addReplyDouble
.LBB78_35:                              #   in Loop: Header=BB78_31 Depth=1
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	je	.LBB78_38
# %bb.36:                               #   in Loop: Header=BB78_31 Depth=1
	movq	%r13, %rdi
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	zzlPrev
	jmp	.LBB78_39
.LBB78_37:                              #   in Loop: Header=BB78_31 Depth=1
	movq	-120(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkLongLong
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB78_34
	jmp	.LBB78_35
.LBB78_38:                              #   in Loop: Header=BB78_31 Depth=1
	movq	%r13, %rdi
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	zzlNext
.LBB78_39:                              #   in Loop: Header=BB78_31 Depth=1
	incq	%r14
	je	.LBB78_10
# %bb.40:                               #   in Loop: Header=BB78_31 Depth=1
	movq	-88(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB78_42
# %bb.41:                               #   in Loop: Header=BB78_31 Depth=1
	movq	-80(%rbp), %r15
	testq	%r15, %r15
	jne	.LBB78_31
.LBB78_42:
	movl	$.L.str.51, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$2466, %r8d             # imm = 0x9A2
	jmp	.LBB78_79
.LBB78_43:
	movq	shared+104(%rip), %rsi
	jmp	.LBB78_7
.LBB78_44:
	movq	%rcx, %r8
	movq	8(%rcx), %rax
	movq	8(%rax), %rcx
	movq	%rbx, %r9
	testl	%r15d, %r15d
	je	.LBB78_52
# %bb.45:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	movq	-72(%rbp), %r10         # 8-byte Reload
	jle	.LBB78_59
# %bb.46:
	subq	%rax, %r13
	movq	(%rcx), %rbx
	movslq	24(%rcx), %rax
	xorl	%ecx, %ecx
	jmp	.LBB78_48
.LBB78_47:                              #   in Loop: Header=BB78_48 Depth=1
	cmpq	%r13, %rcx
	je	.LBB78_63
.LBB78_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_50 Depth 2
	testq	%rax, %rax
	jle	.LBB78_62
# %bb.49:                               # %.preheader4
                                        #   in Loop: Header=BB78_48 Depth=1
	addq	$-1, %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB78_50:                              #   Parent Loop BB78_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rcx
	movq	%rdx, %rbx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movq	24(%rdx,%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB78_47
# %bb.51:                               #   in Loop: Header=BB78_50 Depth=2
	movq	32(%rbx,%rsi), %rsi
	addq	%rcx, %rsi
	cmpq	%r13, %rsi
	jbe	.LBB78_50
	jmp	.LBB78_47
.LBB78_52:
	movq	(%rcx), %rbx
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	movq	-72(%rbp), %r10         # 8-byte Reload
	jle	.LBB78_61
# %bb.53:
	addq	$1, %rax
	movslq	24(%rcx), %rcx
	xorl	%edx, %edx
	jmp	.LBB78_55
.LBB78_54:                              #   in Loop: Header=BB78_55 Depth=1
	cmpq	%rax, %rdx
	je	.LBB78_63
.LBB78_55:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_57 Depth 2
	testq	%rcx, %rcx
	jle	.LBB78_62
# %bb.56:                               # %.preheader6
                                        #   in Loop: Header=BB78_55 Depth=1
	addq	$-1, %rcx
	movq	%rbx, %rsi
	movq	%rdx, %rdi
	.p2align	4, 0x90
.LBB78_57:                              #   Parent Loop BB78_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rdx
	movq	%rsi, %rbx
	movq	%rcx, %rdi
	shlq	$4, %rdi
	movq	24(%rsi,%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB78_54
# %bb.58:                               #   in Loop: Header=BB78_57 Depth=2
	movq	32(%rbx,%rdi), %rdi
	addq	%rdx, %rdi
	cmpq	%rax, %rdi
	jbe	.LBB78_57
	jmp	.LBB78_54
.LBB78_62:
	xorl	%ebx, %ebx
	jmp	.LBB78_63
.LBB78_59:
	movq	8(%rcx), %rbx
	jmp	.LBB78_63
.LBB78_61:
	movq	24(%rbx), %rbx
.LBB78_63:
	testq	%r10, %r10
	je	.LBB78_10
# %bb.64:                               # %.preheader2
	movq	%r8, %r13
	notq	%r14
	addq	%r9, %r14
	jmp	.LBB78_66
.LBB78_65:                              #   in Loop: Header=BB78_66 Depth=1
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	movq	16(%rbx,%rax,8), %rbx
	incq	%r14
	je	.LBB78_10
.LBB78_66:                              # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB78_78
# %bb.67:                               #   in Loop: Header=BB78_66 Depth=1
	movq	(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB78_74
# %bb.68:                               #   in Loop: Header=BB78_66 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI78_0(,%rax,8)
.LBB78_69:                              #   in Loop: Header=BB78_66 Depth=1
	shrq	$3, %rdx
	jmp	.LBB78_75
.LBB78_70:                              #   in Loop: Header=BB78_66 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB78_75
.LBB78_71:                              #   in Loop: Header=BB78_66 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB78_75
.LBB78_72:                              #   in Loop: Header=BB78_66 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB78_75
.LBB78_73:                              #   in Loop: Header=BB78_66 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB78_75
.LBB78_74:                              #   in Loop: Header=BB78_66 Depth=1
	xorl	%edx, %edx
.LBB78_75:                              #   in Loop: Header=BB78_66 Depth=1
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB78_65
# %bb.76:                               #   in Loop: Header=BB78_66 Depth=1
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	addReplyDouble
	jmp	.LBB78_65
.LBB78_77:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$2467, %r8d             # imm = 0x9A3
	jmp	.LBB78_79
.LBB78_78:
	movl	$.L.str.52, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$2500, %r8d             # imm = 0x9C4
.LBB78_79:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB78_80:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	jmp	.LBB78_82
.LBB78_81:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2508, %esi             # imm = 0x9CC
.LBB78_82:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB78_83:
	movl	$.L.str.15, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$2462, %r8d             # imm = 0x99E
	jmp	.LBB78_79
.Lfunc_end78:
	.size	zrangeGenericCommand, .Lfunc_end78-zrangeGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI78_0:
	.quad	.LBB78_69
	.quad	.LBB78_73
	.quad	.LBB78_71
	.quad	.LBB78_72
	.quad	.LBB78_70
                                        # -- End function
	.text
	.globl	zrangeCommand           # -- Begin function zrangeCommand
	.p2align	4, 0x90
	.type	zrangeCommand,@function
zrangeCommand:                          # @zrangeCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	zrangeGenericCommand    # TAILCALL
.Lfunc_end79:
	.size	zrangeCommand, .Lfunc_end79-zrangeCommand
                                        # -- End function
	.globl	zrevrangeCommand        # -- Begin function zrevrangeCommand
	.p2align	4, 0x90
	.type	zrevrangeCommand,@function
zrevrangeCommand:                       # @zrevrangeCommand
# %bb.0:
	movl	$1, %esi
	jmp	zrangeGenericCommand    # TAILCALL
.Lfunc_end80:
	.size	zrevrangeCommand, .Lfunc_end80-zrevrangeCommand
                                        # -- End function
	.globl	genericZrangebyscoreCommand # -- Begin function genericZrangebyscoreCommand
	.p2align	4, 0x90
	.type	genericZrangebyscoreCommand,@function
genericZrangebyscoreCommand:            # @genericZrangebyscoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movl	%esi, %ebx
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %r14
	movq	$0, -80(%rbp)
	movq	$-1, -136(%rbp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%cl
	sete	%dl
	movq	16(%rax,%rcx,8), %rdi
	movq	16(%rax,%rdx,8), %rsi
	leaq	-120(%rbp), %rdx
	callq	zslParseRange
	testl	%eax, %eax
	je	.LBB81_3
# %bb.1:
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	callq	addReplyError
.LBB81_2:
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB81_3:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	64(%r15), %r13d
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	cmpl	$5, %r13d
	jl	.LBB81_13
# %bb.4:
	addl	$-4, %r13d
	movl	$4, %r12d
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r15, -128(%rbp)        # 8-byte Spill
	jmp	.LBB81_7
	.p2align	4, 0x90
.LBB81_5:                               #   in Loop: Header=BB81_7 Depth=1
	movl	$-1, %eax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	-128(%rbp), %r15        # 8-byte Reload
.LBB81_6:                               #   in Loop: Header=BB81_7 Depth=1
	addl	%ecx, %r12d
	addl	%eax, %r13d
	je	.LBB81_13
.LBB81_7:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %r15
	movl	%r12d, %ebx
	movq	(%r15,%rbx,8), %rax
	movq	8(%rax), %r14
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB81_5
# %bb.8:                                #   in Loop: Header=BB81_7 Depth=1
	cmpl	$3, %r13d
	jl	.LBB81_19
# %bb.9:                                #   in Loop: Header=BB81_7 Depth=1
	movl	$.L.str.53, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB81_19
# %bb.10:                               #   in Loop: Header=BB81_7 Depth=1
	movq	8(%r15,%rbx,8), %rsi
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB81_2
# %bb.11:                               #   in Loop: Header=BB81_7 Depth=1
	movq	72(%r15), %rax
	movq	16(%rax,%rbx,8), %rsi
	movq	%r15, %rdi
	leaq	-136(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB81_2
# %bb.12:                               #   in Loop: Header=BB81_7 Depth=1
	movl	$-3, %eax
	movl	$3, %ecx
	jmp	.LBB81_6
.LBB81_13:
	movq	shared+104(%rip), %rdx
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB81_2
# %bb.14:
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB81_2
# %bb.15:
	movb	(%r13), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB81_20
# %bb.16:
	cmpb	$5, %al
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jne	.LBB81_79
# %bb.17:
	movq	8(%r13), %r12
	leaq	-120(%rbp), %rsi
	movq	%r12, %rdi
	testl	%r14d, %r14d
	je	.LBB81_22
# %bb.18:
	callq	zzlLastInRange
	jmp	.LBB81_23
.LBB81_19:
	movq	shared+128(%rip), %rsi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	addReply
	jmp	.LBB81_2
.LBB81_20:
	movq	8(%r13), %rax
	movq	8(%rax), %rdi
	movl	-44(%rbp), %r14d        # 4-byte Reload
	leaq	-120(%rbp), %rsi
	testl	%r14d, %r14d
	je	.LBB81_47
# %bb.21:
	callq	zslLastInRange
	jmp	.LBB81_48
.LBB81_22:
	callq	zzlFirstInRange
.LBB81_23:
	movq	%rax, %rbx
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	je	.LBB81_46
# %bb.24:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, -96(%rbp)
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -56(%rbp)         # 8-byte Spill
	subq	$1, -80(%rbp)
	jb	.LBB81_31
# %bb.25:
	xorl	%r12d, %r12d
.LBB81_26:                              # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	je	.LBB81_28
# %bb.27:                               #   in Loop: Header=BB81_26 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlPrev
	jmp	.LBB81_29
.LBB81_28:                              #   in Loop: Header=BB81_26 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlNext
.LBB81_29:                              #   in Loop: Header=BB81_26 Depth=1
	movq	-72(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB81_70
# %bb.30:                               #   in Loop: Header=BB81_26 Depth=1
	subq	$1, -80(%rbp)
	jae	.LBB81_26
.LBB81_31:
	movl	-104(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movl	-100(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB81_34
.LBB81_32:                              #   in Loop: Header=BB81_34 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlNext
.LBB81_33:                              #   in Loop: Header=BB81_34 Depth=1
	addq	$1, %r12
	movq	-72(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB81_71
.LBB81_34:                              # =>This Inner Loop Header: Depth=1
	movb	$1, %r14b
	subq	$1, -136(%rbp)
	jb	.LBB81_71
# %bb.35:                               #   in Loop: Header=BB81_34 Depth=1
	movq	-96(%rbp), %rdi
	callq	zzlGetScore
	movapd	%xmm0, %xmm1
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB81_37
# %bb.36:                               #   in Loop: Header=BB81_34 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	-168(%rbp), %xmm1       # 8-byte Folded Reload
	seta	%al
	setae	%cl
	cmpl	$0, -144(%rbp)          # 4-byte Folded Reload
	cmovel	%ecx, %eax
	testb	%al, %al
	jne	.LBB81_38
	jmp	.LBB81_71
.LBB81_37:                              #   in Loop: Header=BB81_34 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, -140(%rbp)          # 4-byte Folded Reload
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB81_71
.LBB81_38:                              #   in Loop: Header=BB81_34 Depth=1
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	leaq	-192(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB81_78
# %bb.39:                               #   in Loop: Header=BB81_34 Depth=1
	movq	-192(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB81_41
# %bb.40:                               #   in Loop: Header=BB81_34 Depth=1
	movl	-148(%rbp), %edx
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB81_42
.LBB81_41:                              #   in Loop: Header=BB81_34 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r15, %rdi
	callq	addReplyBulkLongLong
.LBB81_42:                              #   in Loop: Header=BB81_34 Depth=1
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB81_44
# %bb.43:                               #   in Loop: Header=BB81_34 Depth=1
	movq	%r15, %rdi
	callq	addReplyDouble
.LBB81_44:                              #   in Loop: Header=BB81_34 Depth=1
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB81_32
# %bb.45:                               #   in Loop: Header=BB81_34 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlPrev
	jmp	.LBB81_33
.LBB81_46:
	movq	shared+104(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	jmp	.LBB81_72
.LBB81_47:
	callq	zslFirstInRange
.LBB81_48:
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB81_53
# %bb.49:
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	negq	%rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB81_50:                              # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rdi
	addq	%rcx, %rdi
	je	.LBB81_54
# %bb.51:                               #   in Loop: Header=BB81_50 Depth=1
	xorl	%edi, %edi
	testl	%r14d, %r14d
	sete	%dil
	movq	16(%rbx,%rdi,8), %rbx
	addq	$1, %rcx
	testq	%rbx, %rbx
	jne	.LBB81_50
# %bb.52:
	subq	%rcx, %rax
	movq	%rax, -80(%rbp)
	xorl	%r12d, %r12d
	jmp	.LBB81_73
.LBB81_53:
	movq	shared+104(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB81_2
.LBB81_54:
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	notq	%rcx
	addq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movl	-104(%rbp), %r14d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	-100(%rbp), %r13d
	xorl	%r12d, %r12d
	jmp	.LBB81_56
.LBB81_55:                              #   in Loop: Header=BB81_56 Depth=1
	addq	$1, %r12
	xorl	%eax, %eax
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	sete	%al
	movq	16(%rbx,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.LBB81_74
.LBB81_56:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -136(%rbp)
	jb	.LBB81_74
# %bb.57:                               #   in Loop: Header=BB81_56 Depth=1
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB81_59
# %bb.58:                               #   in Loop: Header=BB81_56 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	seta	%al
	setae	%cl
	testl	%r14d, %r14d
	cmovel	%ecx, %eax
	testb	%al, %al
	jne	.LBB81_60
	jmp	.LBB81_74
.LBB81_59:                              #   in Loop: Header=BB81_56 Depth=1
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	testl	%r13d, %r13d
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB81_74
.LBB81_60:                              #   in Loop: Header=BB81_56 Depth=1
	movq	(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB81_67
# %bb.61:                               #   in Loop: Header=BB81_56 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI81_0(,%rax,8)
.LBB81_62:                              #   in Loop: Header=BB81_56 Depth=1
	shrq	$3, %rdx
	jmp	.LBB81_68
.LBB81_63:                              #   in Loop: Header=BB81_56 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB81_68
.LBB81_64:                              #   in Loop: Header=BB81_56 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB81_68
.LBB81_65:                              #   in Loop: Header=BB81_56 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB81_68
.LBB81_66:                              #   in Loop: Header=BB81_56 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB81_68
.LBB81_67:                              #   in Loop: Header=BB81_56 Depth=1
	xorl	%edx, %edx
.LBB81_68:                              #   in Loop: Header=BB81_56 Depth=1
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB81_55
# %bb.69:                               #   in Loop: Header=BB81_56 Depth=1
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	addReplyDouble
	jmp	.LBB81_55
.LBB81_74:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB81_73
.LBB81_70:
	movb	$1, %r14b
.LBB81_71:
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB81_72:
	testb	%r14b, %r14b
	je	.LBB81_2
.LBB81_73:
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	setne	%cl
	shlq	%cl, %r12
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
	jmp	.LBB81_2
.LBB81_78:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	$2626, %r8d             # imm = 0xA42
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB81_79:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2702, %esi             # imm = 0xA8E
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end81:
	.size	genericZrangebyscoreCommand, .Lfunc_end81-genericZrangebyscoreCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI81_0:
	.quad	.LBB81_62
	.quad	.LBB81_66
	.quad	.LBB81_64
	.quad	.LBB81_65
	.quad	.LBB81_63
                                        # -- End function
	.text
	.globl	zrangebyscoreCommand    # -- Begin function zrangebyscoreCommand
	.p2align	4, 0x90
	.type	zrangebyscoreCommand,@function
zrangebyscoreCommand:                   # @zrangebyscoreCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	genericZrangebyscoreCommand # TAILCALL
.Lfunc_end82:
	.size	zrangebyscoreCommand, .Lfunc_end82-zrangebyscoreCommand
                                        # -- End function
	.globl	zrevrangebyscoreCommand # -- Begin function zrevrangebyscoreCommand
	.p2align	4, 0x90
	.type	zrevrangebyscoreCommand,@function
zrevrangebyscoreCommand:                # @zrevrangebyscoreCommand
# %bb.0:
	movl	$1, %esi
	jmp	genericZrangebyscoreCommand # TAILCALL
.Lfunc_end83:
	.size	zrevrangebyscoreCommand, .Lfunc_end83-zrevrangebyscoreCommand
                                        # -- End function
	.globl	zcountCommand           # -- Begin function zcountCommand
	.p2align	4, 0x90
	.type	zcountCommand,@function
zcountCommand:                          # @zcountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-136(%rbp), %rdx
	callq	zslParseRange
	testl	%eax, %eax
	je	.LBB84_3
# %bb.1:
	movl	$.L.str.31, %esi
	movq	%r12, %rdi
	callq	addReplyError
.LBB84_2:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB84_3:
	movq	shared+32(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB84_2
# %bb.4:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB84_2
# %bb.5:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB84_13
# %bb.6:
	cmpb	$5, %al
	jne	.LBB84_54
# %bb.7:
	movq	8(%rbx), %r14
	leaq	-136(%rbp), %rsi
	movq	%r14, %rdi
	callq	zzlFirstInRange
	movq	%rax, -112(%rbp)
	testq	%rax, %rax
	je	.LBB84_28
# %bb.8:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, %r15
	movq	%rax, -104(%rbp)
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	movl	-116(%rbp), %r13d
	seta	%al
	setae	%cl
	testl	%r13d, %r13d
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB84_55
# %bb.9:
	movq	%r15, %rdi
	callq	zzlGetScore
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	testl	%r13d, %r13d
	cmovel	%ecx, %eax
	cmpb	$1, %al
	jne	.LBB84_30
# %bb.10:                               # %.preheader
	movl	$1, %eax
	leaq	-104(%rbp), %rbx
	.p2align	4, 0x90
.LBB84_11:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r15
	movq	%r14, %rdi
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdx
	callq	zzlNext
	cmpq	$0, -112(%rbp)
	je	.LBB84_53
# %bb.12:                               #   in Loop: Header=BB84_11 Depth=1
	movq	-104(%rbp), %rdi
	callq	zzlGetScore
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	setae	%al
	testl	%r13d, %r13d
	cmovel	%eax, %ecx
	leaq	1(%r15), %rax
	testb	%cl, %cl
	jne	.LBB84_11
	jmp	.LBB84_53
.LBB84_13:
	movq	8(%rbx), %rax
	movq	8(%rax), %rbx
	leaq	-136(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zslFirstInRange
	testq	%rax, %rax
	je	.LBB84_30
# %bb.14:
	movslq	24(%rbx), %rcx
	testq	%rcx, %rcx
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	jle	.LBB84_33
# %bb.15:
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %r12
	xorl	%ebx, %ebx
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB84_17
	.p2align	4, 0x90
.LBB84_16:                              #   in Loop: Header=BB84_17 Depth=1
	cmpq	$1, -88(%rbp)           # 8-byte Folded Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jle	.LBB84_31
.LBB84_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_20 Depth 2
	leaq	-1(%rcx), %r14
	movq	%r14, -80(%rbp)         # 8-byte Spill
	shlq	$4, %r14
	movq	24(%r12,%r14), %rax
	testq	%rax, %rax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	je	.LBB84_26
# %bb.18:                               # %.preheader6
                                        #   in Loop: Header=BB84_17 Depth=1
	leaq	(%r12,%r14), %r15
	addq	$24, %r15
	movq	%r12, %r13
	jmp	.LBB84_20
	.p2align	4, 0x90
.LBB84_19:                              #   in Loop: Header=BB84_20 Depth=2
	addq	32(%r13,%r14), %rbx
	movq	%rax, %r12
	leaq	(%rax,%r14), %r15
	addq	$24, %r15
	movq	24(%rax,%r14), %rax
	movq	%r12, %r13
	testq	%rax, %rax
	je	.LBB84_26
.LBB84_20:                              #   Parent Loop BB84_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB84_19
# %bb.21:                               #   in Loop: Header=BB84_20 Depth=2
	ucomisd	%xmm1, %xmm0
	jne	.LBB84_24
	jp	.LBB84_24
# %bb.22:                               #   in Loop: Header=BB84_20 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB84_25
# %bb.23:                               #   in Loop: Header=BB84_20 Depth=2
	movq	(%r15), %rax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB84_19
.LBB84_24:                              #   in Loop: Header=BB84_17 Depth=1
	movq	%r13, %r12
	jmp	.LBB84_26
.LBB84_25:                              #   in Loop: Header=BB84_17 Depth=1
	movq	%r13, %r12
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB84_26:                              #   in Loop: Header=BB84_17 Depth=1
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB84_16
# %bb.27:                               #   in Loop: Header=BB84_17 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB84_16
	jmp	.LBB84_32
.LBB84_30:
	xorl	%r15d, %r15d
	jmp	.LBB84_53
.LBB84_28:
	movq	shared+32(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB84_2
.LBB84_31:
	xorl	%ebx, %ebx
.LBB84_32:
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB84_34
.LBB84_33:
	xorl	%ebx, %ebx
.LBB84_34:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %r15
	subq	%rbx, %r15
	movq	%rax, %rbx
	addq	$1, %r15
	leaq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	zslLastInRange
	testq	%rax, %rax
	je	.LBB84_53
# %bb.35:
	movslq	24(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB84_51
# %bb.36:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rbx
	xorl	%r12d, %r12d
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB84_38
	.p2align	4, 0x90
.LBB84_37:                              #   in Loop: Header=BB84_38 Depth=1
	cmpq	$1, -88(%rbp)           # 8-byte Folded Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jle	.LBB84_49
.LBB84_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_41 Depth 2
	leaq	-1(%rcx), %rdx
	movq	%rdx, %r15
	shlq	$4, %r15
	movq	24(%rbx,%r15), %rax
	testq	%rax, %rax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	je	.LBB84_47
# %bb.39:                               # %.preheader1
                                        #   in Loop: Header=BB84_38 Depth=1
	leaq	(%rbx,%r15), %r13
	addq	$24, %r13
	movq	%rbx, %r14
	jmp	.LBB84_41
	.p2align	4, 0x90
.LBB84_40:                              #   in Loop: Header=BB84_41 Depth=2
	addq	32(%r14,%r15), %r12
	movq	%rax, %rbx
	leaq	(%rax,%r15), %r13
	addq	$24, %r13
	movq	24(%rax,%r15), %rax
	movq	%rbx, %r14
	testq	%rax, %rax
	je	.LBB84_47
.LBB84_41:                              #   Parent Loop BB84_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB84_40
# %bb.42:                               #   in Loop: Header=BB84_41 Depth=2
	ucomisd	%xmm1, %xmm0
	jne	.LBB84_45
	jp	.LBB84_45
# %bb.43:                               #   in Loop: Header=BB84_41 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB84_46
# %bb.44:                               #   in Loop: Header=BB84_41 Depth=2
	movq	(%r13), %rax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB84_40
.LBB84_45:                              #   in Loop: Header=BB84_38 Depth=1
	movq	%r14, %rbx
	jmp	.LBB84_47
.LBB84_46:                              #   in Loop: Header=BB84_38 Depth=1
	movq	%r14, %rbx
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB84_47:                              #   in Loop: Header=BB84_38 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB84_37
# %bb.48:                               #   in Loop: Header=BB84_38 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB84_37
	jmp	.LBB84_50
.LBB84_49:
	xorl	%r12d, %r12d
.LBB84_50:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-96(%rbp), %r15         # 8-byte Reload
	jmp	.LBB84_52
.LBB84_51:
	xorl	%r12d, %r12d
.LBB84_52:
	addq	%r15, %r12
	subq	16(%rbx), %r12
	movq	%r12, %r15
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB84_53:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	addReplyLongLong
	jmp	.LBB84_2
.LBB84_54:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2791, %esi             # imm = 0xAE7
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB84_55:
	movl	$.L.str.54, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	$2753, %r8d             # imm = 0xAC1
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end84:
	.size	zcountCommand, .Lfunc_end84-zcountCommand
                                        # -- End function
	.globl	zlexcountCommand        # -- Begin function zlexcountCommand
	.p2align	4, 0x90
	.type	zlexcountCommand,@function
zlexcountCommand:                       # @zlexcountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-112(%rbp), %rdx
	callq	zslParseLexRange
	testl	%eax, %eax
	je	.LBB85_2
# %bb.1:
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	callq	addReplyError
.LBB85_84:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB85_2:
	movq	shared+32(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB85_4
# %bb.3:
	movq	%rax, %r13
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB85_10
.LBB85_4:
	movq	-112(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB85_7
# %bb.5:
	cmpq	%rax, %rdi
	je	.LBB85_7
# %bb.6:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB85_7:
	movq	-104(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB85_84
# %bb.8:
	cmpq	%rax, %rdi
	je	.LBB85_84
# %bb.9:
	callq	sdsfree
	jmp	.LBB85_84
.LBB85_10:
	movb	(%r13), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB85_37
# %bb.11:
	cmpb	$5, %al
	jne	.LBB85_86
# %bb.12:
	movq	8(%r13), %r15
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdi
	callq	zzlFirstInLexRange
	movq	%rax, -128(%rbp)
	testq	%rax, %rax
	je	.LBB85_13
# %bb.20:
	movq	%rax, %rbx
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -136(%rbp)
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %rdi
	movl	-92(%rbp), %r15d
	movq	-104(%rbp), %r12
	cmpq	%rdi, %r12
	je	.LBB85_21
# %bb.22:
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB85_27
# %bb.23:
	movq	shared+80968(%rip), %rdx
	cmpq	%r12, %rdx
	je	.LBB85_27
# %bb.24:
	movl	$1, %eax
	cmpq	%r12, %rcx
	je	.LBB85_27
# %bb.25:
	cmpq	%rdi, %rdx
	je	.LBB85_27
# %bb.26:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	sdscmp
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB85_27
.LBB85_37:
	movq	8(%r13), %rax
	movq	8(%rax), %r15
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdi
	callq	zslFirstInLexRange
	testq	%rax, %rax
	je	.LBB85_38
# %bb.39:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movslq	24(%r15), %rcx
	testq	%rcx, %rcx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jle	.LBB85_40
# %bb.41:
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%r15), %rbx
	xorl	%r14d, %r14d
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB85_42
	.p2align	4, 0x90
.LBB85_53:                              #   in Loop: Header=BB85_42 Depth=1
	cmpq	$1, -88(%rbp)           # 8-byte Folded Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jle	.LBB85_54
.LBB85_42:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB85_44 Depth 2
	leaq	-1(%rcx), %r15
	movq	%r15, -80(%rbp)         # 8-byte Spill
	shlq	$4, %r15
	movq	24(%rbx,%r15), %rax
	testq	%rax, %rax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	je	.LBB85_51
# %bb.43:                               # %.preheader5
                                        #   in Loop: Header=BB85_42 Depth=1
	leaq	(%rbx,%r15), %r12
	addq	$24, %r12
	movq	%rbx, %r13
	jmp	.LBB85_44
	.p2align	4, 0x90
.LBB85_50:                              #   in Loop: Header=BB85_44 Depth=2
	addq	32(%r13,%r15), %r14
	movq	%rax, %rbx
	leaq	(%rax,%r15), %r12
	addq	$24, %r12
	movq	24(%rax,%r15), %rax
	movq	%rbx, %r13
	testq	%rax, %rax
	je	.LBB85_51
.LBB85_44:                              #   Parent Loop BB85_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB85_50
# %bb.45:                               #   in Loop: Header=BB85_44 Depth=2
	ucomisd	%xmm1, %xmm0
	jne	.LBB85_46
	jp	.LBB85_46
# %bb.47:                               #   in Loop: Header=BB85_44 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB85_48
# %bb.49:                               #   in Loop: Header=BB85_44 Depth=2
	movq	(%r12), %rax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB85_50
.LBB85_46:                              #   in Loop: Header=BB85_42 Depth=1
	movq	%r13, %rbx
	jmp	.LBB85_51
.LBB85_48:                              #   in Loop: Header=BB85_42 Depth=1
	movq	%r13, %rbx
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB85_51:                              #   in Loop: Header=BB85_42 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB85_53
# %bb.52:                               #   in Loop: Header=BB85_42 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB85_53
	jmp	.LBB85_55
.LBB85_13:
	movq	-112(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB85_16
# %bb.14:
	cmpq	%rax, %rdi
	je	.LBB85_16
# %bb.15:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB85_16:
	movq	-104(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB85_19
# %bb.17:
	cmpq	%rax, %rdi
	je	.LBB85_19
# %bb.18:
	callq	sdsfree
.LBB85_19:
	movq	shared+32(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB85_84
.LBB85_38:
	xorl	%r13d, %r13d
	jmp	.LBB85_77
.LBB85_54:
	xorl	%r14d, %r14d
.LBB85_55:
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB85_56
.LBB85_21:
	xorl	%eax, %eax
.LBB85_27:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%r15d, %r15d
	cmovnel	%ecx, %r14d
	callq	sdsfree
	testl	%r14d, %r14d
	je	.LBB85_85
# %bb.28:                               # %.preheader
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB85_29:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %r14
	movl	$0, %eax
	cmpq	%r14, %r12
	je	.LBB85_35
# %bb.30:                               #   in Loop: Header=BB85_29 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB85_35
# %bb.31:                               #   in Loop: Header=BB85_29 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%r12, %rdx
	je	.LBB85_35
# %bb.32:                               #   in Loop: Header=BB85_29 Depth=1
	movl	$1, %eax
	cmpq	%r12, %rcx
	je	.LBB85_35
# %bb.33:                               #   in Loop: Header=BB85_29 Depth=1
	cmpq	%r14, %rdx
	je	.LBB85_35
# %bb.34:                               #   in Loop: Header=BB85_29 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	sdscmp
	.p2align	4, 0x90
.LBB85_35:                              #   in Loop: Header=BB85_29 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setle	%bl
	testl	%r15d, %r15d
	cmovnel	%ecx, %ebx
	movq	%r14, %rdi
	callq	sdsfree
	testl	%ebx, %ebx
	je	.LBB85_76
# %bb.36:                               #   in Loop: Header=BB85_29 Depth=1
	addq	$1, %r13
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	callq	zzlNext
	movq	-128(%rbp), %rbx
	testq	%rbx, %rbx
	jne	.LBB85_29
	jmp	.LBB85_76
.LBB85_40:
	xorl	%r14d, %r14d
.LBB85_56:
	movq	16(%r15), %r13
	subq	%r14, %r13
	addq	$1, %r13
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdi
	callq	zslLastInLexRange
	testq	%rax, %rax
	je	.LBB85_76
# %bb.57:
	movslq	24(%r15), %rcx
	testq	%rcx, %rcx
	jle	.LBB85_58
# %bb.59:
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%r15), %r14
	xorl	%ebx, %ebx
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	jmp	.LBB85_60
	.p2align	4, 0x90
.LBB85_72:                              #   in Loop: Header=BB85_60 Depth=1
	cmpq	$1, -88(%rbp)           # 8-byte Folded Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-120(%rbp), %r13        # 8-byte Reload
	jle	.LBB85_73
.LBB85_60:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB85_62 Depth 2
	leaq	-1(%rcx), %rdx
	movq	%rdx, %r15
	shlq	$4, %r15
	movq	24(%r14,%r15), %rax
	testq	%rax, %rax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	je	.LBB85_69
# %bb.61:                               # %.preheader1
                                        #   in Loop: Header=BB85_60 Depth=1
	leaq	(%r14,%r15), %r12
	addq	$24, %r12
	movq	%r14, %r13
	jmp	.LBB85_62
	.p2align	4, 0x90
.LBB85_68:                              #   in Loop: Header=BB85_62 Depth=2
	addq	32(%r13,%r15), %rbx
	movq	%rax, %r14
	leaq	(%rax,%r15), %r12
	addq	$24, %r12
	movq	24(%rax,%r15), %rax
	movq	%r14, %r13
	testq	%rax, %rax
	je	.LBB85_69
.LBB85_62:                              #   Parent Loop BB85_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB85_68
# %bb.63:                               #   in Loop: Header=BB85_62 Depth=2
	ucomisd	%xmm1, %xmm0
	jne	.LBB85_64
	jp	.LBB85_64
# %bb.65:                               #   in Loop: Header=BB85_62 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	testl	%eax, %eax
	jg	.LBB85_66
# %bb.67:                               #   in Loop: Header=BB85_62 Depth=2
	movq	(%r12), %rax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB85_68
.LBB85_64:                              #   in Loop: Header=BB85_60 Depth=1
	movq	%r13, %r14
	jmp	.LBB85_69
.LBB85_66:                              #   in Loop: Header=BB85_60 Depth=1
	movq	%r13, %r14
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB85_69:                              #   in Loop: Header=BB85_60 Depth=1
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB85_72
# %bb.70:                               #   in Loop: Header=BB85_60 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB85_72
# %bb.71:
	movq	-120(%rbp), %r13        # 8-byte Reload
	jmp	.LBB85_74
.LBB85_73:
	xorl	%ebx, %ebx
.LBB85_74:
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB85_75
.LBB85_58:
	xorl	%ebx, %ebx
.LBB85_75:
	addq	%r13, %rbx
	subq	16(%r15), %rbx
	movq	%rbx, %r13
.LBB85_76:
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB85_77:
	movq	-112(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB85_80
# %bb.78:
	cmpq	%rax, %rdi
	je	.LBB85_80
# %bb.79:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB85_80:
	movq	-104(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB85_83
# %bb.81:
	cmpq	%rax, %rdi
	je	.LBB85_83
# %bb.82:
	callq	sdsfree
.LBB85_83:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	addReplyLongLong
	jmp	.LBB85_84
.LBB85_86:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2869, %esi             # imm = 0xB35
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB85_85:
	movl	$.L.str.55, %edx
	movl	$.L.str.1, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movl	$2833, %r8d             # imm = 0xB11
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end85:
	.size	zlexcountCommand, .Lfunc_end85-zlexcountCommand
                                        # -- End function
	.globl	genericZrangebylexCommand # -- Begin function genericZrangebylexCommand
	.p2align	4, 0x90
	.type	genericZrangebylexCommand,@function
genericZrangebylexCommand:              # @genericZrangebylexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %r15
	movq	$0, -96(%rbp)
	movq	$-1, -120(%rbp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%cl
	sete	%dl
	movq	16(%rax,%rcx,8), %rdi
	movq	16(%rax,%rdx,8), %rsi
	leaq	-80(%rbp), %rdx
	callq	zslParseLexRange
	testl	%eax, %eax
	je	.LBB86_3
# %bb.1:
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	addReplyError
.LBB86_2:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_3:
	movl	%r14d, -52(%rbp)        # 4-byte Spill
	movl	64(%rbx), %r14d
	cmpl	$5, %r14d
	jl	.LBB86_10
# %bb.4:
	addl	$-4, %r14d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB86_5:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r14d
	jl	.LBB86_18
# %bb.6:                                #   in Loop: Header=BB86_5 Depth=1
	movq	72(%rbx), %r12
	movq	32(%r12,%r13), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.53, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB86_18
# %bb.7:                                #   in Loop: Header=BB86_5 Depth=1
	movq	40(%r12,%r13), %rsi
	movq	%rbx, %rdi
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB86_12
# %bb.8:                                #   in Loop: Header=BB86_5 Depth=1
	movq	72(%rbx), %rax
	movq	48(%rax,%r13), %rsi
	movq	%rbx, %rdi
	leaq	-120(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB86_12
# %bb.9:                                #   in Loop: Header=BB86_5 Depth=1
	addq	$24, %r13
	addl	$-3, %r14d
	jne	.LBB86_5
.LBB86_10:
	movq	shared+104(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB86_12
# %bb.11:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB86_26
.LBB86_12:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB86_15
# %bb.13:
	cmpq	%rax, %rdi
	je	.LBB86_15
# %bb.14:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB86_15:
	movq	-72(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB86_2
# %bb.16:
	cmpq	%rax, %rdi
	je	.LBB86_2
# %bb.17:
	callq	sdsfree
	jmp	.LBB86_2
.LBB86_18:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB86_21
# %bb.19:
	cmpq	%rax, %rdi
	je	.LBB86_21
# %bb.20:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB86_21:
	movq	-72(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB86_24
# %bb.22:
	cmpq	%rax, %rdi
	je	.LBB86_24
# %bb.23:
	callq	sdsfree
.LBB86_24:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB86_2
.LBB86_26:
	movb	(%r15), %al
	shrb	$4, %al
	cmpb	$7, %al
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	je	.LBB86_30
# %bb.27:
	cmpb	$5, %al
	movl	-52(%rbp), %r14d        # 4-byte Reload
	jne	.LBB86_123
# %bb.28:
	movq	8(%r15), %r12
	leaq	-80(%rbp), %rsi
	movq	%r12, %rdi
	testl	%r14d, %r14d
	je	.LBB86_32
# %bb.29:
	callq	zzlLastInLexRange
	jmp	.LBB86_33
.LBB86_30:
	movq	8(%r15), %rax
	movq	8(%rax), %rdi
	movl	-52(%rbp), %r14d        # 4-byte Reload
	leaq	-80(%rbp), %rsi
	testl	%r14d, %r14d
	je	.LBB86_77
# %bb.31:
	callq	zslLastInLexRange
	jmp	.LBB86_78
.LBB86_32:
	callq	zzlFirstInLexRange
.LBB86_33:
	movq	%rax, %rbx
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB86_70
# %bb.34:
	movq	%r15, -136(%rbp)        # 8-byte Spill
	movq	%r12, %r15
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addDeferredMultiBulkLength
	movq	%rax, -104(%rbp)        # 8-byte Spill
	subq	$1, -96(%rbp)
	jb	.LBB86_41
# %bb.35:
	leaq	-112(%rbp), %r13
	xorl	%r12d, %r12d
.LBB86_36:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	leaq	-88(%rbp), %rsi
	movq	%r13, %rdx
	testl	%r14d, %r14d
	je	.LBB86_38
# %bb.37:                               #   in Loop: Header=BB86_36 Depth=1
	callq	zzlPrev
	jmp	.LBB86_39
.LBB86_38:                              #   in Loop: Header=BB86_36 Depth=1
	callq	zzlNext
.LBB86_39:                              #   in Loop: Header=BB86_36 Depth=1
	movq	-88(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB86_113
# %bb.40:                               #   in Loop: Header=BB86_36 Depth=1
	subq	$1, -96(%rbp)
	jae	.LBB86_36
.LBB86_41:
	xorl	%r12d, %r12d
	jmp	.LBB86_44
.LBB86_42:                              #   in Loop: Header=BB86_44 Depth=1
	callq	zzlNext
.LBB86_43:                              #   in Loop: Header=BB86_44 Depth=1
	addq	$1, %r12
	movq	-88(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB86_69
.LBB86_44:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -120(%rbp)
	jb	.LBB86_69
# %bb.45:                               #   in Loop: Header=BB86_44 Depth=1
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %r13
	testl	%r14d, %r14d
	je	.LBB86_52
# %bb.46:                               #   in Loop: Header=BB86_44 Depth=1
	movl	-64(%rbp), %edi
	movq	-80(%rbp), %rsi
	cmpq	%r13, %rsi
	je	.LBB86_58
# %bb.47:                               #   in Loop: Header=BB86_44 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r13, %rcx
	je	.LBB86_59
# %bb.48:                               #   in Loop: Header=BB86_44 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB86_59
# %bb.49:                               #   in Loop: Header=BB86_44 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB86_59
# %bb.50:                               #   in Loop: Header=BB86_44 Depth=1
	cmpq	%r13, %rdx
	je	.LBB86_59
# %bb.51:                               #   in Loop: Header=BB86_44 Depth=1
	movl	%edi, %r14d
	movq	%r13, %rdi
	callq	sdscmp
	movl	%r14d, %edi
	jmp	.LBB86_59
.LBB86_52:                              #   in Loop: Header=BB86_44 Depth=1
	movl	-60(%rbp), %edi
	movq	-72(%rbp), %rsi
	cmpq	%r13, %rsi
	je	.LBB86_60
# %bb.53:                               #   in Loop: Header=BB86_44 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%r13, %rcx
	je	.LBB86_61
# %bb.54:                               #   in Loop: Header=BB86_44 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB86_61
# %bb.55:                               #   in Loop: Header=BB86_44 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB86_61
# %bb.56:                               #   in Loop: Header=BB86_44 Depth=1
	cmpq	%r13, %rdx
	je	.LBB86_61
# %bb.57:                               #   in Loop: Header=BB86_44 Depth=1
	movl	%edi, %r14d
	movq	%r13, %rdi
	callq	sdscmp
	movl	%r14d, %edi
	jmp	.LBB86_61
.LBB86_58:                              #   in Loop: Header=BB86_44 Depth=1
	xorl	%eax, %eax
.LBB86_59:                              #   in Loop: Header=BB86_44 Depth=1
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setg	%r14b
	notl	%eax
	shrl	$31, %eax
	testl	%edi, %edi
	cmovel	%eax, %r14d
	jmp	.LBB86_62
.LBB86_60:                              #   in Loop: Header=BB86_44 Depth=1
	xorl	%eax, %eax
.LBB86_61:                              #   in Loop: Header=BB86_44 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%edi, %edi
	cmovnel	%ecx, %r14d
.LBB86_62:                              #   in Loop: Header=BB86_44 Depth=1
	movq	%r13, %rdi
	callq	sdsfree
	testl	%r14d, %r14d
	je	.LBB86_69
# %bb.63:                               #   in Loop: Header=BB86_44 Depth=1
	movq	%rbx, %rdi
	leaq	-152(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	movl	-52(%rbp), %r14d        # 4-byte Reload
	je	.LBB86_122
# %bb.64:                               #   in Loop: Header=BB86_44 Depth=1
	movq	-152(%rbp), %rsi
	testq	%rsi, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB86_66
# %bb.65:                               #   in Loop: Header=BB86_44 Depth=1
	movl	-124(%rbp), %edx
	callq	addReplyBulkCBuffer
	jmp	.LBB86_67
.LBB86_66:                              #   in Loop: Header=BB86_44 Depth=1
	movq	-144(%rbp), %rsi
	callq	addReplyBulkLongLong
.LBB86_67:                              #   in Loop: Header=BB86_44 Depth=1
	movq	%r15, %rdi
	leaq	-88(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	testl	%r14d, %r14d
	je	.LBB86_42
# %bb.68:                               #   in Loop: Header=BB86_44 Depth=1
	callq	zzlPrev
	jmp	.LBB86_43
.LBB86_69:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-104(%rbp), %r13        # 8-byte Reload
	movb	$1, %dl
	jmp	.LBB86_114
.LBB86_70:
	movq	shared+104(%rip), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	addReply
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB86_73
# %bb.71:
	cmpq	%rax, %rdi
	je	.LBB86_73
# %bb.72:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB86_73:
	movq	-72(%rbp), %rdi
	xorl	%r13d, %r13d
	movl	$0, %edx
	cmpq	%rcx, %rdi
	je	.LBB86_76
# %bb.74:
	movl	$0, %r12d
	cmpq	%rax, %rdi
	je	.LBB86_114
# %bb.75:
	callq	sdsfree
	xorl	%edx, %edx
	xorl	%r13d, %r13d
.LBB86_76:
	xorl	%r12d, %r12d
	jmp	.LBB86_114
.LBB86_77:
	callq	zslFirstInLexRange
.LBB86_78:
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB86_84
# %bb.79:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addDeferredMultiBulkLength
	movq	%rax, %r13
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	negq	%rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB86_80:                              # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	je	.LBB86_85
# %bb.81:                               #   in Loop: Header=BB86_80 Depth=1
	xorl	%esi, %esi
	testl	%r14d, %r14d
	sete	%sil
	movq	16(%rbx,%rsi,8), %rbx
	addq	$1, %rcx
	testq	%rbx, %rbx
	jne	.LBB86_80
# %bb.82:
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)
	xorl	%r12d, %r12d
.LBB86_83:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB86_115
.LBB86_84:
	movq	shared+104(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB86_12
.LBB86_85:
	notq	%rcx
	addq	%rax, %rcx
	movq	%rcx, -96(%rbp)
	xorl	%r12d, %r12d
	movl	-52(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB86_88
.LBB86_86:                              #   in Loop: Header=BB86_88 Depth=1
	movq	-17(%rsi), %rdx
.LBB86_87:                              #   in Loop: Header=BB86_88 Depth=1
	addq	$1, %r12
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	sete	%r14b
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyBulkCBuffer
	movq	16(%rbx,%r14,8), %rbx
	movl	%r15d, %r14d
	testq	%rbx, %rbx
	je	.LBB86_83
.LBB86_88:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -120(%rbp)
	jb	.LBB86_83
# %bb.89:                               #   in Loop: Header=BB86_88 Depth=1
	movq	(%rbx), %rdi
	testl	%r14d, %r14d
	je	.LBB86_96
# %bb.90:                               #   in Loop: Header=BB86_88 Depth=1
	movl	-64(%rbp), %r14d
	movq	-80(%rbp), %rsi
	cmpq	%rdi, %rsi
	je	.LBB86_102
# %bb.91:                               #   in Loop: Header=BB86_88 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB86_103
# %bb.92:                               #   in Loop: Header=BB86_88 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB86_103
# %bb.93:                               #   in Loop: Header=BB86_88 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB86_103
# %bb.94:                               #   in Loop: Header=BB86_88 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB86_103
# %bb.95:                               #   in Loop: Header=BB86_88 Depth=1
	callq	sdscmp
	jmp	.LBB86_103
.LBB86_96:                              #   in Loop: Header=BB86_88 Depth=1
	movl	-60(%rbp), %r14d
	movq	-72(%rbp), %rsi
	cmpq	%rdi, %rsi
	je	.LBB86_104
# %bb.97:                               #   in Loop: Header=BB86_88 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB86_105
# %bb.98:                               #   in Loop: Header=BB86_88 Depth=1
	movq	shared+80968(%rip), %rdx
	cmpq	%rsi, %rdx
	je	.LBB86_105
# %bb.99:                               #   in Loop: Header=BB86_88 Depth=1
	movl	$1, %eax
	cmpq	%rsi, %rcx
	je	.LBB86_105
# %bb.100:                              #   in Loop: Header=BB86_88 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB86_105
# %bb.101:                              #   in Loop: Header=BB86_88 Depth=1
	callq	sdscmp
	jmp	.LBB86_105
.LBB86_102:                             #   in Loop: Header=BB86_88 Depth=1
	xorl	%eax, %eax
.LBB86_103:                             #   in Loop: Header=BB86_88 Depth=1
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r14d, %r14d
	cmovel	%eax, %ecx
	testl	%ecx, %ecx
	jne	.LBB86_106
	jmp	.LBB86_83
.LBB86_104:                             #   in Loop: Header=BB86_88 Depth=1
	xorl	%eax, %eax
.LBB86_105:                             #   in Loop: Header=BB86_88 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	setle	%dl
	testl	%r14d, %r14d
	cmovnel	%ecx, %edx
	testl	%edx, %edx
	je	.LBB86_83
.LBB86_106:                             #   in Loop: Header=BB86_88 Depth=1
	movq	(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB86_112
# %bb.107:                              #   in Loop: Header=BB86_88 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI86_0(,%rax,8)
.LBB86_108:                             #   in Loop: Header=BB86_88 Depth=1
	shrq	$3, %rdx
	jmp	.LBB86_87
.LBB86_109:                             #   in Loop: Header=BB86_88 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB86_87
.LBB86_110:                             #   in Loop: Header=BB86_88 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB86_87
.LBB86_111:                             #   in Loop: Header=BB86_88 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB86_87
.LBB86_112:                             #   in Loop: Header=BB86_88 Depth=1
	xorl	%edx, %edx
	jmp	.LBB86_87
.LBB86_113:
	movb	$1, %dl
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-104(%rbp), %r13        # 8-byte Reload
.LBB86_114:
	testb	%dl, %dl
	je	.LBB86_2
.LBB86_115:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
	cmpq	%rcx, %rdi
	je	.LBB86_118
# %bb.116:
	cmpq	%rax, %rdi
	je	.LBB86_118
# %bb.117:
	callq	sdsfree
	movq	shared+80960(%rip), %rcx
	movq	shared+80968(%rip), %rax
.LBB86_118:
	movq	-72(%rbp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB86_121
# %bb.119:
	cmpq	%rax, %rdi
	je	.LBB86_121
# %bb.120:
	callq	sdsfree
.LBB86_121:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
	jmp	.LBB86_2
.LBB86_122:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	$2980, %r8d             # imm = 0xBA4
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB86_123:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$3049, %esi             # imm = 0xBE9
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end86:
	.size	genericZrangebylexCommand, .Lfunc_end86-genericZrangebylexCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI86_0:
	.quad	.LBB86_108
	.quad	.LBB86_111
	.quad	.LBB86_109
	.quad	.LBB86_110
	.quad	.LBB86_86
                                        # -- End function
	.text
	.globl	zrangebylexCommand      # -- Begin function zrangebylexCommand
	.p2align	4, 0x90
	.type	zrangebylexCommand,@function
zrangebylexCommand:                     # @zrangebylexCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	genericZrangebylexCommand # TAILCALL
.Lfunc_end87:
	.size	zrangebylexCommand, .Lfunc_end87-zrangebylexCommand
                                        # -- End function
	.globl	zrevrangebylexCommand   # -- Begin function zrevrangebylexCommand
	.p2align	4, 0x90
	.type	zrevrangebylexCommand,@function
zrevrangebylexCommand:                  # @zrevrangebylexCommand
# %bb.0:
	movl	$1, %esi
	jmp	genericZrangebylexCommand # TAILCALL
.Lfunc_end88:
	.size	zrevrangebylexCommand, .Lfunc_end88-zrevrangebylexCommand
                                        # -- End function
	.globl	zcardCommand            # -- Begin function zcardCommand
	.p2align	4, 0x90
	.type	zcardCommand,@function
zcardCommand:                           # @zcardCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB89_8
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB89_2
.LBB89_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB89_2:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB89_6
# %bb.3:
	cmpb	$5, %al
	jne	.LBB89_5
# %bb.4:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %esi
	shrl	%esi
	jmp	.LBB89_7
.LBB89_6:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rsi
.LBB89_7:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB89_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end89:
	.size	zcardCommand, .Lfunc_end89-zcardCommand
                                        # -- End function
	.globl	zscoreCommand           # -- Begin function zscoreCommand
	.p2align	4, 0x90
	.type	zscoreCommand,@function
zscoreCommand:                          # @zscoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB90_12
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB90_12
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB90_11
# %bb.3:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB90_7
# %bb.4:
	cmpb	$5, %al
	jne	.LBB90_10
# %bb.5:
	movq	8(%rbx), %rdi
	leaq	-24(%rbp), %rdx
	callq	zzlFind
	testq	%rax, %rax
	je	.LBB90_11
# %bb.6:
	movq	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB90_9
.LBB90_7:
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB90_11
# %bb.8:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, %xmm0
.LBB90_9:
	movq	%r14, %rdi
	callq	addReplyDouble
	jmp	.LBB90_12
.LBB90_11:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB90_12:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB90_10:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1266, %esi             # imm = 0x4F2
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end90:
	.size	zscoreCommand, .Lfunc_end90-zscoreCommand
                                        # -- End function
	.globl	zrankGenericCommand     # -- Begin function zrankGenericCommand
	.p2align	4, 0x90
	.type	zrankGenericCommand,@function
zrankGenericCommand:                    # @zrankGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r15d
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %r14
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB91_5
# %bb.1:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB91_2
.LBB91_5:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB91_2:
	movb	(%r14), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB91_6
# %bb.3:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	zsetRank
	testq	%rax, %rax
	js	.LBB91_4
# %bb.7:
	movq	%r12, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB91_4:
	movq	shared+80(%rip), %rsi
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB91_6:
	movl	$.L.str.56, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	$3098, %r8d             # imm = 0xC1A
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end91:
	.size	zrankGenericCommand, .Lfunc_end91-zrankGenericCommand
                                        # -- End function
	.globl	zrankCommand            # -- Begin function zrankCommand
	.p2align	4, 0x90
	.type	zrankCommand,@function
zrankCommand:                           # @zrankCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	zrankGenericCommand     # TAILCALL
.Lfunc_end92:
	.size	zrankCommand, .Lfunc_end92-zrankCommand
                                        # -- End function
	.globl	zrevrankCommand         # -- Begin function zrevrankCommand
	.p2align	4, 0x90
	.type	zrevrankCommand,@function
zrevrankCommand:                        # @zrevrankCommand
# %bb.0:
	movl	$1, %esi
	jmp	zrankGenericCommand     # TAILCALL
.Lfunc_end93:
	.size	zrevrankCommand, .Lfunc_end93-zrevrankCommand
                                        # -- End function
	.globl	zscanCommand            # -- Begin function zscanCommand
	.p2align	4, 0x90
	.type	zscanCommand,@function
zscanCommand:                           # @zscanCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rdx
	callq	parseScanCursorOrReply
	cmpl	$-1, %eax
	je	.LBB94_4
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+360(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB94_4
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB94_4
# %bb.3:
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	scanGenericCommand
.LBB94_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end94:
	.size	zscanCommand, .Lfunc_end94-zscanCommand
                                        # -- End function
	.globl	genericZpopCommand      # -- Begin function genericZpopCommand
	.p2align	4, 0x90
	.type	genericZpopCommand,@function
genericZpopCommand:                     # @genericZpopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	$1, -64(%rbp)
	testq	%r9, %r9
	je	.LBB95_4
# %bb.1:
	leaq	-64(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r9, %rsi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB95_53
# %bb.2:
	cmpq	$0, -64(%rbp)
	jle	.LBB95_3
.LBB95_4:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movslq	%r14d, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB95_5:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r14, %rbx
	jge	.LBB95_54
# %bb.6:                                #   in Loop: Header=BB95_5 Depth=1
	movq	(%r15,%rbx,8), %r13
	addq	$1, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r13, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB95_5
# %bb.7:
	movq	%rax, %r12
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB95_53
# %bb.8:
	movq	%rbx, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -88(%rbp)         # 8-byte Spill
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB95_10
# %bb.9:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	addReplyBulk
.LBB95_10:
	xorl	%eax, %eax
	movl	-56(%rbp), %ecx         # 4-byte Reload
	cmpl	$1, %ecx
	setne	%al
	leal	-2(%rax,%rax), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$2, %eax
	.p2align	4, 0x90
.LBB95_11:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movzbl	(%r12), %eax
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB95_22
# %bb.12:                               #   in Loop: Header=BB95_11 Depth=1
	movq	%r14, -104(%rbp)        # 8-byte Spill
	cmpb	$5, %al
	jne	.LBB95_28
# %bb.13:                               #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %r14
	movq	%r14, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB95_14
# %bb.15:                               #   in Loop: Header=BB95_11 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	leaq	-120(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB95_16
# %bb.17:                               #   in Loop: Header=BB95_11 Depth=1
	movq	-120(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB95_18
# %bb.19:                               #   in Loop: Header=BB95_11 Depth=1
	movl	-72(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB95_20
	.p2align	4, 0x90
.LBB95_22:                              #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	cmpl	$1, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB95_24
# %bb.23:                               #   in Loop: Header=BB95_11 Depth=1
	addq	$8, %rax
	jmp	.LBB95_25
	.p2align	4, 0x90
.LBB95_24:                              #   in Loop: Header=BB95_11 Depth=1
	movq	(%rax), %rax
	addq	$24, %rax
.LBB95_25:                              #   in Loop: Header=BB95_11 Depth=1
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB95_26
# %bb.27:                               #   in Loop: Header=BB95_11 Depth=1
	movq	(%rbx), %rdi
	callq	sdsdup
	movq	%rax, %r15
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB95_31
.LBB95_18:                              #   in Loop: Header=BB95_11 Depth=1
	movq	-112(%rbp), %rdi
	callq	sdsfromlonglong
.LBB95_20:                              #   in Loop: Header=BB95_11 Depth=1
	movq	%rax, %r15
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB95_21
# %bb.30:                               #   in Loop: Header=BB95_11 Depth=1
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-104(%rbp), %r14        # 8-byte Reload
.LBB95_31:                              #   in Loop: Header=BB95_11 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	zsetDel
	testl	%eax, %eax
	je	.LBB95_32
# %bb.34:                               #   in Loop: Header=BB95_11 Depth=1
	addq	$1, server+2080(%rip)
	cmpq	$2, %r14
	jne	.LBB95_36
# %bb.35:                               #   in Loop: Header=BB95_11 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LgenericZpopCommand.events(,%rax,8), %rsi
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$128, %edi
	movq	%r13, %rdx
	callq	notifyKeyspaceEvent
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	callq	signalModifiedKey
.LBB95_36:                              #   in Loop: Header=BB95_11 Depth=1
	movzbl	-1(%r15), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB95_37
# %bb.38:                               #   in Loop: Header=BB95_11 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI95_0(,%rax,8)
.LBB95_39:                              #   in Loop: Header=BB95_11 Depth=1
	shrq	$3, %rdx
	jmp	.LBB95_44
.LBB95_43:                              #   in Loop: Header=BB95_11 Depth=1
	movq	-17(%r15), %rdx
	jmp	.LBB95_44
.LBB95_41:                              #   in Loop: Header=BB95_11 Depth=1
	movzwl	-5(%r15), %edx
	jmp	.LBB95_44
.LBB95_42:                              #   in Loop: Header=BB95_11 Depth=1
	movl	-9(%r15), %edx
	jmp	.LBB95_44
.LBB95_40:                              #   in Loop: Header=BB95_11 Depth=1
	movzbl	-3(%r15), %edx
	jmp	.LBB95_44
.LBB95_37:                              #   in Loop: Header=BB95_11 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB95_44:                              #   in Loop: Header=BB95_11 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addReplyBulkCBuffer
	movq	%rbx, %rdi
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	addReplyDouble
	movq	%r15, %rdi
	callq	sdsfree
	movzbl	(%r12), %eax
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB95_48
# %bb.45:                               #   in Loop: Header=BB95_11 Depth=1
	cmpb	$5, %al
	jne	.LBB95_47
# %bb.46:                               #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	testq	%rax, %rax
	jne	.LBB95_51
	jmp	.LBB95_50
	.p2align	4, 0x90
.LBB95_48:                              #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB95_50
.LBB95_51:                              #   in Loop: Header=BB95_11 Depth=1
	leaq	2(%r14), %rax
	addq	$-1, -64(%rbp)
	jne	.LBB95_11
	jmp	.LBB95_52
.LBB95_54:
	movq	shared+104(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB95_53
.LBB95_3:
	movq	shared+104(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB95_53
.LBB95_50:
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	callq	dbDelete
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	movq	%r13, %rdx
	callq	notifyKeyspaceEvent
.LBB95_52:
	xorl	%eax, %eax
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	setne	%al
	orq	%rax, %r14
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	setDeferredMultiBulkLength
.LBB95_53:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB95_28:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$3210, %esi             # imm = 0xC8A
	jmp	.LBB95_29
.LBB95_32:
	movl	$.L.str.58, %edx
	movl	$.L.str.1, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$3213, %r8d             # imm = 0xC8D
	jmp	.LBB95_33
.LBB95_47:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
.LBB95_29:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB95_14:
	movl	$.L.str.15, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3185, %r8d             # imm = 0xC71
	jmp	.LBB95_33
.LBB95_16:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3186, %r8d             # imm = 0xC72
	jmp	.LBB95_33
.LBB95_26:
	movl	$.L.str.57, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3206, %r8d             # imm = 0xC86
	jmp	.LBB95_33
.LBB95_21:
	movl	$.L.str.4, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3194, %r8d             # imm = 0xC7A
.LBB95_33:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end95:
	.size	genericZpopCommand, .Lfunc_end95-genericZpopCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI95_0:
	.quad	.LBB95_39
	.quad	.LBB95_40
	.quad	.LBB95_41
	.quad	.LBB95_42
	.quad	.LBB95_43
                                        # -- End function
	.text
	.globl	zpopminCommand          # -- Begin function zpopminCommand
	.p2align	4, 0x90
	.type	zpopminCommand,@function
zpopminCommand:                         # @zpopminCommand
# %bb.0:
	movl	64(%rdi), %eax
	cmpl	$4, %eax
	jl	.LBB96_1
# %bb.5:
	movq	shared+128(%rip), %rsi
	jmp	addReply                # TAILCALL
.LBB96_1:
	movq	72(%rdi), %rcx
	leaq	8(%rcx), %rsi
	cmpl	$3, %eax
	jne	.LBB96_2
# %bb.3:
	movq	16(%rcx), %r9
	jmp	.LBB96_4
.LBB96_2:
	xorl	%r9d, %r9d
.LBB96_4:
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	genericZpopCommand      # TAILCALL
.Lfunc_end96:
	.size	zpopminCommand, .Lfunc_end96-zpopminCommand
                                        # -- End function
	.globl	zpopmaxCommand          # -- Begin function zpopmaxCommand
	.p2align	4, 0x90
	.type	zpopmaxCommand,@function
zpopmaxCommand:                         # @zpopmaxCommand
# %bb.0:
	movl	64(%rdi), %eax
	cmpl	$4, %eax
	jl	.LBB97_1
# %bb.5:
	movq	shared+128(%rip), %rsi
	jmp	addReply                # TAILCALL
.LBB97_1:
	movq	72(%rdi), %rcx
	leaq	8(%rcx), %rsi
	cmpl	$3, %eax
	jne	.LBB97_2
# %bb.3:
	movq	16(%rcx), %r9
	jmp	.LBB97_4
.LBB97_2:
	xorl	%r9d, %r9d
.LBB97_4:
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	jmp	genericZpopCommand      # TAILCALL
.Lfunc_end97:
	.size	zpopmaxCommand, .Lfunc_end97-zpopmaxCommand
                                        # -- End function
	.globl	blockingGenericZpopCommand # -- Begin function blockingGenericZpopCommand
	.p2align	4, 0x90
	.type	blockingGenericZpopCommand,@function
blockingGenericZpopCommand:             # @blockingGenericZpopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movslq	64(%rdi), %rcx
	movq	-8(%rax,%rcx,8), %rsi
	leaq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getTimeoutFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB98_18
# %bb.1:
	movl	64(%r15), %ecx
	cmpl	$3, %ecx
	jl	.LBB98_15
# %bb.2:
	movl	$1, %ebx
	jmp	.LBB98_3
	.p2align	4, 0x90
.LBB98_11:                              #   in Loop: Header=BB98_3 Depth=1
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB98_14
	jmp	.LBB98_13
	.p2align	4, 0x90
.LBB98_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB98_14
# %bb.4:                                #   in Loop: Header=BB98_3 Depth=1
	movl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$15, %edx
	cmpl	$3, %edx
	jne	.LBB98_5
# %bb.7:                                #   in Loop: Header=BB98_3 Depth=1
	shrb	$4, %cl
	cmpb	$7, %cl
	je	.LBB98_11
# %bb.8:                                #   in Loop: Header=BB98_3 Depth=1
	cmpb	$5, %cl
	jne	.LBB98_10
# %bb.9:                                #   in Loop: Header=BB98_3 Depth=1
	movq	8(%rax), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	testq	%rax, %rax
	jne	.LBB98_13
.LBB98_14:                              #   in Loop: Header=BB98_3 Depth=1
	addq	$1, %rbx
	movslq	64(%r15), %rcx
	leaq	-1(%rcx), %rax
	cmpq	%rax, %rbx
	jl	.LBB98_3
.LBB98_15:
	testb	$8, 160(%r15)
	jne	.LBB98_16
# %bb.17:
	movq	72(%r15), %rdx
	addq	$8, %rdx
	addl	$-2, %ecx
	movq	-32(%rbp), %r8
	movq	$0, (%rsp)
	movq	%r15, %rdi
	movl	$5, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r9d, %r9d
	callq	blockForKeys
	jmp	.LBB98_18
.LBB98_16:
	movq	shared+88(%rip), %rsi
	jmp	.LBB98_6
.LBB98_5:
	movq	shared+112(%rip), %rsi
.LBB98_6:
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB98_18
.LBB98_13:
	movl	%ebx, %ebx
	shlq	$3, %rbx
	movq	72(%r15), %rsi
	addq	%rbx, %rsi
	movq	%r15, %rdi
	movl	$1, %edx
	movl	%r14d, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	genericZpopCommand
	cmpl	$1, %r14d
	movl	$shared+352, %eax
	movl	$shared+344, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rdx
	movq	72(%r15), %rax
	movq	(%rax,%rbx), %rcx
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
.LBB98_18:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB98_10:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end98:
	.size	blockingGenericZpopCommand, .Lfunc_end98-blockingGenericZpopCommand
                                        # -- End function
	.globl	bzpopminCommand         # -- Begin function bzpopminCommand
	.p2align	4, 0x90
	.type	bzpopminCommand,@function
bzpopminCommand:                        # @bzpopminCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	blockingGenericZpopCommand # TAILCALL
.Lfunc_end99:
	.size	bzpopminCommand, .Lfunc_end99-bzpopminCommand
                                        # -- End function
	.globl	bzpopmaxCommand         # -- Begin function bzpopmaxCommand
	.p2align	4, 0x90
	.type	bzpopmaxCommand,@function
bzpopmaxCommand:                        # @bzpopmaxCommand
# %bb.0:
	movl	$1, %esi
	jmp	blockingGenericZpopCommand # TAILCALL
.Lfunc_end100:
	.size	bzpopmaxCommand, .Lfunc_end100-bzpopmaxCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"!isnan(score)"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_zset.c"
	.size	.L.str.1, 74

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"x && curscore == x->score && sdscmp(x->ele,ele) == 0"
	.size	.L.str.2, 53

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"x != NULL"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"sptr != NULL"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ziplistGet(sptr,&vstr,&vlen,&vlong)"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ziplistGet(eptr,&vstr,&vlen,&vlong)"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"*eptr != NULL && *sptr != NULL"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_sptr != NULL"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_eptr != NULL"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"p != NULL"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"(eptr = ziplistPrev(zl,sptr)) != NULL"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(sptr = ziplistNext(zl,eptr)) != NULL"
	.size	.L.str.12, 38

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unknown sorted set encoding"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unknown target encoding"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"eptr != NULL"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dictAdd(zs->dict,ele,&node->score) == DICT_OK"
	.size	.L.str.16, 46

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dictAdd(zs->dict,ele,&znode->score) == DICT_OK"
	.size	.L.str.17, 47

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"retval"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"rank != 0"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"resulting score is not a number (NaN)"
	.size	.L.str.20, 38

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"nx"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"xx"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ch"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"incr"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"XX and NX options at the same time are not compatible"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"INCR option supports a single increment-element pair"
	.size	.L.str.26, 53

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"zincr"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"zadd"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"zrem"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"del"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"min or max is not a float"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"min or max not valid string range item"
	.size	.L.str.32, 39

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"zremrangebyrank"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"zremrangebyscore"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"zremrangebylex"
	.size	.L.str.35, 15

	.type	.LzremrangeGenericCommand.event,@object # @zremrangeGenericCommand.event
	.section	.rodata,"a",@progbits
	.p2align	4
.LzremrangeGenericCommand.event:
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.size	.LzremrangeGenericCommand.event, 24

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Unknown set encoding"
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"it->zl.sptr != NULL"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Unsupported type"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ziplistGet(it->zl.eptr,&val->estr,&val->elen,&val->ell)"
	.size	.L.str.39, 56

	.type	setAccumulatorDictType,@object # @setAccumulatorDictType
	.data
	.globl	setAccumulatorDictType
	.p2align	3
setAccumulatorDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	0
	.quad	0
	.size	setAccumulatorDictType, 48

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"at least 1 input key is needed for ZUNIONSTORE/ZINTERSTORE"
	.size	.L.str.40, 59

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"weights"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"weight value is not a float"
	.size	.L.str.42, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"aggregate"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"sum"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"min"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"max"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Unknown operator"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"zunionstore"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"zinterstore"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"withscores"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"eptr != NULL && sptr != NULL"
	.size	.L.str.51, 29

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"ln != NULL"
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"limit"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"zslValueLteMax(score,&range)"
	.size	.L.str.54, 29

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"zzlLexValueLteMax(eptr,&range)"
	.size	.L.str.55, 31

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"sdsEncodedObject(ele)"
	.size	.L.str.56, 22

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"zln != NULL"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"zsetDel(zobj,ele)"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"zpopmin"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"zpopmax"
	.size	.L.str.60, 8

	.type	.LgenericZpopCommand.events,@object # @genericZpopCommand.events
	.section	.rodata,"a",@progbits
	.p2align	4
.LgenericZpopCommand.events:
	.quad	.L.str.59
	.quad	.L.str.60
	.size	.LgenericZpopCommand.events, 16

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"Unknown ZUNION/INTER aggregate type"
	.size	.L.str.61, 36

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
