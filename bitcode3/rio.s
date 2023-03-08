	.text
	.file	"rio.c"
	.globl	rioInitWithBuffer       # -- Begin function rioInitWithBuffer
	.p2align	4, 0x90
	.type	rioInitWithBuffer,@function
rioInitWithBuffer:                      # @rioInitWithBuffer
# %bb.0:
	movups	rioBufferIO+64(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movq	rioBufferIO+96(%rip), %rax
	movq	%rax, 96(%rdi)
	movups	rioBufferIO+80(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movups	rioBufferIO+48(%rip), %xmm0
	movups	%xmm0, 48(%rdi)
	movups	rioBufferIO+32(%rip), %xmm0
	movups	%xmm0, 32(%rdi)
	movups	rioBufferIO+16(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movups	rioBufferIO(%rip), %xmm0
	movups	%xmm0, (%rdi)
	movq	%rsi, 64(%rdi)
	movq	$0, 72(%rdi)
	retq
.Lfunc_end0:
	.size	rioInitWithBuffer, .Lfunc_end0-rioInitWithBuffer
                                        # -- End function
	.globl	rioInitWithFile         # -- Begin function rioInitWithFile
	.p2align	4, 0x90
	.type	rioInitWithFile,@function
rioInitWithFile:                        # @rioInitWithFile
# %bb.0:
	movups	rioFileIO+64(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	rioFileIO+80(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movq	rioFileIO+96(%rip), %rax
	movq	%rax, 96(%rdi)
	movups	rioFileIO+48(%rip), %xmm0
	movups	%xmm0, 48(%rdi)
	movups	rioFileIO+32(%rip), %xmm0
	movups	%xmm0, 32(%rdi)
	movups	rioFileIO+16(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movups	rioFileIO(%rip), %xmm0
	movups	%xmm0, (%rdi)
	movq	%rsi, 64(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rdi)
	retq
.Lfunc_end1:
	.size	rioInitWithFile, .Lfunc_end1-rioInitWithFile
                                        # -- End function
	.globl	rioInitWithFdset        # -- Begin function rioInitWithFdset
	.p2align	4, 0x90
	.type	rioInitWithFdset,@function
rioInitWithFdset:                       # @rioInitWithFdset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	rioFdsetIO+96(%rip), %rax
	movq	%rax, 96(%rdi)
	movups	rioFdsetIO+80(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movups	rioFdsetIO+64(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	rioFdsetIO+48(%rip), %xmm0
	movups	%xmm0, 48(%rdi)
	movups	rioFdsetIO+32(%rip), %xmm0
	movups	%xmm0, 32(%rdi)
	movups	rioFdsetIO+16(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movups	rioFdsetIO(%rip), %xmm0
	movups	%xmm0, (%rdi)
	movslq	%edx, %r13
	leaq	(,%r13,4), %r12
	movq	%r12, %rdi
	callq	zmalloc
	movq	%rax, 64(%rbx)
	movq	%r12, %rdi
	callq	zmalloc
	movq	%rax, 72(%rbx)
	movq	64(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	testl	%r13d, %r13d
	jle	.LBB2_7
# %bb.1:
	movl	%r14d, %edx
	leaq	-1(%rdx), %rcx
	movl	%edx, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	.LBB2_3
# %bb.2:
	xorl	%ecx, %ecx
	jmp	.LBB2_5
.LBB2_3:
	subq	%rax, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %rsi
	movl	$0, (%rsi,%rcx,4)
	movq	72(%rbx), %rsi
	movl	$0, 4(%rsi,%rcx,4)
	movq	72(%rbx), %rsi
	movl	$0, 8(%rsi,%rcx,4)
	movq	72(%rbx), %rsi
	movl	$0, 12(%rsi,%rcx,4)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB2_4
.LBB2_5:
	testq	%rax, %rax
	je	.LBB2_7
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %rdx
	movl	$0, (%rdx,%rcx,4)
	addq	$1, %rcx
	addq	$-1, %rax
	jne	.LBB2_6
.LBB2_7:
	movl	%r14d, 80(%rbx)
	movq	$0, 88(%rbx)
	callq	sdsempty
	movq	%rax, 96(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rioInitWithFdset, .Lfunc_end2-rioInitWithFdset
                                        # -- End function
	.globl	rioFreeFdset            # -- Begin function rioFreeFdset
	.p2align	4, 0x90
	.type	rioFreeFdset,@function
rioFreeFdset:                           # @rioFreeFdset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	64(%rdi), %rdi
	callq	zfree
	movq	72(%rbx), %rdi
	callq	zfree
	movq	96(%rbx), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.Lfunc_end3:
	.size	rioFreeFdset, .Lfunc_end3-rioFreeFdset
                                        # -- End function
	.globl	rioGenericUpdateChecksum # -- Begin function rioGenericUpdateChecksum
	.p2align	4, 0x90
	.type	rioGenericUpdateChecksum,@function
rioGenericUpdateChecksum:               # @rioGenericUpdateChecksum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	callq	crc64
	movq	%rax, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rioGenericUpdateChecksum, .Lfunc_end4-rioGenericUpdateChecksum
                                        # -- End function
	.globl	rioSetAutoSync          # -- Begin function rioSetAutoSync
	.p2align	4, 0x90
	.type	rioSetAutoSync,@function
rioSetAutoSync:                         # @rioSetAutoSync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$rioFileRead, %eax
	cmpq	%rax, (%rdi)
	jne	.LBB5_2
# %bb.1:
	movq	%rsi, 80(%rdi)
	popq	%rbp
	retq
.LBB5_2:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$303, %edx              # imm = 0x12F
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end5:
	.size	rioSetAutoSync, .Lfunc_end5-rioSetAutoSync
                                        # -- End function
	.globl	rioWriteBulkCount       # -- Begin function rioWriteBulkCount
	.p2align	4, 0x90
	.type	rioWriteBulkCount,@function
rioWriteBulkCount:                      # @rioWriteBulkCount
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %r15
	movb	%sil, -176(%rbp)
	leaq	-175(%rbp), %rdi
	movl	$127, %esi
	callq	ll2string
	cltq
	leaq	-176(%rbp), %r12
	movw	$2573, 1(%rax,%r12)     # imm = 0xA0D
	addl	$3, %eax
	je	.LBB6_7
# %bb.1:
	movslq	%eax, %r14
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%r15), %rax
	movq	56(%r15), %rcx
	cmpq	%r13, %rcx
	movq	%r13, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r13, %rbx
	testq	%rax, %rax
	je	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r15)
	testq	%rax, %rax
	je	.LBB6_7
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	jne	.LBB6_2
	jmp	.LBB6_8
.LBB6_7:
	xorl	%r14d, %r14d
.LBB6_8:
	movq	%r14, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rioWriteBulkCount, .Lfunc_end6-rioWriteBulkCount
                                        # -- End function
	.globl	rioWriteBulkString      # -- Begin function rioWriteBulkString
	.p2align	4, 0x90
	.type	rioWriteBulkString,@function
rioWriteBulkString:                     # @rioWriteBulkString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r13
	movb	$36, -192(%rbp)
	leaq	-191(%rbp), %rdi
	movl	$127, %esi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	ll2string
	cltq
	leaq	-192(%rbp), %r12
	movw	$2573, 1(%rax,%r12)     # imm = 0xA0D
	addl	$3, %eax
	je	.LBB7_19
# %bb.1:
	movslq	%eax, %r14
	movq	%r14, %rax
	movq	%r14, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB7_19
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB7_2
# %bb.6:
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB7_12
# %bb.7:                                # %.preheader
	xorl	%r12d, %r12d
	movq	-48(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_10:                               #   in Loop: Header=BB7_8 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB7_18
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB7_8
.LBB7_12:
	movl	$.L.str.2, %r15d
	movl	$2, %r14d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_15:                               #   in Loop: Header=BB7_13 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB7_18
# %bb.16:                               #   in Loop: Header=BB7_13 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB7_13
# %bb.17:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	addq	$2, %r12
	jmp	.LBB7_18
.LBB7_19:
	xorl	%r12d, %r12d
.LBB7_18:
	movq	%r12, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rioWriteBulkString, .Lfunc_end7-rioWriteBulkString
                                        # -- End function
	.globl	rioWriteBulkLongLong    # -- Begin function rioWriteBulkLongLong
	.p2align	4, 0x90
	.type	rioWriteBulkLongLong,@function
rioWriteBulkLongLong:                   # @rioWriteBulkLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r14
	movl	$32, %esi
	movq	%r14, %rdi
	callq	ll2string
	movl	%eax, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	rioWriteBulkString
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rioWriteBulkLongLong, .Lfunc_end8-rioWriteBulkLongLong
                                        # -- End function
	.globl	rioWriteBulkDouble      # -- Begin function rioWriteBulkDouble
	.p2align	4, 0x90
	.type	rioWriteBulkDouble,@function
rioWriteBulkDouble:                     # @rioWriteBulkDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %rbx
	leaq	-144(%rbp), %r14
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movb	$1, %al
	callq	snprintf
	movl	%eax, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	rioWriteBulkString
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rioWriteBulkDouble, .Lfunc_end9-rioWriteBulkDouble
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioBufferRead
	.type	rioBufferRead,@function
rioBufferRead:                          # @rioBufferRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	64(%rdi), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB10_1
# %bb.2:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI10_0(,%rdx,8)
.LBB10_3:
	shrq	$3, %rcx
	jmp	.LBB10_8
.LBB10_1:
	xorl	%ecx, %ecx
	jmp	.LBB10_8
.LBB10_4:
	movzbl	-3(%rax), %ecx
	jmp	.LBB10_8
.LBB10_5:
	movzwl	-5(%rax), %ecx
	jmp	.LBB10_8
.LBB10_6:
	movl	-9(%rax), %ecx
	jmp	.LBB10_8
.LBB10_7:
	movq	-17(%rax), %rcx
.LBB10_8:
	movq	72(%rbx), %rdx
	subq	%rdx, %rcx
	cmpq	%r14, %rcx
	jae	.LBB10_10
# %bb.9:
	xorl	%eax, %eax
	jmp	.LBB10_11
.LBB10_10:
	addq	%rdx, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 72(%rbx)
	movl	$1, %eax
.LBB10_11:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	rioBufferRead, .Lfunc_end10-rioBufferRead
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5
	.quad	.LBB10_6
	.quad	.LBB10_7
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function rioBufferWrite
	.type	rioBufferWrite,@function
rioBufferWrite:                         # @rioBufferWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	64(%rdi), %rdi
	callq	sdscatlen
	movq	%rax, 64(%rbx)
	addq	%r14, 72(%rbx)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rioBufferWrite, .Lfunc_end11-rioBufferWrite
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioBufferTell
	.type	rioBufferTell,@function
rioBufferTell:                          # @rioBufferTell
# %bb.0:
	movq	72(%rdi), %rax
	retq
.Lfunc_end12:
	.size	rioBufferTell, .Lfunc_end12-rioBufferTell
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioBufferFlush
	.type	rioBufferFlush,@function
rioBufferFlush:                         # @rioBufferFlush
# %bb.0:
	movl	$1, %eax
	retq
.Lfunc_end13:
	.size	rioBufferFlush, .Lfunc_end13-rioBufferFlush
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFileRead
	.type	rioFileRead,@function
rioFileRead:                            # @rioFileRead
# %bb.0:
	movq	%rdx, %rax
	movq	64(%rdi), %rcx
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	fread                   # TAILCALL
.Lfunc_end14:
	.size	rioFileRead, .Lfunc_end14-rioFileRead
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFileWrite
	.type	rioFileWrite,@function
rioFileWrite:                           # @rioFileWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	64(%rdi), %rcx
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	fwrite
	addq	72(%r15), %rbx
	movq	%rax, %r14
	movq	%rbx, 72(%r15)
	movq	80(%r15), %rax
	testq	%rax, %rax
	je	.LBB15_3
# %bb.1:
	cmpq	%rax, %rbx
	jl	.LBB15_3
# %bb.2:
	movq	64(%r15), %rdi
	callq	fflush
	movq	64(%r15), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	fsync
	movq	$0, 72(%r15)
.LBB15_3:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rioFileWrite, .Lfunc_end15-rioFileWrite
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFileTell
	.type	rioFileTell,@function
rioFileTell:                            # @rioFileTell
# %bb.0:
	movq	64(%rdi), %rdi
	jmp	ftello                  # TAILCALL
.Lfunc_end16:
	.size	rioFileTell, .Lfunc_end16-rioFileTell
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFileFlush
	.type	rioFileFlush,@function
rioFileFlush:                           # @rioFileFlush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	64(%rdi), %rdi
	callq	fflush
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	rioFileFlush, .Lfunc_end17-rioFileFlush
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFdsetRead
	.type	rioFdsetRead,@function
rioFdsetRead:                           # @rioFdsetRead
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	rioFdsetRead, .Lfunc_end18-rioFdsetRead
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFdsetWrite
	.type	rioFdsetWrite,@function
rioFdsetWrite:                          # @rioFdsetWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r13
	movq	%rsi, %rax
	orq	%rdx, %rax
	sete	%bl
	testq	%rdx, %rdx
	je	.LBB19_8
# %bb.1:
	movq	96(%r13), %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	%rax, 96(%r13)
	movb	-1(%rax), %dl
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	je	.LBB19_6
# %bb.2:
	cmpb	$3, %cl
	je	.LBB19_5
# %bb.3:
	cmpb	$2, %cl
	jne	.LBB19_37
# %bb.4:
	movzwl	-5(%r14), %ecx
	jmp	.LBB19_7
.LBB19_8:
	testb	%bl, %bl
	movl	$1, %eax
	je	.LBB19_38
# %bb.9:
	movq	96(%r13), %r14
	movb	-1(%r14), %dl
	jmp	.LBB19_10
.LBB19_6:
	movq	-17(%r14), %rcx
	jmp	.LBB19_7
.LBB19_5:
	movl	-9(%r14), %ecx
.LBB19_7:
	cmpq	$16384, %rcx            # imm = 0x4000
	seta	%cl
	orb	%cl, %bl
	movl	$1, %eax
	je	.LBB19_38
.LBB19_10:
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB19_36
# %bb.11:
	movzbl	%dl, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI19_0(,%rcx,8)
.LBB19_12:
	shrb	$3, %dl
	movzbl	%dl, %ecx
	testq	%rcx, %rcx
	jne	.LBB19_18
	jmp	.LBB19_36
.LBB19_13:
	movzbl	-3(%r14), %ecx
	testq	%rcx, %rcx
	jne	.LBB19_18
	jmp	.LBB19_36
.LBB19_14:
	movzwl	-5(%r14), %ecx
	testq	%rcx, %rcx
	jne	.LBB19_18
	jmp	.LBB19_36
.LBB19_15:
	movl	-9(%r14), %ecx
	testq	%rcx, %rcx
	jne	.LBB19_18
	jmp	.LBB19_36
.LBB19_16:
	movq	-17(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB19_36
.LBB19_18:
	movl	80(%r13), %eax
	.p2align	4, 0x90
.LBB19_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_21 Depth 2
                                        #       Child Loop BB19_23 Depth 3
	cmpq	$1024, %rcx             # imm = 0x400
	movl	$1024, %ebx             # imm = 0x400
	cmovbq	%rcx, %rbx
	movl	$0, %edx
	testl	%eax, %eax
	jle	.LBB19_33
# %bb.20:                               # %.preheader1
                                        #   in Loop: Header=BB19_19 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	jmp	.LBB19_21
	.p2align	4, 0x90
.LBB19_39:                              #   in Loop: Header=BB19_21 Depth=2
	addl	$1, %edx
.LBB19_31:                              #   in Loop: Header=BB19_21 Depth=2
	addq	$1, %r12
	movslq	80(%r13), %rax
	cmpq	%rax, %r12
	jge	.LBB19_32
.LBB19_21:                              #   Parent Loop BB19_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_23 Depth 3
	movq	72(%r13), %rax
	cmpl	$0, (%rax,%r12,4)
	jne	.LBB19_39
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB19_21 Depth=2
	movl	%edx, -44(%rbp)         # 4-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB19_23:                              #   Parent Loop BB19_19 Depth=1
                                        #     Parent Loop BB19_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%r13), %rax
	movl	(%rax,%r12,4), %edi
	leaq	(%r14,%r15), %rsi
	movq	%rbx, %rdx
	subq	%r15, %rdx
	callq	write
	testq	%rax, %rax
	jle	.LBB19_24
# %bb.29:                               #   in Loop: Header=BB19_23 Depth=3
	addq	%rax, %r15
	cmpq	%r15, %rbx
	jne	.LBB19_23
	jmp	.LBB19_30
.LBB19_24:                              #   in Loop: Header=BB19_21 Depth=2
	cmpq	$-1, %rax
	jne	.LBB19_27
# %bb.25:                               #   in Loop: Header=BB19_21 Depth=2
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB19_27
# %bb.26:                               #   in Loop: Header=BB19_21 Depth=2
	callq	__errno
	movl	$116, (%rax)
.LBB19_27:                              #   in Loop: Header=BB19_21 Depth=2
	callq	__errno
	movl	(%rax), %eax
	movq	72(%r13), %rcx
	movl	%eax, (%rcx,%r12,4)
	movq	72(%r13), %rax
	cmpl	$0, (%rax,%r12,4)
	jne	.LBB19_30
# %bb.28:                               #   in Loop: Header=BB19_21 Depth=2
	movl	$5, (%rax,%r12,4)
	.p2align	4, 0x90
.LBB19_30:                              #   in Loop: Header=BB19_21 Depth=2
	movl	-44(%rbp), %edx         # 4-byte Reload
	jmp	.LBB19_31
	.p2align	4, 0x90
.LBB19_32:                              #   in Loop: Header=BB19_19 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB19_33:                              #   in Loop: Header=BB19_19 Depth=1
	cmpl	%eax, %edx
	je	.LBB19_34
# %bb.35:                               #   in Loop: Header=BB19_19 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 88(%r13)
	subq	%rbx, %rcx
	jne	.LBB19_19
.LBB19_36:
	movq	96(%r13), %rdi
	callq	sdsclear
.LBB19_37:
	movl	$1, %eax
.LBB19_38:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_34:
	xorl	%eax, %eax
	jmp	.LBB19_38
.Lfunc_end19:
	.size	rioFdsetWrite, .Lfunc_end19-rioFdsetWrite
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_12
	.quad	.LBB19_13
	.quad	.LBB19_14
	.quad	.LBB19_15
	.quad	.LBB19_16
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function rioFdsetTell
	.type	rioFdsetTell,@function
rioFdsetTell:                           # @rioFdsetTell
# %bb.0:
	movq	88(%rdi), %rax
	retq
.Lfunc_end20:
	.size	rioFdsetTell, .Lfunc_end20-rioFdsetTell
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFdsetFlush
	.type	rioFdsetFlush,@function
rioFdsetFlush:                          # @rioFdsetFlush
# %bb.0:
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	rioFdsetWrite           # TAILCALL
.Lfunc_end21:
	.size	rioFdsetFlush, .Lfunc_end21-rioFdsetFlush
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r->read == rioFileIO.read"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.c"
	.size	.L.str.1, 71

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\r\n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%.17g"
	.size	.L.str.3, 6

	.type	rioBufferIO,@object     # @rioBufferIO
	.section	.rodata,"a",@progbits
	.p2align	3
rioBufferIO:
	.quad	rioBufferRead
	.quad	rioBufferWrite
	.quad	rioBufferTell
	.quad	rioBufferFlush
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	16
	.zero	24
	.size	rioBufferIO, 104

	.type	rioFileIO,@object       # @rioFileIO
	.p2align	3
rioFileIO:
	.quad	rioFileRead
	.quad	rioFileWrite
	.quad	rioFileTell
	.quad	rioFileFlush
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	16
	.zero	24
	.size	rioFileIO, 104

	.type	rioFdsetIO,@object      # @rioFdsetIO
	.p2align	3
rioFdsetIO:
	.quad	rioFdsetRead
	.quad	rioFdsetWrite
	.quad	rioFdsetTell
	.quad	rioFdsetFlush
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	16
	.zero	24
	.size	rioFdsetIO, 104

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
