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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rbx), %rsi
	movl	$0, 4(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rbx), %rsi
	movl	$0, 8(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rbx), %rsi
	movl	$0, 12(%rsi,%rcx,4)
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	jne	.LBB2_6
.LBB2_7:
	movl	%r14d, 80(%rbx)
	movq	$0, 88(%rbx)
	callq	sdsempty
	movq	%rax, 96(%rbx)
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
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_2
# %bb.1:
	movq	%rsi, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movslq	%eax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB6_10
# %bb.1:
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB6_5
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r13, %rbx
.LBB6_5:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB6_7:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_9
# %bb.8:                                #   in Loop: Header=BB6_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	jne	.LBB6_2
	jmp	.LBB6_10
.LBB6_9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$40, %rsp
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$36, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_23
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB7_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	32(%r12), %r14
	leaq	48(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_5
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r15, %rbx
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_22
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=1
	addq	%rbx, %r13
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	jne	.LBB7_3
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_13
.LBB7_12:
	leaq	56(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	32(%r12), %r14
	leaq	48(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %r13d
	movl	$2, %r15d
	.p2align	4, 0x90
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB7_17
.LBB7_16:                               #   in Loop: Header=BB7_14 Depth=1
	movq	%r15, %rbx
.LBB7_17:                               #   in Loop: Header=BB7_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_14 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_19:                               #   in Loop: Header=BB7_14 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_22
# %bb.20:                               #   in Loop: Header=BB7_14 Depth=1
	addq	%rbx, %r13
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	jne	.LBB7_14
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	$2, %rax
	jmp	.LBB7_24
.LBB7_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_23:
	xorl	%eax, %eax
.LBB7_24:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rbx), %rdx
	subq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end12:
	.size	rioBufferTell, .Lfunc_end12-rioBufferTell
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioBufferFlush
	.type	rioBufferFlush,@function
rioBufferFlush:                         # @rioBufferFlush
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	retq
.Lfunc_end13:
	.size	rioBufferFlush, .Lfunc_end13-rioBufferFlush
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFileRead
	.type	rioFileRead,@function
rioFileRead:                            # @rioFileRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rax
	movq	64(%rdi), %rcx
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movq	%rax, %r14
	addq	72(%r15), %rbx
	movq	%rbx, 72(%r15)
	movq	80(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB15_3:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	movq	64(%rdi), %rdi
	callq	ftello
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB19_12
# %bb.1:
	movq	96(%r13), %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	%rax, 96(%r13)
	movb	-1(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	je	.LBB19_5
# %bb.2:
	cmpb	$3, %cl
	je	.LBB19_6
# %bb.3:
	cmpb	$2, %cl
	jne	.LBB19_9
# %bb.4:
	movzwl	-5(%r14), %ecx
	jmp	.LBB19_7
.LBB19_12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB19_11
# %bb.13:
	testq	%rdx, %rdx
	jne	.LBB19_11
# %bb.14:
	movq	96(%r13), %r14
	movb	-1(%r14), %al
	jmp	.LBB19_15
.LBB19_5:
	movq	-17(%r14), %rcx
	jmp	.LBB19_7
.LBB19_6:
	movl	-9(%r14), %ecx
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16385, %rcx            # imm = 0x4001
	jb	.LBB19_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB19_42
# %bb.16:
	movzbl	%al, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI19_0(,%rcx,8)
.LBB19_21:
	shrb	$3, %al
	movzbl	%al, %ecx
	jmp	.LBB19_22
.LBB19_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_44
.LBB19_17:
	movzbl	-3(%r14), %ecx
	jmp	.LBB19_22
.LBB19_18:
	movzwl	-5(%r14), %ecx
	jmp	.LBB19_22
.LBB19_19:
	movl	-9(%r14), %ecx
	jmp	.LBB19_22
.LBB19_20:
	movq	-17(%r14), %rcx
.LBB19_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB19_43
# %bb.23:
	movl	80(%r13), %eax
	.p2align	4, 0x90
.LBB19_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_27 Depth 2
                                        #       Child Loop BB19_30 Depth 3
	cmpq	$1024, %rcx             # imm = 0x400
	movl	$1024, %ebx             # imm = 0x400
	cmovbq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jle	.LBB19_25
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB19_24 Depth=1
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	jmp	.LBB19_27
	.p2align	4, 0x90
.LBB19_28:                              #   in Loop: Header=BB19_27 Depth=2
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB19_38:                              #   in Loop: Header=BB19_27 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jge	.LBB19_39
.LBB19_27:                              #   Parent Loop BB19_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_30 Depth 3
	movq	72(%r13), %rcx
	cmpl	$0, (%rcx,%r12,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_28
# %bb.29:                               #   in Loop: Header=BB19_27 Depth=2
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB19_30:                              #   Parent Loop BB19_24 Depth=1
                                        #     Parent Loop BB19_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%r13), %rax
	movl	(%rax,%r12,4), %edi
	leaq	(%r14,%r15), %rsi
	movq	%rbx, %rdx
	subq	%r15, %rdx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB19_31
# %bb.46:                               #   in Loop: Header=BB19_30 Depth=3
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jne	.LBB19_30
	jmp	.LBB19_36
.LBB19_31:                              #   in Loop: Header=BB19_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB19_34
# %bb.32:                               #   in Loop: Header=BB19_27 Depth=2
	callq	__errno
	cmpl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_34
# %bb.33:                               #   in Loop: Header=BB19_27 Depth=2
	callq	__errno
	movl	$116, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_34:                              #   in Loop: Header=BB19_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	(%rax), %eax
	movq	72(%r13), %rcx
	movl	%eax, (%rcx,%r12,4)
	movq	72(%r13), %rax
	cmpl	$0, (%rax,%r12,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_37
# %bb.35:                               #   in Loop: Header=BB19_27 Depth=2
	movl	$5, (%rax,%r12,4)
.LBB19_36:                              #   in Loop: Header=BB19_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB19_37:                              #   in Loop: Header=BB19_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	80(%r13), %eax
	movl	-44(%rbp), %edx         # 4-byte Reload
	jmp	.LBB19_38
	.p2align	4, 0x90
.LBB19_25:                              #   in Loop: Header=BB19_24 Depth=1
	xorl	%edx, %edx
.LBB19_39:                              #   in Loop: Header=BB19_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	je	.LBB19_40
# %bb.41:                               #   in Loop: Header=BB19_24 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 88(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rbx, %rcx
	jne	.LBB19_24
	jmp	.LBB19_43
.LBB19_40:
	xorl	%eax, %eax
	jmp	.LBB19_45
.LBB19_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_43:
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%r13), %rdi
	callq	sdsclear
.LBB19_44:
	movl	$1, %eax
.LBB19_45:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end19:
	.size	rioFdsetWrite, .Lfunc_end19-rioFdsetWrite
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_21
	.quad	.LBB19_17
	.quad	.LBB19_18
	.quad	.LBB19_19
	.quad	.LBB19_20
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function rioFdsetTell
	.type	rioFdsetTell,@function
rioFdsetTell:                           # @rioFdsetTell
# %bb.0:
	movq	88(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end20:
	.size	rioFdsetTell, .Lfunc_end20-rioFdsetTell
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioFdsetFlush
	.type	rioFdsetFlush,@function
rioFdsetFlush:                          # @rioFdsetFlush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rioFdsetWrite
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
