	.text
	.file	"sds.c"
	.globl	sdsnewlen               # -- Begin function sdsnewlen
	.p2align	4, 0x90
	.type	sdsnewlen,@function
sdsnewlen:                              # @sdsnewlen
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %rsi
	ja	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$255, %r15
	ja	.LBB0_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	jmp	.LBB0_7
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65535, %r15            # imm = 0xFFFF
	ja	.LBB0_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %al
	jmp	.LBB0_7
.LBB0_6:
	movq	%r15, %rax
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	movb	$4, %al
	sbbb	$0, %al
.LBB0_7:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	movzbl	%al, %eax
	movl	$1, %ebx
	cmovnel	%eax, %ebx
	testq	%r15, %r15
	cmovnel	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	xorb	$4, %al
	movzbl	%al, %eax
	andl	$7, %eax
	movq	.Lswitch.table.sdsnewlen(,%rax,8), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%r14), %r12
	addq	$1, %r12
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	callq	*(%rdi)
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, SDS_NOINIT(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB0_14
# %bb.12:
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_15
# %bb.16:
	movl	%ebx, %eax
	andb	$7, %al
	addq	%r14, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	ja	.LBB0_24
# %bb.17:
	movzbl	%bl, %eax
	andl	$7, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_18:
	leal	(,%r15,8), %eax
	orb	%al, %bl
	jmp	.LBB0_23
.LBB0_15:
	xorl	%r13d, %r13d
	jmp	.LBB0_28
.LBB0_19:
	movb	%r15b, -3(%r13)
	movb	%r15b, -2(%r13)
	jmp	.LBB0_23
.LBB0_20:
	movw	%r15w, -5(%r13)
	movw	%r15w, -3(%r13)
	jmp	.LBB0_23
.LBB0_21:
	movl	%r15d, -9(%r13)
	movl	%r15d, -5(%r13)
	jmp	.LBB0_23
.LBB0_22:
	movq	%r15, -17(%r13)
	movq	%r15, -9(%r13)
.LBB0_23:
	movb	%bl, -1(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_27
# %bb.25:
	testq	%rsi, %rsi
	je	.LBB0_27
# %bb.26:
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movb	$0, (%r13,%r15)
.LBB0_28:
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
.LBB0_8:
	callq	__errno
	movl	$12, (%rax)
	xorl	%r13d, %r13d
	jmp	.LBB0_10
.Lfunc_end0:
	.size	sdsnewlen, .Lfunc_end0-sdsnewlen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
                                        # -- End function
	.text
	.globl	sdsempty                # -- Begin function sdsempty
	.p2align	4, 0x90
	.type	sdsempty,@function
sdsempty:                               # @sdsempty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.2:
	movq	%rax, %rcx
	addq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rcx)
	movb	$1, 2(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%rcx)
	jmp	.LBB1_4
.LBB1_5:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	xorl	%eax, %eax
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sdsempty, .Lfunc_end1-sdsempty
                                        # -- End function
	.globl	sdsnew                  # -- Begin function sdsnew
	.p2align	4, 0x90
	.type	sdsnew,@function
sdsnew:                                 # @sdsnew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_3
.LBB2_1:
	xorl	%esi, %esi
.LBB2_3:
	movq	%rbx, %rdi
	callq	sdsnewlen
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sdsnew, .Lfunc_end2-sdsnew
                                        # -- End function
	.globl	sdsdup                  # -- Begin function sdsdup
	.p2align	4, 0x90
	.type	sdsdup,@function
sdsdup:                                 # @sdsdup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_3:
	shrq	$3, %rsi
	jmp	.LBB3_8
.LBB3_1:
	xorl	%esi, %esi
	jmp	.LBB3_8
.LBB3_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB3_8
.LBB3_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB3_8
.LBB3_6:
	movl	-9(%rdi), %esi
	jmp	.LBB3_8
.LBB3_7:
	movq	-17(%rdi), %rsi
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsnewlen
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sdsdup, .Lfunc_end3-sdsdup
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_3
	.quad	.LBB3_4
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_7
                                        # -- End function
	.text
	.globl	sdsfree                 # -- Begin function sdsfree
	.p2align	4, 0x90
	.type	sdsfree,@function
sdsfree:                                # @sdsfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_3
# %bb.1:
	movq	%rdi, %rsi
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_4
# %bb.2:
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs(,%rax,8), %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB4_4:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	sdsfree, .Lfunc_end4-sdsfree
                                        # -- End function
	.globl	sdsupdatelen            # -- Begin function sdsupdatelen
	.p2align	4, 0x90
	.type	sdsupdatelen,@function
sdsupdatelen:                           # @sdsupdatelen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	strlen
	movzbl	-1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB5_8
# %bb.1:
	andl	$7, %ecx
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_2:
	shlb	$3, %al
	movb	%al, -1(%rbx)
	jmp	.LBB5_7
.LBB5_3:
	movb	%al, -3(%rbx)
	jmp	.LBB5_7
.LBB5_4:
	movw	%ax, -5(%rbx)
	jmp	.LBB5_7
.LBB5_5:
	movl	%eax, -9(%rbx)
	jmp	.LBB5_7
.LBB5_6:
	movq	%rax, -17(%rbx)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sdsupdatelen, .Lfunc_end5-sdsupdatelen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6
                                        # -- End function
	.text
	.globl	sdsclear                # -- Begin function sdsclear
	.p2align	4, 0x90
	.type	sdsclear,@function
sdsclear:                               # @sdsclear
# %bb.0:
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB6_8
# %bb.1:
	andl	$7, %eax
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_2:
	movb	$0, -1(%rdi)
	jmp	.LBB6_7
.LBB6_3:
	movb	$0, -3(%rdi)
	jmp	.LBB6_7
.LBB6_4:
	movw	$0, -5(%rdi)
	jmp	.LBB6_7
.LBB6_5:
	movl	$0, -9(%rdi)
	jmp	.LBB6_7
.LBB6_6:
	movq	$0, -17(%rdi)
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	sdsclear, .Lfunc_end6-sdsclear
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
                                        # -- End function
	.text
	.globl	sdsMakeRoomFor          # -- Begin function sdsMakeRoomFor
	.p2align	4, 0x90
	.type	sdsMakeRoomFor,@function
sdsMakeRoomFor:                         # @sdsMakeRoomFor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB7_6
# %bb.1:
	movzbl	%cl, %ecx
	jmpq	*.LJTI7_0(,%rcx,8)
.LBB7_2:
	movzbl	-2(%rbx), %ecx
	movzbl	-3(%rbx), %edx
	subq	%rdx, %rcx
	jmp	.LBB7_7
.LBB7_3:
	movl	-5(%rbx), %ecx
	subl	-9(%rbx), %ecx
	jmp	.LBB7_7
.LBB7_4:
	movq	-9(%rbx), %rcx
	subq	-17(%rbx), %rcx
	jmp	.LBB7_7
.LBB7_5:
	movzwl	-3(%rbx), %ecx
	movzwl	-5(%rbx), %edx
	subq	%rdx, %rcx
	jmp	.LBB7_7
.LBB7_6:
	xorl	%ecx, %ecx
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jae	.LBB7_53
# %bb.8:
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB7_15
# %bb.9:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI7_1(,%rcx,8)
.LBB7_10:
	movq	%rax, %rdx
	shrq	$3, %rdx
	movq	$-1, %r8
	jmp	.LBB7_16
.LBB7_11:
	movq	-17(%rbx), %rdx
	movq	$-17, %r8
	jmp	.LBB7_16
.LBB7_12:
	movzwl	-5(%rbx), %edx
	movq	$-5, %r8
	jmp	.LBB7_16
.LBB7_13:
	movl	-9(%rbx), %edx
	movq	$-9, %r8
	jmp	.LBB7_16
.LBB7_14:
	movzbl	-3(%rbx), %edx
	movq	$-3, %r8
	jmp	.LBB7_16
.LBB7_15:
	xorl	%edx, %edx
	xorl	%r8d, %r8d
.LBB7_16:
	andl	$7, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdx,%rsi), %rcx
	cmpq	$1048576, %rcx          # imm = 0x100000
	leaq	(%rcx,%rcx), %rcx
	leaq	1048576(%rdx,%rsi), %r12
	cmovbq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %r12
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jb	.LBB7_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %r12              # imm = 0x100
	jae	.LBB7_30
.LBB7_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r13b
.LBB7_19:
	movl	$3, %r14d
	movb	$1, %sil
.LBB7_20:
	addq	%rbx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %ecx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%r14), %rdx
	addq	$1, %rdx
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jne	.LBB7_24
# %bb.21:
	testq	%rdi, %rdi
	je	.LBB7_57
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rsi
	callq	*16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_34
# %bb.23:
	movq	%rax, %r15
	addq	%r14, %r15
	movl	$42, __A_VARIABLE(%rip)
	movb	-1(%rax,%r14), %r13b
	jmp	.LBB7_44
.LBB7_24:
	testq	%rdi, %rdi
	je	.LBB7_57
# %bb.25:
	movb	%sil, -41(%rbp)         # 1-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rsi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_34
# %bb.26:
	movq	%rax, %r15
	addq	%r14, %r15
	movq	-64(%rbp), %r14         # 8-byte Reload
	leaq	1(%r14), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_58
# %bb.27:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r13b, -1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	-41(%rbp), %al          # 1-byte Reload
	cmpb	$4, %al
	ja	.LBB7_43
# %bb.28:
	movzbl	%al, %eax
	jmpq	*.LJTI7_3(,%rax,8)
.LBB7_29:
	shlb	$3, %r14b
	movb	%r14b, -1(%r15)
	movl	%r14d, %r13d
	jmp	.LBB7_42
.LBB7_34:
	xorl	%r15d, %r15d
	jmp	.LBB7_52
.LBB7_30:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65535, %r12            # imm = 0xFFFF
	ja	.LBB7_35
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %r13b
.LBB7_32:
	movl	$5, %r14d
	movb	$2, %sil
	jmp	.LBB7_20
.LBB7_35:
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	shrq	$32, %rdx
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$4, %sil
	subb	%dl, %sil
	movl	%esi, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %sil
	ja	.LBB7_55
# %bb.36:
	movl	$1, %r14d
	movb	%dl, %cl
	movl	$4, %edx
	subq	%rcx, %rdx
	jmpq	*.LJTI7_2(,%rdx,8)
.LBB7_37:
	movl	$9, %r14d
	jmp	.LBB7_56
.LBB7_38:
	movq	%r14, -17(%r15)
	jmp	.LBB7_42
.LBB7_39:
	movw	%r14w, -5(%r15)
	jmp	.LBB7_42
.LBB7_40:
	movb	%r14b, -3(%r15)
	jmp	.LBB7_42
.LBB7_41:
	movl	%r14d, -9(%r15)
.LBB7_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_44:
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %r13b
	addb	$-1, %r13b
	cmpb	$3, %r13b
	ja	.LBB7_51
# %bb.45:
	movzbl	%r13b, %eax
	jmpq	*.LJTI7_4(,%rax,8)
.LBB7_46:
	movb	%r12b, -2(%r15)
	jmp	.LBB7_50
.LBB7_47:
	movl	%r12d, -5(%r15)
	jmp	.LBB7_50
.LBB7_48:
	movq	%r12, -9(%r15)
	jmp	.LBB7_50
.LBB7_49:
	movw	%r12w, -3(%r15)
.LBB7_50:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_51:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
.LBB7_53:
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
.LBB7_54:
	movl	$17, %r14d
	jmp	.LBB7_56
.LBB7_55:
	xorl	%r14d, %r14d
.LBB7_56:
	movl	%r13d, %esi
	jmp	.LBB7_20
.LBB7_57:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB7_52
.LBB7_58:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	sdsMakeRoomFor, .Lfunc_end7-sdsMakeRoomFor
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_2
	.quad	.LBB7_5
	.quad	.LBB7_3
	.quad	.LBB7_4
.LJTI7_1:
	.quad	.LBB7_10
	.quad	.LBB7_14
	.quad	.LBB7_12
	.quad	.LBB7_13
	.quad	.LBB7_11
.LJTI7_2:
	.quad	.LBB7_20
	.quad	.LBB7_19
	.quad	.LBB7_32
	.quad	.LBB7_37
	.quad	.LBB7_54
.LJTI7_3:
	.quad	.LBB7_29
	.quad	.LBB7_40
	.quad	.LBB7_39
	.quad	.LBB7_41
	.quad	.LBB7_38
.LJTI7_4:
	.quad	.LBB7_46
	.quad	.LBB7_49
	.quad	.LBB7_47
	.quad	.LBB7_48
                                        # -- End function
	.text
	.globl	sdsRemoveFreeSpace      # -- Begin function sdsRemoveFreeSpace
	.p2align	4, 0x90
	.type	sdsRemoveFreeSpace,@function
sdsRemoveFreeSpace:                     # @sdsRemoveFreeSpace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB8_13
# %bb.1:
	movzbl	%cl, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-3(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%r14), %ecx
	subq	%r15, %rcx
	movl	$3, %r12d
	jmp	.LBB8_6
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-9(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-5(%r14), %ecx
	subl	%r15d, %ecx
	movl	$9, %r12d
	jmp	.LBB8_6
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-17(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-9(%r14), %rcx
	subq	%r15, %rcx
	movl	$17, %r12d
	jmp	.LBB8_6
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-5(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-3(%r14), %ecx
	subq	%r15, %rcx
	movl	$5, %r12d
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_9
# %bb.7:
	andl	$7, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r15
	ja	.LBB8_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	jmp	.LBB8_23
.LBB8_9:
	movq	%r14, %r15
	jmp	.LBB8_50
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$255, %r15
	ja	.LBB8_14
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r13b
.LBB8_12:
	movl	$3, %r8d
	movb	$1, %sil
	jmp	.LBB8_23
.LBB8_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r15
	jmp	.LBB8_50
.LBB8_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65535, %r15            # imm = 0xFFFF
	ja	.LBB8_17
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %r13b
.LBB8_16:
	movl	$5, %r8d
	movb	$2, %sil
	jmp	.LBB8_23
.LBB8_17:
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	shrq	$32, %rdx
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$4, %sil
	subb	%dl, %sil
	movl	%esi, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %sil
	ja	.LBB8_21
# %bb.18:
	movl	$1, %r8d
	movb	%dl, %cl
	movl	$4, %edx
	subq	%rcx, %rdx
	jmpq	*.LJTI8_1(,%rdx,8)
.LBB8_19:
	movl	$9, %r8d
	jmp	.LBB8_22
.LBB8_20:
	movl	$17, %r8d
	jmp	.LBB8_22
.LBB8_21:
	xorl	%r8d, %r8d
.LBB8_22:
	movl	%r13d, %esi
.LBB8_23:
	movq	%r14, %rbx
	subq	%r12, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	je	.LBB8_25
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %r13b
	jl	.LBB8_29
.LBB8_25:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_51
# %bb.26:
	leaq	(%r15,%r12), %rdx
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	callq	*16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_28
# %bb.27:
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r15
	addq	%r12, %r15
	movl	$42, __A_VARIABLE(%rip)
	movb	-1(%rax,%r12), %r13b
	jmp	.LBB8_42
.LBB8_29:
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_51
# %bb.30:
	leaq	(%r15,%r8), %rsi
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %r12
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_28
# %bb.31:
	movq	%r15, %rcx
	movq	%rax, %r15
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	leaq	1(%rcx), %rdx
	addq	%r12, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_52
# %bb.32:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r13b, -1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %r12d        # 4-byte Reload
	cmpb	$4, %r12b
	ja	.LBB8_41
# %bb.33:
	movzbl	%r12b, %eax
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_34:
	movq	-48(%rbp), %rax         # 8-byte Reload
	leal	(,%rax,8), %r13d
	movb	%r13b, -1(%r15)
	jmp	.LBB8_40
.LBB8_28:
	xorl	%r15d, %r15d
	jmp	.LBB8_50
.LBB8_36:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -17(%r15)
	jmp	.LBB8_40
.LBB8_37:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movw	%ax, -5(%r15)
	jmp	.LBB8_40
.LBB8_38:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movb	%al, -3(%r15)
	jmp	.LBB8_40
.LBB8_39:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, -9(%r15)
.LBB8_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_42:
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %r13b
	addb	$-1, %r13b
	cmpb	$3, %r13b
	ja	.LBB8_49
# %bb.43:
	movzbl	%r13b, %eax
	jmpq	*.LJTI8_3(,%rax,8)
.LBB8_44:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movb	%al, -2(%r15)
	jmp	.LBB8_48
.LBB8_45:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, -5(%r15)
	jmp	.LBB8_48
.LBB8_46:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -9(%r15)
	jmp	.LBB8_48
.LBB8_47:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movw	%ax, -3(%r15)
.LBB8_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_49:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_51:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB8_50
.LBB8_52:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	sdsRemoveFreeSpace, .Lfunc_end8-sdsRemoveFreeSpace
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_2
	.quad	.LBB8_5
	.quad	.LBB8_3
	.quad	.LBB8_4
.LJTI8_1:
	.quad	.LBB8_23
	.quad	.LBB8_12
	.quad	.LBB8_16
	.quad	.LBB8_19
	.quad	.LBB8_20
.LJTI8_2:
	.quad	.LBB8_34
	.quad	.LBB8_38
	.quad	.LBB8_37
	.quad	.LBB8_39
	.quad	.LBB8_36
.LJTI8_3:
	.quad	.LBB8_44
	.quad	.LBB8_47
	.quad	.LBB8_45
	.quad	.LBB8_46
                                        # -- End function
	.text
	.globl	sdsAllocSize            # -- Begin function sdsAllocSize
	.p2align	4, 0x90
	.type	sdsAllocSize,@function
sdsAllocSize:                           # @sdsAllocSize
# %bb.0:
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB9_1
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_3:
	shrq	$3, %rax
	movl	$1, %ecx
	jmp	.LBB9_8
.LBB9_1:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB9_8
.LBB9_4:
	movzbl	-2(%rdi), %eax
	movl	$3, %ecx
	jmp	.LBB9_8
.LBB9_5:
	movzwl	-3(%rdi), %eax
	movl	$5, %ecx
	jmp	.LBB9_8
.LBB9_6:
	movl	-5(%rdi), %eax
	movl	$9, %ecx
	jmp	.LBB9_8
.LBB9_7:
	movq	-9(%rdi), %rax
	movl	$17, %ecx
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	sdsAllocSize, .Lfunc_end9-sdsAllocSize
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
                                        # -- End function
	.text
	.globl	sdsAllocPtr             # -- Begin function sdsAllocPtr
	.p2align	4, 0x90
	.type	sdsAllocPtr,@function
sdsAllocPtr:                            # @sdsAllocPtr
# %bb.0:
	movq	%rdi, %rax
	movzbl	-1(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$7, %ecx
	xorq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	.Lswitch.table.sdssplitargs(,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	sdsAllocPtr, .Lfunc_end10-sdsAllocPtr
                                        # -- End function
	.globl	sdsIncrLen              # -- Begin function sdsIncrLen
	.p2align	4, 0x90
	.type	sdsIncrLen,@function
sdsIncrLen:                             # @sdsIncrLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB11_1
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI11_0(,%rcx,8)
.LBB11_3:
	shrq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB11_7
# %bb.4:
	addq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rax
	jl	.LBB11_10
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_6
.LBB11_29:
	leaq	-17(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB11_33
# %bb.30:
	movq	-17(%rdi), %rax
	movq	-9(%rdi), %rdx
	subq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jae	.LBB11_34
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_32
.LBB11_17:
	leaq	-5(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB11_21
# %bb.18:
	movzwl	-3(%rdi), %edx
	movzwl	-5(%rdi), %ecx
	subq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jge	.LBB11_22
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_20
.LBB11_23:
	leaq	-9(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB11_27
# %bb.24:
	movl	-9(%rdi), %ecx
	movl	-5(%rdi), %edx
	subl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jae	.LBB11_28
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_26
.LBB11_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB11_15
# %bb.12:
	movzbl	-2(%rdi), %ecx
	movzbl	-3(%rdi), %eax
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jge	.LBB11_16
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_14
.LBB11_1:
	xorl	%eax, %eax
	jmp	.LBB11_35
.LBB11_33:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	%rsi, %rdx
	negq	%rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jb	.LBB11_32
.LBB11_34:
	addq	%rsi, %rax
	movq	%rax, (%rcx)
	jmp	.LBB11_35
.LBB11_21:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %ecx
	movl	%esi, %edx
	negl	%edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jb	.LBB11_20
.LBB11_22:
	addl	%esi, %ecx
	movw	%cx, (%rax)
	movzwl	%cx, %eax
	jmp	.LBB11_35
.LBB11_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	movl	%esi, %edx
	negl	%edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jb	.LBB11_26
.LBB11_28:
	addl	%ecx, %esi
	movl	%esi, (%rax)
	movq	%rsi, %rax
	jmp	.LBB11_35
.LBB11_7:
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB11_6
# %bb.8:
	movzbl	%al, %eax
	movl	%esi, %ecx
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jb	.LBB11_6
# %bb.9:
	addq	%rsi, %rax
.LBB11_10:
	leal	(,%rax,8), %ecx
	movb	%cl, -1(%rdi)
	jmp	.LBB11_35
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-3(%rdi), %eax
	movl	%esi, %ecx
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jb	.LBB11_14
.LBB11_16:
	addb	%al, %sil
	movb	%sil, -3(%rdi)
	movzbl	%sil, %eax
.LBB11_35:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB11_6:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.3, %ecx
	movl	$340, %esi              # imm = 0x154
	callq	__assert_func
.LBB11_32:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.6, %ecx
	movl	$365, %esi              # imm = 0x16D
	callq	__assert_func
.LBB11_20:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.4, %ecx
	movl	$353, %esi              # imm = 0x161
	callq	__assert_func
.LBB11_26:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.5, %ecx
	movl	$359, %esi              # imm = 0x167
	callq	__assert_func
.LBB11_14:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.4, %ecx
	movl	$347, %esi              # imm = 0x15B
	callq	__assert_func
.Lfunc_end11:
	.size	sdsIncrLen, .Lfunc_end11-sdsIncrLen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_3
	.quad	.LBB11_11
	.quad	.LBB11_17
	.quad	.LBB11_23
	.quad	.LBB11_29
                                        # -- End function
	.text
	.globl	sdsgrowzero             # -- Begin function sdsgrowzero
	.p2align	4, 0x90
	.type	sdsgrowzero,@function
sdsgrowzero:                            # @sdsgrowzero
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movzbl	-1(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB12_1
# %bb.2:
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI12_0(,%rax,8)
.LBB12_3:
	shrq	$3, %rbx
	jmp	.LBB12_8
.LBB12_1:
	xorl	%ebx, %ebx
	jmp	.LBB12_8
.LBB12_4:
	movzbl	-3(%r15), %ebx
	jmp	.LBB12_8
.LBB12_5:
	movzwl	-5(%r15), %ebx
	jmp	.LBB12_8
.LBB12_6:
	movl	-9(%r15), %ebx
	jmp	.LBB12_8
.LBB12_7:
	movq	-17(%r15), %rbx
.LBB12_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB12_20
# %bb.9:
	movq	%r14, %r12
	subq	%rbx, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	sdsMakeRoomFor
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_10
# %bb.11:
	movq	%rax, %r15
	addq	%rax, %rbx
	addq	$1, %r12
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movzbl	-1(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_19
# %bb.12:
	andl	$7, %eax
	jmpq	*.LJTI12_1(,%rax,8)
.LBB12_13:
	shlb	$3, %r14b
	movb	%r14b, -1(%r15)
	jmp	.LBB12_18
.LBB12_10:
	xorl	%r15d, %r15d
	jmp	.LBB12_20
.LBB12_14:
	movb	%r14b, -3(%r15)
	jmp	.LBB12_18
.LBB12_15:
	movw	%r14w, -5(%r15)
	jmp	.LBB12_18
.LBB12_16:
	movl	%r14d, -9(%r15)
	jmp	.LBB12_18
.LBB12_17:
	movq	%r14, -17(%r15)
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	sdsgrowzero, .Lfunc_end12-sdsgrowzero
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_3
	.quad	.LBB12_4
	.quad	.LBB12_5
	.quad	.LBB12_6
	.quad	.LBB12_7
.LJTI12_1:
	.quad	.LBB12_13
	.quad	.LBB12_14
	.quad	.LBB12_15
	.quad	.LBB12_16
	.quad	.LBB12_17
                                        # -- End function
	.text
	.globl	sdscatlen               # -- Begin function sdscatlen
	.p2align	4, 0x90
	.type	sdscatlen,@function
sdscatlen:                              # @sdscatlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movzbl	-1(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB13_1
# %bb.2:
	movl	%r12d, %eax
	andl	$7, %eax
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_3:
	shrq	$3, %r12
	jmp	.LBB13_8
.LBB13_1:
	xorl	%r12d, %r12d
	jmp	.LBB13_8
.LBB13_4:
	movzbl	-3(%rdi), %r12d
	jmp	.LBB13_8
.LBB13_5:
	movzwl	-5(%rdi), %r12d
	jmp	.LBB13_8
.LBB13_6:
	movl	-9(%rdi), %r12d
	jmp	.LBB13_8
.LBB13_7:
	movq	-17(%rdi), %r12
.LBB13_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_18
# %bb.9:
	movq	%rbx, %rdi
	addq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %r12
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB13_17
# %bb.10:
	andl	$7, %eax
	jmpq	*.LJTI13_1(,%rax,8)
.LBB13_11:
	leal	(,%r12,8), %eax
	movb	%al, -1(%rbx)
	jmp	.LBB13_16
.LBB13_12:
	movb	%r12b, -3(%rbx)
	jmp	.LBB13_16
.LBB13_13:
	movw	%r12w, -5(%rbx)
	jmp	.LBB13_16
.LBB13_14:
	movl	%r12d, -9(%rbx)
	jmp	.LBB13_16
.LBB13_15:
	movq	%r12, -17(%rbx)
.LBB13_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_17:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rbx,%r12)
.LBB13_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	sdscatlen, .Lfunc_end13-sdscatlen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI13_0:
	.quad	.LBB13_3
	.quad	.LBB13_4
	.quad	.LBB13_5
	.quad	.LBB13_6
	.quad	.LBB13_7
.LJTI13_1:
	.quad	.LBB13_11
	.quad	.LBB13_12
	.quad	.LBB13_13
	.quad	.LBB13_14
	.quad	.LBB13_15
                                        # -- End function
	.text
	.globl	sdscat                  # -- Begin function sdscat
	.p2align	4, 0x90
	.type	sdscat,@function
sdscat:                                 # @sdscat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	sdscat, .Lfunc_end14-sdscat
                                        # -- End function
	.globl	sdscatsds               # -- Begin function sdscatsds
	.p2align	4, 0x90
	.type	sdscatsds,@function
sdscatsds:                              # @sdscatsds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_3:
	shrq	$3, %rdx
	jmp	.LBB15_8
.LBB15_1:
	xorl	%edx, %edx
	jmp	.LBB15_8
.LBB15_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB15_8
.LBB15_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB15_8
.LBB15_6:
	movl	-9(%rsi), %edx
	jmp	.LBB15_8
.LBB15_7:
	movq	-17(%rsi), %rdx
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	sdscatsds, .Lfunc_end15-sdscatsds
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7
                                        # -- End function
	.text
	.globl	sdscpylen               # -- Begin function sdscpylen
	.p2align	4, 0x90
	.type	sdscpylen,@function
sdscpylen:                              # @sdscpylen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB16_1
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI16_0(,%rcx,8)
.LBB16_3:
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB16_8
.LBB16_4:
	movzbl	-2(%rbx), %ecx
	jmp	.LBB16_8
.LBB16_5:
	movzwl	-3(%rbx), %ecx
	jmp	.LBB16_8
.LBB16_6:
	movl	-5(%rbx), %ecx
	jmp	.LBB16_8
.LBB16_7:
	movq	-9(%rbx), %rcx
	jmp	.LBB16_8
.LBB16_1:
	xorl	%ecx, %ecx
.LBB16_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jae	.LBB16_9
# %bb.10:
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB16_11
# %bb.12:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI16_1(,%rcx,8)
.LBB16_13:
	shrq	$3, %rax
	jmp	.LBB16_18
.LBB16_9:
	leaq	-1(%rbx), %r12
	jmp	.LBB16_21
.LBB16_11:
	xorl	%eax, %eax
	jmp	.LBB16_18
.LBB16_14:
	movzbl	-3(%rbx), %eax
	jmp	.LBB16_18
.LBB16_15:
	movzwl	-5(%rbx), %eax
	jmp	.LBB16_18
.LBB16_16:
	movl	-9(%rbx), %eax
	jmp	.LBB16_18
.LBB16_17:
	movq	-17(%rbx), %rax
.LBB16_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	subq	%rax, %rsi
	movq	%rbx, %rdi
	callq	sdsMakeRoomFor
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_19
# %bb.20:
	movq	%rax, %rbx
	movq	%rax, %r12
	addq	$-1, %r12
.LBB16_21:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r14)
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB16_29
# %bb.22:
	andl	$7, %eax
	jmpq	*.LJTI16_2(,%rax,8)
.LBB16_23:
	shlb	$3, %r14b
	movb	%r14b, (%r12)
	jmp	.LBB16_28
.LBB16_19:
	xorl	%ebx, %ebx
	jmp	.LBB16_30
.LBB16_24:
	movb	%r14b, -3(%rbx)
	jmp	.LBB16_28
.LBB16_25:
	movw	%r14w, -5(%rbx)
	jmp	.LBB16_28
.LBB16_26:
	movl	%r14d, -9(%rbx)
	jmp	.LBB16_28
.LBB16_27:
	movq	%r14, -17(%rbx)
.LBB16_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	sdscpylen, .Lfunc_end16-sdscpylen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI16_0:
	.quad	.LBB16_3
	.quad	.LBB16_4
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_7
.LJTI16_1:
	.quad	.LBB16_13
	.quad	.LBB16_14
	.quad	.LBB16_15
	.quad	.LBB16_16
	.quad	.LBB16_17
.LJTI16_2:
	.quad	.LBB16_23
	.quad	.LBB16_24
	.quad	.LBB16_25
	.quad	.LBB16_26
	.quad	.LBB16_27
                                        # -- End function
	.text
	.globl	sdscpy                  # -- Begin function sdscpy
	.p2align	4, 0x90
	.type	sdscpy,@function
sdscpy:                                 # @sdscpy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscpylen
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	sdscpy, .Lfunc_end17-sdscpy
                                        # -- End function
	.globl	sdsll2str               # -- Begin function sdsll2str
	.p2align	4, 0x90
	.type	sdsll2str,@function
sdsll2str:                              # @sdsll2str
# %bb.0:
	movq	%rsi, %r8
	negq	%r8
	cmovlq	%rsi, %r8
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-3689348814741910323, %r9 # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	mulq	%r9
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %r10d
	movl	%r8d, %eax
	subl	%r10d, %eax
	orb	$48, %al
	movb	%al, (%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r8
	movq	%rdx, %r8
	ja	.LBB18_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB18_4
# %bb.3:
	movb	$45, (%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB18_4:
	movq	%rcx, %rax
	subq	%rdi, %rax
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rcx
	jbe	.LBB18_7
# %bb.5:                                # %.preheader
	addq	$1, %rdi
	.p2align	4, 0x90
.LBB18_6:                               # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdi), %esi
	movzbl	(%rcx), %edx
	movb	%dl, -1(%rdi)
	movb	%sil, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	leaq	1(%rdi), %rdi
	jb	.LBB18_6
.LBB18_7:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end18:
	.size	sdsll2str, .Lfunc_end18-sdsll2str
                                        # -- End function
	.globl	sdsull2str              # -- Begin function sdsull2str
	.p2align	4, 0x90
	.type	sdsull2str,@function
sdsull2str:                             # @sdsull2str
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	.p2align	4, 0x90
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	orb	$48, %al
	movb	%al, (%rdi,%r9)
	addq	$1, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rsi
	movq	%rdx, %rsi
	ja	.LBB19_1
# %bb.2:
	movb	$0, (%rdi,%r9)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r9
	je	.LBB19_6
# %bb.3:
	leaq	-1(%r9), %rcx
	movb	(%rdi), %dl
	movb	%al, (%rdi)
	movb	%dl, -1(%rdi,%r9)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rcx
	jb	.LBB19_6
# %bb.4:
	leaq	(%rdi,%r9), %rax
	addq	$-2, %rax
	addq	$2, %rdi
	.p2align	4, 0x90
.LBB19_5:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	movzbl	-1(%rdi), %edx
	movb	%cl, -1(%rdi)
	movb	%dl, (%rax)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	leaq	1(%rdi), %rdi
	jb	.LBB19_5
.LBB19_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %eax
	retq
.Lfunc_end19:
	.size	sdsull2str, .Lfunc_end19-sdsull2str
                                        # -- End function
	.globl	sdsfromlonglong         # -- Begin function sdsfromlonglong
	.p2align	4, 0x90
	.type	sdsfromlonglong,@function
sdsfromlonglong:                        # @sdsfromlonglong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, %rcx
	negq	%rcx
	cmovlq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	.p2align	4, 0x90
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %esi
	movl	%ecx, %eax
	subl	%esi, %eax
	orb	$48, %al
	movb	%al, -32(%rbp,%r9)
	addq	$1, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	.LBB20_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jns	.LBB20_4
# %bb.3:
	movb	$45, -32(%rbp,%r9)
	addq	$1, %r9
	movl	$42, __A_VARIABLE(%rip)
	movb	$45, %al
.LBB20_4:
	movb	$0, -32(%rbp,%r9)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %r9
	jl	.LBB20_8
# %bb.5:
	movb	-32(%rbp), %cl
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rax
	movb	%cl, -1(%r9,%rax)
	leaq	-31(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	%r9, %rax
	addq	$-2, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB20_8
# %bb.6:                                # %.preheader
	leaq	-30(%rbp), %rcx
	.p2align	4, 0x90
.LBB20_7:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	movzbl	-1(%rcx), %esi
	movb	%dl, -1(%rcx)
	movb	%sil, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB20_7
.LBB20_8:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r9d, %rsi
	leaq	-32(%rbp), %rdi
	callq	sdsnewlen
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	sdsfromlonglong, .Lfunc_end20-sdsfromlonglong
                                        # -- End function
	.globl	sdscatvprintf           # -- Begin function sdscatvprintf
	.p2align	4, 0x90
	.type	sdscatvprintf,@function
sdscatvprintf:                          # @sdscatvprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1025, %rbx             # imm = 0x401
	jb	.LBB21_4
# %bb.1:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	callq	*(%rdi)
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB21_5
	jmp	.LBB21_3
.LBB21_4:
	leaq	-1104(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$1024, %ebx             # imm = 0x400
.LBB21_5:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r12
	.p2align	4, 0x90
.LBB21_6:                               # =>This Inner Loop Header: Depth=1
	movb	$0, -2(%rbx,%r14)
	movq	16(%r13), %rax
	movq	%rax, -64(%rbp)
	movups	(%r13), %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	vsnprintf
	cmpb	$0, -2(%rbx,%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB21_13
# %bb.7:                                #   in Loop: Header=BB21_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1104(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB21_10
# %bb.8:                                #   in Loop: Header=BB21_6 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_18
# %bb.9:                                #   in Loop: Header=BB21_6 Depth=1
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_10:                              #   in Loop: Header=BB21_6 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_17
# %bb.11:                               #   in Loop: Header=BB21_6 Depth=1
	addq	%rbx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	callq	*(%rdi)
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB21_6
.LBB21_3:
	xorl	%ebx, %ebx
	jmp	.LBB21_16
.LBB21_13:
	movq	%r14, %rdi
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1104(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB21_16
# %bb.14:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_18
# %bb.15:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_17:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB21_16
.LBB21_18:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end21:
	.size	sdscatvprintf, .Lfunc_end21-sdscatvprintf
                                        # -- End function
	.globl	sdscatprintf            # -- Begin function sdscatprintf
	.p2align	4, 0x90
	.type	sdscatprintf,@function
sdscatprintf:                           # @sdscatprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB22_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB22_2:
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	callq	sdscatvprintf
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	sdscatprintf, .Lfunc_end22-sdscatprintf
                                        # -- End function
	.globl	sdscatfmt               # -- Begin function sdscatfmt
	.p2align	4, 0x90
	.type	sdscatfmt,@function
sdscatfmt:                              # @sdscatfmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB23_2
# %bb.1:
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm1, -224(%rbp)
	movaps	%xmm2, -208(%rbp)
	movaps	%xmm3, -192(%rbp)
	movaps	%xmm4, -176(%rbp)
	movaps	%xmm5, -160(%rbp)
	movaps	%xmm6, -144(%rbp)
	movaps	%xmm7, -128(%rbp)
.LBB23_2:
	movq	%rdx, -272(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r8, -256(%rbp)
	movq	%r9, -248(%rbp)
	movzbl	-1(%r14), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB23_5
# %bb.3:
	movl	%r13d, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_4:
	shrq	$3, %r13
	jmp	.LBB23_10
.LBB23_5:
	xorl	%r13d, %r13d
	jmp	.LBB23_10
.LBB23_6:
	movzbl	-3(%r14), %r13d
	jmp	.LBB23_10
.LBB23_7:
	movzwl	-5(%r14), %r13d
	jmp	.LBB23_10
.LBB23_8:
	movl	-9(%r14), %r13d
	jmp	.LBB23_10
.LBB23_9:
	movq	-17(%r14), %r13
.LBB23_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-288(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB23_145
# %bb.11:
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	jmp	.LBB23_16
.LBB23_12:                              #   in Loop: Header=BB23_16 Depth=1
	addq	$1, -17(%r14)
	.p2align	4, 0x90
.LBB23_13:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_14:                              #   in Loop: Header=BB23_16 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB23_15:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%r12), %al
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB23_145
.LBB23_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_65 Depth 2
                                        #     Child Loop BB23_69 Depth 2
                                        #     Child Loop BB23_76 Depth 2
                                        #     Child Loop BB23_82 Depth 2
	movb	-1(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB23_24
# %bb.17:                               #   in Loop: Header=BB23_16 Depth=1
	movzbl	%cl, %ecx
	jmpq	*.LJTI23_1(,%rcx,8)
.LBB23_18:                              #   in Loop: Header=BB23_16 Depth=1
	movzbl	-2(%r14), %ecx
	movzbl	-3(%r14), %edx
	jmp	.LBB23_20
	.p2align	4, 0x90
.LBB23_19:                              #   in Loop: Header=BB23_16 Depth=1
	movzwl	-3(%r14), %ecx
	movzwl	-5(%r14), %edx
.LBB23_20:                              #   in Loop: Header=BB23_16 Depth=1
	subq	%rdx, %rcx
	jmp	.LBB23_23
	.p2align	4, 0x90
.LBB23_21:                              #   in Loop: Header=BB23_16 Depth=1
	movl	-5(%r14), %ecx
	subl	-9(%r14), %ecx
	jmp	.LBB23_23
	.p2align	4, 0x90
.LBB23_22:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-9(%r14), %rcx
	subq	-17(%r14), %rcx
.LBB23_23:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB23_26
	jmp	.LBB23_25
.LBB23_24:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_25:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	sdsMakeRoomFor
	movabsq	$4294967296, %r9        # imm = 0x100000000
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r12), %al
.LBB23_26:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	jne	.LBB23_34
# %bb.27:                               #   in Loop: Header=BB23_16 Depth=1
	movsbl	1(%r12), %eax
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	addl	$-73, %ecx
	cmpl	$44, %ecx
	ja	.LBB23_45
# %bb.28:                               #   in Loop: Header=BB23_16 Depth=1
	movabsq	$4294967297, %rdx       # imm = 0x100000001
	btq	%rcx, %rdx
	jb	.LBB23_37
# %bb.29:                               #   in Loop: Header=BB23_16 Depth=1
	movabsq	$4398046512128, %rdx    # imm = 0x40000000400
	btq	%rcx, %rdx
	jb	.LBB23_40
# %bb.30:                               #   in Loop: Header=BB23_16 Depth=1
	movabsq	$17592186048512, %rdx   # imm = 0x100000001000
	btq	%rcx, %rdx
	jae	.LBB23_45
# %bb.31:                               #   in Loop: Header=BB23_16 Depth=1
	movslq	-64(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$117, %al
	movq	%r13, -112(%rbp)        # 8-byte Spill
	jne	.LBB23_48
# %bb.32:                               #   in Loop: Header=BB23_16 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_58
# %bb.33:                               #   in Loop: Header=BB23_16 Depth=1
	movq	%rcx, %rax
	addq	-48(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB23_59
	.p2align	4, 0x90
.LBB23_34:                              #   in Loop: Header=BB23_16 Depth=1
	movb	%al, (%r14,%r13)
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB23_14
# %bb.35:                               #   in Loop: Header=BB23_16 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_2(,%rcx,8)
.LBB23_36:                              #   in Loop: Header=BB23_16 Depth=1
	addl	$8, %eax
	andb	$-8, %al
	movb	%al, -1(%r14)
	jmp	.LBB23_13
.LBB23_37:                              #   in Loop: Header=BB23_16 Depth=1
	movslq	-64(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$105, %al
	jne	.LBB23_50
# %bb.38:                               #   in Loop: Header=BB23_16 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_60
# %bb.39:                               #   in Loop: Header=BB23_16 Depth=1
	movq	%rcx, %rax
	addq	-48(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB23_61
.LBB23_40:                              #   in Loop: Header=BB23_16 Depth=1
	movslq	-64(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB23_52
# %bb.41:                               #   in Loop: Header=BB23_16 Depth=1
	movq	%rdx, %rcx
	addq	-48(%rbp), %rcx
	addl	$8, %edx
	movl	%edx, -64(%rbp)
	jmp	.LBB23_53
.LBB23_45:                              #   in Loop: Header=BB23_16 Depth=1
	movb	%al, (%r14,%r13)
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB23_14
# %bb.46:                               #   in Loop: Header=BB23_16 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_10(,%rcx,8)
.LBB23_47:                              #   in Loop: Header=BB23_16 Depth=1
	addb	$1, -3(%r14)
	jmp	.LBB23_13
.LBB23_118:                             #   in Loop: Header=BB23_16 Depth=1
	addw	$1, -5(%r14)
	jmp	.LBB23_13
.LBB23_119:                             #   in Loop: Header=BB23_16 Depth=1
	addl	$1, -9(%r14)
	jmp	.LBB23_13
.LBB23_48:                              #   in Loop: Header=BB23_16 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_62
# %bb.49:                               #   in Loop: Header=BB23_16 Depth=1
	movq	%rcx, %rax
	addq	-48(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB23_63
.LBB23_50:                              #   in Loop: Header=BB23_16 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_73
# %bb.51:                               #   in Loop: Header=BB23_16 Depth=1
	movq	%rcx, %rax
	addq	-48(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB23_74
.LBB23_52:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -56(%rbp)
.LBB23_53:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$115, %al
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	jne	.LBB23_55
# %bb.54:                               #   in Loop: Header=BB23_16 Depth=1
	callq	strlen
	movq	%rax, %rbx
	jmp	.LBB23_126
.LBB23_55:                              #   in Loop: Header=BB23_16 Depth=1
	movzbl	-1(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB23_120
# %bb.56:                               #   in Loop: Header=BB23_16 Depth=1
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_7(,%rax,8)
.LBB23_57:                              #   in Loop: Header=BB23_16 Depth=1
	shrq	$3, %rbx
	jmp	.LBB23_125
.LBB23_58:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
.LBB23_59:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	jmp	.LBB23_64
.LBB23_60:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
.LBB23_61:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rax), %rsi
	jmp	.LBB23_75
.LBB23_62:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
.LBB23_63:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
.LBB23_64:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	leaq	-96(%rbp), %rsi
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB23_65:                              #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	mulq	%r8
	addq	%r9, %r15
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %edi
	movl	%ecx, %eax
	subl	%edi, %eax
	orb	$48, %al
	movb	%al, (%rsi)
	addq	$-1, %r13
	addq	$1, %rsi
	addb	$-8, %bl
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	.LBB23_65
# %bb.66:                               #   in Loop: Header=BB23_16 Depth=1
	movb	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r13
	je	.LBB23_70
# %bb.67:                               #   in Loop: Header=BB23_16 Depth=1
	movb	-96(%rbp), %cl
	movb	%al, -96(%rbp)
	movb	%cl, -1(%rsi)
	leaq	-98(%rbp), %rax
	subq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-95(%rbp), %rcx
	cmpq	%rax, %rcx
	jae	.LBB23_70
# %bb.68:                               # %.preheader1
                                        #   in Loop: Header=BB23_16 Depth=1
	leaq	-94(%rbp), %rcx
	.p2align	4, 0x90
.LBB23_69:                              #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edx
	movzbl	-1(%rcx), %esi
	movb	%dl, -1(%rcx)
	movb	%sil, (%rax)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB23_69
.LBB23_70:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	sarq	$32, %r15
	movb	-1(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB23_86
# %bb.71:                               #   in Loop: Header=BB23_16 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI23_3(,%rax,8)
.LBB23_72:                              #   in Loop: Header=BB23_16 Depth=1
	movzbl	-2(%r14), %eax
	movzbl	-3(%r14), %ecx
	subq	%rcx, %rax
	jmp	.LBB23_90
.LBB23_73:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
.LBB23_74:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
.LBB23_75:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	negq	%rcx
	cmovlq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB23_76:                              #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %edi
	movl	%ecx, %eax
	subl	%edi, %eax
	orb	$48, %al
	movb	%al, -96(%rbp,%r15)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	.LBB23_76
# %bb.77:                               #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB23_79
# %bb.78:                               #   in Loop: Header=BB23_16 Depth=1
	movb	$45, -96(%rbp,%r15)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movb	$45, %al
.LBB23_79:                              #   in Loop: Header=BB23_16 Depth=1
	movb	$0, -96(%rbp,%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %r15
	jl	.LBB23_83
# %bb.80:                               #   in Loop: Header=BB23_16 Depth=1
	movb	-96(%rbp), %cl
	movb	%al, -96(%rbp)
	leaq	-96(%rbp), %rax
	movb	%cl, -1(%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r15, %rax
	addq	$-2, %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-95(%rbp), %rcx
	cmpq	%rax, %rcx
	jae	.LBB23_83
# %bb.81:                               # %.preheader
                                        #   in Loop: Header=BB23_16 Depth=1
	leaq	-94(%rbp), %rcx
	.p2align	4, 0x90
.LBB23_82:                              #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edx
	movzbl	-1(%rcx), %ebx
	movb	%dl, -1(%rcx)
	movb	%bl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB23_82
.LBB23_83:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rbx
	movb	-1(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB23_96
# %bb.84:                               #   in Loop: Header=BB23_16 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI23_5(,%rax,8)
.LBB23_85:                              #   in Loop: Header=BB23_16 Depth=1
	movzbl	-2(%r14), %eax
	movzbl	-3(%r14), %ecx
	subq	%rcx, %rax
	jmp	.LBB23_100
.LBB23_86:                              #   in Loop: Header=BB23_16 Depth=1
	xorl	%eax, %eax
	jmp	.LBB23_90
.LBB23_87:                              #   in Loop: Header=BB23_16 Depth=1
	movzwl	-3(%r14), %eax
	movzwl	-5(%r14), %ecx
	subq	%rcx, %rax
	jmp	.LBB23_90
.LBB23_88:                              #   in Loop: Header=BB23_16 Depth=1
	movl	-5(%r14), %eax
	subl	-9(%r14), %eax
	jmp	.LBB23_90
.LBB23_89:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-9(%r14), %rax
	subq	-17(%r14), %rax
.LBB23_90:                              #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jae	.LBB23_92
# %bb.91:                               #   in Loop: Header=BB23_16 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	jmp	.LBB23_93
.LBB23_92:                              #   in Loop: Header=BB23_16 Depth=1
	leaq	-1(%r14), %rax
.LBB23_93:                              #   in Loop: Header=BB23_16 Depth=1
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	leaq	-96(%rbp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	ja	.LBB23_111
# %bb.94:                               #   in Loop: Header=BB23_16 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_4(,%rcx,8)
.LBB23_95:                              #   in Loop: Header=BB23_16 Depth=1
	subb	%bl, %al
	andb	$-8, %al
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movb	%al, (%rcx)
	jmp	.LBB23_110
.LBB23_96:                              #   in Loop: Header=BB23_16 Depth=1
	xorl	%eax, %eax
	jmp	.LBB23_100
.LBB23_97:                              #   in Loop: Header=BB23_16 Depth=1
	movzwl	-3(%r14), %eax
	movzwl	-5(%r14), %ecx
	subq	%rcx, %rax
	jmp	.LBB23_100
.LBB23_98:                              #   in Loop: Header=BB23_16 Depth=1
	movl	-5(%r14), %eax
	subl	-9(%r14), %eax
	jmp	.LBB23_100
.LBB23_99:                              #   in Loop: Header=BB23_16 Depth=1
	movq	-9(%r14), %rax
	subq	-17(%r14), %rax
.LBB23_100:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	movq	%r13, -112(%rbp)        # 8-byte Spill
	jae	.LBB23_102
# %bb.101:                              #   in Loop: Header=BB23_16 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	addq	$-1, %r13
	jmp	.LBB23_103
.LBB23_102:                             #   in Loop: Header=BB23_16 Depth=1
	leaq	-1(%r14), %r13
.LBB23_103:                             #   in Loop: Header=BB23_16 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	leaq	-96(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	ja	.LBB23_117
# %bb.104:                              #   in Loop: Header=BB23_16 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_6(,%rcx,8)
.LBB23_105:                             #   in Loop: Header=BB23_16 Depth=1
	shlb	$3, %r15b
	addb	%al, %r15b
	andb	$-8, %r15b
	movb	%r15b, (%r13)
	jmp	.LBB23_116
.LBB23_106:                             #   in Loop: Header=BB23_16 Depth=1
	addb	%r15b, -3(%r14)
	jmp	.LBB23_110
.LBB23_107:                             #   in Loop: Header=BB23_16 Depth=1
	addw	%r15w, -5(%r14)
	jmp	.LBB23_110
.LBB23_108:                             #   in Loop: Header=BB23_16 Depth=1
	subl	%r13d, -9(%r14)
	jmp	.LBB23_110
.LBB23_109:                             #   in Loop: Header=BB23_16 Depth=1
	addq	%r15, -17(%r14)
.LBB23_110:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_111:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %r13        # 8-byte Reload
	addq	%r15, %r13
	jmp	.LBB23_15
.LBB23_112:                             #   in Loop: Header=BB23_16 Depth=1
	addb	%bl, -3(%r14)
	jmp	.LBB23_116
.LBB23_113:                             #   in Loop: Header=BB23_16 Depth=1
	addw	%bx, -5(%r14)
	jmp	.LBB23_116
.LBB23_114:                             #   in Loop: Header=BB23_16 Depth=1
	addl	%r15d, -9(%r14)
	jmp	.LBB23_116
.LBB23_115:                             #   in Loop: Header=BB23_16 Depth=1
	addq	%rbx, -17(%r14)
.LBB23_116:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_117:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %r13        # 8-byte Reload
	addq	%rbx, %r13
	jmp	.LBB23_15
.LBB23_120:                             #   in Loop: Header=BB23_16 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB23_125
.LBB23_121:                             #   in Loop: Header=BB23_16 Depth=1
	movzbl	-3(%rdi), %ebx
	jmp	.LBB23_125
.LBB23_122:                             #   in Loop: Header=BB23_16 Depth=1
	movzwl	-5(%rdi), %ebx
	jmp	.LBB23_125
.LBB23_123:                             #   in Loop: Header=BB23_16 Depth=1
	movl	-9(%rdi), %ebx
	jmp	.LBB23_125
.LBB23_124:                             #   in Loop: Header=BB23_16 Depth=1
	movq	-17(%rdi), %rbx
.LBB23_125:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_126:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	-1(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB23_129
# %bb.127:                              #   in Loop: Header=BB23_16 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI23_8(,%rax,8)
.LBB23_128:                             #   in Loop: Header=BB23_16 Depth=1
	movzbl	-2(%r14), %eax
	movzbl	-3(%r14), %ecx
	subq	%rcx, %rax
	jmp	.LBB23_133
.LBB23_129:                             #   in Loop: Header=BB23_16 Depth=1
	xorl	%eax, %eax
	jmp	.LBB23_133
.LBB23_130:                             #   in Loop: Header=BB23_16 Depth=1
	movzwl	-3(%r14), %eax
	movzwl	-5(%r14), %ecx
	subq	%rcx, %rax
	jmp	.LBB23_133
.LBB23_131:                             #   in Loop: Header=BB23_16 Depth=1
	movl	-5(%r14), %eax
	subl	-9(%r14), %eax
	jmp	.LBB23_133
.LBB23_132:                             #   in Loop: Header=BB23_16 Depth=1
	movq	-9(%r14), %rax
	subq	-17(%r14), %rax
.LBB23_133:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB23_135
# %bb.134:                              #   in Loop: Header=BB23_16 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
	addq	$-1, %r15
	jmp	.LBB23_136
.LBB23_135:                             #   in Loop: Header=BB23_16 Depth=1
	leaq	-1(%r14), %r15
.LBB23_136:                             #   in Loop: Header=BB23_16 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	ja	.LBB23_144
# %bb.137:                              #   in Loop: Header=BB23_16 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_9(,%rcx,8)
.LBB23_138:                             #   in Loop: Header=BB23_16 Depth=1
	leal	(,%rbx,8), %ecx
	addb	%al, %cl
	andb	$-8, %cl
	movb	%cl, (%r15)
	jmp	.LBB23_143
.LBB23_139:                             #   in Loop: Header=BB23_16 Depth=1
	addb	%bl, -3(%r14)
	jmp	.LBB23_143
.LBB23_140:                             #   in Loop: Header=BB23_16 Depth=1
	addw	%bx, -5(%r14)
	jmp	.LBB23_143
.LBB23_141:                             #   in Loop: Header=BB23_16 Depth=1
	addl	%ebx, -9(%r14)
	jmp	.LBB23_143
.LBB23_142:                             #   in Loop: Header=BB23_16 Depth=1
	addq	%rbx, -17(%r14)
.LBB23_143:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_144:                             #   in Loop: Header=BB23_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %r13
	jmp	.LBB23_15
.LBB23_145:
	movb	$0, (%r14,%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	sdscatfmt, .Lfunc_end23-sdscatfmt
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_4
	.quad	.LBB23_6
	.quad	.LBB23_7
	.quad	.LBB23_8
	.quad	.LBB23_9
.LJTI23_1:
	.quad	.LBB23_18
	.quad	.LBB23_19
	.quad	.LBB23_21
	.quad	.LBB23_22
.LJTI23_2:
	.quad	.LBB23_36
	.quad	.LBB23_47
	.quad	.LBB23_118
	.quad	.LBB23_119
	.quad	.LBB23_12
.LJTI23_3:
	.quad	.LBB23_72
	.quad	.LBB23_87
	.quad	.LBB23_88
	.quad	.LBB23_89
.LJTI23_4:
	.quad	.LBB23_95
	.quad	.LBB23_106
	.quad	.LBB23_107
	.quad	.LBB23_108
	.quad	.LBB23_109
.LJTI23_5:
	.quad	.LBB23_85
	.quad	.LBB23_97
	.quad	.LBB23_98
	.quad	.LBB23_99
.LJTI23_6:
	.quad	.LBB23_105
	.quad	.LBB23_112
	.quad	.LBB23_113
	.quad	.LBB23_114
	.quad	.LBB23_115
.LJTI23_7:
	.quad	.LBB23_57
	.quad	.LBB23_121
	.quad	.LBB23_122
	.quad	.LBB23_123
	.quad	.LBB23_124
.LJTI23_8:
	.quad	.LBB23_128
	.quad	.LBB23_130
	.quad	.LBB23_131
	.quad	.LBB23_132
.LJTI23_9:
	.quad	.LBB23_138
	.quad	.LBB23_139
	.quad	.LBB23_140
	.quad	.LBB23_141
	.quad	.LBB23_142
.LJTI23_10:
	.quad	.LBB23_36
	.quad	.LBB23_47
	.quad	.LBB23_118
	.quad	.LBB23_119
	.quad	.LBB23_12
                                        # -- End function
	.text
	.globl	sdstrim                 # -- Begin function sdstrim
	.p2align	4, 0x90
	.type	sdstrim,@function
sdstrim:                                # @sdstrim
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB24_1
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI24_0(,%rcx,8)
.LBB24_3:
	shrq	$3, %rax
	jmp	.LBB24_8
.LBB24_1:
	xorl	%eax, %eax
	jmp	.LBB24_8
.LBB24_4:
	movzbl	-3(%r14), %eax
	jmp	.LBB24_8
.LBB24_5:
	movzwl	-5(%r14), %eax
	jmp	.LBB24_8
.LBB24_6:
	movl	-9(%r14), %eax
	jmp	.LBB24_8
.LBB24_7:
	movq	-17(%r14), %rax
.LBB24_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r14,%rax), %r12
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	cmpq	%r14, %r12
	jb	.LBB24_12
# %bb.9:                                # %.preheader1
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	movsbl	(%rbx), %esi
	movq	%r15, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jbe	.LBB24_10
	jmp	.LBB24_12
	.p2align	4, 0x90
.LBB24_13:                              #   in Loop: Header=BB24_12 Depth=1
	movsbl	(%r12), %esi
	movq	%r15, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_15
# %bb.14:                               #   in Loop: Header=BB24_12 Depth=1
	addq	$-1, %r12
.LBB24_12:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	ja	.LBB24_13
.LBB24_15:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jbe	.LBB24_17
# %bb.16:
	xorl	%r12d, %r12d
	jmp	.LBB24_18
.LBB24_17:
	subq	%rbx, %r12
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB24_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB24_20
# %bb.19:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
.LBB24_20:
	movb	$0, (%r14,%r12)
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB24_28
# %bb.21:
	andl	$7, %eax
	jmpq	*.LJTI24_1(,%rax,8)
.LBB24_22:
	shlb	$3, %r12b
	movb	%r12b, -1(%r14)
	jmp	.LBB24_27
.LBB24_23:
	movb	%r12b, -3(%r14)
	jmp	.LBB24_27
.LBB24_24:
	movw	%r12w, -5(%r14)
	jmp	.LBB24_27
.LBB24_25:
	movl	%r12d, -9(%r14)
	jmp	.LBB24_27
.LBB24_26:
	movq	%r12, -17(%r14)
.LBB24_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	sdstrim, .Lfunc_end24-sdstrim
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI24_0:
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_5
	.quad	.LBB24_6
	.quad	.LBB24_7
.LJTI24_1:
	.quad	.LBB24_22
	.quad	.LBB24_23
	.quad	.LBB24_24
	.quad	.LBB24_25
	.quad	.LBB24_26
                                        # -- End function
	.text
	.globl	sdsrange                # -- Begin function sdsrange
	.p2align	4, 0x90
	.type	sdsrange,@function
sdsrange:                               # @sdsrange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB25_6
# %bb.1:
	movq	%rdi, %r14
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI25_0(,%rcx,8)
.LBB25_7:
	shrq	$3, %rax
	jmp	.LBB25_8
.LBB25_6:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_34
.LBB25_2:
	movzbl	-3(%r14), %eax
	jmp	.LBB25_8
.LBB25_3:
	movzwl	-5(%r14), %eax
	jmp	.LBB25_8
.LBB25_4:
	movl	-9(%r14), %eax
	jmp	.LBB25_8
.LBB25_5:
	movq	-17(%r14), %rax
.LBB25_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_36
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB25_11
# %bb.10:
	xorl	%ecx, %ecx
	addq	%rax, %rsi
	cmovsq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB25_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB25_13
# %bb.12:
	xorl	%ecx, %ecx
	addq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB25_13:
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rsi, %rbx
	jge	.LBB25_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_15
.LBB25_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%rbx
	je	.LBB25_15
# %bb.17:
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rsi, %rcx
	jle	.LBB25_15
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jl	.LBB25_23
# %bb.19:
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jge	.LBB25_21
# %bb.20:
	xorl	%ecx, %ecx
	jmp	.LBB25_22
.LBB25_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB25_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_27:
	movb	$0, (%r14,%rbx)
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB25_35
# %bb.28:
	andl	$7, %eax
	jmpq	*.LJTI25_1(,%rax,8)
.LBB25_29:
	shlb	$3, %bl
	movb	%bl, -1(%r14)
	jmp	.LBB25_34
.LBB25_30:
	movb	%bl, -3(%r14)
	jmp	.LBB25_34
.LBB25_31:
	movw	%bx, -5(%r14)
	jmp	.LBB25_34
.LBB25_32:
	movl	%ebx, -9(%r14)
	jmp	.LBB25_34
.LBB25_33:
	movq	%rbx, -17(%r14)
.LBB25_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_35:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB25_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
.LBB25_23:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB25_27
# %bb.24:
	testq	%rbx, %rbx
	je	.LBB25_27
# %bb.25:
	addq	%r14, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memmove
	jmp	.LBB25_26
.Lfunc_end25:
	.size	sdsrange, .Lfunc_end25-sdsrange
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI25_0:
	.quad	.LBB25_7
	.quad	.LBB25_2
	.quad	.LBB25_3
	.quad	.LBB25_4
	.quad	.LBB25_5
.LJTI25_1:
	.quad	.LBB25_29
	.quad	.LBB25_30
	.quad	.LBB25_31
	.quad	.LBB25_32
	.quad	.LBB25_33
                                        # -- End function
	.text
	.globl	sdstolower              # -- Begin function sdstolower
	.p2align	4, 0x90
	.type	sdstolower,@function
sdstolower:                             # @sdstolower
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movzbl	-1(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB26_6
# %bb.1:
	movq	%rdi, %r15
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_7:
	shrq	$3, %r14
	jmp	.LBB26_8
.LBB26_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_11
.LBB26_2:
	movzbl	-3(%r15), %r14d
	jmp	.LBB26_8
.LBB26_3:
	movzwl	-5(%r15), %r14d
	jmp	.LBB26_8
.LBB26_4:
	movl	-9(%r15), %r14d
	jmp	.LBB26_8
.LBB26_5:
	movq	-17(%r15), %r14
.LBB26_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB26_11
# %bb.9:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB26_10:                              # =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%rbx), %r12
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	leal	32(%r12), %ecx
	cmpb	$1, %al
	movzbl	%cl, %eax
	cmovnel	%r12d, %eax
	movb	%al, (%r15,%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB26_10
.LBB26_11:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	sdstolower, .Lfunc_end26-sdstolower
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI26_0:
	.quad	.LBB26_7
	.quad	.LBB26_2
	.quad	.LBB26_3
	.quad	.LBB26_4
	.quad	.LBB26_5
                                        # -- End function
	.text
	.globl	sdstoupper              # -- Begin function sdstoupper
	.p2align	4, 0x90
	.type	sdstoupper,@function
sdstoupper:                             # @sdstoupper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movzbl	-1(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB27_6
# %bb.1:
	movq	%rdi, %r15
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI27_0(,%rax,8)
.LBB27_7:
	shrq	$3, %r14
	jmp	.LBB27_8
.LBB27_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_11
.LBB27_2:
	movzbl	-3(%r15), %r14d
	jmp	.LBB27_8
.LBB27_3:
	movzwl	-5(%r15), %r14d
	jmp	.LBB27_8
.LBB27_4:
	movl	-9(%r15), %r14d
	jmp	.LBB27_8
.LBB27_5:
	movq	-17(%r15), %r14
.LBB27_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB27_11
# %bb.9:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB27_10:                              # =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%rbx), %r12
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	leal	-32(%r12), %ecx
	cmpb	$2, %al
	movzbl	%cl, %eax
	cmovnel	%r12d, %eax
	movb	%al, (%r15,%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB27_10
.LBB27_11:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	sdstoupper, .Lfunc_end27-sdstoupper
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI27_0:
	.quad	.LBB27_7
	.quad	.LBB27_2
	.quad	.LBB27_3
	.quad	.LBB27_4
	.quad	.LBB27_5
                                        # -- End function
	.text
	.globl	sdscmp                  # -- Begin function sdscmp
	.p2align	4, 0x90
	.type	sdscmp,@function
sdscmp:                                 # @sdscmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movzbl	-1(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB28_1
# %bb.2:
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI28_0(,%rax,8)
.LBB28_3:
	shrq	$3, %r14
	jmp	.LBB28_8
.LBB28_1:
	xorl	%r14d, %r14d
	jmp	.LBB28_8
.LBB28_4:
	movzbl	-3(%rdi), %r14d
	jmp	.LBB28_8
.LBB28_5:
	movzwl	-5(%rdi), %r14d
	jmp	.LBB28_8
.LBB28_6:
	movl	-9(%rdi), %r14d
	jmp	.LBB28_8
.LBB28_7:
	movq	-17(%rdi), %r14
.LBB28_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB28_9
# %bb.10:
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI28_1(,%rax,8)
.LBB28_11:
	shrq	$3, %rbx
	jmp	.LBB28_16
.LBB28_9:
	xorl	%ebx, %ebx
	jmp	.LBB28_16
.LBB28_12:
	movzbl	-3(%rsi), %ebx
	jmp	.LBB28_16
.LBB28_13:
	movzwl	-5(%rsi), %ebx
	jmp	.LBB28_16
.LBB28_14:
	movl	-9(%rsi), %ebx
	jmp	.LBB28_16
.LBB28_15:
	movq	-17(%rsi), %rbx
.LBB28_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	movq	%rbx, %rdx
	cmovbq	%r14, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB28_19
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rbx, %r14
	ja	.LBB28_19
# %bb.18:
	sbbl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB28_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	sdscmp, .Lfunc_end28-sdscmp
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_3
	.quad	.LBB28_4
	.quad	.LBB28_5
	.quad	.LBB28_6
	.quad	.LBB28_7
.LJTI28_1:
	.quad	.LBB28_11
	.quad	.LBB28_12
	.quad	.LBB28_13
	.quad	.LBB28_14
	.quad	.LBB28_15
                                        # -- End function
	.text
	.globl	sdssplitlen             # -- Begin function sdssplitlen
	.p2align	4, 0x90
	.type	sdssplitlen,@function
sdssplitlen:                            # @sdssplitlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB29_31
# %bb.1:
	movl	%ecx, %r12d
	testl	%ecx, %ecx
	jle	.LBB29_31
# %bb.2:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_3
# %bb.4:
	movq	%r8, %r15
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_30
# %bb.5:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB29_6
# %bb.7:
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r12), %eax
	cltq
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %rbx
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	jle	.LBB29_8
# %bb.9:
	movq	%r12, -96(%rbp)         # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$5, %r15d
	movq	%r14, %rbx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB29_10
	.p2align	4, 0x90
.LBB29_23:                              #   in Loop: Header=BB29_10 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_24
.LBB29_26:                              #   in Loop: Header=BB29_10 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-104(%rbp), %r12        # 8-byte Folded Reload
	jge	.LBB29_27
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	leal	2(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	jge	.LBB29_21
# %bb.11:                               #   in Loop: Header=BB29_10 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_12
# %bb.19:                               #   in Loop: Header=BB29_10 Depth=1
	addl	%r15d, %r15d
	movslq	%r15d, %rdx
	shlq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	callq	*16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_13
# %bb.20:                               #   in Loop: Header=BB29_10 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
.LBB29_21:                              #   in Loop: Header=BB29_10 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -96(%rbp)           # 4-byte Folded Reload
	jne	.LBB29_23
# %bb.22:                               #   in Loop: Header=BB29_10 Depth=1
	movzbl	(%rdi), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpb	(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_23
.LBB29_24:                              #   in Loop: Header=BB29_10 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%r12, %rsi
	subq	%rcx, %rsi
	callq	sdsnewlen
	movslq	%r13d, %rcx
	movq	%rax, (%r14,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_14
# %bb.25:                               #   in Loop: Header=BB29_10 Depth=1
	addl	$1, %r13d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%r12,%rcx), %rax
	addq	$-1, %rax
	addq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	jmp	.LBB29_26
.LBB29_6:
	movl	$0, (%r15)
	jmp	.LBB29_31
.LBB29_8:
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB29_27:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	subq	%rax, %rsi
	callq	sdsnewlen
	movslq	%r13d, %rcx
	movq	%rax, (%r14,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_14
# %bb.28:
	addl	$1, %r13d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r13d, (%rax)
	jmp	.LBB29_31
.LBB29_12:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB29_17
# %bb.15:
	movl	%r13d, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB29_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	callq	sdsfree
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB29_16
.LBB29_17:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_18
# %bb.29:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
.LBB29_30:
	xorl	%r14d, %r14d
.LBB29_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_3:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_30
.LBB29_18:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end29:
	.size	sdssplitlen, .Lfunc_end29-sdssplitlen
                                        # -- End function
	.globl	sdsfreesplitres         # -- Begin function sdsfreesplitres
	.p2align	4, 0x90
	.type	sdsfreesplitres,@function
sdsfreesplitres:                        # @sdsfreesplitres
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_6
# %bb.1:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB30_4
# %bb.2:
	movslq	%esi, %rbx
	.p2align	4, 0x90
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%r14,%rbx,8), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	jne	.LBB30_3
.LBB30_4:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_7
# %bb.5:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB30_7:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end30:
	.size	sdsfreesplitres, .Lfunc_end30-sdsfreesplitres
                                        # -- End function
	.globl	sdscatrepr              # -- Begin function sdscatrepr
	.p2align	4, 0x90
	.type	sdscatrepr,@function
sdscatrepr:                             # @sdscatrepr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	$.L.str.7, %esi
	movl	$1, %edx
	callq	sdscatlen
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB31_18
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB31_5
.LBB31_2:                               #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.9, %esi
	.p2align	4, 0x90
.LBB31_3:                               #   in Loop: Header=BB31_5 Depth=1
	movl	$2, %edx
	movq	%r12, %rdi
	callq	sdscatlen
.LBB31_4:                               #   in Loop: Header=BB31_5 Depth=1
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	je	.LBB31_18
.LBB31_5:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%r15,%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	leal	-7(%rdx), %eax
	cmpl	$27, %eax
	ja	.LBB31_8
# %bb.6:                                #   in Loop: Header=BB31_5 Depth=1
	jmpq	*.LJTI31_0(,%rax,8)
.LBB31_7:                               #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.12, %esi
	jmp	.LBB31_3
.LBB31_8:                               #   in Loop: Header=BB31_5 Depth=1
	cmpl	$92, %edx
	jne	.LBB31_11
.LBB31_9:                               #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.8, %esi
	jmp	.LBB31_10
.LBB31_11:                              #   in Loop: Header=BB31_5 Depth=1
	callq	__locale_ctype_ptr
	movsbq	(%r15,%rbx), %rdx
	testb	$-105, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB31_16
# %bb.12:                               #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.14, %esi
.LBB31_10:                              #   in Loop: Header=BB31_5 Depth=1
	movq	%r12, %rdi
                                        # kill: def $edx killed $edx killed $rdx
.LBB31_17:                              #   in Loop: Header=BB31_5 Depth=1
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB31_4
.LBB31_13:                              #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.13, %esi
	jmp	.LBB31_3
.LBB31_14:                              #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.11, %esi
	jmp	.LBB31_3
.LBB31_15:                              #   in Loop: Header=BB31_5 Depth=1
	movl	$.L.str.10, %esi
	jmp	.LBB31_3
.LBB31_16:                              #   in Loop: Header=BB31_5 Depth=1
	movzbl	%dl, %edx
	movl	$.L.str.15, %esi
	movq	%r12, %rdi
	jmp	.LBB31_17
.LBB31_18:
	movl	$.L.str.7, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	sdscatrepr, .Lfunc_end31-sdscatrepr
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI31_0:
	.quad	.LBB31_7
	.quad	.LBB31_13
	.quad	.LBB31_14
	.quad	.LBB31_2
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_15
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_11
	.quad	.LBB31_9
                                        # -- End function
	.text
	.globl	is_hex_digit            # -- Begin function is_hex_digit
	.p2align	4, 0x90
	.type	is_hex_digit,@function
is_hex_digit:                           # @is_hex_digit
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %dil
	jle	.LBB32_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpb	$58, %dil
	jl	.LBB32_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %dil
	jl	.LBB32_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$103, %dil
	jge	.LBB32_5
.LBB32_6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB32_1:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_5:
	addb	$-65, %dil
	xorl	%eax, %eax
	cmpb	$6, %dil
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end32:
	.size	is_hex_digit, .Lfunc_end32-is_hex_digit
                                        # -- End function
	.globl	hex_digit_to_int        # -- Begin function hex_digit_to_int
	.p2align	4, 0x90
	.type	hex_digit_to_int,@function
hex_digit_to_int:                       # @hex_digit_to_int
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-48, %edi
	xorl	%eax, %eax
	cmpl	$54, %edi
	ja	.LBB33_2
# %bb.1:
	movslq	%edi, %rax
	movl	.Lswitch.table.hex_digit_to_int(,%rax,4), %eax
.LBB33_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end33:
	.size	hex_digit_to_int, .Lfunc_end33-hex_digit_to_int
                                        # -- End function
	.globl	sdssplitargs            # -- Begin function sdssplitargs
	.p2align	4, 0x90
	.type	sdssplitargs,@function
sdssplitargs:                           # @sdssplitargs
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
	movq	%rdi, %rbx
	movl	$0, (%rsi)
	xorl	%r12d, %r12d
.LBB34_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_2 Depth 2
                                        #     Child Loop BB34_12 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_4
	.p2align	4, 0x90
.LBB34_2:                               #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movsbq	(%rbx), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_5
# %bb.3:                                #   in Loop: Header=BB34_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_2
.LBB34_4:                               #   in Loop: Header=BB34_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB34_5:                               #   in Loop: Header=BB34_1 Depth=1
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_80
# %bb.6:                                #   in Loop: Header=BB34_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	%r12, -64(%rbp)         # 8-byte Spill
	je	.LBB34_70
# %bb.7:                                #   in Loop: Header=BB34_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_9
# %bb.8:                                #   in Loop: Header=BB34_1 Depth=1
	movq	%rax, %r15
	addq	$3, %r15
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rax)
	movb	$1, 2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%rax)
	jmp	.LBB34_10
.LBB34_70:                              #   in Loop: Header=BB34_1 Depth=1
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB34_9:                               #   in Loop: Header=BB34_1 Depth=1
	xorl	%r15d, %r15d
.LBB34_10:                              #   in Loop: Header=BB34_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB34_12
	.p2align	4, 0x90
.LBB34_11:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB34_67
.LBB34_12:                              #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB34_22
# %bb.13:                               #   in Loop: Header=BB34_12 Depth=2
	cmpb	$92, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_33
# %bb.14:                               #   in Loop: Header=BB34_12 Depth=2
	cmpb	$120, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_33
# %bb.15:                               #   in Loop: Header=BB34_12 Depth=2
	movzbl	2(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %al
	jle	.LBB34_31
# %bb.16:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %al
	jge	.LBB34_49
.LBB34_17:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_18:                              #   in Loop: Header=BB34_12 Depth=2
	movzbl	3(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %al
	jle	.LBB34_31
# %bb.19:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %al
	jge	.LBB34_64
.LBB34_20:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_21:                              #   in Loop: Header=BB34_12 Depth=2
	leaq	3(%rbx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movsbl	2(%rbx), %edi
	callq	hex_digit_to_int
	movl	%eax, %r12d
	shll	$4, %r12d
	movsbl	3(%rbx), %edi
	callq	hex_digit_to_int
	addl	%r12d, %eax
	movb	%al, -42(%rbp)
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	-42(%rbp), %rsi
	callq	sdscatlen
	movq	%rax, %r15
	xorl	%r12d, %r12d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB34_59
	.p2align	4, 0x90
.LBB34_22:                              #   in Loop: Header=BB34_12 Depth=2
	movsbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB34_28
# %bb.23:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$92, %al
	jne	.LBB34_26
# %bb.24:                               #   in Loop: Header=BB34_12 Depth=2
	cmpb	$39, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_26
# %bb.25:                               #   in Loop: Header=BB34_12 Depth=2
	addq	$1, %rbx
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	jmp	.LBB34_45
.LBB34_26:                              #   in Loop: Header=BB34_12 Depth=2
	movzbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$39, %al
	jne	.LBB34_43
# %bb.27:                               #   in Loop: Header=BB34_12 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB34_39
.LBB34_28:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$39, %eax
	ja	.LBB34_62
# %bb.29:                               #   in Loop: Header=BB34_12 Depth=2
	movl	%eax, %eax
	movabsq	$4294977025, %rcx       # imm = 0x100002601
	btq	%rax, %rcx
	jae	.LBB34_46
# %bb.30:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$1, %r12d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB34_59
.LBB34_31:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB34_32:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_33:                              #   in Loop: Header=BB34_12 Depth=2
	cmpb	$92, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_38
# %bb.34:                               #   in Loop: Header=BB34_12 Depth=2
	cmpb	$0, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_38
# %bb.35:                               #   in Loop: Header=BB34_12 Depth=2
	addq	$1, %rbx
	movsbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-97(%rax), %ecx
	cmpl	$19, %ecx
	ja	.LBB34_51
# %bb.36:                               #   in Loop: Header=BB34_12 Depth=2
	jmpq	*.LJTI34_0(,%rcx,8)
.LBB34_37:                              #   in Loop: Header=BB34_12 Depth=2
	movb	$7, -41(%rbp)
	jmp	.LBB34_56
	.p2align	4, 0x90
.LBB34_38:                              #   in Loop: Header=BB34_12 Depth=2
	movzbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$34, %al
	jne	.LBB34_41
.LBB34_39:                              #   in Loop: Header=BB34_12 Depth=2
	cmpb	$0, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	je	.LBB34_59
# %bb.40:                               #   in Loop: Header=BB34_12 Depth=2
	callq	__locale_ctype_ptr
	movsbq	1(%rbx), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_59
	jmp	.LBB34_72
	.p2align	4, 0x90
.LBB34_41:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB34_72
# %bb.42:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.LBB34_57
.LBB34_43:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB34_72
# %bb.44:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
.LBB34_45:                              #   in Loop: Header=BB34_12 Depth=2
	callq	sdscatlen
	movq	%rax, %r15
	xorl	%r13d, %r13d
	jmp	.LBB34_58
.LBB34_46:                              #   in Loop: Header=BB34_12 Depth=2
	cmpq	$34, %rax
	je	.LBB34_63
# %bb.47:                               #   in Loop: Header=BB34_12 Depth=2
	cmpq	$39, %rax
	jne	.LBB34_62
# %bb.48:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$1, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB34_58
.LBB34_49:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %al
	jl	.LBB34_61
# %bb.50:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$102, %al
	jle	.LBB34_17
	jmp	.LBB34_32
.LBB34_51:                              #   in Loop: Header=BB34_12 Depth=2
	movb	%al, -41(%rbp)
	jmp	.LBB34_56
.LBB34_52:                              #   in Loop: Header=BB34_12 Depth=2
	movb	$10, -41(%rbp)
	jmp	.LBB34_56
.LBB34_53:                              #   in Loop: Header=BB34_12 Depth=2
	movb	$8, -41(%rbp)
	jmp	.LBB34_56
.LBB34_54:                              #   in Loop: Header=BB34_12 Depth=2
	movb	$13, -41(%rbp)
	jmp	.LBB34_56
.LBB34_55:                              #   in Loop: Header=BB34_12 Depth=2
	movb	$9, -41(%rbp)
.LBB34_56:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	-41(%rbp), %rsi
.LBB34_57:                              #   in Loop: Header=BB34_12 Depth=2
	callq	sdscatlen
	movq	%rax, %r15
.LBB34_58:                              #   in Loop: Header=BB34_12 Depth=2
	xorl	%r12d, %r12d
.LBB34_59:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_11
# %bb.60:                               #   in Loop: Header=BB34_12 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_11
.LBB34_61:                              #   in Loop: Header=BB34_12 Depth=2
	addb	$-65, %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %al
	jbe	.LBB34_18
	jmp	.LBB34_33
.LBB34_62:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	sdscatlen
	movq	%rax, %r15
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB34_58
.LBB34_63:                              #   in Loop: Header=BB34_12 Depth=2
	xorl	%r14d, %r14d
	movl	$1, %r13d
	jmp	.LBB34_58
.LBB34_64:                              #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %al
	jl	.LBB34_66
# %bb.65:                               #   in Loop: Header=BB34_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$102, %al
	jle	.LBB34_20
	jmp	.LBB34_32
.LBB34_66:                              #   in Loop: Header=BB34_12 Depth=2
	addb	$-65, %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %al
	jbe	.LBB34_21
	jmp	.LBB34_33
	.p2align	4, 0x90
.LBB34_67:                              #   in Loop: Header=BB34_1 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movslq	(%r14), %rax
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB34_71
# %bb.68:                               #   in Loop: Header=BB34_1 Depth=1
	leaq	8(,%rax,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	*16(%rdi)
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB34_69:                              #   in Loop: Header=BB34_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%r14), %rax
	movq	%r15, (%r12,%rax,8)
	addl	$1, %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_1
.LBB34_71:                              #   in Loop: Header=BB34_1 Depth=1
	callq	__errno
	movl	$12, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB34_69
.LBB34_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %eax
	subl	$1, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	jb	.LBB34_74
	.p2align	4, 0x90
.LBB34_73:                              # =>This Inner Loop Header: Depth=1
	cltq
	movq	(%r14,%rax,8), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	subl	$1, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB34_73
.LBB34_74:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB34_85
# %bb.75:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB34_78
# %bb.76:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB34_85
# %bb.77:
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs(,%rax,8), %r15
	movq	%r15, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_78:
	movl	$0, (%rbx)
	xorl	%r12d, %r12d
.LBB34_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_80:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB34_79
# %bb.81:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB34_84
# %bb.82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	callq	*(%rdi)
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_83:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_79
.LBB34_84:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB34_83
.LBB34_85:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end34:
	.size	sdssplitargs, .Lfunc_end34-sdssplitargs
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI34_0:
	.quad	.LBB34_37
	.quad	.LBB34_53
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_52
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_51
	.quad	.LBB34_54
	.quad	.LBB34_51
	.quad	.LBB34_55
                                        # -- End function
	.text
	.globl	sdsmapchars             # -- Begin function sdsmapchars
	.p2align	4, 0x90
	.type	sdsmapchars,@function
sdsmapchars:                            # @sdsmapchars
# %bb.0:
	movq	%rdi, %rax
	movzbl	-1(%rdi), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %edi
	andb	$7, %dil
	cmpb	$4, %dil
	ja	.LBB35_6
# %bb.1:
	movl	%r8d, %edi
	andl	$7, %edi
	jmpq	*.LJTI35_0(,%rdi,8)
.LBB35_7:
	shrq	$3, %r8
	jmp	.LBB35_8
.LBB35_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB35_2:
	movzbl	-3(%rax), %r8d
	jmp	.LBB35_8
.LBB35_3:
	movzwl	-5(%rax), %r8d
	jmp	.LBB35_8
.LBB35_4:
	movl	-9(%rax), %r8d
	jmp	.LBB35_8
.LBB35_5:
	movq	-17(%rax), %r8
.LBB35_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB35_16
# %bb.9:
	xorl	%r10d, %r10d
	jmp	.LBB35_10
	.p2align	4, 0x90
.LBB35_13:                              #   in Loop: Header=BB35_10 Depth=1
	movb	(%rdx,%rdi), %dil
	movb	%dil, (%rax,%r10)
	movl	$42, __A_VARIABLE(%rip)
.LBB35_15:                              #   in Loop: Header=BB35_10 Depth=1
	addq	$1, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %r10
	je	.LBB35_16
.LBB35_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_12 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB35_15
# %bb.11:                               #   in Loop: Header=BB35_10 Depth=1
	movb	(%rax,%r10), %r9b
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB35_12:                              #   Parent Loop BB35_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	(%rsi,%rdi), %r9b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB35_13
# %bb.14:                               #   in Loop: Header=BB35_12 Depth=2
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	jb	.LBB35_12
	jmp	.LBB35_15
.LBB35_16:
	retq
.Lfunc_end35:
	.size	sdsmapchars, .Lfunc_end35-sdsmapchars
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_7
	.quad	.LBB35_2
	.quad	.LBB35_3
	.quad	.LBB35_4
	.quad	.LBB35_5
                                        # -- End function
	.text
	.globl	sdsjoin                 # -- Begin function sdsjoin
	.p2align	4, 0x90
	.type	sdsjoin,@function
sdsjoin:                                # @sdsjoin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%esi, %ebx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB36_10
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_3
# %bb.2:
	movq	%rax, %r13
	addq	$3, %r13
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rax)
	movb	$1, 2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%rax)
	jmp	.LBB36_4
.LBB36_10:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_3:
	xorl	%r13d, %r13d
.LBB36_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB36_9
# %bb.5:
	leal	-1(%rbx), %r12d
	movl	%ebx, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB36_7
	.p2align	4, 0x90
.LBB36_6:                               #   in Loop: Header=BB36_7 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	je	.LBB36_9
.LBB36_7:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r15,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	je	.LBB36_6
# %bb.8:                                #   in Loop: Header=BB36_7 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB36_6
.LBB36_9:
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
.Lfunc_end36:
	.size	sdsjoin, .Lfunc_end36-sdsjoin
                                        # -- End function
	.globl	sdsjoinsds              # -- Begin function sdsjoinsds
	.p2align	4, 0x90
	.type	sdsjoinsds,@function
sdsjoinsds:                             # @sdsjoinsds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movl	%esi, %ebx
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB37_18
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB37_3
# %bb.2:
	movq	%rax, %rcx
	addq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, (%rcx)
	movb	$1, 2(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%rcx)
	jmp	.LBB37_4
.LBB37_18:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB37_3:
	xorl	%eax, %eax
.LBB37_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB37_17
# %bb.5:
	leal	-1(%rbx), %r12d
	movl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB37_7
	.p2align	4, 0x90
.LBB37_6:                               #   in Loop: Header=BB37_7 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB37_17
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r14,8), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB37_10
# %bb.8:                                #   in Loop: Header=BB37_7 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI37_0(,%rcx,8)
.LBB37_9:                               #   in Loop: Header=BB37_7 Depth=1
	shrq	$3, %rdx
	jmp	.LBB37_15
.LBB37_10:                              #   in Loop: Header=BB37_7 Depth=1
	xorl	%edx, %edx
	jmp	.LBB37_15
.LBB37_11:                              #   in Loop: Header=BB37_7 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB37_15
.LBB37_12:                              #   in Loop: Header=BB37_7 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB37_15
.LBB37_13:                              #   in Loop: Header=BB37_7 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB37_15
.LBB37_14:                              #   in Loop: Header=BB37_7 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB37_15:                              #   in Loop: Header=BB37_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r12
	je	.LBB37_6
# %bb.16:                               #   in Loop: Header=BB37_7 Depth=1
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB37_6
.LBB37_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	sdsjoinsds, .Lfunc_end37-sdsjoinsds
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI37_0:
	.quad	.LBB37_9
	.quad	.LBB37_11
	.quad	.LBB37_12
	.quad	.LBB37_13
	.quad	.LBB37_14
                                        # -- End function
	.text
	.globl	sds_malloc              # -- Begin function sds_malloc
	.p2align	4, 0x90
	.type	sds_malloc,@function
sds_malloc:                             # @sds_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB38_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB38_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB38_3
.Lfunc_end38:
	.size	sds_malloc, .Lfunc_end38-sds_malloc
                                        # -- End function
	.globl	sds_realloc             # -- Begin function sds_realloc
	.p2align	4, 0x90
	.type	sds_realloc,@function
sds_realloc:                            # @sds_realloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB39_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	callq	*16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB39_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB39_3
.Lfunc_end39:
	.size	sds_realloc, .Lfunc_end39-sds_realloc
                                        # -- End function
	.globl	sds_free                # -- Begin function sds_free
	.p2align	4, 0x90
	.type	sds_free,@function
sds_free:                               # @sds_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB40_2
# %bb.1:
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB40_2:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end40:
	.size	sds_free, .Lfunc_end40-sds_free
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB41_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB41_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.19, %edx
	movl	$.L.str.17, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	uk_pr_crit, .Lfunc_end41-uk_pr_crit
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SDS_NOINIT"
	.size	.L.str, 11

	.type	SDS_NOINIT,@object      # @SDS_NOINIT
	.data
	.globl	SDS_NOINIT
	.p2align	3
SDS_NOINIT:
	.quad	.L.str
	.size	SDS_NOINIT, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.c"
	.size	.L.str.2, 71

	.type	.L__func__.sdsIncrLen,@object # @__func__.sdsIncrLen
.L__func__.sdsIncrLen:
	.asciz	"sdsIncrLen"
	.size	.L__func__.sdsIncrLen, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(incr > 0 && oldlen+incr < 32) || (incr < 0 && oldlen >= (unsigned int)(-incr))"
	.size	.L.str.3, 80

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(incr >= 0 && sh->alloc-sh->len >= incr) || (incr < 0 && sh->len >= (unsigned int)(-incr))"
	.size	.L.str.4, 91

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(incr >= 0 && sh->alloc-sh->len >= (unsigned int)incr) || (incr < 0 && sh->len >= (unsigned int)(-incr))"
	.size	.L.str.5, 105

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(incr >= 0 && sh->alloc-sh->len >= (uint64_t)incr) || (incr < 0 && sh->len >= (uint64_t)(-incr))"
	.size	.L.str.6, 97

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\""
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\\%c"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\\n"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\\r"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\\t"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\\a"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\\b"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%c"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\\x%02x"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"'"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"a"
	.size	.L.str.18, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
uk_pr_crit.__str:
	.asciz	"libredis_hiredis"
	.size	uk_pr_crit.__str, 17

	.type	uk_pr_crit.__str.19,@object # @uk_pr_crit.__str.19
uk_pr_crit.__str.19:
	.asciz	"sds.c"
	.size	uk_pr_crit.__str.19, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.sdsnewlen,@object # @switch.table.sdsnewlen
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.sdsnewlen:
	.quad	17                      # 0x11
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	1                       # 0x1
	.quad	3                       # 0x3
	.quad	5                       # 0x5
	.quad	9                       # 0x9
	.size	.Lswitch.table.sdsnewlen, 64

	.type	.Lswitch.table.hex_digit_to_int,@object # @switch.table.hex_digit_to_int
	.p2align	4
.Lswitch.table.hex_digit_to_int:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.size	.Lswitch.table.hex_digit_to_int, 220

	.type	.Lswitch.table.sdssplitargs,@object # @switch.table.sdssplitargs
	.p2align	4
.Lswitch.table.sdssplitargs:
	.quad	-17                     # 0xffffffffffffffef
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-3                      # 0xfffffffffffffffd
	.quad	-5                      # 0xfffffffffffffffb
	.quad	-9                      # 0xfffffffffffffff7
	.size	.Lswitch.table.sdssplitargs, 64

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
