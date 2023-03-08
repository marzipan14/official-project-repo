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
	jne	.LBB1_1
# %bb.2:
	testq	%rcx, %rcx
	leaq	(%rcx,%rcx), %rax
	movl	$8, %ecx
	cmoveq	%rcx, %rax
	movq	%rax, 8(%rbx)
	movq	(%rbx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rsi
	callq	zrealloc
	movq	%rax, (%rbx)
	movq	16(%rbx), %rcx
	jmp	.LBB1_3
.LBB1_1:
	movq	(%rbx), %rax
.LBB1_3:
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
	cmpq	$0, 16(%rdi)
	movq	(%rdi), %rdi
	je	.LBB2_3
# %bb.1:                                # %.preheader
	movl	$32, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r15), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movq	(%r14), %rdi
	addq	$40, %r15
	cmpq	16(%r14), %rbx
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
	movq	(%rsi), %rsi
	xorl	%ecx, %ecx
	callq	getDoubleFromObjectOrReply
	movl	$-1, %r13d
	testl	%eax, %eax
	jne	.LBB4_7
# %bb.1:
	movq	8(%rbx), %rsi
	leaq	8(%r15), %r12
	movq	%r14, %rdi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	getDoubleFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB4_7
# %bb.2:
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB4_6
# %bb.3:
	ucomisd	.LCPI4_1(%rip), %xmm0
	ja	.LBB4_6
# %bb.4:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB4_6
# %bb.5:
	xorl	%r13d, %r13d
	ucomisd	.LCPI4_3(%rip), %xmm0
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
	cmpl	$1, %eax
	sbbl	%eax, %eax
	jmp	.LBB5_3
.LBB5_1:
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
	testl	%eax, %eax
	je	.LBB6_1
# %bb.2:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB6_3
# %bb.4:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB6_5
# %bb.6:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcmp
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
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	4652007308841189376     # double 1000
.LCPI7_3:
	.quad	4599162408583596029     # double 0.30480000000000002
.LCPI7_4:
	.quad	4654792767618531983     # double 1609.3399999999999
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
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	(%rsi), %rsi
	leaq	-40(%rbp), %rdx
	movl	$.L.str.6, %ecx
	callq	getDoubleFromObjectOrReply
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB7_14
# %bb.1:
	xorpd	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB7_3
# %bb.2:
	movl	$.L.str.7, %esi
	movq	%r12, %rdi
	callq	addReplyError
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_14
.LBB7_3:
	movq	8(%rbx), %rax
	movq	8(%rax), %r15
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_4
# %bb.5:
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_6
# %bb.7:
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_8
# %bb.9:
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB7_10
# %bb.15:
	movl	$.L.str.5, %esi
	movq	%r12, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_14
.LBB7_4:
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_11
.LBB7_6:
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_11
.LBB7_8:
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB7_11
.LBB7_10:
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_13
# %bb.12:
	movsd	%xmm0, (%r14)
.LBB7_13:
	mulsd	-40(%rbp), %xmm0
.LBB7_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
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
	movl	$-1, %ebx
	testl	%eax, %eax
	je	.LBB9_6
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
	testl	%eax, %eax
	je	.LBB9_6
# %bb.2:
	movq	16(%r15), %rcx
	cmpq	8(%r15), %rcx
	jne	.LBB9_3
# %bb.4:
	testq	%rcx, %rcx
	leaq	(%rcx,%rcx), %rax
	movl	$8, %ecx
	cmoveq	%rcx, %rax
	movq	%rax, 8(%r15)
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rsi
	callq	zrealloc
	movq	%rax, (%r15)
	movq	16(%r15), %rcx
	jmp	.LBB9_5
.LBB9_3:
	movq	(%r15), %rax
.LBB9_5:
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
.LBB9_6:
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
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB10_13
# %bb.1:
	cmpb	$5, %al
	jne	.LBB10_19
# %bb.2:
	movq	8(%rdi), %r14
	movq	$0, -104(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -96(%rbp)
	leaq	-136(%rbp), %rsi
	movq	%r14, %rdi
	callq	zzlFirstInRange
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB10_20
# %bb.3:
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -112(%rbp)
	movq	%rax, %rdi
	callq	zzlGetScore
	leaq	-136(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	zslValueLteMax
	testl	%eax, %eax
	je	.LBB10_12
# %bb.4:                                # %.preheader
	leaq	-64(%rbp), %r15
	leaq	-112(%rbp), %r12
	.p2align	4, 0x90
.LBB10_5:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	ziplistGet
	movq	-104(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_6
# %bb.7:                                #   in Loop: Header=BB10_5 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB10_8
	.p2align	4, 0x90
.LBB10_6:                               #   in Loop: Header=BB10_5 Depth=1
	movq	-96(%rbp), %rdi
	callq	sdsfromlonglong
.LBB10_8:                               #   in Loop: Header=BB10_5 Depth=1
	movq	%rax, %rbx
	movsd	-56(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	%r13, %rdi
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %rsi
	callq	geoAppendIfWithinRadius
	cmpl	$-1, %eax
	jne	.LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_5 Depth=1
	movq	%rbx, %rdi
	callq	sdsfree
.LBB10_10:                              #   in Loop: Header=BB10_5 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	zzlNext
	cmpq	$0, -64(%rbp)
	je	.LBB10_12
# %bb.11:                               #   in Loop: Header=BB10_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	zzlGetScore
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	leaq	-136(%rbp), %rdi
	callq	zslValueLteMax
	testl	%eax, %eax
	jne	.LBB10_5
.LBB10_12:
	movq	-144(%rbp), %r12        # 8-byte Reload
.LBB10_19:
	movl	16(%r13), %eax
	subl	%r12d, %eax
	jmp	.LBB10_21
.LBB10_13:
	movq	8(%rdi), %rax
	movq	8(%rax), %rdi
	leaq	-136(%rbp), %rsi
	callq	zslFirstInRange
	testq	%rax, %rax
	je	.LBB10_20
# %bb.14:                               # %.preheader1
	movq	%rax, %rbx
	leaq	-136(%rbp), %r14
	jmp	.LBB10_15
	.p2align	4, 0x90
.LBB10_18:                              #   in Loop: Header=BB10_15 Depth=1
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB10_19
.LBB10_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	zslValueLteMax
	testl	%eax, %eax
	je	.LBB10_19
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=1
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
	cmpl	$-1, %eax
	jne	.LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_15 Depth=1
	movq	%r15, %rdi
	callq	sdsfree
	jmp	.LBB10_18
.LBB10_20:
	xorl	%eax, %eax
.LBB10_21:
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
	leaq	-232(%rbp), %r15
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_1 Depth=1
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
	movl	%r12d, %eax
.LBB13_7:                               #   in Loop: Header=BB13_1 Depth=1
	addq	$1, %r12
	addq	$16, %r15
	cmpq	$9, %r12
	je	.LBB13_8
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB13_3
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	cmpb	$0, (%r15)
	je	.LBB13_7
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	je	.LBB13_6
# %bb.4:                                #   in Loop: Header=BB13_1 Depth=1
	movl	%eax, %ecx
	shlq	$4, %rcx
	cmpq	-240(%rbp,%rcx), %rbx
	jne	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_1 Depth=1
	movzbl	(%r15), %edx
	cmpb	-232(%rbp,%rcx), %dl
	jne	.LBB13_6
	jmp	.LBB13_7
.LBB13_8:
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
	cmpl	$1431655765, %ecx       # imm = 0x55555555
	jb	.LBB14_2
# %bb.1:
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB14_13
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
	addq	$1, %r12
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
	cmpq	%r14, %rbx
	jge	.LBB14_10
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB14_9
# %bb.8:                                #   in Loop: Header=BB14_7 Depth=1
	callq	decrRefCount
	jmp	.LBB14_9
.LBB14_10:
	movq	%r15, %rdi
	callq	zfree
.LBB14_13:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI15_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI15_2:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
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
	subq	$680, %rsp              # imm = 0x2A8
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB15_104
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB15_104
# %bb.2:
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -176(%rbp)
	testb	$1, %r15b
	jne	.LBB15_3
# %bb.8:
	testb	$2, %r15b
	jne	.LBB15_9
# %bb.14:
	movl	$.L.str.24, %esi
	jmp	.LBB15_13
.LBB15_3:
	movq	72(%rbx), %rsi
	addq	$16, %rsi
	leaq	-176(%rbp), %rdx
	movq	%rbx, %rdi
	callq	extractLongLatOrReply
	movl	$6, %r12d
	cmpl	$-1, %eax
	jne	.LBB15_4
	jmp	.LBB15_104
.LBB15_9:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	$0, -512(%rbp)
	movq	8(%rax), %rsi
	leaq	-512(%rbp), %rdx
	movq	%r14, %rdi
	callq	zsetScore
	cmpl	$-1, %eax
	je	.LBB15_10
# %bb.11:
	movsd	-512(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm1
	cmovbeq	%rcx, %rdi
	leaq	-176(%rbp), %rdx
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %r12d
	testl	%eax, %eax
	je	.LBB15_12
.LBB15_4:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -152(%rbp)
	movq	72(%rbx), %rax
	movl	%r12d, %ecx
	leaq	(%rax,%rcx,8), %rsi
	addq	$-16, %rsi
	leaq	-152(%rbp), %rdx
	movq	%rbx, %rdi
	callq	extractDistanceOrReply
	xorpd	%xmm1, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	ucomisd	%xmm0, %xmm1
	ja	.LBB15_104
# %bb.5:
	movq	$0, -144(%rbp)
	movl	64(%rbx), %ecx
	movb	$1, %al
	movl	%eax, -132(%rbp)        # 4-byte Spill
	cmpl	%r12d, %ecx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%r14, -128(%rbp)        # 8-byte Spill
	jle	.LBB15_7
# %bb.6:
	subl	%r12d, %ecx
	jle	.LBB15_7
# %bb.15:
	movl	%r15d, -104(%rbp)       # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB15_16:                              # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %rbx
	leal	(%r15,%r12), %eax
	movslq	%eax, %r14
	movq	(%rbx,%r14,8), %rax
	movq	8(%rax), %r13
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_17
# %bb.20:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.26, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_21
# %bb.22:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.27, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_23
# %bb.24:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_25
# %bb.26:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.29, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_27
# %bb.28:                               #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.30, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB15_33
# %bb.29:                               #   in Loop: Header=BB15_16 Depth=1
	leal	1(%r15), %r12d
	cmpl	-48(%rbp), %r12d        # 4-byte Folded Reload
	jge	.LBB15_33
# %bb.30:                               #   in Loop: Header=BB15_16 Depth=1
	movq	8(%rbx,%r14,8), %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-144(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB15_104
# %bb.31:                               #   in Loop: Header=BB15_16 Depth=1
	movq	-144(%rbp), %rcx
	movq	%rcx, %rax
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	testq	%rcx, %rcx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	jg	.LBB15_41
	jmp	.LBB15_32
.LBB15_17:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_18
.LBB15_21:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_18
.LBB15_23:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$1, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_18
.LBB15_25:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_18
.LBB15_33:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_34
.LBB15_37:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$.L.str.33, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movl	-48(%rbp), %ecx         # 4-byte Reload
	jne	.LBB15_105
# %bb.38:                               #   in Loop: Header=BB15_16 Depth=1
	testb	$4, -104(%rbp)          # 1-byte Folded Reload
	jne	.LBB15_105
# %bb.39:                               #   in Loop: Header=BB15_16 Depth=1
	addl	$1, %r15d
	cmpl	%ecx, %r15d
	jge	.LBB15_105
# %bb.40:                               #   in Loop: Header=BB15_16 Depth=1
	movq	8(%rbx,%r14,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	%r15d, %r12d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB15_41
.LBB15_27:                              #   in Loop: Header=BB15_16 Depth=1
	movl	$2, -52(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB15_18:                              #   in Loop: Header=BB15_16 Depth=1
	movl	%r15d, %r12d
.LBB15_19:                              #   in Loop: Header=BB15_16 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
.LBB15_41:                              #   in Loop: Header=BB15_16 Depth=1
	addl	$1, %r12d
	movl	%r12d, %r15d
	cmpl	%ecx, %r12d
	movq	-120(%rbp), %r12        # 8-byte Reload
	jl	.LBB15_16
	jmp	.LBB15_42
.LBB15_34:                              #   in Loop: Header=BB15_16 Depth=1
	testb	$4, -104(%rbp)          # 1-byte Folded Reload
	jne	.LBB15_37
# %bb.35:                               #   in Loop: Header=BB15_16 Depth=1
	leal	1(%r15), %r12d
	cmpl	-48(%rbp), %r12d        # 4-byte Folded Reload
	jge	.LBB15_37
# %bb.36:                               #   in Loop: Header=BB15_16 Depth=1
	movq	8(%rbx,%r14,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB15_19
.LBB15_7:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
.LBB15_47:
	testq	%rdx, %rdx
	setne	%al
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	testl	%ecx, %ecx
	sete	%cl
	andb	%al, %cl
	movb	%cl, -112(%rbp)         # 1-byte Spill
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	leaq	-704(%rbp), %rbx
	movq	%rbx, %rdi
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	geohashGetAreasByRadiusWGS84
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	leaq	-512(%rbp), %rdi
	movl	$192, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movups	-512(%rbp), %xmm0
	movupd	-448(%rbp), %xmm1
	movupd	-432(%rbp), %xmm2
	movups	-416(%rbp), %xmm3
	movaps	%xmm0, -320(%rbp)
	movapd	%xmm1, -304(%rbp)
	movups	-400(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movapd	%xmm2, -272(%rbp)
	movaps	%xmm3, -256(%rbp)
	movups	-384(%rbp), %xmm0
	movaps	%xmm0, -240(%rbp)
	movups	-352(%rbp), %xmm0
	movaps	%xmm0, -224(%rbp)
	movups	-368(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movupd	-336(%rbp), %xmm0
	movapd	%xmm0, -192(%rbp)
	leaq	-312(%rbp), %r14
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	%r13, -48(%rbp)         # 8-byte Spill
	jmp	.LBB15_48
	.p2align	4, 0x90
.LBB15_53:                              #   in Loop: Header=BB15_48 Depth=1
	movl	(%r14), %r13d
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	geohashAlign52Bits
	movq	%rax, %r12
	addq	$1, %rbx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	-48(%rbp), %r13         # 8-byte Reload
	callq	geohashAlign52Bits
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %xmm1
	movdqa	.LCPI15_1(%rip), %xmm3  # xmm3 = [1127219200,1160773632,0,0]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movapd	.LCPI15_2(%rip), %xmm4  # xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
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
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movq	%r13, %rsi
	callq	geoGetPointsInRange
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %edx
.LBB15_54:                              #   in Loop: Header=BB15_48 Depth=1
	addq	$1, %r15
	addq	$16, %r14
	cmpq	$9, %r15
	je	.LBB15_55
.LBB15_48:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB15_50
# %bb.49:                               #   in Loop: Header=BB15_48 Depth=1
	cmpb	$0, (%r14)
	je	.LBB15_54
.LBB15_50:                              #   in Loop: Header=BB15_48 Depth=1
	testl	%edx, %edx
	je	.LBB15_53
# %bb.51:                               #   in Loop: Header=BB15_48 Depth=1
	movl	%edx, %eax
	shlq	$4, %rax
	cmpq	-320(%rbp,%rax), %rbx
	jne	.LBB15_53
# %bb.52:                               #   in Loop: Header=BB15_48 Depth=1
	movzbl	(%r14), %ecx
	cmpb	-312(%rbp,%rax), %cl
	jne	.LBB15_53
	jmp	.LBB15_54
.LBB15_55:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rsi
	testq	%rsi, %rsi
	setne	%al
	movl	-132(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, %ecx
	xorb	$1, %cl
	orb	%al, %cl
	jne	.LBB15_60
# %bb.56:
	movq	shared+104(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	cmpq	$0, 16(%r13)
	movq	(%r13), %rdi
	je	.LBB15_59
# %bb.57:                               # %.preheader
	movl	$32, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB15_58:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r14), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movq	(%r13), %rdi
	addq	$40, %r14
	cmpq	16(%r13), %rbx
	jb	.LBB15_58
.LBB15_59:
	callq	zfree
	movq	%r13, %rdi
	jmp	.LBB15_103
.LBB15_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_12:
	movl	$.L.str.23, %esi
.LBB15_13:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB15_104
.LBB15_60:
	cmpb	$0, -112(%rbp)          # 1-byte Folded Reload
	movl	$1, %eax
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmovnel	%eax, %ecx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rsi
	movq	%rax, %r14
	cmovleq	%rsi, %r14
	testq	%rax, %rax
	cmoveq	%rsi, %r14
	cmpl	$2, %ecx
	movq	-72(%rbp), %r15         # 8-byte Reload
	je	.LBB15_63
# %bb.61:
	cmpl	$1, %ecx
	jne	.LBB15_65
# %bb.62:
	movq	(%r13), %rdi
	movl	$40, %edx
	movl	$sort_gp_asc, %ecx
	jmp	.LBB15_64
.LBB15_42:
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	je	.LBB15_43
# %bb.44:
	movl	-60(%rbp), %eax         # 4-byte Reload
	orl	-56(%rbp), %eax         # 4-byte Folded Reload
	orl	-64(%rbp), %eax         # 4-byte Folded Reload
	je	.LBB15_45
# %bb.106:
	movl	$.L.str.34, %esi
	jmp	.LBB15_13
.LBB15_63:
	movq	(%r13), %rdi
	movl	$40, %edx
	movl	$sort_gp_desc, %ecx
.LBB15_64:
	callq	qsort
.LBB15_65:
	testb	%bl, %bl
	je	.LBB15_77
# %bb.66:
	xorl	%eax, %eax
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	setne	%al
	leaq	1(%rax), %rcx
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	cmoveq	%rax, %rcx
	cmpl	$1, -60(%rbp)           # 4-byte Folded Reload
	sbbq	$-1, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReplyMultiBulkLen
	testq	%r14, %r14
	jle	.LBB15_99
# %bb.67:
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$32, %ebx
	jmp	.LBB15_68
	.p2align	4, 0x90
.LBB15_76:                              #   in Loop: Header=BB15_68 Depth=1
	addq	$40, %rbx
	movq	%r13, %r14
	addq	$-1, %r14
	je	.LBB15_99
.LBB15_68:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %r13
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movsd	-16(%r14,%rbx), %xmm0   # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movsd	%xmm0, -16(%r14,%rbx)
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB15_70
# %bb.69:                               #   in Loop: Header=BB15_68 Depth=1
	movq	%r15, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	addReplyMultiBulkLen
.LBB15_70:                              #   in Loop: Header=BB15_68 Depth=1
	movq	(%r14,%rbx), %rsi
	movq	%r15, %rdi
	callq	addReplyBulkSds
	movq	$0, (%r14,%rbx)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB15_72
# %bb.71:                               #   in Loop: Header=BB15_68 Depth=1
	movsd	-16(%r14,%rbx), %xmm0   # xmm0 = mem[0],zero
	movl	$128, %esi
	movl	$.L.str.8, %edx
	leaq	-512(%rbp), %r12
	movq	%r12, %rdi
	movb	$1, %al
	callq	snprintf
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	addReplyBulkCBuffer
	movl	$42, __A_VARIABLE(%rip)
.LBB15_72:                              #   in Loop: Header=BB15_68 Depth=1
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB15_74
# %bb.73:                               #   in Loop: Header=BB15_68 Depth=1
	cvttsd2si	-8(%r14,%rbx), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
.LBB15_74:                              #   in Loop: Header=BB15_68 Depth=1
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB15_76
# %bb.75:                               #   in Loop: Header=BB15_68 Depth=1
	movl	$2, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	fldl	-32(%r14,%rbx)
	fstpt	(%rsp)
	movq	%r15, %rdi
	callq	addReplyHumanLongDouble
	fldl	-24(%r14,%rbx)
	fstpt	(%rsp)
	movq	%r15, %rdi
	callq	addReplyHumanLongDouble
	jmp	.LBB15_76
.LBB15_77:
	testq	%r14, %r14
	je	.LBB15_95
# %bb.78:
	callq	createZsetObject
	movq	%rax, %r12
	testq	%r14, %r14
	jle	.LBB15_79
# %bb.80:
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movq	8(%r12), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$32, %ebx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, -120(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r13        # 8-byte Reload
.LBB15_81:                              # =>This Inner Loop Header: Depth=1
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movsd	-16(%r14,%rbx), %xmm0   # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movsd	%xmm0, -16(%r14,%rbx)
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	jne	.LBB15_83
# %bb.82:                               #   in Loop: Header=BB15_81 Depth=1
	movsd	-8(%r14,%rbx), %xmm0    # xmm0 = mem[0],zero
.LBB15_83:                              #   in Loop: Header=BB15_81 Depth=1
	movq	(%r14,%rbx), %rsi
	movzbl	-1(%rsi), %r15d
	movl	%r15d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_84
# %bb.85:                               #   in Loop: Header=BB15_81 Depth=1
	movl	%r15d, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_86:                              #   in Loop: Header=BB15_81 Depth=1
	shrq	$3, %r15
	jmp	.LBB15_91
.LBB15_90:                              #   in Loop: Header=BB15_81 Depth=1
	movq	-17(%rsi), %r15
	jmp	.LBB15_91
.LBB15_88:                              #   in Loop: Header=BB15_81 Depth=1
	movzwl	-5(%rsi), %r15d
	jmp	.LBB15_91
.LBB15_87:                              #   in Loop: Header=BB15_81 Depth=1
	movzbl	-3(%rsi), %r15d
	jmp	.LBB15_91
.LBB15_89:                              #   in Loop: Header=BB15_81 Depth=1
	movl	-9(%rsi), %r15d
	jmp	.LBB15_91
.LBB15_84:                              #   in Loop: Header=BB15_81 Depth=1
	xorl	%r15d, %r15d
.LBB15_91:                              #   in Loop: Header=BB15_81 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r13), %rdi
	callq	zslInsert
	movq	(%r13), %rdi
	movq	(%r14,%rbx), %rsi
	leaq	8(%rax), %rdx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB15_107
# %bb.92:                               #   in Loop: Header=BB15_81 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%r15, %rsi
	cmovbq	%r15, %rsi
	movq	$0, (%r14,%rbx)
	addq	$1, %r12
	addq	$40, %rbx
	movq	-120(%rbp), %r14        # 8-byte Reload
	cmpq	%r12, %r14
	jg	.LBB15_81
# %bb.93:
	testq	%r14, %r14
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-104(%rbp), %r12        # 8-byte Reload
	jne	.LBB15_94
.LBB15_95:
	movq	16(%r15), %rdi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	dbDelete
	testl	%eax, %eax
	je	.LBB15_98
# %bb.96:
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
	jmp	.LBB15_97
.LBB15_43:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_46
.LBB15_45:
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
.LBB15_46:
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB15_47
.LBB15_79:
	xorl	%esi, %esi
.LBB15_94:
	movq	%r12, %rdi
	callq	zsetConvertToZiplistIfNeeded
	movq	16(%r15), %rdi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	setKey
	movq	%r12, %rdi
	callq	decrRefCount
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.36, %esi
	movl	$128, %edi
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movq	%r14, %rax
.LBB15_97:
	addq	%rax, server+2080(%rip)
.LBB15_98:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReplyLongLong
.LBB15_99:
	movq	-48(%rbp), %r15         # 8-byte Reload
	cmpq	$0, 16(%r15)
	movq	(%r15), %rdi
	je	.LBB15_102
# %bb.100:                              # %.preheader1
	movl	$32, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB15_101:                             # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r14), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movq	(%r15), %rdi
	addq	$40, %r14
	cmpq	16(%r15), %rbx
	jb	.LBB15_101
.LBB15_102:
	callq	zfree
	movq	%r15, %rdi
.LBB15_103:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB15_104:
	movl	$42, __A_VARIABLE(%rip)
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_105:
	movq	shared+128(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB15_104
.LBB15_32:
	movl	$.L.str.31, %esi
	jmp	.LBB15_13
.LBB15_107:
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
	.quad	.LBB15_86
	.quad	.LBB15_87
	.quad	.LBB15_88
	.quad	.LBB15_89
	.quad	.LBB15_90
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function sort_gp_asc
	.type	sort_gp_asc,@function
sort_gp_asc:                            # @sort_gp_asc
# %bb.0:
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	cmpneqsd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	andl	$1, %ecx
	negl	%ecx
	ucomisd	%xmm1, %xmm0
	movl	$1, %eax
	cmovbel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movapd	%xmm0, %xmm2
	cmpneqsd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	andl	$1, %ecx
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmovbel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	testq	%rax, %rax
	je	.LBB22_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB22_10
.LBB22_2:
	movslq	64(%rbx), %rsi
	addq	$-2, %rsi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	cmpl	$3, 64(%rbx)
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
	addq	$1, %r15
	movslq	64(%rbx), %rax
	cmpq	%rax, %r15
	jge	.LBB22_10
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB22_6
# %bb.5:                                #   in Loop: Header=BB22_4 Depth=1
	movq	72(%rbx), %rax
	movq	(%rax,%r15,8), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	zsetScore
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
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	shrq	$47, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -52(%rbp)
	movq	%rax, %rcx
	shrq	$42, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -51(%rbp)
	movq	%rax, %rcx
	shrq	$37, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -50(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -49(%rbp)
	movl	%eax, %ecx
	shrl	$27, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -48(%rbp)
	movl	%eax, %ecx
	shrl	$22, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -47(%rbp)
	movl	%eax, %ecx
	shrl	$17, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -46(%rbp)
	movl	%eax, %ecx
	shrl	$12, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -45(%rbp)
	movl	%eax, %ecx
	shrl	$7, %ecx
	andl	$31, %ecx
	movzbl	.L.str.38(%rcx), %ecx
	movb	%cl, -44(%rbp)
	shrl	$2, %eax
	andl	$31, %eax
	movzbl	.L.str.38(%rax), %eax
	movb	%al, -43(%rbp)
	movw	$48, -42(%rbp)
	movl	$11, %edx
	movq	%rbx, %rdi
	leaq	-52(%rbp), %rsi
	callq	addReplyBulkCBuffer
	jmp	.LBB22_9
.LBB22_10:
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
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB23_10
.LBB23_2:
	movslq	64(%r13), %rsi
	addq	$-2, %rsi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	cmpl	$3, 64(%r13)
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
	addq	$1, %rbx
	movslq	64(%r13), %rax
	cmpq	%rax, %rbx
	jge	.LBB23_10
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=1
	movq	72(%r13), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	zsetScore
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
	jmp	.LBB23_9
.LBB23_10:
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
	.quad	4652007308841189376     # double 1000
.LCPI24_2:
	.quad	4599162408583596029     # double 0.30480000000000002
.LCPI24_3:
	.quad	4654792767618531983     # double 1609.3399999999999
.LCPI24_4:
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
	movq	%rdi, %r14
	cmpl	$5, 64(%rdi)
	jne	.LBB24_11
# %bb.1:
	movq	72(%r14), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB24_2
# %bb.3:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB24_4
# %bb.5:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB24_6
# %bb.7:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB24_8
# %bb.10:
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB24_21
.LBB24_11:
	jle	.LBB24_12
# %bb.23:
	movq	shared+128(%rip), %rsi
	jmp	.LBB24_24
.LBB24_12:
	leaq	72(%r14), %r15
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB24_13
.LBB24_2:
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB24_9
.LBB24_4:
	movsd	.LCPI24_1(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB24_9
.LBB24_6:
	movsd	.LCPI24_2(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB24_9
.LBB24_8:
	movsd	.LCPI24_3(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB24_9:
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	leaq	72(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB24_13:
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	movq	%r14, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB24_22
# %bb.14:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$3, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB24_22
# %bb.15:
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	callq	zsetScore
	cmpl	$-1, %eax
	je	.LBB24_17
# %bb.16:
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	callq	zsetScore
	cmpl	$-1, %eax
	je	.LBB24_17
# %bb.18:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_4(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rbx # imm = 0x8000000000000000
	xorq	%rbx, %rax
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm2
	cmovbeq	%rax, %rdi
	leaq	-80(%rbp), %rdx
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_17
# %bb.19:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movsd	.LCPI24_4(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	xorq	%rbx, %rax
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm0, %xmm2
	leaq	-64(%rbp), %rdx
	cmovbeq	%rax, %rdi
	movl	$26, %esi
	callq	geohashDecodeToLongLatWGS84
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_17
# %bb.20:
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	geohashGetDistance
	divsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	leaq	-208(%rbp), %rbx
	movl	$128, %esi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movb	$1, %al
	callq	snprintf
	movslq	%eax, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
.LBB24_21:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_22
.LBB24_17:
	movq	shared+80(%rip), %rsi
.LBB24_24:
	movq	%r14, %rdi
	callq	addReply
.LBB24_22:
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
