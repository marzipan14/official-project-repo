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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 24(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movups	%xmm0, 40(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rcx
	cmpq	$1024, %rcx             # imm = 0x400
	jne	.LBB1_1
# %bb.2:
	movq	$0, 16(%rax)
	movq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB3_2
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	24(%rbx), %r15
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testq	%r15, %r15
	jne	.LBB3_1
.LBB3_2:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	callq	random
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testl	$49152, %eax            # imm = 0xC000
	jne	.LBB4_4
# %bb.1:                                # %.preheader
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	callq	random
	movl	$42, __A_VARIABLE(%rip)
	testl	$49152, %eax            # imm = 0xC000
	je	.LBB4_2
# %bb.3:
	movl	$64, %eax
	cmpl	$63, %ebx
	ja	.LBB4_5
.LBB4_4:
	movl	%ebx, %eax
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdi, %r13
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_41
# %bb.1:
	movq	(%r13), %rbx
	movslq	24(%r13), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jle	.LBB5_19
# %bb.2:
	movl	%r15d, %eax
	movq	%r13, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	leaq	-1(%r15), %r13
	movl	%eax, %eax
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	je	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-336(%rbp,%r15,4), %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	movl	%r14d, -340(%rbp,%r15,4)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -72(%rbp)         # 8-byte Spill
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_14
# %bb.6:                                # %.preheader4
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	(%rbx,%r13), %r12
	addq	$24, %r12
	jmp	.LBB5_9
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:                                #   in Loop: Header=BB5_9 Depth=2
	movq	%rax, %rcx
	addl	32(%rbx,%r13), %r14d
	movl	%r14d, -340(%rbp,%r15,4)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%r13), %r12
	addq	$24, %r12
	movq	24(%rax,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
	testq	%rax, %rax
	je	.LBB5_15
.LBB5_9:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB5_7
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB5_14
	jp	.LBB5_14
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=2
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	sdscmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB5_18
# %bb.12:                               #   in Loop: Header=BB5_9 Depth=2
	movq	(%r12), %rax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB5_8
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rcx
.LBB5_15:                               #   in Loop: Header=BB5_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
.LBB5_16:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, -856(%rbp,%r15,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %r15
	movq	-64(%rbp), %r13         # 8-byte Reload
	jl	.LBB5_19
# %bb.17:                               #   in Loop: Header=BB5_3 Depth=1
	movl	24(%r13), %eax
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB5_3
.LBB5_18:                               #   in Loop: Header=BB5_3 Depth=1
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB5_16
.LBB5_19:
	movl	$42, __A_VARIABLE(%rip)
	callq	random
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testl	$49152, %eax            # imm = 0xC000
	jne	.LBB5_23
# %bb.20:                               # %.preheader3
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB5_21:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	callq	random
	movl	$42, __A_VARIABLE(%rip)
	testl	$49152, %eax            # imm = 0xC000
	je	.LBB5_21
# %bb.22:
	movl	$64, %r15d
	cmpl	$63, %ebx
	ja	.LBB5_24
.LBB5_23:
	movl	%ebx, %r15d
.LBB5_24:
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r15d
	jle	.LBB5_31
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	movq	16(%r13), %rcx
	movl	%r15d, %edi
	subl	%esi, %edi
	movq	%rsi, %rdx
	testb	$1, %dil
	je	.LBB5_27
# %bb.26:
	movl	$0, -336(%rbp,%rsi,4)
	movq	%rax, -848(%rbp,%rsi,8)
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%rcx, 32(%rax,%rdx)
	leaq	1(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_27:
	addl	$1, %esi
	cmpl	%esi, %r15d
	je	.LBB5_30
# %bb.28:                               # %.preheader1
	movl	%r15d, %esi
	movq	%rdx, %rdi
	shlq	$4, %rdi
	addq	%rax, %rdi
	addq	$48, %rdi
	.p2align	4, 0x90
.LBB5_29:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -336(%rbp,%rdx,4)
	movq	%rax, -848(%rbp,%rdx,8)
	movq	%rcx, -16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -332(%rbp,%rdx,4)
	movq	%rax, -840(%rbp,%rdx,8)
	movq	%rcx, (%rdi)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rdi
	cmpl	%edx, %esi
	jne	.LBB5_29
.LBB5_30:
	movl	%r15d, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_31:
	movslq	%r15d, %r12
	movq	%r12, %r14
	shlq	$4, %r14
	leaq	24(%r14), %rdi
	callq	zmalloc
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rax)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	-336(%rbp), %r8d
	movl	%r8d, %r9d
	.p2align	4, 0x90
.LBB5_32:                               # =>This Inner Loop Header: Depth=1
	movq	-848(%rbp,%rdx,2), %rsi
	movq	24(%rsi,%rdx,4), %rbx
	movq	%rbx, 24(%rax,%rdx,4)
	movq	%rax, 24(%rsi,%rdx,4)
	movq	32(%rsi,%rdx,4), %rbx
	movl	%r8d, %edi
	subl	%r9d, %edi
	subq	%rdi, %rbx
	movq	%rbx, 32(%rax,%rdx,4)
	addl	$1, %edi
	movq	%rdi, 32(%rsi,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	jge	.LBB5_34
# %bb.33:                               #   in Loop: Header=BB5_32 Depth=1
	movl	-332(%rbp,%rdx), %r9d
	addq	$4, %rdx
	addq	$1, %rcx
	jmp	.LBB5_32
.LBB5_34:
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r15d
	jge	.LBB5_40
# %bb.35:
	movl	%ecx, %esi
	subl	%r15d, %esi
	movq	%r12, %rdx
	notq	%rdx
	testb	$1, %sil
	je	.LBB5_37
# %bb.36:
	movq	-848(%rbp,%r12,8), %rsi
	addq	$1, 32(%rsi,%r14)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_37:
	addq	%rcx, %rdx
	je	.LBB5_40
# %bb.38:                               # %.preheader
	movq	%r12, %rdx
	shlq	$4, %rdx
	.p2align	4, 0x90
.LBB5_39:                               # =>This Inner Loop Header: Depth=1
	movq	-848(%rbp,%r12,8), %rsi
	addq	$1, 32(%rsi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-840(%rbp,%r12,8), %rsi
	addq	$1, 48(%rsi,%rdx)
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rdx
	cmpq	%rcx, %r12
	jl	.LBB5_39
.LBB5_40:
	movq	-848(%rbp), %rcx
	xorl	%edx, %edx
	cmpq	(%r13), %rcx
	cmovneq	%rcx, %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rax), %rcx
	leaq	8(%r13), %rdx
	testq	%rcx, %rcx
	leaq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rdx, %rcx
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_41:
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rcx
	cmpq	%r8, %r11
	jge	.LBB6_6
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%r11,8), %r9
	cmpq	%rsi, -8(%r9,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rdx, %rcx
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_11
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	movl	%eax, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addl	$-1, %eax
	addq	$-16, %rdx
	cmpq	$2, %rcx
	jg	.LBB6_8
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_11:
	addq	$-1, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movslq	24(%rdi), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jle	.LBB7_12
# %bb.1:
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_10:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB7_11:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rbx, -600(%rbp,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r12
	movq	-64(%rbp), %r12         # 8-byte Reload
	jle	.LBB7_12
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	leaq	-1(%r12), %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_10
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	leaq	(%rbx,%r13), %r15
	addq	$24, %r15
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB7_9:                                #   in Loop: Header=BB7_4 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%r13), %r15
	addq	$24, %r15
	movq	24(%rax,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_10
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB7_8
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_10
	jp	.LBB7_10
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=2
	movq	(%rax), %rdi
	movq	%r14, %rsi
	callq	sdscmp
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB7_11
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=2
	movq	(%r15), %rax
	jmp	.LBB7_9
.LBB7_12:
	movq	24(%rbx), %r12
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB7_19
# %bb.13:
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_19
	jp	.LBB7_19
# %bb.14:
	movq	(%r12), %rdi
	movq	%r14, %rsi
	callq	sdscmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_19
# %bb.15:
	leaq	-592(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	zslDeleteNode
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB7_16
# %bb.17:
	movq	%r12, (%rax)
	jmp	.LBB7_18
.LBB7_16:
	movq	(%r12), %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB7_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
.LBB7_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movslq	24(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jle	.LBB8_12
# %bb.1:
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_10:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_11:                               #   in Loop: Header=BB8_2 Depth=1
	movq	%rbx, -600(%rbp,%r15,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r15
	movq	-64(%rbp), %r15         # 8-byte Reload
	jle	.LBB8_12
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	leaq	-1(%r15), %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_10
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	(%rbx,%r13), %r14
	addq	$24, %r14
	jmp	.LBB8_4
	.p2align	4, 0x90
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_9:                                #   in Loop: Header=BB8_4 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%r13), %r14
	addq	$24, %r14
	movq	24(%rax,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_10
.LBB8_4:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB8_8
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_10
	jp	.LBB8_10
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=2
	movq	(%rax), %rdi
	movq	%r12, %rsi
	callq	sdscmp
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB8_11
# %bb.7:                                #   in Loop: Header=BB8_4 Depth=2
	movq	(%r14), %rax
	jmp	.LBB8_9
.LBB8_12:
	movq	24(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB8_22
# %bb.13:
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_22
	jp	.LBB8_22
# %bb.14:
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	sdscmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_22
# %bb.15:
	movq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_17
# %bb.16:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	8(%rax), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB8_20
.LBB8_17:
	movq	24(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_19
# %bb.18:
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB8_20
.LBB8_19:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r15)
	jmp	.LBB8_21
.LBB8_20:
	leaq	-592(%rbp), %rdx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	zslDeleteNode
	movq	(%r15), %rsi
	movq	%rbx, %rdi
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	zslInsert
	movq	%rax, %rbx
	movq	$0, (%r15)
	xorl	%edi, %edi
	callq	sdsfree
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
.LBB8_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_22:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB11_8
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_4
	jp	.LBB11_4
# %bb.2:
	cmpl	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_8
# %bb.3:
	cmpl	$0, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_8
.LBB11_4:
	movq	8(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_8
# %bb.5:
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	ucomisd	%xmm1, %xmm2
	seta	%cl
	setae	%dl
	cmpl	$0, 16(%rsi)
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB11_8
# %bb.6:
	movq	(%rdi), %rcx
	movq	24(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_8
# %bb.7:
	xorl	%eax, %eax
	xorl	%edx, %edx
	ucomisd	8(%rcx), %xmm0
	seta	%al
	setae	%dl
	cmpl	$0, 20(%rsi)
	cmovel	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %eax
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB12_8
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_4
	jp	.LBB12_4
# %bb.2:
	cmpl	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_8
# %bb.3:
	cmpl	$0, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_8
.LBB12_4:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_8
# %bb.5:
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movl	16(%rsi), %r9d
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm1, %xmm2
	seta	%al
	setae	%cl
	testl	%r9d, %r9d
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB12_8
# %bb.6:
	movq	(%rdi), %rax
	movq	24(%rax), %r10
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB12_8
# %bb.7:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	ucomisd	8(%r10), %xmm0
	movl	20(%rsi), %r8d
	seta	%dl
	setae	%cl
	testl	%r8d, %r8d
	cmovel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB12_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%rdi), %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r11, %r11
	jg	.LBB12_11
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_17
.LBB12_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB12_15:                              #   in Loop: Header=BB12_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r10
	jle	.LBB12_16
.LBB12_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_12 Depth 2
	movq	%r11, %r10
	addq	$-1, %r11
	movq	%r11, %rcx
	shlq	$4, %rcx
	movq	24(%rax,%rcx), %rdx
	.p2align	4, 0x90
.LBB12_12:                              #   Parent Loop BB12_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB12_15
# %bb.13:                               #   in Loop: Header=BB12_12 Depth=2
	movsd	8(%rdx), %xmm2          # xmm2 = mem[0],zero
	xorl	%esi, %esi
	xorl	%edi, %edi
	ucomisd	%xmm1, %xmm2
	seta	%sil
	setae	%dil
	testl	%r9d, %r9d
	cmovel	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	jne	.LBB12_15
# %bb.14:                               #   in Loop: Header=BB12_12 Depth=2
	movq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdx,%rcx), %rdx
	jmp	.LBB12_12
.LBB12_16:
	movq	24(%rax), %r10
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB12_19
.LBB12_17:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	ucomisd	8(%r10), %xmm0
	seta	%cl
	setae	%al
	testl	%r8d, %r8d
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	%cl, %cl
	cmovneq	%r10, %rax
	jmp	.LBB12_18
.LBB12_19:
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
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB13_8
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_4
	jp	.LBB13_4
# %bb.2:
	cmpl	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_8
# %bb.3:
	cmpl	$0, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_8
.LBB13_4:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_8
# %bb.5:
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movl	16(%rsi), %r8d
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm2
	seta	%al
	setae	%cl
	testl	%r8d, %r8d
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB13_8
# %bb.6:
	movq	(%rdi), %rdx
	movq	24(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_8
# %bb.7:
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	ucomisd	8(%rax), %xmm1
	movl	20(%rsi), %r11d
	seta	%cl
	setae	%r9b
	testl	%r11d, %r11d
	cmovel	%r9d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB13_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%rdi), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	jg	.LBB13_10
.LBB13_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB13_18
# %bb.16:
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%cl
	setae	%al
	testl	%r8d, %r8d
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	%cl, %cl
	cmovneq	%rdx, %rax
	jmp	.LBB13_17
.LBB13_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB13_17:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB13_14:                              #   in Loop: Header=BB13_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r10
	jle	.LBB13_15
.LBB13_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_13 Depth 2
	movq	%r9, %r10
	addq	$-1, %r9
	movq	%r9, %rsi
	shlq	$4, %rsi
	movq	24(%rdx,%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB13_14
# %bb.11:                               #   in Loop: Header=BB13_10 Depth=1
	xorl	%edi, %edi
	xorl	%eax, %eax
	ucomisd	8(%rcx), %xmm1
	seta	%dil
	setae	%al
	testl	%r11d, %r11d
	cmovel	%eax, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %dil
	jne	.LBB13_14
	.p2align	4, 0x90
.LBB13_13:                              #   Parent Loop BB13_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB13_14
# %bb.12:                               #   in Loop: Header=BB13_13 Depth=2
	xorl	%eax, %eax
	xorl	%edi, %edi
	ucomisd	8(%rcx), %xmm1
	seta	%al
	setae	%dil
	testl	%r11d, %r11d
	cmovel	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB13_13
	jmp	.LBB13_14
.LBB13_18:
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
	subq	$520, %rsp              # imm = 0x208
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movslq	24(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jg	.LBB14_1
.LBB14_8:
	movq	24(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB14_11
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	movsd	8(%r12), %xmm0          # xmm0 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	8(%r14), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 20(%r12)
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB14_11
# %bb.10:                               #   in Loop: Header=BB14_9 Depth=1
	movq	24(%r14), %r13
	movq	%r15, %rdi
	movq	%r14, %rsi
	leaq	-560(%rbp), %rdx
	callq	zslDeleteNode
	movq	(%r14), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictDelete
	movq	(%r14), %rdi
	callq	sdsfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	testq	%r13, %r13
	jne	.LBB14_9
.LBB14_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB14_7:                               #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, -568(%rbp,%r9,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r9
	jle	.LBB14_8
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	movq	%r8, %r9
	addq	$-1, %r8
	movq	%r8, %rsi
	shlq	$4, %rsi
	movq	24(%rax,%rsi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB14_6
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	ucomisd	8(%rdi), %xmm0
	movl	16(%r12), %ebx
	.p2align	4, 0x90
.LBB14_4:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	seta	%dl
	setae	%cl
	testl	%ebx, %ebx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=2
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdi,%rsi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB14_6
# %bb.3:                                #   in Loop: Header=BB14_4 Depth=2
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	ucomisd	8(%rdi), %xmm0
	jmp	.LBB14_4
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
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	(%rdi), %rbx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movslq	24(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jg	.LBB15_1
.LBB15_14:
	movq	24(%rbx), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testq	%r14, %r14
	je	.LBB15_24
# %bb.15:
	leaq	-592(%rbp), %r15
	.p2align	4, 0x90
.LBB15_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movl	20(%r13), %ebx
	movq	8(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmpq	%rdi, %rsi
	je	.LBB15_22
# %bb.17:                               #   in Loop: Header=BB15_16 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB15_22
# %bb.18:                               #   in Loop: Header=BB15_16 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB15_22
# %bb.19:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB15_22
# %bb.20:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
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
	testl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB15_24
# %bb.23:                               #   in Loop: Header=BB15_16 Depth=1
	movq	24(%r14), %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	zslDeleteNode
	movq	(%r14), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictDelete
	movq	(%r14), %rdi
	callq	sdsfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testq	%rbx, %rbx
	jne	.LBB15_16
.LBB15_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB15_12:                              #   in Loop: Header=BB15_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB15_13:                              #   in Loop: Header=BB15_1 Depth=1
	movq	%rbx, -600(%rbp,%r8,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r8
	movq	%r9, %r8
	jle	.LBB15_14
.LBB15_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	leaq	-1(%r8), %r9
	movq	%r9, %r12
	shlq	$4, %r12
	movq	24(%rbx,%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_12
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	(%rbx,%r12), %r15
	addq	$24, %r15
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB15_3:                               #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdi
	movl	16(%r13), %r14d
	movq	(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB15_4
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=2
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB15_10
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=2
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB15_10
# %bb.7:                                #   in Loop: Header=BB15_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB15_10
# %bb.8:                                #   in Loop: Header=BB15_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB15_10
# %bb.9:                                #   in Loop: Header=BB15_3 Depth=2
	callq	sdscmp
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
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
	testl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB15_13
# %bb.11:                               #   in Loop: Header=BB15_3 Depth=2
	movq	(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%r12), %r15
	addq	$24, %r15
	movq	24(%rbx,%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB15_3
	jmp	.LBB15_12
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB16_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB16_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB16_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB16_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB17_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB17_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB17_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB17_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$536, %rsp              # imm = 0x218
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	(%rdi), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movslq	24(%rdi), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	jle	.LBB18_1
# %bb.2:
	movl	%esi, %r10d
	xorl	%ebx, %ebx
	movq	%rcx, %rdi
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	movq	%rdi, %rcx
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	movq	%rcx, -584(%rbp,%r9,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdi
	movq	%r14, %rbx
	cmpq	$1, %r9
	movq	%r8, %r9
	jle	.LBB18_9
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_4 Depth 2
	leaq	-1(%r9), %r8
	movq	%r8, %rax
	shlq	$4, %rax
	.p2align	4, 0x90
.LBB18_4:                               #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rdi,%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=2
	movq	%rbx, %r14
	movq	%rdi, %rcx
	movq	32(%rdi,%rax), %rbx
	addq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rbx
	jae	.LBB18_8
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=2
	movq	%rsi, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_4
.LBB18_1:
	xorl	%r14d, %r14d
.LBB18_9:
	movq	24(%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB18_10
# %bb.11:
	movl	%edx, %r15d
	addq	$1, %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB18_12:                              # =>This Inner Loop Header: Depth=1
	leaq	(%r14,%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB18_14
# %bb.13:                               #   in Loop: Header=BB18_12 Depth=1
	movq	24(%rbx), %r13
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	leaq	-576(%rbp), %rdx
	callq	zslDeleteNode
	movq	(%rbx), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictDelete
	movq	(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	testq	%r13, %r13
	jne	.LBB18_12
	jmp	.LBB18_14
.LBB18_10:
	xorl	%r12d, %r12d
.LBB18_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$536, %rsp              # imm = 0x218
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
	subq	$24, %rsp
	movq	(%rdi), %r12
	movslq	24(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB19_17
# %bb.1:
	movq	%rsi, %r14
	xorl	%ebx, %ebx
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB19_3
	.p2align	4, 0x90
.LBB19_2:                               #   in Loop: Header=BB19_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, -64(%rbp)           # 8-byte Folded Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jle	.LBB19_17
.LBB19_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
	leaq	-1(%rcx), %r13
	movq	%r13, -56(%rbp)         # 8-byte Spill
	shlq	$4, %r13
	movq	24(%r12,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	je	.LBB19_12
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	leaq	(%r12,%r13), %r15
	addq	$24, %r15
	jmp	.LBB19_7
	.p2align	4, 0x90
.LBB19_5:                               #   in Loop: Header=BB19_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB19_6:                               #   in Loop: Header=BB19_7 Depth=2
	movq	%rax, %rcx
	addq	32(%r12,%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%r13), %r15
	addq	$24, %r15
	movq	24(%rax,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r12
	testq	%rax, %rax
	je	.LBB19_13
.LBB19_7:                               #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB19_5
# %bb.8:                                #   in Loop: Header=BB19_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
	jne	.LBB19_12
	jp	.LBB19_12
# %bb.9:                                #   in Loop: Header=BB19_7 Depth=2
	movq	(%rax), %rdi
	movq	%r14, %rsi
	callq	sdscmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB19_16
# %bb.10:                               #   in Loop: Header=BB19_7 Depth=2
	movq	(%r15), %rax
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB19_6
	.p2align	4, 0x90
.LBB19_12:                              #   in Loop: Header=BB19_3 Depth=1
	movq	%r12, %rcx
.LBB19_13:                              #   in Loop: Header=BB19_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r12
.LBB19_14:                              #   in Loop: Header=BB19_3 Depth=1
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_2
# %bb.15:                               #   in Loop: Header=BB19_3 Depth=1
	movq	%r14, %rsi
	callq	sdscmp
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_2
	jmp	.LBB19_18
.LBB19_16:                              #   in Loop: Header=BB19_3 Depth=1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB19_14
.LBB19_17:
	xorl	%ebx, %ebx
.LBB19_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
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
	movq	(%rdi), %r10
	movslq	24(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_3:                               #   in Loop: Header=BB20_1 Depth=1
	movq	%r10, %rax
	movq	%rdi, %rcx
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r10
	movq	%rcx, %rdi
	cmpq	%rsi, %rcx
	je	.LBB20_8
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jle	.LBB20_7
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	addq	$-1, %r8
	movq	%r8, %r9
	shlq	$4, %r9
	movq	24(%r10,%r9), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB20_3
	.p2align	4, 0x90
.LBB20_4:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r10, %rax
	movq	%rdi, %rcx
	movq	32(%r10,%r9), %rdi
	addq	%rcx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	ja	.LBB20_6
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=2
	movq	%rdx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdx,%r9), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %rax
	movq	%rdi, %rcx
	testq	%rdx, %rdx
	jne	.LBB20_4
	jmp	.LBB20_6
.LBB20_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB20_8:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rsi
	callq	sdsnewlen
	movq	%rax, (%r14)
.LBB21_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB22_1
# %bb.2:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_4
# %bb.3:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB22_4
.LBB22_1:
	movq	%rdi, %rax
.LBB22_4:
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB22_7
# %bb.5:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_7
# %bb.6:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB22_7:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdx, %rbx
	movl	$240, %ecx
	movl	(%rdi), %edx
	andl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpl	$16, %edx
	je	.LBB23_12
# %bb.1:
	movq	%rsi, %r15
	andl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	je	.LBB23_12
# %bb.2:
	leaq	8(%rbx), %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	leaq	16(%rbx), %rdx
	movq	%rbx, %rsi
	callq	zslParseLexRangeItem
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB23_4
# %bb.3:
	leaq	20(%rbx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	zslParseLexRangeItem
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB23_12
.LBB23_4:
	movq	(%rbx), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB23_5
# %bb.6:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_8
# %bb.7:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB23_8
.LBB23_5:
	movq	%rdi, %rax
.LBB23_8:
	movq	(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB23_11
# %bb.9:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_11
# %bb.10:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB23_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB23_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB24_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB24_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB24_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB24_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB24_7
# %bb.6:
	callq	sdscmp
	jmp	.LBB24_7
.LBB24_1:
	xorl	%eax, %eax
.LBB24_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
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
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	movq	8(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB25_1
# %bb.3:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB25_2
# %bb.4:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB25_2
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	je	.LBB25_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB25_7
# %bb.8:
	callq	sdscmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB25_30
	jmp	.LBB25_9
.LBB25_1:
	xorl	%eax, %eax
.LBB25_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_10
.LBB25_12:
	movq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_13
# %bb.14:
	movq	(%rax), %rdi
	movl	16(%rbx), %r12d
	movq	(%rbx), %rsi
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmpq	%rdi, %rsi
	je	.LBB25_20
# %bb.15:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB25_20
# %bb.16:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB25_20
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB25_20
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB25_20
# %bb.19:
	callq	sdscmp
.LBB25_20:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB25_30
# %bb.21:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_30
# %bb.22:
	movq	(%rax), %rdi
	movl	20(%rbx), %r14d
	movq	8(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB25_23
# %bb.24:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB25_29
# %bb.25:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB25_29
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB25_29
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB25_29
# %bb.28:
	callq	sdscmp
	jmp	.LBB25_29
.LBB25_10:
	xorl	%r15d, %r15d
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_30
# %bb.11:
	cmpl	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_30
	jmp	.LBB25_12
.LBB25_13:
	xorl	%r15d, %r15d
	jmp	.LBB25_30
.LBB25_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB25_30
.LBB25_23:
	xorl	%eax, %eax
.LBB25_29:
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r15d, %r15d
	testl	%eax, %eax
	setle	%r15b
	testl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_1
# %bb.2:
	movq	(%r14), %rbx
	movslq	24(%r14), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jg	.LBB26_3
.LBB26_15:
	movq	24(%rbx), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB26_25
# %bb.16:
	movq	(%r14), %rdi
	movl	20(%r15), %ebx
	movq	8(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB26_17
# %bb.18:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB26_23
# %bb.19:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB26_23
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB26_23
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB26_23
# %bb.22:
	callq	sdscmp
	jmp	.LBB26_23
	.p2align	4, 0x90
.LBB26_14:                              #   in Loop: Header=BB26_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r9
	jle	.LBB26_15
.LBB26_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
	movq	%r8, %r9
	addq	$-1, %r8
	movq	%r8, %r13
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_14
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	(%rbx,%r13), %r14
	addq	$24, %r14
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB26_5:                               #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdi
	movl	16(%r15), %r12d
	movq	(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB26_6
# %bb.7:                                #   in Loop: Header=BB26_5 Depth=2
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB26_12
# %bb.8:                                #   in Loop: Header=BB26_5 Depth=2
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB26_12
# %bb.9:                                #   in Loop: Header=BB26_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB26_12
# %bb.10:                               #   in Loop: Header=BB26_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB26_12
# %bb.11:                               #   in Loop: Header=BB26_5 Depth=2
	callq	sdscmp
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
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
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB26_14
# %bb.13:                               #   in Loop: Header=BB26_5 Depth=2
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%r13), %r14
	addq	$24, %r14
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB26_5
	jmp	.LBB26_14
.LBB26_1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %r14
.LBB26_24:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_1
# %bb.2:
	movq	(%r15), %rbx
	movslq	24(%r15), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jg	.LBB27_3
.LBB27_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB27_25
# %bb.16:
	movq	(%rbx), %rdi
	movl	16(%r14), %r15d
	movq	(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB27_17
# %bb.18:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB27_23
# %bb.19:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB27_23
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB27_23
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB27_23
# %bb.22:
	callq	sdscmp
	jmp	.LBB27_23
	.p2align	4, 0x90
.LBB27_14:                              #   in Loop: Header=BB27_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r9
	jle	.LBB27_15
.LBB27_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_5 Depth 2
	movq	%r8, %r9
	addq	$-1, %r8
	movq	%r8, %r13
	shlq	$4, %r13
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_14
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB27_3 Depth=1
	leaq	(%rbx,%r13), %r15
	addq	$24, %r15
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB27_5:                               #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdi
	movl	20(%r14), %r12d
	movq	8(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB27_6
# %bb.7:                                #   in Loop: Header=BB27_5 Depth=2
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB27_12
# %bb.8:                                #   in Loop: Header=BB27_5 Depth=2
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB27_12
# %bb.9:                                #   in Loop: Header=BB27_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB27_12
# %bb.10:                               #   in Loop: Header=BB27_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB27_12
# %bb.11:                               #   in Loop: Header=BB27_5 Depth=2
	callq	sdscmp
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
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
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB27_14
# %bb.13:                               #   in Loop: Header=BB27_5 Depth=2
	movq	(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%r13), %r15
	addq	$24, %r15
	movq	24(%rbx,%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB27_5
	jmp	.LBB27_14
.LBB27_1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
.LBB27_24:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB28_1
# %bb.3:
	leaq	-32(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_4
# %bb.5:
	movq	-32(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_1
# %bb.3:
	leaq	-24(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_4
# %bb.5:
	movq	-24(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB30_5
# %bb.1:
	movq	-40(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_2
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB32_2
# %bb.4:
	movq	%rdi, %r12
	callq	ziplistNext
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_7
# %bb.5:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB32_8
# %bb.6:
	movl	$.L.str.8, %edi
	movl	$.L.str.1, %esi
	movl	$793, %edx              # imm = 0x319
	jmp	.LBB32_3
.LBB32_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB32_8:
	movq	%rbx, (%r15)
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB33_2
# %bb.1:
	movq	%rdx, %r14
	cmpq	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB33_2
# %bb.4:
	movq	%rdi, %r12
	callq	ziplistPrev
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_7
# %bb.5:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB33_8
# %bb.6:
	movl	$.L.str.9, %edi
	movl	$.L.str.1, %esi
	movl	$812, %edx              # imm = 0x32C
	jmp	.LBB33_3
.LBB33_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB33_8:
	movq	%rax, (%r15)
	movq	%rbx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r14
	pushq	%rbx
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	ucomisd	8(%rsi), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB34_4
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_5
	jp	.LBB34_5
# %bb.2:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_4
# %bb.3:
	cmpl	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_4
.LBB34_5:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_4
# %bb.6:
	movq	%rax, %rdi
	callq	zzlGetScore
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	(%rbx), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 16(%rbx)
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB34_4
# %bb.7:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_10
# %bb.8:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %eax
	jmp	.LBB34_9
.LBB34_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB34_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB34_10:
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
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	zzlIsInRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB35_6
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB35_6
	.p2align	4, 0x90
.LBB35_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_8
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zzlGetScore
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	(%r14), %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, 16(%r14)
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB35_4
# %bb.5:                                #   in Loop: Header=BB35_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB35_2
.LBB35_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB35_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_4:
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%cl
	setae	%al
	cmpl	$0, 20(%r14)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	%cl, %cl
	cmovneq	%r12, %rax
	jmp	.LBB35_7
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
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$-2, %esi
	callq	ziplistIndex
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	zzlIsInRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB36_12
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB36_12
	.p2align	4, 0x90
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_3
# %bb.6:                                #   in Loop: Header=BB36_2 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB36_7
# %bb.8:                                #   in Loop: Header=BB36_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_11
# %bb.9:                                #   in Loop: Header=BB36_2 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_10
# %bb.5:                                #   in Loop: Header=BB36_2 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB36_2
.LBB36_7:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	ucomisd	(%r14), %xmm0
	seta	%cl
	setae	%al
	cmpl	$0, 16(%r14)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	%cl, %cl
	cmovneq	%rbx, %rax
	jmp	.LBB36_13
.LBB36_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB36_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_3:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$887, %edx              # imm = 0x377
	jmp	.LBB36_4
.LBB36_10:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$901, %edx              # imm = 0x385
.LBB36_4:
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	je	.LBB37_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB37_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB37_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r14, %rdx
	je	.LBB37_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	je	.LBB38_1
# %bb.2:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB38_7
# %bb.3:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB38_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r14, %rdx
	je	.LBB38_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	movq	8(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB39_1
# %bb.3:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB39_2
# %bb.4:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB39_2
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	je	.LBB39_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB39_7
# %bb.8:
	callq	sdscmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB39_22
	jmp	.LBB39_9
.LBB39_1:
	xorl	%eax, %eax
.LBB39_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB39_10
.LBB39_12:
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	ziplistIndex
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB39_22
# %bb.13:
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	zzlLexValueGteMin
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB39_22
# %bb.14:
	xorl	%r12d, %r12d
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB39_23
# %bb.15:
	movq	%rax, %rdi
	callq	ziplistGetObject
	movq	%rax, %r14
	movl	20(%r15), %r13d
	movq	8(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	je	.LBB39_21
# %bb.16:
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	cmpq	%r14, %rax
	je	.LBB39_21
# %bb.17:
	movq	shared+80968(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB39_21
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	cmpq	%r14, %rcx
	je	.LBB39_21
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB39_21
# %bb.20:
	movq	%r14, %rdi
	callq	sdscmp
	movl	%eax, %r12d
.LBB39_21:
	movl	%r12d, %eax
	shrl	$31, %eax
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	setle	%bl
	testl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB39_22
.LBB39_10:
	xorl	%ebx, %ebx
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB39_22
# %bb.11:
	cmpl	$0, 20(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB39_22
	jmp	.LBB39_12
.LBB39_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB39_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB39_23:
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
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	zzlIsInLexRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB40_13
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB40_13
	.p2align	4, 0x90
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	zzlLexValueGteMin
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB40_3
# %bb.11:                               #   in Loop: Header=BB40_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_15
# %bb.12:                               #   in Loop: Header=BB40_2 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB40_2
.LBB40_13:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB40_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB40_3:
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %r15
	movl	20(%r14), %r12d
	movq	8(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	je	.LBB40_4
# %bb.5:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%r15, %rcx
	je	.LBB40_10
# %bb.6:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB40_10
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r15, %rdx
	je	.LBB40_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB40_10
# %bb.9:
	movq	%r15, %rdi
	callq	sdscmp
	jmp	.LBB40_10
.LBB40_4:
	xorl	%eax, %eax
.LBB40_10:
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	jmp	.LBB40_14
.LBB40_15:
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
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	callq	zzlIsInLexRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB41_15
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB41_15
	.p2align	4, 0x90
.LBB41_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	ziplistGetObject
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %r13d
	movq	8(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rsi
	je	.LBB41_3
# %bb.4:                                #   in Loop: Header=BB41_2 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	je	.LBB41_9
# %bb.5:                                #   in Loop: Header=BB41_2 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB41_9
# %bb.6:                                #   in Loop: Header=BB41_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rbx, %rdx
	je	.LBB41_9
# %bb.7:                                #   in Loop: Header=BB41_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB41_9
# %bb.8:                                #   in Loop: Header=BB41_2 Depth=1
	movq	%rbx, %rdi
	callq	sdscmp
	jmp	.LBB41_9
	.p2align	4, 0x90
.LBB41_3:                               #   in Loop: Header=BB41_2 Depth=1
	xorl	%eax, %eax
.LBB41_9:                               #   in Loop: Header=BB41_2 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB41_10
# %bb.11:                               #   in Loop: Header=BB41_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_14
# %bb.12:                               #   in Loop: Header=BB41_2 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_17
# %bb.13:                               #   in Loop: Header=BB41_2 Depth=1
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB41_2
.LBB41_10:
	movq	%r12, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	zzlLexValueGteMin
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%r12, %rax
	jmp	.LBB41_16
.LBB41_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB41_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB41_17:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$991, %edx              # imm = 0x3DF
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB42_16
# %bb.1:
	movq	%rax, %r13
	.p2align	4, 0x90
.LBB42_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB42_17
# %bb.3:                                #   in Loop: Header=BB42_2 Depth=1
	movq	%rax, %rbx
	movzbl	-1(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r15, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	ziplistCompare
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB42_12
# %bb.14:                               #   in Loop: Header=BB42_2 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB42_2
# %bb.15:
	xorl	%r13d, %r13d
	jmp	.LBB42_16
.LBB42_12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB42_16
# %bb.13:
	movq	%rbx, %rdi
	callq	zzlGetScore
	movsd	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB44_1
# %bb.10:
	movq	%rbx, %r13
	subq	%r15, %r13
	movzbl	-1(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$16, %rsp
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%esi, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_16
# %bb.1:
	movq	%rax, %r12
	jmp	.LBB45_2
.LBB45_13:                              #   in Loop: Header=BB45_2 Depth=1
	movq	-17(%r14), %rdx
	.p2align	4, 0x90
.LBB45_14:                              #   in Loop: Header=BB45_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	zzlCompareElements
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB45_4
.LBB45_15:                              #   in Loop: Header=BB45_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_16
.LBB45_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_18
# %bb.3:                                #   in Loop: Header=BB45_2 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zzlGetScore
	ucomisd	-40(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB45_4
# %bb.5:                                #   in Loop: Header=BB45_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB45_15
	jp	.LBB45_15
# %bb.6:                                #   in Loop: Header=BB45_2 Depth=1
	movzbl	-1(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB45_7
# %bb.8:                                #   in Loop: Header=BB45_2 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI45_0(,%rax,8)
.LBB45_9:                               #   in Loop: Header=BB45_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB45_14
.LBB45_11:                              #   in Loop: Header=BB45_2 Depth=1
	movzwl	-5(%r14), %edx
	jmp	.LBB45_14
.LBB45_12:                              #   in Loop: Header=BB45_2 Depth=1
	movl	-9(%r14), %edx
	jmp	.LBB45_14
.LBB45_10:                              #   in Loop: Header=BB45_2 Depth=1
	movzbl	-3(%r14), %edx
	jmp	.LBB45_14
.LBB45_7:                               #   in Loop: Header=BB45_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB45_14
.LBB45_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	zzlInsertAt
	jmp	.LBB45_17
.LBB45_4:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	zzlInsertAt
	movl	$42, __A_VARIABLE(%rip)
.LBB45_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_18:
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
	.quad	.LBB45_9
	.quad	.LBB45_10
	.quad	.LBB45_11
	.quad	.LBB45_12
	.quad	.LBB45_13
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB46_2
# %bb.1:
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_2:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	zzlFirstInRange
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_9
# %bb.3:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB46_5
.LBB46_7:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB46_9
# %bb.8:
	movq	%rbx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB47_2
# %bb.1:
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB47_2:
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	zzlFirstInLexRange
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB47_18
# %bb.3:
	movq	%rax, %rbx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmpq	%rbx, %rsi
	je	.LBB47_12
# %bb.7:                                #   in Loop: Header=BB47_6 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	je	.LBB47_12
# %bb.8:                                #   in Loop: Header=BB47_6 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB47_12
# %bb.9:                                #   in Loop: Header=BB47_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rbx, %rdx
	je	.LBB47_12
# %bb.10:                               #   in Loop: Header=BB47_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	testq	%rax, %rax
	je	.LBB47_15
# %bb.14:                               #   in Loop: Header=BB47_6 Depth=1
	movq	-48(%rbp), %rbx
	jmp	.LBB47_6
.LBB47_15:
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB47_16
.LBB47_4:
	xorl	%r15d, %r15d
.LBB47_16:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB47_18
# %bb.17:
	movq	%r15, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB47_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	zzlDeleteRangeByLex, .Lfunc_end47-zzlDeleteRangeByLex
                                        # -- End function
	.globl	zzlDeleteRangeByRank    # -- Begin function zzlDeleteRangeByRank
	.p2align	4, 0x90
	.type	zzlDeleteRangeByRank,@function
zzlDeleteRangeByRank:                   # @zzlDeleteRangeByRank
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $esi killed $esi def $rsi
	subl	%esi, %edx
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB48_2
# %bb.1:
	movl	%edx, %eax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_2:
	addl	%esi, %esi
	addl	$-2, %esi
	addl	%edx, %edx
	callq	ziplistDeleteRange
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB49_2
# %bb.1:
	movq	8(%rdi), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB49_4
.LBB49_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB49_5
# %bb.3:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB49_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB49_5:
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
	subq	$56, %rsp
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	je	.LBB50_30
# %bb.1:
	movl	%esi, %ebx
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB50_21
# %bb.2:
	movq	8(%r13), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ebx
	jne	.LBB50_3
# %bb.5:
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB50_6:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 24(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movups	%xmm0, 40(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rbx
	cmpq	$1024, %rbx             # imm = 0x400
	jne	.LBB50_6
# %bb.7:
	movq	$0, 16(%rax)
	movq	$0, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, 8(%r14)
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB50_8
# %bb.10:
	movq	%rax, %rbx
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB50_15
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	leaq	-80(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%rbx, %rdi
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_20
# %bb.12:
	leaq	-88(%rbp), %r13
	.p2align	4, 0x90
.LBB50_13:                              # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB50_14
# %bb.16:                               #   in Loop: Header=BB50_13 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB50_17
	.p2align	4, 0x90
.LBB50_14:                              #   in Loop: Header=BB50_13 Depth=1
	movq	-72(%rbp), %rdi
	callq	sdsfromlonglong
.LBB50_17:                              #   in Loop: Header=BB50_13 Depth=1
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rdi
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	zslInsert
	movq	(%r14), %rdi
	leaq	8(%rax), %rdx
	movq	%r12, %rsi
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB50_31
# %bb.18:                               #   in Loop: Header=BB50_13 Depth=1
	movq	%r15, %rdi
	leaq	-96(%rbp), %rsi
	movq	%r13, %rdx
	callq	zzlNext
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_28
# %bb.19:                               #   in Loop: Header=BB50_13 Depth=1
	movq	-88(%rbp), %rdi
	callq	zzlGetScore
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB50_13
.LBB50_20:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$1196, %r8d             # imm = 0x4AC
.LBB50_9:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB50_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB50_27
# %bb.22:
	callq	ziplistNew
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ebx
	jne	.LBB50_23
# %bb.24:
	movq	%rax, %r15
	movq	8(%r13), %r14
	movq	(%r14), %rdi
	callq	dictRelease
	movq	8(%r14), %rax
	movq	(%rax), %rdi
	movq	24(%rdi), %rbx
	callq	zfree
	movq	8(%r14), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_26
	.p2align	4, 0x90
.LBB50_25:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	zzlInsertAt
	movq	%rax, %r15
	movq	(%rbx), %rdi
	movq	24(%rbx), %r12
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	testq	%r12, %r12
	jne	.LBB50_25
.LBB50_26:
	movq	%r14, %rdi
	callq	zfree
	movq	%r15, 8(%r13)
	movl	$-241, %eax
	andl	(%r13), %eax
	orl	$80, %eax
	movl	%eax, (%r13)
	jmp	.LBB50_29
.LBB50_28:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rdi
	callq	zfree
	movq	%r14, 8(%rbx)
	movl	$-241, %eax
	andl	(%rbx), %eax
	orl	$112, %eax
	movl	%eax, (%rbx)
.LBB50_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_31:
	movl	$.L.str.16, %edi
	movl	$.L.str.1, %esi
	movl	$1203, %edx             # imm = 0x4B3
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB50_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.14, %edx
	movl	$1183, %esi             # imm = 0x49F
	jmp	.LBB50_4
.LBB50_8:
	movl	$.L.str.15, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r13, %rsi
	movl	$1190, %r8d             # imm = 0x4A6
	jmp	.LBB50_9
.LBB50_15:
	movl	$.L.str.4, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$1192, %r8d             # imm = 0x4A8
	jmp	.LBB50_9
.LBB50_27:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1235, %esi             # imm = 0x4D3
	jmp	.LBB50_4
.LBB50_23:
	movl	$.L.str.1, %edi
	movl	$.L.str.14, %edx
	movl	$1214, %esi             # imm = 0x4BE
.LBB50_4:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end50:
	.size	zsetConvert, .Lfunc_end50-zsetConvert
                                        # -- End function
	.globl	zsetConvertToZiplistIfNeeded # -- Begin function zsetConvertToZiplistIfNeeded
	.p2align	4, 0x90
	.type	zsetConvertToZiplistIfNeeded,@function
zsetConvertToZiplistIfNeeded:           # @zsetConvertToZiplistIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$80, %eax
	je	.LBB51_5
# %bb.1:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	cmpq	server+2824(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB51_4
# %bb.2:
	cmpq	%rsi, server+2832(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB51_4
# %bb.3:
	movl	$5, %esi
	callq	zsetConvert
	movl	$42, __A_VARIABLE(%rip)
.LBB51_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB51_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testq	%rdi, %rdi
	je	.LBB52_10
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB52_10
# %bb.2:
	movq	%rdx, %r14
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB52_4
# %bb.3:
	movq	8(%rdi), %rdi
	movq	%r14, %rdx
	callq	zzlFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB52_9
	jmp	.LBB52_10
.LBB52_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB52_7
# %bb.5:
	movq	8(%rdi), %rax
	movq	(%rax), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB52_6
# %bb.8:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB52_9:
	xorl	%ebx, %ebx
	jmp	.LBB52_10
.LBB52_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB52_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB52_7:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB53_8
# %bb.1:
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jne	.LBB53_9
# %bb.2:
	movq	8(%r13), %rdi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rsi
	callq	zzlFind
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB53_16
# %bb.3:
	testb	$2, %r15b
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB53_22
# %bb.4:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB53_30
# %bb.5:
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB53_28
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB53_29
# %bb.7:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB53_30
.LBB53_8:
	movl	$16, (%r12)
	xorl	%ebx, %ebx
	jmp	.LBB53_39
.LBB53_9:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB53_51
# %bb.10:
	movq	8(%r13), %r14
	movq	(%r14), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB53_27
# %bb.13:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB53_28
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB53_32
# %bb.15:
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB53_33
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, server+2824(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB53_46
# %bb.18:
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB53_43
# %bb.19:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI53_0(,%rcx,8)
.LBB53_20:
	shrq	$3, %rax
	jmp	.LBB53_45
.LBB53_21:
	testb	$4, %r15b
	je	.LBB53_24
.LBB53_22:
	orb	$8, (%r12)
.LBB53_23:
	movl	$1, %ebx
	jmp	.LBB53_38
.LBB53_24:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB53_52
# %bb.25:
	orb	$32, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB53_38
# %bb.26:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	jmp	.LBB53_37
.LBB53_27:
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB53_34
.LBB53_28:
	orb	$16, (%r12)
	xorl	%ebx, %ebx
	jmp	.LBB53_38
.LBB53_29:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB53_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB53_31
	jnp	.LBB53_38
.LBB53_31:
	movq	8(%r13), %rdi
	movq	%r14, -88(%rbp)
	leaq	-88(%rbp), %r14
	movq	%r14, %rsi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	ziplistDelete
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8(%r13)
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	zzlInsert
	jmp	.LBB53_36
.LBB53_32:
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB53_33:
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB53_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	ucomisd	%xmm2, %xmm1
	jne	.LBB53_35
	jnp	.LBB53_38
.LBB53_35:
	movq	8(%r14), %rdi
	movapd	%xmm2, %xmm0
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	zslUpdateScore
	addq	$8, %rax
.LBB53_36:
	movq	%rax, 8(%r13)
	orb	$64, (%r12)
.LBB53_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB53_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB53_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB53_40:
	movq	-17(%r14), %rax
	jmp	.LBB53_45
.LBB53_41:
	movzwl	-5(%r14), %eax
	jmp	.LBB53_45
.LBB53_42:
	movl	-9(%r14), %eax
	jmp	.LBB53_45
.LBB53_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB53_47
.LBB53_44:
	movzbl	-3(%r14), %eax
.LBB53_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	server+2832(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB53_48
.LBB53_46:
	movq	%r13, %rdi
	movl	$7, %esi
	callq	zsetConvert
.LBB53_47:
	movl	$42, __A_VARIABLE(%rip)
.LBB53_48:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB53_50
# %bb.49:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB53_50:
	orb	$32, (%r12)
	jmp	.LBB53_23
.LBB53_51:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1416, %esi             # imm = 0x588
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB53_52:
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
	.quad	.LBB53_44
	.quad	.LBB53_41
	.quad	.LBB53_42
	.quad	.LBB53_40
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB54_3
# %bb.1:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	zzlFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB54_9
# %bb.2:
	movq	8(%rbx), %rdi
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	ziplistDelete
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8(%rbx)
	movl	$1, %ebx
	jmp	.LBB54_10
.LBB54_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB54_8
# %bb.4:
	movq	8(%rbx), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	dictUnlink
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB54_9
# %bb.5:
	movq	8(%rax), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	(%r15), %rdi
	movq	%rax, %rsi
	callq	dictFreeUnlinkedEntry
	movq	8(%r15), %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	zslDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB54_11
# %bb.6:
	movq	(%r15), %rdi
	callq	htNeedsResize
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB54_10
# %bb.7:
	movq	(%r15), %rdi
	callq	dictResize
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB54_10
.LBB54_9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB54_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_8:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1456, %esi             # imm = 0x5B0
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB54_11:
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
	subq	$40, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB55_2
# %bb.1:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %r14d
	shrl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	shrl	$4, %eax
	jmp	.LBB55_4
.LBB55_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB55_8
# %bb.3:
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rcx
	movq	16(%rcx), %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB55_4:
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB55_26
# %bb.5:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	8(%rbx), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB55_6
# %bb.10:
	movq	%rax, %r14
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB55_11
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	leaq	-72(%rbp), %r15
	.p2align	4, 0x90
.LBB55_13:                              # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB55_14
# %bb.15:                               #   in Loop: Header=BB55_13 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI55_0(,%rax,8)
.LBB55_16:                              #   in Loop: Header=BB55_13 Depth=1
	shrq	$3, %rdx
	jmp	.LBB55_21
.LBB55_20:                              #   in Loop: Header=BB55_13 Depth=1
	movq	-17(%r12), %rdx
	jmp	.LBB55_21
.LBB55_18:                              #   in Loop: Header=BB55_13 Depth=1
	movzwl	-5(%r12), %edx
	jmp	.LBB55_21
.LBB55_19:                              #   in Loop: Header=BB55_13 Depth=1
	movl	-9(%r12), %edx
	jmp	.LBB55_21
.LBB55_17:                              #   in Loop: Header=BB55_13 Depth=1
	movzbl	-3(%r12), %edx
	jmp	.LBB55_21
.LBB55_14:                              #   in Loop: Header=BB55_13 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB55_21:                              #   in Loop: Header=BB55_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	ziplistCompare
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB55_24
# %bb.22:                               #   in Loop: Header=BB55_13 Depth=1
	movq	%r13, %rdi
	leaq	-56(%rbp), %rsi
	movq	%r15, %rdx
	callq	zzlNext
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB55_13
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rbx
	jmp	.LBB55_34
.LBB55_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB55_35
# %bb.27:
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rbx
	movq	%r12, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB55_28
# %bb.29:
	movq	8(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	zslGetRank
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB55_30
# %bb.31:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB55_33
# %bb.32:
	subq	%rbx, %r14
	movq	%r14, %rbx
	jmp	.LBB55_34
.LBB55_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB55_34
# %bb.25:
	notq	%rbx
	addq	-64(%rbp), %rbx         # 8-byte Folded Reload
	jmp	.LBB55_34
.LBB55_28:
	movq	$-1, %rbx
	jmp	.LBB55_34
.LBB55_33:
	addq	$-1, %rbx
.LBB55_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_8:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	jmp	.LBB55_9
.LBB55_6:
	movl	$.L.str.15, %edi
	movl	$.L.str.1, %esi
	movl	$1483, %edx             # imm = 0x5CB
	jmp	.LBB55_7
.LBB55_11:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$1485, %edx             # imm = 0x5CD
	jmp	.LBB55_7
.LBB55_35:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1523, %esi             # imm = 0x5F3
.LBB55_9:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB55_30:
	movl	$.L.str.19, %edi
	movl	$.L.str.1, %esi
	movl	$1514, %edx             # imm = 0x5EA
.LBB55_7:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end55:
	.size	zsetRank, .Lfunc_end55-zsetRank
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI55_0:
	.quad	.LBB55_16
	.quad	.LBB55_17
	.quad	.LBB55_18
	.quad	.LBB55_19
	.quad	.LBB55_20
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
	movl	%esi, %r12d
	movq	72(%rdi), %r13
	movq	8(%r13), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
	cmpl	$3, %r15d
	jl	.LBB56_12
# %bb.1:                                # %.preheader3
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$2, %r14d
	jmp	.LBB56_2
	.p2align	4, 0x90
.LBB56_3:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$2, %ecx
.LBB56_4:                               #   in Loop: Header=BB56_2 Depth=1
	orl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %r15d
	jle	.LBB56_11
.LBB56_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r14,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_3
# %bb.5:                                #   in Loop: Header=BB56_2 Depth=1
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_6
# %bb.7:                                #   in Loop: Header=BB56_2 Depth=1
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_8
# %bb.9:                                #   in Loop: Header=BB56_2 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB56_4
	jmp	.LBB56_10
	.p2align	4, 0x90
.LBB56_6:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$4, %ecx
	jmp	.LBB56_4
.LBB56_8:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$65536, %ecx            # imm = 0x10000
	jmp	.LBB56_4
.LBB56_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB56_11:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB56_12:
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r15d
	je	.LBB56_14
# %bb.13:
	movl	%r15d, %eax
	andl	$1, %eax
	jne	.LBB56_14
# %bb.15:
	movl	%r12d, %eax
	andl	$6, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB56_17
# %bb.16:
	movl	$.L.str.25, %esi
	callq	addReplyError
	jmp	.LBB56_63
.LBB56_14:
	movq	shared+128(%rip), %rsi
	callq	addReply
	jmp	.LBB56_63
.LBB56_17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	je	.LBB56_20
# %bb.18:
	cmpl	$4, %r15d
	jl	.LBB56_20
# %bb.19:
	movl	$.L.str.26, %esi
	callq	addReplyError
	jmp	.LBB56_63
.LBB56_20:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	cltq
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	(,%rax,8), %rdi
	callq	zmalloc
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, -56(%rbp)        # 4-byte Spill
	cmpl	$2, %r15d
	jl	.LBB56_25
# %bb.21:                               # %.preheader
	movl	%r14d, %ebx
	movq	-72(%rbp), %r13         # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB56_22:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	callq	getDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB56_23
# %bb.24:                               #   in Loop: Header=BB56_22 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r13
	addq	$2, %rbx
	cmpq	-88(%rbp), %r15         # 8-byte Folded Reload
	jl	.LBB56_22
.LBB56_25:
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	16(%r15), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB56_26
# %bb.43:
	movq	%rax, %r13
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB56_41
# %bb.44:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB56_60
.LBB56_26:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r12b
	jne	.LBB56_27
# %bb.28:
	cmpq	$0, server+2824(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB56_37
# %bb.29:
	movq	server+2832(%rip), %rax
	movq	72(%r15), %rcx
	movl	%r14d, %edx
	movq	8(%rcx,%rdx,8), %rcx
	movq	8(%rcx), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB56_38
# %bb.30:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI56_0(,%rsi,8)
.LBB56_35:
	shrq	$3, %rcx
	jmp	.LBB56_36
.LBB56_23:
	xorl	%r14d, %r14d
	movq	-48(%rbp), %r15         # 8-byte Reload
	xorl	%ebx, %ebx
	jmp	.LBB56_61
.LBB56_27:
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.LBB56_55
.LBB56_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_39
.LBB56_31:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB56_36
.LBB56_32:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB56_36
.LBB56_33:
	movl	-9(%rdx), %ecx
	jmp	.LBB56_36
.LBB56_34:
	movq	-17(%rdx), %rcx
.LBB56_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB56_39
.LBB56_37:
	callq	createZsetObject
	jmp	.LBB56_40
.LBB56_39:
	callq	createZsetZiplistObject
.LBB56_40:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB56_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jl	.LBB56_42
# %bb.45:
	addl	$1, %r14d
	xorl	%r15d, %r15d
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB56_46
	.p2align	4, 0x90
.LBB56_53:                              #   in Loop: Header=BB56_46 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %r14d
	cmpq	-88(%rbp), %r15         # 8-byte Folded Reload
	jge	.LBB56_54
.LBB56_46:                              # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movsd	(%rax,%r15,8), %xmm0    # xmm0 = mem[0],zero
	movl	%r12d, -64(%rbp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	movl	%r14d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rsi
	movq	%r13, %rdi
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	zsetAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_64
# %bb.47:                               #   in Loop: Header=BB56_46 Depth=1
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	je	.LBB56_49
# %bb.48:                               #   in Loop: Header=BB56_46 Depth=1
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB56_49:                              #   in Loop: Header=BB56_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %al
	je	.LBB56_51
# %bb.50:                               #   in Loop: Header=BB56_46 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB56_51:                              #   in Loop: Header=BB56_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB56_53
# %bb.52:                               #   in Loop: Header=BB56_46 Depth=1
	addl	$1, -60(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_53
.LBB56_42:
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
.LBB56_54:
	movq	-56(%rbp), %r14         # 8-byte Reload
	leal	(%r14,%rbx), %eax
	cltq
	addq	%rax, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	-60(%rbp), %eax         # 4-byte Reload
.LBB56_55:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	je	.LBB56_59
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_58
# %bb.57:
	movq	%r15, %rdi
	callq	addReplyDouble
	jmp	.LBB56_60
.LBB56_59:
	movl	%r12d, %eax
	shll	$15, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addl	%ebx, %eax
	movslq	%eax, %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	jmp	.LBB56_60
.LBB56_64:
	movl	$.L.str.20, %esi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB56_60
.LBB56_58:
	movq	shared+80(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB56_60:
	movl	$42, __A_VARIABLE(%rip)
.LBB56_61:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	orl	%r14d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB56_63
# %bb.62:
	movq	16(%r15), %rdi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	signalModifiedKey
	movl	$.L.str.27, %eax
	movl	$.L.str.28, %esi
	testb	$1, %r12b
	cmovneq	%rax, %rsi
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$128, %edi
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB56_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB56_35
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	zaddGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end57:
	.size	zaddCommand, .Lfunc_end57-zaddCommand
                                        # -- End function
	.globl	zincrbyCommand          # -- Begin function zincrbyCommand
	.p2align	4, 0x90
	.type	zincrbyCommand,@function
zincrbyCommand:                         # @zincrbyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	zaddGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_21
# %bb.1:
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_21
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB59_19
# %bb.3:
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB59_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r13, %rdi
	callq	zsetDel
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB59_6
# %bb.5:                                #   in Loop: Header=BB59_4 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB59_6:                               #   in Loop: Header=BB59_4 Depth=1
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB59_8
# %bb.7:                                #   in Loop: Header=BB59_4 Depth=1
	movq	8(%r13), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_10
	.p2align	4, 0x90
.LBB59_8:                               #   in Loop: Header=BB59_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB59_22
# %bb.9:                                #   in Loop: Header=BB59_4 Depth=1
	movq	8(%r13), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB59_10:                              #   in Loop: Header=BB59_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_11
# %bb.12:                               #   in Loop: Header=BB59_4 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB59_4
# %bb.13:
	xorl	%ebx, %ebx
	jmp	.LBB59_14
.LBB59_11:
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB59_14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB59_15
# %bb.16:
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.29, %esi
	movl	$128, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB59_18
# %bb.17:
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB59_18:
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	signalModifiedKey
	movslq	%r15d, %r15
	addq	%r15, server+2080(%rip)
.LBB59_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB59_20:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	addReplyLongLong
.LBB59_21:
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
.LBB59_15:
	xorl	%r15d, %r15d
	jmp	.LBB59_20
.LBB59_22:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB60_1
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	jne	.LBB60_12
# %bb.9:
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-104(%rbp), %rdx
	callq	zslParseRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB60_3
# %bb.10:
	movl	$.L.str.31, %esi
	jmp	.LBB60_11
.LBB60_1:
	movq	16(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB60_71
# %bb.2:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB60_71
	jmp	.LBB60_3
.LBB60_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB60_3
# %bb.13:
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-80(%rbp), %rdx
	callq	zslParseLexRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB60_3
# %bb.14:
	movl	$.L.str.32, %esi
.LBB60_11:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB60_71
.LBB60_3:
	movq	shared+32(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lookupKeyWriteOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB60_62
# %bb.4:
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB60_62
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB60_6
.LBB60_30:
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB60_42
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB60_35
# %bb.32:
	cmpl	$1, %r14d
	je	.LBB60_36
# %bb.33:
	cmpl	$2, %r14d
	jne	.LBB60_34
# %bb.37:
	movq	8(%r12), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	zzlDeleteRangeByLex
	jmp	.LBB60_38
.LBB60_6:
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB60_15
# %bb.7:
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB60_17
.LBB60_42:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB60_72
# %bb.43:
	movq	8(%r12), %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB60_47
# %bb.44:
	cmpl	$1, %r14d
	je	.LBB60_48
# %bb.45:
	cmpl	$2, %r14d
	jne	.LBB60_50
# %bb.46:
	movq	(%r12), %rdx
	movq	8(%r12), %rdi
	leaq	-80(%rbp), %rsi
	callq	zslDeleteRangeByLex
	jmp	.LBB60_49
.LBB60_15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB60_26
# %bb.16:
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB60_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jns	.LBB60_19
# %bb.18:
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB60_19:
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB60_21
# %bb.20:
	addq	%rax, %rdx
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB60_21:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jns	.LBB60_23
# %bb.22:
	movq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB60_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jg	.LBB60_25
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jge	.LBB60_25
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jl	.LBB60_30
# %bb.29:
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB60_30
.LBB60_25:
	movq	shared+32(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB60_70
.LBB60_36:
	movq	8(%r12), %rdi
	leaq	-104(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	zzlDeleteRangeByScore
.LBB60_38:
	movq	%rax, %rdi
	jmp	.LBB60_39
.LBB60_35:
	movq	8(%r12), %rdi
	movl	-56(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	%esi, %ecx
	notl	%ecx
	leal	(%rax,%rcx), %edx
	addl	$2, %edx
                                        # kill: def $eax killed $eax killed $rax def $rax
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %esi
	leal	(%rax,%rax), %edx
	addl	$4, %edx
	callq	ziplistDeleteRange
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB60_39:
	movq	%rax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB60_40
.LBB60_48:
	movq	(%r12), %rdx
	movq	8(%r12), %rdi
	leaq	-104(%rbp), %rsi
	callq	zslDeleteRangeByScore
	jmp	.LBB60_49
.LBB60_34:
	movq	8(%r12), %rdi
.LBB60_40:
	callq	ziplistLen
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB60_56
# %bb.41:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	jmp	.LBB60_54
.LBB60_47:
	movq	(%r12), %rcx
	movq	8(%r12), %rdi
	movl	-56(%rbp), %esi
	addl	$1, %esi
	movl	-48(%rbp), %edx
	addl	$1, %edx
	callq	zslDeleteRangeByRank
.LBB60_49:
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB60_50:
	movq	(%r12), %rdi
	callq	htNeedsResize
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB60_52
# %bb.51:
	movq	(%r12), %rdi
	callq	dictResize
	movl	$42, __A_VARIABLE(%rip)
.LBB60_52:
	movq	(%r12), %rax
	movq	40(%rax), %rcx
	xorl	%r12d, %r12d
	addq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB60_55
# %bb.53:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB60_54:
	movl	$1, %r12d
.LBB60_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB60_56:
	cmpq	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_57
# %bb.58:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB60_60
# %bb.59:
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB60_60:
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rsi
	jmp	.LBB60_61
.LBB60_57:
	xorl	%esi, %esi
.LBB60_61:
	addq	%rsi, server+2080(%rip)
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB60_62:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB60_71
# %bb.63:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB60_64
# %bb.65:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_67
# %bb.66:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB60_67
.LBB60_64:
	movq	%rdi, %rax
.LBB60_67:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB60_70
# %bb.68:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_70
# %bb.69:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB60_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB60_71:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB60_72:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1775, %esi             # imm = 0x6EF
	jmp	.LBB60_27
.LBB60_26:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
.LBB60_27:
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
	movq	$0, 16(%rdx)
	movl	$240, %eax
	andl	(%rdi), %eax
	movq	%rsi, %r14
	movq	8(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB61_7
# %bb.1:
	cvtsi2sd	%rdi, %xmm0
	movsd	%xmm0, (%rbx)
.LBB61_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_3:
	movl	$240, %eax
	andl	(%r14), %eax
	movq	8(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB61_11
# %bb.4:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rdi, %xmm0
	movsd	%xmm0, 8(%rbx)
.LBB61_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_6:
	xorl	%r15d, %r15d
	jmp	.LBB61_18
.LBB61_7:
	cmpb	$40, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB61_15
# %bb.8:
	addq	$1, %rdi
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%rbx)
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jne	.LBB61_18
# %bb.9:
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB61_18
# %bb.10:
	movl	$1, 16(%rbx)
	jmp	.LBB61_2
.LBB61_11:
	cmpb	$40, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB61_17
# %bb.12:
	addq	$1, %rdi
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, 8(%rbx)
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jne	.LBB61_18
# %bb.13:
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB61_18
# %bb.14:
	movl	$1, 20(%rbx)
	jmp	.LBB61_5
.LBB61_15:
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, (%rbx)
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jne	.LBB61_18
# %bb.16:
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB61_3
	jmp	.LBB61_18
.LBB61_17:
	leaq	-32(%rbp), %rsi
	callq	strtod
	movsd	%xmm0, 8(%rbx)
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	je	.LBB61_19
.LBB61_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_19:
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB61_6
	jmp	.LBB61_18
.Lfunc_end61:
	.size	zslParseRange, .Lfunc_end61-zslParseRange
                                        # -- End function
	.globl	zremrangebyrankCommand  # -- Begin function zremrangebyrankCommand
	.p2align	4, 0x90
	.type	zremrangebyrankCommand,@function
zremrangebyrankCommand:                 # @zremrangebyrankCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	zremrangeGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end62:
	.size	zremrangebyrankCommand, .Lfunc_end62-zremrangebyrankCommand
                                        # -- End function
	.globl	zremrangebyscoreCommand # -- Begin function zremrangebyscoreCommand
	.p2align	4, 0x90
	.type	zremrangebyscoreCommand,@function
zremrangebyscoreCommand:                # @zremrangebyscoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	zremrangeGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end63:
	.size	zremrangebyscoreCommand, .Lfunc_end63-zremrangebyscoreCommand
                                        # -- End function
	.globl	zremrangebylexCommand   # -- Begin function zremrangebylexCommand
	.p2align	4, 0x90
	.type	zremrangebylexCommand,@function
zremrangebylexCommand:                  # @zremrangebylexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %esi
	callq	zremrangeGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB65_17
# %bb.1:
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB65_8
# %bb.2:
	movl	12(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB65_4
# %bb.3:
	movq	8(%rax), %rax
	movq	%rax, 24(%rbx)
	movl	$0, 32(%rbx)
	jmp	.LBB65_15
.LBB65_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB65_19
# %bb.9:
	movl	12(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB65_13
# %bb.10:
	movq	8(%rax), %rdi
	movq	%rdi, 24(%rbx)
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB65_16
# %bb.11:
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB65_16
# %bb.12:
	movl	$.L.str.37, %edi
	movl	$.L.str.1, %esi
	movl	$1887, %edx             # imm = 0x75F
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB65_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB65_6
# %bb.5:
	movq	8(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movq	8(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%rbx)
	movq	%rax, %rdi
	callq	dictNext
	movq	%rax, 40(%rbx)
	jmp	.LBB65_15
.LBB65_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB65_18
# %bb.14:
	movq	8(%rax), %rax
	movq	%rax, 24(%rbx)
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, 32(%rbx)
.LBB65_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB65_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB65_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB65_19:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$1896, %esi             # imm = 0x768
	jmp	.LBB65_7
.LBB65_6:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1878, %esi             # imm = 0x756
	jmp	.LBB65_7
.LBB65_18:
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB66_6
# %bb.1:
	movl	8(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB66_9
# %bb.2:
	movl	12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	je	.LBB66_5
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB66_7
# %bb.4:
	movq	32(%rdi), %rdi
	callq	dictReleaseIterator
	jmp	.LBB66_5
.LBB66_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB66_13
# %bb.10:
	movl	12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB66_5
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB66_12
.LBB66_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB66_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB66_13:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$1923, %esi             # imm = 0x783
	jmp	.LBB66_8
.LBB66_7:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1911, %esi             # imm = 0x777
	jmp	.LBB66_8
.LBB66_12:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1920, %esi             # imm = 0x780
.LBB66_8:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB67_1
# %bb.2:
	movl	8(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB67_9
# %bb.3:
	movl	12(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB67_5
# %bb.4:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
	jmp	.LBB67_14
.LBB67_1:
	xorl	%eax, %eax
	jmp	.LBB67_14
.LBB67_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB67_16
# %bb.10:
	movl	12(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB67_12
# %bb.11:
	movq	8(%rax), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB67_14
.LBB67_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB67_7
# %bb.6:
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB67_14
.LBB67_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB67_15
# %bb.13:
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB67_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB67_16:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$1950, %esi             # imm = 0x79E
	jmp	.LBB67_8
.LBB67_7:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1938, %esi             # imm = 0x792
	jmp	.LBB67_8
.LBB67_15:
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB68_7
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	$1, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB68_3
# %bb.2:
	movq	40(%r14), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB68_3:
	movl	$80, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB68_8
# %bb.4:
	movl	12(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB68_14
# %bb.5:
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	leaq	-40(%rbp), %rdx
	callq	intsetGet
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB68_23
# %bb.6:
	movq	-40(%rbp), %rax
	movq	%rax, 64(%r14)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 72(%r14)
	addl	$1, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB68_20
.LBB68_7:
	xorl	%eax, %eax
	jmp	.LBB68_22
.LBB68_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB68_25
# %bb.9:
	movl	12(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB68_17
# %bb.10:
	movq	32(%rbx), %rdi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB68_21
# %bb.11:
	cmpq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB68_21
# %bb.12:
	leaq	48(%r14), %rsi
	leaq	56(%r14), %rdx
	leaq	64(%r14), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB68_29
# %bb.13:
	leaq	32(%rbx), %r15
	leaq	40(%rbx), %r12
	movq	40(%rbx), %rdi
	callq	zzlGetScore
	movsd	%xmm0, 72(%r14)
	movq	24(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	zzlNext
	jmp	.LBB68_20
.LBB68_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB68_26
# %bb.15:
	movq	40(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB68_24
# %bb.16:
	movq	(%rax), %rax
	movq	%rax, 40(%r14)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 72(%r14)
	movq	32(%rbx), %rdi
	callq	dictNext
	movq	%rax, 40(%rbx)
	jmp	.LBB68_20
.LBB68_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB68_27
# %bb.18:
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB68_24
# %bb.19:
	movq	(%rax), %rax
	movq	%rax, 40(%r14)
	movq	32(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rax, 72(%r14)
	movq	32(%rbx), %rax
	movq	24(%rax), %rax
	movq	%rax, 32(%rbx)
.LBB68_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB68_21
.LBB68_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB68_24:
	xorl	%eax, %eax
.LBB68_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB68_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB68_25:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$2012, %esi             # imm = 0x7DC
	jmp	.LBB68_28
.LBB68_26:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1987, %esi             # imm = 0x7C3
	jmp	.LBB68_28
.LBB68_27:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2009, %esi             # imm = 0x7D9
.LBB68_28:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB68_29:
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB69_17
# %bb.1:
	movl	%eax, %ecx
	orl	$2, %ecx
	movl	%ecx, (%rbx)
	movq	40(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB69_13
# %bb.2:
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB69_3
# %bb.4:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI69_0(,%rax,8)
.LBB69_5:
	shrq	$3, %rsi
	jmp	.LBB69_10
.LBB69_13:
	movq	48(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB69_15
# %bb.14:
	movl	56(%rbx), %esi
	jmp	.LBB69_11
.LBB69_15:
	orl	$6, %eax
	movl	%eax, (%rbx)
	jmp	.LBB69_16
.LBB69_3:
	xorl	%esi, %esi
	jmp	.LBB69_10
.LBB69_6:
	movzbl	-3(%rdi), %esi
	jmp	.LBB69_10
.LBB69_7:
	movzwl	-5(%rdi), %esi
	jmp	.LBB69_10
.LBB69_8:
	movl	-9(%rdi), %esi
	jmp	.LBB69_10
.LBB69_9:
	movq	-17(%rdi), %rsi
.LBB69_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB69_11:
	leaq	64(%rbx), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB69_17
# %bb.12:
	orb	$4, (%rbx)
.LBB69_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB69_17:
	movl	(%rbx), %eax
	andl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end69:
	.size	zuiLongLongFromValue, .Lfunc_end69-zuiLongLongFromValue
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI69_0:
	.quad	.LBB69_5
	.quad	.LBB69_6
	.quad	.LBB69_7
	.quad	.LBB69_8
	.quad	.LBB69_9
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB70_5
# %bb.1:
	movq	%rdi, %rbx
	movq	48(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	orb	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB70_5:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%rdi), %rax
	testb	$1, %cl
	jne	.LBB71_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB71_4
# %bb.3:
	movq	%rax, %rdi
	callq	sdsdup
	jmp	.LBB71_7
.LBB71_1:
	andl	$-2, %ecx
	movl	%ecx, (%rdi)
	movq	$0, 40(%rdi)
.LBB71_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB71_4:
	movq	48(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB71_6
# %bb.5:
	movl	56(%rdi), %esi
	movq	%rax, %rdi
	callq	sdsnewlen
	jmp	.LBB71_7
.LBB71_6:
	movq	64(%rdi), %rdi
	callq	sdsfromlonglong
	jmp	.LBB71_7
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB72_13
# %bb.1:
	movq	%rdi, %rbx
	movq	40(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB72_11
# %bb.2:
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 56(%rbx)
	movq	%rax, 48(%rbx)
.LBB72_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB72_13:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB73_6
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB73_7
# %bb.2:
	movl	12(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB73_11
# %bb.3:
	movq	%r15, %rdi
	callq	zuiLongLongFromValue
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB73_6
# %bb.4:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movq	64(%r15), %rsi
	callq	intsetFind
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB73_6
# %bb.5:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB73_30
.LBB73_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB73_30
.LBB73_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB73_31
# %bb.8:
	movq	40(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB73_17
# %bb.9:
	movq	48(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB73_15
# %bb.10:
	movl	56(%r15), %esi
	callq	sdsnewlen
	jmp	.LBB73_16
.LBB73_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB73_32
# %bb.12:
	movq	8(%rax), %rbx
	movq	40(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB73_25
# %bb.13:
	movq	48(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB73_23
# %bb.14:
	movl	56(%r15), %esi
	callq	sdsnewlen
	jmp	.LBB73_24
.LBB73_15:
	movq	64(%r15), %rdi
	callq	sdsfromlonglong
.LBB73_16:
	movq	%rax, %rsi
	movq	%rax, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	orb	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB73_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB73_19
# %bb.18:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movq	%r14, %rdx
	callq	zzlFind
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	jmp	.LBB73_29
.LBB73_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB73_33
# %bb.20:
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB73_28
# %bb.21:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB73_27
.LBB73_23:
	movq	64(%r15), %rdi
	callq	sdsfromlonglong
.LBB73_24:
	movq	%rax, %rsi
	movq	%rax, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	orb	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB73_25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB73_28
# %bb.26:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
.LBB73_27:
	movq	%rax, (%r14)
	movl	$1, %eax
	jmp	.LBB73_29
.LBB73_28:
	xorl	%eax, %eax
.LBB73_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB73_30:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB73_31:
	movl	$.L.str.1, %edi
	movl	$.L.str.38, %edx
	movl	$2129, %esi             # imm = 0x851
	jmp	.LBB73_34
.LBB73_32:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$2104, %esi             # imm = 0x838
	jmp	.LBB73_34
.LBB73_33:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2126, %esi             # imm = 0x84E
.LBB73_34:
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jbe	.LBB74_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB74_3
.LBB74_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	sbbl	%eax, %eax
.LBB74_3:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_1
.LBB75_188:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB75_1:
	movq	-96(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB75_187
# %bb.2:
	movslq	64(%rbx), %rcx
	addq	$-3, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jle	.LBB75_4
# %bb.3:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB75_188
.LBB75_187:
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB75_188
.LBB75_4:
	movq	%r14, -120(%rbp)        # 8-byte Spill
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	zcalloc
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%r12d, -100(%rbp)       # 4-byte Spill
	jle	.LBB75_15
# %bb.5:
	movl	$3, %ebx
	movabsq	$4607182418800017408, %r12 # imm = 0x3FF0000000000000
	movq	%rax, %r13
	jmp	.LBB75_8
	.p2align	4, 0x90
.LBB75_6:                               #   in Loop: Header=BB75_8 Depth=1
	movq	%rax, (%r13)
	movl	(%rax), %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r13)
	movl	(%rax), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 12(%r13)
.LBB75_7:                               #   in Loop: Header=BB75_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rbx), %r15
	addq	$-2, %rbx
	addq	$48, %r13
	cmpq	%rbx, %r14
	movq	%r15, %rbx
	jle	.LBB75_14
.LBB75_8:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB75_13
# %bb.9:                                #   in Loop: Header=BB75_8 Depth=1
	movl	(%rax), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	je	.LBB75_6
# %bb.10:                               #   in Loop: Header=BB75_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	je	.LBB75_6
	jmp	.LBB75_11
	.p2align	4, 0x90
.LBB75_13:                              #   in Loop: Header=BB75_8 Depth=1
	movq	$0, (%r13)
	jmp	.LBB75_7
.LBB75_14:
	movl	-100(%rbp), %r12d       # 4-byte Reload
	jmp	.LBB75_16
.LBB75_15:
	movl	$3, %r15d
.LBB75_16:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	64(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	subl	%r15d, %ebx
	jle	.LBB75_42
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_40
# %bb.18:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	16(%rax), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	addq	$64, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB75_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_31 Depth 2
	movslq	%ebx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %r13
	cmpq	%rax, %r14
	jge	.LBB75_21
# %bb.20:                               #   in Loop: Header=BB75_19 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %r12
	movq	(%r12,%r13,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.41, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_28
.LBB75_21:                              #   in Loop: Header=BB75_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jl	.LBB75_26
# %bb.22:                               #   in Loop: Header=BB75_19 Depth=1
	movl	%ebx, %r12d
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rbx
	movq	(%rbx,%r13,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.43, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB75_26
# %bb.23:                               #   in Loop: Header=BB75_19 Depth=1
	movq	8(%rbx,%r13,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_27
# %bb.24:                               #   in Loop: Header=BB75_19 Depth=1
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_34
# %bb.25:                               #   in Loop: Header=BB75_19 Depth=1
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %ecx
	testl	%eax, %eax
	je	.LBB75_35
	jmp	.LBB75_26
.LBB75_27:                              #   in Loop: Header=BB75_19 Depth=1
	movl	$1, %ecx
	jmp	.LBB75_35
.LBB75_28:                              #   in Loop: Header=BB75_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jle	.LBB75_37
# %bb.29:                               #   in Loop: Header=BB75_19 Depth=1
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	movslq	%eax, %rbx
	movq	(%r12,%rbx,8), %rsi
	movl	$.L.str.42, %ecx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	getDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB75_33
# %bb.30:                               # %.preheader4
                                        #   in Loop: Header=BB75_19 Depth=1
	leaq	8(,%rbx,8), %r12
	movq	-48(%rbp), %rbx         # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB75_31:                              #   Parent Loop BB75_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rcx), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	jle	.LBB75_38
# %bb.32:                               #   in Loop: Header=BB75_31 Depth=2
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	addq	%r12, %rax
	movq	(%rax,%rcx,8), %rsi
	movl	$.L.str.42, %ecx
	movq	%rbx, %rdx
	callq	getDoubleFromObjectOrReply
	addq	$48, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rcx
	testl	%eax, %eax
	je	.LBB75_31
	jmp	.LBB75_33
.LBB75_34:                              #   in Loop: Header=BB75_19 Depth=1
	movl	$2, %ecx
.LBB75_35:                              #   in Loop: Header=BB75_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %r15d
	movl	%r12d, %ebx
	addl	$-2, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
.LBB75_36:                              #   in Loop: Header=BB75_19 Depth=1
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
	testl	%ebx, %ebx
	jne	.LBB75_19
	jmp	.LBB75_41
.LBB75_37:                              #   in Loop: Header=BB75_19 Depth=1
	addl	$-1, %ebx
	jmp	.LBB75_39
.LBB75_38:                              #   in Loop: Header=BB75_19 Depth=1
	movl	-112(%rbp), %ebx        # 4-byte Reload
	subl	%ecx, %ebx
	addl	$-2, %ebx
	leal	(%r15,%rcx), %eax
	addl	$2, %eax
.LBB75_39:                              #   in Loop: Header=BB75_19 Depth=1
	movl	-60(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB75_36
.LBB75_40:
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
.LBB75_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-100(%rbp), %r12d       # 4-byte Reload
.LBB75_42:
	movl	$48, %edx
	movl	$zuiCompareByCardinality, %ecx
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	qsort
	callq	createZsetObject
	movq	%rax, %rbx
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	leaq	-216(%rbp), %rdi
	movl	$80, %edx
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB75_99
# %bb.43:
	movq	%r15, %rdi
	callq	zuiLength
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	je	.LBB75_155
# %bb.44:
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	callq	zuiInitIterator
	movl	$42, __A_VARIABLE(%rip)
	leaq	-216(%rbp), %rsi
	movq	%r15, %rdi
	callq	zuiNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_162
# %bb.45:
	movq	%r15, %rax
	addq	$48, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%ebx, %ebx
	leaq	-216(%rbp), %r13
	leaq	-80(%rbp), %r14
	movl	-60(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB75_48
	.p2align	4, 0x90
.LBB75_46:                              #   in Loop: Header=BB75_48 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB75_47:                              #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	zuiNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB75_163
.LBB75_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_55 Depth 2
	movsd	16(%r15), %xmm0         # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB75_50
# %bb.49:                               #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB75_50:                              #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	cmpq	$2, %rax
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jl	.LBB75_70
# %bb.51:                               # %.preheader
                                        #   in Loop: Header=BB75_48 Depth=1
	movl	$1, %r15d
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB75_55
	.p2align	4, 0x90
.LBB75_53:                              #   in Loop: Header=BB75_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
.LBB75_54:                              #   in Loop: Header=BB75_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rbx
	cmpq	%r15, %rax
	jle	.LBB75_68
.LBB75_55:                              #   Parent Loop BB75_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_59
# %bb.56:                               #   in Loop: Header=BB75_55 Depth=2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	zuiFind
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_69
# %bb.57:                               #   in Loop: Header=BB75_55 Depth=2
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB75_61
.LBB75_58:                              #   in Loop: Header=BB75_55 Depth=2
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB75_54
# %bb.52:                               #   in Loop: Header=BB75_55 Depth=2
	xorpd	%xmm1, %xmm1
	jmp	.LBB75_53
	.p2align	4, 0x90
.LBB75_59:                              #   in Loop: Header=BB75_55 Depth=2
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	16(%rbx), %xmm1
	movsd	%xmm1, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	je	.LBB75_58
.LBB75_61:                              #   in Loop: Header=BB75_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB75_62
# %bb.65:                               #   in Loop: Header=BB75_55 Depth=2
	ucomisd	%xmm1, %xmm0
	jmp	.LBB75_66
	.p2align	4, 0x90
.LBB75_62:                              #   in Loop: Header=BB75_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB75_183
# %bb.63:                               #   in Loop: Header=BB75_55 Depth=2
	ucomisd	%xmm0, %xmm1
.LBB75_66:                              #   in Loop: Header=BB75_55 Depth=2
	seta	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB75_53
# %bb.67:                               #   in Loop: Header=BB75_55 Depth=2
	movapd	%xmm0, %xmm1
	jmp	.LBB75_53
.LBB75_68:                              #   in Loop: Header=BB75_48 Depth=1
	movl	%r15d, %r15d
	jmp	.LBB75_71
.LBB75_69:                              #   in Loop: Header=BB75_48 Depth=1
	movq	-96(%rbp), %rax
.LBB75_70:                              #   in Loop: Header=BB75_48 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB75_71:                              #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB75_46
# %bb.72:                               #   in Loop: Header=BB75_48 Depth=1
	movl	-216(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %rbx
	testb	$1, %al
	movq	-72(%rbp), %r15         # 8-byte Reload
	jne	.LBB75_75
# %bb.73:                               #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	je	.LBB75_76
# %bb.74:                               #   in Loop: Header=BB75_48 Depth=1
	movq	%rbx, %rdi
	callq	sdsdup
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rbx
	jmp	.LBB75_80
.LBB75_75:                              #   in Loop: Header=BB75_48 Depth=1
	andl	$-2, %eax
	movl	%eax, -216(%rbp)
	movq	$0, -176(%rbp)
	jmp	.LBB75_80
.LBB75_76:                              #   in Loop: Header=BB75_48 Depth=1
	movq	-168(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB75_78
# %bb.77:                               #   in Loop: Header=BB75_48 Depth=1
	movl	-160(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB75_79
.LBB75_78:                              #   in Loop: Header=BB75_48 Depth=1
	movq	-152(%rbp), %rdi
	callq	sdsfromlonglong
.LBB75_79:                              #   in Loop: Header=BB75_48 Depth=1
	movq	%rax, %rbx
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB75_80:                              #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	8(%r14), %rdi
	movq	%rbx, %rsi
	callq	zslInsert
	movq	(%r14), %rdi
	leaq	8(%rax), %rdx
	movq	%rbx, %rsi
	callq	dictAdd
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB75_91
# %bb.81:                               #   in Loop: Header=BB75_48 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI75_2(,%rcx,8)
.LBB75_82:                              #   in Loop: Header=BB75_48 Depth=1
	shrq	$3, %rax
	jmp	.LBB75_87
.LBB75_83:                              #   in Loop: Header=BB75_48 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB75_87
.LBB75_84:                              #   in Loop: Header=BB75_48 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB75_87
.LBB75_85:                              #   in Loop: Header=BB75_48 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB75_87
.LBB75_86:                              #   in Loop: Header=BB75_48 Depth=1
	movzbl	-3(%rbx), %eax
.LBB75_87:                              #   in Loop: Header=BB75_48 Depth=1
	leaq	-80(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %rax         # 8-byte Folded Reload
	jbe	.LBB75_47
# %bb.88:                               #   in Loop: Header=BB75_48 Depth=1
	movzbl	-1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB75_96
# %bb.89:                               #   in Loop: Header=BB75_48 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI75_3(,%rax,8)
.LBB75_90:                              #   in Loop: Header=BB75_48 Depth=1
	shrq	$3, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_98
.LBB75_91:                              #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r14
	jmp	.LBB75_47
.LBB75_92:                              #   in Loop: Header=BB75_48 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB75_97
.LBB75_93:                              #   in Loop: Header=BB75_48 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB75_97
.LBB75_94:                              #   in Loop: Header=BB75_48 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB75_97
.LBB75_95:                              #   in Loop: Header=BB75_48 Depth=1
	movzbl	-3(%rbx), %eax
	jmp	.LBB75_97
.LBB75_96:                              #   in Loop: Header=BB75_48 Depth=1
	xorl	%eax, %eax
.LBB75_97:                              #   in Loop: Header=BB75_48 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB75_98:                              #   in Loop: Header=BB75_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_47
.LBB75_99:
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB75_185
# %bb.100:
	movl	$setAccumulatorDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, %r13
	movq	-96(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB75_156
# %bb.101:
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	(%rax,%r15), %rdi
	addq	$-48, %rdi
	callq	zuiLength
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	dictExpand
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB75_157
# %bb.102:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_105
	.p2align	4, 0x90
.LBB75_103:                             #   in Loop: Header=BB75_105 Depth=1
	movq	%r15, %rdi
	callq	zuiClearIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB75_104:                             #   in Loop: Header=BB75_105 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	movq	-72(%rbp), %r15         # 8-byte Reload
	jle	.LBB75_158
.LBB75_105:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_113 Depth 2
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$4, %rbx
	addq	%rbx, %r15
	movq	%r15, %rdi
	callq	zuiLength
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB75_104
# %bb.106:                              #   in Loop: Header=BB75_105 Depth=1
	movq	%r15, %rdi
	callq	zuiInitIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	leaq	-216(%rbp), %rsi
	callq	zuiNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_103
# %bb.107:                              #   in Loop: Header=BB75_105 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rbx
	addq	$16, %rbx
	jmp	.LBB75_113
.LBB75_108:                             #   in Loop: Header=BB75_113 Depth=2
	minsd	8(%r12), %xmm0
.LBB75_109:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_110:                             #   in Loop: Header=BB75_113 Depth=2
	movsd	%xmm0, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_111:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB75_112:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	leaq	-216(%rbp), %rsi
	callq	zuiNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_103
.LBB75_113:                             #   Parent Loop BB75_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB75_115
# %bb.114:                              #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB75_115:                             #   in Loop: Header=BB75_113 Depth=2
	movq	-176(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB75_120
# %bb.116:                              #   in Loop: Header=BB75_113 Depth=2
	movq	-168(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB75_118
# %bb.117:                              #   in Loop: Header=BB75_113 Depth=2
	movl	-160(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB75_119
.LBB75_118:                             #   in Loop: Header=BB75_113 Depth=2
	movq	-152(%rbp), %rdi
	callq	sdsfromlonglong
.LBB75_119:                             #   in Loop: Header=BB75_113 Depth=2
	movq	%rax, %rsi
	movq	%rax, -176(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	orb	$1, -216(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_120:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	leaq	-80(%rbp), %rdx
	callq	dictAddRaw
	movq	-80(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB75_124
# %bb.121:                              #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB75_127
# %bb.122:                              #   in Loop: Header=BB75_113 Depth=2
	addsd	8(%r12), %xmm0
	movsd	%xmm0, 8(%r12)
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB75_111
# %bb.123:                              #   in Loop: Header=BB75_113 Depth=2
	xorpd	%xmm0, %xmm0
	jmp	.LBB75_110
	.p2align	4, 0x90
.LBB75_124:                             #   in Loop: Header=BB75_113 Depth=2
	movq	%rax, %r14
	movl	-216(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %rax
	testb	$1, %cl
	jne	.LBB75_130
# %bb.125:                              #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB75_134
# %bb.126:                              #   in Loop: Header=BB75_113 Depth=2
	movq	%rax, %rdi
	callq	sdsdup
	jmp	.LBB75_131
	.p2align	4, 0x90
.LBB75_127:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB75_108
# %bb.128:                              #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB75_183
# %bb.129:                              #   in Loop: Header=BB75_113 Depth=2
	maxsd	8(%r12), %xmm0
	jmp	.LBB75_109
.LBB75_130:                             #   in Loop: Header=BB75_113 Depth=2
	andl	$-2, %ecx
	movl	%ecx, -216(%rbp)
	movq	$0, -176(%rbp)
.LBB75_131:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB75_151
# %bb.132:                              #   in Loop: Header=BB75_113 Depth=2
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI75_0(,%rdx,8)
.LBB75_133:                             #   in Loop: Header=BB75_113 Depth=2
	shrq	$3, %rcx
	jmp	.LBB75_140
.LBB75_134:                             #   in Loop: Header=BB75_113 Depth=2
	movq	-168(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB75_144
# %bb.135:                              #   in Loop: Header=BB75_113 Depth=2
	movl	-160(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB75_131
.LBB75_136:                             #   in Loop: Header=BB75_113 Depth=2
	movq	-17(%rax), %rcx
	jmp	.LBB75_140
.LBB75_137:                             #   in Loop: Header=BB75_113 Depth=2
	movzwl	-5(%rax), %ecx
	jmp	.LBB75_140
.LBB75_138:                             #   in Loop: Header=BB75_113 Depth=2
	movl	-9(%rax), %ecx
	jmp	.LBB75_140
.LBB75_139:                             #   in Loop: Header=BB75_113 Depth=2
	movzbl	-3(%rax), %ecx
	.p2align	4, 0x90
.LBB75_140:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %rcx         # 8-byte Folded Reload
	jbe	.LBB75_152
# %bb.141:                              #   in Loop: Header=BB75_113 Depth=2
	movzbl	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB75_149
# %bb.142:                              #   in Loop: Header=BB75_113 Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI75_1(,%rcx,8)
.LBB75_143:                             #   in Loop: Header=BB75_113 Depth=2
	shrq	$3, %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_151
.LBB75_144:                             #   in Loop: Header=BB75_113 Depth=2
	movq	-152(%rbp), %rdi
	callq	sdsfromlonglong
	jmp	.LBB75_131
.LBB75_145:                             #   in Loop: Header=BB75_113 Depth=2
	movq	-17(%rax), %rcx
	jmp	.LBB75_150
.LBB75_146:                             #   in Loop: Header=BB75_113 Depth=2
	movzwl	-5(%rax), %ecx
	jmp	.LBB75_150
.LBB75_147:                             #   in Loop: Header=BB75_113 Depth=2
	movl	-9(%rax), %ecx
	jmp	.LBB75_150
.LBB75_148:                             #   in Loop: Header=BB75_113 Depth=2
	movzbl	-3(%rax), %ecx
	jmp	.LBB75_150
.LBB75_149:                             #   in Loop: Header=BB75_113 Depth=2
	xorl	%ecx, %ecx
.LBB75_150:                             #   in Loop: Header=BB75_113 Depth=2
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB75_151:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_152:                             #   in Loop: Header=BB75_113 Depth=2
	movq	(%r13), %rcx
	movq	8(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB75_154
# %bb.153:                              #   in Loop: Header=BB75_113 Depth=2
	movq	8(%r13), %rdi
	movq	%rax, %rsi
	callq	*%rcx
.LBB75_154:                             #   in Loop: Header=BB75_113 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r14)
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r14)
	jmp	.LBB75_112
.LBB75_11:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	shared+112(%rip), %rsi
	movq	%r14, %rdi
	jmp	.LBB75_12
.LBB75_155:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB75_165
.LBB75_156:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_157:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB75_158:
	movq	%r13, %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	(%r12), %rdi
	movq	72(%r13), %rsi
	addq	40(%r13), %rsi
	callq	dictExpand
	.p2align	4, 0x90
.LBB75_159:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB75_161
# %bb.160:                              #   in Loop: Header=BB75_159 Depth=1
	movq	(%rax), %rbx
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	8(%r12), %rdi
	movq	%rbx, %rsi
	callq	zslInsert
	movq	(%r12), %rdi
	leaq	8(%rax), %rdx
	movq	%rbx, %rsi
	callq	dictAdd
	jmp	.LBB75_159
.LBB75_161:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	%r13, %rdi
	callq	dictRelease
	jmp	.LBB75_164
.LBB75_33:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_188
.LBB75_26:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	shared+128(%rip), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
.LBB75_12:
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_188
.LBB75_162:
	xorl	%ebx, %ebx
.LBB75_163:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	zuiClearIterator
.LBB75_164:
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-100(%rbp), %r12d       # 4-byte Reload
	movq	-136(%rbp), %rbx        # 8-byte Reload
.LBB75_165:
	movq	16(%r13), %rdi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB75_167
# %bb.166:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB75_168
.LBB75_167:
	xorl	%r14d, %r14d
.LBB75_168:
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rax
	cmpq	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_176
# %bb.169:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$80, %eax
	movq	-120(%rbp), %r14        # 8-byte Reload
	je	.LBB75_174
# %bb.170:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	cmpq	server+2824(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB75_173
# %bb.171:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, server+2832(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB75_173
# %bb.172:
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	zsetConvert
	movl	$42, __A_VARIABLE(%rip)
.LBB75_173:
	movl	$42, __A_VARIABLE(%rip)
.LBB75_174:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dbAdd
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB75_178
# %bb.175:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %esi
	shrl	%esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_180
.LBB75_176:
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB75_182
# %bb.177:
	movq	16(%r13), %rdi
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	callq	signalModifiedKey
	movq	16(%r13), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	jmp	.LBB75_181
.LBB75_178:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB75_186
# %bb.179:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rsi
.LBB75_180:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	addReplyLongLong
	movq	16(%r13), %rdi
	movq	%r14, %rsi
	callq	signalModifiedKey
	testl	%r12d, %r12d
	movl	$.L.str.48, %eax
	movl	$.L.str.49, %esi
	cmoveq	%rax, %rsi
	movq	16(%r13), %rax
	movl	40(%rax), %ecx
	movl	$128, %edi
.LBB75_181:
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_182:
	movq	%r15, %rdi
	callq	zfree
	jmp	.LBB75_188
.LBB75_183:
	movl	$.L.str.1, %edi
	movl	$.L.str.61, %edx
	movl	$2159, %esi             # imm = 0x86F
.LBB75_184:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB75_185:
	movl	$.L.str.1, %edi
	movl	$.L.str.47, %edx
	movl	$2376, %esi             # imm = 0x948
	jmp	.LBB75_184
.LBB75_186:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	jmp	.LBB75_184
.Lfunc_end75:
	.size	zunionInterGenericCommand, .Lfunc_end75-zunionInterGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI75_0:
	.quad	.LBB75_133
	.quad	.LBB75_139
	.quad	.LBB75_137
	.quad	.LBB75_138
	.quad	.LBB75_136
.LJTI75_1:
	.quad	.LBB75_143
	.quad	.LBB75_148
	.quad	.LBB75_146
	.quad	.LBB75_147
	.quad	.LBB75_145
.LJTI75_2:
	.quad	.LBB75_82
	.quad	.LBB75_86
	.quad	.LBB75_84
	.quad	.LBB75_85
	.quad	.LBB75_83
.LJTI75_3:
	.quad	.LBB75_90
	.quad	.LBB75_95
	.quad	.LBB75_93
	.quad	.LBB75_94
	.quad	.LBB75_92
                                        # -- End function
	.text
	.globl	zunionstoreCommand      # -- Begin function zunionstoreCommand
	.p2align	4, 0x90
	.type	zunionstoreCommand,@function
zunionstoreCommand:                     # @zunionstoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	xorl	%edx, %edx
	callq	zunionInterGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end76:
	.size	zunionstoreCommand, .Lfunc_end76-zunionstoreCommand
                                        # -- End function
	.globl	zinterstoreCommand      # -- Begin function zinterstoreCommand
	.p2align	4, 0x90
	.type	zinterstoreCommand,@function
zinterstoreCommand:                     # @zinterstoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movl	$2, %edx
	callq	zunionInterGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	subq	$104, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB78_86
# %bb.1:
	movq	72(%r12), %rax
	movq	24(%rax), %rsi
	leaq	-96(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB78_86
# %bb.2:
	movl	64(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB78_9
# %bb.3:
	movq	72(%r12), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.50, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB78_10
# %bb.4:
	movl	$1, %r13d
	jmp	.LBB78_5
.LBB78_9:
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jl	.LBB78_5
.LBB78_10:
	movq	shared+128(%rip), %rsi
.LBB78_11:
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB78_86
.LBB78_5:
	movq	shared+104(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB78_86
# %bb.6:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB78_7
.LBB78_86:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB78_7:
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB78_12
# %bb.8:
	movq	8(%rbx), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB78_14
.LBB78_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB78_23
# %bb.13:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB78_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jns	.LBB78_16
# %bb.15:
	addq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB78_16:
	movq	-96(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jns	.LBB78_18
# %bb.17:
	addq	%rax, %r15
	movq	%r15, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB78_18:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jns	.LBB78_20
# %bb.19:
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB78_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jg	.LBB78_22
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jge	.LBB78_22
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jl	.LBB78_27
# %bb.26:
	leaq	-1(%rax), %r15
	movq	%r15, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB78_27:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	subq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%r13d, %ecx
	shlq	%cl, %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movl	%r13d, -60(%rbp)        # 4-byte Spill
	jne	.LBB78_50
# %bb.28:
	movq	8(%rbx), %rdi
	movl	-48(%rbp), %esi
	addl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB78_30
# %bb.29:
	movl	$-2, %eax
	subl	%esi, %eax
	movl	%eax, %esi
.LBB78_30:
	callq	ziplistIndex
	movq	%rax, %rbx
	movq	%rax, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB78_31
# %bb.33:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -120(%rbp)          # 8-byte Folded Reload
	je	.LBB78_85
# %bb.34:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB78_49
# %bb.35:                               # %.preheader
	notq	%r15
	addq	-112(%rbp), %r15        # 8-byte Folded Reload
.LBB78_36:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	leaq	-136(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB78_37
# %bb.38:                               #   in Loop: Header=BB78_36 Depth=1
	movq	-136(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB78_39
# %bb.40:                               #   in Loop: Header=BB78_36 Depth=1
	movl	-100(%rbp), %edx
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB78_41
.LBB78_39:                              #   in Loop: Header=BB78_36 Depth=1
	movq	-128(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkLongLong
.LBB78_41:                              #   in Loop: Header=BB78_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB78_43
# %bb.42:                               #   in Loop: Header=BB78_36 Depth=1
	movq	%r13, %rdi
	callq	zzlGetScore
	movq	%r12, %rdi
	callq	addReplyDouble
	movl	$42, __A_VARIABLE(%rip)
.LBB78_43:                              #   in Loop: Header=BB78_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB78_45
# %bb.44:                               #   in Loop: Header=BB78_36 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	zzlPrev
	jmp	.LBB78_46
.LBB78_45:                              #   in Loop: Header=BB78_36 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	zzlNext
.LBB78_46:                              #   in Loop: Header=BB78_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%r15
	je	.LBB78_85
# %bb.47:                               #   in Loop: Header=BB78_36 Depth=1
	movq	-88(%rbp), %rbx
	movq	-80(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB78_49
# %bb.48:                               #   in Loop: Header=BB78_36 Depth=1
	testq	%r13, %r13
	jne	.LBB78_36
.LBB78_49:
	movl	$.L.str.51, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	$2466, %r8d             # imm = 0x9A2
	jmp	.LBB78_32
.LBB78_22:
	movq	shared+104(%rip), %rsi
	jmp	.LBB78_11
.LBB78_50:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB78_87
# %bb.51:
	movq	8(%rbx), %rax
	movq	8(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	-56(%rbp), %rax         # 8-byte Reload
	je	.LBB78_60
# %bb.52:
	movq	8(%rsi), %r13
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB78_70
# %bb.53:
	subq	%rcx, %rax
	movq	(%rsi), %rbx
	movslq	24(%rsi), %r8
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	jmp	.LBB78_54
.LBB78_56:                              #   in Loop: Header=BB78_54 Depth=1
	movq	%rbx, %r13
	movq	%rdx, %rdi
.LBB78_59:                              #   in Loop: Header=BB78_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	movq	%rdi, %rdx
	cmpq	%rax, %rdi
	je	.LBB78_69
.LBB78_54:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_57 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jle	.LBB78_68
# %bb.55:                               #   in Loop: Header=BB78_54 Depth=1
	addq	$-1, %r8
	movq	%r8, %rsi
	shlq	$4, %rsi
	movq	24(%rbx,%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB78_56
.LBB78_57:                              #   Parent Loop BB78_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r13
	movq	%rdx, %rdi
	movq	32(%rbx,%rsi), %rdx
	addq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	ja	.LBB78_59
# %bb.58:                               #   in Loop: Header=BB78_57 Depth=2
	movq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	movq	%rdx, %rdi
	testq	%rcx, %rcx
	jne	.LBB78_57
	jmp	.LBB78_59
.LBB78_60:
	movq	(%rsi), %rbx
	movq	24(%rbx), %r13
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB78_70
# %bb.61:
	addq	$1, %rax
	movslq	24(%rsi), %r8
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB78_62
.LBB78_64:                              #   in Loop: Header=BB78_62 Depth=1
	movq	%rbx, %r13
	movq	%rsi, %rcx
.LBB78_67:                              #   in Loop: Header=BB78_62 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	movq	%rcx, %rsi
	cmpq	%rax, %rcx
	je	.LBB78_69
.LBB78_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_65 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jle	.LBB78_68
# %bb.63:                               #   in Loop: Header=BB78_62 Depth=1
	addq	$-1, %r8
	movq	%r8, %rdi
	shlq	$4, %rdi
	movq	24(%rbx,%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB78_64
.LBB78_65:                              #   Parent Loop BB78_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r13
	movq	%rsi, %rcx
	movq	32(%rbx,%rdi), %rsi
	addq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	ja	.LBB78_67
# %bb.66:                               #   in Loop: Header=BB78_65 Depth=2
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdx,%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	movq	%rsi, %rcx
	testq	%rdx, %rdx
	jne	.LBB78_65
	jmp	.LBB78_67
.LBB78_68:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB78_69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB78_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -120(%rbp)          # 8-byte Folded Reload
	je	.LBB78_85
# %bb.71:                               # %.preheader2
	notq	%r15
	addq	-112(%rbp), %r15        # 8-byte Folded Reload
	jmp	.LBB78_72
.LBB78_84:                              #   in Loop: Header=BB78_72 Depth=1
	xorl	%eax, %eax
	testl	%r14d, %r14d
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13,%rax,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%r15
	je	.LBB78_85
.LBB78_72:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB78_73
# %bb.74:                               #   in Loop: Header=BB78_72 Depth=1
	movq	(%r13), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB78_75
# %bb.76:                               #   in Loop: Header=BB78_72 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI78_0(,%rax,8)
.LBB78_77:                              #   in Loop: Header=BB78_72 Depth=1
	shrq	$3, %rdx
	jmp	.LBB78_82
.LBB78_81:                              #   in Loop: Header=BB78_72 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB78_82
.LBB78_79:                              #   in Loop: Header=BB78_72 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB78_82
.LBB78_80:                              #   in Loop: Header=BB78_72 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB78_82
.LBB78_78:                              #   in Loop: Header=BB78_72 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB78_82
.LBB78_75:                              #   in Loop: Header=BB78_72 Depth=1
	xorl	%edx, %edx
.LBB78_82:                              #   in Loop: Header=BB78_72 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB78_84
# %bb.83:                               #   in Loop: Header=BB78_72 Depth=1
	movsd	8(%r13), %xmm0          # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	addReplyDouble
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB78_84
.LBB78_85:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB78_86
.LBB78_37:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	$2467, %r8d             # imm = 0x9A3
	jmp	.LBB78_32
.LBB78_73:
	movl	$.L.str.52, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	$2500, %r8d             # imm = 0x9C4
.LBB78_32:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB78_23:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
	jmp	.LBB78_24
.LBB78_31:
	movl	$.L.str.15, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	$2462, %r8d             # imm = 0x99E
	jmp	.LBB78_32
.LBB78_87:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2508, %esi             # imm = 0x9CC
.LBB78_24:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end78:
	.size	zrangeGenericCommand, .Lfunc_end78-zrangeGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI78_0:
	.quad	.LBB78_77
	.quad	.LBB78_78
	.quad	.LBB78_79
	.quad	.LBB78_80
	.quad	.LBB78_81
                                        # -- End function
	.text
	.globl	zrangeCommand           # -- Begin function zrangeCommand
	.p2align	4, 0x90
	.type	zrangeCommand,@function
zrangeCommand:                          # @zrangeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	zrangeGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end79:
	.size	zrangeCommand, .Lfunc_end79-zrangeCommand
                                        # -- End function
	.globl	zrevrangeCommand        # -- Begin function zrevrangeCommand
	.p2align	4, 0x90
	.type	zrevrangeCommand,@function
zrevrangeCommand:                       # @zrevrangeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	zrangeGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	$0, -80(%rbp)
	movq	$-1, -144(%rbp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%cl
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax,%rcx,8), %rdi
	movq	16(%rax,%rdx,8), %rsi
	leaq	-120(%rbp), %rdx
	callq	zslParseRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB81_4
# %bb.1:
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	callq	addReplyError
.LBB81_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB81_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB81_4:
	movl	64(%r15), %r13d
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %r13d
	jl	.LBB81_18
# %bb.5:
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	%r12d, -56(%rbp)        # 4-byte Spill
	addl	$-4, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r12d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r15, -136(%rbp)        # 8-byte Spill
	jmp	.LBB81_8
	.p2align	4, 0x90
.LBB81_6:                               #   in Loop: Header=BB81_8 Depth=1
	movl	$-1, %eax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	-136(%rbp), %r15        # 8-byte Reload
.LBB81_7:                               #   in Loop: Header=BB81_8 Depth=1
	addl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r13d
	je	.LBB81_17
.LBB81_8:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r15), %r15
	movl	%r12d, %ebx
	movq	(%r15,%rbx,8), %rax
	movq	8(%rax), %r14
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB81_6
# %bb.9:                                #   in Loop: Header=BB81_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r13d
	jl	.LBB81_14
# %bb.10:                               #   in Loop: Header=BB81_8 Depth=1
	movl	$.L.str.53, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB81_14
# %bb.11:                               #   in Loop: Header=BB81_8 Depth=1
	movq	8(%r15,%rbx,8), %rsi
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB81_16
# %bb.12:                               #   in Loop: Header=BB81_8 Depth=1
	movq	72(%r15), %rax
	movq	16(%rax,%rbx,8), %rsi
	movq	%r15, %rdi
	leaq	-144(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB81_16
# %bb.13:                               #   in Loop: Header=BB81_8 Depth=1
	movl	$-3, %eax
	movl	$3, %ecx
	jmp	.LBB81_7
.LBB81_14:
	movq	shared+128(%rip), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
.LBB81_15:
	callq	addReply
.LBB81_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB81_2
.LBB81_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	-56(%rbp), %r12d        # 4-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
.LBB81_18:
	movq	shared+104(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB81_2
# %bb.19:
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB81_2
# %bb.20:
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB81_23
# %bb.21:
	movq	8(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	leaq	-120(%rbp), %rsi
	je	.LBB81_26
# %bb.22:
	callq	zzlLastInRange
	jmp	.LBB81_27
.LBB81_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB81_82
# %bb.24:
	movq	8(%r13), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-120(%rbp), %rsi
	testl	%r12d, %r12d
	je	.LBB81_51
# %bb.25:
	callq	zslLastInRange
	jmp	.LBB81_52
.LBB81_26:
	callq	zzlFirstInRange
.LBB81_27:
	movq	%rax, %rbx
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB81_50
# %bb.28:
	movl	%r12d, -56(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, -96(%rbp)
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB81_35
# %bb.29:
	leaq	-96(%rbp), %r12
.LBB81_30:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB81_32
# %bb.31:                               #   in Loop: Header=BB81_30 Depth=1
	movq	%r14, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r12, %rdx
	callq	zzlPrev
	jmp	.LBB81_33
.LBB81_32:                              #   in Loop: Header=BB81_30 Depth=1
	movq	%r14, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r12, %rdx
	callq	zzlNext
.LBB81_33:                              #   in Loop: Header=BB81_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB81_75
# %bb.34:                               #   in Loop: Header=BB81_30 Depth=1
	subq	$1, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB81_30
.LBB81_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movl	-100(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB81_38
.LBB81_36:                              #   in Loop: Header=BB81_38 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlNext
.LBB81_37:                              #   in Loop: Header=BB81_38 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB81_76
.LBB81_38:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r14b
	jb	.LBB81_76
# %bb.39:                               #   in Loop: Header=BB81_38 Depth=1
	movq	-96(%rbp), %rdi
	callq	zzlGetScore
	movapd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB81_41
# %bb.40:                               #   in Loop: Header=BB81_38 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	-176(%rbp), %xmm1       # 8-byte Folded Reload
	seta	%al
	setae	%cl
	cmpl	$0, -152(%rbp)          # 4-byte Folded Reload
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB81_42
	jmp	.LBB81_76
.LBB81_41:                              #   in Loop: Header=BB81_38 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	setae	%cl
	cmpl	$0, -148(%rbp)          # 4-byte Folded Reload
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB81_76
.LBB81_42:                              #   in Loop: Header=BB81_38 Depth=1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	leaq	-192(%rbp), %rsi
	leaq	-156(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB81_81
# %bb.43:                               #   in Loop: Header=BB81_38 Depth=1
	movq	-192(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB81_45
# %bb.44:                               #   in Loop: Header=BB81_38 Depth=1
	movl	-156(%rbp), %edx
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB81_46
.LBB81_45:                              #   in Loop: Header=BB81_38 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r15, %rdi
	callq	addReplyBulkLongLong
.LBB81_46:                              #   in Loop: Header=BB81_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB81_48
# %bb.47:                               #   in Loop: Header=BB81_38 Depth=1
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$42, __A_VARIABLE(%rip)
.LBB81_48:                              #   in Loop: Header=BB81_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB81_36
# %bb.49:                               #   in Loop: Header=BB81_38 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlPrev
	jmp	.LBB81_37
.LBB81_50:
	movq	shared+104(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	jmp	.LBB81_77
.LBB81_51:
	callq	zslFirstInRange
.LBB81_52:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB81_58
# %bb.53:
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi
	movq	%rdi, %rdx
	negq	%rdx
	xorl	%ecx, %ecx
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB81_54:                              # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rsi
	je	.LBB81_59
# %bb.55:                               #   in Loop: Header=BB81_54 Depth=1
	xorl	%esi, %esi
	testl	%r12d, %r12d
	sete	%sil
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx,%rsi,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB81_54
# %bb.56:
	subq	%rcx, %rdi
	movq	%rdi, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB81_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB81_78
.LBB81_58:
	movq	shared+104(%rip), %rsi
	movq	%r15, %rdi
	jmp	.LBB81_15
.LBB81_59:
	movl	%r12d, %r13d
	notq	%rcx
	addq	%rdi, %rcx
	movq	%rcx, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-104(%rbp), %r14d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movl	-100(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB81_61
.LBB81_60:                              #   in Loop: Header=BB81_61 Depth=1
	addq	$1, %r12
	xorl	%eax, %eax
	testl	%r13d, %r13d
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx,%rax,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB81_57
.LBB81_61:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB81_57
# %bb.62:                               #   in Loop: Header=BB81_61 Depth=1
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB81_64
# %bb.63:                               #   in Loop: Header=BB81_61 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	seta	%al
	setae	%cl
	testl	%r14d, %r14d
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB81_65
	jmp	.LBB81_57
.LBB81_64:                              #   in Loop: Header=BB81_61 Depth=1
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB81_57
.LBB81_65:                              #   in Loop: Header=BB81_61 Depth=1
	movq	(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB81_72
# %bb.66:                               #   in Loop: Header=BB81_61 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI81_0(,%rax,8)
.LBB81_67:                              #   in Loop: Header=BB81_61 Depth=1
	shrq	$3, %rdx
	jmp	.LBB81_73
.LBB81_68:                              #   in Loop: Header=BB81_61 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB81_73
.LBB81_69:                              #   in Loop: Header=BB81_61 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB81_73
.LBB81_70:                              #   in Loop: Header=BB81_61 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB81_73
.LBB81_71:                              #   in Loop: Header=BB81_61 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB81_73
.LBB81_72:                              #   in Loop: Header=BB81_61 Depth=1
	xorl	%edx, %edx
.LBB81_73:                              #   in Loop: Header=BB81_61 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB81_60
# %bb.74:                               #   in Loop: Header=BB81_61 Depth=1
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB81_60
.LBB81_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r14b
	xorl	%r12d, %r12d
.LBB81_76:
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB81_77:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB81_3
.LBB81_78:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB81_80
# %bb.79:
	addq	%r12, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB81_80:
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
	jmp	.LBB81_2
.LBB81_81:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	$2626, %r8d             # imm = 0xA42
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB81_82:
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
	.quad	.LBB81_67
	.quad	.LBB81_71
	.quad	.LBB81_69
	.quad	.LBB81_70
	.quad	.LBB81_68
                                        # -- End function
	.text
	.globl	zrangebyscoreCommand    # -- Begin function zrangebyscoreCommand
	.p2align	4, 0x90
	.type	zrangebyscoreCommand,@function
zrangebyscoreCommand:                   # @zrangebyscoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	genericZrangebyscoreCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end82:
	.size	zrangebyscoreCommand, .Lfunc_end82-zrangebyscoreCommand
                                        # -- End function
	.globl	zrevrangebyscoreCommand # -- Begin function zrevrangebyscoreCommand
	.p2align	4, 0x90
	.type	zrevrangebyscoreCommand,@function
zrevrangebyscoreCommand:                # @zrevrangebyscoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	genericZrangebyscoreCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	subq	$56, %rsp
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-88(%rbp), %rdx
	callq	zslParseRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB84_3
# %bb.1:
	movl	$.L.str.31, %esi
	movq	%r13, %rdi
	callq	addReplyError
.LBB84_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB84_3:
	movq	shared+32(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB84_2
# %bb.4:
	movq	%rax, %r15
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB84_2
# %bb.5:
	movl	(%r15), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB84_13
# %bb.6:
	movq	8(%r15), %r14
	leaq	-88(%rbp), %rsi
	movq	%r14, %rdi
	callq	zzlFirstInRange
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB84_17
# %bb.7:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, %r12
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	callq	zzlGetScore
	movl	-68(%rbp), %ebx
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	testl	%ebx, %ebx
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB84_23
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	zzlGetScore
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	setae	%cl
	testl	%ebx, %ebx
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB84_19
# %bb.9:                                # %.preheader
	movl	$1, %eax
	leaq	-56(%rbp), %r12
	.p2align	4, 0x90
.LBB84_10:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r15
	movq	%r14, %rdi
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdx
	callq	zzlNext
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB84_20
# %bb.11:                               #   in Loop: Header=BB84_10 Depth=1
	movq	-56(%rbp), %rdi
	callq	zzlGetScore
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	setae	%al
	testl	%ebx, %ebx
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r15), %rax
	testb	%cl, %cl
	jne	.LBB84_10
	jmp	.LBB84_20
.LBB84_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB84_22
# %bb.14:
	movq	8(%r15), %rax
	movq	8(%rax), %r14
	leaq	-88(%rbp), %rsi
	movq	%r14, %rdi
	callq	zslFirstInRange
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB84_18
# %bb.15:
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	zslGetRank
	movq	16(%r14), %r15
	subq	%rax, %r15
	addq	$1, %r15
	leaq	-88(%rbp), %rsi
	movq	%r14, %rdi
	callq	zslLastInRange
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB84_21
# %bb.16:
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	zslGetRank
	addq	%r15, %rax
	subq	16(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
	jmp	.LBB84_21
.LBB84_17:
	movq	shared+32(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB84_2
.LBB84_18:
	xorl	%r15d, %r15d
	jmp	.LBB84_21
.LBB84_19:
	xorl	%r15d, %r15d
.LBB84_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB84_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	addReplyLongLong
	jmp	.LBB84_2
.LBB84_22:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2791, %esi             # imm = 0xAE7
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB84_23:
	movl	$.L.str.54, %edx
	movl	$.L.str.1, %ecx
	movq	%r13, %rdi
	movq	%r15, %rsi
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
	subq	$56, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	leaq	-80(%rbp), %rdx
	callq	zslParseLexRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB85_2
# %bb.1:
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB85_12
.LBB85_2:
	movq	shared+32(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB85_4
# %bb.3:
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB85_13
.LBB85_4:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB85_7
# %bb.5:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB85_8
# %bb.6:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB85_8
.LBB85_7:
	movq	%rdi, %rax
.LBB85_8:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB85_11
# %bb.9:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB85_11
# %bb.10:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB85_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB85_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB85_13:
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB85_21
# %bb.14:
	movq	8(%r13), %r14
	leaq	-80(%rbp), %rsi
	movq	%r14, %rdi
	callq	zzlFirstInLexRange
	movq	%rax, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB85_25
# %bb.15:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -96(%rbp)
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %rdi
	movl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	-72(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r12
	je	.LBB85_29
# %bb.16:
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB85_30
# %bb.17:
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdx
	je	.LBB85_30
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB85_30
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB85_30
# %bb.20:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	sdscmp
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB85_30
.LBB85_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB85_54
# %bb.22:
	movq	8(%r13), %rax
	movq	8(%rax), %rbx
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zslFirstInLexRange
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB85_28
# %bb.23:
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	zslGetRank
	movq	16(%rbx), %r13
	subq	%rax, %r13
	addq	$1, %r13
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zslLastInLexRange
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB85_41
# %bb.24:
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	zslGetRank
	addq	%r13, %rax
	subq	16(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB85_41
.LBB85_25:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB85_49
# %bb.26:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB85_50
# %bb.27:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB85_50
.LBB85_28:
	xorl	%r13d, %r13d
	jmp	.LBB85_41
.LBB85_29:
	xorl	%eax, %eax
.LBB85_30:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB85_55
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB85_32:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmpq	%r14, %r12
	je	.LBB85_38
# %bb.33:                               #   in Loop: Header=BB85_32 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%r14, %rcx
	je	.LBB85_38
# %bb.34:                               #   in Loop: Header=BB85_32 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdx
	je	.LBB85_38
# %bb.35:                               #   in Loop: Header=BB85_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r14, %rdx
	je	.LBB85_38
# %bb.36:                               #   in Loop: Header=BB85_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB85_38
# %bb.37:                               #   in Loop: Header=BB85_32 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	sdscmp
	.p2align	4, 0x90
.LBB85_38:                              #   in Loop: Header=BB85_32 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setle	%bl
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB85_40
# %bb.39:                               #   in Loop: Header=BB85_32 Depth=1
	addq	$1, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	zzlNext
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB85_32
.LBB85_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB85_41:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB85_44
# %bb.42:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB85_45
# %bb.43:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB85_45
.LBB85_44:
	movq	%rdi, %rax
.LBB85_45:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB85_48
# %bb.46:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB85_48
# %bb.47:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB85_48:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	addReplyLongLong
	jmp	.LBB85_12
.LBB85_49:
	movq	%rdi, %rax
.LBB85_50:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB85_53
# %bb.51:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB85_53
# %bb.52:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB85_53:
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+32(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB85_11
.LBB85_54:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$2869, %esi             # imm = 0xB35
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB85_55:
	movl	$.L.str.55, %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax,%rcx,8), %rdi
	movq	16(%rax,%rdx,8), %rsi
	leaq	-80(%rbp), %rdx
	callq	zslParseLexRange
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB86_2
# %bb.1:
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB86_134
.LBB86_2:
	movl	%r14d, -52(%rbp)        # 4-byte Spill
	movl	64(%rbx), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %r14d
	jl	.LBB86_10
# %bb.3:
	addl	$-4, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB86_4:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r14d
	jl	.LBB86_15
# %bb.5:                                #   in Loop: Header=BB86_4 Depth=1
	movq	72(%rbx), %r12
	movq	32(%r12,%r13), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.53, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB86_15
# %bb.6:                                #   in Loop: Header=BB86_4 Depth=1
	movq	40(%r12,%r13), %rsi
	movq	%rbx, %rdi
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB86_18
# %bb.7:                                #   in Loop: Header=BB86_4 Depth=1
	movq	72(%rbx), %rax
	movq	48(%rax,%r13), %rsi
	movq	%rbx, %rdi
	leaq	-120(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB86_18
# %bb.8:                                #   in Loop: Header=BB86_4 Depth=1
	addq	$24, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-3, %r14d
	jne	.LBB86_4
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB86_10:
	movq	shared+104(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB86_12
# %bb.11:
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB86_26
.LBB86_12:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_21
# %bb.13:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_22
# %bb.14:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB86_22
.LBB86_15:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_29
# %bb.16:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_30
# %bb.17:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB86_30
.LBB86_21:
	movq	%rdi, %rax
.LBB86_22:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_25
# %bb.23:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_25
# %bb.24:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB86_25:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_134
.LBB86_26:
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jne	.LBB86_39
# %bb.27:
	movq	8(%r12), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %r14d        # 4-byte Reload
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	testl	%r14d, %r14d
	je	.LBB86_42
# %bb.28:
	callq	zzlLastInLexRange
	jmp	.LBB86_43
.LBB86_29:
	movq	%rdi, %rax
.LBB86_30:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_33
# %bb.31:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_33
# %bb.32:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB86_33:
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_134
.LBB86_39:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	movl	-52(%rbp), %r14d        # 4-byte Reload
	jne	.LBB86_137
# %bb.40:
	movq	8(%r12), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rsi
	testl	%r14d, %r14d
	je	.LBB86_83
# %bb.41:
	callq	zslLastInLexRange
	jmp	.LBB86_84
.LBB86_42:
	callq	zzlFirstInLexRange
.LBB86_43:
	movq	%rax, %rbx
	movq	%rax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB86_80
# %bb.44:
	movq	%r12, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addDeferredMultiBulkLength
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB86_51
# %bb.45:
	leaq	-104(%rbp), %r12
	leaq	-112(%rbp), %r13
.LBB86_46:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	testl	%r14d, %r14d
	je	.LBB86_48
# %bb.47:                               #   in Loop: Header=BB86_46 Depth=1
	callq	zzlPrev
	jmp	.LBB86_49
.LBB86_48:                              #   in Loop: Header=BB86_46 Depth=1
	callq	zzlNext
.LBB86_49:                              #   in Loop: Header=BB86_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB86_119
# %bb.50:                               #   in Loop: Header=BB86_46 Depth=1
	subq	$1, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB86_46
.LBB86_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB86_54
.LBB86_52:                              #   in Loop: Header=BB86_54 Depth=1
	callq	zzlNext
.LBB86_53:                              #   in Loop: Header=BB86_54 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB86_79
.LBB86_54:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB86_79
# %bb.55:                               #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %r13
	testl	%r14d, %r14d
	je	.LBB86_62
# %bb.56:                               #   in Loop: Header=BB86_54 Depth=1
	movl	-64(%rbp), %edi
	movq	-80(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rsi
	je	.LBB86_68
# %bb.57:                               #   in Loop: Header=BB86_54 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%r13, %rcx
	je	.LBB86_69
# %bb.58:                               #   in Loop: Header=BB86_54 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB86_69
# %bb.59:                               #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r13, %rdx
	je	.LBB86_69
# %bb.60:                               #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB86_69
# %bb.61:                               #   in Loop: Header=BB86_54 Depth=1
	movl	%edi, %r14d
	movq	%r13, %rdi
	callq	sdscmp
	movl	%r14d, %edi
	jmp	.LBB86_69
.LBB86_62:                              #   in Loop: Header=BB86_54 Depth=1
	movl	-60(%rbp), %edi
	movq	-72(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rsi
	je	.LBB86_70
# %bb.63:                               #   in Loop: Header=BB86_54 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%r13, %rcx
	je	.LBB86_71
# %bb.64:                               #   in Loop: Header=BB86_54 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB86_71
# %bb.65:                               #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r13, %rdx
	je	.LBB86_71
# %bb.66:                               #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB86_71
# %bb.67:                               #   in Loop: Header=BB86_54 Depth=1
	movl	%edi, %r14d
	movq	%r13, %rdi
	callq	sdscmp
	movl	%r14d, %edi
	jmp	.LBB86_71
.LBB86_68:                              #   in Loop: Header=BB86_54 Depth=1
	xorl	%eax, %eax
.LBB86_69:                              #   in Loop: Header=BB86_54 Depth=1
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setg	%r14b
	notl	%eax
	shrl	$31, %eax
	testl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %r14d
	jmp	.LBB86_72
.LBB86_70:                              #   in Loop: Header=BB86_54 Depth=1
	xorl	%eax, %eax
.LBB86_71:                              #   in Loop: Header=BB86_54 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	setle	%r14b
	testl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %r14d
.LBB86_72:                              #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB86_79
# %bb.73:                               #   in Loop: Header=BB86_54 Depth=1
	movq	%rbx, %rdi
	leaq	-152(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-52(%rbp), %r14d        # 4-byte Reload
	je	.LBB86_136
# %bb.74:                               #   in Loop: Header=BB86_54 Depth=1
	movq	-152(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rbx
	je	.LBB86_76
# %bb.75:                               #   in Loop: Header=BB86_54 Depth=1
	movl	-124(%rbp), %edx
	callq	addReplyBulkCBuffer
	jmp	.LBB86_77
.LBB86_76:                              #   in Loop: Header=BB86_54 Depth=1
	movq	-144(%rbp), %rsi
	callq	addReplyBulkLongLong
.LBB86_77:                              #   in Loop: Header=BB86_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	testl	%r14d, %r14d
	je	.LBB86_52
# %bb.78:                               #   in Loop: Header=BB86_54 Depth=1
	callq	zzlPrev
	jmp	.LBB86_53
.LBB86_79:
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movb	$1, %al
	jmp	.LBB86_125
.LBB86_80:
	movq	shared+104(%rip), %rsi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	callq	addReply
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_120
# %bb.81:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_121
# %bb.82:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB86_121
.LBB86_83:
	callq	zslFirstInLexRange
.LBB86_84:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB86_90
# %bb.85:
	movq	%rbx, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	negq	%rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB86_86:                              # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rsi
	je	.LBB86_91
# %bb.87:                               #   in Loop: Header=BB86_86 Depth=1
	xorl	%esi, %esi
	testl	%r14d, %r14d
	sete	%sil
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13,%rsi,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB86_86
# %bb.88:
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB86_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB86_126
.LBB86_90:
	movq	shared+104(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB86_18:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_34
# %bb.19:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_35
# %bb.20:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB86_35
.LBB86_34:
	movq	%rdi, %rax
.LBB86_35:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_38
# %bb.36:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_38
# %bb.37:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB86_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_134
.LBB86_91:
	notq	%rcx
	addq	%rax, %rcx
	movq	%rcx, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB86_94
.LBB86_92:                              #   in Loop: Header=BB86_94 Depth=1
	movq	-17(%rsi), %rdx
.LBB86_93:                              #   in Loop: Header=BB86_94 Depth=1
	addq	$1, %r12
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	sete	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13,%rbx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB86_89
.LBB86_94:                              # =>This Inner Loop Header: Depth=1
	subq	$1, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB86_89
# %bb.95:                               #   in Loop: Header=BB86_94 Depth=1
	movq	(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB86_102
# %bb.96:                               #   in Loop: Header=BB86_94 Depth=1
	movl	-64(%rbp), %r14d
	movq	-80(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB86_108
# %bb.97:                               #   in Loop: Header=BB86_94 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB86_109
# %bb.98:                               #   in Loop: Header=BB86_94 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB86_109
# %bb.99:                               #   in Loop: Header=BB86_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB86_109
# %bb.100:                              #   in Loop: Header=BB86_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB86_109
# %bb.101:                              #   in Loop: Header=BB86_94 Depth=1
	callq	sdscmp
	jmp	.LBB86_109
.LBB86_102:                             #   in Loop: Header=BB86_94 Depth=1
	movl	-60(%rbp), %r14d
	movq	-72(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB86_110
# %bb.103:                              #   in Loop: Header=BB86_94 Depth=1
	movq	shared+80960(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	%rdi, %rcx
	je	.LBB86_111
# %bb.104:                              #   in Loop: Header=BB86_94 Depth=1
	movq	shared+80968(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	je	.LBB86_111
# %bb.105:                              #   in Loop: Header=BB86_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rdi, %rdx
	je	.LBB86_111
# %bb.106:                              #   in Loop: Header=BB86_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB86_111
# %bb.107:                              #   in Loop: Header=BB86_94 Depth=1
	callq	sdscmp
	jmp	.LBB86_111
.LBB86_108:                             #   in Loop: Header=BB86_94 Depth=1
	xorl	%eax, %eax
.LBB86_109:                             #   in Loop: Header=BB86_94 Depth=1
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	notl	%eax
	shrl	$31, %eax
	testl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB86_112
	jmp	.LBB86_89
.LBB86_110:                             #   in Loop: Header=BB86_94 Depth=1
	xorl	%eax, %eax
.LBB86_111:                             #   in Loop: Header=BB86_94 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	setle	%dl
	testl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB86_89
.LBB86_112:                             #   in Loop: Header=BB86_94 Depth=1
	movq	(%r13), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB86_118
# %bb.113:                              #   in Loop: Header=BB86_94 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	movl	-52(%rbp), %r14d        # 4-byte Reload
	jmpq	*.LJTI86_0(,%rax,8)
.LBB86_114:                             #   in Loop: Header=BB86_94 Depth=1
	shrq	$3, %rdx
	jmp	.LBB86_93
.LBB86_115:                             #   in Loop: Header=BB86_94 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB86_93
.LBB86_116:                             #   in Loop: Header=BB86_94 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB86_93
.LBB86_117:                             #   in Loop: Header=BB86_94 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB86_93
.LBB86_118:                             #   in Loop: Header=BB86_94 Depth=1
	xorl	%edx, %edx
	movl	-52(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB86_93
.LBB86_119:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	xorl	%r12d, %r12d
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB86_125
.LBB86_120:
	movq	%rdi, %rax
.LBB86_121:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_124
# %bb.122:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_124
# %bb.123:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB86_124:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
.LBB86_125:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB86_135
.LBB86_126:
	movq	-80(%rbp), %rdi
	movq	shared+80960(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_129
# %bb.127:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_130
# %bb.128:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+80960(%rip), %rax
	jmp	.LBB86_130
.LBB86_129:
	movq	%rdi, %rax
.LBB86_130:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB86_133
# %bb.131:
	cmpq	shared+80968(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_133
# %bb.132:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB86_133:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
.LBB86_134:
	movl	$42, __A_VARIABLE(%rip)
.LBB86_135:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_136:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	$2980, %r8d             # imm = 0xBA4
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB86_137:
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
	.quad	.LBB86_114
	.quad	.LBB86_117
	.quad	.LBB86_115
	.quad	.LBB86_116
	.quad	.LBB86_92
                                        # -- End function
	.text
	.globl	zrangebylexCommand      # -- Begin function zrangebylexCommand
	.p2align	4, 0x90
	.type	zrangebylexCommand,@function
zrangebylexCommand:                     # @zrangebylexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	genericZrangebylexCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end87:
	.size	zrangebylexCommand, .Lfunc_end87-zrangebylexCommand
                                        # -- End function
	.globl	zrevrangebylexCommand   # -- Begin function zrevrangebylexCommand
	.p2align	4, 0x90
	.type	zrevrangebylexCommand,@function
zrevrangebylexCommand:                  # @zrevrangebylexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	genericZrangebylexCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB89_7
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB89_7
# %bb.2:
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB89_4
# %bb.3:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %esi
	shrl	%esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB89_6
.LBB89_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB89_8
# %bb.5:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rsi
.LBB89_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	addReplyLongLong
.LBB89_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB89_8:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB90_6
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB90_6
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB90_3
# %bb.4:
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	addReplyDouble
	jmp	.LBB90_5
.LBB90_3:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB90_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB90_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_8
# %bb.1:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_8
# %bb.2:
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB91_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB91_9
.LBB91_4:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	zsetRank
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB91_6
# %bb.5:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	jmp	.LBB91_7
.LBB91_6:
	movq	shared+80(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
.LBB91_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB91_9:
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	zrankGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end92:
	.size	zrankCommand, .Lfunc_end92-zrankCommand
                                        # -- End function
	.globl	zrevrankCommand         # -- Begin function zrevrankCommand
	.p2align	4, 0x90
	.type	zrevrankCommand,@function
zrevrankCommand:                        # @zrevrankCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	zrankGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB94_4
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+360(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB94_4
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB94_4
# %bb.3:
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	scanGenericCommand
.LBB94_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%r8d, %r12d
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	$1, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB95_4
# %bb.1:
	leaq	-64(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r9, %rsi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_52
# %bb.2:
	cmpq	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB95_3
.LBB95_4:
	movl	%r12d, -52(%rbp)        # 4-byte Spill
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB95_5:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jge	.LBB95_54
# %bb.6:                                #   in Loop: Header=BB95_5 Depth=1
	movq	(%r15,%rbx,8), %r13
	addq	$1, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r13, %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB95_5
# %bb.7:
	movq	%rax, %r12
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_53
# %bb.8:
	movq	%rbx, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB95_10
# %bb.9:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	addReplyBulk
	movl	$42, __A_VARIABLE(%rip)
.LBB95_10:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB95_21
# %bb.12:                               #   in Loop: Header=BB95_11 Depth=1
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movq	8(%r12), %r14
	movq	%r14, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB95_13
# %bb.14:                               #   in Loop: Header=BB95_11 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	leaq	-120(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB95_15
# %bb.16:                               #   in Loop: Header=BB95_11 Depth=1
	movq	-120(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB95_17
# %bb.18:                               #   in Loop: Header=BB95_11 Depth=1
	movl	-72(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB95_19
	.p2align	4, 0x90
.LBB95_21:                              #   in Loop: Header=BB95_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB95_28
# %bb.22:                               #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
.LBB95_17:                              #   in Loop: Header=BB95_11 Depth=1
	movq	-112(%rbp), %rdi
	callq	sdsfromlonglong
.LBB95_19:                              #   in Loop: Header=BB95_11 Depth=1
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB95_20
# %bb.30:                               #   in Loop: Header=BB95_11 Depth=1
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-104(%rbp), %r14        # 8-byte Reload
.LBB95_31:                              #   in Loop: Header=BB95_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	zsetDel
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB95_32
# %bb.34:                               #   in Loop: Header=BB95_11 Depth=1
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB95_36:                              #   in Loop: Header=BB95_11 Depth=1
	movzbl	-1(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addReplyBulkCBuffer
	movq	%rbx, %rdi
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	addReplyDouble
	movq	%r15, %rdi
	callq	sdsfree
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB95_46
# %bb.45:                               #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB95_48
	.p2align	4, 0x90
.LBB95_46:                              #   in Loop: Header=BB95_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB95_55
# %bb.47:                               #   in Loop: Header=BB95_11 Depth=1
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
.LBB95_48:                              #   in Loop: Header=BB95_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB95_49
# %bb.50:                               #   in Loop: Header=BB95_11 Depth=1
	leaq	2(%r14), %rax
	addq	$-1, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB95_11
	jmp	.LBB95_51
.LBB95_54:
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+104(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB95_52
.LBB95_3:
	movq	shared+104(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB95_52
.LBB95_49:
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	callq	dbDelete
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.30, %esi
	movl	$4, %edi
	movq	%r13, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB95_51:
	xorl	%eax, %eax
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	setne	%al
	orq	%rax, %r14
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	setDeferredMultiBulkLength
.LBB95_52:
	movl	$42, __A_VARIABLE(%rip)
.LBB95_53:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB95_32:
	movl	$.L.str.58, %edx
	movl	$.L.str.1, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$3213, %r8d             # imm = 0xC8D
	jmp	.LBB95_33
.LBB95_13:
	movl	$.L.str.15, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3185, %r8d             # imm = 0xC71
	jmp	.LBB95_33
.LBB95_15:
	movl	$.L.str.6, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3186, %r8d             # imm = 0xC72
	jmp	.LBB95_33
.LBB95_28:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$3210, %esi             # imm = 0xC8A
	jmp	.LBB95_29
.LBB95_26:
	movl	$.L.str.57, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3206, %r8d             # imm = 0xC86
	jmp	.LBB95_33
.LBB95_20:
	movl	$.L.str.4, %edx
	movl	$.L.str.1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	$3194, %r8d             # imm = 0xC7A
.LBB95_33:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB95_55:
	movl	$.L.str.1, %edi
	movl	$.L.str.13, %edx
	movl	$1163, %esi             # imm = 0x48B
.LBB95_29:
	xorl	%eax, %eax
	callq	_serverPanic
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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	64(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jl	.LBB96_2
# %bb.1:
	movq	shared+128(%rip), %rsi
	callq	addReply
	jmp	.LBB96_6
.LBB96_2:
	movq	72(%rdi), %rcx
	leaq	8(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB96_3
# %bb.4:
	movq	16(%rcx), %r9
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB96_5
.LBB96_3:
	xorl	%r9d, %r9d
.LBB96_5:
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	genericZpopCommand
.LBB96_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end96:
	.size	zpopminCommand, .Lfunc_end96-zpopminCommand
                                        # -- End function
	.globl	zpopmaxCommand          # -- Begin function zpopmaxCommand
	.p2align	4, 0x90
	.type	zpopmaxCommand,@function
zpopmaxCommand:                         # @zpopmaxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	64(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jl	.LBB97_2
# %bb.1:
	movq	shared+128(%rip), %rsi
	callq	addReply
	jmp	.LBB97_6
.LBB97_2:
	movq	72(%rdi), %rcx
	leaq	8(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB97_3
# %bb.4:
	movq	16(%rcx), %r9
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB97_5
.LBB97_3:
	xorl	%r9d, %r9d
.LBB97_5:
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	genericZpopCommand
.LBB97_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB98_18
# %bb.1:
	movl	64(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jl	.LBB98_14
# %bb.2:
	movl	$1, %ebx
	jmp	.LBB98_3
	.p2align	4, 0x90
.LBB98_8:                               #   in Loop: Header=BB98_3 Depth=1
	movq	8(%rax), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
.LBB98_11:                              #   in Loop: Header=BB98_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB98_12
.LBB98_13:                              #   in Loop: Header=BB98_3 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r15), %rcx
	leaq	-1(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB98_14
.LBB98_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB98_13
# %bb.4:                                #   in Loop: Header=BB98_3 Depth=1
	movl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %edx
	jne	.LBB98_5
# %bb.7:                                #   in Loop: Header=BB98_3 Depth=1
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	je	.LBB98_8
# %bb.9:                                #   in Loop: Header=BB98_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB98_19
# %bb.10:                               #   in Loop: Header=BB98_3 Depth=1
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.LBB98_11
.LBB98_14:
	testb	$8, 160(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB98_15
# %bb.16:
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
	jmp	.LBB98_17
.LBB98_15:
	movq	shared+88(%rip), %rsi
	jmp	.LBB98_6
.LBB98_5:
	movq	shared+112(%rip), %rsi
.LBB98_6:
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB98_17
.LBB98_12:
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
.LBB98_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB98_18:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB98_19:
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	blockingGenericZpopCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end99:
	.size	bzpopminCommand, .Lfunc_end99-bzpopminCommand
                                        # -- End function
	.globl	bzpopmaxCommand         # -- Begin function bzpopmaxCommand
	.p2align	4, 0x90
	.type	bzpopmaxCommand,@function
bzpopmaxCommand:                        # @bzpopmaxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	blockingGenericZpopCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
