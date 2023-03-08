	.text
	.file	"pbuf.c"
	.globl	pbuf_alloc              # -- Begin function pbuf_alloc
	.p2align	4, 0x90
	.type	pbuf_alloc,@function
pbuf_alloc:                             # @pbuf_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movl	%esi, %ebx
	cmpl	$385, %edx              # imm = 0x181
	jg	.LBB0_6
# %bb.1:
	cmpl	$1, %r12d
	je	.LBB0_3
# %bb.2:
	cmpl	$65, %r12d
	jne	.LBB0_31
.LBB0_3:
	movl	%r12d, %eax
	orl	$64, %eax
	cmpl	$65, %eax
	jne	.LBB0_4
# %bb.14:
	movl	$15, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB0_15
# %bb.16:
	movq	%rax, %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movw	%bx, 16(%rax)
	movw	%bx, 18(%rax)
	movb	%r12b, 20(%rax)
	movw	$256, 21(%rax)          # imm = 0x100
	movb	$0, 23(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_12
.LBB0_6:
	movl	%edi, %r15d
	cmpl	$386, %r12d             # imm = 0x182
	jne	.LBB0_7
# %bb.17:
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rax, (%r12)
.LBB0_30:                               #   in Loop: Header=BB0_18 Depth=1
	xorl	%r15d, %r15d
	movq	%rax, %r12
	subw	%cx, %bx
	je	.LBB0_13
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	$16, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB0_19
# %bb.25:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$1514, %edx             # imm = 0x5EA
	subl	%r15d, %edx
	cmpw	%dx, %bx
	movl	%ebx, %ecx
	cmovael	%edx, %ecx
	movzwl	%r15w, %edx
	leaq	24(%rax,%rdx), %rsi
	movq	$0, (%rax)
	movq	%rsi, 8(%rax)
	movw	%bx, 16(%rax)
	movw	%cx, 18(%rax)
	movl	$65666, 20(%rax)        # imm = 0x10082
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1514, %edx             # imm = 0x5EA
	je	.LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_18 Depth=1
	testq	%r14, %r14
	jne	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rax, %r14
	jmp	.LBB0_30
.LBB0_7:
	cmpl	$640, %r12d             # imm = 0x280
	jne	.LBB0_31
# %bb.8:
	leal	(%r15,%rbx), %eax
	xorl	%r14d, %r14d
	movl	%r15d, %ecx
	addw	%bx, %cx
	jb	.LBB0_13
# %bb.9:
	movzwl	%ax, %edi
	addq	$24, %rdi
	movzwl	%bx, %eax
	cmpq	%rax, %rdi
	jb	.LBB0_13
# %bb.10:
	callq	mem_malloc
	testq	%rax, %rax
	je	.LBB0_24
# %bb.11:
	movq	%rax, %r14
	movzwl	%r15w, %eax
	movl	%eax, %eax
	addq	%r14, %rax
	addq	$24, %rax
	movq	$0, (%r14)
	movq	%rax, 8(%r14)
	movw	%bx, 16(%r14)
	movw	%bx, 18(%r14)
	movl	$65664, 20(%r14)        # imm = 0x10080
	jmp	.LBB0_12
.LBB0_15:
	xorl	%r14d, %r14d
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_19:
	callq	ukplat_lcpu_save_irqf
	movb	pbuf_free_ooseq_pending(%rip), %bl
	movb	$1, pbuf_free_ooseq_pending(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	testb	%bl, %bl
	jne	.LBB0_22
# %bb.20:
	movl	$pbuf_free_ooseq_callback, %edi
	xorl	%esi, %esi
	callq	tcpip_try_callback
	testb	%al, %al
	je	.LBB0_22
# %bb.21:
	callq	ukplat_lcpu_save_irqf
	movb	$0, pbuf_free_ooseq_pending(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_24
# %bb.23:
	movq	%r14, %rdi
	callq	pbuf_free
.LBB0_24:
	xorl	%r14d, %r14d
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_26:
	movl	$.L.str.3, %edi
.LBB0_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB0_4:
	movl	$.L.str.6, %edi
	jmp	.LBB0_5
.LBB0_31:
	movl	$.L.str.5, %edi
	jmp	.LBB0_5
.Lfunc_end0:
	.size	pbuf_alloc, .Lfunc_end0-pbuf_alloc
                                        # -- End function
	.globl	pbuf_alloc_reference    # -- Begin function pbuf_alloc_reference
	.p2align	4, 0x90
	.type	pbuf_alloc_reference,@function
pbuf_alloc_reference:                   # @pbuf_alloc_reference
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %eax
	orl	$64, %eax
	cmpl	$65, %eax
	jne	.LBB1_5
# %bb.1:
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$15, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB1_2
# %bb.3:
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movw	%r14w, 16(%rax)
	movw	%r14w, 18(%rax)
	movb	%bl, 20(%rax)
	movw	$256, 21(%rax)          # imm = 0x100
	movb	$0, 23(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_4
.LBB1_2:
	xorl	%eax, %eax
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_5:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	pbuf_alloc_reference, .Lfunc_end1-pbuf_alloc_reference
                                        # -- End function
	.globl	pbuf_free               # -- Begin function pbuf_free
	.p2align	4, 0x90
	.type	pbuf_free,@function
pbuf_free:                              # @pbuf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB2_4
# %bb.1:                                # %.preheader
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	jmp	.LBB2_2
.LBB2_15:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$15, %edi
.LBB2_14:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rsi
	callq	memp_free
.LBB2_19:                               #   in Loop: Header=BB2_2 Depth=1
	addb	$1, %r15b
	testq	%r14, %r14
	je	.LBB2_20
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %r12
	callq	ukplat_lcpu_save_irqf
	movzbl	22(%r14), %ebx
	testb	%bl, %bl
	je	.LBB2_3
# %bb.6:                                #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%rbx), %ecx
	movb	%cl, 22(%r12)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	addb	$-1, %bl
	jne	.LBB2_20
# %bb.7:                                #   in Loop: Header=BB2_2 Depth=1
	movq	(%r12), %r14
	testb	$2, 21(%r12)
	jne	.LBB2_8
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	movzbl	20(%r12), %eax
	andb	$15, %al
	je	.LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_2 Depth=1
	cmpb	$1, %al
	je	.LBB2_15
# %bb.12:                               #   in Loop: Header=BB2_2 Depth=1
	cmpb	$2, %al
	jne	.LBB2_17
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$16, %edi
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_9
# %bb.18:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rdi
	callq	*%rax
	jmp	.LBB2_19
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rdi
	callq	mem_free
	jmp	.LBB2_19
.LBB2_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_3:
	movl	$.L.str.12, %edi
	jmp	.LBB2_5
.LBB2_17:
	movl	$.L.str.14, %edi
	jmp	.LBB2_5
.LBB2_9:
	movl	$.L.str.13, %edi
.LBB2_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB2_4:
	movl	$.L.str.10, %edi
	jmp	.LBB2_5
.Lfunc_end2:
	.size	pbuf_free, .Lfunc_end2-pbuf_free
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB3_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB3_2:
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
	movl	$uk_pr_crit.__str.38, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	uk_pr_crit, .Lfunc_end3-uk_pr_crit
                                        # -- End function
	.globl	pbuf_alloced_custom     # -- Begin function pbuf_alloced_custom
	.p2align	4, 0x90
	.type	pbuf_alloced_custom,@function
pbuf_alloced_custom:                    # @pbuf_alloced_custom
# %bb.0:
	movq	%rcx, %rax
                                        # kill: def $esi killed $esi def $rsi
	movzwl	%di, %ecx
	leal	(%rcx,%rsi), %edi
	cmpl	%r9d, %edi
	jbe	.LBB4_2
# %bb.1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB4_2:
	movl	%ecx, %ecx
	addq	%r8, %rcx
	testq	%r8, %r8
	cmoveq	%r8, %rcx
	movq	$0, (%rax)
	movq	%rcx, 8(%rax)
	movw	%si, 16(%rax)
	movw	%si, 18(%rax)
	movb	%dl, 20(%rax)
	movw	$258, 21(%rax)          # imm = 0x102
	movb	$0, 23(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	pbuf_alloced_custom, .Lfunc_end4-pbuf_alloced_custom
                                        # -- End function
	.globl	pbuf_realloc            # -- Begin function pbuf_realloc
	.p2align	4, 0x90
	.type	pbuf_realloc,@function
pbuf_realloc:                           # @pbuf_realloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.3:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movzwl	16(%rdi), %ecx
	cmpw	%r14w, %cx
	jbe	.LBB5_16
# %bb.4:
	movl	%r14d, %eax
	subl	%ecx, %eax
	.p2align	4, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movzwl	18(%rbx), %ecx
	cmpw	%cx, %r14w
	jbe	.LBB5_8
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	addw	%ax, 16(%rbx)
	subl	%ecx, %r14d
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB5_5
# %bb.7:
	movl	$.L.str.8, %edi
.LBB5_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB5_8:
	leaq	18(%rbx), %rax
	cmpw	%cx, %r14w
	je	.LBB5_13
# %bb.9:
	movb	20(%rbx), %cl
	andb	$15, %cl
	jne	.LBB5_13
# %bb.10:
	testb	$2, 21(%rbx)
	jne	.LBB5_13
# %bb.11:
	movzwl	%r14w, %esi
	subq	%rbx, %rsi
	addq	8(%rbx), %rsi
	movq	%rbx, %rdi
	callq	mem_trim
	testq	%rax, %rax
	je	.LBB5_17
# %bb.12:
	movq	%rax, %rbx
	addq	$18, %rax
.LBB5_13:
	movw	%r14w, (%rax)
	movw	%r14w, 16(%rbx)
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_15
# %bb.14:
	callq	pbuf_free
.LBB5_15:
	movq	$0, (%rbx)
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_1:
	movl	$.L.str.7, %edi
	jmp	.LBB5_2
.LBB5_17:
	movl	$.L.str.9, %edi
	jmp	.LBB5_2
.Lfunc_end5:
	.size	pbuf_realloc, .Lfunc_end5-pbuf_realloc
                                        # -- End function
	.globl	pbuf_add_header         # -- Begin function pbuf_add_header
	.p2align	4, 0x90
	.type	pbuf_add_header,@function
pbuf_add_header:                        # @pbuf_add_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB6_9
# %bb.1:
	movb	$1, %al
	cmpq	$65535, %rsi            # imm = 0xFFFF
	ja	.LBB6_8
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB6_7
# %bb.3:
	movzwl	%si, %r8d
	movzwl	16(%rdi), %ecx
	addw	%si, %cx
	movzwl	%cx, %edx
	cmpl	%edx, %r8d
	ja	.LBB6_8
# %bb.4:
	cmpb	$0, 20(%rdi)
	jns	.LBB6_8
# %bb.5:
	movq	8(%rdi), %r8
	subq	%rsi, %r8
	leaq	24(%rdi), %rdx
	cmpq	%rdx, %r8
	jb	.LBB6_8
# %bb.6:
	movq	%r8, 8(%rdi)
	addw	%si, 18(%rdi)
	movw	%cx, 16(%rdi)
.LBB6_7:
	xorl	%eax, %eax
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB6_9:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	pbuf_add_header, .Lfunc_end6-pbuf_add_header
                                        # -- End function
	.globl	pbuf_add_header_force   # -- Begin function pbuf_add_header_force
	.p2align	4, 0x90
	.type	pbuf_add_header_force,@function
pbuf_add_header_force:                  # @pbuf_add_header_force
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB7_9
# %bb.1:
	movb	$1, %al
	cmpq	$65535, %rsi            # imm = 0xFFFF
	ja	.LBB7_8
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB7_7
# %bb.3:
	movzwl	%si, %r8d
	movzwl	16(%rdi), %ecx
	addw	%si, %cx
	movzwl	%cx, %edx
	cmpl	%edx, %r8d
	ja	.LBB7_8
# %bb.4:
	movq	8(%rdi), %r8
	subq	%rsi, %r8
	cmpb	$0, 20(%rdi)
	jns	.LBB7_6
# %bb.5:
	leaq	24(%rdi), %rdx
	cmpq	%rdx, %r8
	jb	.LBB7_8
.LBB7_6:
	movq	%r8, 8(%rdi)
	addw	%si, 18(%rdi)
	movw	%cx, 16(%rdi)
.LBB7_7:
	xorl	%eax, %eax
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB7_9:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	pbuf_add_header_force, .Lfunc_end7-pbuf_add_header_force
                                        # -- End function
	.globl	pbuf_remove_header      # -- Begin function pbuf_remove_header
	.p2align	4, 0x90
	.type	pbuf_remove_header,@function
pbuf_remove_header:                     # @pbuf_remove_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB8_1
# %bb.3:
	movb	$1, %al
	cmpq	$65535, %rsi            # imm = 0xFFFF
	ja	.LBB8_9
# %bb.4:
	testq	%rsi, %rsi
	je	.LBB8_8
# %bb.5:
	movzwl	%si, %ecx
	movzwl	18(%rdi), %eax
	cmpl	%eax, %ecx
	ja	.LBB8_6
# %bb.7:
	addq	%rsi, 8(%rdi)
	subl	%esi, %eax
	movw	%ax, 18(%rdi)
	subw	%si, 16(%rdi)
.LBB8_8:
	xorl	%eax, %eax
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB8_1:
	movl	$.L.str.10, %edi
	jmp	.LBB8_2
.LBB8_6:
	movl	$.L.str.11, %edi
.LBB8_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	pbuf_remove_header, .Lfunc_end8-pbuf_remove_header
                                        # -- End function
	.globl	pbuf_header             # -- Begin function pbuf_header
	.p2align	4, 0x90
	.type	pbuf_header,@function
pbuf_header:                            # @pbuf_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	callq	pbuf_header_impl
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pbuf_header, .Lfunc_end9-pbuf_header
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pbuf_header_impl
	.type	pbuf_header_impl,@function
pbuf_header_impl:                       # @pbuf_header_impl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rcx
	testw	%si, %si
	js	.LBB10_1
# %bb.2:
	testq	%rdi, %rdi
	je	.LBB10_13
# %bb.3:
	testw	%si, %si
	je	.LBB10_10
# %bb.4:
	movzwl	16(%rdi), %r8d
	movb	$1, %al
	addw	%si, %r8w
	jb	.LBB10_11
# %bb.5:
	cmpb	$0, 20(%rdi)
	js	.LBB10_6
# %bb.7:
	testb	%dl, %dl
	je	.LBB10_11
# %bb.8:
	movq	8(%rdi), %rdx
	subq	%rcx, %rdx
	jmp	.LBB10_9
.LBB10_1:
	negq	%rcx
	movq	%rcx, %rsi
	callq	pbuf_remove_header
                                        # kill: def $al killed $al def $eax
	jmp	.LBB10_12
.LBB10_6:
	movq	8(%rdi), %rdx
	subq	%rcx, %rdx
	leaq	24(%rdi), %rcx
	cmpq	%rcx, %rdx
	jb	.LBB10_11
.LBB10_9:
	movq	%rdx, 8(%rdi)
	addw	%si, 18(%rdi)
	movw	%r8w, 16(%rdi)
.LBB10_10:
	xorl	%eax, %eax
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB10_13:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	pbuf_header_impl, .Lfunc_end10-pbuf_header_impl
                                        # -- End function
	.globl	pbuf_header_force       # -- Begin function pbuf_header_force
	.p2align	4, 0x90
	.type	pbuf_header_force,@function
pbuf_header_force:                      # @pbuf_header_force
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edx
	callq	pbuf_header_impl
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pbuf_header_force, .Lfunc_end11-pbuf_header_force
                                        # -- End function
	.globl	pbuf_free_header        # -- Begin function pbuf_free_header
	.p2align	4, 0x90
	.type	pbuf_free_header,@function
pbuf_free_header:                       # @pbuf_free_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r12d
	movq	%rdi, %r14
	testw	%r12w, %r12w
	je	.LBB12_8
# %bb.1:
	testq	%r14, %r14
	je	.LBB12_8
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%r14), %ebx
	cmpw	%bx, %r12w
	jb	.LBB12_7
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	movq	(%r14), %r15
	movq	$0, (%r14)
	movq	%r14, %rdi
	callq	pbuf_free
	subw	%bx, %r12w
	je	.LBB12_9
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	movq	%r15, %r14
	testq	%r15, %r15
	jne	.LBB12_2
	jmp	.LBB12_9
.LBB12_7:
	movzwl	%r12w, %esi
	movq	%r14, %rdi
	callq	pbuf_remove_header
.LBB12_8:
	movq	%r14, %r15
.LBB12_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pbuf_free_header, .Lfunc_end12-pbuf_free_header
                                        # -- End function
	.globl	pbuf_clen               # -- Begin function pbuf_clen
	.p2align	4, 0x90
	.type	pbuf_clen,@function
pbuf_clen:                              # @pbuf_clen
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB13_3
	.p2align	4, 0x90
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %eax
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB13_1
.LBB13_3:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end13:
	.size	pbuf_clen, .Lfunc_end13-pbuf_clen
                                        # -- End function
	.globl	pbuf_ref                # -- Begin function pbuf_ref
	.p2align	4, 0x90
	.type	pbuf_ref,@function
pbuf_ref:                               # @pbuf_ref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB14_2
# %bb.1:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	addb	$1, 22(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpb	$0, 22(%rbx)
	je	.LBB14_3
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB14_3:
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	pbuf_ref, .Lfunc_end14-pbuf_ref
                                        # -- End function
	.globl	pbuf_cat                # -- Begin function pbuf_cat
	.p2align	4, 0x90
	.type	pbuf_cat,@function
pbuf_cat:                               # @pbuf_cat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB15_7
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB15_7
# %bb.2:
	movq	(%rdi), %rdx
	.p2align	4, 0x90
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	leaq	16(%rdi), %rax
	movzwl	16(%rdi), %ecx
	testq	%rdx, %rdx
	je	.LBB15_5
# %bb.3:                                #   in Loop: Header=BB15_4 Depth=1
	movq	%rdx, %rdi
	addw	16(%rsi), %cx
	movw	%cx, (%rax)
	movq	(%rdx), %rdx
	jmp	.LBB15_4
.LBB15_5:
	cmpw	18(%rdi), %cx
	jne	.LBB15_6
# %bb.9:
	addw	16(%rsi), %cx
	movw	%cx, (%rax)
	movq	%rsi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB15_7:
	movl	$.L.str.16, %edi
	jmp	.LBB15_8
.LBB15_6:
	movl	$.L.str.17, %edi
.LBB15_8:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end15:
	.size	pbuf_cat, .Lfunc_end15-pbuf_cat
                                        # -- End function
	.globl	pbuf_chain              # -- Begin function pbuf_chain
	.p2align	4, 0x90
	.type	pbuf_chain,@function
pbuf_chain:                             # @pbuf_chain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	pbuf_cat
	testq	%rbx, %rbx
	je	.LBB16_2
# %bb.1:
	callq	ukplat_lcpu_save_irqf
	addb	$1, 22(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpb	$0, 22(%rbx)
	je	.LBB16_3
.LBB16_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB16_3:
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end16:
	.size	pbuf_chain, .Lfunc_end16-pbuf_chain
                                        # -- End function
	.globl	pbuf_dechain            # -- Begin function pbuf_dechain
	.p2align	4, 0x90
	.type	pbuf_dechain,@function
pbuf_dechain:                           # @pbuf_dechain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB17_1
# %bb.2:
	movzwl	16(%rbx), %ecx
	movzwl	16(%rdi), %edx
	movzwl	18(%rdi), %eax
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jne	.LBB17_3
# %bb.5:
	leaq	18(%rdi), %r15
	movq	$0, (%rdi)
	movw	%ax, 16(%rdi)
	leaq	16(%rdi), %r14
	movq	%rbx, %rdi
	callq	pbuf_free
	movzbl	%al, %ecx
	movq	%r15, %rdi
	jmp	.LBB17_6
.LBB17_1:
	leaq	16(%rdi), %r14
	addq	$18, %rdi
	movl	$1, %ecx
.LBB17_6:
	movzwl	(%r14), %eax
	cmpw	(%rdi), %ax
	jne	.LBB17_7
# %bb.8:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmoveq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_7:
	movl	$.L.str.20, %edi
	jmp	.LBB17_4
.LBB17_3:
	movl	$.L.str.19, %edi
.LBB17_4:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end17:
	.size	pbuf_dechain, .Lfunc_end17-pbuf_dechain
                                        # -- End function
	.globl	pbuf_copy               # -- Begin function pbuf_copy
	.p2align	4, 0x90
	.type	pbuf_copy,@function
pbuf_copy:                              # @pbuf_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB18_6
# %bb.1:
	movq	%rsi, %r15
	testq	%rsi, %rsi
	je	.LBB18_6
# %bb.2:
	movq	%rdi, %r14
	movzwl	16(%rdi), %eax
	cmpw	16(%r15), %ax
	jb	.LBB18_6
# %bb.3:                                # %.preheader
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB18_4
	.p2align	4, 0x90
.LBB18_24:                              #   in Loop: Header=BB18_4 Depth=1
	testq	%r15, %r15
	je	.LBB18_25
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%r14), %eax
	subq	%r13, %rax
	movzwl	18(%r15), %ebx
	subq	%r12, %rbx
	cmpq	%rbx, %rax
	cmovbq	%rax, %rbx
	movq	8(%r14), %rdi
	addq	%r13, %rdi
	movq	8(%r15), %rsi
	addq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r13
	movzwl	18(%r14), %eax
	cmpq	%rax, %r13
	ja	.LBB18_5
# %bb.8:                                #   in Loop: Header=BB18_4 Depth=1
	addq	%rbx, %r12
	movzwl	18(%r15), %ecx
	cmpq	%rcx, %r12
	ja	.LBB18_9
# %bb.10:                               #   in Loop: Header=BB18_4 Depth=1
	jb	.LBB18_12
# %bb.11:                               #   in Loop: Header=BB18_4 Depth=1
	movq	(%r15), %r15
	xorl	%r12d, %r12d
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	cmpq	%rax, %r13
	jne	.LBB18_15
# %bb.13:                               #   in Loop: Header=BB18_4 Depth=1
	movq	(%r14), %r14
	testq	%r15, %r15
	je	.LBB18_14
# %bb.19:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$0, %r13d
	testq	%r14, %r14
	je	.LBB18_20
.LBB18_15:                              #   in Loop: Header=BB18_4 Depth=1
	testq	%r15, %r15
	je	.LBB18_21
.LBB18_16:                              #   in Loop: Header=BB18_4 Depth=1
	movzwl	18(%r15), %eax
	cmpw	16(%r15), %ax
	jne	.LBB18_21
# %bb.17:                               #   in Loop: Header=BB18_4 Depth=1
	cmpq	$0, (%r15)
	je	.LBB18_21
	jmp	.LBB18_18
	.p2align	4, 0x90
.LBB18_14:                              #   in Loop: Header=BB18_4 Depth=1
	xorl	%r13d, %r13d
	testq	%r15, %r15
	jne	.LBB18_16
	.p2align	4, 0x90
.LBB18_21:                              #   in Loop: Header=BB18_4 Depth=1
	testq	%r14, %r14
	je	.LBB18_24
# %bb.22:                               #   in Loop: Header=BB18_4 Depth=1
	movzwl	18(%r14), %eax
	cmpw	16(%r14), %ax
	jne	.LBB18_24
# %bb.23:                               #   in Loop: Header=BB18_4 Depth=1
	cmpq	$0, (%r14)
	je	.LBB18_24
.LBB18_18:
	movl	$.L.str.25, %edi
	jmp	.LBB18_7
.LBB18_25:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_5:
	movl	$.L.str.22, %edi
	jmp	.LBB18_7
.LBB18_9:
	movl	$.L.str.23, %edi
	jmp	.LBB18_7
.LBB18_20:
	movl	$.L.str.24, %edi
.LBB18_7:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB18_6:
	movl	$.L.str.21, %edi
	jmp	.LBB18_7
.Lfunc_end18:
	.size	pbuf_copy, .Lfunc_end18-pbuf_copy
                                        # -- End function
	.globl	pbuf_copy_partial       # -- Begin function pbuf_copy_partial
	.p2align	4, 0x90
	.type	pbuf_copy_partial,@function
pbuf_copy_partial:                      # @pbuf_copy_partial
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB19_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB19_6
# %bb.4:
	movl	%edx, %r12d
	testw	%r12w, %r12w
	je	.LBB19_5
# %bb.7:                                # %.preheader
	movq	%rdi, %rbx
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB19_8:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rbx), %r14d
	testw	%cx, %cx
	je	.LBB19_11
# %bb.9:                                #   in Loop: Header=BB19_8 Depth=1
	cmpw	%r14w, %cx
	jb	.LBB19_11
# %bb.10:                               #   in Loop: Header=BB19_8 Depth=1
	subl	%r14d, %ecx
	jmp	.LBB19_12
	.p2align	4, 0x90
.LBB19_11:                              #   in Loop: Header=BB19_8 Depth=1
	subl	%ecx, %r14d
	cmpw	%r12w, %r14w
	cmoval	%r12d, %r14d
	movzwl	%r15w, %edi
	addq	%rsi, %rdi
	movzwl	%cx, %esi
	addq	8(%rbx), %rsi
	movzwl	%r14w, %edx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addl	%r14d, %r13d
	addl	%r14d, %r15d
	subl	%r14d, %r12d
	xorl	%ecx, %ecx
.LBB19_12:                              #   in Loop: Header=BB19_8 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB19_14
# %bb.13:                               #   in Loop: Header=BB19_8 Depth=1
	testw	%r12w, %r12w
	jne	.LBB19_8
	jmp	.LBB19_14
.LBB19_5:
	xorl	%r13d, %r13d
.LBB19_14:
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
.LBB19_1:
	movl	$.L.str.26, %edi
	jmp	.LBB19_2
.LBB19_6:
	movl	$.L.str.27, %edi
.LBB19_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end19:
	.size	pbuf_copy_partial, .Lfunc_end19-pbuf_copy_partial
                                        # -- End function
	.globl	pbuf_get_contiguous     # -- Begin function pbuf_get_contiguous
	.p2align	4, 0x90
	.type	pbuf_get_contiguous,@function
pbuf_get_contiguous:                    # @pbuf_get_contiguous
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB20_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB20_4
# %bb.5:
	movq	%rdi, %rbx
	movzwl	%cx, %edi
	cmpq	%rdx, %rdi
	ja	.LBB20_4
	.p2align	4, 0x90
.LBB20_6:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rbx), %r15d
	cmpw	%r15w, %r8w
	jb	.LBB20_9
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	subl	%r15d, %r8d
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB20_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB20_21
.LBB20_9:
	movzwl	%r15w, %edx
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r8w, %eax
	addl	%eax, %edi
	cmpl	%edx, %edi
	jbe	.LBB20_10
# %bb.11:
	xorl	%r14d, %r14d
	testw	%cx, %cx
	je	.LBB20_20
# %bb.12:                               # %.preheader
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %r13d
	movl	%r13d, %r12d
	xorl	%r13d, %r13d
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	testw	%r8w, %r8w
	je	.LBB20_16
	.p2align	4, 0x90
.LBB20_14:
	cmpw	%r15w, %r8w
	jb	.LBB20_16
# %bb.15:
	subl	%r15d, %r8d
	testw	%r12w, %r12w
	jne	.LBB20_18
	jmp	.LBB20_19
	.p2align	4, 0x90
.LBB20_16:
	subl	%r8d, %r15d
	cmpw	%r12w, %r15w
	cmoval	%r12d, %r15d
	movzwl	%r13w, %edi
	addq	%rsi, %rdi
	movzwl	%r8w, %esi
	addq	8(%rbx), %rsi
	movzwl	%r15w, %edx
	callq	memcpy
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addl	%r15d, %r14d
	addl	%r15d, %r13d
	subl	%r15d, %r12d
	xorl	%r8d, %r8d
	testw	%r12w, %r12w
	je	.LBB20_19
.LBB20_18:
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB20_19
# %bb.22:
	movzwl	18(%rbx), %r15d
	testw	%r8w, %r8w
	jne	.LBB20_14
	jmp	.LBB20_16
.LBB20_10:
	addq	8(%rbx), %rax
	jmp	.LBB20_21
.LBB20_19:
	movl	-44(%rbp), %ecx         # 4-byte Reload
.LBB20_20:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpw	%cx, %r14w
	cmoveq	%rsi, %rax
.LBB20_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_4:
	movl	$.L.str.29, %edi
	jmp	.LBB20_2
.LBB20_1:
	movl	$.L.str.28, %edi
.LBB20_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end20:
	.size	pbuf_get_contiguous, .Lfunc_end20-pbuf_get_contiguous
                                        # -- End function
	.globl	pbuf_split_64k          # -- Begin function pbuf_split_64k
	.p2align	4, 0x90
	.type	pbuf_split_64k,@function
pbuf_split_64k:                         # @pbuf_split_64k
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, (%rsi)
	testq	%rdi, %rdi
	je	.LBB21_14
# %bb.1:
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	.LBB21_14
# %bb.2:
	movzwl	18(%r8), %ecx
	addw	18(%rdi), %cx
	jae	.LBB21_9
# %bb.3:
	movq	%rdi, %rdx
	jmp	.LBB21_4
	.p2align	4, 0x90
.LBB21_9:                               # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdx
	movq	(%r8), %r8
	testq	%r8, %r8
	je	.LBB21_10
# %bb.8:                                #   in Loop: Header=BB21_9 Depth=1
	addw	18(%r8), %cx
	jae	.LBB21_9
.LBB21_4:
	movq	$0, (%rdx)
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movzwl	16(%rax), %edx
	subw	16(%r8), %dx
	movw	%dx, 16(%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB21_5
# %bb.6:
	cmpw	18(%rcx), %dx
	jne	.LBB21_7
# %bb.11:
	testb	$32, 21(%rdi)
	je	.LBB21_13
# %bb.12:
	orb	$32, 21(%r8)
.LBB21_13:
	movq	%r8, (%rsi)
	jmp	.LBB21_14
.LBB21_10:
	movq	$0, (%rdx)
.LBB21_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB21_7:
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end21:
	.size	pbuf_split_64k, .Lfunc_end21-pbuf_split_64k
                                        # -- End function
	.globl	pbuf_skip               # -- Begin function pbuf_skip
	.p2align	4, 0x90
	.type	pbuf_skip,@function
pbuf_skip:                              # @pbuf_skip
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB22_4
# %bb.1:                                # %.preheader
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rax), %ecx
	cmpw	%cx, %si
	jb	.LBB22_5
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	subl	%ecx, %esi
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB22_2
.LBB22_4:
	xorl	%eax, %eax
.LBB22_5:
	testq	%rdx, %rdx
	je	.LBB22_7
# %bb.6:
	movw	%si, (%rdx)
.LBB22_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end22:
	.size	pbuf_skip, .Lfunc_end22-pbuf_skip
                                        # -- End function
	.globl	pbuf_take               # -- Begin function pbuf_take
	.p2align	4, 0x90
	.type	pbuf_take,@function
pbuf_take:                              # @pbuf_take
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB23_1
# %bb.3:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB23_4
# %bb.5:
	movq	%rdi, %r15
	cmpw	%dx, 16(%rdi)
	jb	.LBB23_8
# %bb.6:
	movl	%edx, %r12d
	testw	%dx, %dx
	movq	%r12, -48(%rbp)         # 8-byte Spill
	je	.LBB23_7
# %bb.9:                                # %.preheader
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB23_10:                              # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB23_11
# %bb.12:                               #   in Loop: Header=BB23_10 Depth=1
	movzwl	18(%r15), %ebx
	cmpq	%rbx, %r12
	cmovbeq	%r12, %rbx
	movq	8(%r15), %rdi
	leaq	(%r14,%r13), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r13
	movq	(%r15), %r15
	subq	%rbx, %r12
	jne	.LBB23_10
# %bb.13:
	cmpq	-48(%rbp), %r13         # 8-byte Folded Reload
	jne	.LBB23_14
.LBB23_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_7:
	xorl	%r13d, %r13d
	cmpq	-48(%rbp), %r13         # 8-byte Folded Reload
	je	.LBB23_15
.LBB23_14:
	movl	$.L.str.35, %edi
	jmp	.LBB23_2
.LBB23_11:
	movl	$.L.str.34, %edi
.LBB23_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB23_1:
	movl	$.L.str.31, %edi
	jmp	.LBB23_2
.LBB23_4:
	movl	$.L.str.32, %edi
	jmp	.LBB23_2
.LBB23_8:
	movl	$.L.str.33, %edi
	jmp	.LBB23_2
.Lfunc_end23:
	.size	pbuf_take, .Lfunc_end23-pbuf_take
                                        # -- End function
	.globl	pbuf_take_at            # -- Begin function pbuf_take_at
	.p2align	4, 0x90
	.type	pbuf_take_at,@function
pbuf_take_at:                           # @pbuf_take_at
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB24_4
# %bb.1:                                # %.preheader
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rbx), %esi
	cmpw	%si, %cx
	jb	.LBB24_5
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	subl	%esi, %ecx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB24_2
.LBB24_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %al
.LBB24_9:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %r8d
	movzwl	%cx, %edi
	movzwl	%dx, %r12d
	leal	(%rdi,%r12), %ecx
	movb	$-1, %al
	cmpl	%r8d, %ecx
	ja	.LBB24_9
# %bb.6:
	subl	%edi, %esi
	cmpl	%r12d, %esi
	cmovgl	%r12d, %esi
	addq	8(%rbx), %rdi
	movzwl	%si, %r15d
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	subw	%r15w, %r12w
	je	.LBB24_7
# %bb.8:
	addq	%r15, %r14
	movq	(%rbx), %rdi
	movzwl	%r12w, %edx
	movq	%r14, %rsi
	callq	pbuf_take
                                        # kill: def $al killed $al def $eax
	jmp	.LBB24_9
.LBB24_7:
	xorl	%eax, %eax
	jmp	.LBB24_9
.Lfunc_end24:
	.size	pbuf_take_at, .Lfunc_end24-pbuf_take_at
                                        # -- End function
	.globl	pbuf_coalesce           # -- Begin function pbuf_coalesce
	.p2align	4, 0x90
	.type	pbuf_coalesce,@function
pbuf_coalesce:                          # @pbuf_coalesce
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	cmpq	$0, (%rdi)
	je	.LBB25_6
# %bb.1:
	movl	%esi, %r14d
	movzwl	16(%rbx), %r12d
	leal	(%r12,%r14), %eax
	movl	%r12d, %ecx
	addw	%r14w, %cx
	jb	.LBB25_4
# %bb.2:
	movzwl	%ax, %edi
	addq	$24, %rdi
	movzwl	%r12w, %eax
	cmpq	%rax, %rdi
	jb	.LBB25_4
# %bb.3:
	callq	mem_malloc
	testq	%rax, %rax
	je	.LBB25_4
# %bb.5:
	movq	%rax, %r15
	movzwl	%r14w, %eax
	movl	%eax, %eax
	addq	%r15, %rax
	addq	$24, %rax
	movq	$0, (%r15)
	movq	%rax, 8(%r15)
	movw	%r12w, 16(%r15)
	movw	%r12w, 18(%r15)
	movl	$65664, 20(%r15)        # imm = 0x10080
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	pbuf_copy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	pbuf_free
	movq	%r15, %rbx
	jmp	.LBB25_6
.LBB25_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	pbuf_coalesce, .Lfunc_end25-pbuf_coalesce
                                        # -- End function
	.globl	pbuf_clone              # -- Begin function pbuf_clone
	.p2align	4, 0x90
	.type	pbuf_clone,@function
pbuf_clone:                             # @pbuf_clone
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movl	%esi, %edx
	movzwl	16(%r14), %esi
	callq	pbuf_alloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB26_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pbuf_copy
.LBB26_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	pbuf_clone, .Lfunc_end26-pbuf_clone
                                        # -- End function
	.globl	pbuf_get_at             # -- Begin function pbuf_get_at
	.p2align	4, 0x90
	.type	pbuf_get_at,@function
pbuf_get_at:                            # @pbuf_get_at
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB27_4
	.p2align	4, 0x90
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rdi), %eax
	cmpw	%ax, %si
	jb	.LBB27_5
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	subl	%eax, %esi
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB27_2
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB27_6
.LBB27_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	movzwl	%si, %ecx
	movb	(%rax,%rcx), %al
.LBB27_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end27:
	.size	pbuf_get_at, .Lfunc_end27-pbuf_get_at
                                        # -- End function
	.globl	pbuf_try_get_at         # -- Begin function pbuf_try_get_at
	.p2align	4, 0x90
	.type	pbuf_try_get_at,@function
pbuf_try_get_at:                        # @pbuf_try_get_at
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB28_4
	.p2align	4, 0x90
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rdi), %eax
	cmpw	%ax, %si
	jb	.LBB28_5
# %bb.3:                                #   in Loop: Header=BB28_2 Depth=1
	subl	%eax, %esi
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB28_2
.LBB28_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB28_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	movzwl	%si, %ecx
	movzbl	(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end28:
	.size	pbuf_try_get_at, .Lfunc_end28-pbuf_try_get_at
                                        # -- End function
	.globl	pbuf_put_at             # -- Begin function pbuf_put_at
	.p2align	4, 0x90
	.type	pbuf_put_at,@function
pbuf_put_at:                            # @pbuf_put_at
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB29_4
	.p2align	4, 0x90
.LBB29_2:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rdi), %eax
	cmpw	%ax, %si
	jb	.LBB29_5
# %bb.3:                                #   in Loop: Header=BB29_2 Depth=1
	subl	%eax, %esi
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB29_2
.LBB29_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB29_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	movzwl	%si, %ecx
	movb	%dl, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end29:
	.size	pbuf_put_at, .Lfunc_end29-pbuf_put_at
                                        # -- End function
	.globl	pbuf_memcmp             # -- Begin function pbuf_memcmp
	.p2align	4, 0x90
	.type	pbuf_memcmp,@function
pbuf_memcmp:                            # @pbuf_memcmp
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
                                        # kill: def $esi killed $esi def $rsi
	movzwl	16(%rdi), %r8d
	leal	(%rcx,%rsi), %r9d
	movw	$-1, %ax
	cmpl	%r8d, %r9d
	ja	.LBB30_16
	.p2align	4, 0x90
.LBB30_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	18(%rdi), %eax
	cmpw	%ax, %si
	jb	.LBB30_4
# %bb.2:                                #   in Loop: Header=BB30_1 Depth=1
	subl	%eax, %esi
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB30_1
# %bb.3:
	movb	$1, %r8b
	xorl	%edi, %edi
	jmp	.LBB30_5
.LBB30_4:
	xorl	%r8d, %r8d
.LBB30_5:
	xorl	%eax, %eax
	testw	%cx, %cx
	je	.LBB30_16
	.p2align	4, 0x90
.LBB30_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
	testb	%r8b, %r8b
	jne	.LBB30_10
# %bb.7:                                #   in Loop: Header=BB30_6 Depth=1
	leal	(%rax,%rsi), %r9d
	movq	%rdi, %r10
	.p2align	4, 0x90
.LBB30_8:                               #   Parent Loop BB30_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	18(%r10), %r11d
	cmpw	%r11w, %r9w
	jb	.LBB30_11
# %bb.9:                                #   in Loop: Header=BB30_8 Depth=2
	subl	%r11d, %r9d
	movq	(%r10), %r10
	testq	%r10, %r10
	jne	.LBB30_8
.LBB30_10:                              #   in Loop: Header=BB30_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	jmp	.LBB30_12
	.p2align	4, 0x90
.LBB30_11:                              #   in Loop: Header=BB30_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r10), %r10
	movzwl	%r9w, %r9d
	movb	(%r10,%r9), %r9b
.LBB30_12:                              #   in Loop: Header=BB30_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%ax, %r10d
	cmpb	(%rdx,%r10), %r9b
	jne	.LBB30_15
# %bb.13:                               #   in Loop: Header=BB30_6 Depth=1
	addl	$1, %eax
	movzwl	%ax, %eax
	cmpw	%cx, %ax
	jb	.LBB30_6
# %bb.14:
	xorl	%eax, %eax
.LBB30_16:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $rax
	retq
.LBB30_15:
	addl	$1, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbl	%eax, %ecx
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $rax
	retq
.Lfunc_end30:
	.size	pbuf_memcmp, .Lfunc_end30-pbuf_memcmp
                                        # -- End function
	.globl	pbuf_memfind            # -- Begin function pbuf_memfind
	.p2align	4, 0x90
	.type	pbuf_memfind,@function
pbuf_memfind:                           # @pbuf_memfind
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %eax
                                        # kill: def $edx killed $edx def $rdx
	movzwl	16(%rdi), %r8d
	leal	(%rax,%rdx), %ecx
	cmpl	%r8d, %ecx
	ja	.LBB31_20
# %bb.1:
	movl	%r8d, %r9d
	subl	%edx, %r9d
	cmpw	%ax, %r9w
	jb	.LBB31_20
# %bb.2:
	movzwl	%dx, %r10d
	jmp	.LBB31_3
	.p2align	4, 0x90
.LBB31_19:                              #   in Loop: Header=BB31_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
	cmpw	%r9w, %ax
	ja	.LBB31_20
.LBB31_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_5 Depth 2
                                        #     Child Loop BB31_12 Depth 2
                                        #       Child Loop BB31_14 Depth 3
	movzwl	%ax, %ecx
	addl	%edx, %ecx
	cmpl	%r8d, %ecx
	ja	.LBB31_19
# %bb.4:                                # %.preheader3
                                        #   in Loop: Header=BB31_3 Depth=1
	movl	%eax, %r11d
	movq	%rdi, %r15
	.p2align	4, 0x90
.LBB31_5:                               #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	18(%r15), %ecx
	cmpw	%cx, %r11w
	jb	.LBB31_6
# %bb.7:                                #   in Loop: Header=BB31_5 Depth=2
	subl	%ecx, %r11d
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	.LBB31_5
# %bb.8:                                #   in Loop: Header=BB31_3 Depth=1
	movb	$1, %r14b
	xorl	%r15d, %r15d
	jmp	.LBB31_9
	.p2align	4, 0x90
.LBB31_6:                               #   in Loop: Header=BB31_3 Depth=1
	xorl	%r14d, %r14d
.LBB31_9:                               #   in Loop: Header=BB31_3 Depth=1
	testw	%dx, %dx
	je	.LBB31_22
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB31_3 Depth=1
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB31_12:                              #   Parent Loop BB31_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_14 Depth 3
	testb	%r14b, %r14b
	jne	.LBB31_16
# %bb.13:                               #   in Loop: Header=BB31_12 Depth=2
	leal	(%r11,%r12), %ebp
	movq	%r15, %rcx
	.p2align	4, 0x90
.LBB31_14:                              #   Parent Loop BB31_3 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	18(%rcx), %ebx
	cmpw	%bx, %bp
	jb	.LBB31_17
# %bb.15:                               #   in Loop: Header=BB31_14 Depth=3
	subl	%ebx, %ebp
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB31_14
.LBB31_16:                              #   in Loop: Header=BB31_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB31_18
	.p2align	4, 0x90
.LBB31_17:                              #   in Loop: Header=BB31_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx), %rcx
	movzwl	%bp, %ebx
	movb	(%rcx,%rbx), %cl
.LBB31_18:                              #   in Loop: Header=BB31_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	(%rsi,%r12), %cl
	jne	.LBB31_19
# %bb.11:                               #   in Loop: Header=BB31_12 Depth=2
	addq	$1, %r12
	cmpq	%r10, %r12
	jb	.LBB31_12
.LBB31_22:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_21
.LBB31_20:
	movw	$-1, %ax
.LBB31_21:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pbuf_memfind, .Lfunc_end31-pbuf_memfind
                                        # -- End function
	.globl	pbuf_strstr             # -- Begin function pbuf_strstr
	.p2align	4, 0x90
	.type	pbuf_strstr,@function
pbuf_strstr:                            # @pbuf_strstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movw	$-1, %r14w
	testq	%rsi, %rsi
	je	.LBB32_25
# %bb.1:
	movq	%rsi, %r13
	cmpb	$0, (%rsi)
	je	.LBB32_25
# %bb.2:
	movq	%rdi, %r15
	cmpw	$-1, 16(%rdi)
	je	.LBB32_25
# %bb.3:
	movq	%r13, %rdi
	callq	strlen
	cmpq	$65534, %rax            # imm = 0xFFFE
	ja	.LBB32_25
# %bb.4:
	movzwl	16(%r15), %r10d
	movzwl	%ax, %r9d
	cmpl	%r10d, %r9d
	jbe	.LBB32_5
.LBB32_23:
	movw	$-1, %r14w
	jmp	.LBB32_24
.LBB32_5:
	movl	%r10d, %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movzwl	%ax, %r11d
	xorl	%r14d, %r14d
	jmp	.LBB32_6
.LBB32_22:                              #   in Loop: Header=BB32_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r14d
	cmpw	-44(%rbp), %r14w        # 2-byte Folded Reload
	ja	.LBB32_23
.LBB32_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_8 Depth 2
                                        #     Child Loop BB32_15 Depth 2
                                        #       Child Loop BB32_17 Depth 3
	movzwl	%r14w, %ecx
	addl	%r9d, %ecx
	cmpl	%r10d, %ecx
	ja	.LBB32_22
# %bb.7:                                # %.preheader3
                                        #   in Loop: Header=BB32_6 Depth=1
	movl	%r14d, %esi
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB32_8:                               #   Parent Loop BB32_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	18(%rbx), %ecx
	cmpw	%cx, %si
	jb	.LBB32_9
# %bb.10:                               #   in Loop: Header=BB32_8 Depth=2
	subl	%ecx, %esi
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB32_8
# %bb.11:                               #   in Loop: Header=BB32_6 Depth=1
	movb	$1, %r12b
	xorl	%ebx, %ebx
	jmp	.LBB32_12
.LBB32_9:                               #   in Loop: Header=BB32_6 Depth=1
	xorl	%r12d, %r12d
.LBB32_12:                              #   in Loop: Header=BB32_6 Depth=1
	testw	%ax, %ax
	je	.LBB32_26
# %bb.13:                               # %.preheader
                                        #   in Loop: Header=BB32_6 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB32_15:                              #   Parent Loop BB32_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_17 Depth 3
	testb	%r12b, %r12b
	jne	.LBB32_19
# %bb.16:                               #   in Loop: Header=BB32_15 Depth=2
	leal	(%rsi,%rdi), %ecx
	movq	%rbx, %rdx
	.p2align	4, 0x90
.LBB32_17:                              #   Parent Loop BB32_6 Depth=1
                                        #     Parent Loop BB32_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	18(%rdx), %r8d
	cmpw	%r8w, %cx
	jb	.LBB32_20
# %bb.18:                               #   in Loop: Header=BB32_17 Depth=3
	subl	%r8d, %ecx
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB32_17
.LBB32_19:                              #   in Loop: Header=BB32_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB32_21
	.p2align	4, 0x90
.LBB32_20:                              #   in Loop: Header=BB32_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdx), %rdx
	movzwl	%cx, %ecx
	movb	(%rdx,%rcx), %cl
.LBB32_21:                              #   in Loop: Header=BB32_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	(%r13,%rdi), %cl
	jne	.LBB32_22
# %bb.14:                               #   in Loop: Header=BB32_15 Depth=2
	addq	$1, %rdi
	cmpq	%r11, %rdi
	jb	.LBB32_15
.LBB32_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	pbuf_strstr, .Lfunc_end32-pbuf_strstr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pbuf_free_ooseq_callback
	.type	pbuf_free_ooseq_callback,@function
pbuf_free_ooseq_callback:               # @pbuf_free_ooseq_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	ukplat_lcpu_save_irqf
	movb	$0, pbuf_free_ooseq_pending(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	tcp_active_pcbs(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB33_4
	.p2align	4, 0x90
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, 200(%rdi)
	jne	.LBB33_3
# %bb.5:                                #   in Loop: Header=BB33_2 Depth=1
	movq	56(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB33_2
	jmp	.LBB33_4
.LBB33_3:
	callq	tcp_free_ooseq
.LBB33_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	pbuf_free_ooseq_callback, .Lfunc_end33-pbuf_free_ooseq_callback
                                        # -- End function
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"PBUF_POOL_BUFSIZE must be bigger than MEM_ALIGNMENT"
	.size	.L.str.3, 52

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pbuf_alloc: erroneous type"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid pbuf_type"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pbuf_realloc: p != NULL"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pbuf_realloc: q != NULL"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mem_trim returned q == NULL"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"p != NULL"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"increment_magnitude <= p->len"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pbuf_free: p->ref > 0"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pc->custom_free_function != NULL"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"invalid pbuf type"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pbuf ref overflow"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(h != NULL) && (t != NULL) (programmer violates API)"
	.size	.L.str.16, 53

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"p->tot_len == p->len (of last pbuf in chain)"
	.size	.L.str.17, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"p->tot_len == p->len + q->tot_len"
	.size	.L.str.19, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"p->tot_len == p->len"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pbuf_copy: target not big enough to hold source"
	.size	.L.str.21, 48

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"offset_to <= p_to->len"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"offset_from <= p_from->len"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"p_to != NULL"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"pbuf_copy() does not allow packet queues!"
	.size	.L.str.25, 42

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"pbuf_copy_partial: invalid buf"
	.size	.L.str.26, 31

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"pbuf_copy_partial: invalid dataptr"
	.size	.L.str.27, 35

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pbuf_get_contiguous: invalid buf"
	.size	.L.str.28, 33

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"pbuf_get_contiguous: invalid dataptr"
	.size	.L.str.29, 37

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tot_len/len mismatch in last pbuf"
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"pbuf_take: invalid buf"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"pbuf_take: invalid dataptr"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"pbuf_take: buf not large enough"
	.size	.L.str.33, 32

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"pbuf_take: invalid pbuf"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"did not copy all data"
	.size	.L.str.35, 22

	.type	pbuf_free_ooseq_pending,@object # @pbuf_free_ooseq_pending
	.comm	pbuf_free_ooseq_pending,1,1
	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.38,@object # @uk_pr_crit.__str.38
uk_pr_crit.__str.38:
	.asciz	"pbuf.c"
	.size	uk_pr_crit.__str.38, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
