	.text
	.file	"t_stream.c"
	.globl	streamNew               # -- Begin function streamNew
	.p2align	4, 0x90
	.type	streamNew,@function
streamNew:                              # @streamNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %rbx
	callq	raxNew
	movq	%rax, (%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rbx)
	movups	%xmm0, 24(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	streamNew, .Lfunc_end0-streamNew
                                        # -- End function
	.globl	freeStream              # -- Begin function freeStream
	.p2align	4, 0x90
	.type	freeStream,@function
freeStream:                             # @freeStream
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movl	$lpFree, %esi
	callq	raxFreeWithCallback
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:
	movl	$streamFreeCG, %esi
	callq	raxFreeWithCallback
.LBB1_2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end1:
	.size	freeStream, .Lfunc_end1-freeStream
                                        # -- End function
	.globl	streamFreeCG            # -- Begin function streamFreeCG
	.p2align	4, 0x90
	.type	streamFreeCG,@function
streamFreeCG:                           # @streamFreeCG
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movl	$streamFreeNACK, %esi
	callq	raxFreeWithCallback
	movq	24(%rbx), %rdi
	movl	$streamFreeConsumer, %esi
	callq	raxFreeWithCallback
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end2:
	.size	streamFreeCG, .Lfunc_end2-streamFreeCG
                                        # -- End function
	.globl	streamNextID            # -- Begin function streamNextID
	.p2align	4, 0x90
	.type	streamNextID,@function
streamNextID:                           # @streamNextID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	mstime
	movq	(%rbx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB3_2
# %bb.1:
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB3_3
.LBB3_2:
	movq	%rcx, (%r14)
	movq	8(%rbx), %rax
	addq	$1, %rax
.LBB3_3:
	movq	%rax, 8(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	streamNextID, .Lfunc_end3-streamNextID
                                        # -- End function
	.globl	lpAppendInteger         # -- Begin function lpAppendInteger
	.p2align	4, 0x90
	.type	lpAppendInteger,@function
lpAppendInteger:                        # @lpAppendInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	lpAppend
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lpAppendInteger, .Lfunc_end4-lpAppendInteger
                                        # -- End function
	.globl	lpReplaceInteger        # -- Begin function lpReplaceInteger
	.p2align	4, 0x90
	.type	lpReplaceInteger,@function
lpReplaceInteger:                       # @lpReplaceInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	-48(%rbp), %r15
	movl	$21, %esi
	movq	%r15, %rdi
	callq	ll2string
	movq	(%rbx), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	movq	%rbx, %r9
	callq	lpInsert
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lpReplaceInteger, .Lfunc_end5-lpReplaceInteger
                                        # -- End function
	.globl	lpGetInteger            # -- Begin function lpGetInteger
	.p2align	4, 0x90
	.type	lpGetInteger,@function
lpGetInteger:                           # @lpGetInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB6_1
# %bb.2:
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB6_5
# %bb.3:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_4
.LBB6_1:
	movq	-8(%rbp), %rax
.LBB6_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB6_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end6:
	.size	lpGetInteger, .Lfunc_end6-lpGetInteger
                                        # -- End function
	.globl	streamLogListpackContent # -- Begin function streamLogListpackContent
	.p2align	4, 0x90
	.type	streamLogListpackContent,@function
streamLogListpackContent:               # @streamLogListpackContent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %r14
	callq	lpFirst
	testq	%rax, %rax
	je	.LBB7_3
# %bb.1:
	movq	%rax, %rbx
	leaq	-40(%rbp), %r15
	leaq	-64(%rbp), %r12
	.p2align	4, 0x90
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	lpGet
	movl	-40(%rbp), %ecx
	movl	$.L.str.2, %esi
	movl	$3, %edi
	movl	%ecx, %edx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lpNext
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB7_2
.LBB7_3:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	streamLogListpackContent, .Lfunc_end7-streamLogListpackContent
                                        # -- End function
	.globl	streamEncodeID          # -- Begin function streamEncodeID
	.p2align	4, 0x90
	.type	streamEncodeID,@function
streamEncodeID:                         # @streamEncodeID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	callq	intrev64
	movq	%rax, -32(%rbp)
	movq	8(%rbx), %rdi
	callq	intrev64
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	memcpy
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	streamEncodeID, .Lfunc_end8-streamEncodeID
                                        # -- End function
	.globl	streamDecodeID          # -- Begin function streamDecodeID
	.p2align	4, 0x90
	.type	streamDecodeID,@function
streamDecodeID:                         # @streamDecodeID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-32(%rbp), %rdi
	movl	$16, %edx
	callq	memcpy
	movq	-32(%rbp), %rdi
	callq	intrev64
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rdi
	callq	intrev64
	movq	%rax, 8(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	streamDecodeID, .Lfunc_end9-streamDecodeID
                                        # -- End function
	.globl	streamCompareID         # -- Begin function streamCompareID
	.p2align	4, 0x90
	.type	streamCompareID,@function
streamCompareID:                        # @streamCompareID
# %bb.0:
	movq	(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, (%rdi)
	ja	.LBB10_4
# %bb.1:
	movl	$-1, %eax
	jb	.LBB10_4
# %bb.2:
	movq	8(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 8(%rdi)
	ja	.LBB10_4
# %bb.3:
	sbbl	%eax, %eax
.LBB10_4:
	retq
.Lfunc_end10:
	.size	streamCompareID, .Lfunc_end10-streamCompareID
                                        # -- End function
	.globl	streamAppendItem        # -- Begin function streamAppendItem
	.p2align	4, 0x90
	.type	streamAppendItem,@function
streamAppendItem:                       # @streamAppendItem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$616, %rsp              # imm = 0x268
	movq	%r8, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	testq	%r8, %r8
	je	.LBB11_4
# %bb.1:
	movq	16(%r13), %rax
	cmpq	%rax, (%rbx)
	jbe	.LBB11_2
.LBB11_4:
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	(%r13), %rsi
	leaq	-656(%rbp), %r14
	movq	%r14, %rdi
	callq	raxStart
	xorl	%r12d, %r12d
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%r14, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB11_5
# %bb.6:
	movq	-632(%rbp), %r14
	movq	%r14, %rdi
	callq	lpBytes
	movl	%eax, %r12d
	jmp	.LBB11_7
.LBB11_2:
	movl	$-1, %eax
	jb	.LBB11_92
# %bb.3:
	movq	8(%rbx), %rsi
	cmpq	24(%r13), %rsi
	ja	.LBB11_4
	jmp	.LBB11_92
.LBB11_5:
	xorl	%r14d, %r14d
.LBB11_7:
	leaq	-656(%rbp), %rdi
	callq	raxStop
	testq	%rbx, %rbx
	je	.LBB11_9
# %bb.8:
	movq	(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	8(%rbx), %rbx
	jmp	.LBB11_12
.LBB11_9:
	callq	mstime
	movq	16(%r13), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	cmpq	%rcx, %rax
	jbe	.LBB11_11
# %bb.10:
	xorl	%ebx, %ebx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_12
.LBB11_11:
	movq	24(%r13), %rbx
	addq	$1, %rbx
.LBB11_12:
	testq	%r14, %r14
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%r13, -168(%rbp)        # 8-byte Spill
	je	.LBB11_25
# %bb.13:
	movq	server+2848(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_15
# %bb.14:
	cmpq	%rax, %r12
	jbe	.LBB11_15
.LBB11_25:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	intrev64
	movq	%rax, -80(%rbp)
	movq	%rbx, %rdi
	callq	intrev64
	movq	%rax, -72(%rbp)
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$16, %edx
	callq	memcpy
	callq	lpNew
	movq	%rax, %r14
	leaq	-80(%rbp), %rbx
	movl	$21, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	ll2string
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r14
	movl	$21, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	ll2string
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r14
	movl	$21, %esi
	movq	%rbx, %rdi
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	ll2string
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r14
	testq	%r12, %r12
	jle	.LBB11_36
# %bb.26:
	movq	%r15, %rbx
	jmp	.LBB11_27
.LBB11_34:                              #   in Loop: Header=BB11_27 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB11_35:                              #   in Loop: Header=BB11_27 Depth=1
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	lpAppend
	movq	%rax, %r14
	addq	$16, %rbx
	addq	$-1, %r12
	je	.LBB11_36
.LBB11_27:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB11_28
# %bb.29:                               #   in Loop: Header=BB11_27 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI11_1(,%rax,8)
.LBB11_30:                              #   in Loop: Header=BB11_27 Depth=1
	shrq	$3, %rdx
	jmp	.LBB11_35
.LBB11_32:                              #   in Loop: Header=BB11_27 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB11_35
.LBB11_33:                              #   in Loop: Header=BB11_27 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB11_35
.LBB11_31:                              #   in Loop: Header=BB11_27 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB11_35
.LBB11_28:                              #   in Loop: Header=BB11_27 Depth=1
	xorl	%edx, %edx
	jmp	.LBB11_35
.LBB11_36:
	movl	$21, %esi
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	ll2string
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	(%r13), %rdi
	movq	%rax, %r13
	leaq	-144(%rbp), %rsi
	movl	$16, %edx
	movq	%rax, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movl	$2, %r12d
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, -152(%rbp)        # 8-byte Spill
.LBB11_63:
	movl	%r12d, %edx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r13
	movq	%r14, %rdx
	subq	-152(%rbp), %rdx        # 8-byte Folded Reload
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r14
	movq	-120(%rbp), %rdx        # 8-byte Reload
	subq	-160(%rbp), %rdx        # 8-byte Folded Reload
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r13
	testb	$2, %r12b
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	je	.LBB11_65
# %bb.64:
	movq	-96(%rbp), %r14         # 8-byte Reload
	testq	%r14, %r14
	jg	.LBB11_67
	jmp	.LBB11_87
.LBB11_65:
	movl	$21, %esi
	movq	%rbx, %rdi
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	ll2string
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	movq	%rax, %r13
	testq	%r14, %r14
	jle	.LBB11_87
.LBB11_67:                              # %.preheader
	addq	$8, %r15
	jmp	.LBB11_68
.LBB11_85:                              #   in Loop: Header=BB11_68 Depth=1
	movq	-17(%rbx), %rdx
	.p2align	4, 0x90
.LBB11_86:                              #   in Loop: Header=BB11_68 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	lpAppend
	movq	%rax, %r13
	addq	$16, %r15
	addq	$-1, %r14
	je	.LBB11_87
.LBB11_68:                              # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	8(%rax), %rbx
	testb	$2, %r12b
	jne	.LBB11_78
# %bb.69:                               #   in Loop: Header=BB11_68 Depth=1
	movq	-8(%r15), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB11_70
# %bb.71:                               #   in Loop: Header=BB11_68 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI11_2(,%rax,8)
.LBB11_72:                              #   in Loop: Header=BB11_68 Depth=1
	shrq	$3, %rdx
	jmp	.LBB11_77
.LBB11_76:                              #   in Loop: Header=BB11_68 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB11_77
.LBB11_74:                              #   in Loop: Header=BB11_68 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB11_77
.LBB11_75:                              #   in Loop: Header=BB11_68 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB11_77
.LBB11_73:                              #   in Loop: Header=BB11_68 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB11_77
.LBB11_70:                              #   in Loop: Header=BB11_68 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_77:                              #   in Loop: Header=BB11_68 Depth=1
	movq	%r13, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	lpAppend
	movq	%rax, %r13
.LBB11_78:                              #   in Loop: Header=BB11_68 Depth=1
	movzbl	-1(%rbx), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB11_79
# %bb.80:                               #   in Loop: Header=BB11_68 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI11_3(,%rax,8)
.LBB11_81:                              #   in Loop: Header=BB11_68 Depth=1
	shrq	$3, %rdx
	jmp	.LBB11_86
.LBB11_83:                              #   in Loop: Header=BB11_68 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB11_86
.LBB11_84:                              #   in Loop: Header=BB11_68 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB11_86
.LBB11_82:                              #   in Loop: Header=BB11_68 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB11_86
.LBB11_79:                              #   in Loop: Header=BB11_68 Depth=1
	xorl	%edx, %edx
	jmp	.LBB11_86
.LBB11_87:
	movq	-96(%rbp), %rdx         # 8-byte Reload
	leaq	1(%rdx), %rax
	xorl	%ecx, %ecx
	testb	$2, %r12b
	cmoveq	%rax, %rcx
	leaq	3(%rdx,%rcx), %rdx
	movl	$21, %esi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	ll2string
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	lpAppend
	cmpq	%rax, -632(%rbp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	je	.LBB11_89
# %bb.88:
	movq	(%rbx), %rdi
	leaq	-144(%rbp), %rsi
	movl	$16, %edx
	movq	%rax, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB11_89:
	addq	$1, 8(%rbx)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 16(%rbx)
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB11_91
# %bb.90:
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
.LBB11_91:
	xorl	%eax, %eax
.LBB11_92:
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_15:
	cmpq	$0, server+2856(%rip)
	je	.LBB11_23
# %bb.16:
	movq	%r14, %rdi
	callq	lpFirst
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB11_17
# %bb.18:
	movq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB11_19
# %bb.21:
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB11_22
.LBB11_17:
	movq	-80(%rbp), %rax
.LBB11_22:
	xorl	%ecx, %ecx
	cmpq	server+2856(%rip), %rax
	cmovgq	%rcx, %r14
	movq	server+2848(%rip), %rax
.LBB11_23:
	testq	%r14, %r14
	je	.LBB11_25
# %bb.24:
	cmpq	%rax, %r12
	ja	.LBB11_25
# %bb.37:
	cmpq	$16, -624(%rbp)
	jne	.LBB11_38
# %bb.39:
	movq	-640(%rbp), %rsi
	leaq	-144(%rbp), %rbx
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memcpy
	leaq	-80(%rbp), %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	-80(%rbp), %rdi
	callq	intrev64
	movq	%rax, %rbx
	movq	-72(%rbp), %rdi
	callq	intrev64
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	lpFirst
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	je	.LBB11_40
# %bb.41:
	movq	-80(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB11_19
# %bb.42:
	movq	-112(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	jmp	.LBB11_43
.LBB11_40:
	movq	-80(%rbp), %rdx
.LBB11_43:
	addq	$1, %rdx
	leaq	-80(%rbp), %rbx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	-48(%rbp), %rcx
	leaq	-48(%rbp), %r9
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	callq	lpInsert
	movq	%rax, %rbx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	lpNext
	movq	%rax, -48(%rbp)
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	movq	%r12, -160(%rbp)        # 8-byte Spill
	je	.LBB11_44
# %bb.45:
	movq	-80(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB11_19
# %bb.46:
	movq	-112(%rbp), %rbx
	movq	%rbx, -80(%rbp)
	jmp	.LBB11_47
.LBB11_44:
	movq	-80(%rbp), %rbx
.LBB11_47:
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	lpNext
	movq	%rax, -48(%rbp)
	xorl	%r12d, %r12d
	cmpq	-96(%rbp), %rbx         # 8-byte Folded Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	jne	.LBB11_62
# %bb.48:
	movq	-96(%rbp), %r12         # 8-byte Reload
	xorl	%r13d, %r13d
	testq	%r12, %r12
	jle	.LBB11_61
# %bb.49:
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB11_50:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %r14
	movq	%rax, %rdi
	leaq	-112(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	lpGet
	movzbl	-1(%r14), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB11_51
# %bb.52:                               #   in Loop: Header=BB11_50 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI11_0(,%rcx,8)
.LBB11_53:                              #   in Loop: Header=BB11_50 Depth=1
	shrq	$3, %rdx
	jmp	.LBB11_58
.LBB11_57:                              #   in Loop: Header=BB11_50 Depth=1
	movq	-17(%r14), %rdx
	jmp	.LBB11_58
.LBB11_55:                              #   in Loop: Header=BB11_50 Depth=1
	movzwl	-5(%r14), %edx
	jmp	.LBB11_58
.LBB11_56:                              #   in Loop: Header=BB11_50 Depth=1
	movl	-9(%r14), %edx
	jmp	.LBB11_58
.LBB11_54:                              #   in Loop: Header=BB11_50 Depth=1
	movzbl	-3(%r14), %edx
	jmp	.LBB11_58
.LBB11_51:                              #   in Loop: Header=BB11_50 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_58:                              #   in Loop: Header=BB11_50 Depth=1
	cmpq	-112(%rbp), %rdx
	jne	.LBB11_61
# %bb.59:                               #   in Loop: Header=BB11_50 Depth=1
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB11_61
# %bb.60:                               #   in Loop: Header=BB11_50 Depth=1
	movq	-48(%rbp), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	lpNext
	movq	%rax, -48(%rbp)
	addq	$1, %r13
	addq	$16, %rbx
	cmpq	%r12, %r13
	jl	.LBB11_50
.LBB11_61:
	movq	%r12, %rax
	xorl	%r12d, %r12d
	cmpq	%rax, %r13
	sete	%r12b
	addl	%r12d, %r12d
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	-104(%rbp), %r13        # 8-byte Reload
.LBB11_62:
	leaq	-80(%rbp), %rbx
	jmp	.LBB11_63
.LBB11_19:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
	jmp	.LBB11_20
.LBB11_38:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$273, %edx              # imm = 0x111
.LBB11_20:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end11:
	.size	streamAppendItem, .Lfunc_end11-streamAppendItem
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_53
	.quad	.LBB11_54
	.quad	.LBB11_55
	.quad	.LBB11_56
	.quad	.LBB11_57
.LJTI11_1:
	.quad	.LBB11_30
	.quad	.LBB11_31
	.quad	.LBB11_32
	.quad	.LBB11_33
	.quad	.LBB11_34
.LJTI11_2:
	.quad	.LBB11_72
	.quad	.LBB11_73
	.quad	.LBB11_74
	.quad	.LBB11_75
	.quad	.LBB11_76
.LJTI11_3:
	.quad	.LBB11_81
	.quad	.LBB11_82
	.quad	.LBB11_83
	.quad	.LBB11_84
	.quad	.LBB11_85
                                        # -- End function
	.text
	.globl	streamTrimByLength      # -- Begin function streamTrimByLength
	.p2align	4, 0x90
	.type	streamTrimByLength,@function
streamTrimByLength:                     # @streamTrimByLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	cmpq	%rsi, 8(%rdi)
	jbe	.LBB12_1
# %bb.2:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movq	(%rdi), %rsi
	leaq	-592(%rbp), %r15
	movq	%r15, %rdi
	callq	raxStart
	xorl	%r12d, %r12d
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	cmpq	%r14, 8(%rbx)
	jbe	.LBB12_46
# %bb.3:
	xorl	%r12d, %r12d
	leaq	-592(%rbp), %rbx
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB12_46
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movq	-568(%rbp), %r13
	movq	%r13, %rdi
	callq	lpFirst
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	leaq	-56(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	movq	-104(%rbp), %r12        # 8-byte Reload
	je	.LBB12_8
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=1
	movq	-56(%rbp), %r15
	movq	%r15, -80(%rbp)
	jmp	.LBB12_11
	.p2align	4, 0x90
.LBB12_6:                               #   in Loop: Header=BB12_4 Depth=1
	movq	-80(%rbp), %r15
	movq	-104(%rbp), %r12        # 8-byte Reload
.LBB12_11:                              #   in Loop: Header=BB12_4 Depth=1
	movq	8(%r12), %rbx
	movq	%rbx, %rax
	subq	%r15, %rax
	cmpq	%r14, %rax
	jb	.LBB12_12
# %bb.45:                               #   in Loop: Header=BB12_4 Depth=1
	movq	%r13, %rdi
	callq	lpFree
	movq	(%r12), %rdi
	movq	-576(%rbp), %rsi
	movq	-560(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	-576(%rbp), %rdx
	movq	-560(%rbp), %rcx
	movl	$.L.str.6, %esi
	leaq	-592(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxSeek
	movq	8(%r12), %rax
	subq	%r15, %rax
	movq	%rax, 8(%r12)
	movq	-112(%rbp), %r12        # 8-byte Reload
	addq	%r15, %r12
	cmpq	%r14, %rax
	ja	.LBB12_4
	jmp	.LBB12_46
.LBB12_1:
	xorl	%r12d, %r12d
	jmp	.LBB12_47
.LBB12_12:
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB12_14
# %bb.13:
	movq	-112(%rbp), %r12        # 8-byte Reload
	jmp	.LBB12_46
.LBB12_14:
	subq	-96(%rbp), %rbx         # 8-byte Folded Reload
	subq	%rbx, %r15
	movq	-112(%rbp), %r12        # 8-byte Reload
	jle	.LBB12_15
# %bb.16:
	leaq	-80(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	ll2string
	movq	-48(%rbp), %rcx
	leaq	-48(%rbp), %r9
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	callq	lpInsert
	movq	%rax, %r15
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	lpNext
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	movq	-104(%rbp), %r14        # 8-byte Reload
	je	.LBB12_17
# %bb.18:
	movq	-80(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB12_8
# %bb.19:
	movq	-56(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	jmp	.LBB12_20
.LBB12_17:
	movq	-80(%rbp), %rdx
.LBB12_20:
	addq	%rbx, %rdx
	leaq	-80(%rbp), %rbx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	-48(%rbp), %rcx
	leaq	-48(%rbp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	callq	lpInsert
	movq	%rax, %r15
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	lpNext
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB12_21
# %bb.22:
	movq	-80(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB12_8
# %bb.23:
	movq	-56(%rbp), %r13
	movq	%r13, -80(%rbp)
	jmp	.LBB12_24
.LBB12_21:
	movq	-80(%rbp), %r13
.LBB12_24:
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	lpNext
	movq	%rax, -48(%rbp)
	movq	$-1, %rbx
	.p2align	4, 0x90
.LBB12_25:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, -48(%rbp)
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jl	.LBB12_25
# %bb.26:
	testq	%rax, %rax
	je	.LBB12_44
# %bb.27:
	movq	%r13, -88(%rbp)         # 8-byte Spill
	leaq	-80(%rbp), %rbx
	.p2align	4, 0x90
.LBB12_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_42 Depth 2
	movq	%rax, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB12_29
# %bb.30:                               #   in Loop: Header=BB12_28 Depth=1
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	leaq	-56(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB12_8
# %bb.31:                               #   in Loop: Header=BB12_28 Depth=1
	movq	-56(%rbp), %r13
	movq	%r13, -80(%rbp)
	testb	$1, %r13b
	je	.LBB12_33
	jmp	.LBB12_34
.LBB12_29:                              #   in Loop: Header=BB12_28 Depth=1
	movq	-80(%rbp), %r13
	testb	$1, %r13b
	jne	.LBB12_34
.LBB12_33:                              #   in Loop: Header=BB12_28 Depth=1
	orl	$1, %r13d
	movslq	%r13d, %rdx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	-48(%rbp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	leaq	-48(%rbp), %r9
	callq	lpInsert
	movq	%rax, %r15
	addq	$1, %r12
	movq	8(%r14), %rax
	addq	$-1, %rax
	movq	%rax, 8(%r14)
	cmpq	-96(%rbp), %rax         # 8-byte Folded Reload
	jbe	.LBB12_44
.LBB12_34:                              #   in Loop: Header=BB12_28 Depth=1
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	lpNext
	movq	%rax, -48(%rbp)
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, -48(%rbp)
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, -48(%rbp)
	testb	$2, %r13b
	jne	.LBB12_35
# %bb.36:                               #   in Loop: Header=BB12_28 Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB12_37
# %bb.38:                               #   in Loop: Header=BB12_28 Depth=1
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	leaq	-56(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB12_8
# %bb.39:                               #   in Loop: Header=BB12_28 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB12_40
	.p2align	4, 0x90
.LBB12_35:                              #   in Loop: Header=BB12_28 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %ebx
	jmp	.LBB12_41
.LBB12_37:                              #   in Loop: Header=BB12_28 Depth=1
	movq	-80(%rbp), %rax
.LBB12_40:                              #   in Loop: Header=BB12_28 Depth=1
	leal	(%rax,%rax), %ebx
	addl	$1, %ebx
	movq	-48(%rbp), %rax
.LBB12_41:                              #   in Loop: Header=BB12_28 Depth=1
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB12_42:                              #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, -48(%rbp)
	addl	$-1, %ebx
	jne	.LBB12_42
# %bb.43:                               #   in Loop: Header=BB12_28 Depth=1
	testq	%rax, %rax
	leaq	-80(%rbp), %rbx
	jne	.LBB12_28
.LBB12_44:
	movq	(%r14), %rdi
	movq	-576(%rbp), %rsi
	movq	-560(%rbp), %rdx
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB12_46:
	leaq	-592(%rbp), %rdi
	callq	raxStop
.LBB12_47:
	movq	%r12, %rax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_8:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
.LBB12_9:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB12_15:
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$404, %edx              # imm = 0x194
	jmp	.LBB12_9
.Lfunc_end12:
	.size	streamTrimByLength, .Lfunc_end12-streamTrimByLength
                                        # -- End function
	.globl	streamIteratorStart     # -- Begin function streamIteratorStart
	.p2align	4, 0x90
	.type	streamIteratorStart,@function
streamIteratorStart:                    # @streamIteratorStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	leaq	56(%rdi), %r12
	testq	%rdx, %rdx
	je	.LBB13_2
# %bb.1:
	movq	(%r15), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	8(%r15), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rsi
	movl	$16, %edx
	movq	%r12, %rdi
	callq	memcpy
	jmp	.LBB13_3
.LBB13_2:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r12)
.LBB13_3:
	leaq	72(%r13), %rbx
	testq	%r14, %r14
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	je	.LBB13_5
# %bb.4:
	movq	(%r14), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	8(%r14), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB13_6
.LBB13_5:
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx)
.LBB13_6:
	leaq	88(%r13), %r12
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	raxStart
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB13_7
# %bb.12:
	testq	%r14, %r14
	je	.LBB13_16
# %bb.13:
	cmpq	$0, (%r14)
	jne	.LBB13_15
# %bb.14:
	cmpq	$0, 8(%r14)
	je	.LBB13_16
.LBB13_15:
	movl	$.L.str.8, %esi
	movl	$16, %ecx
	movq	%r12, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	raxSeek
	movq	%r12, %rdi
	callq	raxEOF
	testl	%eax, %eax
	je	.LBB13_18
.LBB13_16:
	movl	$.L.str.3, %esi
	jmp	.LBB13_17
.LBB13_7:
	testq	%r15, %r15
	je	.LBB13_11
# %bb.8:
	cmpq	$0, (%r15)
	jne	.LBB13_10
# %bb.9:
	cmpq	$0, 8(%r15)
	je	.LBB13_11
.LBB13_10:
	movl	$.L.str.8, %esi
	movl	$16, %ecx
	movq	%r12, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	raxSeek
	movq	%r12, %rdi
	callq	raxEOF
	testl	%eax, %eax
	je	.LBB13_18
.LBB13_11:
	movl	$.L.str.5, %esi
.LBB13_17:
	movq	%r12, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
.LBB13_18:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 568(%r13)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 52(%r13)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	streamIteratorStart, .Lfunc_end13-streamIteratorStart
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function streamIteratorGetID
.LCPI14_0:
	.zero	16
	.text
	.globl	streamIteratorGetID
	.p2align	4, 0x90
	.type	streamIteratorGetID,@function
streamIteratorGetID:                    # @streamIteratorGetID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	leaq	8(%rdi), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	leaq	56(%rdi), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	72(%rdi), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leaq	88(%rdi), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	leaq	-64(%rbp), %r14
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_28 Depth 2
                                        #     Child Loop BB14_20 Depth 2
                                        #     Child Loop BB14_29 Depth 2
                                        #       Child Loop BB14_37 Depth 3
                                        #       Child Loop BB14_71 Depth 3
                                        #       Child Loop BB14_69 Depth 3
	cmpq	$0, 568(%r15)
	je	.LBB14_3
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movq	576(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB14_3
# %bb.22:                               #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, 52(%r15)
	je	.LBB14_29
# %bb.23:                               #   in Loop: Header=BB14_1 Depth=1
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_24
# %bb.25:                               #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	-80(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.26:                               #   in Loop: Header=BB14_1 Depth=1
	movq	-80(%rbp), %rbx
	movq	%rbx, -64(%rbp)
	jmp	.LBB14_27
	.p2align	4, 0x90
.LBB14_3:                               #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, 52(%r15)
	jne	.LBB14_8
# %bb.4:                                #   in Loop: Header=BB14_1 Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	raxNext
	testl	%eax, %eax
	je	.LBB14_5
# %bb.7:                                #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, 52(%r15)
	je	.LBB14_9
.LBB14_8:                               #   in Loop: Header=BB14_1 Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	raxPrev
	testl	%eax, %eax
	je	.LBB14_5
.LBB14_9:                               #   in Loop: Header=BB14_1 Depth=1
	cmpq	$16, 120(%r15)
	leaq	-80(%rbp), %rbx
	jne	.LBB14_10
# %bb.12:                               #   in Loop: Header=BB14_1 Depth=1
	movq	104(%r15), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, 8(%r15)
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, 16(%r15)
	movq	112(%r15), %rdi
	movq	%rdi, 568(%r15)
	callq	lpFirst
	movq	%rax, 576(%r15)
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_13
# %bb.14:                               #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.16:                               #   in Loop: Header=BB14_1 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_17
	.p2align	4, 0x90
.LBB14_13:                              #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rax
.LBB14_17:                              #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, 24(%r15)
	movq	568(%r15), %rdi
	movq	576(%r15), %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	movq	%rax, 32(%r15)
	cmpl	$0, 52(%r15)
	je	.LBB14_18
# %bb.21:                               #   in Loop: Header=BB14_1 Depth=1
	movq	568(%r15), %rdi
	callq	lpLast
	movq	%rax, 576(%r15)
	jmp	.LBB14_29
	.p2align	4, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, 24(%r15)
	je	.LBB14_29
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_20:                              #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	addq	$1, %rbx
	cmpq	24(%r15), %rbx
	jb	.LBB14_20
	jmp	.LBB14_29
.LBB14_24:                              #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rbx
.LBB14_27:                              #   in Loop: Header=BB14_1 Depth=1
	movq	576(%r15), %rax
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB14_28:                              #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpPrev
	movq	%rax, 576(%r15)
	addl	$-1, %ebx
	jne	.LBB14_28
	.p2align	4, 0x90
.LBB14_29:                              #   Parent Loop BB14_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_37 Depth 3
                                        #       Child Loop BB14_71 Depth 3
                                        #       Child Loop BB14_69 Depth 3
	cmpl	$0, 52(%r15)
	leaq	-80(%rbp), %rbx
	je	.LBB14_30
# %bb.31:                               #   in Loop: Header=BB14_29 Depth=2
	movq	576(%r15), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_32
# %bb.33:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.34:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-80(%rbp), %rbx
	movq	%rbx, -64(%rbp)
	testq	%rbx, %rbx
	jne	.LBB14_36
	jmp	.LBB14_72
	.p2align	4, 0x90
.LBB14_30:                              #   in Loop: Header=BB14_29 Depth=2
	movq	568(%r15), %rdi
	movq	576(%r15), %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	testq	%rax, %rax
	jne	.LBB14_38
	jmp	.LBB14_1
	.p2align	4, 0x90
.LBB14_32:                              #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB14_72
.LBB14_36:                              #   in Loop: Header=BB14_29 Depth=2
	movq	576(%r15), %rax
	.p2align	4, 0x90
.LBB14_37:                              #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpPrev
	movq	%rax, 576(%r15)
	addq	$-1, %rbx
	jne	.LBB14_37
.LBB14_38:                              #   in Loop: Header=BB14_29 Depth=2
	movq	%rax, 584(%r15)
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_39
# %bb.40:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.41:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-80(%rbp), %r12
	movq	%r12, -64(%rbp)
	jmp	.LBB14_42
	.p2align	4, 0x90
.LBB14_39:                              #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %r12
	leaq	-80(%rbp), %rbx
.LBB14_42:                              #   in Loop: Header=BB14_29 Depth=2
	movq	568(%r15), %rdi
	movq	576(%r15), %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movups	(%rax), %xmm0
	movups	%xmm0, (%r13)
	movq	576(%r15), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_43
# %bb.44:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.45:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_46
	.p2align	4, 0x90
.LBB14_43:                              #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rax
.LBB14_46:                              #   in Loop: Header=BB14_29 Depth=2
	addq	%rax, (%r13)
	movq	568(%r15), %rdi
	movq	576(%r15), %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_47
# %bb.48:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.49:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_50
	.p2align	4, 0x90
.LBB14_47:                              #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rax
.LBB14_50:                              #   in Loop: Header=BB14_29 Depth=2
	addq	%rax, 8(%r13)
	movq	568(%r15), %rdi
	movq	576(%r15), %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	movq	(%r13), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	8(%r13), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	movl	$16, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	testb	$2, %r12b
	je	.LBB14_52
# %bb.51:                               #   in Loop: Header=BB14_29 Depth=2
	movq	24(%r15), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	cmpl	$0, 52(%r15)
	je	.LBB14_58
.LBB14_63:                              #   in Loop: Header=BB14_29 Depth=2
	movl	$16, %edx
	movq	%rbx, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	testb	$1, %r12b
	jne	.LBB14_66
# %bb.64:                               #   in Loop: Header=BB14_29 Depth=2
	testl	%eax, %eax
	jg	.LBB14_66
	jmp	.LBB14_65
	.p2align	4, 0x90
.LBB14_52:                              #   in Loop: Header=BB14_29 Depth=2
	movq	576(%r15), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB14_53
# %bb.54:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	-128(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_15
# %bb.55:                               #   in Loop: Header=BB14_29 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_56
.LBB14_53:                              #   in Loop: Header=BB14_29 Depth=2
	movq	-64(%rbp), %rax
.LBB14_56:                              #   in Loop: Header=BB14_29 Depth=2
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	568(%r15), %rdi
	movq	576(%r15), %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	cmpl	$0, 52(%r15)
	jne	.LBB14_63
.LBB14_58:                              #   in Loop: Header=BB14_29 Depth=2
	movl	$16, %edx
	movq	%rbx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	testb	$1, %r12b
	jne	.LBB14_66
# %bb.59:                               #   in Loop: Header=BB14_29 Depth=2
	testl	%eax, %eax
	jns	.LBB14_60
	.p2align	4, 0x90
.LBB14_66:                              #   in Loop: Header=BB14_29 Depth=2
	cmpl	$0, 52(%r15)
	je	.LBB14_67
# %bb.70:                               #   in Loop: Header=BB14_29 Depth=2
	andl	$2, %r12d
	shrl	%r12d
	xorq	$5, %r12
	movq	576(%r15), %rax
	.p2align	4, 0x90
.LBB14_71:                              #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpPrev
	movq	%rax, 576(%r15)
	addq	$-1, %r12
	jne	.LBB14_71
	jmp	.LBB14_29
	.p2align	4, 0x90
.LBB14_67:                              #   in Loop: Header=BB14_29 Depth=2
	testb	$2, %r12b
	sete	%cl
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	shlq	%cl, %rbx
	testq	%rbx, %rbx
	jle	.LBB14_29
# %bb.68:                               #   in Loop: Header=BB14_29 Depth=2
	movq	576(%r15), %rax
	.p2align	4, 0x90
.LBB14_69:                              #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	568(%r15), %rdi
	movq	%rax, %rsi
	callq	lpNext
	movq	%rax, 576(%r15)
	addq	$-1, %rbx
	jne	.LBB14_69
	jmp	.LBB14_29
	.p2align	4, 0x90
.LBB14_72:                              #   in Loop: Header=BB14_1 Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, 568(%r15)
	jmp	.LBB14_1
.LBB14_65:
	leaq	-80(%rbp), %rdi
	movl	$16, %edx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jns	.LBB14_61
	jmp	.LBB14_6
.LBB14_60:
	leaq	-80(%rbp), %rdi
	movl	$16, %edx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jg	.LBB14_6
.LBB14_61:
	movl	%r12d, 48(%r15)
	movl	$1, %eax
	testb	$2, %r12b
	je	.LBB14_6
# %bb.62:
	movq	32(%r15), %rcx
	movq	%rcx, 40(%r15)
.LBB14_6:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_5:
	xorl	%eax, %eax
	jmp	.LBB14_6
.LBB14_15:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
.LBB14_11:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB14_10:
	movl	$.L.str.9, %edi
	movl	$.L.str.1, %esi
	movl	$541, %edx              # imm = 0x21D
	jmp	.LBB14_11
.Lfunc_end14:
	.size	streamIteratorGetID, .Lfunc_end14-streamIteratorGetID
                                        # -- End function
	.globl	streamIteratorGetField  # -- Begin function streamIteratorGetField
	.p2align	4, 0x90
	.type	streamIteratorGetField,@function
streamIteratorGetField:                 # @streamIteratorGetField
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%r8, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testb	$2, 48(%rdi)
	jne	.LBB15_1
# %bb.2:
	movq	576(%rbx), %rdi
	leaq	592(%rbx), %rdx
	movq	%rcx, %rsi
	callq	lpGet
	movq	%rax, (%r12)
	movq	568(%rbx), %rdi
	movq	576(%rbx), %rsi
	callq	lpNext
	movq	%rax, %rdi
	movq	%rax, 576(%rbx)
	jmp	.LBB15_3
.LBB15_1:
	movq	40(%rbx), %rdi
	leaq	592(%rbx), %rdx
	movq	%rcx, %rsi
	callq	lpGet
	movq	%rax, (%r12)
	movq	568(%rbx), %rdi
	movq	40(%rbx), %rsi
	callq	lpNext
	movq	%rax, 40(%rbx)
	movq	576(%rbx), %rdi
.LBB15_3:
	leaq	613(%rbx), %rdx
	movq	%r15, %rsi
	callq	lpGet
	movq	%rax, (%r14)
	movq	568(%rbx), %rdi
	movq	576(%rbx), %rsi
	callq	lpNext
	movq	%rax, 576(%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	streamIteratorGetField, .Lfunc_end15-streamIteratorGetField
                                        # -- End function
	.globl	streamIteratorRemoveEntry # -- Begin function streamIteratorRemoveEntry
	.p2align	4, 0x90
	.type	streamIteratorRemoveEntry,@function
streamIteratorRemoveEntry:              # @streamIteratorRemoveEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	568(%rdi), %r15
	movq	584(%rdi), %rdi
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB16_1
# %bb.2:
	movq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB16_20
# %bb.3:
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB16_4
.LBB16_1:
	movq	-64(%rbp), %rax
.LBB16_4:
	leaq	584(%r12), %rbx
	movslq	%eax, %rdx
	orq	$1, %rdx
	leaq	-64(%rbp), %r13
	movl	$21, %esi
	movq	%r13, %rdi
	callq	ll2string
	movq	(%rbx), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	movq	%rbx, %r9
	callq	lpInsert
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	lpFirst
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB16_5
# %bb.6:
	movq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB16_20
# %bb.7:
	movq	-96(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	cmpq	$1, %rdx
	jne	.LBB16_10
.LBB16_9:
	movq	%r15, %rdi
	callq	lpFree
	movq	(%r12), %rax
	movq	104(%r12), %rsi
	movq	(%rax), %rdi
	movq	120(%r12), %rdx
	xorl	%ecx, %ecx
	callq	raxRemove
	jmp	.LBB16_16
.LBB16_5:
	movq	-64(%rbp), %rdx
	cmpq	$1, %rdx
	je	.LBB16_9
.LBB16_10:
	addq	$-1, %rdx
	leaq	-64(%rbp), %rbx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	-72(%rbp), %rcx
	leaq	-72(%rbp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	callq	lpInsert
	movq	%rax, %r15
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	lpNext
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lpGet
	testq	%rax, %rax
	je	.LBB16_11
# %bb.12:
	movq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB16_20
# %bb.13:
	movq	-96(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB16_14
.LBB16_11:
	movq	-64(%rbp), %rdx
.LBB16_14:
	addq	$1, %rdx
	leaq	-64(%rbp), %rbx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	-72(%rbp), %rcx
	leaq	-72(%rbp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	$2, %r8d
	callq	lpInsert
	cmpq	%rax, 568(%r12)
	je	.LBB16_16
# %bb.15:
	movq	(%r12), %rcx
	movq	104(%r12), %rsi
	movq	(%rcx), %rdi
	movq	120(%r12), %rdx
	movq	%rax, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB16_16:
	movq	(%r12), %rax
	addq	$-1, 8(%rax)
	cmpl	$0, 52(%r12)
	je	.LBB16_18
# %bb.17:
	leaq	56(%r12), %rsi
	leaq	-64(%rbp), %rdi
	movl	$16, %edx
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, -88(%rbp)
	movups	(%r14), %xmm0
	movaps	%xmm0, -112(%rbp)
	jmp	.LBB16_19
.LBB16_18:
	movups	(%r14), %xmm0
	movaps	%xmm0, -96(%rbp)
	leaq	72(%r12), %rsi
	leaq	-64(%rbp), %rdi
	movl	$16, %edx
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, -104(%rbp)
.LBB16_19:
	leaq	88(%r12), %rdi
	callq	raxStop
	movq	(%r12), %rsi
	movl	52(%r12), %r8d
	leaq	-96(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	%r12, %rdi
	callq	streamIteratorStart
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end16:
	.size	streamIteratorRemoveEntry, .Lfunc_end16-streamIteratorRemoveEntry
                                        # -- End function
	.globl	streamIteratorStop      # -- Begin function streamIteratorStop
	.p2align	4, 0x90
	.type	streamIteratorStop,@function
streamIteratorStop:                     # @streamIteratorStop
# %bb.0:
	addq	$88, %rdi
	jmp	raxStop                 # TAILCALL
.Lfunc_end17:
	.size	streamIteratorStop, .Lfunc_end17-streamIteratorStop
                                        # -- End function
	.globl	streamDeleteItem        # -- Begin function streamDeleteItem
	.p2align	4, 0x90
	.type	streamDeleteItem,@function
streamDeleteItem:                       # @streamDeleteItem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              # imm = 0x2A0
	movq	%rsi, %rcx
	movq	%rdi, %rsi
	leaq	-680(%rbp), %r14
	xorl	%ebx, %ebx
	movq	%r14, %rdi
	movq	%rcx, %rdx
	xorl	%r8d, %r8d
	callq	streamIteratorStart
	leaq	-40(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	%r14, %rdi
	callq	streamIteratorGetID
	testl	%eax, %eax
	je	.LBB18_2
# %bb.1:
	leaq	-680(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	streamIteratorRemoveEntry
	movl	$1, %ebx
.LBB18_2:
	leaq	-592(%rbp), %rdi
	callq	raxStop
	movl	%ebx, %eax
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	streamDeleteItem, .Lfunc_end18-streamDeleteItem
                                        # -- End function
	.globl	addReplyStreamID        # -- Begin function addReplyStreamID
	.p2align	4, 0x90
	.type	addReplyStreamID,@function
addReplyStreamID:                       # @addReplyStreamID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	sdsempty
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r14, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyBulkSds         # TAILCALL
.Lfunc_end19:
	.size	addReplyStreamID, .Lfunc_end19-addReplyStreamID
                                        # -- End function
	.globl	createObjectFromStreamID # -- Begin function createObjectFromStreamID
	.p2align	4, 0x90
	.type	createObjectFromStreamID,@function
createObjectFromStreamID:               # @createObjectFromStreamID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	sdsempty
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	xorl	%edi, %edi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	createObject            # TAILCALL
.Lfunc_end20:
	.size	createObjectFromStreamID, .Lfunc_end20-createObjectFromStreamID
                                        # -- End function
	.globl	streamPropagateXCLAIM   # -- Begin function streamPropagateXCLAIM
	.p2align	4, 0x90
	.type	streamPropagateXCLAIM,@function
streamPropagateXCLAIM:                  # @streamPropagateXCLAIM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%r9, %r13
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.11, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, -160(%rbp)
	movq	%r14, -152(%rbp)
	movq	%rbx, -144(%rbp)
	movq	16(%r13), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_3:
	shrq	$3, %rsi
	jmp	.LBB21_8
.LBB21_1:
	xorl	%esi, %esi
	jmp	.LBB21_8
.LBB21_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB21_8
.LBB21_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB21_8
.LBB21_6:
	movl	-9(%rdi), %esi
	jmp	.LBB21_8
.LBB21_7:
	movq	-17(%rdi), %rsi
.LBB21_8:
	callq	createStringObject
	movq	%rax, -136(%rbp)
	xorl	%edi, %edi
	callq	createStringObjectFromLongLong
	movq	%rax, -128(%rbp)
	movq	%r12, -120(%rbp)
	movl	$.L.str.12, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, -112(%rbp)
	movq	(%r13), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, -104(%rbp)
	movl	$.L.str.13, %edi
	movl	$10, %esi
	callq	createStringObject
	movq	%rax, -96(%rbp)
	movq	8(%r13), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, -88(%rbp)
	movl	$.L.str.14, %edi
	movl	$5, %esi
	callq	createStringObject
	movq	%rax, -80(%rbp)
	movl	$.L.str.15, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, -72(%rbp)
	movl	$.L.str.16, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, -64(%rbp)
	callq	sdsempty
	movq	(%r15), %rdx
	movq	8(%r15), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, -56(%rbp)
	movq	server+984(%rip), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movl	40(%rax), %esi
	leaq	-160(%rbp), %rdx
	movl	$14, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	-160(%rbp), %rdi
	callq	decrRefCount
	movq	-136(%rbp), %rdi
	callq	decrRefCount
	movq	-128(%rbp), %rdi
	callq	decrRefCount
	movq	-112(%rbp), %rdi
	callq	decrRefCount
	movq	-104(%rbp), %rdi
	callq	decrRefCount
	movq	-96(%rbp), %rdi
	callq	decrRefCount
	movq	-88(%rbp), %rdi
	callq	decrRefCount
	movq	-80(%rbp), %rdi
	callq	decrRefCount
	movq	-72(%rbp), %rdi
	callq	decrRefCount
	movq	-64(%rbp), %rdi
	callq	decrRefCount
	movq	-56(%rbp), %rdi
	callq	decrRefCount
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	streamPropagateXCLAIM, .Lfunc_end21-streamPropagateXCLAIM
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_3
	.quad	.LBB21_4
	.quad	.LBB21_5
	.quad	.LBB21_6
	.quad	.LBB21_7
                                        # -- End function
	.text
	.globl	streamPropagateGroupID  # -- Begin function streamPropagateGroupID
	.p2align	4, 0x90
	.type	streamPropagateGroupID,@function
streamPropagateGroupID:                 # @streamPropagateGroupID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$.L.str.17, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, -80(%rbp)
	movl	$.L.str.18, %edi
	movl	$5, %esi
	callq	createStringObject
	movq	%rax, -72(%rbp)
	movq	%r12, -64(%rbp)
	movq	%r15, -56(%rbp)
	callq	sdsempty
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, -48(%rbp)
	movq	server+992(%rip), %rdi
	movq	16(%r14), %rax
	movl	40(%rax), %esi
	leaq	-80(%rbp), %rdx
	movl	$5, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	-80(%rbp), %rdi
	callq	decrRefCount
	movq	-72(%rbp), %rdi
	callq	decrRefCount
	movq	-48(%rbp), %rdi
	callq	decrRefCount
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	streamPropagateGroupID, .Lfunc_end22-streamPropagateGroupID
                                        # -- End function
	.globl	streamReplyWithRange    # -- Begin function streamReplyWithRange
	.p2align	4, 0x90
	.type	streamReplyWithRange,@function
streamReplyWithRange:                   # @streamReplyWithRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$792, %rsp              # imm = 0x318
	movl	%r9d, %r12d
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	32(%rbp), %eax
	movq	16(%rbp), %r15
	testb	$4, %al
	je	.LBB23_3
# %bb.1:
	testq	%r15, %r15
	je	.LBB23_3
# %bb.2:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	24(%rbp), %r9
	callq	streamReplyWithRangeFromConsumerPEL
	jmp	.LBB23_35
.LBB23_3:
	testb	$2, %al
	movq	%r8, -104(%rbp)         # 8-byte Spill
	jne	.LBB23_4
# %bb.5:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	addDeferredMultiBulkLength
	jmp	.LBB23_6
.LBB23_4:
	xorl	%eax, %eax
.LBB23_6:
	movq	%rax, -120(%rbp)        # 8-byte Spill
	testq	%r15, %r15
	setne	%r15b
	leaq	-832(%rbp), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rdi, %rbx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	callq	streamIteratorStart
	movl	32(%rbp), %eax
	testb	$1, %al
	sete	%al
	andb	%r15b, %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	leaq	-96(%rbp), %r14
	leaq	-136(%rbp), %r13
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
	movq	-64(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB23_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_15 Depth 2
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	leaq	-152(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	callq	streamIteratorGetID
	testl	%eax, %eax
	je	.LBB23_32
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=1
	movq	-152(%rbp), %rbx
	movq	16(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB23_13
# %bb.9:                                #   in Loop: Header=BB23_7 Depth=1
	cmpq	(%rcx), %rbx
	jbe	.LBB23_10
.LBB23_12:                              #   in Loop: Header=BB23_7 Depth=1
	movups	-152(%rbp), %xmm0
	movups	%xmm0, (%rcx)
	movl	$1, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB23_13
	.p2align	4, 0x90
.LBB23_10:                              #   in Loop: Header=BB23_7 Depth=1
	jb	.LBB23_13
# %bb.11:                               #   in Loop: Header=BB23_7 Depth=1
	movq	-144(%rbp), %rax
	cmpq	8(%rcx), %rax
	ja	.LBB23_12
	.p2align	4, 0x90
.LBB23_13:                              #   in Loop: Header=BB23_7 Depth=1
	movl	$2, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	callq	sdsempty
	movq	-144(%rbp), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movq	-112(%rbp), %rbx
	leaq	(%rbx,%rbx), %rsi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movq	%rbx, %rax
	subq	$1, %rax
	movq	%rax, -112(%rbp)
	jb	.LBB23_17
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB23_7 Depth=1
	leaq	-832(%rbp), %r14
	leaq	-192(%rbp), %r12
	.p2align	4, 0x90
.LBB23_15:                              #   Parent Loop BB23_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	leaq	-96(%rbp), %rsi
	movq	%r12, %rdx
	leaq	-168(%rbp), %rcx
	movq	%r13, %r8
	callq	streamIteratorGetField
	movq	-96(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	movq	-192(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	addq	$-1, %rbx
	jne	.LBB23_15
# %bb.16:                               #   in Loop: Header=BB23_7 Depth=1
	movq	$-1, -112(%rbp)
	leaq	-96(%rbp), %r14
.LBB23_17:                              #   in Loop: Header=BB23_7 Depth=1
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB23_27
# %bb.18:                               #   in Loop: Header=BB23_7 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	intrev64
	movq	%rax, -96(%rbp)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	callq	intrev64
	movq	%rax, -88(%rbp)
	movl	$16, %edx
	leaq	-192(%rbp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	callq	mstime
	movq	%rax, (%r15)
	movq	$1, 8(%r15)
	movq	24(%rbp), %rbx
	movq	%rbx, 16(%r15)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	$16, %edx
	movq	%r13, %rsi
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	callq	raxTryInsert
	movl	%eax, %r14d
	movq	16(%rbx), %rdi
	movl	$16, %edx
	movq	%r13, %rsi
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	callq	raxTryInsert
	testl	%r14d, %r14d
	je	.LBB23_19
# %bb.21:                               #   in Loop: Header=BB23_7 Depth=1
	cmpl	$1, %r14d
	movq	40(%rbp), %rbx
	jne	.LBB23_22
# %bb.23:                               #   in Loop: Header=BB23_7 Depth=1
	testl	%eax, %eax
	leaq	-96(%rbp), %r14
	jne	.LBB23_24
	jmp	.LBB23_37
	.p2align	4, 0x90
.LBB23_27:                              #   in Loop: Header=BB23_7 Depth=1
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	movq	40(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	je	.LBB23_29
# %bb.28:                               #   in Loop: Header=BB23_7 Depth=1
	movq	(%rax), %rsi
	movq	8(%rax), %rcx
	movq	%r15, %rdi
	movq	16(%rbp), %rdx
	callq	streamPropagateGroupID
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB23_29
.LBB23_19:                              #   in Loop: Header=BB23_7 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movq	16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	$16, %edx
	movq	%r13, %rsi
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB23_36
# %bb.20:                               #   in Loop: Header=BB23_7 Depth=1
	movq	%rax, %r15
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	movl	$16, %edx
	movq	%r13, %rsi
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	24(%rbp), %rbx
	movq	%rbx, 16(%r15)
	callq	mstime
	movq	%rax, (%r15)
	movq	$1, 8(%r15)
	movq	16(%rbx), %rdi
	movl	$16, %edx
	movq	%r13, %rsi
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movq	40(%rbp), %rbx
	leaq	-96(%rbp), %r14
.LBB23_24:                              #   in Loop: Header=BB23_7 Depth=1
	testq	%rbx, %rbx
	je	.LBB23_26
.LBB23_25:                              #   in Loop: Header=BB23_7 Depth=1
	callq	sdsempty
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatfmt
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r14
	movq	(%rbx), %rsi
	movq	8(%rbx), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	16(%rbp), %rdx
	movq	%rax, %r8
	movq	%r15, %r9
	callq	streamPropagateXCLAIM
	movq	%r14, %rdi
	leaq	-96(%rbp), %r14
	callq	decrRefCount
.LBB23_26:                              #   in Loop: Header=BB23_7 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	-136(%rbp), %r13
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB23_29:                              #   in Loop: Header=BB23_7 Depth=1
	addq	$1, %rcx
	testq	%rdx, %rdx
	leaq	-832(%rbp), %rbx
	je	.LBB23_7
# %bb.30:                               #   in Loop: Header=BB23_7 Depth=1
	cmpq	%rdx, %rcx
	jne	.LBB23_7
	jmp	.LBB23_31
.LBB23_22:                              #   in Loop: Header=BB23_7 Depth=1
	leaq	-96(%rbp), %r14
	testq	%rbx, %rbx
	jne	.LBB23_25
	jmp	.LBB23_26
.LBB23_31:
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB23_32:
	leaq	-744(%rbp), %rdi
	callq	raxStop
	movq	-120(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB23_33
# %bb.34:
	movq	%r15, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	setDeferredMultiBulkLength
	movq	%rbx, %rax
	jmp	.LBB23_35
.LBB23_33:
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB23_35:
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_37:
	movl	$.L.str.1, %edi
	movl	$.L.str.20, %edx
	movl	$978, %esi              # imm = 0x3D2
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB23_36:
	movl	$.L.str.19, %edi
	movl	$.L.str.1, %esi
	movl	$969, %edx              # imm = 0x3C9
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end23:
	.size	streamReplyWithRange, .Lfunc_end23-streamReplyWithRange
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function streamReplyWithRangeFromConsumerPEL
.LCPI24_0:
	.zero	16
	.text
	.globl	streamReplyWithRangeFromConsumerPEL
	.p2align	4, 0x90
	.type	streamReplyWithRangeFromConsumerPEL,@function
streamReplyWithRangeFromConsumerPEL:    # @streamReplyWithRangeFromConsumerPEL
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$616, %rsp              # imm = 0x268
	movq	%r9, %r12
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	(%rdx), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	8(%r13), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	leaq	-128(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movl	$16, %edx
	callq	memcpy
	testq	%r14, %r14
	je	.LBB24_2
# %bb.1:
	movq	(%r14), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	8(%r14), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	leaq	-144(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movl	$16, %edx
	callq	memcpy
.LBB24_2:
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	16(%r12), %rsi
	leaq	-624(%rbp), %r12
	movq	%r12, %rdi
	callq	raxStart
	leaq	-128(%rbp), %rdx
	movl	$.L.str.6, %esi
	movl	$16, %ecx
	movq	%r12, %rdi
	callq	raxSeek
	movq	%r12, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB24_3
# %bb.4:
	movq	%rbx, %r12
	addq	$-1, %r12
	leaq	-64(%rbp), %rbx
	xorl	%r13d, %r13d
	movq	%r15, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB24_7
# %bb.6:                                #   in Loop: Header=BB24_5 Depth=1
	movq	-608(%rbp), %rdi
	movq	-592(%rbp), %rdx
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	jg	.LBB24_12
.LBB24_7:                               #   in Loop: Header=BB24_5 Depth=1
	movq	-608(%rbp), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, -96(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	$0, 24(%rsp)
	movl	$2, 16(%rsp)
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	leaq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	xorl	%r9d, %r9d
	callq	streamReplyWithRange
	testq	%rax, %rax
	je	.LBB24_8
# %bb.9:                                #   in Loop: Header=BB24_5 Depth=1
	movq	-600(%rbp), %rbx
	callq	mstime
	movq	%rax, (%rbx)
	addq	$1, 8(%rbx)
	jmp	.LBB24_10
	.p2align	4, 0x90
.LBB24_8:                               #   in Loop: Header=BB24_5 Depth=1
	movl	$2, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movq	-608(%rbp), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%r14, %r15
	movq	%rax, %r14
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%r12, %rbx
	movq	%rax, %r12
	callq	sdsempty
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	movq	%r15, %r14
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r12, %rcx
	movq	%rbx, %r12
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movq	shared+88(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB24_10:                              #   in Loop: Header=BB24_5 Depth=1
	addq	$1, %r13
	leaq	-624(%rbp), %rdi
	callq	raxNext
	cmpq	%r13, %r12
	jb	.LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_5 Depth=1
	testl	%eax, %eax
	leaq	-64(%rbp), %rbx
	jne	.LBB24_5
	jmp	.LBB24_12
.LBB24_3:
	xorl	%r13d, %r13d
.LBB24_12:
	leaq	-624(%rbp), %rdi
	callq	raxStop
	movq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	callq	setDeferredMultiBulkLength
	movq	%r13, %rax
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	streamReplyWithRangeFromConsumerPEL, .Lfunc_end24-streamReplyWithRangeFromConsumerPEL
                                        # -- End function
	.globl	streamCreateNACK        # -- Begin function streamCreateNACK
	.p2align	4, 0x90
	.type	streamCreateNACK,@function
streamCreateNACK:                       # @streamCreateNACK
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	callq	mstime
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	movq	%r14, 16(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	streamCreateNACK, .Lfunc_end25-streamCreateNACK
                                        # -- End function
	.globl	streamFreeNACK          # -- Begin function streamFreeNACK
	.p2align	4, 0x90
	.type	streamFreeNACK,@function
streamFreeNACK:                         # @streamFreeNACK
# %bb.0:
	jmp	zfree                   # TAILCALL
.Lfunc_end26:
	.size	streamFreeNACK, .Lfunc_end26-streamFreeNACK
                                        # -- End function
	.globl	streamTypeLookupWriteOrCreate # -- Begin function streamTypeLookupWriteOrCreate
	.p2align	4, 0x90
	.type	streamTypeLookupWriteOrCreate,@function
streamTypeLookupWriteOrCreate:          # @streamTypeLookupWriteOrCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB27_1
# %bb.2:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$6, %eax
	je	.LBB27_4
# %bb.3:
	movq	shared+112(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	xorl	%ebx, %ebx
	jmp	.LBB27_4
.LBB27_1:
	callq	createStreamObject
	movq	%rax, %rbx
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dbAdd
.LBB27_4:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	streamTypeLookupWriteOrCreate, .Lfunc_end27-streamTypeLookupWriteOrCreate
                                        # -- End function
	.globl	string2ull              # -- Begin function string2ull
	.p2align	4, 0x90
	.type	string2ull,@function
string2ull:                             # @string2ull
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	strlen
	leaq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB28_4
# %bb.1:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	js	.LBB28_2
# %bb.3:
	movq	%rax, (%r14)
	movl	$1, %r14d
	jmp	.LBB28_8
.LBB28_4:
	callq	__errno
	movl	$0, (%rax)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, (%r14)
	callq	__errno
	xorl	%r14d, %r14d
	cmpl	$22, (%rax)
	je	.LBB28_8
# %bb.5:
	callq	__errno
	cmpl	$34, (%rax)
	je	.LBB28_8
# %bb.6:
	cmpb	$0, (%rbx)
	je	.LBB28_8
# %bb.7:
	movq	-24(%rbp), %rax
	xorl	%r14d, %r14d
	cmpb	$0, (%rax)
	sete	%r14b
	jmp	.LBB28_8
.LBB28_2:
	xorl	%r14d, %r14d
.LBB28_8:
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	string2ull, .Lfunc_end28-string2ull
                                        # -- End function
	.globl	streamGenericParseIDOrReply # -- Begin function streamGenericParseIDOrReply
	.p2align	4, 0x90
	.type	streamGenericParseIDOrReply,@function
streamGenericParseIDOrReply:            # @streamGenericParseIDOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	movl	%r8d, %ebx
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rdi, %r12
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB29_3
# %bb.1:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_2:
	shrq	$3, %rdx
	jmp	.LBB29_15
.LBB29_4:
	movzbl	-3(%rsi), %eax
	cmpq	$127, %rax
	jbe	.LBB29_8
	jmp	.LBB29_30
.LBB29_5:
	movzwl	-5(%rsi), %eax
	cmpq	$127, %rax
	jbe	.LBB29_8
	jmp	.LBB29_30
.LBB29_6:
	movl	-9(%rsi), %eax
	cmpq	$127, %rax
	jbe	.LBB29_8
	jmp	.LBB29_30
.LBB29_7:
	movq	-17(%rsi), %rax
	cmpq	$127, %rax
	ja	.LBB29_30
.LBB29_8:
	andb	$7, %dl
	addb	$-1, %dl
	cmpb	$3, %dl
	ja	.LBB29_3
# %bb.9:
	movzbl	%dl, %eax
	jmpq	*.LJTI29_1(,%rax,8)
.LBB29_10:
	movzbl	-3(%rsi), %edx
	jmp	.LBB29_15
.LBB29_3:
	xorl	%edx, %edx
	jmp	.LBB29_15
.LBB29_12:
	movzwl	-5(%rsi), %edx
	jmp	.LBB29_15
.LBB29_13:
	movl	-9(%rsi), %edx
	jmp	.LBB29_15
.LBB29_14:
	movq	-17(%rsi), %rdx
.LBB29_15:
	addq	$1, %rdx
	leaq	-176(%rbp), %rdi
	callq	memcpy
	movb	-176(%rbp), %al
	testl	%ebx, %ebx
	je	.LBB29_19
# %bb.16:
	cmpb	$45, %al
	je	.LBB29_18
# %bb.17:
	cmpb	$43, %al
	jne	.LBB29_24
.LBB29_18:
	cmpb	$0, -175(%rbp)
	je	.LBB29_30
.LBB29_19:
	cmpb	$43, %al
	je	.LBB29_23
# %bb.20:
	cmpb	$45, %al
	jne	.LBB29_24
# %bb.21:
	cmpb	$0, -175(%rbp)
	jne	.LBB29_24
# %bb.22:
	pxor	%xmm0, %xmm0
	jmp	.LBB29_35
.LBB29_23:
	cmpb	$0, -175(%rbp)
	je	.LBB29_34
.LBB29_24:
	leaq	-176(%rbp), %rdi
	movl	$45, %esi
	callq	strchr
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB29_26
# %bb.25:
	movb	$0, (%rbx)
.LBB29_26:
	leaq	-176(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	string2ull
	testl	%eax, %eax
	je	.LBB29_30
# %bb.27:
	testq	%rbx, %rbx
	je	.LBB29_32
# %bb.28:
	addq	$1, %rbx
	leaq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	string2ull
	testl	%eax, %eax
	je	.LBB29_30
# %bb.29:
	movq	-40(%rbp), %r15
	jmp	.LBB29_33
.LBB29_30:
	movl	$-1, %ebx
	testq	%r12, %r12
	je	.LBB29_37
# %bb.31:
	movl	$.L.str.21, %esi
	movq	%r12, %rdi
	callq	addReplyError
	jmp	.LBB29_37
.LBB29_32:
	movq	%r15, -40(%rbp)
.LBB29_33:
	movq	-48(%rbp), %rax
	movq	%rax, (%r14)
	movq	%r15, 8(%r14)
	jmp	.LBB29_36
.LBB29_34:
	pcmpeqd	%xmm0, %xmm0
.LBB29_35:
	movdqu	%xmm0, (%r14)
.LBB29_36:
	xorl	%ebx, %ebx
.LBB29_37:
	movl	%ebx, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	streamGenericParseIDOrReply, .Lfunc_end29-streamGenericParseIDOrReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI29_0:
	.quad	.LBB29_2
	.quad	.LBB29_4
	.quad	.LBB29_5
	.quad	.LBB29_6
	.quad	.LBB29_7
.LJTI29_1:
	.quad	.LBB29_10
	.quad	.LBB29_12
	.quad	.LBB29_13
	.quad	.LBB29_14
                                        # -- End function
	.text
	.globl	streamParseIDOrReply    # -- Begin function streamParseIDOrReply
	.p2align	4, 0x90
	.type	streamParseIDOrReply,@function
streamParseIDOrReply:                   # @streamParseIDOrReply
# %bb.0:
	xorl	%r8d, %r8d
	jmp	streamGenericParseIDOrReply # TAILCALL
.Lfunc_end30:
	.size	streamParseIDOrReply, .Lfunc_end30-streamParseIDOrReply
                                        # -- End function
	.globl	streamParseStrictIDOrReply # -- Begin function streamParseStrictIDOrReply
	.p2align	4, 0x90
	.type	streamParseStrictIDOrReply,@function
streamParseStrictIDOrReply:             # @streamParseStrictIDOrReply
# %bb.0:
	movl	$1, %r8d
	jmp	streamGenericParseIDOrReply # TAILCALL
.Lfunc_end31:
	.size	streamParseStrictIDOrReply, .Lfunc_end31-streamParseStrictIDOrReply
                                        # -- End function
	.globl	streamRewriteApproxMaxlen # -- Begin function streamRewriteApproxMaxlen
	.p2align	4, 0x90
	.type	streamRewriteApproxMaxlen,@function
streamRewriteApproxMaxlen:              # @streamRewriteApproxMaxlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movq	%rdi, %r14
	movq	8(%rsi), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r15
	movl	$.L.str.22, %edi
	movl	$1, %esi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	rewriteClientCommandArgument
	leal	-1(%r12), %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	rewriteClientCommandArgument
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	decrRefCount            # TAILCALL
.Lfunc_end32:
	.size	streamRewriteApproxMaxlen, .Lfunc_end32-streamRewriteApproxMaxlen
                                        # -- End function
	.globl	xaddCommand             # -- Begin function xaddCommand
	.p2align	4, 0x90
	.type	xaddCommand,@function
xaddCommand:                            # @xaddCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	$-1, -72(%rbp)
	movl	64(%rdi), %ebx
	cmpl	$3, %ebx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jl	.LBB33_23
# %bb.1:
	movq	%rdi, %r12
	movl	$2, %r15d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB33_3
	.p2align	4, 0x90
.LBB33_2:                               #   in Loop: Header=BB33_3 Depth=1
	addl	$1, %r15d
	movl	64(%r12), %ebx
	cmpl	%ebx, %r15d
	jge	.LBB33_25
.LBB33_3:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %r12
	movslq	%r15d, %r14
	movq	(%r12,%r14,8), %r13
	movq	8(%r13), %rdi
	cmpb	$42, (%rdi)
	jne	.LBB33_5
# %bb.4:                                #   in Loop: Header=BB33_3 Depth=1
	cmpb	$0, 1(%rdi)
	je	.LBB33_25
.LBB33_5:                               #   in Loop: Header=BB33_3 Depth=1
	movl	%r15d, %eax
	notl	%eax
	addl	%eax, %ebx
	movl	$.L.str.23, %esi
	callq	strcasecmp
	testl	%ebx, %ebx
	je	.LBB33_13
# %bb.6:                                #   in Loop: Header=BB33_3 Depth=1
	testl	%eax, %eax
	jne	.LBB33_13
# %bb.7:                                #   in Loop: Header=BB33_3 Depth=1
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	cmpl	$2, %ebx
	jl	.LBB33_20
# %bb.8:                                #   in Loop: Header=BB33_3 Depth=1
	leal	1(%r15), %eax
	movq	8(%r12,%r14,8), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpb	$61, %dl
	je	.LBB33_17
# %bb.9:                                #   in Loop: Header=BB33_3 Depth=1
	cmpb	$126, %dl
	jne	.LBB33_20
# %bb.10:                               #   in Loop: Header=BB33_3 Depth=1
	xorl	%edx, %edx
	cmpb	$0, 1(%rcx)
	sete	%cl
	je	.LBB33_12
# %bb.11:                               #   in Loop: Header=BB33_3 Depth=1
	movl	%r15d, %eax
.LBB33_12:                              #   in Loop: Header=BB33_3 Depth=1
	movb	%cl, %dl
	movl	%edx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB33_19
	.p2align	4, 0x90
.LBB33_13:                              #   in Loop: Header=BB33_3 Depth=1
	movl	$1, %r14d
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	sete	%al
	je	.LBB33_15
# %bb.14:                               #   in Loop: Header=BB33_3 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %r14d
.LBB33_15:                              #   in Loop: Header=BB33_3 Depth=1
	incb	%al
	jne	.LBB33_43
# %bb.16:                               #   in Loop: Header=BB33_3 Depth=1
	movl	%r14d, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB33_2
.LBB33_17:                              #   in Loop: Header=BB33_3 Depth=1
	cmpb	$0, 1(%rcx)
	je	.LBB33_19
# %bb.18:                               #   in Loop: Header=BB33_3 Depth=1
	movl	%r15d, %eax
.LBB33_19:                              #   in Loop: Header=BB33_3 Depth=1
	movl	%eax, %r15d
.LBB33_20:                              #   in Loop: Header=BB33_3 Depth=1
	movslq	%r15d, %rax
	movq	8(%r12,%rax,8), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-72(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB33_33
# %bb.21:                               #   in Loop: Header=BB33_3 Depth=1
	cmpq	$0, -72(%rbp)
	js	.LBB33_45
# %bb.22:                               #   in Loop: Header=BB33_3 Depth=1
	addl	$1, %r15d
	movl	%r15d, %eax
	movl	%r15d, -56(%rbp)        # 4-byte Spill
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB33_2
.LBB33_23:
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	movl	$2, %r15d
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
.LBB33_24:
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB33_25:
	leal	1(%r15), %r12d
	subl	%r12d, %ebx
	cmpl	$2, %ebx
	jl	.LBB33_30
# %bb.26:
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	andl	$-2, %eax
	subl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB33_30
# %bb.27:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %r14
	movq	%r14, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB33_34
# %bb.28:
	movq	%rax, %r13
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$6, %eax
	je	.LBB33_35
# %bb.29:
	movq	shared+112(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB33_33
.LBB33_30:
	movl	$.L.str.25, %esi
.LBB33_31:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB33_32:
	callq	addReplyError
.LBB33_33:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB33_34:
	callq	createStreamObject
	movq	%rax, %r13
	movq	16(%rbx), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	testq	%r13, %r13
	je	.LBB33_33
.LBB33_35:
	movslq	%r12d, %rsi
	shlq	$3, %rsi
	movq	-48(%rbp), %r14         # 8-byte Reload
	addq	72(%r14), %rsi
	movq	8(%r13), %r13
	movl	64(%r14), %eax
	subl	%r12d, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rdx
	xorl	%r8d, %r8d
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	leaq	-88(%rbp), %rcx
	cmovneq	%rcx, %r8
	movq	%r13, %rdi
	callq	streamAppendItem
	cmpl	$-1, %eax
	je	.LBB33_46
# %bb.36:
	callq	sdsempty
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.27, %esi
	movl	$1024, %edi             # imm = 0x400
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movq	-72(%rbp), %rsi
	testq	%rsi, %rsi
	js	.LBB33_41
# %bb.37:
	movq	%r13, %rdi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	streamTrimByLength
	testq	%rax, %rax
	je	.LBB33_39
# %bb.38:
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.28, %esi
	movl	$1024, %edi             # imm = 0x400
	callq	notifyKeyspaceEvent
.LBB33_39:
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB33_41
# %bb.40:
	movq	8(%r13), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r13
	movl	$.L.str.22, %edi
	movl	$1, %esi
	callq	createStringObject
	movq	%rax, %r12
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-56(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	movq	%r13, %rdx
	callq	rewriteClientCommandArgument
	addl	$-1, %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	rewriteClientCommandArgument
	movq	%r12, %rdi
	movq	-48(%rbp), %r14         # 8-byte Reload
	callq	decrRefCount
	movq	%r13, %rdi
	callq	decrRefCount
.LBB33_41:
	callq	sdsempty
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	callq	rewriteClientCommandArgument
	movq	%rbx, %rdi
	callq	decrRefCount
	cmpl	$0, server+2756(%rip)
	je	.LBB33_33
# %bb.42:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	72(%rax), %rax
	movq	8(%rax), %rsi
	callq	signalKeyAsReady
	jmp	.LBB33_33
.LBB33_43:
	cmpb	$2, %al
	jne	.LBB33_33
# %bb.44:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	64(%rax), %ebx
	movl	%r14d, %eax
	jmp	.LBB33_24
.LBB33_45:
	movl	$.L.str.24, %esi
	jmp	.LBB33_31
.LBB33_46:
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	jmp	.LBB33_32
.Lfunc_end33:
	.size	xaddCommand, .Lfunc_end33-xaddCommand
                                        # -- End function
	.globl	xrangeGenericCommand    # -- Begin function xrangeGenericCommand
	.p2align	4, 0x90
	.type	xrangeGenericCommand,@function
xrangeGenericCommand:                   # @xrangeGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %r12
	movq	$-1, -48(%rbp)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%esi, -52(%rbp)         # 4-byte Spill
	testl	%esi, %esi
	sete	%al
	setne	%cl
	movq	72(%rdi), %rdx
	movq	16(%rdx,%rcx,8), %rsi
	movq	16(%rdx,%rax,8), %r15
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	streamGenericParseIDOrReply
	cmpl	$-1, %eax
	je	.LBB34_19
# %bb.1:
	leaq	-72(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	$-1, %rcx
	xorl	%r8d, %r8d
	callq	streamGenericParseIDOrReply
	cmpl	$-1, %eax
	je	.LBB34_19
# %bb.2:
	movl	64(%r12), %r14d
	cmpl	$5, %r14d
	jl	.LBB34_10
# %bb.3:                                # %.preheader
	movl	$4, %ebx
	movl	$-5, %r13d
	jmp	.LBB34_4
	.p2align	4, 0x90
.LBB34_9:                               #   in Loop: Header=BB34_4 Depth=1
	addq	$2, %rbx
	movl	64(%r12), %r14d
	addl	$-2, %r13d
	cmpl	%ebx, %r14d
	jle	.LBB34_10
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	addl	%r13d, %r14d
	movq	72(%r12), %r15
	movq	(%r15,%rbx,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.29, %esi
	callq	strcasecmp
	testl	%r14d, %r14d
	jle	.LBB34_15
# %bb.5:                                #   in Loop: Header=BB34_4 Depth=1
	testl	%eax, %eax
	jne	.LBB34_15
# %bb.6:                                #   in Loop: Header=BB34_4 Depth=1
	movq	8(%r15,%rbx,8), %rsi
	movq	%r12, %rdi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB34_19
# %bb.7:                                #   in Loop: Header=BB34_4 Depth=1
	cmpq	$0, -48(%rbp)
	jns	.LBB34_9
# %bb.8:                                #   in Loop: Header=BB34_4 Depth=1
	movq	$0, -48(%rbp)
	jmp	.LBB34_9
.LBB34_10:
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	movq	%r12, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB34_19
# %bb.11:
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB34_19
# %bb.12:
	movq	8(%r15), %rsi
	movq	-48(%rbp), %r8
	cmpq	$-1, %r8
	je	.LBB34_17
# %bb.13:
	testq	%r8, %r8
	jne	.LBB34_18
# %bb.14:
	movq	shared+88(%rip), %rsi
	jmp	.LBB34_16
.LBB34_15:
	movq	shared+128(%rip), %rsi
.LBB34_16:
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB34_19
.LBB34_17:
	movq	$0, -48(%rbp)
	xorl	%r8d, %r8d
.LBB34_18:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	leaq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%r12, %rdi
	movl	-52(%rbp), %r9d         # 4-byte Reload
	callq	streamReplyWithRange
.LBB34_19:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	xrangeGenericCommand, .Lfunc_end34-xrangeGenericCommand
                                        # -- End function
	.globl	xrangeCommand           # -- Begin function xrangeCommand
	.p2align	4, 0x90
	.type	xrangeCommand,@function
xrangeCommand:                          # @xrangeCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	xrangeGenericCommand    # TAILCALL
.Lfunc_end35:
	.size	xrangeCommand, .Lfunc_end35-xrangeCommand
                                        # -- End function
	.globl	xrevrangeCommand        # -- Begin function xrevrangeCommand
	.p2align	4, 0x90
	.type	xrevrangeCommand,@function
xrevrangeCommand:                       # @xrevrangeCommand
# %bb.0:
	movl	$1, %esi
	jmp	xrangeGenericCommand    # TAILCALL
.Lfunc_end36:
	.size	xrevrangeCommand, .Lfunc_end36-xrevrangeCommand
                                        # -- End function
	.globl	xlenCommand             # -- Begin function xlenCommand
	.p2align	4, 0x90
	.type	xlenCommand,@function
xlenCommand:                            # @xlenCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB37_2
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB37_3
.LBB37_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB37_3:
	movq	8(%r14), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.Lfunc_end37:
	.size	xlenCommand, .Lfunc_end37-xlenCommand
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function xreadCommand
.LCPI38_0:
	.zero	16
.LCPI38_1:
	.zero	16,255
	.text
	.globl	xreadCommand
	.p2align	4, 0x90
	.type	xreadCommand,@function
xreadCommand:                           # @xreadCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	movq	%rdi, %rbx
	movq	$-1, -160(%rbp)
	movq	$0, -104(%rbp)
	movq	72(%rdi), %rsi
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	movzbl	-1(%rax), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB38_3
# %bb.1:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI38_0(,%rcx,8)
.LBB38_2:
	shrq	$3, %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB38_9
.LBB38_3:
	xorl	%eax, %eax
	jmp	.LBB38_8
.LBB38_4:
	movzbl	-3(%rax), %eax
	jmp	.LBB38_8
.LBB38_5:
	movzwl	-5(%rax), %eax
	jmp	.LBB38_8
.LBB38_6:
	movl	-9(%rax), %eax
	jmp	.LBB38_8
.LBB38_7:
	movq	-17(%rax), %rax
.LBB38_8:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB38_9:
	movl	64(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB38_35
# %bb.10:                               # %.preheader
	movl	%eax, %r14d
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movl	$1, %r12d
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB38_11:                              # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	notl	%r13d
	movslq	%r12d, %rbx
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	(%rsi,%rbx,8), %rax
	movq	8(%rax), %r15
	movl	$.L.str.30, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	addl	%r14d, %r13d
	je	.LBB38_15
# %bb.12:                               #   in Loop: Header=BB38_11 Depth=1
	testl	%eax, %eax
	jne	.LBB38_15
# %bb.13:                               #   in Loop: Header=BB38_11 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax,%rbx,8), %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-160(%rbp), %rdx
	movl	$1, %ecx
	callq	getTimeoutFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB38_37
# %bb.14:                               #   in Loop: Header=BB38_11 Depth=1
	addl	$1, %r12d
	jmp	.LBB38_28
	.p2align	4, 0x90
.LBB38_15:                              #   in Loop: Header=BB38_11 Depth=1
	movl	$.L.str.29, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%r13d, %r13d
	je	.LBB38_20
# %bb.16:                               #   in Loop: Header=BB38_11 Depth=1
	testl	%eax, %eax
	jne	.LBB38_20
# %bb.17:                               #   in Loop: Header=BB38_11 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax,%rbx,8), %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-104(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB38_37
# %bb.18:                               #   in Loop: Header=BB38_11 Depth=1
	addl	$1, %r12d
	cmpq	$0, -104(%rbp)
	jns	.LBB38_28
# %bb.19:                               #   in Loop: Header=BB38_11 Depth=1
	movq	$0, -104(%rbp)
	jmp	.LBB38_28
	.p2align	4, 0x90
.LBB38_20:                              #   in Loop: Header=BB38_11 Depth=1
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%r13d, %r13d
	je	.LBB38_22
# %bb.21:                               #   in Loop: Header=BB38_11 Depth=1
	testl	%eax, %eax
	je	.LBB38_30
.LBB38_22:                              #   in Loop: Header=BB38_11 Depth=1
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$2, %r13d
	jl	.LBB38_26
# %bb.23:                               #   in Loop: Header=BB38_11 Depth=1
	testl	%eax, %eax
	jne	.LBB38_26
# %bb.24:                               #   in Loop: Header=BB38_11 Depth=1
	cmpq	$10, -48(%rbp)          # 8-byte Folded Reload
	jne	.LBB38_39
# %bb.25:                               #   in Loop: Header=BB38_11 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx,%rbx,8), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	16(%rcx,%rbx,8), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addl	$2, %ebx
	movl	%ebx, %r12d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB38_28
.LBB38_26:                              #   in Loop: Header=BB38_11 Depth=1
	movl	$.L.str.35, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB38_41
# %bb.27:                               #   in Loop: Header=BB38_11 Depth=1
	movl	$1, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	cmpq	$10, -48(%rbp)          # 8-byte Folded Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB38_42
	.p2align	4, 0x90
.LBB38_28:                              #   in Loop: Header=BB38_11 Depth=1
	addl	$1, %r12d
	movl	64(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.LBB38_35
# %bb.29:                               #   in Loop: Header=BB38_11 Depth=1
	movl	%eax, %r14d
	movq	72(%rbx), %rsi
	jmp	.LBB38_11
.LBB38_30:
	leal	1(%r12), %r13d
	subl	%r13d, %r14d
	movl	%r14d, -76(%rbp)        # 4-byte Spill
	testb	$1, %r14b
	jne	.LBB38_38
# %bb.31:
	testl	%r13d, %r13d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB38_35
# %bb.32:
	cmpq	$10, -48(%rbp)          # 8-byte Folded Reload
	jne	.LBB38_44
# %bb.33:
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	jne	.LBB38_44
# %bb.34:
	movl	$.L.str.37, %esi
	jmp	.LBB38_43
.LBB38_35:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
.LBB38_36:
	callq	addReply
.LBB38_37:
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_38:
	movl	$.L.str.32, %esi
	jmp	.LBB38_40
.LBB38_39:
	movl	$.L.str.34, %esi
.LBB38_40:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	jmp	.LBB38_37
.LBB38_41:
	movq	shared+128(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB38_36
.LBB38_42:
	movl	$.L.str.36, %esi
.LBB38_43:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB38_37
.LBB38_44:
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	movslq	%r15d, %rdi
	cmpl	$18, %eax
	jl	.LBB38_46
# %bb.45:
	movq	%rdi, %r14
	shlq	$4, %rdi
	callq	zmalloc
	jmp	.LBB38_47
.LBB38_46:
	movq	%rdi, %r14
	leaq	-336(%rbp), %rax
.LBB38_47:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB38_49
# %bb.48:
	leaq	(,%r14,8), %rdi
	callq	zmalloc
	movq	%r14, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB38_50
.LBB38_49:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rcx
.LBB38_50:
	movq	%r15, -144(%rbp)        # 8-byte Spill
	leal	(%r15,%r13), %eax
	cmpl	64(%rbx), %eax
	jge	.LBB38_78
# %bb.51:
	leal	(%r12,%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %r15
	shlq	$3, %rcx
	negq	%rcx
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB38_54
.LBB38_52:                              #   in Loop: Header=BB38_54 Depth=1
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	movslq	-64(%rbp), %rdx         # 4-byte Folded Reload
	shlq	$4, %rdx
	addq	-88(%rbp), %rdx         # 8-byte Folded Reload
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB38_115
.LBB38_53:                              #   in Loop: Header=BB38_54 Depth=1
	addq	$1, %r15
	movslq	64(%rbx), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	cmpq	%rax, %r15
	movq	-112(%rbp), %rcx        # 8-byte Reload
	jge	.LBB38_78
.LBB38_54:                              # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %rax
	addq	%rcx, %rax
	movq	(%rax,%r15,8), %rsi
	movq	16(%rbx), %rdi
	movq	%rsi, %r14
	callq	lookupKeyRead
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB38_56
# %bb.55:                               #   in Loop: Header=BB38_54 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB38_115
.LBB38_56:                              #   in Loop: Header=BB38_54 Depth=1
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB38_70
# %bb.57:                               #   in Loop: Header=BB38_54 Depth=1
	testq	%r12, %r12
	je	.LBB38_110
# %bb.58:                               #   in Loop: Header=BB38_54 Depth=1
	movq	8(%r12), %rax
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB38_110
# %bb.59:                               #   in Loop: Header=BB38_54 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB38_62
# %bb.60:                               #   in Loop: Header=BB38_54 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI38_1(,%rax,8)
.LBB38_61:                              #   in Loop: Header=BB38_54 Depth=1
	shrq	$3, %rdx
	jmp	.LBB38_67
.LBB38_62:                              #   in Loop: Header=BB38_54 Depth=1
	xorl	%edx, %edx
	jmp	.LBB38_67
.LBB38_63:                              #   in Loop: Header=BB38_54 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB38_67
.LBB38_64:                              #   in Loop: Header=BB38_54 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB38_67
.LBB38_65:                              #   in Loop: Header=BB38_54 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB38_67
.LBB38_66:                              #   in Loop: Header=BB38_54 Depth=1
	movq	-17(%rsi), %rdx
.LBB38_67:                              #   in Loop: Header=BB38_54 Depth=1
	callq	raxFind
	testq	%rax, %rax
	je	.LBB38_110
# %bb.68:                               #   in Loop: Header=BB38_54 Depth=1
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB38_110
# %bb.69:                               #   in Loop: Header=BB38_54 Depth=1
	movslq	-64(%rbp), %rcx         # 4-byte Folded Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
.LBB38_70:                              #   in Loop: Header=BB38_54 Depth=1
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB38_74
# %bb.71:                               #   in Loop: Header=BB38_54 Depth=1
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.40, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB38_52
# %bb.72:                               #   in Loop: Header=BB38_54 Depth=1
	cmpq	$10, -48(%rbp)          # 8-byte Folded Reload
	jne	.LBB38_113
# %bb.73:                               #   in Loop: Header=BB38_54 Depth=1
	movslq	-64(%rbp), %rax         # 4-byte Folded Reload
	shlq	$4, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, (%rcx,%rax)
	jmp	.LBB38_53
.LBB38_74:                              #   in Loop: Header=BB38_54 Depth=1
	cmpq	$10, -48(%rbp)          # 8-byte Folded Reload
	je	.LBB38_112
# %bb.75:                               #   in Loop: Header=BB38_54 Depth=1
	testq	%r12, %r12
	je	.LBB38_77
# %bb.76:                               #   in Loop: Header=BB38_54 Depth=1
	movq	8(%r12), %rax
	movslq	-64(%rbp), %rcx         # 4-byte Folded Reload
	shlq	$4, %rcx
	movdqu	16(%rax), %xmm0
	movq	-88(%rbp), %rax         # 8-byte Reload
	movdqu	%xmm0, (%rax,%rcx)
	jmp	.LBB38_53
.LBB38_77:                              #   in Loop: Header=BB38_54 Depth=1
	movslq	-64(%rbp), %rax         # 4-byte Folded Reload
	shlq	$4, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rcx,%rax)
	jmp	.LBB38_53
.LBB38_78:
	cmpl	$2, -76(%rbp)           # 4-byte Folded Reload
	jl	.LBB38_105
# %bb.79:
	xorl	%eax, %eax
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	setne	%al
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leal	4(%rax), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%r13, -184(%rbp)        # 8-byte Spill
	movslq	%r13d, %r15
	movl	-144(%rbp), %r14d       # 4-byte Reload
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB38_83
.LBB38_80:                              #   in Loop: Header=BB38_83 Depth=1
	leaq	-176(%rbp), %rdx
	movl	$0, %ecx
	movl	$0, %r9d
	leaq	-200(%rbp), %rbx
	pushq	%rbx
	pushq	%r10
	pushq	%rax
	pushq	$0
	callq	streamReplyWithRange
	addq	$32, %rsp
.LBB38_81:                              #   in Loop: Header=BB38_83 Depth=1
	addq	$1, -48(%rbp)           # 8-byte Folded Spill
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB38_82:                              #   in Loop: Header=BB38_83 Depth=1
	addq	$8, %r13
	addq	$16, %r12
	addq	$1, %r15
	addq	$-1, %r14
	je	.LBB38_103
.LBB38_83:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB38_82
# %bb.84:                               #   in Loop: Header=BB38_83 Depth=1
	movq	8(%rax), %rdx
	cmpq	$0, -56(%rbp)           # 8-byte Folded Reload
	je	.LBB38_90
# %bb.85:                               #   in Loop: Header=BB38_83 Depth=1
	movl	$1, %ecx
	cmpq	$-1, (%r12)
	jne	.LBB38_92
# %bb.86:                               #   in Loop: Header=BB38_83 Depth=1
	cmpq	$-1, 8(%r12)
	jne	.LBB38_92
# %bb.87:                               #   in Loop: Header=BB38_83 Depth=1
	cmpq	$0, 8(%rdx)
	je	.LBB38_82
# %bb.88:                               #   in Loop: Header=BB38_83 Depth=1
	movq	(%r13), %rax
	movq	(%rax), %rcx
	cmpq	%rcx, 16(%rdx)
	jbe	.LBB38_101
.LBB38_89:                              #   in Loop: Header=BB38_83 Depth=1
	movdqu	(%rax), %xmm0
	movdqu	%xmm0, (%r12)
	xorl	%ecx, %ecx
	jmp	.LBB38_92
.LBB38_90:                              #   in Loop: Header=BB38_83 Depth=1
	cmpq	$0, 8(%rdx)
	je	.LBB38_82
# %bb.91:                               #   in Loop: Header=BB38_83 Depth=1
	movq	(%r12), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, 16(%rdx)
	jbe	.LBB38_99
.LBB38_92:                              #   in Loop: Header=BB38_83 Depth=1
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	jne	.LBB38_94
# %bb.93:                               #   in Loop: Header=BB38_83 Depth=1
	movq	%rbx, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB38_94:                              #   in Loop: Header=BB38_83 Depth=1
	movdqu	(%r12), %xmm0
	movdqa	%xmm0, -176(%rbp)
	addq	$1, -168(%rbp)
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulk
	cmpq	$0, -56(%rbp)           # 8-byte Folded Reload
	je	.LBB38_96
# %bb.95:                               #   in Loop: Header=BB38_83 Depth=1
	movq	(%r13), %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rsi
	movl	$1, %edx
	callq	streamLookupConsumer
	jmp	.LBB38_97
.LBB38_96:                              #   in Loop: Header=BB38_83 Depth=1
	xorl	%eax, %eax
.LBB38_97:                              #   in Loop: Header=BB38_83 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %r10d
	cmovel	-112(%rbp), %r10d       # 4-byte Folded Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rcx, -200(%rbp)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-104(%rbp), %r8
	cmpq	$0, -56(%rbp)           # 8-byte Folded Reload
	je	.LBB38_80
# %bb.98:                               #   in Loop: Header=BB38_83 Depth=1
	leaq	-176(%rbp), %rdx
	movl	$0, %ecx
	movl	$0, %r9d
	leaq	-200(%rbp), %rbx
	pushq	%rbx
	pushq	%r10
	pushq	%rax
	pushq	(%r13)
	callq	streamReplyWithRange
	addq	$32, %rsp
	addq	$1, server+2080(%rip)
	jmp	.LBB38_81
.LBB38_99:                              #   in Loop: Header=BB38_83 Depth=1
	jb	.LBB38_82
# %bb.100:                              #   in Loop: Header=BB38_83 Depth=1
	movq	24(%rdx), %rax
	cmpq	8(%r12), %rax
	jbe	.LBB38_82
	jmp	.LBB38_92
.LBB38_101:                             #   in Loop: Header=BB38_83 Depth=1
	jb	.LBB38_82
# %bb.102:                              #   in Loop: Header=BB38_83 Depth=1
	movq	24(%rdx), %rcx
	cmpq	8(%rax), %rcx
	jbe	.LBB38_82
	jmp	.LBB38_89
.LBB38_103:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	movq	-184(%rbp), %r13        # 8-byte Reload
	je	.LBB38_105
# %bb.104:
	movq	%rbx, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	callq	setDeferredMultiBulkLength
	jmp	.LBB38_115
.LBB38_105:
	movq	-160(%rbp), %r8
	cmpq	$-1, %r8
	je	.LBB38_109
# %bb.106:
	testb	$8, 160(%rbx)
	jne	.LBB38_109
# %bb.107:
	movslq	%r13d, %rdx
	shlq	$3, %rdx
	addq	72(%rbx), %rdx
	subq	$8, %rsp
	movq	%rbx, %rdi
	movl	$4, %esi
	movq	-144(%rbp), %rcx        # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r9d, %r9d
	pushq	-88(%rbp)               # 8-byte Folded Reload
	callq	blockForKeys
	addq	$16, %rsp
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	movl	$1000, %ecx             # imm = 0x3E8
	cmovneq	%rax, %rcx
	movq	%rcx, 416(%rbx)
	movq	-96(%rbp), %r14         # 8-byte Reload
	testq	%r14, %r14
	je	.LBB38_111
# %bb.108:
	movq	%r14, %rdi
	callq	incrRefCount
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	incrRefCount
	movq	%r14, 424(%rbx)
	movq	%r15, 432(%rbx)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, 456(%rbx)
	jmp	.LBB38_115
.LBB38_109:
	movq	shared+88(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB38_115
.LBB38_110:
	movq	8(%r14), %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB38_115
.LBB38_111:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 424(%rbx)
	jmp	.LBB38_115
.LBB38_112:
	movl	$.L.str.39, %esi
	jmp	.LBB38_114
.LBB38_113:
	movl	$.L.str.41, %esi
.LBB38_114:
	movq	%rbx, %rdi
	callq	addReplyError
.LBB38_115:
	movq	%rbx, %rdi
	callq	preventCommandPropagation
	leaq	-336(%rbp), %rax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB38_117
# %bb.116:
	callq	zfree
.LBB38_117:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	jmp	.LBB38_37
.Lfunc_end38:
	.size	xreadCommand, .Lfunc_end38-xreadCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI38_0:
	.quad	.LBB38_2
	.quad	.LBB38_4
	.quad	.LBB38_5
	.quad	.LBB38_6
	.quad	.LBB38_7
.LJTI38_1:
	.quad	.LBB38_61
	.quad	.LBB38_63
	.quad	.LBB38_64
	.quad	.LBB38_65
	.quad	.LBB38_66
                                        # -- End function
	.text
	.globl	streamLookupCG          # -- Begin function streamLookupCG
	.p2align	4, 0x90
	.type	streamLookupCG,@function
streamLookupCG:                         # @streamLookupCG
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB39_1
# %bb.2:
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB39_3
# %bb.4:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI39_0(,%rax,8)
.LBB39_5:
	shrq	$3, %rdx
	jmp	.LBB39_10
.LBB39_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB39_3:
	xorl	%edx, %edx
	jmp	.LBB39_10
.LBB39_6:
	movzbl	-3(%rsi), %edx
	jmp	.LBB39_10
.LBB39_7:
	movzwl	-5(%rsi), %edx
	jmp	.LBB39_10
.LBB39_8:
	movl	-9(%rsi), %edx
	jmp	.LBB39_10
.LBB39_9:
	movq	-17(%rsi), %rdx
.LBB39_10:
	callq	raxFind
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, raxNotFound(%rip)
	cmovneq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	streamLookupCG, .Lfunc_end39-streamLookupCG
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI39_0:
	.quad	.LBB39_5
	.quad	.LBB39_6
	.quad	.LBB39_7
	.quad	.LBB39_8
	.quad	.LBB39_9
                                        # -- End function
	.text
	.globl	streamLookupConsumer    # -- Begin function streamLookupConsumer
	.p2align	4, 0x90
	.type	streamLookupConsumer,@function
streamLookupConsumer:                   # @streamLookupConsumer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	24(%rdi), %rdi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB40_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI40_0(,%rax,8)
.LBB40_3:
	shrq	$3, %rdx
	jmp	.LBB40_8
.LBB40_1:
	xorl	%edx, %edx
	jmp	.LBB40_8
.LBB40_4:
	movzbl	-3(%r14), %edx
	jmp	.LBB40_8
.LBB40_5:
	movzwl	-5(%r14), %edx
	jmp	.LBB40_8
.LBB40_6:
	movl	-9(%r14), %edx
	jmp	.LBB40_8
.LBB40_7:
	movq	-17(%r14), %rdx
.LBB40_8:
	movq	%r14, %rsi
	callq	raxFind
	movq	%rax, %rbx
	cmpq	%rax, raxNotFound(%rip)
	jne	.LBB40_20
# %bb.9:
	testl	%r12d, %r12d
	je	.LBB40_10
# %bb.11:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	sdsdup
	movq	%rax, 8(%rbx)
	callq	raxNew
	movq	%rax, 16(%rbx)
	movq	24(%r15), %rdi
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB40_12
# %bb.13:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI40_1(,%rax,8)
.LBB40_14:
	shrq	$3, %rdx
	jmp	.LBB40_19
.LBB40_10:
	xorl	%ebx, %ebx
	jmp	.LBB40_21
.LBB40_12:
	xorl	%edx, %edx
	jmp	.LBB40_19
.LBB40_15:
	movzbl	-3(%r14), %edx
	jmp	.LBB40_19
.LBB40_16:
	movzwl	-5(%r14), %edx
	jmp	.LBB40_19
.LBB40_17:
	movl	-9(%r14), %edx
	jmp	.LBB40_19
.LBB40_18:
	movq	-17(%r14), %rdx
.LBB40_19:
	movq	%r14, %rsi
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB40_20:
	callq	mstime
	movq	%rax, (%rbx)
.LBB40_21:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	streamLookupConsumer, .Lfunc_end40-streamLookupConsumer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI40_0:
	.quad	.LBB40_3
	.quad	.LBB40_4
	.quad	.LBB40_5
	.quad	.LBB40_6
	.quad	.LBB40_7
.LJTI40_1:
	.quad	.LBB40_14
	.quad	.LBB40_15
	.quad	.LBB40_16
	.quad	.LBB40_17
	.quad	.LBB40_18
                                        # -- End function
	.text
	.globl	streamFreeConsumer      # -- Begin function streamFreeConsumer
	.p2align	4, 0x90
	.type	streamFreeConsumer,@function
streamFreeConsumer:                     # @streamFreeConsumer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	callq	raxFree
	movq	8(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end41:
	.size	streamFreeConsumer, .Lfunc_end41-streamFreeConsumer
                                        # -- End function
	.globl	streamCreateCG          # -- Begin function streamCreateCG
	.p2align	4, 0x90
	.type	streamCreateCG,@function
streamCreateCG:                         # @streamCreateCG
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	32(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB42_2
# %bb.1:
	callq	raxNew
	movq	%rax, %rdi
	movq	%rax, 32(%r13)
.LBB42_2:
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	raxFind
	cmpq	raxNotFound(%rip), %rax
	je	.LBB42_4
# %bb.3:
	xorl	%ebx, %ebx
	jmp	.LBB42_5
.LBB42_4:
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	callq	raxNew
	movq	%rax, 16(%rbx)
	callq	raxNew
	movq	%rax, 24(%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, (%rbx)
	movq	32(%r13), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB42_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	streamCreateCG, .Lfunc_end42-streamCreateCG
                                        # -- End function
	.globl	streamDelConsumer       # -- Begin function streamDelConsumer
	.p2align	4, 0x90
	.type	streamDelConsumer,@function
streamDelConsumer:                      # @streamDelConsumer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	24(%rdi), %rdi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB43_3
# %bb.1:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI43_0(,%rax,8)
.LBB43_2:
	shrq	$3, %rdx
	jmp	.LBB43_8
.LBB43_3:
	xorl	%edx, %edx
	jmp	.LBB43_8
.LBB43_4:
	movzbl	-3(%r14), %edx
	jmp	.LBB43_8
.LBB43_5:
	movzwl	-5(%r14), %edx
	jmp	.LBB43_8
.LBB43_6:
	movl	-9(%r14), %edx
	jmp	.LBB43_8
.LBB43_7:
	movq	-17(%r14), %rdx
.LBB43_8:
	movq	%r14, %rsi
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB43_17
# %bb.9:
	movq	%rax, %r12
	callq	mstime
	movq	%rax, (%r12)
	testq	%r12, %r12
	je	.LBB43_17
# %bb.10:
	movq	16(%r12), %rdi
	callq	raxSize
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	16(%r12), %rsi
	leaq	-528(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB43_13
# %bb.11:
	leaq	-528(%rbp), %rbx
	.p2align	4, 0x90
.LBB43_12:                              # =>This Inner Loop Header: Depth=1
	movq	-512(%rbp), %rsi
	movq	-504(%rbp), %r15
	movq	16(%r13), %rdi
	movq	-496(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	%r15, %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	raxNext
	testl	%eax, %eax
	jne	.LBB43_12
.LBB43_13:
	leaq	-528(%rbp), %rdi
	callq	raxStop
	movq	24(%r13), %rdi
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB43_18
# %bb.14:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI43_1(,%rax,8)
.LBB43_15:
	shrq	$3, %rdx
	jmp	.LBB43_23
.LBB43_17:
	xorl	%eax, %eax
	jmp	.LBB43_24
.LBB43_18:
	xorl	%edx, %edx
	jmp	.LBB43_23
.LBB43_19:
	movzbl	-3(%r14), %edx
	jmp	.LBB43_23
.LBB43_20:
	movzwl	-5(%r14), %edx
	jmp	.LBB43_23
.LBB43_21:
	movl	-9(%r14), %edx
	jmp	.LBB43_23
.LBB43_22:
	movq	-17(%r14), %rdx
.LBB43_23:
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	16(%r12), %rdi
	callq	raxFree
	movq	8(%r12), %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	zfree
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB43_24:
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	streamDelConsumer, .Lfunc_end43-streamDelConsumer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI43_0:
	.quad	.LBB43_2
	.quad	.LBB43_4
	.quad	.LBB43_5
	.quad	.LBB43_6
	.quad	.LBB43_7
.LJTI43_1:
	.quad	.LBB43_15
	.quad	.LBB43_19
	.quad	.LBB43_20
	.quad	.LBB43_21
	.quad	.LBB43_22
                                        # -- End function
	.text
	.globl	xgroupCommand           # -- Begin function xgroupCommand
	.p2align	4, 0x90
	.type	xgroupCommand,@function
xgroupCommand:                          # @xgroupCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %r12
	movq	$0, -80(%rbp)
	movl	$.L.str.43, %eax
	movq	%rax, %xmm0
	movl	$.L.str.42, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -128(%rbp)
	movl	$.L.str.45, %eax
	movq	%rax, %xmm0
	movl	$.L.str.44, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -112(%rbp)
	movl	$.L.str.47, %eax
	movq	%rax, %xmm0
	movl	$.L.str.46, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -96(%rbp)
	movq	72(%rdi), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %r14
	movl	64(%rdi), %eax
	cmpl	$6, %eax
	jne	.LBB44_4
# %bb.1:
	movl	$.L.str.48, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB44_5
# %bb.2:
	movq	40(%rbx), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.49, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_48
# %bb.3:
	movl	$1, %r15d
	jmp	.LBB44_5
.LBB44_4:
	xorl	%r15d, %r15d
	cmpl	$4, %eax
	jl	.LBB44_8
.LBB44_5:
	movq	16(%r12), %rdi
	movq	16(%rbx), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB44_9
# %bb.6:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB44_77
# %bb.7:
	movq	8(%rbx), %rbx
	jmp	.LBB44_10
.LBB44_8:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB44_29
.LBB44_9:
	xorl	%ebx, %ebx
.LBB44_10:
	movq	72(%r12), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	setne	%r15b
	jne	.LBB44_18
# %bb.11:
	cmpl	$4, 64(%r12)
	jl	.LBB44_18
# %bb.12:
	testq	%rbx, %rbx
	je	.LBB44_19
# %bb.13:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB44_27
# %bb.14:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB44_24
# %bb.15:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI44_0(,%rax,8)
.LBB44_16:
	shrq	$3, %rdx
	jmp	.LBB44_25
.LBB44_18:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB44_29:
	movl	$.L.str.48, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_34
# %bb.30:
	movl	64(%r12), %eax
	addl	$-5, %eax
	cmpl	$1, %eax
	ja	.LBB44_34
# %bb.31:
	movq	72(%r12), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB44_51
# %bb.32:
	movq	72(%r12), %rax
	movq	32(%rax), %rsi
	leaq	-64(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB44_77
# %bb.33:
	testq	%rbx, %rbx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB44_59
	jmp	.LBB44_57
.LBB44_34:
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_38
# %bb.35:
	cmpl	$5, 64(%r12)
	jne	.LBB44_38
# %bb.36:
	movq	72(%r12), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB44_53
# %bb.37:
	movq	72(%r12), %rax
	movq	32(%rax), %rsi
	leaq	-64(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB44_77
	jmp	.LBB44_54
.LBB44_38:
	movl	$.L.str.57, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_44
# %bb.39:
	cmpl	$4, 64(%r12)
	jne	.LBB44_44
# %bb.40:
	testq	%r13, %r13
	je	.LBB44_55
# %bb.41:
	movq	32(%rbx), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB44_74
# %bb.42:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI44_1(,%rax,8)
.LBB44_43:
	shrq	$3, %rdx
	jmp	.LBB44_75
.LBB44_44:
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_47
# %bb.45:
	cmpl	$5, 64(%r12)
	jne	.LBB44_47
# %bb.46:
	movq	72(%r12), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rsi
	movq	%r13, %rdi
	callq	streamDelConsumer
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	addq	$1, server+2080(%rip)
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.59, %esi
	jmp	.LBB44_76
.LBB44_47:
	movl	$.L.str.60, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_49
.LBB44_48:
	movq	%r12, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB44_77
.LBB44_49:
	leaq	-128(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyHelp
	jmp	.LBB44_77
.LBB44_19:
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	addReplyError
	jmp	.LBB44_77
.LBB44_51:
	testq	%rbx, %rbx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	je	.LBB44_56
# %bb.52:
	movdqu	16(%rbx), %xmm0
	movdqa	%xmm0, -64(%rbp)
	jmp	.LBB44_59
.LBB44_53:
	movdqu	16(%rbx), %xmm0
	movdqa	%xmm0, -64(%rbp)
.LBB44_54:
	movdqa	-64(%rbp), %xmm0
	movdqu	%xmm0, (%r13)
	movq	shared+8(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	addq	$1, server+2080(%rip)
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.56, %esi
	jmp	.LBB44_76
.LBB44_55:
	movq	shared+32(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB44_77
.LBB44_56:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -64(%rbp)
.LBB44_57:
	testb	%r15b, %r15b
	je	.LBB44_78
# %bb.58:
	callq	createStreamObject
	movq	%rax, %r14
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	16(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movq	8(%r14), %rbx
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB44_59:
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB44_66
# %bb.60:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI44_2(,%rax,8)
.LBB44_61:
	shrq	$3, %rdx
	jmp	.LBB44_67
.LBB44_20:
	movq	-17(%rsi), %rdx
	jmp	.LBB44_25
.LBB44_21:
	movzwl	-5(%rsi), %edx
	jmp	.LBB44_25
.LBB44_22:
	movl	-9(%rsi), %edx
	jmp	.LBB44_25
.LBB44_23:
	movzbl	-3(%rsi), %edx
	jmp	.LBB44_25
.LBB44_24:
	xorl	%edx, %edx
.LBB44_25:
	callq	raxFind
	testq	%rax, %rax
	je	.LBB44_27
# %bb.26:
	movq	%rax, %r13
	cmpq	%rax, raxNotFound(%rip)
	jne	.LBB44_29
.LBB44_27:
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_50
# %bb.28:
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	xorl	%r13d, %r13d
	testl	%eax, %eax
	jne	.LBB44_29
.LBB44_50:
	movq	72(%r12), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB44_77
.LBB44_62:
	movq	-17(%rsi), %rdx
	jmp	.LBB44_67
.LBB44_63:
	movzwl	-5(%rsi), %edx
	jmp	.LBB44_67
.LBB44_64:
	movl	-9(%rsi), %edx
	jmp	.LBB44_67
.LBB44_65:
	movzbl	-3(%rsi), %edx
	jmp	.LBB44_67
.LBB44_66:
	xorl	%edx, %edx
.LBB44_67:
	leaq	-64(%rbp), %rcx
	movq	%rbx, %rdi
	callq	streamCreateCG
	testq	%rax, %rax
	je	.LBB44_69
# %bb.68:
	movq	shared+8(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	addq	$1, server+2080(%rip)
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.54, %esi
	jmp	.LBB44_76
.LBB44_69:
	movl	$.L.str.55, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB44_77
.LBB44_70:
	movq	-17(%rsi), %rdx
	jmp	.LBB44_75
.LBB44_71:
	movzwl	-5(%rsi), %edx
	jmp	.LBB44_75
.LBB44_72:
	movl	-9(%rsi), %edx
	jmp	.LBB44_75
.LBB44_73:
	movzbl	-3(%rsi), %edx
	jmp	.LBB44_75
.LBB44_74:
	xorl	%edx, %edx
.LBB44_75:
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	16(%r13), %rdi
	movl	$streamFreeNACK, %esi
	callq	raxFreeWithCallback
	movq	24(%r13), %rdi
	movl	$streamFreeConsumer, %esi
	callq	raxFreeWithCallback
	movq	%r13, %rdi
	callq	zfree
	movq	shared+40(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	addq	$1, server+2080(%rip)
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.58, %esi
.LBB44_76:
	movl	$1024, %edi             # imm = 0x400
	callq	notifyKeyspaceEvent
.LBB44_77:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_78:
	movl	$.L.str.53, %edi
	movl	$.L.str.1, %esi
	movl	$1781, %edx             # imm = 0x6F5
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end44:
	.size	xgroupCommand, .Lfunc_end44-xgroupCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI44_0:
	.quad	.LBB44_16
	.quad	.LBB44_23
	.quad	.LBB44_21
	.quad	.LBB44_22
	.quad	.LBB44_20
.LJTI44_1:
	.quad	.LBB44_43
	.quad	.LBB44_73
	.quad	.LBB44_71
	.quad	.LBB44_72
	.quad	.LBB44_70
.LJTI44_2:
	.quad	.LBB44_61
	.quad	.LBB44_65
	.quad	.LBB44_63
	.quad	.LBB44_64
	.quad	.LBB44_62
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function xsetidCommand
.LCPI45_0:
	.zero	16
	.text
	.globl	xsetidCommand
	.p2align	4, 0x90
	.type	xsetidCommand,@function
xsetidCommand:                          # @xsetidCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$680, %rsp              # imm = 0x2A8
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+120(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB45_9
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB45_9
# %bb.2:
	movq	8(%rbx), %rbx
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB45_9
# %bb.3:
	cmpq	$0, 8(%rbx)
	je	.LBB45_8
# %bb.4:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -648(%rbp)
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, -632(%rbp)
	leaq	-616(%rbp), %r15
	movq	(%rbx), %rsi
	movq	%r15, %rdi
	callq	raxStart
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, -704(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -136(%rbp)
	movl	$1, -652(%rbp)
	leaq	-704(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	streamIteratorGetID
	movq	%r15, %rdi
	callq	raxStop
	movq	-56(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	ja	.LBB45_8
# %bb.5:
	jb	.LBB45_7
# %bb.6:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB45_8
.LBB45_7:
	movl	$.L.str.61, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB45_9
.LBB45_8:
	movdqu	-40(%rbp), %xmm0
	movdqu	%xmm0, 16(%rbx)
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	addq	$1, server+2080(%rip)
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.62, %esi
	movl	$1024, %edi             # imm = 0x400
	callq	notifyKeyspaceEvent
.LBB45_9:
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	xsetidCommand, .Lfunc_end45-xsetidCommand
                                        # -- End function
	.globl	xackCommand             # -- Begin function xackCommand
	.p2align	4, 0x90
	.type	xackCommand,@function
xackCommand:                            # @xackCommand
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
	movq	16(%rdi), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB46_21
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB46_2
.LBB46_20:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_2:
	movq	8(%rbx), %rax
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB46_21
# %bb.3:
	movq	72(%r15), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_4
# %bb.5:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_0(,%rax,8)
.LBB46_6:
	shrq	$3, %rdx
	jmp	.LBB46_11
.LBB46_4:
	xorl	%edx, %edx
	jmp	.LBB46_11
.LBB46_7:
	movzbl	-3(%rsi), %edx
	jmp	.LBB46_11
.LBB46_8:
	movzwl	-5(%rsi), %edx
	jmp	.LBB46_11
.LBB46_9:
	movl	-9(%rsi), %edx
	jmp	.LBB46_11
.LBB46_10:
	movq	-17(%rsi), %rdx
.LBB46_11:
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB46_21
# %bb.12:
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB46_21
# %bb.13:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpl	$4, 64(%r15)
	jl	.LBB46_19
# %bb.14:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$3, %ebx
	leaq	-96(%rbp), %r12
	jmp	.LBB46_15
	.p2align	4, 0x90
.LBB46_18:                              #   in Loop: Header=BB46_15 Depth=1
	addq	$1, %rbx
	movslq	64(%r15), %rax
	cmpq	%rax, %rbx
	jge	.LBB46_19
.LBB46_15:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r15, %rdi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB46_20
# %bb.16:                               #   in Loop: Header=BB46_15 Depth=1
	movq	-80(%rbp), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	movl	$16, %edx
	movq	%r12, %rdi
	leaq	-64(%rbp), %rsi
	callq	memcpy
	movq	16(%r14), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB46_18
# %bb.17:                               #   in Loop: Header=BB46_15 Depth=1
	movq	%rax, %r13
	movq	16(%r14), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	16(%r13), %rax
	movq	16(%rax), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	%r13, %rdi
	callq	zfree
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$1, server+2080(%rip)
	jmp	.LBB46_18
.LBB46_21:
	movq	shared+32(%rip), %rsi
	movq	%r15, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB46_19:
	movslq	-48(%rbp), %rsi         # 4-byte Folded Reload
	movq	%r15, %rdi
	callq	addReplyLongLong
	jmp	.LBB46_20
.Lfunc_end46:
	.size	xackCommand, .Lfunc_end46-xackCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI46_0:
	.quad	.LBB46_6
	.quad	.LBB46_7
	.quad	.LBB46_8
	.quad	.LBB46_9
	.quad	.LBB46_10
                                        # -- End function
	.text
	.globl	xpendingCommand         # -- Begin function xpendingCommand
	.p2align	4, 0x90
	.type	xpendingCommand,@function
xpendingCommand:                        # @xpendingCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
	movq	%rdi, %r13
	movl	64(%rdi), %r12d
	movq	72(%rdi), %rax
	movq	8(%rax), %r15
	movq	16(%rax), %r14
	cmpl	$7, %r12d
	jne	.LBB47_2
# %bb.1:
	movq	48(%rax), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB47_7
.LBB47_2:
	cmpl	$3, %r12d
	je	.LBB47_6
# %bb.3:
	cmpl	$6, %r12d
	jne	.LBB47_4
.LBB47_6:
	xorl	%ecx, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	cmpl	$6, %r12d
	jl	.LBB47_13
.LBB47_7:
	movq	40(%rax), %rsi
	leaq	-72(%rbp), %rdx
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	cmpl	$-1, %eax
	je	.LBB47_64
# %bb.8:
	cmpq	$0, -72(%rbp)
	jns	.LBB47_10
# %bb.9:
	movq	$0, -72(%rbp)
.LBB47_10:
	movq	72(%r13), %rax
	movq	24(%rax), %rsi
	leaq	-112(%rbp), %rdx
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	streamGenericParseIDOrReply
	cmpl	$-1, %eax
	je	.LBB47_64
# %bb.11:
	movq	72(%r13), %rax
	movq	32(%rax), %rsi
	leaq	-96(%rbp), %rdx
	movq	%r13, %rdi
	movq	$-1, %rcx
	xorl	%r8d, %r8d
	callq	streamGenericParseIDOrReply
	cmpl	$-1, %eax
	je	.LBB47_64
# %bb.12:
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
.LBB47_13:
	movq	16(%r13), %rdi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB47_14
# %bb.15:
	movq	%rax, %rbx
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB47_64
# %bb.16:
	movq	8(%rbx), %rax
	leaq	8(%r14), %rbx
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB47_27
# %bb.17:
	movq	8(%r14), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB47_18
# %bb.19:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI47_0(,%rax,8)
.LBB47_20:
	shrq	$3, %rdx
	jmp	.LBB47_25
.LBB47_4:
	movq	shared+128(%rip), %rsi
.LBB47_5:
	movq	%r13, %rdi
	callq	addReply
	jmp	.LBB47_64
.LBB47_14:
	addq	$8, %r14
	movq	%r14, %rbx
.LBB47_27:
	movq	8(%r15), %rdx
	movq	(%rbx), %rcx
	movl	$.L.str.63, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB47_64:
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB47_18:
	xorl	%edx, %edx
	jmp	.LBB47_25
.LBB47_21:
	movzbl	-3(%rsi), %edx
	jmp	.LBB47_25
.LBB47_22:
	movzwl	-5(%rsi), %edx
	jmp	.LBB47_25
.LBB47_23:
	movl	-9(%rsi), %edx
	jmp	.LBB47_25
.LBB47_24:
	movq	-17(%rsi), %rdx
.LBB47_25:
	callq	raxFind
	testq	%rax, %rax
	je	.LBB47_27
# %bb.26:
	movq	%rax, %r14
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB47_27
# %bb.28:
	cmpl	$3, %r12d
	jne	.LBB47_37
# %bb.29:
	movl	$4, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	16(%r14), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movq	16(%r14), %rdi
	callq	raxSize
	testq	%rax, %rax
	je	.LBB47_30
# %bb.31:
	movq	16(%r14), %rsi
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	xorl	%r15d, %r15d
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	movq	-624(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movl	$16, %edx
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, %rbx
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, %r12
	movq	%rax, -104(%rbp)
	callq	sdsempty
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movl	$.L.str.3, %esi
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	movq	-624(%rbp), %rsi
	movl	$16, %edx
	leaq	-64(%rbp), %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, %r12
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, %rbx
	movq	%rax, -88(%rbp)
	callq	sdsempty
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStop
	movq	24(%r14), %rsi
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%r13, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB47_36
# %bb.32:
	xorl	%r15d, %r15d
	leaq	-640(%rbp), %r12
	jmp	.LBB47_33
.LBB47_35:                              #   in Loop: Header=BB47_33 Depth=1
	movq	%r12, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB47_36
.LBB47_33:                              # =>This Inner Loop Header: Depth=1
	movq	-616(%rbp), %rbx
	movq	16(%rbx), %rdi
	callq	raxSize
	testq	%rax, %rax
	je	.LBB47_35
# %bb.34:                               #   in Loop: Header=BB47_33 Depth=1
	movl	$2, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	-624(%rbp), %rsi
	movq	-608(%rbp), %rdx
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movq	16(%rbx), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	addq	$1, %r15
	jmp	.LBB47_35
.LBB47_37:
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB47_38
# %bb.39:
	movq	8(%rax), %rsi
	movq	24(%r14), %rdi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB47_40
# %bb.41:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI47_1(,%rax,8)
.LBB47_42:
	shrq	$3, %rdx
	jmp	.LBB47_47
.LBB47_36:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	setDeferredMultiBulkLength
	leaq	-640(%rbp), %rdi
	callq	raxStop
	jmp	.LBB47_64
.LBB47_30:
	movq	shared+80(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	movq	shared+80(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	movq	shared+88(%rip), %rsi
	jmp	.LBB47_5
.LBB47_38:
	xorl	%r15d, %r15d
	jmp	.LBB47_49
.LBB47_40:
	xorl	%edx, %edx
	jmp	.LBB47_47
.LBB47_43:
	movzbl	-3(%rsi), %edx
	jmp	.LBB47_47
.LBB47_44:
	movzwl	-5(%rsi), %edx
	jmp	.LBB47_47
.LBB47_45:
	movl	-9(%rsi), %edx
	jmp	.LBB47_47
.LBB47_46:
	movq	-17(%rsi), %rdx
.LBB47_47:
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB47_65
# %bb.48:
	movq	%rax, %r15
	callq	mstime
	movq	%rax, (%r15)
.LBB47_49:
	addq	$16, %r14
	testq	%r15, %r15
	leaq	16(%r15), %rax
	cmoveq	%r14, %rax
	movq	(%rax), %r15
	callq	mstime
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-112(%rbp), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	leaq	-160(%rbp), %r12
	leaq	-64(%rbp), %rbx
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	-96(%rbp), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdi
	callq	intrev64
	movq	%rax, -56(%rbp)
	leaq	-144(%rbp), %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	memcpy
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	raxStart
	movl	$.L.str.6, %esi
	movl	$16, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	raxSeek
	movq	%r13, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -120(%rbp)        # 8-byte Spill
	cmpq	$0, -72(%rbp)
	je	.LBB47_50
# %bb.51:
	xorl	%r12d, %r12d
	jmp	.LBB47_52
.LBB47_61:                              #   in Loop: Header=BB47_52 Depth=1
	movq	-17(%rsi), %rdx
.LBB47_62:                              #   in Loop: Header=BB47_52 Depth=1
	addq	$1, %r12
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movq	-80(%rbp), %rsi         # 8-byte Reload
	subq	(%r14), %rsi
	movl	$0, %eax
	cmovsq	%rax, %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movq	8(%r14), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	cmpq	$0, -72(%rbp)
	je	.LBB47_63
.LBB47_52:                              # =>This Inner Loop Header: Depth=1
	leaq	-640(%rbp), %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB47_63
# %bb.53:                               #   in Loop: Header=BB47_52 Depth=1
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	callq	memcmp
	testl	%eax, %eax
	jg	.LBB47_63
# %bb.54:                               #   in Loop: Header=BB47_52 Depth=1
	movq	-616(%rbp), %r14
	addq	$-1, -72(%rbp)
	movl	$4, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	-624(%rbp), %rsi
	movl	$16, %edx
	leaq	-64(%rbp), %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi
	callq	intrev64
	movq	%rax, %r15
	movq	-56(%rbp), %rdi
	callq	intrev64
	movq	%rax, %rbx
	callq	sdsempty
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movq	16(%r14), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB47_55
# %bb.56:                               #   in Loop: Header=BB47_52 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI47_2(,%rax,8)
.LBB47_57:                              #   in Loop: Header=BB47_52 Depth=1
	shrq	$3, %rdx
	jmp	.LBB47_62
.LBB47_55:                              #   in Loop: Header=BB47_52 Depth=1
	xorl	%edx, %edx
	jmp	.LBB47_62
.LBB47_58:                              #   in Loop: Header=BB47_52 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB47_62
.LBB47_59:                              #   in Loop: Header=BB47_52 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB47_62
.LBB47_60:                              #   in Loop: Header=BB47_52 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB47_62
.LBB47_50:
	xorl	%r12d, %r12d
.LBB47_63:
	leaq	-640(%rbp), %rdi
	callq	raxStop
	movq	%r13, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
	jmp	.LBB47_64
.LBB47_65:
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	addReplyMultiBulkLen
	jmp	.LBB47_64
.Lfunc_end47:
	.size	xpendingCommand, .Lfunc_end47-xpendingCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI47_0:
	.quad	.LBB47_20
	.quad	.LBB47_21
	.quad	.LBB47_22
	.quad	.LBB47_23
	.quad	.LBB47_24
.LJTI47_1:
	.quad	.LBB47_42
	.quad	.LBB47_43
	.quad	.LBB47_44
	.quad	.LBB47_45
	.quad	.LBB47_46
.LJTI47_2:
	.quad	.LBB47_57
	.quad	.LBB47_58
	.quad	.LBB47_59
	.quad	.LBB47_60
	.quad	.LBB47_61
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function xclaimCommand
.LCPI48_0:
	.zero	16
	.text
	.globl	xclaimCommand
	.p2align	4, 0x90
	.type	xclaimCommand,@function
xclaimCommand:                          # @xclaimCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$856, %rsp              # imm = 0x358
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movq	$-1, -160(%rbp)
	movq	$-1, -56(%rbp)
	testq	%rax, %rax
	je	.LBB48_1
# %bb.2:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB48_72
# %bb.3:
	movq	8(%rbx), %rcx
	movq	72(%r15), %rdx
	movq	32(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB48_14
# %bb.4:
	movq	16(%rdx), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB48_5
# %bb.6:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI48_0(,%rax,8)
.LBB48_7:
	shrq	$3, %rdx
	jmp	.LBB48_12
.LBB48_1:
	movq	72(%r15), %rdx
.LBB48_14:
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rax
	movq	8(%rcx), %rdx
	movq	8(%rax), %rcx
	movl	$.L.str.63, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB48_72:
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_11:
	movq	-17(%rsi), %rdx
	jmp	.LBB48_12
.LBB48_9:
	movzwl	-5(%rsi), %edx
	jmp	.LBB48_12
.LBB48_8:
	movzbl	-3(%rsi), %edx
	jmp	.LBB48_12
.LBB48_10:
	movl	-9(%rsi), %edx
	jmp	.LBB48_12
.LBB48_5:
	xorl	%edx, %edx
.LBB48_12:
	callq	raxFind
	movq	72(%r15), %rdx
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB48_14
# %bb.13:
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB48_14
# %bb.15:
	movq	32(%rdx), %rsi
	leaq	-112(%rbp), %rdx
	movl	$.L.str.64, %ecx
	movq	%r15, %rdi
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB48_72
# %bb.16:
	cmpq	$0, -112(%rbp)
	jns	.LBB48_18
# %bb.17:
	movq	$0, -112(%rbp)
.LBB48_18:
	movl	$5, %r13d
	cmpl	$6, 64(%r15)
	jl	.LBB48_22
# %bb.19:                               # %.preheader2
	movl	$5, %r13d
	leaq	-864(%rbp), %r12
	.p2align	4, 0x90
.LBB48_20:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	xorl	%edi, %edi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB48_22
# %bb.21:                               #   in Loop: Header=BB48_20 Depth=1
	addq	$1, %r13
	movslq	64(%r15), %rax
	cmpq	%rax, %r13
	jl	.LBB48_20
.LBB48_22:
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	callq	mstime
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movl	64(%r15), %r14d
	cmpl	%r14d, %r13d
	jge	.LBB48_73
# %bb.23:                               # %.preheader
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movq	%r13, -96(%rbp)         # 8-byte Spill
	movl	%r13d, %r12d
	jmp	.LBB48_24
.LBB48_25:                              #   in Loop: Header=BB48_24 Depth=1
	movl	$1, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB48_32:                              #   in Loop: Header=BB48_24 Depth=1
	addl	$1, %r12d
	movl	64(%r15), %r14d
	cmpl	%r14d, %r12d
	jge	.LBB48_33
.LBB48_24:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rbx
	movslq	%r12d, %rax
	movq	(%rbx,%rax,8), %rax
	movq	8(%rax), %r13
	movl	$.L.str.14, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB48_25
# %bb.26:                               #   in Loop: Header=BB48_24 Depth=1
	movl	$.L.str.15, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB48_27
# %bb.28:                               #   in Loop: Header=BB48_24 Depth=1
	movl	$.L.str.65, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	addl	$1, %r12d
	cmpl	%r12d, %r14d
	je	.LBB48_35
# %bb.29:                               #   in Loop: Header=BB48_24 Depth=1
	testl	%eax, %eax
	jne	.LBB48_35
# %bb.30:                               #   in Loop: Header=BB48_24 Depth=1
	movslq	%r12d, %rax
	movq	(%rbx,%rax,8), %rsi
	movl	$.L.str.66, %ecx
	movq	%r15, %rdi
	leaq	-56(%rbp), %rdx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB48_72
# %bb.31:                               #   in Loop: Header=BB48_24 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB48_32
.LBB48_27:                              #   in Loop: Header=BB48_24 Depth=1
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB48_32
.LBB48_35:                              #   in Loop: Header=BB48_24 Depth=1
	movl	$.L.str.12, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	cmpl	%r12d, %r14d
	je	.LBB48_40
# %bb.36:                               #   in Loop: Header=BB48_24 Depth=1
	testl	%eax, %eax
	jne	.LBB48_40
# %bb.37:                               #   in Loop: Header=BB48_24 Depth=1
	movslq	%r12d, %rax
	movq	(%rbx,%rax,8), %rsi
	movl	$.L.str.67, %ecx
	movq	%r15, %rdi
	leaq	-56(%rbp), %rdx
	jmp	.LBB48_38
.LBB48_40:                              #   in Loop: Header=BB48_24 Depth=1
	movl	$.L.str.13, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	cmpl	%r12d, %r14d
	je	.LBB48_43
# %bb.41:                               #   in Loop: Header=BB48_24 Depth=1
	testl	%eax, %eax
	jne	.LBB48_43
# %bb.42:                               #   in Loop: Header=BB48_24 Depth=1
	movslq	%r12d, %rax
	movq	(%rbx,%rax,8), %rsi
	movl	$.L.str.68, %ecx
	movq	%r15, %rdi
	leaq	-160(%rbp), %rdx
.LBB48_38:                              #   in Loop: Header=BB48_24 Depth=1
	callq	getLongLongFromObjectOrReply
	jmp	.LBB48_39
.LBB48_43:                              #   in Loop: Header=BB48_24 Depth=1
	movl	$.L.str.16, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	cmpl	%r12d, %r14d
	je	.LBB48_46
# %bb.44:                               #   in Loop: Header=BB48_24 Depth=1
	testl	%eax, %eax
	jne	.LBB48_46
# %bb.45:                               #   in Loop: Header=BB48_24 Depth=1
	movslq	%r12d, %rax
	movq	(%rbx,%rax,8), %rsi
	movq	%r15, %rdi
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
.LBB48_39:                              #   in Loop: Header=BB48_24 Depth=1
	testl	%eax, %eax
	je	.LBB48_32
	jmp	.LBB48_72
.LBB48_73:
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rax
	xorl	%ecx, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
	jmp	.LBB48_74
.LBB48_33:
	movq	-176(%rbp), %rcx
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rax
	cmpq	%rax, %rcx
	movq	-96(%rbp), %r13         # 8-byte Reload
	ja	.LBB48_34
.LBB48_74:
	xorl	%edx, %edx
	cmpq	%rax, %rcx
	jb	.LBB48_76
# %bb.75:
	movq	-168(%rbp), %rax
	cmpq	8(%r14), %rax
	jbe	.LBB48_76
.LBB48_34:
	movaps	-176(%rbp), %xmm0
	movups	%xmm0, (%r14)
	movl	$1, %edx
.LBB48_76:
	movq	-56(%rbp), %rax
	cmpq	$-1, %rax
	je	.LBB48_79
# %bb.77:
	testq	%rax, %rax
	js	.LBB48_79
# %bb.78:
	cmpq	-64(%rbp), %rax         # 8-byte Folded Reload
	jle	.LBB48_80
.LBB48_79:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB48_80:
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	72(%r15), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	streamLookupConsumer
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -184(%rbp)        # 8-byte Spill
	cmpl	$6, %r13d
	jb	.LBB48_81
# %bb.47:
	movl	%r13d, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$5, %r12d
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB48_48
.LBB48_83:                              #   in Loop: Header=BB48_48 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB48_68:                              #   in Loop: Header=BB48_48 Depth=1
	addq	$1, %r12
	cmpq	-96(%rbp), %r12         # 8-byte Folded Reload
	jae	.LBB48_69
.LBB48_48:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%r12,8), %rsi
	movq	%r15, %rdi
	leaq	-128(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB48_82
# %bb.49:                               #   in Loop: Header=BB48_48 Depth=1
	movq	-128(%rbp), %rdi
	callq	intrev64
	movq	%rax, -864(%rbp)
	movq	-120(%rbp), %rdi
	callq	intrev64
	movq	%rax, -856(%rbp)
	movl	$16, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-864(%rbp), %rsi
	callq	memcpy
	movq	16(%r14), %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	raxFind
	movq	%rax, %r13
	movq	raxNotFound(%rip), %rax
	cmpl	$0, -104(%rbp)          # 4-byte Folded Reload
	je	.LBB48_53
# %bb.50:                               #   in Loop: Header=BB48_48 Depth=1
	cmpq	%r13, %rax
	jne	.LBB48_53
# %bb.51:                               #   in Loop: Header=BB48_48 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rsi
	leaq	-864(%rbp), %rbx
	movq	%rbx, %rdi
	leaq	-128(%rbp), %rcx
	movq	%rcx, %rdx
	xorl	%r8d, %r8d
	callq	streamIteratorStart
	movq	%rbx, %rdi
	leaq	-216(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	callq	streamIteratorGetID
	movl	%eax, %ebx
	leaq	-776(%rbp), %rdi
	callq	raxStop
	testl	%ebx, %ebx
	je	.LBB48_83
# %bb.52:                               #   in Loop: Header=BB48_48 Depth=1
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r13
	callq	mstime
	movq	%rax, (%r13)
	movq	$1, 8(%r13)
	movq	$0, 16(%r13)
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	16(%r14), %rdi
	movl	$16, %edx
	leaq	-144(%rbp), %rsi
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movq	raxNotFound(%rip), %rax
.LBB48_53:                              #   in Loop: Header=BB48_48 Depth=1
	cmpq	%rax, %r13
	je	.LBB48_68
# %bb.54:                               #   in Loop: Header=BB48_48 Depth=1
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB48_57
# %bb.55:                               #   in Loop: Header=BB48_48 Depth=1
	movq	-112(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB48_57
# %bb.56:                               #   in Loop: Header=BB48_48 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subq	(%r13), %rdx
	cmpq	%rcx, %rdx
	jl	.LBB48_68
	jmp	.LBB48_58
.LBB48_57:                              #   in Loop: Header=BB48_48 Depth=1
	testq	%rax, %rax
	je	.LBB48_59
.LBB48_58:                              #   in Loop: Header=BB48_48 Depth=1
	movq	16(%rax), %rdi
	movl	$16, %edx
	leaq	-144(%rbp), %rsi
	xorl	%ecx, %ecx
	callq	raxRemove
.LBB48_59:                              #   in Loop: Header=BB48_48 Depth=1
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 16(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, (%r13)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	js	.LBB48_60
# %bb.62:                               #   in Loop: Header=BB48_48 Depth=1
	movq	%rax, 8(%r13)
	movq	16(%rcx), %rdi
	movl	$16, %edx
	leaq	-144(%rbp), %rsi
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB48_63
	jmp	.LBB48_65
.LBB48_60:                              #   in Loop: Header=BB48_48 Depth=1
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB48_64
# %bb.61:                               #   in Loop: Header=BB48_48 Depth=1
	movq	16(%rcx), %rdi
	movl	$16, %edx
	leaq	-144(%rbp), %rsi
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB48_63:                              #   in Loop: Header=BB48_48 Depth=1
	callq	sdsempty
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	jmp	.LBB48_67
.LBB48_64:                              #   in Loop: Header=BB48_48 Depth=1
	addq	$1, 8(%r13)
	movq	16(%rcx), %rdi
	movl	$16, %edx
	leaq	-144(%rbp), %rsi
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB48_65:                              #   in Loop: Header=BB48_48 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rsi
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	$0, 24(%rsp)
	movl	$2, 16(%rsp)
	movl	$1, %r8d
	movq	%r15, %rdi
	leaq	-128(%rbp), %rcx
	movq	%rcx, %rdx
	xorl	%r9d, %r9d
	callq	streamReplyWithRange
	testq	%rax, %rax
	jne	.LBB48_67
# %bb.66:                               #   in Loop: Header=BB48_48 Depth=1
	movq	shared+80(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB48_67:                              #   in Loop: Header=BB48_48 Depth=1
	addq	$1, -88(%rbp)           # 8-byte Folded Spill
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rcx
	movq	(%rax,%r12,8), %r8
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r13, %r9
	callq	streamPropagateXCLAIM
	addq	$1, server+2080(%rip)
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB48_68
.LBB48_81:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB48_69:
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB48_71
# %bb.70:
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rcx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	streamPropagateGroupID
	addq	$1, server+2080(%rip)
.LBB48_71:
	movq	%r15, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	movq	%r15, %rdi
	callq	preventCommandPropagation
	jmp	.LBB48_72
.LBB48_46:
	movl	$.L.str.69, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB48_72
.LBB48_82:
	movl	$.L.str.1, %edi
	movl	$.L.str.70, %edx
	movl	$2232, %esi             # imm = 0x8B8
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end48:
	.size	xclaimCommand, .Lfunc_end48-xclaimCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI48_0:
	.quad	.LBB48_7
	.quad	.LBB48_8
	.quad	.LBB48_9
	.quad	.LBB48_10
	.quad	.LBB48_11
                                        # -- End function
	.text
	.globl	xdelCommand             # -- Begin function xdelCommand
	.p2align	4, 0x90
	.type	xdelCommand,@function
xdelCommand:                            # @xdelCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB49_13
# %bb.1:
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB49_13
# %bb.2:
	cmpl	$3, 64(%r13)
	jl	.LBB49_11
# %bb.3:                                # %.preheader
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$2, %ebx
	leaq	-72(%rbp), %r14
	.p2align	4, 0x90
.LBB49_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r13), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	testl	%eax, %eax
	jne	.LBB49_13
# %bb.5:                                #   in Loop: Header=BB49_4 Depth=1
	addq	$1, %rbx
	movslq	64(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB49_4
# %bb.6:
	xorl	%ebx, %ebx
	cmpl	$3, %eax
	jl	.LBB49_12
# %bb.7:
	movl	$2, %r15d
	leaq	-96(%rbp), %r14
	jmp	.LBB49_9
	.p2align	4, 0x90
.LBB49_8:                               #   in Loop: Header=BB49_9 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addl	%eax, %ebx
	leaq	-648(%rbp), %rdi
	callq	raxStop
	addq	$1, %r15
	movslq	64(%r13), %rax
	cmpq	%rax, %r15
	jge	.LBB49_14
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	72(%r13), %rax
	movq	(%rax,%r15,8), %rsi
	movq	%r13, %rdi
	leaq	-72(%rbp), %r12
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	streamGenericParseIDOrReply
	leaq	-736(%rbp), %rbx
	movq	%rbx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	callq	streamIteratorStart
	movq	%rbx, %rdi
	movq	%r14, %rsi
	leaq	-80(%rbp), %rdx
	callq	streamIteratorGetID
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB49_8
# %bb.10:                               #   in Loop: Header=BB49_9 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	streamIteratorRemoveEntry
	movl	$1, %eax
	jmp	.LBB49_8
.LBB49_14:
	testl	%ebx, %ebx
	je	.LBB49_11
# %bb.15:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.71, %esi
	movl	$1024, %edi             # imm = 0x400
	callq	notifyKeyspaceEvent
	movl	%ebx, %ebx
	addq	%rbx, server+2080(%rip)
	jmp	.LBB49_12
.LBB49_11:
	xorl	%ebx, %ebx
.LBB49_12:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyLongLong
.LBB49_13:
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	xdelCommand, .Lfunc_end49-xdelCommand
                                        # -- End function
	.globl	xtrimCommand            # -- Begin function xtrimCommand
	.p2align	4, 0x90
	.type	xtrimCommand,@function
xtrimCommand:                           # @xtrimCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB50_26
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB50_26
# %bb.2:
	movq	8(%rbx), %rax
	movq	$-1, -64(%rbp)
	movl	64(%r15), %r12d
	cmpl	$3, %r12d
	jl	.LBB50_21
# %bb.3:                                # %.preheader
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$2, %r14d
	movq	%r15, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB50_5:                               # =>This Inner Loop Header: Depth=1
	movl	%r14d, %r13d
	notl	%r13d
	movq	72(%r15), %rax
	movslq	%r14d, %r15
	movq	%rax, %rbx
	movq	(%rax,%r15,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.23, %esi
	callq	strcasecmp
	addl	%r12d, %r13d
	je	.LBB50_20
# %bb.6:                                #   in Loop: Header=BB50_5 Depth=1
	testl	%eax, %eax
	jne	.LBB50_20
# %bb.7:                                #   in Loop: Header=BB50_5 Depth=1
	xorl	%r12d, %r12d
	cmpl	$2, %r13d
	jl	.LBB50_8
# %bb.9:                                #   in Loop: Header=BB50_5 Depth=1
	leal	1(%r15), %r13d
	movq	8(%rbx,%r15,8), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	cmpb	$61, %cl
	je	.LBB50_14
# %bb.10:                               #   in Loop: Header=BB50_5 Depth=1
	cmpb	$126, %cl
	movq	-48(%rbp), %r15         # 8-byte Reload
	jne	.LBB50_15
# %bb.11:                               #   in Loop: Header=BB50_5 Depth=1
	xorl	%r12d, %r12d
	cmpb	$0, 1(%rax)
	sete	%al
	je	.LBB50_13
# %bb.12:                               #   in Loop: Header=BB50_5 Depth=1
	movl	%r14d, %r13d
.LBB50_13:                              #   in Loop: Header=BB50_5 Depth=1
	movb	%al, %r12b
	jmp	.LBB50_16
	.p2align	4, 0x90
.LBB50_8:                               #   in Loop: Header=BB50_5 Depth=1
	movl	%r14d, %r13d
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB50_16
.LBB50_14:                              #   in Loop: Header=BB50_5 Depth=1
	cmpb	$0, 1(%rax)
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB50_16
.LBB50_15:                              #   in Loop: Header=BB50_5 Depth=1
	movl	%r14d, %r13d
.LBB50_16:                              #   in Loop: Header=BB50_5 Depth=1
	movslq	%r13d, %rax
	movq	8(%rbx,%rax,8), %rsi
	movq	%r15, %rdi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB50_26
# %bb.17:                               #   in Loop: Header=BB50_5 Depth=1
	movq	-64(%rbp), %rsi
	testq	%rsi, %rsi
	js	.LBB50_18
# %bb.4:                                #   in Loop: Header=BB50_5 Depth=1
	movl	%r12d, %ebx
	leal	2(%r13), %r14d
	movl	64(%r15), %r12d
	cmpl	%r12d, %r14d
	jl	.LBB50_5
# %bb.22:
	movq	%r13, %r14
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	streamTrimByLength
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB50_25
# %bb.23:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.28, %esi
	movl	$1024, %edi             # imm = 0x400
	callq	notifyKeyspaceEvent
	addq	%r13, server+2080(%rip)
	testl	%ebx, %ebx
	je	.LBB50_25
# %bb.24:
	leal	1(%r14), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	8(%r12), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %rbx
	movl	$.L.str.22, %edi
	movl	$1, %esi
	callq	createStringObject
	movq	%rax, %r12
	movq	%r15, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	%rbx, %rdx
	callq	rewriteClientCommandArgument
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	rewriteClientCommandArgument
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB50_25:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	addReplyLongLong
	jmp	.LBB50_26
.LBB50_21:
	movl	$.L.str.72, %esi
.LBB50_19:
	movq	%r15, %rdi
	callq	addReplyError
.LBB50_26:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_20:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB50_26
.LBB50_18:
	movl	$.L.str.24, %esi
	jmp	.LBB50_19
.Lfunc_end50:
	.size	xtrimCommand, .Lfunc_end50-xtrimCommand
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function xinfoCommand
.LCPI51_0:
	.zero	16
	.text
	.globl	xinfoCommand
	.p2align	4, 0x90
	.type	xinfoCommand,@function
xinfoCommand:                           # @xinfoCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
	movq	%rdi, %r13
	movq	$0, -80(%rbp)
	movl	$.L.str.74, %eax
	movq	%rax, %xmm0
	movl	$.L.str.73, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -112(%rbp)
	movl	$.L.str.76, %eax
	movq	%rax, %xmm0
	movl	$.L.str.75, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -96(%rbp)
	movq	72(%rdi), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %r12
	movl	$.L.str.60, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB51_1
# %bb.2:
	cmpl	$2, 64(%r13)
	jg	.LBB51_4
# %bb.3:
	movl	$.L.str.77, %esi
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB51_49
.LBB51_1:
	leaq	-112(%rbp), %rsi
	movq	%r13, %rdi
	callq	addReplyHelp
	jmp	.LBB51_49
.LBB51_4:
	movq	16(%rbx), %r15
	movq	shared+120(%rip), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB51_49
# %bb.5:
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB51_49
# %bb.6:
	movq	8(%r14), %r14
	movl	$.L.str.78, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB51_32
# %bb.7:
	cmpl	$4, 64(%r13)
	jne	.LBB51_32
# %bb.8:
	movq	72(%r13), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB51_20
# %bb.9:
	movzbl	-1(%rdx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB51_10
# %bb.11:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI51_0(,%rcx,8)
.LBB51_12:
	shrq	$3, %rax
	jmp	.LBB51_17
.LBB51_32:
	movl	$.L.str.82, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB51_39
# %bb.33:
	cmpl	$3, 64(%r13)
	jne	.LBB51_39
# %bb.34:
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB51_35
# %bb.36:
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyMultiBulkLen
	movq	32(%r14), %rsi
	leaq	-592(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB51_31
# %bb.37:
	leaq	-592(%rbp), %r14
.LBB51_38:                              # =>This Inner Loop Header: Depth=1
	movq	-568(%rbp), %rbx
	movl	$8, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.79, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	-576(%rbp), %rsi
	movq	-560(%rbp), %rdx
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movl	$.L.str.83, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	24(%rbx), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movl	$.L.str.80, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	16(%rbx), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movl	$.L.str.84, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	callq	sdsempty
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movq	%r14, %rdi
	callq	raxNext
	testl	%eax, %eax
	jne	.LBB51_38
	jmp	.LBB51_31
.LBB51_39:
	movl	$.L.str.85, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB51_48
# %bb.40:
	cmpl	$3, 64(%r13)
	jne	.LBB51_48
# %bb.41:
	movl	$14, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.86, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	8(%r14), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movl	$.L.str.87, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	(%r14), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movl	$.L.str.88, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	(%r14), %rax
	movq	16(%rax), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movl	$.L.str.89, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB51_42
# %bb.43:
	callq	raxSize
	movq	%rax, %rsi
	jmp	.LBB51_44
.LBB51_48:
	movq	%r13, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB51_49
.LBB51_35:
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	addReplyMultiBulkLen
	jmp	.LBB51_49
.LBB51_42:
	xorl	%esi, %esi
.LBB51_44:
	movq	%r13, %rdi
	callq	addReplyLongLong
	movl	$.L.str.90, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	callq	sdsempty
	movq	16(%r14), %rdx
	movq	24(%r14), %rcx
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -592(%rbp)
	pcmpeqd	%xmm0, %xmm0
	movdqa	%xmm0, -64(%rbp)
	movl	$.L.str.91, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsp)
	movq	$0, 24(%rsp)
	movl	$2, 16(%rsp)
	leaq	-592(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movl	$1, %r8d
	movq	%r13, %rdi
	movq	%r14, %rsi
	xorl	%r9d, %r9d
	callq	streamReplyWithRange
	testl	%eax, %eax
	jne	.LBB51_46
# %bb.45:
	movq	shared+80(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
.LBB51_46:
	movl	$.L.str.92, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rsp)
	movq	$0, 24(%rsp)
	movl	$2, 16(%rsp)
	leaq	-592(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movl	$1, %r8d
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$1, %r9d
	callq	streamReplyWithRange
	testl	%eax, %eax
	jne	.LBB51_49
# %bb.47:
	movq	shared+80(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	jmp	.LBB51_49
.LBB51_10:
	xorl	%eax, %eax
	jmp	.LBB51_17
.LBB51_13:
	movzbl	-3(%rdx), %eax
	jmp	.LBB51_17
.LBB51_14:
	movzwl	-5(%rdx), %eax
	jmp	.LBB51_17
.LBB51_15:
	movl	-9(%rdx), %eax
	jmp	.LBB51_17
.LBB51_16:
	movq	-17(%rdx), %rax
.LBB51_17:
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	raxFind
	testq	%rax, %rax
	je	.LBB51_19
# %bb.18:
	movq	%rax, %rbx
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB51_19
# %bb.21:
	movq	24(%rbx), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyMultiBulkLen
	movq	24(%rbx), %rsi
	leaq	-592(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	callq	mstime
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB51_31
# %bb.22:
	leaq	-592(%rbp), %r15
	jmp	.LBB51_23
.LBB51_29:                              #   in Loop: Header=BB51_23 Depth=1
	movq	-17(%rsi), %rdx
.LBB51_30:                              #   in Loop: Header=BB51_23 Depth=1
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movl	$.L.str.80, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	16(%rbx), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movl	$.L.str.81, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	addReplyLongLong
	movq	%r15, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB51_31
.LBB51_23:                              # =>This Inner Loop Header: Depth=1
	movq	-568(%rbp), %rbx
	movq	%r14, %r12
	subq	(%rbx), %r12
	movl	$0, %eax
	cmovsq	%rax, %r12
	movl	$6, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.79, %esi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$0, %edx
	cmpb	$4, %cl
	ja	.LBB51_30
# %bb.24:                               #   in Loop: Header=BB51_23 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI51_1(,%rcx,8)
.LBB51_25:                              #   in Loop: Header=BB51_23 Depth=1
	shrq	$3, %rax
	movq	%rax, %rdx
	jmp	.LBB51_30
.LBB51_26:                              #   in Loop: Header=BB51_23 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB51_30
.LBB51_27:                              #   in Loop: Header=BB51_23 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB51_30
.LBB51_28:                              #   in Loop: Header=BB51_23 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB51_30
.LBB51_31:
	leaq	-592(%rbp), %rdi
	callq	raxStop
	jmp	.LBB51_49
.LBB51_19:
	movq	72(%r13), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
.LBB51_20:
	movq	8(%r15), %rcx
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB51_49:
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	xinfoCommand, .Lfunc_end51-xinfoCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI51_0:
	.quad	.LBB51_12
	.quad	.LBB51_13
	.quad	.LBB51_14
	.quad	.LBB51_15
	.quad	.LBB51_16
.LJTI51_1:
	.quad	.LBB51_25
	.quad	.LBB51_26
	.quad	.LBB51_27
	.quad	.LBB51_28
	.quad	.LBB51_29
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"retval != 0"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_stream.c"
	.size	.L.str.1, 76

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"- [%d] '%.*s'"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"$"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ri.key_len == sizeof(rax_key)"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"^"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	">="
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"to_delete < entries"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<="
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"si->ri.key_len == sizeof(streamID)"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%U-%U"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"XCLAIM"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"TIME"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"RETRYCOUNT"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"FORCE"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"JUSTID"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"LASTID"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"XGROUP"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"SETID"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"nack != raxNotFound"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"NACK half-created. Should not be possible."
	.size	.L.str.20, 43

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid stream ID specified as stream command argument"
	.size	.L.str.21, 55

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"="
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"maxlen"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The MAXLEN argument must be >= 0."
	.size	.L.str.24, 34

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"wrong number of arguments for XADD"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The ID specified in XADD is equal or smaller than the target stream top item"
	.size	.L.str.26, 77

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"xadd"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"xtrim"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"COUNT"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"BLOCK"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"STREAMS"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Unbalanced XREAD list of streams: for each stream key an ID or '$' must be specified."
	.size	.L.str.32, 86

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GROUP"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The GROUP option is only supported by XREADGROUP. You called XREAD instead."
	.size	.L.str.34, 76

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"NOACK"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"The NOACK option is only supported by XREADGROUP. You called XREAD instead."
	.size	.L.str.36, 76

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Missing GROUP option for XREADGROUP"
	.size	.L.str.37, 36

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"-NOGROUP No such key '%s' or consumer group '%s' in XREADGROUP with GROUP option"
	.size	.L.str.38, 81

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The $ ID is meaningless in the context of XREADGROUP: you want to read the history of this consumer by specifying a proper ID, or use the > ID to get new messages. The $ ID would just return an empty result set."
	.size	.L.str.39, 212

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	">"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The > ID can be specified only when calling XREADGROUP using the GROUP <group> <consumer> option."
	.size	.L.str.41, 98

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"CREATE      <key> <groupname> <id or $> [opt] -- Create a new consumer group."
	.size	.L.str.42, 78

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"            option MKSTREAM: create the empty stream if it does not exist."
	.size	.L.str.43, 75

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"SETID       <key> <groupname> <id or $>  -- Set the current group ID."
	.size	.L.str.44, 70

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"DESTROY     <key> <groupname>            -- Remove the specified group."
	.size	.L.str.45, 72

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"DELCONSUMER <key> <groupname> <consumer> -- Remove the specified consumer."
	.size	.L.str.46, 75

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"HELP                                     -- Prints this help."
	.size	.L.str.47, 62

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"CREATE"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"MKSTREAM"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The XGROUP subcommand requires the key to exist. Note that for CREATE you may want to use the MKSTREAM option to create an empty stream automatically."
	.size	.L.str.50, 151

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"DELCONSUMER"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"-NOGROUP No such consumer group '%s' for key name '%s'"
	.size	.L.str.52, 55

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"mkstream"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"xgroup-create"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"-BUSYGROUP Consumer Group name already exists\r\n"
	.size	.L.str.55, 48

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"xgroup-setid"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"DESTROY"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"xgroup-destroy"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"xgroup-delconsumer"
	.size	.L.str.59, 19

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"HELP"
	.size	.L.str.60, 5

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"The ID specified in XSETID is smaller than the target stream top item"
	.size	.L.str.61, 70

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"xsetid"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"-NOGROUP No such key '%s' or consumer group '%s'"
	.size	.L.str.63, 49

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Invalid min-idle-time argument for XCLAIM"
	.size	.L.str.64, 42

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"IDLE"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Invalid IDLE option argument for XCLAIM"
	.size	.L.str.66, 40

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Invalid TIME option argument for XCLAIM"
	.size	.L.str.67, 40

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Invalid RETRYCOUNT option argument for XCLAIM"
	.size	.L.str.68, 46

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Unrecognized XCLAIM option '%s'"
	.size	.L.str.69, 32

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"StreamID invalid after check. Should not be possible."
	.size	.L.str.70, 54

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"xdel"
	.size	.L.str.71, 5

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"XTRIM called without an option to trim the stream"
	.size	.L.str.72, 50

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"CONSUMERS <key> <groupname>  -- Show consumer groups of group <groupname>."
	.size	.L.str.73, 75

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GROUPS <key>                 -- Show the stream consumer groups."
	.size	.L.str.74, 65

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"STREAM <key>                 -- Show information about the stream."
	.size	.L.str.75, 67

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"HELP                         -- Print this help."
	.size	.L.str.76, 49

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"syntax error, try 'XINFO HELP'"
	.size	.L.str.77, 31

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"CONSUMERS"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"name"
	.size	.L.str.79, 5

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"pending"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"idle"
	.size	.L.str.81, 5

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"GROUPS"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"consumers"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"last-delivered-id"
	.size	.L.str.84, 18

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"STREAM"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"length"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"radix-tree-keys"
	.size	.L.str.87, 16

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"radix-tree-nodes"
	.size	.L.str.88, 17

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"groups"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"last-generated-id"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"first-entry"
	.size	.L.str.91, 12

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"last-entry"
	.size	.L.str.92, 11

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
