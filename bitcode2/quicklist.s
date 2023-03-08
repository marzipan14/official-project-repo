	.text
	.file	"quicklist.c"
	.globl	quicklistCreate         # -- Begin function quicklistCreate
	.p2align	4, 0x90
	.type	quicklistCreate,@function
quicklistCreate:                        # @quicklistCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$40, %edi
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movl	$65534, 32(%rax)        # imm = 0xFFFE
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	quicklistCreate, .Lfunc_end0-quicklistCreate
                                        # -- End function
	.globl	quicklistSetCompressDepth # -- Begin function quicklistSetCompressDepth
	.p2align	4, 0x90
	.type	quicklistSetCompressDepth,@function
quicklistSetCompressDepth:              # @quicklistSetCompressDepth
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$65536, %eax            # imm = 0x10000
	cmpl	$65536, %esi            # imm = 0x10000
	jg	.LBB1_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB1_4
# %bb.2:
	xorl	%eax, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
.LBB1_4:
	movw	%si, 34(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	quicklistSetCompressDepth, .Lfunc_end1-quicklistSetCompressDepth
                                        # -- End function
	.globl	quicklistSetFill        # -- Begin function quicklistSetFill
	.p2align	4, 0x90
	.type	quicklistSetFill,@function
quicklistSetFill:                       # @quicklistSetFill
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32768, %eax            # imm = 0x8000
	cmpl	$32768, %esi            # imm = 0x8000
	jg	.LBB2_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-5, %eax
	cmpl	$-6, %esi
	jg	.LBB2_3
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
.LBB2_3:
	movw	%si, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	quicklistSetFill, .Lfunc_end2-quicklistSetFill
                                        # -- End function
	.globl	quicklistSetOptions     # -- Begin function quicklistSetOptions
	.p2align	4, 0x90
	.type	quicklistSetOptions,@function
quicklistSetOptions:                    # @quicklistSetOptions
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32768, %eax            # imm = 0x8000
	cmpl	$32768, %esi            # imm = 0x8000
	jg	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-5, %eax
	cmpl	$-6, %esi
	jg	.LBB3_3
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
.LBB3_3:
	movzwl	%si, %eax
	movw	%ax, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$65536, %ecx            # imm = 0x10000
	cmpl	$65536, %edx            # imm = 0x10000
	jg	.LBB3_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB3_7
# %bb.5:
	xorl	%ecx, %ecx
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
.LBB3_7:
	shll	$16, %edx
	orl	%eax, %edx
	movl	%edx, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	quicklistSetOptions, .Lfunc_end3-quicklistSetOptions
                                        # -- End function
	.globl	quicklistNew            # -- Begin function quicklistNew
	.p2align	4, 0x90
	.type	quicklistNew,@function
quicklistNew:                           # @quicklistNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movl	%edi, %r14d
	movl	$40, %edi
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movl	$65534, 32(%rax)        # imm = 0xFFFE
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$32768, %ecx            # imm = 0x8000
	cmpl	$32768, %r14d           # imm = 0x8000
	jg	.LBB4_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-5, %ecx
	cmpl	$-6, %r14d
	jg	.LBB4_3
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r14d
.LBB4_3:
	movzwl	%r14w, %ecx
	movl	%ecx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$65536, %edx            # imm = 0x10000
	cmpl	$65536, %ebx            # imm = 0x10000
	jg	.LBB4_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jns	.LBB4_7
# %bb.5:
	xorl	%edx, %edx
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ebx
.LBB4_7:
	shll	$16, %ebx
	orl	%ecx, %ebx
	movl	%ebx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	quicklistNew, .Lfunc_end4-quicklistNew
                                        # -- End function
	.globl	quicklistCreateNode     # -- Begin function quicklistCreateNode
	.p2align	4, 0x90
	.type	quicklistCreateNode,@function
quicklistCreateNode:                    # @quicklistCreateNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$32, %edi
	callq	zmalloc
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %ecx         # imm = 0xFFE00000
	andl	28(%rax), %ecx
	orl	$589824, %ecx           # imm = 0x90000
	movl	%ecx, 28(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	quicklistCreateNode, .Lfunc_end5-quicklistCreateNode
                                        # -- End function
	.globl	quicklistCount          # -- Begin function quicklistCount
	.p2align	4, 0x90
	.type	quicklistCount,@function
quicklistCount:                         # @quicklistCount
# %bb.0:
	movq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	quicklistCount, .Lfunc_end6-quicklistCount
                                        # -- End function
	.globl	quicklistRelease        # -- Begin function quicklistRelease
	.p2align	4, 0x90
	.type	quicklistRelease,@function
quicklistRelease:                       # @quicklistRelease
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	24(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB7_2
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %r12
	movq	16(%rbx), %rdi
	callq	zfree
	movzwl	28(%rbx), %eax
	subq	%rax, 16(%r14)
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	addq	$-1, %r15
	jne	.LBB7_1
.LBB7_2:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	quicklistRelease, .Lfunc_end7-quicklistRelease
                                        # -- End function
	.globl	__quicklistCompressNode # -- Begin function __quicklistCompressNode
	.p2align	4, 0x90
	.type	__quicklistCompressNode,@function
__quicklistCompressNode:                # @__quicklistCompressNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	24(%rdi), %edi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rdi
	jb	.LBB8_6
# %bb.1:
	addq	$4, %rdi
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	movl	24(%rbx), %ecx
	leaq	4(%rax), %rdx
	movl	%ecx, %esi
	callq	lzf_compress
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_3
# %bb.2:
	leal	8(%rax), %ecx
	cmpl	24(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB8_3
# %bb.4:
	movl	%eax, %esi
	addq	$4, %rsi
	movq	%r14, %rdi
	callq	zrealloc
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%r14, 16(%rbx)
	movl	$-1245185, %eax         # imm = 0xFFECFFFF
	andl	28(%rbx), %eax
	orl	$131072, %eax           # imm = 0x20000
	movl	%eax, 28(%rbx)
	movl	$1, %eax
	jmp	.LBB8_5
.LBB8_3:
	movq	%r14, %rdi
	callq	zfree
	xorl	%eax, %eax
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	__quicklistCompressNode, .Lfunc_end8-__quicklistCompressNode
                                        # -- End function
	.globl	__quicklistDecompressNode # -- Begin function __quicklistDecompressNode
	.p2align	4, 0x90
	.type	__quicklistDecompressNode,@function
__quicklistDecompressNode:              # @__quicklistDecompressNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	24(%rdi), %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%rbx), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%rbx), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_1
# %bb.2:
	movq	%r15, %rdi
	callq	zfree
	movq	%r14, 16(%rbx)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%rbx), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%rbx)
	movl	$1, %eax
	jmp	.LBB9_3
.LBB9_1:
	movq	%r14, %rdi
	callq	zfree
	xorl	%eax, %eax
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	__quicklistDecompressNode, .Lfunc_end9-__quicklistDecompressNode
                                        # -- End function
	.globl	quicklistGetLzf         # -- Begin function quicklistGetLzf
	.p2align	4, 0x90
	.type	quicklistGetLzf,@function
quicklistGetLzf:                        # @quicklistGetLzf
# %bb.0:
	movq	16(%rdi), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, (%rsi)
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	quicklistGetLzf, .Lfunc_end10-quicklistGetLzf
                                        # -- End function
	.globl	__quicklistCompress     # -- Begin function __quicklistCompress
	.p2align	4, 0x90
	.type	__quicklistCompress,@function
__quicklistCompress:                    # @__quicklistCompress
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	32(%rdi), %eax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB11_34
# %bb.1:
	addq	%rcx, %rcx
	cmpq	%rcx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_34
# %bb.2:
	movq	(%rdi), %rbx
	movq	8(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jb	.LBB11_3
# %bb.4:                                # %.preheader
	xorl	%r12d, %r12d
	movl	$196608, %ecx           # imm = 0x30000
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB11_11
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	movl	28(%rbx), %eax
	andl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB11_11
# %bb.7:                                #   in Loop: Header=BB11_5 Depth=1
	movl	24(%rbx), %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	16(%rbx), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%rbx), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_8
# %bb.9:                                #   in Loop: Header=BB11_5 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movq	%r13, 16(%rbx)
	movl	28(%rbx), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%rbx)
	jmp	.LBB11_10
.LBB11_8:                               #   in Loop: Header=BB11_5 Depth=1
	movq	%r13, %rdi
	callq	zfree
.LBB11_10:                              #   in Loop: Header=BB11_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$196608, %ecx           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_11:                              #   in Loop: Header=BB11_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB11_17
# %bb.12:                               #   in Loop: Header=BB11_5 Depth=1
	movl	28(%r14), %eax
	andl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB11_17
# %bb.13:                               #   in Loop: Header=BB11_5 Depth=1
	movl	24(%r14), %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	16(%r14), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%r14), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_14
# %bb.15:                               #   in Loop: Header=BB11_5 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movq	%r13, 16(%r14)
	movl	28(%r14), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r14)
	jmp	.LBB11_16
.LBB11_14:                              #   in Loop: Header=BB11_5 Depth=1
	movq	%r13, %rdi
	callq	zfree
.LBB11_16:                              #   in Loop: Header=BB11_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$196608, %ecx           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_17:                              #   in Loop: Header=BB11_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rbx
	je	.LBB11_19
# %bb.18:                               #   in Loop: Header=BB11_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r14
	jne	.LBB11_20
.LBB11_19:                              #   in Loop: Header=BB11_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB11_20:                              #   in Loop: Header=BB11_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB11_33
# %bb.21:                               #   in Loop: Header=BB11_5 Depth=1
	movq	8(%rbx), %rbx
	movq	(%r14), %r14
	movl	$42, __A_VARIABLE(%rip)
	movzwl	34(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r12d
	cmpl	%eax, %r12d
	jb	.LBB11_5
	jmp	.LBB11_22
.LBB11_3:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
.LBB11_22:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB11_26
# %bb.23:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB11_26
# %bb.24:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB11_26
# %bb.25:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
	movl	$42, __A_VARIABLE(%rip)
.LBB11_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jb	.LBB11_33
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB11_30
# %bb.28:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB11_30
# %bb.29:
	movq	%rbx, %rdi
	callq	__quicklistCompressNode
	movl	$42, __A_VARIABLE(%rip)
.LBB11_30:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB11_33
# %bb.31:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB11_33
# %bb.32:
	movq	%r14, %rdi
	callq	__quicklistCompressNode
	movl	$42, __A_VARIABLE(%rip)
.LBB11_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_34:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	__quicklistCompress, .Lfunc_end11-__quicklistCompress
                                        # -- End function
	.globl	__quicklistInsertNode   # -- Begin function __quicklistInsertNode
	.p2align	4, 0x90
	.type	__quicklistInsertNode,@function
__quicklistInsertNode:                  # @__quicklistInsertNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB12_7
# %bb.1:
	movq	%rsi, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB12_5
# %bb.2:
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdx)
	movq	8(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_4
# %bb.3:
	movq	%rdx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_4:
	movq	%rdx, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_5:
	cmpq	%rsi, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_14
# %bb.6:
	movq	%rdx, 8(%rbx)
	jmp	.LBB12_13
.LBB12_7:
	movq	%rsi, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB12_11
# %bb.8:
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_10
# %bb.9:
	movq	%rdx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_10:
	movq	%rdx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_11:
	cmpq	%rsi, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_14
# %bb.12:
	movq	%rdx, (%rbx)
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_16
# %bb.15:
	movq	%rdx, 8(%rbx)
	movq	%rdx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_16:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB12_22
# %bb.17:
	movl	28(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB12_18
# %bb.20:
	movq	%rbx, %rdi
	callq	__quicklistCompress
	jmp	.LBB12_21
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB12_22
# %bb.19:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB12_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_22:
	addq	$1, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	__quicklistInsertNode, .Lfunc_end12-__quicklistInsertNode
                                        # -- End function
	.globl	_quicklistInsertNodeBefore # -- Begin function _quicklistInsertNodeBefore
	.p2align	4, 0x90
	.type	_quicklistInsertNodeBefore,@function
_quicklistInsertNodeBefore:             # @_quicklistInsertNodeBefore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	__quicklistInsertNode
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_quicklistInsertNodeBefore, .Lfunc_end13-_quicklistInsertNodeBefore
                                        # -- End function
	.globl	_quicklistInsertNodeAfter # -- Begin function _quicklistInsertNodeAfter
	.p2align	4, 0x90
	.type	_quicklistInsertNodeAfter,@function
_quicklistInsertNodeAfter:              # @_quicklistInsertNodeAfter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %ecx
	callq	__quicklistInsertNode
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_quicklistInsertNodeAfter, .Lfunc_end14-_quicklistInsertNodeAfter
                                        # -- End function
	.globl	_quicklistNodeSizeMeetsOptimizationRequirement # -- Begin function _quicklistNodeSizeMeetsOptimizationRequirement
	.p2align	4, 0x90
	.type	_quicklistNodeSizeMeetsOptimizationRequirement,@function
_quicklistNodeSizeMeetsOptimizationRequirement: # @_quicklistNodeSizeMeetsOptimizationRequirement
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB15_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-5, %esi
	jb	.LBB15_3
# %bb.2:
	notl	%esi
	movslq	%esi, %rcx
	xorl	%eax, %eax
	cmpq	%rdi, optimization_level(,%rcx,8)
	setae	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB15_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end15:
	.size	_quicklistNodeSizeMeetsOptimizationRequirement, .Lfunc_end15-_quicklistNodeSizeMeetsOptimizationRequirement
                                        # -- End function
	.globl	_quicklistNodeAllowInsert # -- Begin function _quicklistNodeAllowInsert
	.p2align	4, 0x90
	.type	_quicklistNodeAllowInsert,@function
_quicklistNodeAllowInsert:              # @_quicklistNodeAllowInsert
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB16_15
# %bb.1:
	xorl	%ecx, %ecx
	cmpq	$253, %rdx
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rcx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %rdx
	ja	.LBB16_3
# %bb.2:
	addl	$1, %ecx
	jmp	.LBB16_6
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16383, %rdx            # imm = 0x3FFF
	ja	.LBB16_5
# %bb.4:
	orl	$2, %ecx
.LBB16_6:
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edx
	addl	24(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB16_9
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-6, %esi
	jbe	.LBB16_8
# %bb.13:
	movl	%esi, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, optimization_level(,%rcx,8)
	jb	.LBB16_10
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB16_15
.LBB16_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8193, %edx             # imm = 0x2001
	jae	.LBB16_12
# %bb.11:
	movzwl	28(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	%esi, %ecx
	setl	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB16_5:
	addl	$5, %ecx
	jmp	.LBB16_6
.Lfunc_end16:
	.size	_quicklistNodeAllowInsert, .Lfunc_end16-_quicklistNodeAllowInsert
                                        # -- End function
	.globl	_quicklistNodeAllowMerge # -- Begin function _quicklistNodeAllowMerge
	.p2align	4, 0x90
	.type	_quicklistNodeAllowMerge,@function
_quicklistNodeAllowMerge:               # @_quicklistNodeAllowMerge
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB17_11
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB17_11
# %bb.2:
	movl	24(%rdi), %r8d
	movl	24(%rsi), %ecx
	addl	%ecx, %r8d
	addl	$-11, %r8d
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB17_5
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-6, %edx
	jbe	.LBB17_4
# %bb.9:
	movl	%edx, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, optimization_level(,%rcx,8)
	jb	.LBB17_6
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB17_11
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8193, %r8d             # imm = 0x2001
	jae	.LBB17_8
# %bb.7:
	movzwl	28(%rdi), %eax
	movzwl	28(%rsi), %ecx
	addl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	setle	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB17_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	_quicklistNodeAllowMerge, .Lfunc_end17-_quicklistNodeAllowMerge
                                        # -- End function
	.globl	quicklistPushHead       # -- Begin function quicklistPushHead
	.p2align	4, 0x90
	.type	quicklistPushHead,@function
quicklistPushHead:                      # @quicklistPushHead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movswl	32(%rdi), %esi
	movq	%r14, %rdi
	callq	_quicklistNodeAllowInsert
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_2
# %bb.1:
	movq	(%rbx), %rax
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	(%rbx), %rcx
	movq	%rax, 16(%rcx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movq	(%rbx), %rcx
	movl	%eax, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_3:
	addq	$1, 16(%rbx)
	addw	$1, 28(%rcx)
	xorl	%eax, %eax
	cmpq	(%rbx), %r14
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_2:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%r13), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%r13)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r13)
	movq	(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	callq	__quicklistInsertNode
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rcx
	jmp	.LBB18_3
.Lfunc_end18:
	.size	quicklistPushHead, .Lfunc_end18-quicklistPushHead
                                        # -- End function
	.globl	quicklistPushTail       # -- Begin function quicklistPushTail
	.p2align	4, 0x90
	.type	quicklistPushTail,@function
quicklistPushTail:                      # @quicklistPushTail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	movswl	32(%rdi), %esi
	movq	%r14, %rdi
	callq	_quicklistNodeAllowInsert
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_2
# %bb.1:
	movq	8(%rbx), %rax
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movl	$1, %ecx
	callq	ziplistPush
	movq	8(%rbx), %rcx
	movq	%rax, 16(%rcx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movq	8(%rbx), %rcx
	movl	%eax, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_3:
	addq	$1, 16(%rbx)
	addw	$1, 28(%rcx)
	xorl	%eax, %eax
	cmpq	8(%rbx), %r14
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_2:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%r13), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, 16(%r13)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r13)
	movq	8(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movl	$1, %ecx
	callq	__quicklistInsertNode
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rcx
	jmp	.LBB19_3
.Lfunc_end19:
	.size	quicklistPushTail, .Lfunc_end19-quicklistPushTail
                                        # -- End function
	.globl	quicklistAppendZiplist  # -- Begin function quicklistAppendZiplist
	.p2align	4, 0x90
	.type	quicklistAppendZiplist,@function
quicklistAppendZiplist:                 # @quicklistAppendZiplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%rbx), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, 16(%rbx)
	movq	%r15, %rdi
	callq	ziplistLen
	movw	%ax, 28(%rbx)
	movq	%r15, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movq	8(%r14), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	$1, %ecx
	callq	__quicklistInsertNode
	movl	$42, __A_VARIABLE(%rip)
	movzwl	28(%rbx), %eax
	addq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	quicklistAppendZiplist, .Lfunc_end20-quicklistAppendZiplist
                                        # -- End function
	.globl	quicklistAppendValuesFromZiplist # -- Begin function quicklistAppendValuesFromZiplist
	.p2align	4, 0x90
	.type	quicklistAppendValuesFromZiplist,@function
quicklistAppendValuesFromZiplist:       # @quicklistAppendValuesFromZiplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_6
# %bb.1:                                # %.preheader
	leaq	-96(%rbp), %r12
	leaq	-64(%rbp), %r13
	jmp	.LBB21_2
	.p2align	4, 0x90
.LBB21_4:                               #   in Loop: Header=BB21_2 Depth=1
	movq	-64(%rbp), %rdx
	movl	$32, %esi
	movq	%r12, %rdi
	callq	ll2string
	movl	%eax, -44(%rbp)
	movq	%r12, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
.LBB21_5:                               #   in Loop: Header=BB21_2 Depth=1
	movl	%eax, %edx
	movq	%r14, %rdi
	callq	quicklistPushTail
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	movq	%r13, %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_6
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB21_4
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	movl	-44(%rbp), %eax
	jmp	.LBB21_5
.LBB21_6:
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	quicklistAppendValuesFromZiplist, .Lfunc_end21-quicklistAppendValuesFromZiplist
                                        # -- End function
	.globl	quicklistCreateFromZiplist # -- Begin function quicklistCreateFromZiplist
	.p2align	4, 0x90
	.type	quicklistCreateFromZiplist,@function
quicklistCreateFromZiplist:             # @quicklistCreateFromZiplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %ebx
	movl	%edi, %r15d
	movl	$40, %edi
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movl	$65534, 32(%rax)        # imm = 0xFFFE
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$32768, %ecx            # imm = 0x8000
	cmpl	$32768, %r15d           # imm = 0x8000
	jg	.LBB22_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-5, %ecx
	cmpl	$-6, %r15d
	jg	.LBB22_3
.LBB22_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r15d
.LBB22_3:
	movzwl	%r15w, %ecx
	movl	%ecx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$65536, %edx            # imm = 0x10000
	cmpl	$65536, %ebx            # imm = 0x10000
	jg	.LBB22_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jns	.LBB22_7
# %bb.5:
	xorl	%edx, %edx
.LBB22_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ebx
.LBB22_7:
	shll	$16, %ebx
	orl	%ecx, %ebx
	movl	%ebx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	quicklistAppendValuesFromZiplist
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	quicklistCreateFromZiplist, .Lfunc_end22-quicklistCreateFromZiplist
                                        # -- End function
	.globl	__quicklistDelNode      # -- Begin function __quicklistDelNode
	.p2align	4, 0x90
	.type	__quicklistDelNode,@function
__quicklistDelNode:                     # @__quicklistDelNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_2:
	movq	(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB23_4
# %bb.3:
	movq	%rax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_4:
	cmpq	%rbx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_6
# %bb.5:
	movq	%rcx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_6:
	cmpq	%rbx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_8
# %bb.7:
	movq	8(%rbx), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_8:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__quicklistCompress
	movzwl	28(%rbx), %eax
	subq	%rax, 16(%r14)
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	__quicklistDelNode, .Lfunc_end23-__quicklistDelNode
                                        # -- End function
	.globl	quicklistDelIndex       # -- Begin function quicklistDelIndex
	.p2align	4, 0x90
	.type	quicklistDelIndex,@function
quicklistDelIndex:                      # @quicklistDelIndex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rsi), %rdi
	movq	%rdx, %rsi
	callq	ziplistDelete
	movq	%rax, 16(%rbx)
	movl	$65535, %ecx            # imm = 0xFFFF
	addl	28(%rbx), %ecx
	movw	%cx, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB24_1
# %bb.2:
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	xorl	%eax, %eax
	jmp	.LBB24_3
.LBB24_1:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__quicklistDelNode
	movl	$1, %eax
.LBB24_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	quicklistDelIndex, .Lfunc_end24-quicklistDelIndex
                                        # -- End function
	.globl	quicklistDelEntry       # -- Begin function quicklistDelEntry
	.p2align	4, 0x90
	.type	quicklistDelEntry,@function
quicklistDelEntry:                      # @quicklistDelEntry
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
	movq	(%rsi), %r15
	movq	8(%rsi), %rbx
	movq	(%rbx), %r12
	movq	8(%rbx), %r13
	addq	$16, %rsi
	movq	16(%rbx), %rdi
	callq	ziplistDelete
	movq	%rax, 16(%rbx)
	movl	$65535, %ecx            # imm = 0xFFFF
	addl	28(%rbx), %ecx
	movw	%cx, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB25_1
# %bb.7:
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r14)
.LBB25_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_1:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__quicklistDelNode
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	32(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB25_6
# %bb.4:
	movq	%r12, 8(%r14)
	movq	$-1, 24(%r14)
	jmp	.LBB25_5
.LBB25_2:
	movq	%r13, 8(%r14)
	movq	$0, 24(%r14)
	jmp	.LBB25_5
.Lfunc_end25:
	.size	quicklistDelEntry, .Lfunc_end25-quicklistDelEntry
                                        # -- End function
	.globl	quicklistReplaceAtIndex # -- Begin function quicklistReplaceAtIndex
	.p2align	4, 0x90
	.type	quicklistReplaceAtIndex,@function
quicklistReplaceAtIndex:                # @quicklistReplaceAtIndex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	%rdi, %r14
	leaq	-72(%rbp), %rdx
	callq	quicklistIndex
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_1
# %bb.2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-56(%rbp), %rsi
	callq	ziplistDelete
	movq	-64(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	ziplistInsert
	movq	-64(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movq	-64(%rbp), %rsi
	movl	%eax, 24(%rsi)
	movl	28(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB26_3
# %bb.6:
	movq	%r14, %rdi
	callq	__quicklistCompress
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB26_7
.LBB26_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testq	%rsi, %rsi
	je	.LBB26_7
# %bb.4:
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB26_7
# %bb.5:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
	movl	$42, __A_VARIABLE(%rip)
.LBB26_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_1:
	xorl	%ebx, %ebx
	jmp	.LBB26_7
.Lfunc_end26:
	.size	quicklistReplaceAtIndex, .Lfunc_end26-quicklistReplaceAtIndex
                                        # -- End function
	.globl	quicklistIndex          # -- Begin function quicklistIndex
	.p2align	4, 0x90
	.type	quicklistIndex,@function
quicklistIndex:                         # @quicklistIndex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r8
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movq	$-123456789, 32(%rdx)   # imm = 0xF8A432EB
	movq	$0, 8(%rdx)
	movabsq	$530242871224172544, %rax # imm = 0x75BCD1500000000
	movq	%rax, 40(%rdx)
	movq	%rdi, (%rdx)
	xorl	%esi, %esi
	testq	%r8, %r8
	setns	%sil
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rsi
	xorq	%r8, %rsi
	movq	%r8, %rax
	shrq	$63, %rax
	movq	(%rdi,%rax,8), %r15
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	16(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB27_12
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB27_5
# %bb.2:                                # %.preheader
	movq	%rdx, %rbx
	leaq	24(%rdx), %r12
	leaq	32(%rdx), %r14
	leaq	40(%rdx), %r13
	xorl	%ecx, %ecx
	movq	%r8, %rdi
	notq	%rdi
	shrq	$63, %rdi
	.p2align	4, 0x90
.LBB27_3:                               # =>This Inner Loop Header: Depth=1
	movzwl	28(%r15), %edx
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	ja	.LBB27_6
# %bb.4:                                #   in Loop: Header=BB27_3 Depth=1
	movq	(%r15,%rdi,8), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	testq	%r15, %r15
	jne	.LBB27_3
.LBB27_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_12
.LBB27_6:
	movl	%esi, %eax
	notl	%eax
	addl	%ecx, %eax
	subl	%ecx, %esi
	testq	%r8, %r8
	movq	%r15, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmovsl	%eax, %esi
	movl	%esi, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB27_11
# %bb.7:
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	%r14, %r12
	movl	24(%r15), %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	16(%r15), %r14
	leaq	4(%r14), %rdi
	movl	(%r14), %esi
	movl	24(%r15), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_8
# %bb.9:
	movq	%r14, %rdi
	callq	zfree
	movq	%r13, 16(%r15)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r15), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r15)
	jmp	.LBB27_10
.LBB27_8:
	movq	%r13, %rdi
	callq	zfree
.LBB27_10:
	movq	%r12, %r14
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rax
	orl	$1048576, 28(%rax)      # imm = 0x100000
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %r15
	movl	44(%rbx), %esi
.LBB27_11:
	movq	16(%r15), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	ziplistIndex
	movq	%rax, 16(%rbx)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	ziplistGet
	movl	$1, %eax
.LBB27_12:
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
.Lfunc_end27:
	.size	quicklistIndex, .Lfunc_end27-quicklistIndex
                                        # -- End function
	.globl	_quicklistZiplistMerge  # -- Begin function _quicklistZiplistMerge
	.p2align	4, 0x90
	.type	_quicklistZiplistMerge,@function
_quicklistZiplistMerge:                 # @_quicklistZiplistMerge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB28_6
# %bb.1:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB28_6
# %bb.2:
	movl	24(%r15), %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	16(%r15), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r15), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_3
# %bb.4:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r13, 16(%r15)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r15), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r15)
	jmp	.LBB28_5
.LBB28_3:
	movq	%r13, %rdi
	callq	zfree
.LBB28_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB28_12
# %bb.7:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB28_12
# %bb.8:
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	16(%r12), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r12), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_9
# %bb.10:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r13, 16(%r12)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r12), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r12)
	jmp	.LBB28_11
.LBB28_9:
	movq	%r13, %rdi
	callq	zfree
.LBB28_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_12:
	leaq	16(%r15), %rbx
	leaq	16(%r12), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	ziplistMerge
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_13
# %bb.14:
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_15
# %bb.17:
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	je	.LBB28_16
# %bb.18:
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB28_19
.LBB28_13:
	xorl	%ebx, %ebx
	jmp	.LBB28_25
.LBB28_15:
	movq	%r12, %rbx
	movq	%r15, %r12
.LBB28_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_19:
	movq	16(%rbx), %rdi
	callq	ziplistLen
	movw	%ax, 28(%rbx)
	movq	16(%rbx), %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movzwl	30(%r12), %eax
	shll	$16, %eax
	movl	%eax, 28(%r12)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__quicklistDelNode
	movl	28(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB28_20
# %bb.23:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__quicklistCompress
	jmp	.LBB28_24
.LBB28_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB28_25
# %bb.21:
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB28_25
# %bb.22:
	movq	%rbx, %rdi
	callq	__quicklistCompressNode
.LBB28_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_quicklistZiplistMerge, .Lfunc_end28-_quicklistZiplistMerge
                                        # -- End function
	.globl	_quicklistMergeNodes    # -- Begin function _quicklistMergeNodes
	.p2align	4, 0x90
	.type	_quicklistMergeNodes,@function
_quicklistMergeNodes:                   # @_quicklistMergeNodes
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
	movl	32(%rdi), %eax
	movq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB29_4
# %bb.1:
	movq	(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_5
.LBB29_4:
	xorl	%esi, %esi
.LBB29_5:
	movq	8(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB29_9
# %bb.6:
	movq	8(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB29_9
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_10
.LBB29_9:
	xorl	%r12d, %r12d
.LBB29_10:
	movl	%eax, %r8d
	shll	$16, %r8d
	movswl	%ax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB29_22
# %bb.11:
	testq	%rsi, %rsi
	je	.LBB29_22
# %bb.12:
	movl	24(%rdx), %eax
	movl	24(%rsi), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %r8d           # imm = 0xFFFF0000
	jg	.LBB29_17
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-6, %r13d
	jbe	.LBB29_16
# %bb.14:
	movl	%r13d, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, optimization_level(,%rcx,8)
	jb	.LBB29_18
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_20
.LBB29_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8193, %eax             # imm = 0x2001
	jae	.LBB29_21
# %bb.19:
	movzwl	28(%rdx), %eax
	movzwl	28(%rsi), %ecx
	addl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jg	.LBB29_24
.LBB29_20:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	%rdi, %r13
	movl	%r8d, %ebx
	callq	_quicklistZiplistMerge
	movl	%ebx, %r8d
	movq	%r13, %rdi
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB29_23
.LBB29_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_24:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB29_36
# %bb.25:
	testq	%r12, %r12
	je	.LBB29_36
# %bb.26:
	movl	24(%r14), %eax
	movl	24(%r12), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %r8d           # imm = 0xFFFF0000
	jg	.LBB29_31
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-6, %r13d
	jbe	.LBB29_30
# %bb.28:
	movl	%r13d, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, optimization_level(,%rcx,8)
	jb	.LBB29_32
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_34
.LBB29_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_32:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8193, %eax             # imm = 0x2001
	jae	.LBB29_35
# %bb.33:
	movzwl	28(%r14), %eax
	movzwl	28(%r12), %ecx
	addl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jg	.LBB29_38
.LBB29_34:
	movq	%rdi, %rbx
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	%r8d, %r14d
	callq	_quicklistZiplistMerge
	movl	%r14d, %r8d
	movq	%rbx, %rdi
	jmp	.LBB29_37
.LBB29_35:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_38:
	movq	(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_49
# %bb.39:
	movl	24(%r15), %eax
	movl	24(%rsi), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %r8d           # imm = 0xFFFF0000
	jg	.LBB29_44
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-6, %r13d
	jbe	.LBB29_43
# %bb.41:
	movl	%r13d, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, optimization_level(,%rcx,8)
	jb	.LBB29_45
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_47
.LBB29_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_45:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8193, %eax             # imm = 0x2001
	jae	.LBB29_48
# %bb.46:
	movzwl	28(%r15), %eax
	movzwl	28(%rsi), %ecx
	addl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jg	.LBB29_50
.LBB29_47:
	movq	%rdi, %rbx
	movq	%r15, %rdx
	movl	%r8d, %r14d
	callq	_quicklistZiplistMerge
	movl	%r14d, %r8d
	movq	%rbx, %rdi
	movq	%rax, %r15
	jmp	.LBB29_50
.LBB29_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_50:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB29_62
# %bb.51:
	testq	%rdx, %rdx
	je	.LBB29_62
# %bb.52:
	movl	24(%r15), %eax
	movl	24(%rdx), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %r8d           # imm = 0xFFFF0000
	jg	.LBB29_57
# %bb.53:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-6, %r13d
	jbe	.LBB29_56
# %bb.54:
	movl	%r13d, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, optimization_level(,%rcx,8)
	jb	.LBB29_58
# %bb.55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_60
.LBB29_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_58:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8193, %eax             # imm = 0x2001
	jae	.LBB29_61
# %bb.59:
	movzwl	28(%r15), %eax
	movzwl	28(%rdx), %ecx
	addl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jg	.LBB29_64
.LBB29_60:
	movq	%r15, %rsi
	callq	_quicklistZiplistMerge
	jmp	.LBB29_63
.LBB29_61:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_63:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_64:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_quicklistMergeNodes, .Lfunc_end29-_quicklistMergeNodes
                                        # -- End function
	.globl	_quicklistSplitNode     # -- Begin function _quicklistSplitNode
	.p2align	4, 0x90
	.type	_quicklistSplitNode,@function
_quicklistSplitNode:                    # @_quicklistSplitNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r12d
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	24(%rdi), %r13d
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%rbx), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	zmalloc
	movq	%rax, 16(%rbx)
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy
	leal	1(%r14), %eax
	xorl	%ecx, %ecx
	cmpl	$1, %r12d
	movl	$0, %r13d
	sbbl	%r13d, %r13d
	movl	%r13d, %edx
	notl	%edx
	orl	%r14d, %edx
	testl	%r12d, %r12d
	cmovnel	%eax, %r12d
	cmovnel	%ecx, %r14d
	orl	%eax, %r13d
	movq	16(%r15), %rdi
	movl	%r12d, %esi
	callq	ziplistDeleteRange
	movq	%rax, 16(%r15)
	movq	%rax, %rdi
	callq	ziplistLen
	movw	%ax, 28(%r15)
	movq	16(%r15), %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r15)
	movq	16(%rbx), %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	ziplistDeleteRange
	movq	%rax, 16(%rbx)
	movq	%rax, %rdi
	callq	ziplistLen
	movw	%ax, 28(%rbx)
	movq	16(%rbx), %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_quicklistSplitNode, .Lfunc_end30-_quicklistSplitNode
                                        # -- End function
	.globl	_quicklistInsert        # -- Begin function _quicklistInsert
	.p2align	4, 0x90
	.type	_quicklistInsert,@function
_quicklistInsert:                       # @_quicklistInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r8d, %r15d
	movq	%rcx, %r14
	movq	%rdi, %r13
	movswl	32(%rdi), %ebx
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	8(%rsi), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB31_1
# %bb.10:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_quicklistNodeAllowInsert
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB31_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
.LBB31_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB31_19
# %bb.13:
	movzwl	28(%r12), %eax
	xorl	%esi, %esi
	movl	$0, %edi
	movl	$0, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	%eax, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_16
# %bb.14:
	movq	8(%r12), %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_quicklistNodeAllowInsert
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	movl	$0, %edi
	testl	%eax, %eax
	jne	.LBB31_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	movl	$1, %edx
.LBB31_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ecx
	testl	%r13d, %r13d
	jne	.LBB31_23
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB31_18
# %bb.27:
	movq	%r14, %r15
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%r12), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r12), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_28
# %bb.29:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r14, 16(%r12)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r12), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_30
.LBB31_1:
	movl	$32, %edi
	movq	%rdx, %r12
	callq	zmalloc
	movq	%rax, %rbx
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%rbx), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB31_4
# %bb.2:
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_7
# %bb.3:
	movq	%rbx, 8(%r13)
	jmp	.LBB31_6
.LBB31_19:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 44(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ecx
	movl	$0, %esi
	jne	.LBB31_22
# %bb.20:
	movq	(%r12), %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_quicklistNodeAllowInsert
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	movl	$0, %ecx
	testl	%eax, %eax
	jne	.LBB31_22
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movl	$1, %esi
.LBB31_22:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
.LBB31_23:
	movl	%r13d, %eax
	orl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB31_24
# %bb.43:
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB31_57
# %bb.44:
	testl	%edx, %edx
	je	.LBB31_57
# %bb.45:
	movq	8(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB31_57
# %bb.46:
	testl	%edi, %edi
	jne	.LBB31_57
# %bb.47:
	testq	%r14, %r14
	je	.LBB31_57
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	movq	-56(%rbp), %r13         # 8-byte Reload
	jne	.LBB31_53
# %bb.49:
	movl	24(%r14), %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%r14), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r14), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_50
# %bb.51:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, 16(%r14)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r14), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_52
.LBB31_57:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB31_67
# %bb.58:
	testl	%esi, %esi
	je	.LBB31_67
# %bb.59:
	movq	(%r12), %r14
	movl	%ecx, %eax
	orl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_67
# %bb.60:
	testq	%r14, %r14
	je	.LBB31_67
# %bb.61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	movq	-56(%rbp), %r13         # 8-byte Reload
	jne	.LBB31_66
# %bb.62:
	movl	24(%r14), %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%r14), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r14), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_63
# %bb.64:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, 16(%r14)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r14), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_65
.LBB31_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	movq	-56(%rbp), %r13         # 8-byte Reload
	jne	.LBB31_39
# %bb.25:
	movq	%r14, %r15
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%r12), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r12), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_26
# %bb.37:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r14, 16(%r12)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r12), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_38
.LBB31_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB31_84
# %bb.68:
	testl	%edx, %edx
	je	.LBB31_72
# %bb.69:
	movq	8(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB31_72
# %bb.70:
	testl	%edi, %edi
	je	.LBB31_72
# %bb.71:
	testq	%rax, %rax
	jne	.LBB31_76
.LBB31_72:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB31_77
# %bb.73:
	movq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB31_77
# %bb.74:
	testl	%ecx, %ecx
	je	.LBB31_77
# %bb.75:
	testq	%rax, %rax
	je	.LBB31_77
.LBB31_76:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%rbx), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%rbx)
	addw	$1, 28(%rbx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	__quicklistInsertNode
	jmp	.LBB31_83
.LBB31_4:
	movq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_7
# %bb.5:
	movq	%rbx, (%r13)
.LBB31_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_7:
	movq	24(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB31_9
# %bb.8:
	movq	%rbx, 8(%r13)
	movq	%rbx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movq	%rax, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	addw	$1, 28(%rbx)
	jmp	.LBB31_84
.LBB31_18:
	leaq	16(%r12), %rbx
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB31_31
.LBB31_77:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB31_82
# %bb.78:
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%r12), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r12), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_79
# %bb.80:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r14, 16(%r12)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r12), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_81
.LBB31_26:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r12), %eax
.LBB31_38:
	movq	%r15, %r14
	movl	$42, __A_VARIABLE(%rip)
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_39:
	movq	16(%r12), %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%r14d, %ecx
	callq	ziplistInsert
	movq	%rax, 16(%r12)
	addw	$1, 28(%r12)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r12)
	movl	28(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	je	.LBB31_84
# %bb.40:
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB31_84
# %bb.41:
	movq	%r12, %rdi
	callq	__quicklistCompressNode
	jmp	.LBB31_83
.LBB31_28:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r12), %eax
.LBB31_30:
	movq	-56(%rbp), %r13         # 8-byte Reload
	leaq	16(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r14
.LBB31_31:
	movq	(%rbx), %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	callq	ziplistNext
	movq	(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB31_32
# %bb.33:
	movq	%rax, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%r14d, %ecx
	callq	ziplistInsert
	jmp	.LBB31_34
.LBB31_32:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	movl	$1, %ecx
	callq	ziplistPush
.LBB31_34:
	movq	%rax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	addw	$1, 28(%r12)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r12)
	movl	28(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	je	.LBB31_83
# %bb.35:
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB31_83
# %bb.36:
	movq	%r12, %rdi
	callq	__quicklistCompressNode
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_83
.LBB31_50:
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r14), %eax
.LBB31_52:
	movl	$42, __A_VARIABLE(%rip)
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_53:
	movq	16(%r14), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%ecx, %ecx
	jmp	.LBB31_54
.LBB31_63:
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r14), %eax
.LBB31_65:
	movl	$42, __A_VARIABLE(%rip)
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_66:
	movq	16(%r14), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
.LBB31_54:
	callq	ziplistPush
	movq	%rax, 16(%r14)
	addw	$1, 28(%r14)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r14)
	movl	28(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	je	.LBB31_84
# %bb.55:
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB31_84
# %bb.56:
	movq	%r14, %rdi
	callq	__quicklistCompressNode
	jmp	.LBB31_83
.LBB31_79:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r12), %eax
.LBB31_81:
	movl	$42, __A_VARIABLE(%rip)
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_82:
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	sete	%r14b
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	44(%rax), %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	_quicklistSplitNode
	movq	%rax, %rbx
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r14d, %ecx
	callq	ziplistPush
	movq	%rax, 16(%rbx)
	addw	$1, 28(%rbx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	__quicklistInsertNode
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_quicklistMergeNodes
.LBB31_83:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_84:
	addq	$1, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_quicklistInsert, .Lfunc_end31-_quicklistInsert
                                        # -- End function
	.globl	quicklistInsertBefore   # -- Begin function quicklistInsertBefore
	.p2align	4, 0x90
	.type	quicklistInsertBefore,@function
quicklistInsertBefore:                  # @quicklistInsertBefore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%r8d, %r8d
	callq	_quicklistInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	quicklistInsertBefore, .Lfunc_end32-quicklistInsertBefore
                                        # -- End function
	.globl	quicklistInsertAfter    # -- Begin function quicklistInsertAfter
	.p2align	4, 0x90
	.type	quicklistInsertAfter,@function
quicklistInsertAfter:                   # @quicklistInsertAfter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %r8d
	callq	_quicklistInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	quicklistInsertAfter, .Lfunc_end33-quicklistInsertAfter
                                        # -- End function
	.globl	quicklistDelRange       # -- Begin function quicklistDelRange
	.p2align	4, 0x90
	.type	quicklistDelRange,@function
quicklistDelRange:                      # @quicklistDelRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB34_1
# %bb.2:
	movq	%rdx, %r12
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB34_4
# %bb.3:
	movq	16(%r14), %rax
	subq	%rsi, %rax
	cmpq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rax, %r12
	jmp	.LBB34_6
.LBB34_1:
	xorl	%eax, %eax
	jmp	.LBB34_34
.LBB34_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	negq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jae	.LBB34_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
.LBB34_6:
	leaq	-104(%rbp), %rdx
	movq	%r14, %rdi
	callq	quicklistIndex
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB34_7
# %bb.8:
	movq	-96(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r12, %r12
	je	.LBB34_33
# %bb.9:
	movl	-60(%rbp), %esi
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB34_10
	.p2align	4, 0x90
.LBB34_26:                              #   in Loop: Header=BB34_10 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__quicklistDelNode
	movl	$42, __A_VARIABLE(%rip)
.LBB34_30:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB34_31:                              #   in Loop: Header=BB34_10 Depth=1
	xorl	%esi, %esi
	movl	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %r12
	je	.LBB34_32
.LBB34_10:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rbx
	movq	8(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB34_11
# %bb.13:                               #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB34_18
# %bb.14:                               #   in Loop: Header=BB34_10 Depth=1
	movzwl	28(%rbx), %r13d
	jmp	.LBB34_15
	.p2align	4, 0x90
.LBB34_11:                              #   in Loop: Header=BB34_10 Depth=1
	movzwl	28(%rbx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	jae	.LBB34_12
.LBB34_15:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	jae	.LBB34_16
# %bb.17:                               #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	jmp	.LBB34_19
	.p2align	4, 0x90
.LBB34_16:                              #   in Loop: Header=BB34_10 Depth=1
	subl	%esi, %r13d
	movslq	%r13d, %rax
	jmp	.LBB34_19
	.p2align	4, 0x90
.LBB34_18:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	negl	%eax
	movslq	%eax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	cmpq	%r13, %r12
	jae	.LBB34_20
	.p2align	4, 0x90
.LBB34_19:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
.LBB34_20:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%rbx), %eax
	movl	$196608, %ecx           # imm = 0x30000
	andl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB34_25
# %bb.21:                               #   in Loop: Header=BB34_10 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movl	24(%rbx), %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%rbx), %r14
	leaq	4(%r14), %rdi
	movl	(%r14), %esi
	movl	24(%rbx), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB34_22
# %bb.23:                               #   in Loop: Header=BB34_10 Depth=1
	movq	%r14, %rdi
	callq	zfree
	movq	%r15, 16(%rbx)
	movl	28(%rbx), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_24
.LBB34_12:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__quicklistDelNode
	jmp	.LBB34_30
.LBB34_22:                              #   in Loop: Header=BB34_10 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%rbx), %eax
.LBB34_24:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %esi
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB34_25:                              #   in Loop: Header=BB34_10 Depth=1
	movq	16(%rbx), %rdi
	movl	%r13d, %edx
	callq	ziplistDeleteRange
	movq	%rax, 16(%rbx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movl	28(%rbx), %eax
	subl	%r13d, %eax
	movw	%ax, 28(%rbx)
	subq	%r13, 16(%r14)
	movl	28(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB34_26
# %bb.27:                               #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	je	.LBB34_31
# %bb.28:                               #   in Loop: Header=BB34_10 Depth=1
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB34_31
# %bb.29:                               #   in Loop: Header=BB34_10 Depth=1
	movq	%rbx, %rdi
	callq	__quicklistCompressNode
	jmp	.LBB34_30
.LBB34_7:
	xorl	%eax, %eax
	jmp	.LBB34_33
.LBB34_32:
	movl	$1, %eax
.LBB34_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	quicklistDelRange, .Lfunc_end34-quicklistDelRange
                                        # -- End function
	.globl	quicklistCompare        # -- Begin function quicklistCompare
	.p2align	4, 0x90
	.type	quicklistCompare,@function
quicklistCompare:                       # @quicklistCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	ziplistCompare
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	quicklistCompare, .Lfunc_end35-quicklistCompare
                                        # -- End function
	.globl	quicklistGetIterator    # -- Begin function quicklistGetIterator
	.p2align	4, 0x90
	.type	quicklistGetIterator,@function
quicklistGetIterator:                   # @quicklistGetIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$40, %edi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB36_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB36_5
# %bb.3:
	leaq	8(%r14), %rdx
	movq	$-1, %rcx
	jmp	.LBB36_4
.LBB36_1:
	xorl	%ecx, %ecx
	movq	%r14, %rdx
.LBB36_4:
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_5:
	movl	%ebx, 32(%rax)
	movq	%r14, (%rax)
	movq	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end36:
	.size	quicklistGetIterator, .Lfunc_end36-quicklistGetIterator
                                        # -- End function
	.globl	quicklistGetIteratorAtIdx # -- Begin function quicklistGetIteratorAtIdx
	.p2align	4, 0x90
	.type	quicklistGetIteratorAtIdx,@function
quicklistGetIteratorAtIdx:              # @quicklistGetIteratorAtIdx
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	quicklistIndex
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB37_1
# %bb.2:
	movl	$40, %edi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB37_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	jne	.LBB37_7
# %bb.5:
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$-1, 24(%rax)
	jmp	.LBB37_6
.LBB37_1:
	xorl	%eax, %eax
	jmp	.LBB37_8
.LBB37_3:
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, 24(%rax)
.LBB37_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB37_7:
	movl	%r14d, 32(%rax)
	movq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movslq	-20(%rbp), %rcx
	movq	%rcx, 24(%rax)
.LBB37_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	quicklistGetIteratorAtIdx, .Lfunc_end37-quicklistGetIteratorAtIdx
                                        # -- End function
	.globl	quicklistReleaseIterator # -- Begin function quicklistReleaseIterator
	.p2align	4, 0x90
	.type	quicklistReleaseIterator,@function
quicklistReleaseIterator:               # @quicklistReleaseIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB38_6
# %bb.1:
	movl	28(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB38_2
# %bb.4:
	movq	(%rbx), %rdi
	callq	__quicklistCompress
	jmp	.LBB38_5
.LBB38_2:
	movl	$42, __A_VARIABLE(%rip)
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB38_6
# %bb.3:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB38_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB38_6:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	quicklistReleaseIterator, .Lfunc_end38-quicklistReleaseIterator
                                        # -- End function
	.globl	quicklistNext           # -- Begin function quicklistNext
	.p2align	4, 0x90
	.type	quicklistNext,@function
quicklistNext:                          # @quicklistNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%rsi)
	movq	$-123456789, 32(%rsi)   # imm = 0xF8A432EB
	movdqu	%xmm0, (%rsi)
	movabsq	$530242871224172544, %rax # imm = 0x75BCD1500000000
	movq	%rax, 40(%rsi)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB39_28
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movdqu	(%rdi), %xmm0
	movdqu	%xmm0, (%rsi)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB39_28
# %bb.2:
	movq	16(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB39_3
# %bb.9:
	cmpl	$0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_10
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
	movl	$ziplistPrev, %ecx
	jmp	.LBB39_12
.LBB39_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB39_8
# %bb.4:
	movl	24(%r13), %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%r13), %r12
	leaq	4(%r12), %rdi
	movl	(%r12), %esi
	movl	24(%r13), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB39_5
# %bb.6:
	movq	%r12, %rdi
	callq	zfree
	movq	%r15, 16(%r13)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r13), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r13)
	jmp	.LBB39_7
.LBB39_10:
	movl	$1, %r15d
	movl	$ziplistNext, %ecx
.LBB39_12:
	movq	16(%r13), %rdi
	callq	*%rcx
	movq	%rax, 16(%r14)
	addq	24(%r14), %r15
	movq	%r15, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB39_13
.LBB39_5:
	movq	%r15, %rdi
	callq	zfree
.LBB39_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rax
	orl	$1048576, 28(%rax)      # imm = 0x100000
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %r13
.LBB39_8:
	movq	16(%r13), %rdi
	movl	24(%r14), %esi
	callq	ziplistIndex
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %r15
.LBB39_13:
	movq	%rax, 16(%rbx)
	movl	%r15d, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB39_15
# %bb.14:
	leaq	32(%rbx), %rcx
	leaq	24(%rbx), %rsi
	addq	$40, %rbx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	ziplistGet
	movl	$1, %eax
	jmp	.LBB39_27
.LBB39_15:
	movq	8(%r14), %rsi
	movl	28(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB39_16
# %bb.19:
	movq	(%r14), %rdi
	callq	__quicklistCompress
	jmp	.LBB39_20
.LBB39_16:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB39_21
# %bb.17:
	andl	$196608, %eax           # imm = 0x30000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB39_21
# %bb.18:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB39_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_21:
	movl	32(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB39_22
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB39_26
# %bb.24:
	movq	8(%r14), %rax
	movq	$-1, %rcx
	jmp	.LBB39_25
.LBB39_22:
	movq	8(%r14), %rax
	addq	$8, %rax
	xorl	%ecx, %ecx
.LBB39_25:
	movq	(%rax), %rax
	movq	%rax, 8(%r14)
	movq	%rcx, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_26:
	movq	$0, 16(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	quicklistNext
.LBB39_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_28:
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
.Lfunc_end39:
	.size	quicklistNext, .Lfunc_end39-quicklistNext
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function quicklistDup
.LCPI40_0:
	.zero	16
	.text
	.globl	quicklistDup
	.p2align	4, 0x90
	.type	quicklistDup,@function
quicklistDup:                           # @quicklistDup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	32(%rdi), %r13d
	movl	%r13d, %ebx
	shll	$16, %ebx
	movl	%r13d, %r12d
	andl	$-65536, %r12d          # imm = 0xFFFF0000
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movl	$65534, 32(%rax)        # imm = 0xFFFE
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-327681, %ebx          # imm = 0xFFFAFFFF
	jg	.LBB40_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-5, %eax
	jmp	.LBB40_3
.LBB40_1:
	movswl	%r13w, %eax
.LBB40_3:
	movzwl	%ax, %eax
	orl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB40_11
# %bb.4:
	movl	$-196609, %r13d         # imm = 0xFFFCFFFF
	jmp	.LBB40_5
	.p2align	4, 0x90
.LBB40_6:                               #   in Loop: Header=BB40_5 Depth=1
	movq	16(%r12), %rax
	movl	(%rax), %r15d
	addq	$4, %r15
	movq	%r15, %rdi
	callq	zmalloc
	movq	%rax, 16(%rbx)
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
.LBB40_9:                               #   in Loop: Header=BB40_5 Depth=1
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB40_10:                              #   in Loop: Header=BB40_5 Depth=1
	movl	28(%r12), %eax
	movzwl	%ax, %eax
	movw	%ax, 28(%rbx)
	addq	%rax, 16(%r14)
	movl	24(%r12), %eax
	movl	%eax, 24(%rbx)
	movl	28(%r12), %eax
	movl	$196608, %ecx           # imm = 0x30000
	andl	%ecx, %eax
	movl	28(%rbx), %ecx
	andl	%r13d, %ecx
	orl	%eax, %ecx
	movl	%ecx, 28(%rbx)
	movq	8(%r14), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	$1, %ecx
	callq	__quicklistInsertNode
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB40_11
.LBB40_5:                               # =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	28(%rax), %eax
	movl	$-2097152, %ecx         # imm = 0xFFE00000
	andl	%ecx, %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	30(%r12), %eax
	andl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB40_6
# %bb.7:                                #   in Loop: Header=BB40_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB40_10
# %bb.8:                                #   in Loop: Header=BB40_5 Depth=1
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, 16(%rbx)
	movq	16(%r12), %rsi
	movl	24(%r12), %edx
	movq	%rax, %rdi
	jmp	.LBB40_9
.LBB40_11:
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
.Lfunc_end40:
	.size	quicklistDup, .Lfunc_end40-quicklistDup
                                        # -- End function
	.globl	quicklistRotate         # -- Begin function quicklistRotate
	.p2align	4, 0x90
	.type	quicklistRotate,@function
quicklistRotate:                        # @quicklistRotate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	cmpq	$2, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB41_10
# %bb.1:
	movq	%rdi, %r14
	movq	8(%rdi), %rax
	movq	16(%rax), %rdi
	movl	$-1, %esi
	callq	ziplistIndex
	movq	%rax, -40(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	leaq	-32(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	ziplistGet
	movq	-32(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB41_3
# %bb.2:
	movl	-20(%rbp), %eax
	jmp	.LBB41_4
.LBB41_3:
	leaq	-80(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	%eax, -20(%rbp)
	movq	%rbx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_4:
	movl	%eax, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	quicklistPushHead
	cmpq	$1, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB41_6
# %bb.5:
	movq	8(%r14), %rax
	movq	16(%rax), %rdi
	movl	$-1, %esi
	callq	ziplistIndex
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_6:
	movq	8(%r14), %rbx
	movq	16(%rbx), %rdi
	leaq	-40(%rbp), %rsi
	callq	ziplistDelete
	movq	%rax, 16(%rbx)
	movl	$65535, %ecx            # imm = 0xFFFF
	addl	28(%rbx), %ecx
	movw	%cx, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB41_7
# %bb.8:
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	jmp	.LBB41_9
.LBB41_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__quicklistDelNode
.LBB41_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end41:
	.size	quicklistRotate, .Lfunc_end41-quicklistRotate
                                        # -- End function
	.globl	quicklistPopCustom      # -- Begin function quicklistPopCustom
	.p2align	4, 0x90
	.type	quicklistPopCustom,@function
quicklistPopCustom:                     # @quicklistPopCustom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r12
	movl	%esi, %ecx
	movl	%esi, %eax
	negl	%eax
	sbbl	%esi, %esi
	cmpq	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB42_11
# %bb.1:
	movq	%r8, %r13
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB42_3
# %bb.2:
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB42_5
# %bb.4:
	movl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB42_7
# %bb.6:
	movq	$-123456789, (%r13)     # imm = 0xF8A432EB
	movl	$42, __A_VARIABLE(%rip)
.LBB42_7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB42_12
# %bb.8:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB42_30
# %bb.9:
	movq	8(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB42_30
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_13
.LBB42_11:
	xorl	%eax, %eax
	jmp	.LBB42_31
.LBB42_12:
	movq	(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB42_20
.LBB42_13:
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	16(%r14), %rdi
	callq	ziplistIndex
	movq	%rax, -80(%rbp)
	leaq	-72(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB42_20
# %bb.14:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB42_21
# %bb.15:
	testq	%rbx, %rbx
	je	.LBB42_17
# %bb.16:
	movl	-44(%rbp), %esi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_17:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB42_26
# %bb.18:
	movl	-44(%rbp), %eax
	movl	%eax, (%r12)
	jmp	.LBB42_25
.LBB42_20:
	xorl	%eax, %eax
	jmp	.LBB42_30
.LBB42_21:
	testq	%rbx, %rbx
	je	.LBB42_23
# %bb.22:
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_23:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB42_26
# %bb.24:
	movq	-64(%rbp), %rax
	movq	%rax, (%r13)
.LBB42_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB42_26:
	movq	16(%r14), %rdi
	leaq	-80(%rbp), %rsi
	callq	ziplistDelete
	movq	%rax, 16(%r14)
	movl	$65535, %ecx            # imm = 0xFFFF
	addl	28(%r14), %ecx
	movw	%cx, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB42_28
# %bb.27:
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r14)
	jmp	.LBB42_29
.LBB42_28:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__quicklistDelNode
.LBB42_29:
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB42_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB42_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	quicklistPopCustom, .Lfunc_end42-quicklistPopCustom
                                        # -- End function
	.globl	_quicklistSaver         # -- Begin function _quicklistSaver
	.p2align	4, 0x90
	.type	_quicklistSaver,@function
_quicklistSaver:                        # @_quicklistSaver
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB43_1
# %bb.2:
	movq	%rdi, %rbx
	movl	%esi, %r15d
	movq	%r15, %rdi
	callq	zmalloc
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	jmp	.LBB43_3
.LBB43_1:
	xorl	%r14d, %r14d
.LBB43_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_quicklistSaver, .Lfunc_end43-_quicklistSaver
                                        # -- End function
	.globl	quicklistPop            # -- Begin function quicklistPop
	.p2align	4, 0x90
	.type	quicklistPop,@function
quicklistPop:                           # @quicklistPop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	cmpq	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB44_1
# %bb.2:
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rdx, %rbx
	leaq	-48(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movl	$_quicklistSaver, %r9d
	callq	quicklistPopCustom
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB44_4
# %bb.3:
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB44_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB44_6
# %bb.5:
	movq	-40(%rbp), %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB44_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB44_8
# %bb.7:
	movl	-28(%rbp), %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB44_8
.LBB44_1:
	xorl	%eax, %eax
.LBB44_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	quicklistPop, .Lfunc_end44-quicklistPop
                                        # -- End function
	.globl	quicklistPush           # -- Begin function quicklistPush
	.p2align	4, 0x90
	.type	quicklistPush,@function
quicklistPush:                          # @quicklistPush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB45_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB45_5
# %bb.3:
	callq	quicklistPushTail
	jmp	.LBB45_4
.LBB45_1:
	callq	quicklistPushHead
.LBB45_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB45_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	quicklistPush, .Lfunc_end45-quicklistPush
                                        # -- End function
	.type	optimization_level,@object # @optimization_level
	.section	.rodata,"a",@progbits
	.p2align	4
optimization_level:
	.quad	4096                    # 0x1000
	.quad	8192                    # 0x2000
	.quad	16384                   # 0x4000
	.quad	32768                   # 0x8000
	.quad	65536                   # 0x10000
	.size	optimization_level, 40

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
