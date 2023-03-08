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
	cmpq	$32, %rsi
	jae	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_2:
	movb	$1, %al
	cmpq	$256, %r15              # imm = 0x100
	jb	.LBB0_5
# %bb.3:
	movb	$2, %al
	cmpq	$65536, %r15            # imm = 0x10000
	jb	.LBB0_5
# %bb.4:
	movq	%r15, %rax
	shrq	$32, %rax
	cmpq	$1, %rax
	movb	$4, %al
	sbbb	$0, %al
.LBB0_5:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	movzbl	%al, %eax
	movl	$1, %ebx
	cmovnel	%eax, %ebx
	testq	%r15, %r15
	cmovnel	%eax, %ebx
	movl	%ebx, %eax
	xorb	$4, %al
	movzbl	%al, %eax
	andl	$7, %eax
	movq	.Lswitch.table.sdsnewlen(,%rax,8), %r14
	leaq	(%r15,%r14), %r12
	addq	$1, %r12
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_6
# %bb.7:
	movq	%r12, %rsi
	callq	*(%rdi)
	movq	%rax, %r13
.LBB0_8:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, SDS_NOINIT(%rip)
	je	.LBB0_11
# %bb.9:
	testq	%rsi, %rsi
	je	.LBB0_10
# %bb.12:
	testq	%r13, %r13
	je	.LBB0_13
.LBB0_14:
	movl	%ebx, %eax
	andb	$7, %al
	addq	%r14, %r13
	cmpb	$4, %al
	ja	.LBB0_22
# %bb.15:
	movzbl	%bl, %eax
	andl	$7, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_16:
	leal	(,%r15,8), %eax
	orb	%al, %bl
	jmp	.LBB0_21
.LBB0_10:
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
.LBB0_11:
	xorl	%esi, %esi
	testq	%r13, %r13
	jne	.LBB0_14
.LBB0_13:
	xorl	%r13d, %r13d
	jmp	.LBB0_26
.LBB0_17:
	movb	%r15b, -3(%r13)
	movb	%r15b, -2(%r13)
	jmp	.LBB0_21
.LBB0_18:
	movw	%r15w, -5(%r13)
	movw	%r15w, -3(%r13)
	jmp	.LBB0_21
.LBB0_19:
	movl	%r15d, -9(%r13)
	movl	%r15d, -5(%r13)
	jmp	.LBB0_21
.LBB0_20:
	movq	%r15, -17(%r13)
	movq	%r15, -9(%r13)
.LBB0_21:
	movb	%bl, -1(%r13)
.LBB0_22:
	testq	%r15, %r15
	je	.LBB0_25
# %bb.23:
	testq	%rsi, %rsi
	je	.LBB0_25
# %bb.24:
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	memcpy
.LBB0_25:
	movb	$0, (%r13,%r15)
.LBB0_26:
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_6:
	callq	__errno
	movl	$12, (%rax)
	xorl	%r13d, %r13d
	jmp	.LBB0_8
.Lfunc_end0:
	.size	sdsnewlen, .Lfunc_end0-sdsnewlen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
                                        # -- End function
	.text
	.globl	sdsempty                # -- Begin function sdsempty
	.p2align	4, 0x90
	.type	sdsempty,@function
sdsempty:                               # @sdsempty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.1:
	movl	$4, %esi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.2:
	movq	%rax, %rcx
	addq	$3, %rax
	movl	$65536, (%rcx)          # imm = 0x10000
	popq	%rbp
	retq
.LBB1_4:
	callq	__errno
	movl	$12, (%rax)
.LBB1_3:
	xorl	%eax, %eax
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
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rsi
	jmp	.LBB2_3
.LBB2_1:
	xorl	%esi, %esi
.LBB2_3:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	sdsnewlen               # TAILCALL
.Lfunc_end2:
	.size	sdsnew, .Lfunc_end2-sdsnew
                                        # -- End function
	.globl	sdsdup                  # -- Begin function sdsdup
	.p2align	4, 0x90
	.type	sdsdup,@function
sdsdup:                                 # @sdsdup
# %bb.0:
	movzbl	-1(%rdi), %esi
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
	jmp	sdsnewlen               # TAILCALL
.LBB3_1:
	xorl	%esi, %esi
	jmp	sdsnewlen               # TAILCALL
.LBB3_4:
	movzbl	-3(%rdi), %esi
	jmp	sdsnewlen               # TAILCALL
.LBB3_5:
	movzwl	-5(%rdi), %esi
	jmp	sdsnewlen               # TAILCALL
.LBB3_6:
	movl	-9(%rdi), %esi
	jmp	sdsnewlen               # TAILCALL
.LBB3_7:
	movq	-17(%rdi), %rsi
	jmp	sdsnewlen               # TAILCALL
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
	testq	%rdi, %rdi
	je	.LBB4_3
# %bb.1:
	movq	%rdi, %rsi
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_4
# %bb.2:
	movzbl	-1(%rsi), %eax
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs.20(,%rax,8), %rsi
	movq	40(%rdi), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB4_3:
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
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB5_7
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
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB6_7
# %bb.1:
	andl	$7, %eax
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_2:
	movb	$0, -1(%rdi)
	movb	$0, (%rdi)
	retq
.LBB6_3:
	movb	$0, -3(%rdi)
	movb	$0, (%rdi)
	retq
.LBB6_4:
	movw	$0, -5(%rdi)
	movb	$0, (%rdi)
	retq
.LBB6_5:
	movl	$0, -9(%rdi)
	movb	$0, (%rdi)
	retq
.LBB6_6:
	movq	$0, -17(%rdi)
.LBB6_7:
	movb	$0, (%rdi)
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
	movq	%rdi, %r15
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB7_10
# %bb.1:
	movzbl	%cl, %ecx
	jmpq	*.LJTI7_0(,%rcx,8)
.LBB7_2:
	movzbl	-2(%r15), %ecx
	movzbl	-3(%r15), %edx
	jmp	.LBB7_6
.LBB7_3:
	movl	-5(%r15), %ecx
	subl	-9(%r15), %ecx
	cmpq	%rsi, %rcx
	jb	.LBB7_7
.LBB7_11:
	movq	%r15, %rbx
	jmp	.LBB7_12
.LBB7_4:
	movq	-9(%r15), %rcx
	subq	-17(%r15), %rcx
	cmpq	%rsi, %rcx
	jb	.LBB7_7
	jmp	.LBB7_11
.LBB7_5:
	movzwl	-3(%r15), %ecx
	movzwl	-5(%r15), %edx
.LBB7_6:
	subq	%rdx, %rcx
	cmpq	%rsi, %rcx
	jae	.LBB7_11
.LBB7_7:
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB7_17
# %bb.8:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI7_1(,%rcx,8)
.LBB7_9:
	movq	%rax, %rdx
	shrq	$3, %rdx
	movq	$-1, %r8
	jmp	.LBB7_18
.LBB7_10:
	xorl	%ecx, %ecx
	cmpq	%rsi, %rcx
	jb	.LBB7_7
	jmp	.LBB7_11
.LBB7_13:
	movq	-17(%r15), %rdx
	movq	$-17, %r8
	jmp	.LBB7_18
.LBB7_14:
	movzwl	-5(%r15), %edx
	movq	$-5, %r8
	jmp	.LBB7_18
.LBB7_15:
	movl	-9(%r15), %edx
	movq	$-9, %r8
	jmp	.LBB7_18
.LBB7_16:
	movzbl	-3(%r15), %edx
	movq	$-3, %r8
	jmp	.LBB7_18
.LBB7_17:
	xorl	%edx, %edx
	xorl	%r8d, %r8d
.LBB7_18:
	andl	$7, %eax
	leaq	(%rdx,%rsi), %rcx
	cmpq	$1048576, %rcx          # imm = 0x100000
	leaq	(%rcx,%rcx), %rcx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	leaq	1048576(%rdx,%rsi), %r12
	cmovbq	%rcx, %r12
	movb	$1, %r13b
	cmpq	$256, %r12              # imm = 0x100
	jae	.LBB7_20
.LBB7_19:
	movl	$3, %r14d
	movb	$1, %bl
	jmp	.LBB7_28
.LBB7_20:
	movb	$2, %r13b
	cmpq	$65536, %r12            # imm = 0x10000
	jae	.LBB7_22
.LBB7_21:
	movl	$5, %r14d
	movb	$2, %bl
	jmp	.LBB7_28
.LBB7_22:
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	shrq	$32, %rdx
	sete	%dl
	movb	$4, %bl
	subb	%dl, %bl
	movl	%ebx, %r13d
	cmpb	$4, %bl
	ja	.LBB7_26
# %bb.23:
	movl	$1, %r14d
	movb	%dl, %cl
	movl	$4, %edx
	subq	%rcx, %rdx
	jmpq	*.LJTI7_2(,%rdx,8)
.LBB7_24:
	movl	$9, %r14d
	jmp	.LBB7_27
.LBB7_25:
	movl	$17, %r14d
	jmp	.LBB7_27
.LBB7_26:
	xorl	%r14d, %r14d
.LBB7_27:
	movl	%r13d, %ebx
.LBB7_28:
	addq	%r15, %r8
	movzbl	%r13b, %ecx
	leaq	(%r12,%r14), %rdx
	addq	$1, %rdx
	movq	flexos_shared_alloc(%rip), %rdi
	cmpl	%ecx, %eax
	jne	.LBB7_35
# %bb.29:
	testq	%rdi, %rdi
	je	.LBB7_50
# %bb.30:
	movq	%r8, %rsi
	callq	*16(%rdi)
	testq	%rax, %rax
	je	.LBB7_42
# %bb.31:
	movq	%rax, %rbx
	addq	%r14, %rbx
	movb	-1(%rax,%r14), %r13b
.LBB7_32:
	andb	$7, %r13b
	addb	$-1, %r13b
	cmpb	$3, %r13b
	ja	.LBB7_12
# %bb.33:
	movzbl	%r13b, %eax
	jmpq	*.LJTI7_4(,%rax,8)
.LBB7_34:
	movb	%r12b, -2(%rbx)
	jmp	.LBB7_12
.LBB7_35:
	testq	%rdi, %rdi
	je	.LBB7_50
# %bb.36:
	movb	%bl, -41(%rbp)          # 1-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rdx, %rsi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB7_42
# %bb.37:
	movq	%rax, %rbx
	addq	%r14, %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	leaq	1(%r14), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB7_51
# %bb.38:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*40(%rdi)
	movb	%r13b, -1(%rbx)
	movb	-41(%rbp), %al          # 1-byte Reload
	cmpb	$4, %al
	ja	.LBB7_32
# %bb.39:
	movzbl	%al, %eax
	jmpq	*.LJTI7_3(,%rax,8)
.LBB7_40:
	shlb	$3, %r14b
	movb	%r14b, -1(%rbx)
	movl	%r14d, %r13d
	jmp	.LBB7_32
.LBB7_42:
	xorl	%ebx, %ebx
	jmp	.LBB7_12
.LBB7_43:
	movl	%r12d, -5(%rbx)
	jmp	.LBB7_12
.LBB7_44:
	movq	%r12, -9(%rbx)
	jmp	.LBB7_12
.LBB7_45:
	movw	%r12w, -3(%rbx)
.LBB7_12:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_46:
	movq	%r14, -17(%rbx)
	jmp	.LBB7_32
.LBB7_47:
	movw	%r14w, -5(%rbx)
	jmp	.LBB7_32
.LBB7_48:
	movb	%r14b, -3(%rbx)
	jmp	.LBB7_32
.LBB7_49:
	movl	%r14d, -9(%rbx)
	jmp	.LBB7_32
.LBB7_50:
	callq	__errno
	movl	$12, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB7_12
.LBB7_51:
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
	.quad	.LBB7_9
	.quad	.LBB7_16
	.quad	.LBB7_14
	.quad	.LBB7_15
	.quad	.LBB7_13
.LJTI7_2:
	.quad	.LBB7_28
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_24
	.quad	.LBB7_25
.LJTI7_3:
	.quad	.LBB7_40
	.quad	.LBB7_48
	.quad	.LBB7_47
	.quad	.LBB7_49
	.quad	.LBB7_46
.LJTI7_4:
	.quad	.LBB7_34
	.quad	.LBB7_45
	.quad	.LBB7_43
	.quad	.LBB7_44
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
	movq	%rdi, %rbx
	movb	-1(%rdi), %al
	andb	$7, %al
	leal	-1(%rax), %ecx
	cmpb	$3, %cl
	ja	.LBB8_14
# %bb.1:
	movzbl	%cl, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_2:
	movzbl	-3(%rbx), %edx
	movzbl	-2(%rbx), %ecx
	subq	%rdx, %rcx
	movl	$3, %r12d
	testq	%rcx, %rcx
	jne	.LBB8_5
	jmp	.LBB8_14
.LBB8_3:
	movl	-9(%rbx), %edx
	movl	-5(%rbx), %ecx
	subl	%edx, %ecx
	movl	$9, %r12d
	testq	%rcx, %rcx
	je	.LBB8_14
.LBB8_5:
	movq	%rbx, %r15
	subq	%r12, %r15
	cmpq	$32, %rdx
	jae	.LBB8_7
# %bb.6:
	movl	$1, %esi
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	cmpb	%r13b, %al
	je	.LBB8_9
	jmp	.LBB8_15
.LBB8_7:
	cmpq	$255, %rdx
	ja	.LBB8_9
# %bb.8:
	movl	$3, %esi
	movb	$1, %cl
	movb	$1, %r13b
	cmpb	%r13b, %al
	jne	.LBB8_15
.LBB8_9:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_30
# %bb.10:
	movq	%rdx, %rbx
	addq	%r12, %rdx
	addq	$1, %rdx
	movq	%r15, %rsi
	callq	*16(%rdi)
	testq	%rax, %rax
	je	.LBB8_21
# %bb.11:
	movq	%rax, %r14
	addq	%r12, %r14
	movb	-1(%rax,%r12), %r13b
	movq	%rbx, %rcx
	jmp	.LBB8_23
.LBB8_4:
	movq	-17(%rbx), %rdx
	movq	-9(%rbx), %rcx
	subq	%rdx, %rcx
	movl	$17, %r12d
	testq	%rcx, %rcx
	jne	.LBB8_5
.LBB8_14:
	movq	%rbx, %r14
	jmp	.LBB8_29
.LBB8_12:
	movzwl	-5(%rbx), %edx
	movzwl	-3(%rbx), %ecx
	subq	%rdx, %rcx
	movl	$5, %r12d
	testq	%rcx, %rcx
	jne	.LBB8_5
	jmp	.LBB8_14
.LBB8_15:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_30
# %bb.16:
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	addq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rdx, %r12
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB8_21
# %bb.17:
	movq	%rax, %r14
	movq	%r12, -56(%rbp)         # 8-byte Spill
	leaq	1(%r12), %rdx
	addq	-64(%rbp), %r14         # 8-byte Folded Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_31
# %bb.18:
	movq	%r15, %rsi
	callq	*40(%rdi)
	movb	%r13b, -1(%r14)
	cmpb	$0, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB8_22
# %bb.19:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%cl, -3(%r14)
	jmp	.LBB8_23
.LBB8_21:
	xorl	%r14d, %r14d
	jmp	.LBB8_29
.LBB8_22:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leal	(,%rcx,8), %r13d
	movb	%r13b, -1(%r14)
.LBB8_23:
	andb	$7, %r13b
	addb	$-1, %r13b
	cmpb	$3, %r13b
	ja	.LBB8_29
# %bb.24:
	movzbl	%r13b, %eax
	jmpq	*.LJTI8_1(,%rax,8)
.LBB8_25:
	movb	%cl, -2(%r14)
	jmp	.LBB8_29
.LBB8_26:
	movl	%ecx, -5(%r14)
	jmp	.LBB8_29
.LBB8_27:
	movq	%rcx, -9(%r14)
	jmp	.LBB8_29
.LBB8_28:
	movw	%cx, -3(%r14)
.LBB8_29:
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_30:
	callq	__errno
	movl	$12, (%rax)
	xorl	%r14d, %r14d
	jmp	.LBB8_29
.LBB8_31:
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
	.quad	.LBB8_12
	.quad	.LBB8_3
	.quad	.LBB8_4
.LJTI8_1:
	.quad	.LBB8_25
	.quad	.LBB8_28
	.quad	.LBB8_26
	.quad	.LBB8_27
                                        # -- End function
	.text
	.globl	sdsAllocSize            # -- Begin function sdsAllocSize
	.p2align	4, 0x90
	.type	sdsAllocSize,@function
sdsAllocSize:                           # @sdsAllocSize
# %bb.0:
	movzbl	-1(%rdi), %eax
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
	addq	%rcx, %rax
	addq	$1, %rax
	retq
.LBB9_1:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	addq	%rcx, %rax
	addq	$1, %rax
	retq
.LBB9_4:
	movzbl	-2(%rdi), %eax
	movl	$3, %ecx
	addq	%rcx, %rax
	addq	$1, %rax
	retq
.LBB9_5:
	movzwl	-3(%rdi), %eax
	movl	$5, %ecx
	addq	%rcx, %rax
	addq	$1, %rax
	retq
.LBB9_6:
	movl	-5(%rdi), %eax
	movl	$9, %ecx
	addq	%rcx, %rax
	addq	$1, %rax
	retq
.LBB9_7:
	movq	-9(%rdi), %rax
	movl	$17, %ecx
	addq	%rcx, %rax
	addq	$1, %rax
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
	andl	$7, %ecx
	xorq	$4, %rcx
	addq	.Lswitch.table.sdssplitargs.20(,%rcx,8), %rax
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
	testq	%rsi, %rsi
	jle	.LBB11_6
# %bb.4:
	addq	%rsi, %rax
	cmpq	$32, %rax
	jl	.LBB11_9
	jmp	.LBB11_5
.LBB11_25:
	leaq	-17(%rdi), %rcx
	testq	%rsi, %rsi
	js	.LBB11_28
# %bb.26:
	movq	-17(%rdi), %rax
	movq	-9(%rdi), %rdx
	subq	%rax, %rdx
	cmpq	%rsi, %rdx
	jb	.LBB11_27
.LBB11_29:
	addq	%rsi, %rax
	movq	%rax, (%rcx)
	jmp	.LBB11_30
.LBB11_15:
	leaq	-5(%rdi), %rax
	testq	%rsi, %rsi
	js	.LBB11_18
# %bb.16:
	movzwl	-3(%rdi), %edx
	movzwl	-5(%rdi), %ecx
	subq	%rcx, %rdx
	cmpq	%rsi, %rdx
	jl	.LBB11_17
.LBB11_19:
	addl	%esi, %ecx
	movw	%cx, (%rax)
	movzwl	%cx, %eax
	jmp	.LBB11_30
.LBB11_20:
	leaq	-9(%rdi), %rax
	testq	%rsi, %rsi
	js	.LBB11_23
# %bb.21:
	movl	-9(%rdi), %ecx
	movl	-5(%rdi), %edx
	subl	%ecx, %edx
	cmpl	%esi, %edx
	jb	.LBB11_22
.LBB11_24:
	addl	%ecx, %esi
	movl	%esi, (%rax)
	movq	%rsi, %rax
	jmp	.LBB11_30
.LBB11_10:
	testq	%rsi, %rsi
	js	.LBB11_13
# %bb.11:
	movzbl	-2(%rdi), %ecx
	movzbl	-3(%rdi), %eax
	subq	%rax, %rcx
	cmpq	%rsi, %rcx
	jl	.LBB11_12
.LBB11_14:
	addb	%al, %sil
	movb	%sil, -3(%rdi)
	movzbl	%sil, %eax
	jmp	.LBB11_30
.LBB11_1:
	xorl	%eax, %eax
	jmp	.LBB11_30
.LBB11_28:
	movq	(%rcx), %rax
	movq	%rsi, %rdx
	negq	%rdx
	cmpq	%rdx, %rax
	jae	.LBB11_29
.LBB11_27:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.6, %ecx
	movl	$365, %esi              # imm = 0x16D
	callq	__assert_func
.LBB11_18:
	movzwl	(%rax), %ecx
	movl	%esi, %edx
	negl	%edx
	cmpl	%edx, %ecx
	jae	.LBB11_19
.LBB11_17:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.4, %ecx
	movl	$353, %esi              # imm = 0x161
	callq	__assert_func
.LBB11_23:
	movl	(%rax), %ecx
	movl	%esi, %edx
	negl	%edx
	cmpl	%edx, %ecx
	jae	.LBB11_24
.LBB11_22:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.5, %ecx
	movl	$359, %esi              # imm = 0x167
	callq	__assert_func
.LBB11_6:
	jns	.LBB11_5
# %bb.7:
	movzbl	%al, %eax
	movl	%esi, %ecx
	negl	%ecx
	cmpl	%ecx, %eax
	jb	.LBB11_5
# %bb.8:
	addq	%rsi, %rax
.LBB11_9:
	leal	(,%rax,8), %ecx
	movb	%cl, -1(%rdi)
.LBB11_30:
	movb	$0, (%rdi,%rax)
	popq	%rbp
	retq
.LBB11_13:
	movzbl	-3(%rdi), %eax
	movl	%esi, %ecx
	negl	%ecx
	cmpl	%ecx, %eax
	jae	.LBB11_14
.LBB11_12:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.4, %ecx
	movl	$347, %esi              # imm = 0x15B
	callq	__assert_func
.LBB11_5:
	movl	$.L.str.2, %edi
	movl	$.L__func__.sdsIncrLen, %edx
	movl	$.L.str.3, %ecx
	movl	$340, %esi              # imm = 0x154
	callq	__assert_func
.Lfunc_end11:
	.size	sdsIncrLen, .Lfunc_end11-sdsIncrLen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_3
	.quad	.LBB11_10
	.quad	.LBB11_15
	.quad	.LBB11_20
	.quad	.LBB11_25
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
	cmpq	%r14, %rbx
	jb	.LBB12_9
	jmp	.LBB12_18
.LBB12_1:
	xorl	%ebx, %ebx
	cmpq	%r14, %rbx
	jb	.LBB12_9
	jmp	.LBB12_18
.LBB12_4:
	movzbl	-3(%r15), %ebx
	cmpq	%r14, %rbx
	jb	.LBB12_9
	jmp	.LBB12_18
.LBB12_5:
	movzwl	-5(%r15), %ebx
	cmpq	%r14, %rbx
	jb	.LBB12_9
	jmp	.LBB12_18
.LBB12_6:
	movl	-9(%r15), %ebx
	cmpq	%r14, %rbx
	jb	.LBB12_9
	jmp	.LBB12_18
.LBB12_7:
	movq	-17(%r15), %rbx
	cmpq	%r14, %rbx
	jae	.LBB12_18
.LBB12_9:
	movq	%r14, %r12
	subq	%rbx, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	sdsMakeRoomFor
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
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_18
# %bb.12:
	andl	$7, %eax
	jmpq	*.LJTI12_1(,%rax,8)
.LBB12_13:
	shlb	$3, %r14b
	movb	%r14b, -1(%r15)
	jmp	.LBB12_18
.LBB12_10:
	xorl	%r15d, %r15d
	jmp	.LBB12_18
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
	movq	%r15, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB13_17
# %bb.9:
	movq	%rbx, %rdi
	addq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %r12
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB13_16
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
	movb	$0, (%rbx,%r12)
.LBB13_17:
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	sdscatlen               # TAILCALL
.Lfunc_end14:
	.size	sdscat, .Lfunc_end14-sdscat
                                        # -- End function
	.globl	sdscatsds               # -- Begin function sdscatsds
	.p2align	4, 0x90
	.type	sdscatsds,@function
sdscatsds:                              # @sdscatsds
# %bb.0:
	movzbl	-1(%rsi), %edx
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
	jmp	sdscatlen               # TAILCALL
.LBB15_1:
	xorl	%edx, %edx
	jmp	sdscatlen               # TAILCALL
.LBB15_4:
	movzbl	-3(%rsi), %edx
	jmp	sdscatlen               # TAILCALL
.LBB15_5:
	movzwl	-5(%rsi), %edx
	jmp	sdscatlen               # TAILCALL
.LBB15_6:
	movl	-9(%rsi), %edx
	jmp	sdscatlen               # TAILCALL
.LBB15_7:
	movq	-17(%rsi), %rdx
	jmp	sdscatlen               # TAILCALL
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
	cmpq	%r14, %rcx
	jb	.LBB16_10
	jmp	.LBB16_9
.LBB16_4:
	movzbl	-2(%rbx), %ecx
	cmpq	%r14, %rcx
	jb	.LBB16_10
	jmp	.LBB16_9
.LBB16_5:
	movzwl	-3(%rbx), %ecx
	cmpq	%r14, %rcx
	jb	.LBB16_10
	jmp	.LBB16_9
.LBB16_6:
	movl	-5(%rbx), %ecx
	cmpq	%r14, %rcx
	jb	.LBB16_10
	jmp	.LBB16_9
.LBB16_7:
	movq	-9(%rbx), %rcx
	cmpq	%r14, %rcx
	jae	.LBB16_9
.LBB16_10:
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB16_11
# %bb.12:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI16_1(,%rcx,8)
.LBB16_13:
	shrq	$3, %rax
	jmp	.LBB16_18
.LBB16_1:
	xorl	%ecx, %ecx
	cmpq	%r14, %rcx
	jb	.LBB16_10
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
	movq	%r14, %rsi
	subq	%rax, %rsi
	movq	%rbx, %rdi
	callq	sdsMakeRoomFor
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
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB16_28
# %bb.22:
	andl	$7, %eax
	jmpq	*.LJTI16_2(,%rax,8)
.LBB16_23:
	shlb	$3, %r14b
	movb	%r14b, (%r12)
	jmp	.LBB16_28
.LBB16_19:
	xorl	%ebx, %ebx
	jmp	.LBB16_28
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	sdscpylen               # TAILCALL
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
	cmpq	$9, %r8
	movq	%rdx, %r8
	ja	.LBB18_1
# %bb.2:
	testq	%rsi, %rsi
	jns	.LBB18_4
# %bb.3:
	movb	$45, (%rcx)
	addq	$1, %rcx
.LBB18_4:
	movq	%rcx, %rax
	subq	%rdi, %rax
	movb	$0, (%rcx)
	addq	$-1, %rcx
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
	addq	$-1, %rcx
	cmpq	%rcx, %rdi
	leaq	1(%rdi), %rdi
	jb	.LBB18_6
.LBB18_7:
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
	xorl	%ecx, %ecx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	.p2align	4, 0x90
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %r9d
	movl	%esi, %eax
	subl	%r9d, %eax
	orb	$48, %al
	movb	%al, (%rdi,%rcx)
	addq	$1, %rcx
	cmpq	$9, %rsi
	movq	%rdx, %rsi
	ja	.LBB19_1
# %bb.2:
	movb	$0, (%rdi,%rcx)
	cmpq	$1, %rcx
	je	.LBB19_6
# %bb.3:
	leaq	-1(%rcx), %rsi
	movb	(%rdi), %dl
	movb	%al, (%rdi)
	movb	%dl, -1(%rdi,%rcx)
	cmpq	$3, %rsi
	jb	.LBB19_6
# %bb.4:
	leaq	(%rdi,%rcx), %rax
	addq	$-2, %rax
	addq	$2, %rdi
	.p2align	4, 0x90
.LBB19_5:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	movzbl	-1(%rdi), %esi
	movb	%dl, -1(%rdi)
	movb	%sil, (%rax)
	addq	$-1, %rax
	cmpq	%rax, %rdi
	leaq	1(%rdi), %rdi
	jb	.LBB19_5
.LBB19_6:
	movl	%ecx, %eax
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
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	.LBB20_1
# %bb.2:
	testq	%rdi, %rdi
	jns	.LBB20_4
# %bb.3:
	movb	$45, -32(%rbp,%r9)
	addq	$1, %r9
	movb	$45, %al
.LBB20_4:
	movb	$0, -32(%rbp,%r9)
	cmpq	$2, %r9
	jl	.LBB20_8
# %bb.5:
	movb	-32(%rbp), %cl
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rax
	movb	%cl, -1(%r9,%rax)
	leaq	-31(%rbp), %rcx
	addq	%r9, %rax
	addq	$-2, %rax
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
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB20_7
.LBB20_8:
	movslq	%r9d, %rsi
	leaq	-32(%rbp), %rdi
	callq	sdsnewlen
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
	movq	%rsi, %r12
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	leaq	-1104(%rbp), %rbx
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %r15
	addq	%rax, %r15
	movl	$1024, %r14d            # imm = 0x400
	cmpq	$1025, %r15             # imm = 0x401
	jb	.LBB21_3
# %bb.1:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB21_16
# %bb.2:
	movq	%r15, %rsi
	callq	*(%rdi)
	movq	%rax, %rbx
	movq	%r15, %r14
	testq	%rax, %rax
	je	.LBB21_14
.LBB21_3:
	leaq	-80(%rbp), %r15
	.p2align	4, 0x90
.LBB21_4:                               # =>This Inner Loop Header: Depth=1
	movb	$0, -2(%r14,%rbx)
	movq	16(%r13), %rax
	movq	%rax, -64(%rbp)
	movups	(%r13), %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	vsnprintf
	cmpb	$0, -2(%r14,%rbx)
	je	.LBB21_11
# %bb.5:                                #   in Loop: Header=BB21_4 Depth=1
	leaq	-1104(%rbp), %rax
	cmpq	%rax, %rbx
	je	.LBB21_8
# %bb.6:                                #   in Loop: Header=BB21_4 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB21_17
# %bb.7:                                #   in Loop: Header=BB21_4 Depth=1
	movq	%rbx, %rsi
	callq	*40(%rdi)
.LBB21_8:                               #   in Loop: Header=BB21_4 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB21_16
# %bb.9:                                #   in Loop: Header=BB21_4 Depth=1
	addq	%r14, %r14
	movq	%r14, %rsi
	callq	*(%rdi)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB21_4
.LBB21_14:
	xorl	%r14d, %r14d
	jmp	.LBB21_15
.LBB21_11:
	movq	%rbx, %rdi
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r14
	leaq	-1104(%rbp), %rax
	cmpq	%rax, %rbx
	je	.LBB21_15
# %bb.12:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB21_17
# %bb.13:
	movq	%rbx, %rsi
	callq	*40(%rdi)
.LBB21_15:
	movq	%r14, %rax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_16:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB21_14
.LBB21_17:
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
	subq	$264, %rsp              # imm = 0x108
	movq	%rsi, %r12
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB23_2
# %bb.1:
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm1, -240(%rbp)
	movaps	%xmm2, -224(%rbp)
	movaps	%xmm3, -208(%rbp)
	movaps	%xmm4, -192(%rbp)
	movaps	%xmm5, -176(%rbp)
	movaps	%xmm6, -160(%rbp)
	movaps	%xmm7, -144(%rbp)
.LBB23_2:
	movq	%r9, -264(%rbp)
	movq	%r8, -272(%rbp)
	movq	%rcx, -280(%rbp)
	movq	%rdx, -288(%rbp)
	movzbl	-1(%r14), %r13d
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
	leaq	-304(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -80(%rbp)
	movb	(%r12), %al
	testb	%al, %al
	je	.LBB23_129
# %bb.11:
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	jmp	.LBB23_15
.LBB23_12:                              #   in Loop: Header=BB23_15 Depth=1
	addq	%r15, -17(%r14)
.LBB23_13:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-120(%rbp), %r13        # 8-byte Reload
	addq	%r15, %r13
	.p2align	4, 0x90
.LBB23_14:                              #   in Loop: Header=BB23_15 Depth=1
	movb	1(%r12), %al
	addq	$1, %r12
	testb	%al, %al
	je	.LBB23_129
.LBB23_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_62 Depth 2
                                        #     Child Loop BB23_66 Depth 2
                                        #     Child Loop BB23_74 Depth 2
                                        #     Child Loop BB23_80 Depth 2
	movb	-1(%r14), %cl
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB23_30
# %bb.16:                               #   in Loop: Header=BB23_15 Depth=1
	movzbl	%cl, %ecx
	jmpq	*.LJTI23_1(,%rcx,8)
.LBB23_17:                              #   in Loop: Header=BB23_15 Depth=1
	movzbl	-2(%r14), %ecx
	movzbl	-3(%r14), %edx
	jmp	.LBB23_18
	.p2align	4, 0x90
.LBB23_19:                              #   in Loop: Header=BB23_15 Depth=1
	movzwl	-3(%r14), %ecx
	movzwl	-5(%r14), %edx
.LBB23_18:                              #   in Loop: Header=BB23_15 Depth=1
	subq	%rdx, %rcx
	testq	%rcx, %rcx
	je	.LBB23_30
.LBB23_21:                              #   in Loop: Header=BB23_15 Depth=1
	cmpb	$37, %al
	jne	.LBB23_31
.LBB23_22:                              #   in Loop: Header=BB23_15 Depth=1
	movsbl	1(%r12), %eax
	addq	$1, %r12
	movl	%eax, %ecx
	addl	$-73, %ecx
	cmpl	$44, %ecx
	ja	.LBB23_39
# %bb.23:                               #   in Loop: Header=BB23_15 Depth=1
	movabsq	$4294967297, %rdx       # imm = 0x100000001
	btq	%rcx, %rdx
	jb	.LBB23_34
# %bb.24:                               #   in Loop: Header=BB23_15 Depth=1
	movabsq	$4398046512128, %rdx    # imm = 0x40000000400
	btq	%rcx, %rdx
	jb	.LBB23_37
# %bb.25:                               #   in Loop: Header=BB23_15 Depth=1
	movabsq	$17592186048512, %rdx   # imm = 0x100000001000
	btq	%rcx, %rdx
	jae	.LBB23_39
# %bb.26:                               #   in Loop: Header=BB23_15 Depth=1
	movslq	-80(%rbp), %rcx
	cmpb	$117, %al
	movq	%r13, -120(%rbp)        # 8-byte Spill
	jne	.LBB23_43
# %bb.27:                               #   in Loop: Header=BB23_15 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_57
# %bb.28:                               #   in Loop: Header=BB23_15 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	movl	(%rax), %ecx
	jmp	.LBB23_61
	.p2align	4, 0x90
.LBB23_29:                              #   in Loop: Header=BB23_15 Depth=1
	movl	-5(%r14), %ecx
	subl	-9(%r14), %ecx
	testq	%rcx, %rcx
	jne	.LBB23_21
	jmp	.LBB23_30
	.p2align	4, 0x90
.LBB23_20:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-9(%r14), %rcx
	subq	-17(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB23_21
	.p2align	4, 0x90
.LBB23_30:                              #   in Loop: Header=BB23_15 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	sdsMakeRoomFor
	movabsq	$4294967296, %r9        # imm = 0x100000000
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rax, %r14
	movb	(%r12), %al
	cmpb	$37, %al
	je	.LBB23_22
.LBB23_31:                              #   in Loop: Header=BB23_15 Depth=1
	movb	%al, (%r14,%r13)
	addq	$1, %r13
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB23_14
# %bb.32:                               #   in Loop: Header=BB23_15 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_2(,%rcx,8)
.LBB23_33:                              #   in Loop: Header=BB23_15 Depth=1
	addl	$8, %eax
	andb	$-8, %al
	movb	%al, -1(%r14)
	jmp	.LBB23_14
.LBB23_34:                              #   in Loop: Header=BB23_15 Depth=1
	movslq	-80(%rbp), %rcx
	cmpb	$105, %al
	jne	.LBB23_45
# %bb.35:                               #   in Loop: Header=BB23_15 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_58
# %bb.36:                               #   in Loop: Header=BB23_15 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	movslq	(%rax), %rsi
	jmp	.LBB23_73
.LBB23_37:                              #   in Loop: Header=BB23_15 Depth=1
	movslq	-80(%rbp), %rdx
	cmpq	$40, %rdx
	ja	.LBB23_47
# %bb.38:                               #   in Loop: Header=BB23_15 Depth=1
	movq	%rdx, %rcx
	addq	-64(%rbp), %rcx
	addl	$8, %edx
	movl	%edx, -80(%rbp)
	jmp	.LBB23_48
.LBB23_39:                              #   in Loop: Header=BB23_15 Depth=1
	movb	%al, (%r14,%r13)
	addq	$1, %r13
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB23_14
# %bb.40:                               #   in Loop: Header=BB23_15 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_10(,%rcx,8)
.LBB23_41:                              #   in Loop: Header=BB23_15 Depth=1
	addb	$1, -3(%r14)
	jmp	.LBB23_14
.LBB23_122:                             #   in Loop: Header=BB23_15 Depth=1
	addw	$1, -5(%r14)
	jmp	.LBB23_14
.LBB23_123:                             #   in Loop: Header=BB23_15 Depth=1
	addl	$1, -9(%r14)
	jmp	.LBB23_14
.LBB23_42:                              #   in Loop: Header=BB23_15 Depth=1
	addq	$1, -17(%r14)
	jmp	.LBB23_14
.LBB23_43:                              #   in Loop: Header=BB23_15 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_59
# %bb.44:                               #   in Loop: Header=BB23_15 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB23_60
.LBB23_45:                              #   in Loop: Header=BB23_15 Depth=1
	cmpl	$40, %ecx
	ja	.LBB23_71
# %bb.46:                               #   in Loop: Header=BB23_15 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB23_72
.LBB23_47:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-72(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -72(%rbp)
.LBB23_48:                              #   in Loop: Header=BB23_15 Depth=1
	movq	(%rcx), %rdi
	cmpb	$115, %al
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jne	.LBB23_54
# %bb.49:                               #   in Loop: Header=BB23_15 Depth=1
	callq	strlen
	movq	%rax, %rbx
.LBB23_50:                              #   in Loop: Header=BB23_15 Depth=1
	movb	-1(%r14), %al
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB23_85
# %bb.51:                               #   in Loop: Header=BB23_15 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI23_8(,%rax,8)
.LBB23_52:                              #   in Loop: Header=BB23_15 Depth=1
	movzbl	-2(%r14), %eax
	movzbl	-3(%r14), %ecx
	jmp	.LBB23_53
.LBB23_54:                              #   in Loop: Header=BB23_15 Depth=1
	movzbl	-1(%rdi), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB23_124
# %bb.55:                               #   in Loop: Header=BB23_15 Depth=1
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_7(,%rax,8)
.LBB23_56:                              #   in Loop: Header=BB23_15 Depth=1
	shrq	$3, %rbx
	jmp	.LBB23_50
.LBB23_57:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movl	(%rax), %ecx
	jmp	.LBB23_61
.LBB23_58:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movslq	(%rax), %rsi
	jmp	.LBB23_73
.LBB23_59:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB23_60:                              #   in Loop: Header=BB23_15 Depth=1
	movq	(%rax), %rcx
.LBB23_61:                              #   in Loop: Header=BB23_15 Depth=1
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	leaq	-112(%rbp), %rsi
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB23_62:                              #   Parent Loop BB23_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%r9, %r15
	movq	%rcx, %rax
	mulq	%r8
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
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	.LBB23_62
# %bb.63:                               #   in Loop: Header=BB23_15 Depth=1
	movb	$0, (%rsi)
	cmpq	$-1, %r13
	je	.LBB23_67
# %bb.64:                               #   in Loop: Header=BB23_15 Depth=1
	movb	-112(%rbp), %cl
	movb	%al, -112(%rbp)
	movb	%cl, -1(%rsi)
	leaq	-114(%rbp), %rax
	subq	%r13, %rax
	leaq	-111(%rbp), %rcx
	cmpq	%rax, %rcx
	jae	.LBB23_67
# %bb.65:                               # %.preheader1
                                        #   in Loop: Header=BB23_15 Depth=1
	leaq	-110(%rbp), %rcx
	.p2align	4, 0x90
.LBB23_66:                              #   Parent Loop BB23_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edx
	movzbl	-1(%rcx), %esi
	movb	%dl, -1(%rcx)
	movb	%sil, (%rax)
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB23_66
.LBB23_67:                              #   in Loop: Header=BB23_15 Depth=1
	sarq	$32, %r15
	movb	-1(%r14), %al
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB23_94
# %bb.68:                               #   in Loop: Header=BB23_15 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI23_3(,%rax,8)
.LBB23_69:                              #   in Loop: Header=BB23_15 Depth=1
	movzbl	-2(%r14), %eax
	movzbl	-3(%r14), %ecx
	jmp	.LBB23_70
.LBB23_71:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB23_72:                              #   in Loop: Header=BB23_15 Depth=1
	movq	(%rax), %rsi
.LBB23_73:                              #   in Loop: Header=BB23_15 Depth=1
	movq	%rsi, %rcx
	negq	%rcx
	cmovlq	%rsi, %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB23_74:                              #   Parent Loop BB23_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %edi
	movl	%ecx, %eax
	subl	%edi, %eax
	orb	$48, %al
	movb	%al, -112(%rbp,%r15)
	addq	$1, %r15
	cmpq	$9, %rcx
	movq	%rdx, %rcx
	ja	.LBB23_74
# %bb.75:                               #   in Loop: Header=BB23_15 Depth=1
	testq	%rsi, %rsi
	jns	.LBB23_77
# %bb.76:                               #   in Loop: Header=BB23_15 Depth=1
	movb	$45, -112(%rbp,%r15)
	addq	$1, %r15
	movb	$45, %al
.LBB23_77:                              #   in Loop: Header=BB23_15 Depth=1
	movb	$0, -112(%rbp,%r15)
	cmpq	$2, %r15
	jl	.LBB23_81
# %bb.78:                               #   in Loop: Header=BB23_15 Depth=1
	movb	-112(%rbp), %cl
	movb	%al, -112(%rbp)
	leaq	-112(%rbp), %rax
	movb	%cl, -1(%r15,%rax)
	addq	%r15, %rax
	addq	$-2, %rax
	leaq	-111(%rbp), %rcx
	cmpq	%rax, %rcx
	jae	.LBB23_81
# %bb.79:                               # %.preheader
                                        #   in Loop: Header=BB23_15 Depth=1
	leaq	-110(%rbp), %rcx
	.p2align	4, 0x90
.LBB23_80:                              #   Parent Loop BB23_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edx
	movzbl	-1(%rcx), %ebx
	movb	%dl, -1(%rcx)
	movb	%bl, (%rax)
	addq	$-1, %rax
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB23_80
.LBB23_81:                              #   in Loop: Header=BB23_15 Depth=1
	movslq	%r15d, %rbx
	movb	-1(%r14), %al
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB23_103
# %bb.82:                               #   in Loop: Header=BB23_15 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI23_5(,%rax,8)
.LBB23_83:                              #   in Loop: Header=BB23_15 Depth=1
	movzbl	-2(%r14), %eax
	movzbl	-3(%r14), %ecx
	jmp	.LBB23_84
.LBB23_85:                              #   in Loop: Header=BB23_15 Depth=1
	xorl	%eax, %eax
	cmpq	%rbx, %rax
	jae	.LBB23_88
	jmp	.LBB23_90
.LBB23_86:                              #   in Loop: Header=BB23_15 Depth=1
	movzwl	-3(%r14), %eax
	movzwl	-5(%r14), %ecx
.LBB23_53:                              #   in Loop: Header=BB23_15 Depth=1
	subq	%rcx, %rax
	cmpq	%rbx, %rax
	jae	.LBB23_88
.LBB23_90:                              #   in Loop: Header=BB23_15 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %r14
	movq	%rax, %r15
	addq	$-1, %r15
	jmp	.LBB23_91
.LBB23_87:                              #   in Loop: Header=BB23_15 Depth=1
	movl	-5(%r14), %eax
	subl	-9(%r14), %eax
	cmpq	%rbx, %rax
	jb	.LBB23_90
	jmp	.LBB23_88
.LBB23_89:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-9(%r14), %rax
	subq	-17(%r14), %rax
	cmpq	%rbx, %rax
	jb	.LBB23_90
.LBB23_88:                              #   in Loop: Header=BB23_15 Depth=1
	leaq	-1(%r14), %r15
.LBB23_91:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	ja	.LBB23_114
# %bb.92:                               #   in Loop: Header=BB23_15 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_9(,%rcx,8)
.LBB23_93:                              #   in Loop: Header=BB23_15 Depth=1
	leal	(,%rbx,8), %ecx
	addb	%al, %cl
	andb	$-8, %cl
	movb	%cl, (%r15)
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_94:                              #   in Loop: Header=BB23_15 Depth=1
	xorl	%eax, %eax
	cmpq	%r15, %rax
	jae	.LBB23_97
	jmp	.LBB23_99
.LBB23_95:                              #   in Loop: Header=BB23_15 Depth=1
	movzwl	-3(%r14), %eax
	movzwl	-5(%r14), %ecx
.LBB23_70:                              #   in Loop: Header=BB23_15 Depth=1
	subq	%rcx, %rax
	cmpq	%r15, %rax
	jae	.LBB23_97
.LBB23_99:                              #   in Loop: Header=BB23_15 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %r14
	addq	$-1, %rax
	jmp	.LBB23_100
.LBB23_96:                              #   in Loop: Header=BB23_15 Depth=1
	movl	-5(%r14), %eax
	subl	-9(%r14), %eax
	cmpq	%r15, %rax
	jb	.LBB23_99
	jmp	.LBB23_97
.LBB23_98:                              #   in Loop: Header=BB23_15 Depth=1
	movq	-9(%r14), %rax
	subq	-17(%r14), %rax
	cmpq	%r15, %rax
	jb	.LBB23_99
.LBB23_97:                              #   in Loop: Header=BB23_15 Depth=1
	leaq	-1(%r14), %rax
.LBB23_100:                             #   in Loop: Header=BB23_15 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	ja	.LBB23_13
# %bb.101:                              #   in Loop: Header=BB23_15 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_4(,%rcx,8)
.LBB23_102:                             #   in Loop: Header=BB23_15 Depth=1
	subb	%bl, %al
	andb	$-8, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	%al, (%rcx)
	jmp	.LBB23_13
.LBB23_103:                             #   in Loop: Header=BB23_15 Depth=1
	xorl	%eax, %eax
	cmpq	%rbx, %rax
	jae	.LBB23_106
	jmp	.LBB23_108
.LBB23_104:                             #   in Loop: Header=BB23_15 Depth=1
	movzwl	-3(%r14), %eax
	movzwl	-5(%r14), %ecx
.LBB23_84:                              #   in Loop: Header=BB23_15 Depth=1
	subq	%rcx, %rax
	cmpq	%rbx, %rax
	jae	.LBB23_106
.LBB23_108:                             #   in Loop: Header=BB23_15 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, %r14
	addq	$-1, %rax
	jmp	.LBB23_109
.LBB23_105:                             #   in Loop: Header=BB23_15 Depth=1
	movl	-5(%r14), %eax
	subl	-9(%r14), %eax
	cmpq	%rbx, %rax
	jb	.LBB23_108
	jmp	.LBB23_106
.LBB23_107:                             #   in Loop: Header=BB23_15 Depth=1
	movq	-9(%r14), %rax
	subq	-17(%r14), %rax
	cmpq	%rbx, %rax
	jb	.LBB23_108
.LBB23_106:                             #   in Loop: Header=BB23_15 Depth=1
	leaq	-1(%r14), %rax
.LBB23_109:                             #   in Loop: Header=BB23_15 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(%r14,%r13), %rdi
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movabsq	$4294967296, %r9        # imm = 0x100000000
	ja	.LBB23_114
# %bb.110:                              #   in Loop: Header=BB23_15 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI23_6(,%rcx,8)
.LBB23_111:                             #   in Loop: Header=BB23_15 Depth=1
	shlb	$3, %r15b
	addb	%al, %r15b
	andb	$-8, %r15b
	movq	-48(%rbp), %rax         # 8-byte Reload
	movb	%r15b, (%rax)
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_118:                             #   in Loop: Header=BB23_15 Depth=1
	addb	%bl, -3(%r14)
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_119:                             #   in Loop: Header=BB23_15 Depth=1
	addw	%bx, -5(%r14)
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_113:                             #   in Loop: Header=BB23_15 Depth=1
	addq	%rbx, -17(%r14)
.LBB23_114:                             #   in Loop: Header=BB23_15 Depth=1
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_112:                             #   in Loop: Header=BB23_15 Depth=1
	addl	%ebx, -9(%r14)
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_115:                             #   in Loop: Header=BB23_15 Depth=1
	addb	%r15b, -3(%r14)
	jmp	.LBB23_13
.LBB23_116:                             #   in Loop: Header=BB23_15 Depth=1
	addw	%r15w, -5(%r14)
	jmp	.LBB23_13
.LBB23_117:                             #   in Loop: Header=BB23_15 Depth=1
	subl	%r13d, -9(%r14)
	jmp	.LBB23_13
.LBB23_120:                             #   in Loop: Header=BB23_15 Depth=1
	addl	%r15d, -9(%r14)
	addq	%rbx, %r13
	jmp	.LBB23_14
.LBB23_124:                             #   in Loop: Header=BB23_15 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB23_50
.LBB23_125:                             #   in Loop: Header=BB23_15 Depth=1
	movzbl	-3(%rdi), %ebx
	jmp	.LBB23_50
.LBB23_126:                             #   in Loop: Header=BB23_15 Depth=1
	movzwl	-5(%rdi), %ebx
	jmp	.LBB23_50
.LBB23_127:                             #   in Loop: Header=BB23_15 Depth=1
	movl	-9(%rdi), %ebx
	jmp	.LBB23_50
.LBB23_128:                             #   in Loop: Header=BB23_15 Depth=1
	movq	-17(%rdi), %rbx
	jmp	.LBB23_50
.LBB23_129:
	movb	$0, (%r14,%r13)
	movq	%r14, %rax
	addq	$264, %rsp              # imm = 0x108
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
	.quad	.LBB23_17
	.quad	.LBB23_19
	.quad	.LBB23_29
	.quad	.LBB23_20
.LJTI23_2:
	.quad	.LBB23_33
	.quad	.LBB23_41
	.quad	.LBB23_122
	.quad	.LBB23_123
	.quad	.LBB23_42
.LJTI23_3:
	.quad	.LBB23_69
	.quad	.LBB23_95
	.quad	.LBB23_96
	.quad	.LBB23_98
.LJTI23_4:
	.quad	.LBB23_102
	.quad	.LBB23_115
	.quad	.LBB23_116
	.quad	.LBB23_117
	.quad	.LBB23_12
.LJTI23_5:
	.quad	.LBB23_83
	.quad	.LBB23_104
	.quad	.LBB23_105
	.quad	.LBB23_107
.LJTI23_6:
	.quad	.LBB23_111
	.quad	.LBB23_118
	.quad	.LBB23_119
	.quad	.LBB23_120
	.quad	.LBB23_113
.LJTI23_7:
	.quad	.LBB23_56
	.quad	.LBB23_125
	.quad	.LBB23_126
	.quad	.LBB23_127
	.quad	.LBB23_128
.LJTI23_8:
	.quad	.LBB23_52
	.quad	.LBB23_86
	.quad	.LBB23_87
	.quad	.LBB23_89
.LJTI23_9:
	.quad	.LBB23_93
	.quad	.LBB23_118
	.quad	.LBB23_119
	.quad	.LBB23_112
	.quad	.LBB23_113
.LJTI23_10:
	.quad	.LBB23_33
	.quad	.LBB23_41
	.quad	.LBB23_122
	.quad	.LBB23_123
	.quad	.LBB23_42
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
	leaq	(%r14,%rax), %rbx
	addq	$-1, %rbx
	movq	%r14, %r12
	cmpq	%r14, %rbx
	jb	.LBB24_12
# %bb.9:                                # %.preheader1
	movq	%r14, %r12
	.p2align	4, 0x90
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	movsbl	(%r12), %esi
	movq	%r15, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=1
	addq	$1, %r12
	cmpq	%rbx, %r12
	jbe	.LBB24_10
	jmp	.LBB24_12
	.p2align	4, 0x90
.LBB24_13:                              #   in Loop: Header=BB24_12 Depth=1
	movsbl	(%rbx), %esi
	movq	%r15, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB24_15
# %bb.14:                               #   in Loop: Header=BB24_12 Depth=1
	addq	$-1, %rbx
.LBB24_12:                              # =>This Inner Loop Header: Depth=1
	cmpq	%r12, %rbx
	ja	.LBB24_13
.LBB24_15:
	movq	%rbx, %rax
	subq	%r12, %rax
	addq	$1, %rax
	xorl	%r15d, %r15d
	cmpq	%r12, %rbx
	cmovaeq	%rax, %r15
	cmpq	%r14, %r12
	je	.LBB24_17
# %bb.16:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memmove
.LBB24_17:
	movb	$0, (%r14,%r15)
	movzbl	-1(%r14), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB24_24
# %bb.18:
	andl	$7, %eax
	jmpq	*.LJTI24_1(,%rax,8)
.LBB24_19:
	shlb	$3, %r15b
	movb	%r15b, -1(%r14)
	jmp	.LBB24_24
.LBB24_20:
	movb	%r15b, -3(%r14)
	jmp	.LBB24_24
.LBB24_21:
	movw	%r15w, -5(%r14)
	jmp	.LBB24_24
.LBB24_22:
	movl	%r15d, -9(%r14)
	jmp	.LBB24_24
.LBB24_23:
	movq	%r15, -17(%r14)
.LBB24_24:
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
	.quad	.LBB24_19
	.quad	.LBB24_20
	.quad	.LBB24_21
	.quad	.LBB24_22
	.quad	.LBB24_23
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
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB25_27
# %bb.1:
	movq	%rdi, %r14
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI25_0(,%rcx,8)
.LBB25_2:
	shrq	$3, %rax
	testq	%rax, %rax
	jne	.LBB25_8
	jmp	.LBB25_27
.LBB25_3:
	movzbl	-3(%r14), %eax
	testq	%rax, %rax
	jne	.LBB25_8
	jmp	.LBB25_27
.LBB25_4:
	movzwl	-5(%r14), %eax
	testq	%rax, %rax
	jne	.LBB25_8
	jmp	.LBB25_27
.LBB25_5:
	movl	-9(%r14), %eax
	testq	%rax, %rax
	jne	.LBB25_8
	jmp	.LBB25_27
.LBB25_6:
	movq	-17(%r14), %rax
	testq	%rax, %rax
	je	.LBB25_27
.LBB25_8:
	testq	%rsi, %rsi
	js	.LBB25_9
# %bb.10:
	testq	%rdx, %rdx
	jns	.LBB25_12
.LBB25_11:
	xorl	%ecx, %ecx
	addq	%rax, %rdx
	cmovsq	%rcx, %rdx
.LBB25_12:
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	addq	$1, %rbx
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdx
	cmovlq	%rcx, %rbx
	movq	%rax, %rdi
	subq	%rsi, %rdi
	jle	.LBB25_20
# %bb.13:
	testq	%rbx, %rbx
	je	.LBB25_20
# %bb.14:
	cmpq	%rax, %rdx
	jl	.LBB25_16
# %bb.15:
	addq	$-1, %rax
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	cmovlq	%rcx, %rdi
	movq	%rdi, %rbx
.LBB25_16:
	testq	%rsi, %rsi
	je	.LBB25_19
# %bb.17:
	testq	%rbx, %rbx
	je	.LBB25_19
# %bb.18:
	addq	%r14, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memmove
.LBB25_19:
	movq	%rbx, %rcx
.LBB25_20:
	movb	$0, (%r14,%rcx)
	movzbl	-1(%r14), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB25_27
# %bb.21:
	andl	$7, %eax
	jmpq	*.LJTI25_1(,%rax,8)
.LBB25_22:
	shlb	$3, %cl
	movb	%cl, -1(%r14)
	jmp	.LBB25_27
.LBB25_9:
	xorl	%ecx, %ecx
	addq	%rax, %rsi
	cmovsq	%rcx, %rsi
	testq	%rdx, %rdx
	jns	.LBB25_12
	jmp	.LBB25_11
.LBB25_23:
	movb	%cl, -3(%r14)
	jmp	.LBB25_27
.LBB25_24:
	movw	%cx, -5(%r14)
	jmp	.LBB25_27
.LBB25_25:
	movl	%ecx, -9(%r14)
	jmp	.LBB25_27
.LBB25_26:
	movq	%rcx, -17(%r14)
.LBB25_27:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	sdsrange, .Lfunc_end25-sdsrange
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI25_0:
	.quad	.LBB25_2
	.quad	.LBB25_3
	.quad	.LBB25_4
	.quad	.LBB25_5
	.quad	.LBB25_6
.LJTI25_1:
	.quad	.LBB25_22
	.quad	.LBB25_23
	.quad	.LBB25_24
	.quad	.LBB25_25
	.quad	.LBB25_26
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
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB26_10
# %bb.1:
	movq	%rdi, %r15
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_2:
	shrq	$3, %r14
	testq	%r14, %r14
	jne	.LBB26_8
	jmp	.LBB26_10
.LBB26_3:
	movzbl	-3(%r15), %r14d
	testq	%r14, %r14
	jne	.LBB26_8
	jmp	.LBB26_10
.LBB26_4:
	movzwl	-5(%r15), %r14d
	testq	%r14, %r14
	jne	.LBB26_8
	jmp	.LBB26_10
.LBB26_5:
	movl	-9(%r15), %r14d
	testq	%r14, %r14
	jne	.LBB26_8
	jmp	.LBB26_10
.LBB26_6:
	movq	-17(%r15), %r14
	testq	%r14, %r14
	je	.LBB26_10
.LBB26_8:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB26_9:                               # =>This Inner Loop Header: Depth=1
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
	cmpq	%rbx, %r14
	jne	.LBB26_9
.LBB26_10:
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
	.quad	.LBB26_2
	.quad	.LBB26_3
	.quad	.LBB26_4
	.quad	.LBB26_5
	.quad	.LBB26_6
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
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB27_10
# %bb.1:
	movq	%rdi, %r15
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI27_0(,%rax,8)
.LBB27_2:
	shrq	$3, %r14
	testq	%r14, %r14
	jne	.LBB27_8
	jmp	.LBB27_10
.LBB27_3:
	movzbl	-3(%r15), %r14d
	testq	%r14, %r14
	jne	.LBB27_8
	jmp	.LBB27_10
.LBB27_4:
	movzwl	-5(%r15), %r14d
	testq	%r14, %r14
	jne	.LBB27_8
	jmp	.LBB27_10
.LBB27_5:
	movl	-9(%r15), %r14d
	testq	%r14, %r14
	jne	.LBB27_8
	jmp	.LBB27_10
.LBB27_6:
	movq	-17(%r15), %r14
	testq	%r14, %r14
	je	.LBB27_10
.LBB27_8:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB27_9:                               # =>This Inner Loop Header: Depth=1
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
	cmpq	%rbx, %r14
	jne	.LBB27_9
.LBB27_10:
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
	.quad	.LBB27_2
	.quad	.LBB27_3
	.quad	.LBB27_4
	.quad	.LBB27_5
	.quad	.LBB27_6
                                        # -- End function
	.text
	.globl	sdscmp                  # -- Begin function sdscmp
	.p2align	4, 0x90
	.type	sdscmp,@function
sdscmp:                                 # @sdscmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB28_1
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI28_0(,%rcx,8)
.LBB28_3:
	shrq	$3, %rax
	jmp	.LBB28_8
.LBB28_1:
	xorl	%eax, %eax
	jmp	.LBB28_8
.LBB28_4:
	movzbl	-3(%rdi), %eax
	jmp	.LBB28_8
.LBB28_5:
	movzwl	-5(%rdi), %eax
	jmp	.LBB28_8
.LBB28_6:
	movl	-9(%rdi), %eax
	jmp	.LBB28_8
.LBB28_7:
	movq	-17(%rdi), %rax
.LBB28_8:
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB28_9
# %bb.10:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI28_1(,%rcx,8)
.LBB28_11:
	shrq	$3, %rdx
	jmp	.LBB28_16
.LBB28_9:
	xorl	%edx, %edx
	jmp	.LBB28_16
.LBB28_12:
	movzbl	-3(%rsi), %edx
	jmp	.LBB28_16
.LBB28_13:
	movzwl	-5(%rsi), %edx
	jmp	.LBB28_16
.LBB28_14:
	movl	-9(%rsi), %edx
	jmp	.LBB28_16
.LBB28_15:
	movq	-17(%rsi), %rdx
.LBB28_16:
	cmpq	%rdx, %rax
	sbbl	%ecx, %ecx
	cmpq	%rdx, %rax
	cmovbq	%rax, %rdx
	movl	$1, %ebx
	cmovbel	%ecx, %ebx
	callq	memcmp
	testl	%eax, %eax
	cmovel	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
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
	testq	%rsi, %rsi
	js	.LBB29_33
# %bb.1:
	movl	%ecx, %r12d
	testl	%ecx, %ecx
	jle	.LBB29_33
# %bb.2:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB29_3
# %bb.4:
	movq	%r8, %r15
	movq	%rsi, %rbx
	movl	$40, %esi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB29_32
# %bb.5:
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB29_8
# %bb.6:
	movq	%r15, -64(%rbp)         # 8-byte Spill
	leal	-1(%r12), %eax
	cltq
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	subq	%rax, %rbx
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	jle	.LBB29_7
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
.LBB29_22:                              #   in Loop: Header=BB29_10 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB29_23
.LBB29_25:                              #   in Loop: Header=BB29_10 Depth=1
	addq	$1, %r12
	cmpq	-104(%rbp), %r12        # 8-byte Folded Reload
	jge	.LBB29_26
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	leal	2(%r13), %eax
	cmpl	%eax, %r15d
	jge	.LBB29_20
# %bb.11:                               #   in Loop: Header=BB29_10 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB29_12
# %bb.18:                               #   in Loop: Header=BB29_10 Depth=1
	addl	%r15d, %r15d
	movslq	%r15d, %rdx
	shlq	$3, %rdx
	movq	%rbx, %rsi
	callq	*16(%rdi)
	testq	%rax, %rax
	je	.LBB29_13
# %bb.19:                               #   in Loop: Header=BB29_10 Depth=1
	movq	%rax, %rbx
	movq	%rax, %r14
.LBB29_20:                              #   in Loop: Header=BB29_10 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	cmpl	$1, -96(%rbp)           # 4-byte Folded Reload
	jne	.LBB29_22
# %bb.21:                               #   in Loop: Header=BB29_10 Depth=1
	movzbl	(%rdi), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpb	(%rcx), %al
	jne	.LBB29_22
.LBB29_23:                              #   in Loop: Header=BB29_10 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%r12, %rsi
	subq	%rcx, %rsi
	callq	sdsnewlen
	movslq	%r13d, %rcx
	movq	%rax, (%r14,%rcx,8)
	testq	%rax, %rax
	je	.LBB29_13
# %bb.24:                               #   in Loop: Header=BB29_10 Depth=1
	addl	$1, %r13d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%r12,%rcx), %rax
	addq	$-1, %rax
	addq	%rcx, %r12
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	jmp	.LBB29_25
.LBB29_8:
	movl	$0, (%r15)
	jmp	.LBB29_33
.LBB29_7:
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB29_26:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	subq	%rax, %rsi
	callq	sdsnewlen
	movslq	%r13d, %rcx
	movq	%rax, (%r14,%rcx,8)
	testq	%rax, %rax
	je	.LBB29_13
# %bb.27:
	addl	$1, %r13d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r13d, (%rax)
	jmp	.LBB29_33
.LBB29_12:
	callq	__errno
	movl	$12, (%rax)
.LBB29_13:
	testl	%r13d, %r13d
	jle	.LBB29_30
# %bb.14:
	movslq	%r13d, %r15
	xorl	%ebx, %ebx
	jmp	.LBB29_15
	.p2align	4, 0x90
.LBB29_29:                              #   in Loop: Header=BB29_15 Depth=1
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jge	.LBB29_30
.LBB29_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB29_29
# %bb.16:                               #   in Loop: Header=BB29_15 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB29_17
# %bb.28:                               #   in Loop: Header=BB29_15 Depth=1
	movzbl	-1(%rsi), %eax
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs.20(,%rax,8), %rsi
	callq	*40(%rdi)
	jmp	.LBB29_29
.LBB29_30:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB29_17
# %bb.31:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
.LBB29_32:
	xorl	%r14d, %r14d
.LBB29_33:
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
	jmp	.LBB29_32
.LBB29_17:
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
	testq	%rdi, %rdi
	je	.LBB30_9
# %bb.1:
	movq	%rdi, %r14
	testl	%esi, %esi
	je	.LBB30_7
# %bb.2:
	movslq	%esi, %rbx
	jmp	.LBB30_3
	.p2align	4, 0x90
.LBB30_5:                               #   in Loop: Header=BB30_3 Depth=1
	movzbl	-1(%rsi), %eax
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs.20(,%rax,8), %rsi
	callq	*40(%rdi)
.LBB30_6:                               #   in Loop: Header=BB30_3 Depth=1
	addq	$-1, %rbx
	je	.LBB30_7
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%r14,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB30_6
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB30_5
.LBB30_10:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB30_7:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB30_10
# %bb.8:
	movq	40(%rdi), %rax
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB30_9:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	addq	$1, %rbx
	cmpq	%rbx, %r14
	je	.LBB31_18
.LBB31_5:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%r15,%rbx), %edx
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdscatlen               # TAILCALL
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
                                        # kill: def $edi killed $edi def $rdi
	leal	-48(%rdi), %eax
	cmpb	$10, %al
	setb	%al
	andb	$-33, %dil
	addb	$-65, %dil
	cmpb	$6, %dil
	setb	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	retq
.Lfunc_end32:
	.size	is_hex_digit, .Lfunc_end32-is_hex_digit
                                        # -- End function
	.globl	hex_digit_to_int        # -- Begin function hex_digit_to_int
	.p2align	4, 0x90
	.type	hex_digit_to_int,@function
hex_digit_to_int:                       # @hex_digit_to_int
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	xorl	%eax, %eax
	addl	$-49, %edi
	cmpl	$53, %edi
	ja	.LBB33_17
# %bb.1:
	jmpq	*.LJTI33_0(,%rdi,8)
.LBB33_11:
	movl	$10, %eax
	retq
.LBB33_12:
	movl	$11, %eax
	retq
.LBB33_13:
	movl	$12, %eax
	retq
.LBB33_14:
	movl	$13, %eax
	retq
.LBB33_15:
	movl	$14, %eax
	retq
.LBB33_16:
	movl	$15, %eax
.LBB33_17:
	retq
.LBB33_2:
	movl	$1, %eax
	retq
.LBB33_3:
	movl	$2, %eax
	retq
.LBB33_4:
	movl	$3, %eax
	retq
.LBB33_5:
	movl	$4, %eax
	retq
.LBB33_6:
	movl	$5, %eax
	retq
.LBB33_7:
	movl	$6, %eax
	retq
.LBB33_8:
	movl	$7, %eax
	retq
.LBB33_9:
	movl	$8, %eax
	retq
.LBB33_10:
	movl	$9, %eax
	retq
.Lfunc_end33:
	.size	hex_digit_to_int, .Lfunc_end33-hex_digit_to_int
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI33_0:
	.quad	.LBB33_2
	.quad	.LBB33_3
	.quad	.LBB33_4
	.quad	.LBB33_5
	.quad	.LBB33_6
	.quad	.LBB33_7
	.quad	.LBB33_8
	.quad	.LBB33_9
	.quad	.LBB33_10
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_11
	.quad	.LBB33_12
	.quad	.LBB33_13
	.quad	.LBB33_14
	.quad	.LBB33_15
	.quad	.LBB33_16
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_17
	.quad	.LBB33_11
	.quad	.LBB33_12
	.quad	.LBB33_13
	.quad	.LBB33_14
	.quad	.LBB33_15
	.quad	.LBB33_16
                                        # -- End function
	.text
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
	movl	$0, (%rsi)
	cmpb	$0, (%rdi)
	je	.LBB34_56
# %bb.1:                                # %.preheader4
	movq	%rsi, %r13
	movq	%rdi, %r12
	xorl	%ebx, %ebx
.LBB34_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_3 Depth 2
                                        #     Child Loop BB34_15 Depth 2
	movq	%r12, %r15
	.p2align	4, 0x90
.LBB34_3:                               #   Parent Loop BB34_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movsbq	(%r15), %rcx
	testb	$8, 1(%rax,%rcx)
	je	.LBB34_5
# %bb.4:                                #   in Loop: Header=BB34_3 Depth=2
	cmpb	$0, 1(%r15)
	leaq	1(%r15), %r15
	jne	.LBB34_3
	jmp	.LBB34_57
	.p2align	4, 0x90
.LBB34_5:                               #   in Loop: Header=BB34_2 Depth=1
	testb	%cl, %cl
	je	.LBB34_57
# %bb.6:                                #   in Loop: Header=BB34_2 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	je	.LBB34_54
# %bb.7:                                #   in Loop: Header=BB34_2 Depth=1
	movl	$4, %esi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB34_9
# %bb.8:                                #   in Loop: Header=BB34_2 Depth=1
	movq	%rax, %r14
	addq	$3, %r14
	movl	$65536, (%rax)          # imm = 0x10000
	jmp	.LBB34_10
.LBB34_54:                              #   in Loop: Header=BB34_2 Depth=1
	callq	__errno
	movl	$12, (%rax)
.LBB34_9:                               #   in Loop: Header=BB34_2 Depth=1
	xorl	%r14d, %r14d
.LBB34_10:                              #   in Loop: Header=BB34_2 Depth=1
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB34_15
.LBB34_11:                              #   in Loop: Header=BB34_15 Depth=2
	movb	%cl, -41(%rbp)
.LBB34_12:                              #   in Loop: Header=BB34_15 Depth=2
	addq	$1, %r15
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	-41(%rbp), %rsi
.LBB34_13:                              #   in Loop: Header=BB34_15 Depth=2
	callq	sdscatlen
	movq	%rax, %r14
.LBB34_14:                              #   in Loop: Header=BB34_15 Depth=2
	leaq	1(%r15), %rax
	cmpb	$0, (%r15)
	cmovneq	%rax, %r15
.LBB34_15:                              #   Parent Loop BB34_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r13d, %r13d
	je	.LBB34_19
# %bb.16:                               #   in Loop: Header=BB34_15 Depth=2
	movzbl	(%r15), %eax
	cmpb	$92, %al
	je	.LBB34_23
# %bb.17:                               #   in Loop: Header=BB34_15 Depth=2
	testb	%al, %al
	je	.LBB34_60
# %bb.18:                               #   in Loop: Header=BB34_15 Depth=2
	cmpb	$34, %al
	jne	.LBB34_32
	jmp	.LBB34_49
	.p2align	4, 0x90
.LBB34_19:                              #   in Loop: Header=BB34_15 Depth=2
	movsbl	(%r15), %eax
	testl	%ebx, %ebx
	je	.LBB34_33
# %bb.20:                               #   in Loop: Header=BB34_15 Depth=2
	cmpb	$92, %al
	je	.LBB34_37
# %bb.21:                               #   in Loop: Header=BB34_15 Depth=2
	testb	%al, %al
	je	.LBB34_60
# %bb.22:                               #   in Loop: Header=BB34_15 Depth=2
	cmpb	$39, %al
	jne	.LBB34_39
	jmp	.LBB34_49
	.p2align	4, 0x90
.LBB34_23:                              #   in Loop: Header=BB34_15 Depth=2
	movsbl	1(%r15), %eax
	testl	%eax, %eax
	je	.LBB34_32
# %bb.24:                               #   in Loop: Header=BB34_15 Depth=2
	movl	%eax, %ecx
	cmpb	$120, %al
	jne	.LBB34_29
# %bb.25:                               #   in Loop: Header=BB34_15 Depth=2
	movzbl	2(%r15), %edx
	leal	-48(%rdx), %esi
	cmpb	$10, %sil
	movl	%ebx, %r12d
	jb	.LBB34_27
# %bb.26:                               #   in Loop: Header=BB34_15 Depth=2
	movl	%edx, %ebx
	andb	$-33, %bl
	addb	$-65, %bl
	cmpb	$5, %bl
	movl	%r12d, %ebx
	ja	.LBB34_29
.LBB34_27:                              #   in Loop: Header=BB34_15 Depth=2
	movzbl	3(%r15), %edi
	leal	-48(%rdi), %esi
	cmpb	$10, %sil
	jb	.LBB34_48
# %bb.28:                               #   in Loop: Header=BB34_15 Depth=2
	movl	%edi, %ebx
	andb	$-33, %bl
	addb	$-65, %bl
	cmpb	$5, %bl
	movl	%r12d, %ebx
	jbe	.LBB34_48
.LBB34_29:                              #   in Loop: Header=BB34_15 Depth=2
	addl	$-97, %eax
	cmpl	$19, %eax
	ja	.LBB34_11
# %bb.30:                               #   in Loop: Header=BB34_15 Depth=2
	jmpq	*.LJTI34_0(,%rax,8)
.LBB34_31:                              #   in Loop: Header=BB34_15 Depth=2
	movb	$7, -41(%rbp)
	jmp	.LBB34_12
	.p2align	4, 0x90
.LBB34_32:                              #   in Loop: Header=BB34_15 Depth=2
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB34_13
.LBB34_33:                              #   in Loop: Header=BB34_15 Depth=2
	cmpl	$39, %eax
	ja	.LBB34_47
# %bb.34:                               #   in Loop: Header=BB34_15 Depth=2
	movl	%eax, %eax
	cmpq	$34, %rax
	je	.LBB34_41
# %bb.35:                               #   in Loop: Header=BB34_15 Depth=2
	cmpq	$39, %rax
	jne	.LBB34_46
# %bb.36:                               #   in Loop: Header=BB34_15 Depth=2
	movl	$1, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB34_14
.LBB34_37:                              #   in Loop: Header=BB34_15 Depth=2
	cmpb	$39, 1(%r15)
	jne	.LBB34_39
# %bb.38:                               #   in Loop: Header=BB34_15 Depth=2
	addq	$1, %r15
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	jmp	.LBB34_40
.LBB34_39:                              #   in Loop: Header=BB34_15 Depth=2
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
.LBB34_40:                              #   in Loop: Header=BB34_15 Depth=2
	callq	sdscatlen
	movq	%rax, %r14
	xorl	%r13d, %r13d
	jmp	.LBB34_14
.LBB34_41:                              #   in Loop: Header=BB34_15 Depth=2
	xorl	%ebx, %ebx
	movl	$1, %r13d
	jmp	.LBB34_14
.LBB34_42:                              #   in Loop: Header=BB34_15 Depth=2
	movb	$10, -41(%rbp)
	jmp	.LBB34_12
.LBB34_43:                              #   in Loop: Header=BB34_15 Depth=2
	movb	$8, -41(%rbp)
	jmp	.LBB34_12
.LBB34_44:                              #   in Loop: Header=BB34_15 Depth=2
	movb	$13, -41(%rbp)
	jmp	.LBB34_12
.LBB34_45:                              #   in Loop: Header=BB34_15 Depth=2
	movb	$9, -41(%rbp)
	jmp	.LBB34_12
.LBB34_46:                              #   in Loop: Header=BB34_15 Depth=2
	movabsq	$4294977025, %rcx       # imm = 0x100002601
	btq	%rax, %rcx
	jb	.LBB34_51
.LBB34_47:                              #   in Loop: Header=BB34_15 Depth=2
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sdscatlen
	movq	%rax, %r14
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB34_14
.LBB34_48:                              #   in Loop: Header=BB34_15 Depth=2
	addq	$3, %r15
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movsbl	%dl, %edi
	callq	hex_digit_to_int
	movl	%eax, %ebx
	shll	$4, %ebx
	movsbl	-72(%rbp), %edi         # 1-byte Folded Reload
	callq	hex_digit_to_int
	addl	%ebx, %eax
	movl	%r12d, %ebx
	movb	%al, -42(%rbp)
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	-42(%rbp), %rsi
	jmp	.LBB34_13
.LBB34_49:                              #   in Loop: Header=BB34_2 Depth=1
	cmpb	$0, 1(%r15)
	je	.LBB34_51
# %bb.50:                               #   in Loop: Header=BB34_2 Depth=1
	callq	__locale_ctype_ptr
	movsbq	1(%r15), %rcx
	testb	$8, 1(%rax,%rcx)
	je	.LBB34_60
.LBB34_51:                              #   in Loop: Header=BB34_2 Depth=1
	leaq	1(%r15), %r12
	cmpb	$0, (%r15)
	cmoveq	%r15, %r12
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB34_55
# %bb.52:                               #   in Loop: Header=BB34_2 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	movslq	(%r13), %rax
	leaq	8(,%rax,8), %rdx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	*16(%rdi)
	movq	%rax, %rbx
.LBB34_53:                              #   in Loop: Header=BB34_2 Depth=1
	movslq	(%r13), %rax
	movq	%r14, (%rbx,%rax,8)
	addl	$1, %eax
	movl	%eax, (%r13)
	cmpb	$0, (%r12)
	jne	.LBB34_2
	jmp	.LBB34_57
.LBB34_55:                              #   in Loop: Header=BB34_2 Depth=1
	callq	__errno
	movl	$12, (%rax)
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB34_53
.LBB34_56:
	xorl	%ebx, %ebx
.LBB34_57:
	testq	%rbx, %rbx
	jne	.LBB34_67
# %bb.58:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB34_72
# %bb.59:
	movl	$8, %esi
	callq	*(%rdi)
	movq	%rax, %rbx
	jmp	.LBB34_67
.LBB34_60:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %eax
	subl	$1, %eax
	movl	%eax, (%rbx)
	movq	-64(%rbp), %r15         # 8-byte Reload
	jae	.LBB34_69
.LBB34_61:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB34_73
# %bb.62:
	movq	%r15, %rsi
	callq	*40(%rdi)
	testq	%r14, %r14
	je	.LBB34_65
# %bb.63:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB34_73
# %bb.64:
	movzbl	-1(%r14), %eax
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs.20(,%rax,8), %r14
	movq	%r14, %rsi
	callq	*40(%rdi)
.LBB34_65:
	movl	$0, (%rbx)
.LBB34_66:
	xorl	%ebx, %ebx
.LBB34_67:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB34_68:                              #   in Loop: Header=BB34_69 Depth=1
	subl	$1, %eax
	movl	%eax, (%rbx)
	jb	.LBB34_61
.LBB34_69:                              # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rcx
	movq	(%r15,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB34_68
# %bb.70:                               #   in Loop: Header=BB34_69 Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB34_73
# %bb.71:                               #   in Loop: Header=BB34_69 Depth=1
	movzbl	-1(%rsi), %eax
	andl	$7, %eax
	xorq	$4, %rax
	addq	.Lswitch.table.sdssplitargs.20(,%rax,8), %rsi
	callq	*40(%rdi)
	movl	(%rbx), %eax
	jmp	.LBB34_68
.LBB34_72:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB34_66
.LBB34_73:
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
	.quad	.LBB34_31
	.quad	.LBB34_43
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_42
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_11
	.quad	.LBB34_44
	.quad	.LBB34_11
	.quad	.LBB34_45
                                        # -- End function
	.text
	.globl	sdsmapchars             # -- Begin function sdsmapchars
	.p2align	4, 0x90
	.type	sdsmapchars,@function
sdsmapchars:                            # @sdsmapchars
# %bb.0:
	movq	%rdi, %rax
	movzbl	-1(%rdi), %r8d
	movl	%r8d, %edi
	andb	$7, %dil
	cmpb	$4, %dil
	ja	.LBB35_15
# %bb.1:
	movl	%r8d, %edi
	andl	$7, %edi
	jmpq	*.LJTI35_0(,%rdi,8)
.LBB35_2:
	shrq	$3, %r8
	testq	%r8, %r8
	jne	.LBB35_8
	jmp	.LBB35_15
.LBB35_3:
	movzbl	-3(%rax), %r8d
	testq	%r8, %r8
	jne	.LBB35_8
	jmp	.LBB35_15
.LBB35_4:
	movzwl	-5(%rax), %r8d
	testq	%r8, %r8
	jne	.LBB35_8
	jmp	.LBB35_15
.LBB35_5:
	movl	-9(%rax), %r8d
	testq	%r8, %r8
	jne	.LBB35_8
	jmp	.LBB35_15
.LBB35_6:
	movq	-17(%rax), %r8
	testq	%r8, %r8
	je	.LBB35_15
.LBB35_8:
	xorl	%r10d, %r10d
	jmp	.LBB35_9
	.p2align	4, 0x90
.LBB35_12:                              #   in Loop: Header=BB35_9 Depth=1
	movb	(%rdx,%rdi), %dil
	movb	%dil, (%rax,%r10)
.LBB35_14:                              #   in Loop: Header=BB35_9 Depth=1
	addq	$1, %r10
	cmpq	%r8, %r10
	je	.LBB35_15
.LBB35_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_11 Depth 2
	testq	%rcx, %rcx
	je	.LBB35_14
# %bb.10:                               #   in Loop: Header=BB35_9 Depth=1
	movb	(%rax,%r10), %r9b
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB35_11:                              #   Parent Loop BB35_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	(%rsi,%rdi), %r9b
	je	.LBB35_12
# %bb.13:                               #   in Loop: Header=BB35_11 Depth=2
	addq	$1, %rdi
	cmpq	%rcx, %rdi
	jb	.LBB35_11
	jmp	.LBB35_14
.LBB35_15:
	retq
.Lfunc_end35:
	.size	sdsmapchars, .Lfunc_end35-sdsmapchars
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_2
	.quad	.LBB35_3
	.quad	.LBB35_4
	.quad	.LBB35_5
	.quad	.LBB35_6
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
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB36_8
# %bb.1:
	movl	$4, %esi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB36_3
# %bb.2:
	movq	%rax, %r13
	addq	$3, %r13
	movl	$65536, (%rax)          # imm = 0x10000
	testl	%ebx, %ebx
	jg	.LBB36_4
	jmp	.LBB36_9
.LBB36_8:
	callq	__errno
	movl	$12, (%rax)
.LBB36_3:
	xorl	%r13d, %r13d
	testl	%ebx, %ebx
	jle	.LBB36_9
.LBB36_4:
	leal	-1(%rbx), %r12d
	movl	%ebx, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB36_6
	.p2align	4, 0x90
.LBB36_5:                               #   in Loop: Header=BB36_6 Depth=1
	addq	$1, %r15
	cmpq	%r15, %r14
	je	.LBB36_9
.LBB36_6:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r15,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r13
	cmpq	%r15, %r12
	je	.LBB36_5
# %bb.7:                                #   in Loop: Header=BB36_6 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r13
	jmp	.LBB36_5
.LBB36_9:
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
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB37_16
# %bb.1:
	movl	$4, %esi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB37_3
# %bb.2:
	movq	%rax, %rcx
	addq	$3, %rax
	movl	$65536, (%rcx)          # imm = 0x10000
	testl	%ebx, %ebx
	jg	.LBB37_4
	jmp	.LBB37_17
.LBB37_16:
	callq	__errno
	movl	$12, (%rax)
.LBB37_3:
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB37_17
.LBB37_4:
	leal	-1(%rbx), %r12d
	movl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB37_6
	.p2align	4, 0x90
.LBB37_5:                               #   in Loop: Header=BB37_6 Depth=1
	addq	$1, %r14
	cmpq	%r14, %rbx
	je	.LBB37_17
.LBB37_6:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r14,8), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB37_9
# %bb.7:                                #   in Loop: Header=BB37_6 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI37_0(,%rcx,8)
.LBB37_8:                               #   in Loop: Header=BB37_6 Depth=1
	shrq	$3, %rdx
	jmp	.LBB37_14
.LBB37_9:                               #   in Loop: Header=BB37_6 Depth=1
	xorl	%edx, %edx
	jmp	.LBB37_14
.LBB37_10:                              #   in Loop: Header=BB37_6 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB37_14
.LBB37_11:                              #   in Loop: Header=BB37_6 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB37_14
.LBB37_12:                              #   in Loop: Header=BB37_6 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB37_14
.LBB37_13:                              #   in Loop: Header=BB37_6 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB37_14:                              #   in Loop: Header=BB37_6 Depth=1
	movq	%rax, %rdi
	callq	sdscatlen
	cmpq	%r14, %r12
	je	.LBB37_5
# %bb.15:                               #   in Loop: Header=BB37_6 Depth=1
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	sdscatlen
	jmp	.LBB37_5
.LBB37_17:
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
	.quad	.LBB37_8
	.quad	.LBB37_10
	.quad	.LBB37_11
	.quad	.LBB37_12
	.quad	.LBB37_13
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
	testq	%rdi, %rdi
	je	.LBB38_1
# %bb.2:
	movq	(%rdi), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB38_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
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
	testq	%rdi, %rdi
	je	.LBB39_1
# %bb.2:
	movq	16(%rdi), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB39_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
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
	testq	%rdi, %rdi
	je	.LBB40_1
# %bb.2:
	movq	40(%rdi), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB40_1:
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

	.type	.Lswitch.table.sdssplitargs.20,@object # @switch.table.sdssplitargs.20
	.p2align	4
.Lswitch.table.sdssplitargs.20:
	.quad	-17                     # 0xffffffffffffffef
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-3                      # 0xfffffffffffffffd
	.quad	-5                      # 0xfffffffffffffffb
	.quad	-9                      # 0xfffffffffffffff7
	.size	.Lswitch.table.sdssplitargs.20, 64

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
