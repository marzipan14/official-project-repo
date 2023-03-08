	.text
	.file	"geo.c"
	.globl	geoArrayCreate          # -- Begin function geoArrayCreate
	.p2align	4, 0x90
	.type	geoArrayCreate,@function
geoArrayCreate:                         # @geoArrayCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$24, %edi
	callq	zmalloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	geoArrayCreate, .Lfunc_end0-geoArrayCreate
                                        # -- End function
	.globl	geoArrayAppend          # -- Begin function geoArrayAppend
	.p2align	4, 0x90
	.type	geoArrayAppend,@function
geoArrayAppend:                         # @geoArrayAppend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rcx
	cmpq	8(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_3
# %bb.4:
	addq	%rcx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_5
.LBB1_1:
	movq	(%rbx), %rax
	jmp	.LBB1_6
.LBB1_3:
	movl	$8, %ecx
.LBB1_5:
	movq	%rcx, 8(%rbx)
	movq	(%rbx), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rsi
	callq	zrealloc
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rcx
.LBB1_6:
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	addq	$1, %rcx
	movq	%rcx, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	geoArrayAppend, .Lfunc_end1-geoArrayAppend
                                        # -- End function
	.globl	geoArrayFree            # -- Begin function geoArrayFree
	.p2align	4, 0x90
	.type	geoArrayFree,@function
geoArrayFree:                           # @geoArrayFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 16(%rdi)
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_3
# %bb.1:                                # %.preheader
	movl	$32, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r15), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	addq	$40, %r15
	cmpq	16(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_2
.LBB2_3:
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	geoArrayFree, .Lfunc_end2-geoArrayFree
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function decodeGeohash
.LCPI3_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	decodeGeohash
	.p2align	4, 0x90
	.type	decodeGeohash,@function
decodeGeohash:                          # @decodeGeohash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rdi
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	decodeGeohash, .Lfunc_end3-decodeGeohash
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function extractLongLatOrReply
.LCPI4_0:
	.quad	-4582834833314545664    # double -180
.LCPI4_1:
	.quad	4640537203540230144     # double 180
.LCPI4_2:
	.quad	-4587686678794764544    # double -85.051128779999999
.LCPI4_3:
	.quad	4635685358060011264     # double 85.051128779999999
	.text
	.globl	extractLongLatOrReply
	.p2align	4, 0x90
	.type	extractLongLatOrReply,@function
extractLongLatOrReply:                  # @extractLongLatOrReply
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rsi
	xorl	%ecx, %ecx
	callq	getDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	testl	%eax, %eax
	jne	.LBB4_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rsi
	leaq	8(%r15), %r12
	movq	%r14, %rdi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	getDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB4_6
# %bb.3:
	ucomisd	.LCPI4_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB4_6
# %bb.4:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB4_6
# %bb.5:
	xorl	%r13d, %r13d
	ucomisd	.LCPI4_3(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB4_7
.LBB4_6:
	callq	sdsempty
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	movl	$.L.str, %esi
	movq	%rax, %rdi
	movb	$2, %al
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$-1, %r13d
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	extractLongLatOrReply, .Lfunc_end4-extractLongLatOrReply
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function longLatFromMember
.LCPI5_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	longLatFromMember
	.p2align	4, 0x90
	.type	longLatFromMember,@function
longLatFromMember:                      # @longLatFromMember
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	$0, -16(%rbp)
	movq	8(%rsi), %rsi
	leaq	-16(%rbp), %rdx
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB5_1
# %bb.2:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm1
	cmovbeq	%rcx, %rdi
	movl	$26, %esi
	movq	%rbx, %rdx
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	sbbl	%eax, %eax
	jmp	.LBB5_3
.LBB5_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	longLatFromMember, .Lfunc_end5-longLatFromMember
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function extractUnitOrReply
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4652007308841189376     # double 1000
.LCPI6_2:
	.quad	4599162408583596029     # double 0.30480000000000002
.LCPI6_3:
	.quad	4654792767618531983     # double 1609.3399999999999
.LCPI6_4:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	extractUnitOrReply
	.p2align	4, 0x90
	.type	extractUnitOrReply,@function
extractUnitOrReply:                     # @extractUnitOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	8(%rsi), %rbx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_1
# %bb.2:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_3
# %bb.4:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_5
# %bb.6:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_7
# %bb.8:
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	addReplyError
	movsd	.LCPI6_4(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB6_9
.LBB6_1:
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB6_9
.LBB6_3:
	movsd	.LCPI6_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB6_9
.LBB6_5:
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB6_9
.LBB6_7:
	movsd	.LCPI6_3(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB6_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	extractUnitOrReply, .Lfunc_end6-extractUnitOrReply
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function extractDistanceOrReply
.LCPI7_0:
	.quad	-4616189618054758400    # double -1
.LCPI7_1:
	.quad	0                       # double 0
	.text
	.globl	extractDistanceOrReply
	.p2align	4, 0x90
	.type	extractDistanceOrReply,@function
extractDistanceOrReply:                 # @extractDistanceOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rsi), %rsi
	leaq	-32(%rbp), %rdx
	movl	$.L.str.6, %ecx
	callq	getDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB7_9
# %bb.1:
	xorpd	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB7_3
# %bb.2:
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_9
.LBB7_3:
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	extractUnitOrReply
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB7_5
# %bb.4:
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_8
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_7
# %bb.6:
	movsd	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_7:
	mulsd	-32(%rbp), %xmm0
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	extractDistanceOrReply, .Lfunc_end7-extractDistanceOrReply
                                        # -- End function
	.globl	addReplyDoubleDistance  # -- Begin function addReplyDoubleDistance
	.p2align	4, 0x90
	.type	addReplyDoubleDistance,@function
addReplyDoubleDistance:                 # @addReplyDoubleDistance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %rbx
	leaq	-144(%rbp), %r14
	movl	$128, %esi
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	movb	$1, %al
	callq	snprintf
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	addReplyDoubleDistance, .Lfunc_end8-addReplyDoubleDistance
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geoAppendIfWithinRadius
.LCPI9_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	geoAppendIfWithinRadius
	.p2align	4, 0x90
	.type	geoAppendIfWithinRadius,@function
geoAppendIfWithinRadius:                # @geoAppendIfWithinRadius
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rsi, %r14
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rdi, %r15
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm3, %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm3, %rdi
	movsd	%xmm3, -56(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm3
	cmovaeq	%rcx, %rdi
	leaq	-48(%rbp), %rdx
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testl	%eax, %eax
	je	.LBB9_9
# %bb.1:
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	leaq	-88(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	geohashGetDistanceIfInRadiusWGS84
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_9
# %bb.2:
	movq	16(%r15), %rcx
	cmpq	8(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB9_5
# %bb.6:
	addq	%rcx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_7
.LBB9_3:
	movq	(%r15), %rax
	jmp	.LBB9_8
.LBB9_5:
	movl	$8, %ecx
.LBB9_7:
	movq	%rcx, 8(%r15)
	movq	(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rsi
	callq	zrealloc
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rcx
.LBB9_8:
	leaq	(%rcx,%rcx,4), %rdx
	addq	$1, %rcx
	movq	%rcx, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax,%rdx,8)
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax,%rdx,8)
	movq	-88(%rbp), %rcx
	movq	%rcx, 16(%rax,%rdx,8)
	movq	%r14, 32(%rax,%rdx,8)
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rax,%rdx,8)
	xorl	%ebx, %ebx
.LBB9_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	geoAppendIfWithinRadius, .Lfunc_end9-geoAppendIfWithinRadius
                                        # -- End function
	.globl	geoGetPointsInRange     # -- Begin function geoGetPointsInRange
	.p2align	4, 0x90
	.type	geoGetPointsInRange,@function
geoGetPointsInRange:                    # @geoGetPointsInRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsi, %r13
	movsd	%xmm4, -88(%rbp)        # 8-byte Spill
	movsd	%xmm3, -80(%rbp)        # 8-byte Spill
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm1, -128(%rbp)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, -120(%rbp)
	movq	16(%rsi), %r12
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB10_12
# %bb.1:
	movq	8(%rdi), %r14
	movq	$0, -104(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -96(%rbp)
	leaq	-136(%rbp), %rsi
	movq	%r14, %rdi
	callq	zzlFirstInRange
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_19
# %bb.2:
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	zzlGetScore
	leaq	-136(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	zslValueLteMax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_11
# %bb.3:                                # %.preheader
	leaq	-56(%rbp), %r15
	leaq	-112(%rbp), %r12
	.p2align	4, 0x90
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	ziplistGet
	movq	-104(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_6
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB10_7
	.p2align	4, 0x90
.LBB10_6:                               #   in Loop: Header=BB10_4 Depth=1
	movq	-96(%rbp), %rdi
	callq	sdsfromlonglong
.LBB10_7:                               #   in Loop: Header=BB10_4 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	geoAppendIfWithinRadius
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_4 Depth=1
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB10_9:                               #   in Loop: Header=BB10_4 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	zzlNext
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_4 Depth=1
	movq	-112(%rbp), %rdi
	callq	zzlGetScore
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	leaq	-136(%rbp), %rdi
	callq	zslValueLteMax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_4
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %r12        # 8-byte Reload
	jmp	.LBB10_23
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB10_24
# %bb.13:
	movq	8(%rdi), %rax
	movq	8(%rax), %rdi
	leaq	-136(%rbp), %rsi
	callq	zslFirstInRange
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_20
# %bb.14:                               # %.preheader1
	movq	%rax, %rbx
	leaq	-136(%rbp), %r14
	jmp	.LBB10_16
	.p2align	4, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_16 Depth=1
	movq	24(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_22
.LBB10_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	zslValueLteMax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_21
# %bb.17:                               #   in Loop: Header=BB10_16 Depth=1
	movq	%r15, %rdi
	callq	sdsdup
	movq	%rax, %r15
	movsd	8(%rbx), %xmm3          # xmm3 = mem[0],zero
	movq	%r13, %rdi
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %rsi
	callq	geoAppendIfWithinRadius
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_15
# %bb.18:                               #   in Loop: Header=BB10_16 Depth=1
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_15
.LBB10_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_20:
	xorl	%eax, %eax
	jmp	.LBB10_25
.LBB10_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_24:
	movl	16(%r13), %eax
	subl	%r12d, %eax
.LBB10_25:
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
.Lfunc_end10:
	.size	geoGetPointsInRange, .Lfunc_end10-geoGetPointsInRange
                                        # -- End function
	.globl	scoresOfGeoHashBox      # -- Begin function scoresOfGeoHashBox
	.p2align	4, 0x90
	.type	scoresOfGeoHashBox,@function
scoresOfGeoHashBox:                     # @scoresOfGeoHashBox
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	geohashAlign52Bits
	movq	%rax, (%r15)
	addq	$1, %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	geohashAlign52Bits
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	scoresOfGeoHashBox, .Lfunc_end11-scoresOfGeoHashBox
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function membersOfGeoHashBox
.LCPI12_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI12_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	membersOfGeoHashBox
	.p2align	4, 0x90
	.type	membersOfGeoHashBox,@function
membersOfGeoHashBox:                    # @membersOfGeoHashBox
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	geohashAlign52Bits
	movq	%rax, %r13
	leaq	1(%rbx), %rdi
	movl	%r12d, %esi
	callq	geohashAlign52Bits
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %xmm1
	movdqa	.LCPI12_0(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI12_1(%rip), %xmm3  # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rax, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	movapd	%xmm4, %xmm1
	unpckhpd	%xmm4, %xmm1    # xmm1 = xmm1[1],xmm4[1]
	addsd	%xmm4, %xmm1
	movq	%r15, %rdi
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movq	%r14, %rsi
	callq	geoGetPointsInRange
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	membersOfGeoHashBox, .Lfunc_end12-membersOfGeoHashBox
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function membersOfAllNeighbors
.LCPI13_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI13_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	membersOfAllNeighbors
	.p2align	4, 0x90
	.type	membersOfAllNeighbors,@function
membersOfAllNeighbors:                  # @membersOfAllNeighbors
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movaps	16(%rbp), %xmm0
	movapd	80(%rbp), %xmm1
	movaps	96(%rbp), %xmm2
	movaps	112(%rbp), %xmm3
	movaps	%xmm0, -240(%rbp)
	movapd	%xmm1, -224(%rbp)
	movaps	128(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm2, -192(%rbp)
	movaps	%xmm3, -176(%rbp)
	movaps	144(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	176(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	160(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movapd	192(%rbp), %xmm0
	movapd	%xmm0, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-232(%rbp), %r15
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB13_3
	.p2align	4, 0x90
.LBB13_1:                               #   in Loop: Header=BB13_3 Depth=1
	movl	(%r15), %r13d
	movq	%rbx, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%r13d, %esi
	callq	geohashAlign52Bits
	movq	%rax, %r14
	addq	$1, %rbx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	geohashAlign52Bits
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %xmm1
	movdqa	.LCPI13_0(%rip), %xmm3  # xmm3 = [1127219200,1160773632,0,0]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI13_1(%rip), %xmm4  # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm4, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rax, %xmm2
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	subpd	%xmm4, %xmm2
	movapd	%xmm2, %xmm1
	unpckhpd	%xmm2, %xmm1    # xmm1 = xmm1[1],xmm2[1]
	addsd	%xmm2, %xmm1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	geoGetPointsInRange
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	cmpq	$9, %r12
	je	.LBB13_10
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	cmpb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_9
.LBB13_5:                               #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_1
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	movl	%eax, %ecx
	shlq	$4, %rcx
	cmpq	-240(%rbp,%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_1
# %bb.7:                                #   in Loop: Header=BB13_3 Depth=1
	movzbl	(%r15), %edx
	cmpb	-232(%rbp,%rcx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_1
.LBB13_9:                               #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_2
.LBB13_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	membersOfAllNeighbors, .Lfunc_end13-membersOfAllNeighbors
                                        # -- End function
	.globl	geoaddCommand           # -- Begin function geoaddCommand
	.p2align	4, 0x90
	.type	geoaddCommand,@function
geoaddCommand:                          # @geoaddCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %rbx
	movl	64(%rdi), %r12d
	leal	-2(%r12), %eax
	imull	$-1431655765, %eax, %ecx # imm = 0xAAAAAAAB
	addl	$715827882, %ecx        # imm = 0x2AAAAAAA
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1431655765, %ecx       # imm = 0x55555555
	jb	.LBB14_2
# %bb.1:
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB14_14
.LBB14_2:
	cltq
	imulq	$1431655766, %rax, %r14 # imm = 0x55555556
	movq	%r14, %rax
	shrq	$63, %rax
	shrq	$32, %r14
	addl	%eax, %r14d
	leal	(%r14,%r14), %eax
	cltq
	leaq	16(,%rax,8), %rdi
	addq	$2, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	zcalloc
	movq	%rax, %r15
	movl	$.L.str.22, %edi
	movl	$4, %esi
	callq	createRawStringObject
	movq	%rax, (%r15)
	movq	72(%rbx), %rax
	movq	8(%rax), %rdi
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%rdi, 8(%r15)
	callq	incrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	cmpl	$5, %r12d
	jl	.LBB14_12
# %bb.3:
	movslq	%r14d, %r13
	movq	-48(%rbp), %r15         # 8-byte Reload
	addq	$24, %r15
	movl	$16, %r14d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %rsi
	addq	%r14, %rsi
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rdx
	callq	extractLongLatOrReply
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB14_5
# %bb.11:                               #   in Loop: Header=BB14_4 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	$26, %edi
	leaq	-96(%rbp), %rsi
	callq	geohashEncodeWGS84
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %esi
	callq	geohashAlign52Bits
	movq	%rax, %rdi
	callq	sdsfromlonglong
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	72(%rbx), %rcx
	movq	16(%rcx,%r14), %rdi
	movq	%rax, -8(%r15)
	movq	%rdi, (%r15)
	callq	incrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	addq	$24, %r14
	cmpq	%r13, %r12
	jl	.LBB14_4
.LBB14_12:
	movq	%rbx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	replaceClientCommandVector
	movq	%rbx, %rdi
	callq	zaddCommand
	jmp	.LBB14_13
.LBB14_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	js	.LBB14_10
# %bb.6:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB14_7
	.p2align	4, 0x90
.LBB14_9:                               #   in Loop: Header=BB14_7 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jge	.LBB14_10
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB14_9
# %bb.8:                                #   in Loop: Header=BB14_7 Depth=1
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_9
.LBB14_10:
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB14_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_14:
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
.Lfunc_end14:
	.size	geoaddCommand, .Lfunc_end14-geoaddCommand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function georadiusGeneric
.LCPI15_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI15_1:
	.quad	0                       # double 0
	.text
	.globl	georadiusGeneric
	.p2align	4, 0x90
	.type	georadiusGeneric,@function
georadiusGeneric:                       # @georadiusGeneric
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_122
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_122
# %bb.2:
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB15_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r12b
	jne	.LBB15_5
# %bb.9:
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB15_121
.LBB15_3:
	movq	72(%r15), %rsi
	addq	$16, %rsi
	leaq	-144(%rbp), %rdx
	movq	%r15, %rdi
	callq	extractLongLatOrReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %ecx
	cmpl	$-1, %eax
	jne	.LBB15_11
	jmp	.LBB15_121
.LBB15_5:
	movq	72(%r15), %rax
	movq	16(%rax), %rax
	movq	$0, -360(%rbp)
	movq	8(%rax), %rsi
	leaq	-360(%rbp), %rdx
	movq	%rbx, %rdi
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB15_6
# %bb.7:
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm1
	cmovbeq	%rcx, %rdi
	leaq	-144(%rbp), %rdx
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_8
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %ecx
.LBB15_11:
	movq	72(%r15), %r14
	movl	%ecx, %r13d
	movq	-16(%r14,%r13,8), %rsi
	leaq	-360(%rbp), %rdx
	movl	$.L.str.6, %ecx
	movq	%r15, %rdi
	callq	getDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_117
# %bb.12:
	xorpd	%xmm0, %xmm0
	ucomisd	-360(%rbp), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB15_14
# %bb.13:
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	addReplyError
.LBB15_117:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_118:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_119:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_120
.LBB15_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_8:
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	addReplyError
.LBB15_120:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_121:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_122:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_14:
	movq	-8(%r14,%r13,8), %rsi
	movq	%r15, %rdi
	callq	extractUnitOrReply
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB15_118
# %bb.15:
	movsd	-360(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	mulsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB15_120
# %bb.16:
	movq	$0, -128(%rbp)
	movl	64(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jle	.LBB15_19
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subl	%r13d, %ecx
	jle	.LBB15_18
# %bb.21:
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%edx, %edx
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB15_22:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rcx
	leal	(%rdx,%r13), %eax
	cltq
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %r13
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	movq	%rdx, %r14
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_23
# %bb.25:                               #   in Loop: Header=BB15_22 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.26, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_26
# %bb.28:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$.L.str.27, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_29
# %bb.30:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_31
# %bb.32:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$.L.str.29, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_33
# %bb.34:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$.L.str.30, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_39
# %bb.35:                               #   in Loop: Header=BB15_22 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	leal	1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-48(%rbp), %r14d        # 4-byte Folded Reload
	jge	.LBB15_39
# %bb.36:                               #   in Loop: Header=BB15_22 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rsi
	movq	%r15, %rdi
	leaq	-128(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-80(%rbp), %r13         # 8-byte Reload
	jne	.LBB15_58
# %bb.37:                               #   in Loop: Header=BB15_22 Depth=1
	movq	-128(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	testq	%rcx, %rcx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	jg	.LBB15_47
	jmp	.LBB15_38
.LBB15_23:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
                                        # kill: def $r14d killed $r14d killed $r14
	jmp	.LBB15_24
.LBB15_26:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_27
.LBB15_29:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$1, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB15_27
.LBB15_31:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_27
.LBB15_39:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_43
# %bb.40:                               #   in Loop: Header=BB15_22 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	leal	1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-48(%rbp), %r14d        # 4-byte Folded Reload
	jge	.LBB15_43
# %bb.41:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r12b
	jne	.LBB15_43
# %bb.42:                               #   in Loop: Header=BB15_22 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_24
.LBB15_43:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$.L.str.33, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jne	.LBB15_57
# %bb.44:                               #   in Loop: Header=BB15_22 Depth=1
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jge	.LBB15_57
# %bb.45:                               #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r12b
	jne	.LBB15_57
# %bb.46:                               #   in Loop: Header=BB15_22 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	8(%rax,%rsi,8), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$1, -68(%rbp)           # 4-byte Folded Spill
	movl	%edx, %r14d
	movq	-80(%rbp), %r13         # 8-byte Reload
	jmp	.LBB15_47
.LBB15_33:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$2, -64(%rbp)           # 4-byte Folded Spill
.LBB15_27:                              #   in Loop: Header=BB15_22 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r14d
.LBB15_24:                              #   in Loop: Header=BB15_22 Depth=1
	movq	-80(%rbp), %r13         # 8-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
.LBB15_47:                              #   in Loop: Header=BB15_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edx
	cmpl	%ecx, %r14d
	jl	.LBB15_22
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB15_49
# %bb.59:
	movl	-60(%rbp), %eax         # 4-byte Reload
	orl	-112(%rbp), %eax        # 4-byte Folded Reload
	orl	-88(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %r14d        # 4-byte Reload
	je	.LBB15_60
# %bb.61:
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB15_119
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_19:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	movl	%eax, -56(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
.LBB15_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB15_52:
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	leaq	-360(%rbp), %r13
	movq	%r13, %rdi
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	geohashGetAreasByRadiusWGS84
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	$24, %ecx
	movq	%rsp, %rdi
	movq	%r13, %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	%rbx, %rdi
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %rsi
	callq	membersOfAllNeighbors
	movq	16(%r12), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %r13d        # 4-byte Reload
	testb	%r13b, %r13b
	je	.LBB15_62
# %bb.53:
	testq	%rsi, %rsi
	jne	.LBB15_62
# %bb.54:
	movq	shared+104(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 16(%r12)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_116
# %bb.55:                               # %.preheader
	movl	$32, %r14d
	xorl	%ebx, %ebx
.LBB15_56:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r14), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	addq	$40, %r14
	cmpq	16(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB15_56
	jmp	.LBB15_116
.LBB15_62:
	movq	-128(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rbx
	testq	%rax, %rax
	je	.LBB15_64
# %bb.63:
	cmpq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmovleq	%rsi, %rax
	movq	%rax, %rbx
.LBB15_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	jne	.LBB15_66
# %bb.65:
	movq	(%r12), %rdi
	movl	$40, %edx
	movl	$sort_gp_asc, %ecx
	jmp	.LBB15_68
.LBB15_66:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB15_69
# %bb.67:
	movq	(%r12), %rdi
	movl	$40, %edx
	movl	$sort_gp_desc, %ecx
.LBB15_68:
	callq	qsort
	movl	$42, __A_VARIABLE(%rip)
.LBB15_69:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r13b, %r13b
	je	.LBB15_88
# %bb.70:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB15_71
# %bb.72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB15_73
.LBB15_88:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	je	.LBB15_89
# %bb.92:
	callq	createZsetObject
	movq	%rax, %r14
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jle	.LBB15_93
# %bb.94:
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movl	$32, %r13d
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
.LBB15_95:                              # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rbx
	movsd	-16(%rbx,%r13), %xmm0   # xmm0 = mem[0],zero
	divsd	-168(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbx,%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	jne	.LBB15_97
# %bb.96:                               #   in Loop: Header=BB15_95 Depth=1
	movsd	-8(%rbx,%r13), %xmm0    # xmm0 = mem[0],zero
.LBB15_97:                              #   in Loop: Header=BB15_95 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx,%r13), %rsi
	movzbl	-1(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB15_98
# %bb.99:                               #   in Loop: Header=BB15_95 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI15_0(,%rcx,8)
.LBB15_100:                             #   in Loop: Header=BB15_95 Depth=1
	shrq	$3, %rax
	jmp	.LBB15_105
.LBB15_104:                             #   in Loop: Header=BB15_95 Depth=1
	movq	-17(%rsi), %rax
	jmp	.LBB15_105
.LBB15_102:                             #   in Loop: Header=BB15_95 Depth=1
	movzwl	-5(%rsi), %eax
	jmp	.LBB15_105
.LBB15_103:                             #   in Loop: Header=BB15_95 Depth=1
	movl	-9(%rsi), %eax
	jmp	.LBB15_105
.LBB15_101:                             #   in Loop: Header=BB15_95 Depth=1
	movzbl	-3(%rsi), %eax
	jmp	.LBB15_105
.LBB15_98:                              #   in Loop: Header=BB15_95 Depth=1
	xorl	%eax, %eax
.LBB15_105:                             #   in Loop: Header=BB15_95 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, -48(%rbp)         # 8-byte Folded Reload
	jae	.LBB15_107
# %bb.106:                              #   in Loop: Header=BB15_95 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_107:                             #   in Loop: Header=BB15_95 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	8(%r12), %rdi
	callq	zslInsert
	movq	(%r12), %rdi
	movq	(%rbx,%r13), %rsi
	leaq	8(%rax), %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_123
# %bb.108:                              #   in Loop: Header=BB15_95 Depth=1
	movq	$0, (%rbx,%r13)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %r13
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%r14, %rax
	movq	-120(%rbp), %r12        # 8-byte Reload
	jg	.LBB15_95
# %bb.109:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-88(%rbp), %r14         # 8-byte Reload
	jne	.LBB15_110
	jmp	.LBB15_90
.LBB15_49:
	movb	$1, %al
	movl	-64(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB15_50
.LBB15_71:
	xorl	%eax, %eax
.LBB15_73:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB15_75
# %bb.74:
	addq	$1, -48(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB15_75:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB15_77
# %bb.76:
	addq	$1, -48(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB15_77:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jle	.LBB15_113
# %bb.78:
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$32, %r14d
	jmp	.LBB15_79
.LBB15_87:                              #   in Loop: Header=BB15_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %r14
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	$-1, %rbx
	je	.LBB15_113
.LBB15_79:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	(%r12), %rbx
	movsd	-16(%rbx,%r14), %xmm0   # xmm0 = mem[0],zero
	divsd	-168(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbx,%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB15_81
# %bb.80:                               #   in Loop: Header=BB15_79 Depth=1
	movq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
.LBB15_81:                              #   in Loop: Header=BB15_79 Depth=1
	movq	(%rbx,%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyBulkSds
	movq	$0, (%rbx,%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB15_83
# %bb.82:                               #   in Loop: Header=BB15_79 Depth=1
	movsd	-16(%rbx,%r14), %xmm0   # xmm0 = mem[0],zero
	movl	$128, %esi
	movl	$.L.str.8, %edx
	leaq	-496(%rbp), %r13
	movq	%r13, %rdi
	movb	$1, %al
	callq	snprintf
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_83:                              #   in Loop: Header=BB15_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB15_85
# %bb.84:                               #   in Loop: Header=BB15_79 Depth=1
	cvttsd2si	-8(%rbx,%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB15_85:                              #   in Loop: Header=BB15_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB15_87
# %bb.86:                               #   in Loop: Header=BB15_79 Depth=1
	movl	$2, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	fldl	-32(%rbx,%r14)
	fstpt	(%rsp)
	movq	%r15, %rdi
	callq	addReplyHumanLongDouble
	fldl	-24(%rbx,%r14)
	fstpt	(%rsp)
	movq	%r15, %rdi
	callq	addReplyHumanLongDouble
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_87
.LBB15_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_90:
	movq	16(%r15), %rdi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_112
# %bb.91:
	movq	16(%r15), %rdi
	movq	%rbx, %rsi
	callq	signalModifiedKey
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.37, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movl	$1, %eax
	jmp	.LBB15_111
.LBB15_60:
	xorl	%eax, %eax
.LBB15_50:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jne	.LBB15_52
# %bb.51:
	movl	$1, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB15_20
	jmp	.LBB15_52
.LBB15_57:
	movq	shared+128(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB15_58:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_117
.LBB15_93:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_110:
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	zsetConvertToZiplistIfNeeded
	movq	16(%r15), %rdi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	setKey
	movq	%r14, %rdi
	callq	decrRefCount
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.36, %esi
	movl	$128, %edi
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB15_111:
	addq	%rax, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_112:
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	addReplyLongLong
.LBB15_113:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 16(%r12)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_116
# %bb.114:                              # %.preheader1
	movl	$32, %r14d
	xorl	%ebx, %ebx
.LBB15_115:                             # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r14), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	addq	$40, %r14
	cmpq	16(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB15_115
.LBB15_116:
	callq	zfree
	movq	%r12, %rdi
	callq	zfree
	jmp	.LBB15_117
.LBB15_38:
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_117
.LBB15_123:
	movl	$.L.str.35, %edi
	movl	$.L.str.12, %esi
	movl	$654, %edx              # imm = 0x28E
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end15:
	.size	georadiusGeneric, .Lfunc_end15-georadiusGeneric
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_100
	.quad	.LBB15_101
	.quad	.LBB15_102
	.quad	.LBB15_103
	.quad	.LBB15_104
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function sort_gp_asc
	.type	sort_gp_asc,@function
sort_gp_asc:                            # @sort_gp_asc
# %bb.0:
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB16_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB16_2:
	cmpneqsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end16:
	.size	sort_gp_asc, .Lfunc_end16-sort_gp_asc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sort_gp_desc
	.type	sort_gp_desc,@function
sort_gp_desc:                           # @sort_gp_desc
# %bb.0:
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB17_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB17_3
.LBB17_2:
	cmpneqsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end17:
	.size	sort_gp_desc, .Lfunc_end17-sort_gp_desc
                                        # -- End function
	.globl	georadiusCommand        # -- Begin function georadiusCommand
	.p2align	4, 0x90
	.type	georadiusCommand,@function
georadiusCommand:                       # @georadiusCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	georadiusGeneric
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	georadiusCommand, .Lfunc_end18-georadiusCommand
                                        # -- End function
	.globl	georadiusbymemberCommand # -- Begin function georadiusbymemberCommand
	.p2align	4, 0x90
	.type	georadiusbymemberCommand,@function
georadiusbymemberCommand:               # @georadiusbymemberCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %esi
	callq	georadiusGeneric
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	georadiusbymemberCommand, .Lfunc_end19-georadiusbymemberCommand
                                        # -- End function
	.globl	georadiusroCommand      # -- Begin function georadiusroCommand
	.p2align	4, 0x90
	.type	georadiusroCommand,@function
georadiusroCommand:                     # @georadiusroCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %esi
	callq	georadiusGeneric
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	georadiusroCommand, .Lfunc_end20-georadiusroCommand
                                        # -- End function
	.globl	georadiusbymemberroCommand # -- Begin function georadiusbymemberroCommand
	.p2align	4, 0x90
	.type	georadiusbymemberroCommand,@function
georadiusbymemberroCommand:             # @georadiusbymemberroCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$6, %esi
	callq	georadiusGeneric
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	georadiusbymemberroCommand, .Lfunc_end21-georadiusbymemberroCommand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashCommand
.LCPI22_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI22_1:
	.quad	-4582834833314545664    # double -180
	.quad	4640537203540230144     # double 180
.LCPI22_2:
	.quad	-4587338432941916160    # double -90
	.quad	4636033603912859648     # double 90
	.text
	.globl	geohashCommand
	.p2align	4, 0x90
	.type	geohashCommand,@function
geohashCommand:                         # @geohashCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB22_10
.LBB22_2:
	movslq	64(%rbx), %rsi
	addq	$-2, %rsi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 64(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB22_10
# %bb.3:
	movl	$2, %r15d
	leaq	-64(%rbp), %r12
	leaq	-80(%rbp), %r13
	jmp	.LBB22_4
	.p2align	4, 0x90
.LBB22_6:                               #   in Loop: Header=BB22_4 Depth=1
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB22_9:                               #   in Loop: Header=BB22_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jge	.LBB22_10
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB22_6
# %bb.5:                                #   in Loop: Header=BB22_4 Depth=1
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB22_6
# %bb.7:                                #   in Loop: Header=BB22_4 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movsd	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm2
	cmovbeq	%rax, %rdi
	movl	$26, %esi
	movq	%r13, %rdx
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_6
# %bb.8:                                #   in Loop: Header=BB22_4 Depth=1
	movaps	.LCPI22_1(%rip), %xmm0  # xmm0 = [-1.8E+2,1.8E+2]
	movaps	%xmm0, -112(%rbp)
	movaps	.LCPI22_2(%rip), %xmm0  # xmm0 = [-9.0E+1,9.0E+1]
	movaps	%xmm0, -96(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-112(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movl	$26, %edx
	leaq	-128(%rbp), %rcx
	callq	geohashEncode
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	shrq	$47, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	shrq	$42, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -51(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	shrq	$37, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -50(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	shrq	$32, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -49(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	shrl	$27, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	shrl	$22, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -47(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	shrl	$17, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -46(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	shrl	$12, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -45(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	shrl	$7, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrl	$2, %eax
	andl	$31, %eax
	movzbl	.L.str.38(%rax), %eax
	movb	%al, -43(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, -42(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -41(%rbp)
	movl	$11, %edx
	movq	%rbx, %rdi
	leaq	-52(%rbp), %rsi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_9
.LBB22_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	geohashCommand, .Lfunc_end22-geohashCommand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geoposCommand
.LCPI23_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	geoposCommand
	.p2align	4, 0x90
	.type	geoposCommand,@function
geoposCommand:                          # @geoposCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r13
	movq	16(%rdi), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB23_10
.LBB23_2:
	movslq	64(%r13), %rsi
	addq	$-2, %rsi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 64(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB23_10
# %bb.3:
	movl	$2, %ebx
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	jmp	.LBB23_4
	.p2align	4, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_4 Depth=1
	movq	shared+88(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
.LBB23_9:                               #   in Loop: Header=BB23_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB23_10
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=1
	movq	72(%r13), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB23_6
# %bb.7:                                #   in Loop: Header=BB23_4 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movsd	.LCPI23_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm2
	cmovbeq	%rax, %rdi
	movl	$26, %esi
	movq	%r12, %rdx
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_6
# %bb.8:                                #   in Loop: Header=BB23_4 Depth=1
	movl	$2, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	fldl	-64(%rbp)
	fstpt	(%rsp)
	movq	%r13, %rdi
	callq	addReplyHumanLongDouble
	fldl	-56(%rbp)
	fstpt	(%rsp)
	movq	%r13, %rdi
	callq	addReplyHumanLongDouble
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_9
.LBB23_10:
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
.Lfunc_end23:
	.size	geoposCommand, .Lfunc_end23-geoposCommand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geodistCommand
.LCPI24_0:
	.quad	4607182418800017408     # double 1
.LCPI24_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	geodistCommand
	.p2align	4, 0x90
	.type	geodistCommand,@function
geodistCommand:                         # @geodistCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdi, %rbx
	cmpl	$5, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_3
# %bb.1:
	movq	72(%rbx), %rax
	movq	32(%rax), %rsi
	movq	%rbx, %rdi
	callq	extractUnitOrReply
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB24_17
# %bb.2:
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	leaq	72(%rbx), %r15
	jmp	.LBB24_5
.LBB24_3:
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB24_4
# %bb.18:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB24_17
.LBB24_4:
	leaq	72(%rbx), %r15
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB24_5:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_16
# %bb.6:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB24_16
# %bb.7:
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB24_9
# %bb.8:
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	callq	zsetScore
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB24_9
# %bb.10:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %r14 # imm = 0x8000000000000000
	xorq	%r14, %rax
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm2
	cmovbeq	%rax, %rdi
	leaq	-80(%rbp), %rdx
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_12
# %bb.11:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movsd	.LCPI24_1(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	xorq	%r14, %rax
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm2
	leaq	-64(%rbp), %rdx
	cmovbeq	%rax, %rdi
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_12
# %bb.13:
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	geohashGetDistance
	divsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	leaq	-208(%rbp), %r14
	movl	$128, %esi
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	movb	$1, %al
	callq	snprintf
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_14
.LBB24_9:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB24_15
.LBB24_12:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB24_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	geodistCommand, .Lfunc_end24-geodistCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-ERR invalid longitude,latitude pair %f,%f\r\n"
	.size	.L.str, 45

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"m"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"km"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ft"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mi"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unsupported unit provided. please use m, km, ft, mi"
	.size	.L.str.5, 52

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"need numeric radius"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"radius cannot be negative"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%.4f"
	.size	.L.str.8, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geo.c"
	.size	.L.str.12, 71

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"syntax error. Try GEOADD key [x1] [y1] [name1] [x2] [y2] [name2] ... "
	.size	.L.str.21, 70

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"zadd"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"could not decode requested zset member"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Unknown georadius search type"
	.size	.L.str.24, 30

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"withdist"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"withhash"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"withcoord"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"asc"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"desc"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"count"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"COUNT must be > 0"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"store"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"storedist"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"STORE option in GEORADIUS is not compatible with WITHDIST, WITHHASH and WITHCOORDS options"
	.size	.L.str.34, 91

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"dictAdd(zs->dict,gp->member,&znode->score) == DICT_OK"
	.size	.L.str.35, 54

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"georadiusstore"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"del"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"0123456789bcdefghjkmnpqrstuvwxyz"
	.size	.L.str.38, 33

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
