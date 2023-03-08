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
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	cmpl	$65536, %esi            # imm = 0x10000
	cmovgel	%eax, %esi
	movw	%si, 34(%rdi)
	retq
.Lfunc_end1:
	.size	quicklistSetCompressDepth, .Lfunc_end1-quicklistSetCompressDepth
                                        # -- End function
	.globl	quicklistSetFill        # -- Begin function quicklistSetFill
	.p2align	4, 0x90
	.type	quicklistSetFill,@function
quicklistSetFill:                       # @quicklistSetFill
# %bb.0:
	cmpl	$-6, %esi
	movl	$-5, %eax
	cmovgl	%esi, %eax
	cmpl	$32768, %eax            # imm = 0x8000
	movl	$32768, %ecx            # imm = 0x8000
	cmovll	%eax, %ecx
	movw	%cx, 32(%rdi)
	retq
.Lfunc_end2:
	.size	quicklistSetFill, .Lfunc_end2-quicklistSetFill
                                        # -- End function
	.globl	quicklistSetOptions     # -- Begin function quicklistSetOptions
	.p2align	4, 0x90
	.type	quicklistSetOptions,@function
quicklistSetOptions:                    # @quicklistSetOptions
# %bb.0:
	cmpl	$-6, %esi
	movl	$-5, %eax
	cmovgl	%esi, %eax
	cmpl	$32769, %eax            # imm = 0x8001
	movl	$32768, %ecx            # imm = 0x8000
	cmovll	%eax, %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	cmpl	$65537, %eax            # imm = 0x10001
	movl	$65536, %edx            # imm = 0x10000
	cmovll	%eax, %edx
	movzwl	%cx, %eax
	shll	$16, %edx
	orl	%eax, %edx
	movl	%edx, 32(%rdi)
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
	movl	%esi, %r14d
	movl	%edi, %ebx
	movl	$40, %edi
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	cmpl	$-6, %ebx
	movl	$-5, %ecx
	cmovgl	%ebx, %ecx
	cmpl	$32769, %ecx            # imm = 0x8001
	movl	$32768, %edx            # imm = 0x8000
	cmovll	%ecx, %edx
	xorl	%ecx, %ecx
	testl	%r14d, %r14d
	cmovnsl	%r14d, %ecx
	cmpl	$65537, %ecx            # imm = 0x10001
	movl	$65536, %esi            # imm = 0x10000
	cmovll	%ecx, %esi
	movzwl	%dx, %ecx
	shll	$16, %esi
	orl	%ecx, %esi
	movl	%esi, 32(%rax)
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
	movq	24(%rdi), %r15
	testq	%r15, %r15
	je	.LBB7_3
# %bb.1:
	movq	(%r14), %rbx
	.p2align	4, 0x90
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %r12
	movq	16(%rbx), %rdi
	callq	zfree
	movzwl	28(%rbx), %eax
	subq	%rax, 16(%r14)
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 24(%r14)
	movq	%r12, %rbx
	addq	$-1, %r15
	jne	.LBB7_2
.LBB7_3:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	zfree                   # TAILCALL
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	24(%rdi), %edi
	xorl	%r14d, %r14d
	cmpq	$48, %rdi
	jb	.LBB8_5
# %bb.1:
	addq	$4, %rdi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	movl	24(%rbx), %ecx
	leaq	4(%rax), %rdx
	movl	%ecx, %esi
	callq	lzf_compress
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, (%r15)
	testl	%eax, %eax
	je	.LBB8_3
# %bb.2:
	leal	8(%rax), %ecx
	cmpl	24(%rbx), %ecx
	jae	.LBB8_3
# %bb.4:
	movl	%eax, %esi
	addq	$4, %rsi
	movq	%r15, %rdi
	callq	zrealloc
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%r14, 16(%rbx)
	movl	$-1245185, %eax         # imm = 0xFFECFFFF
	andl	28(%rbx), %eax
	orl	$131072, %eax           # imm = 0x20000
	movl	%eax, 28(%rbx)
	movl	$1, %r14d
	jmp	.LBB8_5
.LBB8_3:
	movq	%r15, %rdi
	callq	zfree
.LBB8_5:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	testl	%ecx, %ecx
	je	.LBB11_30
# %bb.1:
	addq	%rcx, %rcx
	cmpq	%rcx, 24(%rdi)
	jb	.LBB11_30
# %bb.2:
	movq	(%rdi), %rbx
	movq	8(%rdi), %r14
	cmpl	$65536, %eax            # imm = 0x10000
	jb	.LBB11_3
# %bb.4:                                # %.preheader
	xorl	%r12d, %r12d
	movl	$196608, %ecx           # imm = 0x30000
	xorl	%r13d, %r13d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB11_11
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	movl	28(%rbx), %eax
	andl	%ecx, %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB11_11
# %bb.7:                                #   in Loop: Header=BB11_5 Depth=1
	movl	24(%rbx), %edi
	callq	zmalloc
	movq	16(%rbx), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%rbx), %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB11_8
# %bb.9:                                #   in Loop: Header=BB11_5 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rbx)
	movl	28(%rbx), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%rbx)
	jmp	.LBB11_10
.LBB11_8:                               #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
.LBB11_10:                              #   in Loop: Header=BB11_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$196608, %ecx           # imm = 0x30000
.LBB11_11:                              #   in Loop: Header=BB11_5 Depth=1
	testq	%r14, %r14
	je	.LBB11_17
# %bb.12:                               #   in Loop: Header=BB11_5 Depth=1
	movl	28(%r14), %eax
	andl	%ecx, %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB11_17
# %bb.13:                               #   in Loop: Header=BB11_5 Depth=1
	movl	24(%r14), %edi
	callq	zmalloc
	movq	16(%r14), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%r14), %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB11_14
# %bb.15:                               #   in Loop: Header=BB11_5 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%r14)
	movl	28(%r14), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r14)
	jmp	.LBB11_16
.LBB11_14:                              #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
.LBB11_16:                              #   in Loop: Header=BB11_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$196608, %ecx           # imm = 0x30000
.LBB11_17:                              #   in Loop: Header=BB11_5 Depth=1
	cmpq	%r14, %rbx
	je	.LBB11_30
# %bb.18:                               #   in Loop: Header=BB11_5 Depth=1
	cmpq	%rsi, %rbx
	movl	$1, %eax
	cmovel	%eax, %r13d
	cmpq	%rsi, %r14
	cmovel	%eax, %r13d
	movq	(%r14), %r14
	movq	8(%rbx), %rbx
	movzwl	34(%rdi), %eax
	addl	$1, %r12d
	cmpl	%eax, %r12d
	jb	.LBB11_5
# %bb.19:
	testl	%r13d, %r13d
	sete	%al
	jmp	.LBB11_20
.LBB11_3:
	movb	$1, %al
	xorl	%r12d, %r12d
.LBB11_20:
	testq	%rsi, %rsi
	je	.LBB11_24
# %bb.21:
	testb	%al, %al
	je	.LBB11_24
# %bb.22:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%rsi), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB11_24
# %bb.23:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB11_24:
	cmpl	$2, %r12d
	jb	.LBB11_30
# %bb.25:
	testq	%rbx, %rbx
	je	.LBB11_28
# %bb.26:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%rbx), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB11_28
# %bb.27:
	movq	%rbx, %rdi
	callq	__quicklistCompressNode
.LBB11_28:
	testq	%r14, %r14
	je	.LBB11_30
# %bb.29:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r14), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB11_30
# %bb.31:
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__quicklistCompressNode # TAILCALL
.LBB11_30:
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
	testl	%ecx, %ecx
	je	.LBB12_7
# %bb.1:
	movq	%rsi, (%rdx)
	testq	%rsi, %rsi
	je	.LBB12_5
# %bb.2:
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdx)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB12_4
# %bb.3:
	movq	%rdx, (%rax)
.LBB12_4:
	movq	%rdx, 8(%rsi)
.LBB12_5:
	cmpq	%rsi, 8(%rbx)
	jne	.LBB12_13
# %bb.6:
	movq	%rdx, 8(%rbx)
	cmpq	$0, 24(%rbx)
	jne	.LBB12_15
	jmp	.LBB12_14
.LBB12_7:
	movq	%rsi, 8(%rdx)
	testq	%rsi, %rsi
	je	.LBB12_11
# %bb.8:
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB12_10
# %bb.9:
	movq	%rdx, 8(%rax)
.LBB12_10:
	movq	%rdx, (%rsi)
.LBB12_11:
	cmpq	%rsi, (%rbx)
	je	.LBB12_12
.LBB12_13:
	cmpq	$0, 24(%rbx)
	jne	.LBB12_15
.LBB12_14:
	movq	%rdx, 8(%rbx)
	movq	%rdx, (%rbx)
.LBB12_15:
	testq	%rsi, %rsi
	je	.LBB12_20
# %bb.16:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB12_17
# %bb.19:
	movq	%rbx, %rdi
	callq	__quicklistCompress
	jmp	.LBB12_20
.LBB12_17:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB12_20
# %bb.18:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB12_20:
	addq	$1, 24(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB12_12:
	movq	%rdx, (%rbx)
	cmpq	$0, 24(%rbx)
	jne	.LBB12_15
	jmp	.LBB12_14
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	%rsi, 8(%rdx)
	testq	%rsi, %rsi
	je	.LBB13_4
# %bb.1:
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB13_3
# %bb.2:
	movq	%rdx, 8(%rax)
.LBB13_3:
	movq	%rdx, (%rsi)
.LBB13_4:
	cmpq	%rsi, (%rbx)
	je	.LBB13_5
# %bb.6:
	cmpq	$0, 24(%rbx)
	je	.LBB13_7
.LBB13_8:
	testq	%rsi, %rsi
	jne	.LBB13_9
	jmp	.LBB13_13
.LBB13_5:
	movq	%rdx, (%rbx)
	cmpq	$0, 24(%rbx)
	jne	.LBB13_8
.LBB13_7:
	movq	%rdx, 8(%rbx)
	movq	%rdx, (%rbx)
	testq	%rsi, %rsi
	je	.LBB13_13
.LBB13_9:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB13_10
# %bb.12:
	movq	%rbx, %rdi
	callq	__quicklistCompress
	jmp	.LBB13_13
.LBB13_10:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB13_13
# %bb.11:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB13_13:
	addq	$1, 24(%rbx)
	addq	$8, %rsp
	popq	%rbx
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	%rsi, (%rdx)
	testq	%rsi, %rsi
	je	.LBB14_4
# %bb.1:
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdx)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB14_3
# %bb.2:
	movq	%rdx, (%rax)
.LBB14_3:
	movq	%rdx, 8(%rsi)
.LBB14_4:
	cmpq	%rsi, 8(%rbx)
	je	.LBB14_5
# %bb.6:
	cmpq	$0, 24(%rbx)
	je	.LBB14_7
.LBB14_8:
	testq	%rsi, %rsi
	jne	.LBB14_9
	jmp	.LBB14_13
.LBB14_5:
	movq	%rdx, 8(%rbx)
	cmpq	$0, 24(%rbx)
	jne	.LBB14_8
.LBB14_7:
	movq	%rdx, 8(%rbx)
	movq	%rdx, (%rbx)
	testq	%rsi, %rsi
	je	.LBB14_13
.LBB14_9:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB14_10
# %bb.12:
	movq	%rbx, %rdi
	callq	__quicklistCompress
	jmp	.LBB14_13
.LBB14_10:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB14_13
# %bb.11:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB14_13:
	addq	$1, 24(%rbx)
	addq	$8, %rsp
	popq	%rbx
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
	cmpl	$-5, %esi
	jb	.LBB15_2
# %bb.1:
	notl	%esi
	movslq	%esi, %rcx
	xorl	%eax, %eax
	cmpq	%rdi, optimization_level(,%rcx,8)
	setae	%al
.LBB15_2:
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
	testq	%rdi, %rdi
	je	.LBB16_10
# %bb.1:
	xorl	%eax, %eax
	cmpq	$253, %rdx
	seta	%al
	leal	1(,%rax,4), %eax
	cmpq	$63, %rdx
	ja	.LBB16_3
# %bb.2:
	addl	$1, %eax
	jmp	.LBB16_6
.LBB16_3:
	cmpq	$16383, %rdx            # imm = 0x3FFF
	ja	.LBB16_5
# %bb.4:
	orl	$2, %eax
.LBB16_6:
	addl	%eax, %edx
	addl	24(%rdi), %edx
	cmpl	$-5, %esi
	jb	.LBB16_8
# %bb.7:
	movl	%edx, %r8d
	movl	%esi, %eax
	notl	%eax
	movslq	%eax, %rcx
	movl	$1, %eax
	cmpq	%r8, optimization_level(,%rcx,8)
	jb	.LBB16_8
.LBB16_10:
	retq
.LBB16_8:
	movl	$0, %eax
	cmpl	$8192, %edx             # imm = 0x2000
	ja	.LBB16_10
# %bb.9:
	movzwl	28(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	%esi, %ecx
	setl	%al
	retq
.LBB16_5:
	addl	$5, %eax
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
	testq	%rdi, %rdi
	je	.LBB17_6
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB17_6
# %bb.2:
	movl	24(%rdi), %eax
	movl	24(%rsi), %ecx
	addl	%eax, %ecx
	addl	$-11, %ecx
	cmpl	$-5, %edx
	jb	.LBB17_4
# %bb.3:
	movl	%ecx, %r8d
	movl	%edx, %eax
	notl	%eax
	movslq	%eax, %r9
	movl	$1, %eax
	cmpq	%r8, optimization_level(,%r9,8)
	jb	.LBB17_4
.LBB17_6:
	retq
.LBB17_4:
	movl	$0, %eax
	cmpl	$8192, %ecx             # imm = 0x2000
	ja	.LBB17_6
# %bb.5:
	movzwl	28(%rdi), %eax
	movzwl	28(%rsi), %ecx
	addl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	setle	%al
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
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%rdi), %r13
	testq	%r13, %r13
	je	.LBB18_11
# %bb.1:
	movswl	32(%r14), %eax
	xorl	%ecx, %ecx
	cmpq	$253, %rbx
	seta	%cl
	leal	1(,%rcx,4), %ecx
	cmpq	$63, %rbx
	ja	.LBB18_3
# %bb.2:
	addl	$1, %ecx
	jmp	.LBB18_6
.LBB18_3:
	cmpq	$16383, %rbx            # imm = 0x3FFF
	ja	.LBB18_5
# %bb.4:
	orl	$2, %ecx
.LBB18_6:
	addl	%ebx, %ecx
	addl	24(%r13), %ecx
	cmpl	$-5, %eax
	jb	.LBB18_8
# %bb.7:
	movl	%ecx, %edx
	movl	%eax, %esi
	notl	%esi
	movslq	%esi, %rsi
	cmpq	%rdx, optimization_level(,%rsi,8)
	jae	.LBB18_10
.LBB18_8:
	cmpl	$8192, %ecx             # imm = 0x2000
	ja	.LBB18_11
# %bb.9:
	movzwl	28(%r13), %ecx
	cmpl	%eax, %ecx
	jge	.LBB18_11
.LBB18_10:
	movq	16(%r13), %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	(%r14), %rcx
	movq	%rax, 16(%rcx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movq	(%r14), %rcx
	movl	%eax, 24(%rcx)
	jmp	.LBB18_23
.LBB18_11:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%r12), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%r12)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%r12)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r12)
	movq	(%r14), %rsi
	movq	%rsi, 8(%r12)
	testq	%rsi, %rsi
	je	.LBB18_15
# %bb.12:
	movq	(%rsi), %rax
	movq	%rax, (%r12)
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB18_14
# %bb.13:
	movq	%r12, 8(%rax)
.LBB18_14:
	movq	%r12, (%rsi)
.LBB18_15:
	movq	%r12, (%r14)
	cmpq	$0, 24(%r14)
	jne	.LBB18_17
# %bb.16:
	movq	%r12, 8(%r14)
	movq	%r12, (%r14)
.LBB18_17:
	testq	%rsi, %rsi
	je	.LBB18_22
# %bb.18:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB18_19
# %bb.21:
	movq	%r14, %rdi
	callq	__quicklistCompress
	jmp	.LBB18_22
.LBB18_19:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB18_22
# %bb.20:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB18_22:
	addq	$1, 24(%r14)
	movq	(%r14), %rcx
.LBB18_23:
	addq	$1, 16(%r14)
	addw	$1, 28(%rcx)
	xorl	%eax, %eax
	cmpq	(%r14), %r13
	setne	%al
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_5:
	addl	$5, %ecx
	jmp	.LBB18_6
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
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %r13
	testq	%r13, %r13
	je	.LBB19_11
# %bb.1:
	movswl	32(%r14), %eax
	xorl	%ecx, %ecx
	cmpq	$253, %rbx
	seta	%cl
	leal	1(,%rcx,4), %ecx
	cmpq	$63, %rbx
	ja	.LBB19_3
# %bb.2:
	addl	$1, %ecx
	jmp	.LBB19_6
.LBB19_3:
	cmpq	$16383, %rbx            # imm = 0x3FFF
	ja	.LBB19_5
# %bb.4:
	orl	$2, %ecx
.LBB19_6:
	addl	%ebx, %ecx
	addl	24(%r13), %ecx
	cmpl	$-5, %eax
	jb	.LBB19_8
# %bb.7:
	movl	%ecx, %edx
	movl	%eax, %esi
	notl	%esi
	movslq	%esi, %rsi
	cmpq	%rdx, optimization_level(,%rsi,8)
	jae	.LBB19_10
.LBB19_8:
	cmpl	$8192, %ecx             # imm = 0x2000
	ja	.LBB19_11
# %bb.9:
	movzwl	28(%r13), %ecx
	cmpl	%eax, %ecx
	jge	.LBB19_11
.LBB19_10:
	movq	16(%r13), %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	movl	$1, %ecx
	callq	ziplistPush
	movq	8(%r14), %rcx
	movq	%rax, 16(%rcx)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movq	8(%r14), %rcx
	movl	%eax, 24(%rcx)
	jmp	.LBB19_23
.LBB19_11:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%r12), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%r12)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, 16(%r12)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r12)
	movq	8(%r14), %rsi
	movq	%rsi, (%r12)
	testq	%rsi, %rsi
	je	.LBB19_15
# %bb.12:
	movq	8(%rsi), %rax
	movq	%rax, 8(%r12)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB19_14
# %bb.13:
	movq	%r12, (%rax)
.LBB19_14:
	movq	%r12, 8(%rsi)
.LBB19_15:
	movq	%r12, 8(%r14)
	cmpq	$0, 24(%r14)
	jne	.LBB19_17
# %bb.16:
	movq	%r12, 8(%r14)
	movq	%r12, (%r14)
.LBB19_17:
	testq	%rsi, %rsi
	je	.LBB19_22
# %bb.18:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB19_19
# %bb.21:
	movq	%r14, %rdi
	callq	__quicklistCompress
	jmp	.LBB19_22
.LBB19_19:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB19_22
# %bb.20:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB19_22:
	addq	$1, 24(%r14)
	movq	8(%r14), %rcx
.LBB19_23:
	addq	$1, 16(%r14)
	addw	$1, 28(%rcx)
	xorl	%eax, %eax
	cmpq	8(%r14), %r13
	setne	%al
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_5:
	addl	$5, %ecx
	jmp	.LBB19_6
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
	movq	%r15, 16(%rbx)
	movq	%r15, %rdi
	callq	ziplistLen
	movw	%ax, 28(%rbx)
	movq	%r15, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	movq	8(%r14), %rsi
	movq	%rsi, (%rbx)
	testq	%rsi, %rsi
	je	.LBB20_4
# %bb.1:
	movq	8(%rsi), %rax
	movq	%rax, 8(%rbx)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB20_3
# %bb.2:
	movq	%rbx, (%rax)
.LBB20_3:
	movq	%rbx, 8(%rsi)
.LBB20_4:
	movq	%rbx, 8(%r14)
	cmpq	$0, 24(%r14)
	jne	.LBB20_6
# %bb.5:
	movq	%rbx, 8(%r14)
	movq	%rbx, (%r14)
.LBB20_6:
	testq	%rsi, %rsi
	je	.LBB20_11
# %bb.7:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB20_8
# %bb.10:
	movq	%r14, %rdi
	callq	__quicklistCompress
	jmp	.LBB20_11
.LBB20_8:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB20_11
# %bb.9:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB20_11:
	addq	$1, 24(%r14)
	movzwl	28(%rbx), %eax
	addq	%rax, 16(%r14)
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
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	ziplistGet
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
	movq	%r12, %rsi
.LBB21_5:                               #   in Loop: Header=BB21_2 Depth=1
	movl	%eax, %edx
	movq	%r14, %rdi
	callq	quicklistPushTail
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %rbx
	movq	%rax, %rdi
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	movq	%r13, %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB21_6
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB21_4
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	movl	-44(%rbp), %eax
	jmp	.LBB21_5
.LBB21_6:
	movq	%r15, %rdi
	callq	zfree
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
	movl	%esi, %r15d
	movl	%edi, %ebx
	movl	$40, %edi
	callq	zmalloc
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	cmpl	$-6, %ebx
	movl	$-5, %ecx
	cmovgl	%ebx, %ecx
	cmpl	$32769, %ecx            # imm = 0x8001
	movl	$32768, %edx            # imm = 0x8000
	cmovll	%ecx, %edx
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	cmovnsl	%r15d, %ecx
	cmpl	$65537, %ecx            # imm = 0x10001
	movl	$65536, %esi            # imm = 0x10000
	cmovll	%ecx, %esi
	movzwl	%dx, %ecx
	shll	$16, %esi
	orl	%ecx, %esi
	movl	%esi, 32(%rax)
	movq	%rax, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	quicklistAppendValuesFromZiplist # TAILCALL
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
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
.LBB23_2:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB23_4
# %bb.3:
	movq	%rax, 8(%rcx)
.LBB23_4:
	cmpq	%rbx, 8(%r14)
	je	.LBB23_5
# %bb.6:
	cmpq	%rbx, (%r14)
	je	.LBB23_7
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB23_5:
	movq	%rcx, 8(%r14)
	cmpq	%rbx, (%r14)
	jne	.LBB23_8
.LBB23_7:
	movq	8(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB23_8
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rsi), %rdi
	movq	%rdx, %rsi
	callq	ziplistDelete
	movq	%rax, 16(%rbx)
	movl	$65535, %ecx            # imm = 0xFFFF
	addl	28(%rbx), %ecx
	movw	%cx, 28(%rbx)
	testl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB24_1
# %bb.10:
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%rbx)
	addq	$16, %r14
	xorl	%eax, %eax
	movq	%r14, %r15
	jmp	.LBB24_11
.LBB24_1:
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB24_3
# %bb.2:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
.LBB24_3:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB24_5
# %bb.4:
	movq	%rax, 8(%rcx)
.LBB24_5:
	cmpq	%rbx, 8(%r14)
	je	.LBB24_6
# %bb.7:
	cmpq	%rbx, (%r14)
	je	.LBB24_8
.LBB24_9:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__quicklistCompress
	movzwl	28(%rbx), %eax
	leaq	16(%r14), %r15
	subq	%rax, 16(%r14)
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 24(%r14)
	movl	$1, %eax
.LBB24_11:
	addq	$-1, (%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_6:
	movq	%rcx, 8(%r14)
	cmpq	%rbx, (%r14)
	jne	.LBB24_9
.LBB24_8:
	movq	8(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB24_9
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rsi), %rdi
	movq	8(%rsi), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r14
	leaq	16(%rsi), %rdx
	movq	%rax, %rsi
	callq	quicklistDelIndex
	movq	$0, 16(%rbx)
	testl	%eax, %eax
	je	.LBB25_5
# %bb.1:
	movl	32(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB25_4
# %bb.2:
	testl	%eax, %eax
	jne	.LBB25_5
# %bb.3:
	movq	%r14, 8(%rbx)
	movq	$0, 24(%rbx)
	jmp	.LBB25_5
.LBB25_4:
	movq	%r15, 8(%rbx)
	movq	$-1, 24(%rbx)
.LBB25_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB26_3
# %bb.6:
	movq	%r14, %rdi
	callq	__quicklistCompress
	movl	$1, %ebx
	jmp	.LBB26_7
.LBB26_3:
	movl	$1, %ebx
	testq	%rsi, %rsi
	je	.LBB26_7
# %bb.4:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB26_7
# %bb.5:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB26_7:
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
	movq	%rsi, %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movq	$-123456789, 32(%rdx)   # imm = 0xF8A432EB
	movq	$0, 8(%rdx)
	movabsq	$530242871224172544, %rax # imm = 0x75BCD1500000000
	movq	%rax, 40(%rdx)
	movq	%rdi, (%rdx)
	sarq	$63, %rsi
	xorq	%rcx, %rsi
	xorl	%eax, %eax
	cmpq	16(%rdi), %rsi
	jae	.LBB27_12
# %bb.1:
	movq	%rdx, %rbx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	movq	(%rdi,%rdx,8), %r15
	testq	%r15, %r15
	je	.LBB27_12
# %bb.2:                                # %.preheader
	leaq	24(%rbx), %r12
	leaq	32(%rbx), %r14
	leaq	40(%rbx), %r13
	xorl	%eax, %eax
	movq	%rcx, %rdx
	notq	%rdx
	shrq	$63, %rdx
	.p2align	4, 0x90
.LBB27_3:                               # =>This Inner Loop Header: Depth=1
	movzwl	28(%r15), %edi
	addq	%rax, %rdi
	cmpq	%rsi, %rdi
	ja	.LBB27_6
# %bb.4:                                #   in Loop: Header=BB27_3 Depth=1
	movq	(%r15,%rdx,8), %r15
	movq	%rdi, %rax
	testq	%r15, %r15
	jne	.LBB27_3
# %bb.5:
	xorl	%eax, %eax
	jmp	.LBB27_12
.LBB27_6:
	movl	%esi, %edx
	notl	%edx
	addl	%eax, %edx
	subl	%eax, %esi
	testq	%rcx, %rcx
	movq	%r15, 8(%rbx)
	cmovsl	%edx, %esi
	movl	%esi, 44(%rbx)
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r15), %eax
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
	movq	8(%rbx), %rax
	orl	$1048576, 28(%rax)      # imm = 0x100000
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
	testq	%rsi, %rsi
	je	.LBB28_5
# %bb.1:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r15), %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB28_5
# %bb.2:
	movl	24(%r15), %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	16(%r15), %r13
	leaq	4(%r13), %rdi
	movl	(%r13), %esi
	movl	24(%r15), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB28_3
# %bb.4:
	movq	%r13, %rdi
	callq	zfree
	movq	%rbx, 16(%r15)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r15), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r15)
.LBB28_5:
	testq	%r12, %r12
	je	.LBB28_10
.LBB28_6:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r12), %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB28_10
# %bb.7:
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	16(%r12), %r13
	leaq	4(%r13), %rdi
	movl	(%r13), %esi
	movl	24(%r12), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB28_8
# %bb.9:
	movq	%r13, %rdi
	callq	zfree
	movq	%rbx, 16(%r12)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r12), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r12)
	jmp	.LBB28_10
.LBB28_3:
	movq	%rbx, %rdi
	callq	zfree
	testq	%r12, %r12
	jne	.LBB28_6
	jmp	.LBB28_10
.LBB28_8:
	movq	%rbx, %rdi
	callq	zfree
.LBB28_10:
	leaq	16(%r15), %rbx
	leaq	16(%r12), %rsi
	movq	%rbx, %rdi
	callq	ziplistMerge
	testq	%rax, %rax
	je	.LBB28_11
# %bb.12:
	cmpq	$0, (%rbx)
	je	.LBB28_14
# %bb.13:
	xorl	%eax, %eax
	cmpq	$0, 16(%r12)
	cmovneq	%rax, %r15
	cmoveq	%r12, %rax
	movq	%r15, %r12
	movq	%rax, %r15
.LBB28_14:
	movq	16(%r12), %rdi
	callq	ziplistLen
	movw	%ax, 28(%r12)
	movq	16(%r12), %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r12)
	movzwl	30(%r15), %eax
	shll	$16, %eax
	movl	%eax, 28(%r15)
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.LBB28_16
# %bb.15:
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
.LBB28_16:
	movq	(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB28_18
# %bb.17:
	movq	%rax, 8(%rcx)
.LBB28_18:
	cmpq	%r15, 8(%r14)
	je	.LBB28_19
# %bb.20:
	cmpq	%r15, (%r14)
	je	.LBB28_21
.LBB28_22:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__quicklistCompress
	movzwl	28(%r15), %eax
	subq	%rax, 16(%r14)
	movq	16(%r15), %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	addq	$-1, 24(%r14)
	movl	28(%r12), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB28_23
# %bb.25:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__quicklistCompress
	jmp	.LBB28_26
.LBB28_11:
	xorl	%r12d, %r12d
	jmp	.LBB28_26
.LBB28_23:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB28_26
# %bb.24:
	movq	%r12, %rdi
	callq	__quicklistCompressNode
.LBB28_26:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_19:
	movq	%rcx, 8(%r14)
	cmpq	%r15, (%r14)
	jne	.LBB28_22
.LBB28_21:
	movq	8(%r15), %rax
	movq	%rax, (%r14)
	jmp	.LBB28_22
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
	movq	%rdi, %r14
	movswl	32(%rdi), %r13d
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB29_1
# %bb.2:
	movq	(%rdx), %rsi
	jmp	.LBB29_3
.LBB29_1:
	xorl	%esi, %esi
.LBB29_3:
	movq	8(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB29_4
# %bb.5:
	movq	8(%rbx), %r12
	testq	%rdx, %rdx
	jne	.LBB29_7
	jmp	.LBB29_13
.LBB29_4:
	xorl	%r12d, %r12d
	testq	%rdx, %rdx
	je	.LBB29_13
.LBB29_7:
	testq	%rsi, %rsi
	je	.LBB29_13
# %bb.8:
	movl	24(%rdx), %eax
	movl	24(%rsi), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	cmpl	$-5, %r13d
	jb	.LBB29_10
# %bb.9:
	movl	%eax, %ecx
	movl	%r13d, %edi
	notl	%edi
	movslq	%edi, %rdi
	cmpq	%rcx, optimization_level(,%rdi,8)
	jae	.LBB29_12
.LBB29_10:
	cmpl	$8192, %eax             # imm = 0x2000
	ja	.LBB29_13
# %bb.11:
	movzwl	28(%rdx), %eax
	movzwl	28(%rsi), %ecx
	addl	%eax, %ecx
	cmpl	%r13d, %ecx
	jg	.LBB29_13
.LBB29_12:
	movq	%r14, %rdi
	callq	_quicklistZiplistMerge
.LBB29_13:
	testq	%rbx, %rbx
	je	.LBB29_20
# %bb.14:
	testq	%r12, %r12
	je	.LBB29_20
# %bb.15:
	movl	24(%rbx), %eax
	movl	24(%r12), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	cmpl	$-5, %r13d
	jb	.LBB29_17
# %bb.16:
	movl	%eax, %ecx
	movl	%r13d, %edx
	notl	%edx
	movslq	%edx, %rdx
	cmpq	%rcx, optimization_level(,%rdx,8)
	jae	.LBB29_19
.LBB29_17:
	cmpl	$8192, %eax             # imm = 0x2000
	ja	.LBB29_20
# %bb.18:
	movzwl	28(%rbx), %eax
	movzwl	28(%r12), %ecx
	addl	%eax, %ecx
	cmpl	%r13d, %ecx
	jg	.LBB29_20
.LBB29_19:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_quicklistZiplistMerge
.LBB29_20:
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB29_26
# %bb.21:
	movl	24(%r15), %eax
	movl	24(%rsi), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	cmpl	$-5, %r13d
	jb	.LBB29_23
# %bb.22:
	movl	%eax, %ecx
	movl	%r13d, %edx
	notl	%edx
	movslq	%edx, %rdx
	cmpq	%rcx, optimization_level(,%rdx,8)
	jae	.LBB29_25
.LBB29_23:
	cmpl	$8192, %eax             # imm = 0x2000
	ja	.LBB29_26
# %bb.24:
	movzwl	28(%r15), %eax
	movzwl	28(%rsi), %ecx
	addl	%eax, %ecx
	cmpl	%r13d, %ecx
	jg	.LBB29_26
.LBB29_25:
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	_quicklistZiplistMerge
	movq	%rax, %r15
.LBB29_26:
	testq	%r15, %r15
	je	.LBB29_32
# %bb.27:
	movq	8(%r15), %rdx
	testq	%rdx, %rdx
	je	.LBB29_32
# %bb.28:
	movl	24(%r15), %eax
	movl	24(%rdx), %ecx
	addl	%ecx, %eax
	addl	$-11, %eax
	cmpl	$-5, %r13d
	jb	.LBB29_30
# %bb.29:
	movl	%eax, %ecx
	movl	%r13d, %esi
	notl	%esi
	movslq	%esi, %rsi
	cmpq	%rcx, optimization_level(,%rsi,8)
	jae	.LBB29_33
.LBB29_30:
	cmpl	$8192, %eax             # imm = 0x2000
	ja	.LBB29_32
# %bb.31:
	movzwl	28(%r15), %eax
	movzwl	28(%rdx), %ecx
	addl	%eax, %ecx
	cmpl	%r13d, %ecx
	jle	.LBB29_33
.LBB29_32:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_33:
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_quicklistZiplistMerge  # TAILCALL
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
	movq	%rcx, %r12
	movq	%rdi, %r14
	movq	8(%rsi), %r13
	testq	%r13, %r13
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	je	.LBB31_3
# %bb.1:
	movq	%rsi, %r8
	movswl	32(%r14), %r11d
	xorl	%eax, %eax
	cmpq	$253, %r12
	seta	%al
	leal	1(,%rax,4), %eax
	cmpq	$63, %r12
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB31_6
# %bb.2:
	leal	1(%rax), %ecx
	jmp	.LBB31_8
.LBB31_3:
	movl	$32, %edi
	movq	%rdx, %r13
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
	callq	ziplistNew
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%rbx)
	testl	%r15d, %r15d
	je	.LBB31_21
# %bb.4:
	movq	$0, (%rbx)
	cmpq	$0, 8(%r14)
	jne	.LBB31_23
# %bb.5:
	movq	%rbx, 8(%r14)
	jmp	.LBB31_23
.LBB31_6:
	cmpq	$16383, %r12            # imm = 0x3FFF
	ja	.LBB31_105
# %bb.7:
	movl	%eax, %ecx
	orl	$2, %ecx
.LBB31_8:
	movl	24(%r13), %edi
	addl	%r12d, %ecx
	addl	%edi, %ecx
	cmpl	$-5, %r11d
	jb	.LBB31_10
# %bb.9:
	movl	%ecx, %edx
	movl	%r11d, %esi
	notl	%esi
	movslq	%esi, %rsi
	movl	$1, %r9d
	cmpq	%rdx, optimization_level(,%rsi,8)
	jae	.LBB31_12
.LBB31_10:
	xorl	%r9d, %r9d
	cmpl	$8192, %ecx             # imm = 0x2000
	ja	.LBB31_12
# %bb.11:
	movzwl	28(%r13), %ecx
	xorl	%r9d, %r9d
	cmpl	%r11d, %ecx
	setl	%r9b
.LBB31_12:
	movl	%r9d, %edx
	xorl	$1, %edx
	movl	44(%r8), %esi
	testl	%r15d, %r15d
	movq	%r8, -64(%rbp)          # 8-byte Spill
	je	.LBB31_17
# %bb.13:
	movl	28(%r13), %ecx
	movzwl	%cx, %ebx
	xorl	%r10d, %r10d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$0, %r8d
	cmpl	%ebx, %esi
	jne	.LBB31_33
# %bb.14:
	movq	8(%r13), %r14
	testq	%r14, %r14
	je	.LBB31_32
# %bb.15:
	cmpq	$63, %r12
	ja	.LBB31_26
# %bb.16:
	addl	$1, %eax
	jmp	.LBB31_28
.LBB31_17:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	testl	%esi, %esi
	je	.LBB31_63
# %bb.18:
	xorl	%r10d, %r10d
.LBB31_19:
	xorl	%eax, %eax
.LBB31_20:
	xorl	%r8d, %r8d
	orl	%r15d, %edx
	jne	.LBB31_35
.LBB31_72:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r13), %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB31_80
# %bb.73:
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%r13), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%r13), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB31_78
# %bb.74:
	movq	%r15, %rdi
	callq	zfree
	movq	%r14, 16(%r13)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r13), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r13)
	jmp	.LBB31_79
.LBB31_21:
	movq	$0, 8(%rbx)
	cmpq	$0, (%r14)
	jne	.LBB31_23
# %bb.22:
	movq	%rbx, (%r14)
.LBB31_23:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.LBB31_25
# %bb.24:
	movq	%rbx, 8(%r14)
	movq	%rbx, (%r14)
.LBB31_25:
	addq	$1, %rax
	movq	%rax, 24(%r14)
	addw	$1, 28(%rbx)
	jmp	.LBB31_104
.LBB31_26:
	cmpq	$16383, %r12            # imm = 0x3FFF
	ja	.LBB31_106
# %bb.27:
	orl	$2, %eax
.LBB31_28:
	addl	%r12d, %eax
	addl	24(%r14), %eax
	cmpl	$-5, %r11d
	jb	.LBB31_30
# %bb.29:
	movl	%eax, %ebx
	movq	%rdi, %r10
	movl	%r11d, %edi
	notl	%edi
	movslq	%edi, %rdi
	movl	$1, %r8d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	cmpq	%rbx, optimization_level(,%rdi,8)
	movq	%r10, %rdi
	movl	$0, %r10d
	jae	.LBB31_33
.LBB31_30:
	cmpl	$8192, %eax             # imm = 0x2000
	ja	.LBB31_32
# %bb.31:
	movzwl	28(%r14), %eax
	movl	$1, %r8d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	cmpl	%r11d, %eax
	jl	.LBB31_33
.LBB31_32:
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$1, %r8d
.LBB31_33:
	movl	$0, %eax
	testl	%edx, %edx
	je	.LBB31_60
# %bb.34:
	orl	%r15d, %edx
	je	.LBB31_72
.LBB31_35:
	testl	%r9d, %r9d
	jne	.LBB31_43
# %bb.36:
	testl	%r8d, %r8d
	je	.LBB31_43
# %bb.37:
	testl	%r15d, %r15d
	je	.LBB31_43
# %bb.38:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB31_43
# %bb.39:
	movq	8(%r13), %r14
	testq	%r14, %r14
	je	.LBB31_43
# %bb.40:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r14), %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB31_95
# %bb.41:
	movl	24(%r14), %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%r14), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r14), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB31_93
# %bb.42:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, 16(%r14)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r14), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r14)
	jmp	.LBB31_94
.LBB31_43:
	testl	%r9d, %r9d
	jne	.LBB31_50
# %bb.44:
	testl	%r10d, %r10d
	je	.LBB31_50
# %bb.45:
	movl	%eax, %ecx
	orl	%r15d, %ecx
	jne	.LBB31_50
# %bb.46:
	movq	(%r13), %r14
	testq	%r14, %r14
	je	.LBB31_50
# %bb.47:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r14), %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB31_98
# %bb.48:
	movl	24(%r14), %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	16(%r14), %rbx
	leaq	4(%rbx), %rdi
	movl	(%rbx), %esi
	movl	24(%r14), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB31_96
# %bb.49:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, 16(%r14)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r14), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r14)
	jmp	.LBB31_97
.LBB31_50:
	testl	%r9d, %r9d
	jne	.LBB31_104
# %bb.51:
	testl	%r8d, %r8d
	je	.LBB31_55
# %bb.52:
	testl	%r15d, %r15d
	je	.LBB31_55
# %bb.53:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB31_55
# %bb.54:
	cmpq	$0, 8(%r13)
	jne	.LBB31_59
.LBB31_55:
	testl	%r10d, %r10d
	je	.LBB31_82
# %bb.56:
	testl	%r15d, %r15d
	jne	.LBB31_82
# %bb.57:
	testl	%eax, %eax
	je	.LBB31_82
# %bb.58:
	cmpq	$0, (%r13)
	je	.LBB31_82
.LBB31_59:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$-2097152, %eax         # imm = 0xFFE00000
	andl	28(%r14), %eax
	orl	$589824, %eax           # imm = 0x90000
	movl	%eax, 28(%r14)
	callq	ziplistNew
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	xorl	%ecx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%r14)
	addw	$1, 28(%r14)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r14)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	__quicklistInsertNode
	jmp	.LBB31_104
.LBB31_60:
	andl	$196608, %ecx           # imm = 0x30000
	cmpl	$131072, %ecx           # imm = 0x20000
	jne	.LBB31_66
# %bb.61:
	callq	zmalloc
	movq	%rax, %r14
	movq	16(%r13), %r15
	leaq	4(%r15), %rdi
	movl	(%r15), %esi
	movl	24(%r13), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB31_85
# %bb.62:
	movq	%r15, %rdi
	callq	zfree
	movq	%r14, 16(%r13)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r13), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r13)
	jmp	.LBB31_86
.LBB31_63:
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB31_81
# %bb.64:
	cmpq	$63, %r12
	ja	.LBB31_67
# %bb.65:
	addl	$1, %eax
	jmp	.LBB31_69
.LBB31_66:
	leaq	16(%r13), %rbx
	jmp	.LBB31_87
.LBB31_67:
	cmpq	$16383, %r12            # imm = 0x3FFF
	ja	.LBB31_107
# %bb.68:
	orl	$2, %eax
.LBB31_69:
	addl	%r12d, %eax
	addl	24(%rcx), %eax
	cmpl	$-5, %r11d
	jb	.LBB31_75
# %bb.70:
	movq	%rdi, %r10
	movl	%eax, %edi
	movl	%r11d, %ebx
	notl	%ebx
	movslq	%ebx, %rbx
	cmpq	%rdi, optimization_level(,%rbx,8)
	movq	%r10, %rdi
	jb	.LBB31_75
# %bb.71:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	movl	$1, %r10d
	orl	%r15d, %edx
	jne	.LBB31_35
	jmp	.LBB31_72
.LBB31_75:
	cmpl	$8192, %eax             # imm = 0x2000
	ja	.LBB31_81
# %bb.76:
	movzwl	28(%rcx), %eax
	movl	$1, %r10d
	cmpl	%r11d, %eax
	jl	.LBB31_19
.LBB31_81:
	movl	$1, %r10d
	movl	$1, %eax
	jmp	.LBB31_20
.LBB31_78:
	movq	%r14, %rdi
	callq	zfree
	movl	28(%r13), %eax
.LBB31_79:
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r13)
.LBB31_80:
	movq	16(%r13), %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	jmp	.LBB31_89
.LBB31_82:
	movl	$196608, %eax           # imm = 0x30000
	andl	28(%r13), %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB31_103
# %bb.83:
	callq	zmalloc
	movq	%rax, %rbx
	movq	16(%r13), %r14
	leaq	4(%r14), %rdi
	movl	(%r14), %esi
	movl	24(%r13), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB31_101
# %bb.84:
	movq	%r14, %rdi
	callq	zfree
	movq	%rbx, 16(%r13)
	movl	$-196609, %eax          # imm = 0xFFFCFFFF
	andl	28(%r13), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r13)
	jmp	.LBB31_102
.LBB31_85:
	movq	%r14, %rdi
	callq	zfree
	movl	28(%r13), %eax
.LBB31_86:
	leaq	16(%r13), %rbx
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r13)
.LBB31_87:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rbx), %rdi
	movq	16(%rax), %rsi
	callq	ziplistNext
	movq	(%rbx), %rdi
	testq	%rax, %rax
	je	.LBB31_92
# %bb.88:
	movq	%rax, %rsi
.LBB31_89:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	%r12d, %ecx
	callq	ziplistInsert
.LBB31_90:
	movq	%rax, 16(%r13)
	addw	$1, 28(%r13)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r13)
	movl	$1245184, %eax          # imm = 0x130000
	andl	28(%r13), %eax
	cmpl	$1114112, %eax          # imm = 0x110000
	jne	.LBB31_104
# %bb.91:
	movq	%r13, %rdi
	callq	__quicklistCompressNode
	jmp	.LBB31_104
.LBB31_92:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	$1, %ecx
	callq	ziplistPush
	jmp	.LBB31_90
.LBB31_93:
	movq	%r15, %rdi
	callq	zfree
	movl	28(%r14), %eax
.LBB31_94:
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r14)
.LBB31_95:
	movq	16(%r14), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	xorl	%ecx, %ecx
	jmp	.LBB31_99
.LBB31_96:
	movq	%r15, %rdi
	callq	zfree
	movl	28(%r14), %eax
.LBB31_97:
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r14)
.LBB31_98:
	movq	16(%r14), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	$1, %ecx
.LBB31_99:
	callq	ziplistPush
	movq	%rax, 16(%r14)
	addw	$1, 28(%r14)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r14)
	movl	$1245184, %eax          # imm = 0x130000
	andl	28(%r14), %eax
	cmpl	$1114112, %eax          # imm = 0x110000
	jne	.LBB31_104
# %bb.100:
	movq	%r14, %rdi
	callq	__quicklistCompressNode
	jmp	.LBB31_104
.LBB31_101:
	movq	%rbx, %rdi
	callq	zfree
	movl	28(%r13), %eax
.LBB31_102:
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, 28(%r13)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	44(%rax), %esi
.LBB31_103:
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	sete	%bl
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	_quicklistSplitNode
	movq	%rax, %r14
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	%ebx, %ecx
	callq	ziplistPush
	movq	%rax, 16(%r14)
	addw	$1, 28(%r14)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movl	%eax, 24(%r14)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	__quicklistInsertNode
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_quicklistMergeNodes
.LBB31_104:
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, 16(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB31_105:
	leal	5(%rax), %ecx
	jmp	.LBB31_8
.LBB31_106:
	addl	$5, %eax
	jmp	.LBB31_28
.LBB31_107:
	addl	$5, %eax
	jmp	.LBB31_69
.Lfunc_end31:
	.size	_quicklistInsert, .Lfunc_end31-_quicklistInsert
                                        # -- End function
	.globl	quicklistInsertBefore   # -- Begin function quicklistInsertBefore
	.p2align	4, 0x90
	.type	quicklistInsertBefore,@function
quicklistInsertBefore:                  # @quicklistInsertBefore
# %bb.0:
	xorl	%r8d, %r8d
	jmp	_quicklistInsert        # TAILCALL
.Lfunc_end32:
	.size	quicklistInsertBefore, .Lfunc_end32-quicklistInsertBefore
                                        # -- End function
	.globl	quicklistInsertAfter    # -- Begin function quicklistInsertAfter
	.p2align	4, 0x90
	.type	quicklistInsertAfter,@function
quicklistInsertAfter:                   # @quicklistInsertAfter
# %bb.0:
	movl	$1, %r8d
	jmp	_quicklistInsert        # TAILCALL
.Lfunc_end33:
	.size	quicklistInsertAfter, .Lfunc_end33-quicklistInsertAfter
                                        # -- End function
	.globl	quicklistDelRange       # -- Begin function quicklistDelRange
	.p2align	4, 0x90
	.type	quicklistDelRange,@function
quicklistDelRange:                      # @quicklistDelRange
# %bb.0:
	testq	%rdx, %rdx
	jle	.LBB34_1
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	js	.LBB34_3
# %bb.4:
	movq	16(%rdi), %rbx
	jmp	.LBB34_5
.LBB34_1:
	xorl	%eax, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB34_3:
	xorl	%ebx, %ebx
.LBB34_5:
	subq	%rsi, %rbx
	cmpq	%rdx, %rbx
	cmovaeq	%rdx, %rbx
	leaq	-136(%rbp), %rdx
	movq	%rdi, %r15
	callq	quicklistIndex
	testl	%eax, %eax
	je	.LBB34_43
# %bb.6:
	movl	$1, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB34_43
# %bb.7:
	movq	-128(%rbp), %r14
	movl	-92(%rbp), %esi
	movq	%r15, %rdx
	movq	%r15, -88(%rbp)         # 8-byte Spill
	jmp	.LBB34_8
	.p2align	4, 0x90
.LBB34_22:                              #   in Loop: Header=BB34_8 Depth=1
	cmpq	%r15, (%rdx)
	je	.LBB34_23
.LBB34_24:                              #   in Loop: Header=BB34_8 Depth=1
	movq	%rdx, %r13
	movq	%rdx, %rdi
	xorl	%esi, %esi
	callq	__quicklistCompress
	movzwl	28(%r15), %eax
	subq	%rax, 16(%r13)
	movq	16(%r15), %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	movq	%r13, %rdx
	addq	$-1, 24(%r13)
.LBB34_42:                              #   in Loop: Header=BB34_8 Depth=1
	xorl	%esi, %esi
	movl	$0, -92(%rbp)
	subq	%r12, %rbx
	je	.LBB34_43
.LBB34_8:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %r15
	movq	8(%r14), %r14
	testl	%esi, %esi
	je	.LBB34_9
# %bb.11:                               #   in Loop: Header=BB34_8 Depth=1
	js	.LBB34_15
# %bb.12:                               #   in Loop: Header=BB34_8 Depth=1
	leaq	28(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	28(%r15), %eax
	movzwl	%ax, %r12d
	cmpq	%r12, %rbx
	jae	.LBB34_25
.LBB34_14:                              #   in Loop: Header=BB34_8 Depth=1
	movq	%rbx, %r12
	jmp	.LBB34_26
	.p2align	4, 0x90
.LBB34_9:                               #   in Loop: Header=BB34_8 Depth=1
	movl	28(%r15), %eax
	movzwl	%ax, %r12d
	cmpq	%r12, %rbx
	jae	.LBB34_16
# %bb.10:                               #   in Loop: Header=BB34_8 Depth=1
	leaq	28(%r15), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpq	%r12, %rbx
	jb	.LBB34_14
.LBB34_25:                              #   in Loop: Header=BB34_8 Depth=1
	subl	%esi, %r12d
	movslq	%r12d, %r12
	jmp	.LBB34_26
	.p2align	4, 0x90
.LBB34_15:                              #   in Loop: Header=BB34_8 Depth=1
	movl	%esi, %eax
	negl	%eax
	movslq	%eax, %r12
	cmpq	%r12, %rbx
	cmovbq	%rbx, %r12
	leaq	28(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	28(%r15), %eax
.LBB34_26:                              #   in Loop: Header=BB34_8 Depth=1
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB34_27
# %bb.28:                               #   in Loop: Header=BB34_8 Depth=1
	movl	24(%r15), %edi
	callq	zmalloc
	movq	%rax, %rbx
	leaq	16(%r15), %r13
	movq	16(%r15), %r14
	leaq	4(%r14), %rdi
	movl	(%r14), %esi
	movl	24(%r15), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB34_29
# %bb.30:                               #   in Loop: Header=BB34_8 Depth=1
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
	movq	%r14, %rdi
	callq	zfree
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%r13)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	(%r12), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, (%r12)
	jmp	.LBB34_31
	.p2align	4, 0x90
.LBB34_27:                              #   in Loop: Header=BB34_8 Depth=1
	movq	%r12, %rbx
	leaq	16(%r15), %r13
	leaq	24(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB34_32
.LBB34_23:                              #   in Loop: Header=BB34_8 Depth=1
	movq	8(%r15), %rax
	movq	%rax, (%rdx)
	jmp	.LBB34_24
.LBB34_16:                              #   in Loop: Header=BB34_8 Depth=1
	testq	%r14, %r14
	je	.LBB34_18
# %bb.17:                               #   in Loop: Header=BB34_8 Depth=1
	movq	(%r15), %rax
	movq	%rax, (%r14)
.LBB34_18:                              #   in Loop: Header=BB34_8 Depth=1
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB34_20
# %bb.19:                               #   in Loop: Header=BB34_8 Depth=1
	movq	%r14, 8(%rax)
.LBB34_20:                              #   in Loop: Header=BB34_8 Depth=1
	cmpq	%r15, 8(%rdx)
	jne	.LBB34_22
# %bb.21:                               #   in Loop: Header=BB34_8 Depth=1
	movq	%rax, 8(%rdx)
	jmp	.LBB34_22
.LBB34_29:                              #   in Loop: Header=BB34_8 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rbx
	callq	zfree
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	(%r12), %eax
.LBB34_31:                              #   in Loop: Header=BB34_8 Depth=1
	leaq	24(%r15), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, (%r12)
	movl	-92(%rbp), %esi
.LBB34_32:                              #   in Loop: Header=BB34_8 Depth=1
	movq	(%r13), %rdi
	movl	%ebx, %edx
	callq	ziplistDeleteRange
	movq	%rax, (%r13)
	movq	%rax, %rdi
	callq	ziplistBlobLen
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	(%r12), %eax
	subl	%ebx, %eax
	movw	%ax, (%r12)
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %r13
	subq	%rbx, 16(%rdx)
	movl	(%r12), %eax
	testw	%ax, %ax
	je	.LBB34_33
# %bb.39:                               #   in Loop: Header=BB34_8 Depth=1
	andl	$1245184, %eax          # imm = 0x130000
	cmpl	$1114112, %eax          # imm = 0x110000
	jne	.LBB34_41
# %bb.40:                               #   in Loop: Header=BB34_8 Depth=1
	movq	%rdx, %rbx
	movq	%r15, %rdi
	callq	__quicklistCompressNode
	movq	%rbx, %rdx
.LBB34_41:                              #   in Loop: Header=BB34_8 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r13, %r12
	jmp	.LBB34_42
	.p2align	4, 0x90
.LBB34_33:                              #   in Loop: Header=BB34_8 Depth=1
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.LBB34_35
# %bb.34:                               #   in Loop: Header=BB34_8 Depth=1
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
.LBB34_35:                              #   in Loop: Header=BB34_8 Depth=1
	movq	(%r15), %rcx
	testq	%rcx, %rcx
	movq	%r13, %r12
	je	.LBB34_37
# %bb.36:                               #   in Loop: Header=BB34_8 Depth=1
	movq	%rax, 8(%rcx)
.LBB34_37:                              #   in Loop: Header=BB34_8 Depth=1
	cmpq	%r15, 8(%rdx)
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r14         # 8-byte Reload
	jne	.LBB34_22
# %bb.38:                               #   in Loop: Header=BB34_8 Depth=1
	movq	%rcx, 8(%rdx)
	jmp	.LBB34_22
.LBB34_43:
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end34:
	.size	quicklistDelRange, .Lfunc_end34-quicklistDelRange
                                        # -- End function
	.globl	quicklistCompare        # -- Begin function quicklistCompare
	.p2align	4, 0x90
	.type	quicklistCompare,@function
quicklistCompare:                       # @quicklistCompare
# %bb.0:
	jmp	ziplistCompare          # TAILCALL
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
	cmpl	$1, %ebx
	je	.LBB36_3
# %bb.1:
	testl	%ebx, %ebx
	jne	.LBB36_5
# %bb.2:
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	jmp	.LBB36_4
.LBB36_3:
	leaq	8(%r14), %rdx
	movq	$-1, %rcx
.LBB36_4:
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, 24(%rax)
.LBB36_5:
	movl	%ebx, 32(%rax)
	movq	%r14, (%rax)
	movq	$0, 16(%rax)
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
	testl	%eax, %eax
	je	.LBB37_1
# %bb.2:
	movl	$40, %edi
	callq	zmalloc
	testl	%r14d, %r14d
	je	.LBB37_7
# %bb.3:
	cmpl	$1, %r14d
	jne	.LBB37_5
# %bb.4:
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$-1, 24(%rax)
	jmp	.LBB37_5
.LBB37_1:
	xorl	%eax, %eax
	jmp	.LBB37_6
.LBB37_7:
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, 24(%rax)
.LBB37_5:
	movl	%r14d, 32(%rax)
	movq	%rbx, (%rax)
	movq	$0, 16(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movslq	-20(%rbp), %rcx
	movq	%rcx, 24(%rax)
.LBB37_6:
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
	testq	%rsi, %rsi
	je	.LBB38_5
# %bb.1:
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB38_2
# %bb.4:
	movq	(%rbx), %rdi
	callq	__quicklistCompress
	jmp	.LBB38_5
.LBB38_2:
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB38_5
# %bb.3:
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB38_5:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
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
	subq	$24, %rsp
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%rsi)
	movq	$-123456789, 32(%rsi)   # imm = 0xF8A432EB
	movdqu	%xmm0, (%rsi)
	movabsq	$530242871224172544, %r12 # imm = 0x75BCD1500000000
	movq	%r12, 40(%rsi)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB39_25
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movdqu	(%rdi), %xmm0
	movdqu	%xmm0, (%rsi)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r13
	testq	%r13, %r13
	je	.LBB39_25
# %bb.2:
	leaq	24(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	32(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	40(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB39_3
	.p2align	4, 0x90
.LBB39_21:                              #   in Loop: Header=BB39_3 Depth=1
	movq	8(%r15), %rax
	movq	$-1, %rcx
.LBB39_22:                              #   in Loop: Header=BB39_3 Depth=1
	movq	(%rax), %rax
	movq	%rax, 8(%r15)
	movq	%rcx, 24(%r15)
.LBB39_23:                              #   in Loop: Header=BB39_3 Depth=1
	movq	$0, 16(%r15)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%r14)
	movq	$-123456789, 32(%r14)   # imm = 0xF8A432EB
	movdqu	%xmm0, (%r14)
	movq	%r12, 40(%r14)
	movdqu	(%r15), %xmm0
	movdqu	%xmm0, (%r14)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r13
	testq	%r13, %r13
	je	.LBB39_24
.LBB39_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB39_4
# %bb.10:                               #   in Loop: Header=BB39_3 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, 32(%r15)
	sete	%bl
	movl	$ziplistPrev, %ecx
	movl	$ziplistNext, %eax
	cmoveq	%rax, %rcx
	movq	16(%r13), %rdi
	callq	*%rcx
	movq	%rax, 16(%r15)
	movq	24(%r15), %rcx
	leaq	(%rcx,%rbx,2), %rcx
	addq	$-1, %rcx
	movq	%rcx, 24(%r15)
	jmp	.LBB39_11
	.p2align	4, 0x90
.LBB39_4:                               #   in Loop: Header=BB39_3 Depth=1
	movl	28(%r13), %eax
	movl	$196608, %ecx           # imm = 0x30000
	andl	%ecx, %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB39_9
# %bb.5:                                #   in Loop: Header=BB39_3 Depth=1
	movl	24(%r13), %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	16(%r13), %r12
	leaq	4(%r12), %rdi
	movl	(%r12), %esi
	movl	24(%r13), %ecx
	movq	%rax, %rdx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB39_6
# %bb.7:                                #   in Loop: Header=BB39_3 Depth=1
	movq	%r12, %rdi
	callq	zfree
	movq	%rbx, 16(%r13)
	movl	28(%r13), %eax
	movl	$-196609, %ecx          # imm = 0xFFFCFFFF
	andl	%ecx, %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, 28(%r13)
	jmp	.LBB39_8
.LBB39_6:                               #   in Loop: Header=BB39_3 Depth=1
	movq	%rbx, %rdi
	callq	zfree
.LBB39_8:                               #   in Loop: Header=BB39_3 Depth=1
	movabsq	$530242871224172544, %r12 # imm = 0x75BCD1500000000
	movq	8(%r15), %rax
	orl	$1048576, 28(%rax)      # imm = 0x100000
	movq	8(%r15), %r13
.LBB39_9:                               #   in Loop: Header=BB39_3 Depth=1
	movq	16(%r13), %rdi
	movl	24(%r15), %esi
	callq	ziplistIndex
	movq	%rax, 16(%r15)
	movq	24(%r15), %rcx
.LBB39_11:                              #   in Loop: Header=BB39_3 Depth=1
	movq	%rax, 16(%r14)
	movl	%ecx, 44(%r14)
	testq	%rax, %rax
	jne	.LBB39_12
# %bb.13:                               #   in Loop: Header=BB39_3 Depth=1
	movq	8(%r15), %rsi
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB39_14
# %bb.17:                               #   in Loop: Header=BB39_3 Depth=1
	movq	(%r15), %rdi
	callq	__quicklistCompress
	jmp	.LBB39_18
	.p2align	4, 0x90
.LBB39_14:                              #   in Loop: Header=BB39_3 Depth=1
	testq	%rsi, %rsi
	je	.LBB39_18
# %bb.15:                               #   in Loop: Header=BB39_3 Depth=1
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB39_18
# %bb.16:                               #   in Loop: Header=BB39_3 Depth=1
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
.LBB39_18:                              #   in Loop: Header=BB39_3 Depth=1
	movl	32(%r15), %eax
	cmpl	$1, %eax
	je	.LBB39_21
# %bb.19:                               #   in Loop: Header=BB39_3 Depth=1
	testl	%eax, %eax
	jne	.LBB39_23
# %bb.20:                               #   in Loop: Header=BB39_3 Depth=1
	movq	8(%r15), %rax
	addq	$8, %rax
	xorl	%ecx, %ecx
	jmp	.LBB39_22
.LBB39_24:
	xorl	%eax, %eax
	jmp	.LBB39_25
.LBB39_12:
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	ziplistGet
	movl	$1, %eax
.LBB39_25:
	addq	$24, %rsp
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
	movl	32(%rdi), %ebx
	movswl	%bx, %r12d
	andl	$-65536, %ebx           # imm = 0xFFFF0000
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	cmpl	$-6, %r12d
	movl	$-5, %eax
	cmovgl	%r12d, %eax
	movzwl	%ax, %eax
	orl	%ebx, %eax
	movl	%eax, 32(%r14)
	movq	(%r15), %r12
	testq	%r12, %r12
	je	.LBB40_19
# %bb.1:
	movl	$-196609, %r13d         # imm = 0xFFFCFFFF
	jmp	.LBB40_2
	.p2align	4, 0x90
.LBB40_17:                              #   in Loop: Header=BB40_2 Depth=1
	movq	%r14, %rdi
	callq	__quicklistCompress
.LBB40_18:                              #   in Loop: Header=BB40_2 Depth=1
	addq	$1, 24(%r14)
	movq	8(%r12), %r12
	testq	%r12, %r12
	je	.LBB40_19
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
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
	movzbl	30(%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	je	.LBB40_5
# %bb.3:                                #   in Loop: Header=BB40_2 Depth=1
	cmpb	$2, %al
	jne	.LBB40_7
# %bb.4:                                #   in Loop: Header=BB40_2 Depth=1
	movq	16(%r12), %rax
	movl	(%rax), %r15d
	addq	$4, %r15
	movq	%r15, %rdi
	callq	zmalloc
	movq	%rax, 16(%rbx)
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	jmp	.LBB40_6
	.p2align	4, 0x90
.LBB40_5:                               #   in Loop: Header=BB40_2 Depth=1
	movl	24(%r12), %edi
	callq	zmalloc
	movq	%rax, 16(%rbx)
	movq	16(%r12), %rsi
	movl	24(%r12), %edx
	movq	%rax, %rdi
.LBB40_6:                               #   in Loop: Header=BB40_2 Depth=1
	callq	memcpy
.LBB40_7:                               #   in Loop: Header=BB40_2 Depth=1
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
	movq	%rsi, (%rbx)
	testq	%rsi, %rsi
	je	.LBB40_11
# %bb.8:                                #   in Loop: Header=BB40_2 Depth=1
	movq	8(%rsi), %rax
	movq	%rax, 8(%rbx)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB40_10
# %bb.9:                                #   in Loop: Header=BB40_2 Depth=1
	movq	%rbx, (%rax)
.LBB40_10:                              #   in Loop: Header=BB40_2 Depth=1
	movq	%rbx, 8(%rsi)
.LBB40_11:                              #   in Loop: Header=BB40_2 Depth=1
	movq	%rbx, 8(%r14)
	cmpq	$0, 24(%r14)
	je	.LBB40_12
# %bb.13:                               #   in Loop: Header=BB40_2 Depth=1
	testq	%rsi, %rsi
	jne	.LBB40_14
	jmp	.LBB40_18
	.p2align	4, 0x90
.LBB40_12:                              #   in Loop: Header=BB40_2 Depth=1
	movq	%rbx, 8(%r14)
	movq	%rbx, (%r14)
	testq	%rsi, %rsi
	je	.LBB40_18
.LBB40_14:                              #   in Loop: Header=BB40_2 Depth=1
	movl	28(%rsi), %eax
	testl	$1048576, %eax          # imm = 0x100000
	je	.LBB40_17
# %bb.15:                               #   in Loop: Header=BB40_2 Depth=1
	andl	$196608, %eax           # imm = 0x30000
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB40_18
# %bb.16:                               #   in Loop: Header=BB40_2 Depth=1
	movq	%rsi, %rdi
	callq	__quicklistCompressNode
	jmp	.LBB40_18
.LBB40_19:
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
	jb	.LBB41_7
# %bb.1:
	movq	%rdi, %rbx
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
	movq	-32(%rbp), %r14
	testq	%r14, %r14
	je	.LBB41_3
# %bb.2:
	movl	-20(%rbp), %eax
	jmp	.LBB41_4
.LBB41_3:
	leaq	-80(%rbp), %r14
	movq	-48(%rbp), %rdx
	movl	$32, %esi
	movq	%r14, %rdi
	callq	ll2string
	movl	%eax, -20(%rbp)
	movq	%r14, -32(%rbp)
.LBB41_4:
	movl	%eax, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	quicklistPushHead
	cmpq	$1, 24(%rbx)
	jne	.LBB41_6
# %bb.5:
	movq	8(%rbx), %rax
	movq	16(%rax), %rdi
	movl	$-1, %esi
	callq	ziplistIndex
	movq	%rax, -40(%rbp)
.LBB41_6:
	movq	8(%rbx), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	callq	quicklistDelIndex
.LBB41_7:
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
	subq	$56, %rsp
	movq	%rcx, %r14
	movl	%esi, %eax
	movl	%esi, %ecx
	negl	%ecx
	sbbl	%esi, %esi
	xorl	%r13d, %r13d
	cmpq	$0, 16(%rdi)
	je	.LBB42_23
# %bb.1:
	movq	%r8, %r12
	movq	%rdx, %rbx
	movq	%rdi, %r15
	testq	%rdx, %rdx
	je	.LBB42_3
# %bb.2:
	movq	$0, (%rbx)
.LBB42_3:
	testq	%r14, %r14
	je	.LBB42_5
# %bb.4:
	movl	$0, (%r14)
.LBB42_5:
	testq	%r12, %r12
	je	.LBB42_7
# %bb.6:
	movq	$-123456789, (%r12)     # imm = 0xF8A432EB
.LBB42_7:
	testl	%eax, %eax
	je	.LBB42_8
# %bb.9:
	cmpl	$-1, %eax
	jne	.LBB42_23
# %bb.10:
	movq	8(%r15), %rax
	testq	%rax, %rax
	jne	.LBB42_12
	jmp	.LBB42_23
.LBB42_8:
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB42_23
.LBB42_12:
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	16(%rax), %rdi
	callq	ziplistIndex
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%rax, %rdi
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB42_23
# %bb.13:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB42_18
# %bb.14:
	testq	%rbx, %rbx
	je	.LBB42_16
# %bb.15:
	movl	-44(%rbp), %esi
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movq	%rax, (%rbx)
.LBB42_16:
	testq	%r14, %r14
	movq	-56(%rbp), %rsi         # 8-byte Reload
	je	.LBB42_22
# %bb.17:
	movl	-44(%rbp), %eax
	movl	%eax, (%r14)
	jmp	.LBB42_22
.LBB42_18:
	testq	%rbx, %rbx
	je	.LBB42_20
# %bb.19:
	movq	$0, (%rbx)
.LBB42_20:
	testq	%r12, %r12
	movq	-56(%rbp), %rsi         # 8-byte Reload
	je	.LBB42_22
# %bb.21:
	movq	-72(%rbp), %rax
	movq	%rax, (%r12)
.LBB42_22:
	leaq	-88(%rbp), %rdx
	movq	%r15, %rdi
	callq	quicklistDelIndex
	movl	$1, %r13d
.LBB42_23:
	movl	%r13d, %eax
	addq	$56, %rsp
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	cmpq	$0, 16(%rdi)
	je	.LBB44_1
# %bb.2:
	movq	%r8, %r15
	movq	%rdx, %r12
	movl	%esi, %eax
	movq	%rdi, %rbx
	xorl	%esi, %esi
	testl	%eax, %eax
	setne	%dl
	testl	%eax, %eax
	je	.LBB44_3
# %bb.5:
	movq	$-123456789, %rdi       # imm = 0xF8A432EB
	cmpl	$-1, %eax
	jne	.LBB44_6
# %bb.7:
	movq	8(%rbx), %r13
	testq	%r13, %r13
	jne	.LBB44_8
	jmp	.LBB44_6
.LBB44_1:
	xorl	%eax, %eax
	jmp	.LBB44_20
.LBB44_3:
	movq	(%rbx), %r13
	testq	%r13, %r13
	je	.LBB44_4
.LBB44_8:
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movb	%dl, %sil
	negl	%esi
	movq	16(%r13), %rdi
	callq	ziplistIndex
	movq	%rax, -96(%rbp)
	leaq	-88(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rax, %rdi
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB44_9
# %bb.10:
	movq	-88(%rbp), %r14
	testq	%r14, %r14
	je	.LBB44_12
# %bb.11:
	movl	-44(%rbp), %edi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	zmalloc
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	$-123456789, -56(%rbp)  # 8-byte Folded Spill
                                        # imm = 0xF8A432EB
	movl	-44(%rbp), %r14d
	jmp	.LBB44_13
.LBB44_4:
	movq	$-123456789, %rdi       # imm = 0xF8A432EB
.LBB44_6:
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.LBB44_14
.LBB44_9:
	movq	$-123456789, %rdi       # imm = 0xF8A432EB
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB44_14
.LBB44_12:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
.LBB44_13:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	quicklistDelIndex
	movl	$1, %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB44_14:
	testq	%r12, %r12
	je	.LBB44_16
# %bb.15:
	movq	%rdx, (%r12)
.LBB44_16:
	testq	%r15, %r15
	je	.LBB44_18
# %bb.17:
	movq	%rdi, (%r15)
.LBB44_18:
	testq	%rcx, %rcx
	je	.LBB44_20
# %bb.19:
	movl	%r14d, (%rcx)
.LBB44_20:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
	cmpl	$-1, %ecx
	je	.LBB45_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB45_4
# %bb.2:
	jmp	quicklistPushHead       # TAILCALL
.LBB45_3:
	jmp	quicklistPushTail       # TAILCALL
.LBB45_4:
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
