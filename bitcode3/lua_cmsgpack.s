	.text
	.file	"lua_cmsgpack.c"
	.globl	memrevifle              # -- Begin function memrevifle
	.p2align	4, 0x90
	.type	memrevifle,@function
memrevifle:                             # @memrevifle
# %bb.0:
	movq	%rsi, %r8
	shrq	%r8
	je	.LBB0_8
# %bb.1:
	addq	%rdi, %rsi
	leaq	-1(%r8), %r9
	movq	%r8, %r10
	andq	$3, %r10
	je	.LBB0_5
# %bb.2:                                # %.preheader1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %ecx
	movzbl	-1(%rsi), %eax
	movb	%al, (%rdi,%rdx)
	movb	%cl, -1(%rsi)
	addq	$-1, %rsi
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB0_3
# %bb.4:                                # %.loopexit2
	subq	%rdx, %r8
	addq	%rdx, %rdi
.LBB0_5:
	cmpq	$3, %r9
	jb	.LBB0_8
# %bb.6:                                # %.preheader
	addq	$-1, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %eax
	movzbl	(%rsi), %edx
	movb	%dl, (%rdi,%rcx)
	movb	%al, (%rsi)
	movzbl	1(%rdi,%rcx), %eax
	movzbl	-1(%rsi), %edx
	movb	%dl, 1(%rdi,%rcx)
	movb	%al, -1(%rsi)
	movzbl	2(%rdi,%rcx), %eax
	movzbl	-2(%rsi), %edx
	movb	%dl, 2(%rdi,%rcx)
	movb	%al, -2(%rsi)
	movzbl	3(%rdi,%rcx), %eax
	movzbl	-3(%rsi), %edx
	movb	%dl, 3(%rdi,%rcx)
	movb	%al, -3(%rsi)
	addq	$-4, %rsi
	addq	$4, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	memrevifle, .Lfunc_end0-memrevifle
                                        # -- End function
	.globl	mp_realloc              # -- Begin function mp_realloc
	.p2align	4, 0x90
	.type	mp_realloc,@function
mp_realloc:                             # @mp_realloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	leaq	-32(%rbp), %rsi
	callq	lua_getallocf
	movq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*%rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mp_realloc, .Lfunc_end1-mp_realloc
                                        # -- End function
	.globl	mp_buf_new              # -- Begin function mp_buf_new
	.p2align	4, 0x90
	.type	mp_buf_new,@function
mp_buf_new:                             # @mp_buf_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rsi
	callq	lua_getallocf
	movq	-8(%rbp), %rdi
	movl	$24, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mp_buf_new, .Lfunc_end2-mp_buf_new
                                        # -- End function
	.globl	mp_buf_append           # -- Begin function mp_buf_append
	.p2align	4, 0x90
	.type	mp_buf_append,@function
mp_buf_append:                          # @mp_buf_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	16(%rsi), %r12
	cmpq	%rcx, %r12
	jae	.LBB3_1
# %bb.2:
	movq	(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	8(%rbx), %rax
	leaq	(%rax,%r14), %r13
	addq	%r13, %r13
	addq	%rax, %r12
	leaq	-56(%rbp), %rsi
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	*%rax
	movq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	subq	%rdi, %r13
	movq	%r13, 16(%rbx)
	jmp	.LBB3_3
.LBB3_1:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
.LBB3_3:
	addq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 8(%rbx)
	subq	%r14, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mp_buf_append, .Lfunc_end3-mp_buf_append
                                        # -- End function
	.globl	mp_buf_free             # -- Begin function mp_buf_free
	.p2align	4, 0x90
	.type	mp_buf_free,@function
mp_buf_free:                            # @mp_buf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%rsi), %r15
	movq	16(%rsi), %rbx
	addq	8(%rsi), %rbx
	leaq	-40(%rbp), %rsi
	callq	lua_getallocf
	movq	-40(%rbp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	*%rax
	leaq	-40(%rbp), %rsi
	movq	%r14, %rdi
	callq	lua_getallocf
	movq	-40(%rbp), %rdi
	movl	$24, %edx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	*%rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mp_buf_free, .Lfunc_end4-mp_buf_free
                                        # -- End function
	.globl	mp_cur_init             # -- Begin function mp_cur_init
	.p2align	4, 0x90
	.type	mp_cur_init,@function
mp_cur_init:                            # @mp_cur_init
# %bb.0:
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	$0, 16(%rdi)
	retq
.Lfunc_end5:
	.size	mp_cur_init, .Lfunc_end5-mp_cur_init
                                        # -- End function
	.globl	mp_encode_bytes         # -- Begin function mp_encode_bytes
	.p2align	4, 0x90
	.type	mp_encode_bytes,@function
mp_encode_bytes:                        # @mp_encode_bytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	cmpq	$31, %rcx
	ja	.LBB6_2
# %bb.1:
	movl	%ecx, %eax
	orb	$-96, %al
	movb	%al, -45(%rbp)
	movl	$1, %r12d
	jmp	.LBB6_7
.LBB6_2:
	cmpq	$255, %rcx
	ja	.LBB6_4
# %bb.3:
	movb	$-39, -45(%rbp)
	movb	%cl, -44(%rbp)
	movl	$2, %r12d
	jmp	.LBB6_7
.LBB6_4:
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB6_6
# %bb.5:
	movb	$-38, -45(%rbp)
	movb	%ch, -44(%rbp)
	movb	%cl, -43(%rbp)
	movl	$3, %r12d
	jmp	.LBB6_7
.LBB6_6:
	movb	$-37, -45(%rbp)
	movq	%rcx, %rax
	shrq	$24, %rax
	movb	%al, -44(%rbp)
	movq	%rcx, %rax
	shrq	$16, %rax
	movb	%al, -43(%rbp)
	movb	%ch, -42(%rbp)
	movb	%cl, -41(%rbp)
	movl	$5, %r12d
.LBB6_7:
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	16(%r13), %rbx
	cmpq	%r12, %rbx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jae	.LBB6_8
# %bb.9:
	movq	(%r13), %r14
	movq	8(%r13), %rax
	leaq	(%rax,%r12), %r15
	addq	%r15, %r15
	addq	%rax, %rbx
	leaq	-56(%rbp), %rsi
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	*%rax
	movq	%rax, (%r13)
	movq	8(%r13), %rdi
	subq	%rdi, %r15
	movq	%r15, 16(%r13)
	jmp	.LBB6_10
.LBB6_8:
	movq	(%r13), %rax
	movq	8(%r13), %rdi
.LBB6_10:
	addq	%rax, %rdi
	leaq	-45(%rbp), %rsi
	movq	%r12, %rdx
	callq	memcpy
	movq	8(%r13), %r14
	movq	16(%r13), %rax
	leaq	(%r14,%r12), %rbx
	movq	%rbx, 8(%r13)
	movq	%rax, %rcx
	subq	%r12, %rcx
	movq	%rcx, 16(%r13)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rcx
	jae	.LBB6_11
# %bb.12:
	addq	%rdx, %rbx
	addq	%rbx, %rbx
	movq	(%r13), %r15
	addq	%rax, %r14
	leaq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	*%rax
	movq	%rax, (%r13)
	movq	8(%r13), %rcx
	subq	%rcx, %rbx
	movq	%rbx, 16(%r13)
	movq	%rcx, %rbx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB6_13
.LBB6_11:
	movq	(%r13), %rax
.LBB6_13:
	addq	%rax, %rbx
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, %rbx
	callq	memcpy
	addq	%rbx, 8(%r13)
	subq	%rbx, 16(%r13)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mp_encode_bytes, .Lfunc_end6-mp_encode_bytes
                                        # -- End function
	.globl	mp_encode_double        # -- Begin function mp_encode_double
	.p2align	4, 0x90
	.type	mp_encode_double,@function
mp_encode_double:                       # @mp_encode_double
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	movsd	%xmm0, -80(%rbp)
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, -68(%rbp)
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_5
	jp	.LBB7_5
# %bb.1:
	movb	$-54, -49(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movb	-45(%rbp), %al
	movb	-48(%rbp), %cl
	movb	-47(%rbp), %dl
	movb	%al, -48(%rbp)
	movb	%cl, -45(%rbp)
	movb	-46(%rbp), %al
	movb	%al, -47(%rbp)
	movb	%dl, -46(%rbp)
	movq	16(%r12), %rbx
	cmpq	$5, %rbx
	jae	.LBB7_2
# %bb.3:
	leaq	8(%r12), %rcx
	movq	(%r12), %r15
	movq	8(%r12), %rax
	leaq	(%rax,%rax), %r13
	addq	$10, %r13
	addq	%rax, %rbx
	leaq	-64(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %r14
	callq	lua_getallocf
	movq	-64(%rbp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	*%rax
	movq	%rax, (%r12)
	movq	8(%r12), %rdi
	subq	%rdi, %r13
	movq	%r13, 16(%r12)
	jmp	.LBB7_4
.LBB7_5:
	movb	$-53, -49(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movb	-41(%rbp), %al
	movb	-48(%rbp), %cl
	movb	-47(%rbp), %dl
	movb	%al, -48(%rbp)
	movb	%cl, -41(%rbp)
	movb	-42(%rbp), %al
	movb	%al, -47(%rbp)
	movb	%dl, -42(%rbp)
	movb	-46(%rbp), %al
	movb	-43(%rbp), %cl
	movb	%cl, -46(%rbp)
	movb	%al, -43(%rbp)
	movb	-45(%rbp), %al
	movb	-44(%rbp), %cl
	movb	%cl, -45(%rbp)
	movb	%al, -44(%rbp)
	movq	16(%r12), %r15
	cmpq	$9, %r15
	jae	.LBB7_6
# %bb.7:
	leaq	8(%r12), %rcx
	movq	(%r12), %r13
	movq	8(%r12), %rax
	leaq	(%rax,%rax), %rbx
	addq	$18, %rbx
	addq	%rax, %r15
	leaq	-64(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %r14
	callq	lua_getallocf
	movq	-64(%rbp), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*%rax
	movq	%rax, (%r12)
	movq	8(%r12), %rdi
	subq	%rdi, %rbx
	movq	%rbx, 16(%r12)
	jmp	.LBB7_8
.LBB7_2:
	movq	(%r12), %rax
	movq	8(%r12), %rdi
	leaq	8(%r12), %r14
.LBB7_4:
	addq	%rax, %rdi
	addq	$16, %r12
	leaq	-49(%rbp), %rsi
	movl	$5, %ebx
	movl	$5, %edx
	callq	memcpy
	movq	$-5, %rax
	jmp	.LBB7_9
.LBB7_6:
	movq	(%r12), %rax
	movq	8(%r12), %rdi
	leaq	8(%r12), %r14
.LBB7_8:
	addq	%rax, %rdi
	addq	$16, %r12
	leaq	-49(%rbp), %rsi
	movl	$9, %ebx
	movl	$9, %edx
	callq	memcpy
	movq	$-9, %rax
.LBB7_9:
	addq	%rbx, (%r14)
	addq	%rax, (%r12)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mp_encode_double, .Lfunc_end7-mp_encode_double
                                        # -- End function
	.globl	mp_encode_int           # -- Begin function mp_encode_int
	.p2align	4, 0x90
	.type	mp_encode_int,@function
mp_encode_int:                          # @mp_encode_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	testq	%rdx, %rdx
	js	.LBB8_13
# %bb.1:
	cmpq	$127, %rdx
	jg	.LBB8_3
# %bb.2:
	andb	$127, %dl
	jmp	.LBB8_14
.LBB8_13:
	cmpq	$-32, %rdx
	jl	.LBB8_15
.LBB8_14:
	movb	%dl, -49(%rbp)
	movl	$1, %r15d
	jmp	.LBB8_23
.LBB8_3:
	cmpq	$255, %rdx
	jg	.LBB8_6
# %bb.4:
	movb	$-52, -49(%rbp)
	jmp	.LBB8_5
.LBB8_15:
	cmpq	$-128, %rdx
	jl	.LBB8_17
# %bb.16:
	movb	$-48, -49(%rbp)
.LBB8_5:
	movb	%dl, -48(%rbp)
	movl	$2, %r15d
	jmp	.LBB8_23
.LBB8_6:
	cmpq	$65535, %rdx            # imm = 0xFFFF
	jg	.LBB8_9
# %bb.7:
	movb	$-51, -49(%rbp)
	jmp	.LBB8_8
.LBB8_17:
	cmpq	$-32768, %rdx           # imm = 0x8000
	jl	.LBB8_19
# %bb.18:
	movb	$-47, -49(%rbp)
.LBB8_8:
	movb	%dh, -48(%rbp)
	movb	%dl, -47(%rbp)
	movl	$3, %r15d
	jmp	.LBB8_23
.LBB8_9:
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	cmpq	%rax, %rdx
	jg	.LBB8_12
# %bb.10:
	movb	$-50, -49(%rbp)
	jmp	.LBB8_11
.LBB8_19:
	cmpq	$-2147483648, %rdx      # imm = 0x80000000
	jl	.LBB8_21
# %bb.20:
	movb	$-46, -49(%rbp)
.LBB8_11:
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, -48(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, -47(%rbp)
	movb	%dh, -46(%rbp)
	movb	%dl, -45(%rbp)
	movl	$5, %r15d
	jmp	.LBB8_23
.LBB8_12:
	movb	$-49, -49(%rbp)
	jmp	.LBB8_22
.LBB8_21:
	movb	$-45, -49(%rbp)
.LBB8_22:
	movq	%rdx, %rax
	shrq	$56, %rax
	movb	%al, -48(%rbp)
	movq	%rdx, %rax
	shrq	$48, %rax
	movb	%al, -47(%rbp)
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, -46(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, -45(%rbp)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, -44(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, -43(%rbp)
	movb	%dh, -42(%rbp)
	movb	%dl, -41(%rbp)
	movl	$9, %r15d
.LBB8_23:
	movq	16(%r14), %rbx
	cmpq	%r15, %rbx
	jae	.LBB8_24
# %bb.25:
	movq	(%r14), %r12
	movq	8(%r14), %rax
	leaq	(%rax,%r15), %r13
	addq	%r13, %r13
	addq	%rax, %rbx
	leaq	-64(%rbp), %rsi
	callq	lua_getallocf
	movq	-64(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	*%rax
	movq	%rax, (%r14)
	movq	8(%r14), %rdi
	subq	%rdi, %r13
	movq	%r13, 16(%r14)
	jmp	.LBB8_26
.LBB8_24:
	movq	(%r14), %rax
	movq	8(%r14), %rdi
.LBB8_26:
	addq	%rax, %rdi
	leaq	-49(%rbp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, 8(%r14)
	subq	%r15, 16(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mp_encode_int, .Lfunc_end8-mp_encode_int
                                        # -- End function
	.globl	mp_encode_array         # -- Begin function mp_encode_array
	.p2align	4, 0x90
	.type	mp_encode_array,@function
mp_encode_array:                        # @mp_encode_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	cmpq	$15, %rdx
	jg	.LBB9_2
# %bb.1:
	andb	$15, %dl
	orb	$-112, %dl
	movb	%dl, -45(%rbp)
	movl	$1, %r15d
	jmp	.LBB9_5
.LBB9_2:
	cmpq	$65535, %rdx            # imm = 0xFFFF
	jg	.LBB9_4
# %bb.3:
	movb	$-36, -45(%rbp)
	movb	%dh, -44(%rbp)
	movb	%dl, -43(%rbp)
	movl	$3, %r15d
	jmp	.LBB9_5
.LBB9_4:
	movb	$-35, -45(%rbp)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, -44(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, -43(%rbp)
	movb	%dh, -42(%rbp)
	movb	%dl, -41(%rbp)
	movl	$5, %r15d
.LBB9_5:
	movq	16(%r14), %rbx
	cmpq	%r15, %rbx
	jae	.LBB9_6
# %bb.7:
	movq	(%r14), %r12
	movq	8(%r14), %rax
	leaq	(%rax,%r15), %r13
	addq	%r13, %r13
	addq	%rax, %rbx
	leaq	-56(%rbp), %rsi
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	*%rax
	movq	%rax, (%r14)
	movq	8(%r14), %rdi
	subq	%rdi, %r13
	movq	%r13, 16(%r14)
	jmp	.LBB9_8
.LBB9_6:
	movq	(%r14), %rax
	movq	8(%r14), %rdi
.LBB9_8:
	addq	%rax, %rdi
	leaq	-45(%rbp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, 8(%r14)
	subq	%r15, 16(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	mp_encode_array, .Lfunc_end9-mp_encode_array
                                        # -- End function
	.globl	mp_encode_map           # -- Begin function mp_encode_map
	.p2align	4, 0x90
	.type	mp_encode_map,@function
mp_encode_map:                          # @mp_encode_map
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	cmpq	$15, %rdx
	jg	.LBB10_2
# %bb.1:
	andb	$15, %dl
	orb	$-128, %dl
	movb	%dl, -45(%rbp)
	movl	$1, %r15d
	jmp	.LBB10_5
.LBB10_2:
	cmpq	$65535, %rdx            # imm = 0xFFFF
	jg	.LBB10_4
# %bb.3:
	movb	$-34, -45(%rbp)
	movb	%dh, -44(%rbp)
	movb	%dl, -43(%rbp)
	movl	$3, %r15d
	jmp	.LBB10_5
.LBB10_4:
	movb	$-33, -45(%rbp)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, -44(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, -43(%rbp)
	movb	%dh, -42(%rbp)
	movb	%dl, -41(%rbp)
	movl	$5, %r15d
.LBB10_5:
	movq	16(%r14), %rbx
	cmpq	%r15, %rbx
	jae	.LBB10_6
# %bb.7:
	movq	(%r14), %r12
	movq	8(%r14), %rax
	leaq	(%rax,%r15), %r13
	addq	%r13, %r13
	addq	%rax, %rbx
	leaq	-56(%rbp), %rsi
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	*%rax
	movq	%rax, (%r14)
	movq	8(%r14), %rdi
	subq	%rdi, %r13
	movq	%r13, 16(%r14)
	jmp	.LBB10_8
.LBB10_6:
	movq	(%r14), %rax
	movq	8(%r14), %rdi
.LBB10_8:
	addq	%rax, %rdi
	leaq	-45(%rbp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, 8(%r14)
	subq	%r15, 16(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mp_encode_map, .Lfunc_end10-mp_encode_map
                                        # -- End function
	.globl	mp_encode_lua_string    # -- Begin function mp_encode_lua_string
	.p2align	4, 0x90
	.type	mp_encode_lua_string,@function
mp_encode_lua_string:                   # @mp_encode_lua_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-24(%rbp), %rdx
	movl	$-1, %esi
	callq	lua_tolstring
	movq	-24(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	mp_encode_bytes
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mp_encode_lua_string, .Lfunc_end11-mp_encode_lua_string
                                        # -- End function
	.globl	mp_encode_lua_bool      # -- Begin function mp_encode_lua_bool
	.p2align	4, 0x90
	.type	mp_encode_lua_bool,@function
mp_encode_lua_bool:                     # @mp_encode_lua_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$-1, %esi
	callq	lua_toboolean
	cmpl	$1, %eax
	movb	$-61, %al
	sbbb	$0, %al
	movb	%al, -41(%rbp)
	cmpq	$0, 16(%rbx)
	je	.LBB12_2
# %bb.1:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	jmp	.LBB12_3
.LBB12_2:
	movq	(%rbx), %r15
	movq	8(%rbx), %r12
	leaq	(%r12,%r12), %r13
	addq	$2, %r13
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	*%rax
	movq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	subq	%rdi, %r13
	movq	%r13, 16(%rbx)
.LBB12_3:
	addq	%rax, %rdi
	leaq	-41(%rbp), %rsi
	movl	$1, %edx
	callq	memcpy
	addq	$1, 8(%rbx)
	addq	$-1, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	mp_encode_lua_bool, .Lfunc_end12-mp_encode_lua_bool
                                        # -- End function
	.globl	mp_encode_lua_integer   # -- Begin function mp_encode_lua_integer
	.p2align	4, 0x90
	.type	mp_encode_lua_integer,@function
mp_encode_lua_integer:                  # @mp_encode_lua_integer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	mp_encode_int           # TAILCALL
.Lfunc_end13:
	.size	mp_encode_lua_integer, .Lfunc_end13-mp_encode_lua_integer
                                        # -- End function
	.globl	mp_encode_lua_number    # -- Begin function mp_encode_lua_number
	.p2align	4, 0x90
	.type	mp_encode_lua_number,@function
mp_encode_lua_number:                   # @mp_encode_lua_number
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-1, %esi
	callq	lua_tonumber
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpl	$1, %eax
	je	.LBB14_3
# %bb.1:
	cvttsd2si	%xmm0, %rax
	cvtsi2sd	%rax, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_3
	jp	.LBB14_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	mp_encode_int           # TAILCALL
.LBB14_3:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	mp_encode_double        # TAILCALL
.Lfunc_end14:
	.size	mp_encode_lua_number, .Lfunc_end14-mp_encode_lua_number
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function mp_encode_lua_table_as_array
.LCPI15_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI15_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	mp_encode_lua_table_as_array
	.p2align	4, 0x90
	.type	mp_encode_lua_table_as_array,@function
mp_encode_lua_table_as_array:           # @mp_encode_lua_table_as_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %r12
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	mp_encode_array
	movl	$.L.str, %edx
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaL_checkstack
	testq	%r12, %r12
	je	.LBB15_3
# %bb.1:
	addl	$1, %r15d
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %xmm1
	punpckldq	.LCPI15_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI15_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	lua_pushnumber
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_gettable
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	mp_encode_lua_type
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jbe	.LBB15_2
.LBB15_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	mp_encode_lua_table_as_array, .Lfunc_end15-mp_encode_lua_table_as_array
                                        # -- End function
	.globl	mp_encode_lua_type      # -- Begin function mp_encode_lua_type
	.p2align	4, 0x90
	.type	mp_encode_lua_type,@function
mp_encode_lua_type:                     # @mp_encode_lua_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$-1, %esi
	callq	lua_type
	movl	%eax, %edx
	xorl	$5, %edx
	movl	%ebx, %esi
	xorl	$16, %esi
	xorl	%ecx, %ecx
	orl	%edx, %esi
	cmovnel	%eax, %ecx
	addl	$-1, %ecx
	cmpl	$4, %ecx
	ja	.LBB16_11
# %bb.1:
	jmpq	*.LJTI16_0(,%rcx,8)
.LBB16_3:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	mp_encode_lua_bool
	jmp	.LBB16_15
.LBB16_11:
	movb	$-64, -41(%rbp)
	cmpq	$0, 16(%r14)
	je	.LBB16_13
# %bb.12:
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	jmp	.LBB16_14
.LBB16_4:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpl	$1, %eax
	je	.LBB16_7
# %bb.5:
	cvttsd2si	%xmm0, %rax
	cvtsi2sd	%rax, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB16_7
	jp	.LBB16_7
# %bb.6:
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tointeger
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	mp_encode_int
	jmp	.LBB16_15
.LBB16_2:
	leaq	-56(%rbp), %rdx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tolstring
	movq	-56(%rbp), %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	mp_encode_bytes
	jmp	.LBB16_15
.LBB16_8:
	movq	%r15, %rdi
	callq	table_is_an_array
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	testl	%eax, %eax
	je	.LBB16_10
# %bb.9:
	callq	mp_encode_lua_table_as_array
	jmp	.LBB16_15
.LBB16_7:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	mp_encode_double
	jmp	.LBB16_15
.LBB16_13:
	movq	(%r14), %r12
	movq	8(%r14), %r13
	leaq	2(,%r13), %rbx
	addq	%r13, %rbx
	leaq	-56(%rbp), %rsi
	movq	%r15, %rdi
	callq	lua_getallocf
	movq	-56(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	*%rax
	movq	%rax, (%r14)
	movq	8(%r14), %rdi
	subq	%rdi, %rbx
	movq	%rbx, 16(%r14)
.LBB16_14:
	addq	%rax, %rdi
	leaq	-41(%rbp), %rsi
	movl	$1, %edx
	callq	memcpy
	addq	$1, 8(%r14)
	addq	$-1, 16(%r14)
	jmp	.LBB16_15
.LBB16_10:
	callq	mp_encode_lua_table_as_map
.LBB16_15:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	mp_encode_lua_type, .Lfunc_end16-mp_encode_lua_type
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI16_0:
	.quad	.LBB16_3
	.quad	.LBB16_11
	.quad	.LBB16_4
	.quad	.LBB16_2
	.quad	.LBB16_8
                                        # -- End function
	.text
	.globl	mp_encode_lua_table_as_map # -- Begin function mp_encode_lua_table_as_map
	.p2align	4, 0x90
	.type	mp_encode_lua_table_as_map,@function
mp_encode_lua_table_as_map:             # @mp_encode_lua_table_as_map
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$.L.str.1, %edx
	movl	$3, %esi
	callq	luaL_checkstack
	movq	%r12, %rdi
	callq	lua_pushnil
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_next
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	testl	%eax, %eax
	je	.LBB17_3
# %bb.1:                                #   in Loop: Header=BB17_2 Depth=1
	movl	$-2, %esi
	callq	lua_settop
	addq	$1, %rbx
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_next
	jmp	.LBB17_2
.LBB17_3:
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	mp_encode_map
	movq	%r12, %rdi
	callq	lua_pushnil
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB17_6
# %bb.4:
	addl	$1, %r14d
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	mp_encode_lua_type
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	mp_encode_lua_type
	movq	%r12, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	jne	.LBB17_5
.LBB17_6:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	mp_encode_lua_table_as_map, .Lfunc_end17-mp_encode_lua_table_as_map
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function table_is_an_array
.LCPI18_0:
	.quad	0                       # double 0
	.text
	.globl	table_is_an_array
	.p2align	4, 0x90
	.type	table_is_an_array,@function
table_is_an_array:                      # @table_is_an_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r15
	callq	lua_gettop
	movl	%eax, %r14d
	movq	%r15, %rdi
	callq	lua_pushnil
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB18_1
# %bb.2:                                # %.preheader
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_type
	cmpl	$3, %eax
	jne	.LBB18_7
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	movapd	%xmm0, %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jae	.LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cmpl	$1, %eax
	je	.LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	cvttsd2si	%xmm1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB18_7
	jp	.LBB18_7
# %bb.8:                                #   in Loop: Header=BB18_3 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	maxsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r12d
	addl	$1, %ebx
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	jne	.LBB18_3
	jmp	.LBB18_9
.LBB18_7:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_settop
	xorl	%eax, %eax
	jmp	.LBB18_10
.LBB18_1:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB18_9:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_settop
	xorl	%eax, %eax
	cmpl	%ebx, %r12d
	sete	%al
.LBB18_10:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	table_is_an_array, .Lfunc_end18-table_is_an_array
                                        # -- End function
	.globl	mp_encode_lua_table     # -- Begin function mp_encode_lua_table
	.p2align	4, 0x90
	.type	mp_encode_lua_table,@function
mp_encode_lua_table:                    # @mp_encode_lua_table
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	table_is_an_array
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	addq	$8, %rsp
	testl	%eax, %eax
	je	.LBB19_2
# %bb.1:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mp_encode_lua_table_as_array # TAILCALL
.LBB19_2:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mp_encode_lua_table_as_map # TAILCALL
.Lfunc_end19:
	.size	mp_encode_lua_table, .Lfunc_end19-mp_encode_lua_table
                                        # -- End function
	.globl	mp_encode_lua_null      # -- Begin function mp_encode_lua_null
	.p2align	4, 0x90
	.type	mp_encode_lua_null,@function
mp_encode_lua_null:                     # @mp_encode_lua_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movb	$-64, -33(%rbp)
	cmpq	$0, 16(%rsi)
	je	.LBB20_2
# %bb.1:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	jmp	.LBB20_3
.LBB20_2:
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
	leaq	(%r15,%r15), %r12
	addq	$2, %r12
	leaq	-48(%rbp), %rsi
	callq	lua_getallocf
	movq	-48(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	*%rax
	movq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	subq	%rdi, %r12
	movq	%r12, 16(%rbx)
.LBB20_3:
	addq	%rax, %rdi
	leaq	-33(%rbp), %rsi
	movl	$1, %edx
	callq	memcpy
	addq	$1, 8(%rbx)
	addq	$-1, 16(%rbx)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	mp_encode_lua_null, .Lfunc_end20-mp_encode_lua_null
                                        # -- End function
	.globl	mp_pack                 # -- Begin function mp_pack
	.p2align	4, 0x90
	.type	mp_pack,@function
mp_pack:                                # @mp_pack
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
	callq	lua_gettop
	testl	%eax, %eax
	je	.LBB21_1
# %bb.3:
	movl	%eax, %r14d
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	lua_checkstack
	testl	%eax, %eax
	je	.LBB21_4
# %bb.5:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	lua_getallocf
	movq	-48(%rbp), %rdi
	xorl	%r13d, %r13d
	movl	$24, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movq	%rax, %r12
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	testl	%r14d, %r14d
	jle	.LBB21_6
# %bb.7:                                # %.preheader
	movl	%r14d, -52(%rbp)        # 4-byte Spill
                                        # kill: def $r14d killed $r14d def $r14
	negl	%r14d
	movl	$1, %r13d
	.p2align	4, 0x90
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_checkstack
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_pushvalue
	movq	%r15, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	mp_encode_lua_type
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movq	%r15, %rdi
	callq	lua_pushlstring
	movq	16(%r12), %rbx
	addq	8(%r12), %rbx
	movq	%rbx, 16(%r12)
	movq	$0, 8(%r12)
	leal	(%r14,%r13), %eax
	addl	$1, %eax
	movl	%r13d, %ecx
	addl	$1, %ecx
	movl	%ecx, %r13d
	cmpl	$1, %eax
	jne	.LBB21_8
# %bb.9:
	movq	(%r12), %r13
	movl	-52(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB21_10
.LBB21_1:
	movl	$.L.str.2, %edx
	jmp	.LBB21_2
.LBB21_4:
	movl	$.L.str.3, %edx
.LBB21_2:
	movq	%r15, %rdi
	xorl	%esi, %esi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_argerror           # TAILCALL
.LBB21_6:
	xorl	%ebx, %ebx
.LBB21_10:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	lua_getallocf
	movq	-48(%rbp), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	*%rax
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	lua_getallocf
	movq	-48(%rbp), %rdi
	movl	$24, %edx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	*%rax
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	lua_concat
	movl	$1, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	mp_pack, .Lfunc_end21-mp_pack
                                        # -- End function
	.globl	mp_decode_to_lua_array  # -- Begin function mp_decode_to_lua_array
	.p2align	4, 0x90
	.type	mp_decode_to_lua_array,@function
mp_decode_to_lua_array:                 # @mp_decode_to_lua_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rax
	shrq	$32, %rax
	jne	.LBB22_6
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaL_checkstack
	testq	%r14, %r14
	je	.LBB22_5
# %bb.2:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	%r12, %rdi
	callq	lua_pushnumber
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	mp_decode_to_lua_type
	cmpl	$0, 16(%r15)
	jne	.LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	movq	%r12, %rdi
	movl	$-3, %esi
	callq	lua_settable
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.LBB22_3
.LBB22_5:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_6:
	movl	$.L.str.5, %edi
	movl	$.L__func__.mp_decode_to_lua_array, %edx
	movl	$.L.str.6, %ecx
	movl	$552, %esi              # imm = 0x228
	callq	__assert_func
.Lfunc_end22:
	.size	mp_decode_to_lua_array, .Lfunc_end22-mp_decode_to_lua_array
                                        # -- End function
	.globl	mp_decode_to_lua_type   # -- Begin function mp_decode_to_lua_type
	.p2align	4, 0x90
	.type	mp_decode_to_lua_type,@function
mp_decode_to_lua_type:                  # @mp_decode_to_lua_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rbx
	cmpq	$0, 8(%rsi)
	je	.LBB23_4
# %bb.1:
	movq	%rdi, %r14
	movl	$.L.str.8, %edx
	movl	$1, %esi
	callq	luaL_checkstack
	movq	(%rbx), %rsi
	movzbl	(%rsi), %edx
	leal	64(%rdx), %eax
	cmpb	$31, %al
	ja	.LBB23_5
# %bb.2:
	movzbl	%al, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_3:
	movq	%r14, %rdi
	callq	lua_pushnil
	jmp	.LBB23_10
.LBB23_5:
	testb	%dl, %dl
	js	.LBB23_75
# %bb.6:
	movq	%r14, %rdi
	movq	%rdx, %rsi
	callq	lua_pushinteger
	jmp	.LBB23_10
.LBB23_7:
	movq	%r14, %rdi
	xorl	%esi, %esi
	jmp	.LBB23_9
.LBB23_8:
	movq	%r14, %rdi
	movl	$1, %esi
.LBB23_9:
	callq	lua_pushboolean
.LBB23_10:
	addq	$1, (%rbx)
	addq	$-1, 8(%rbx)
	jmp	.LBB23_85
.LBB23_11:
	cmpq	$4, 8(%rbx)
	jbe	.LBB23_4
# %bb.45:
	addq	$1, %rsi
	leaq	-28(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movb	-25(%rbp), %al
	movb	-28(%rbp), %cl
	movb	-27(%rbp), %dl
	movb	%al, -28(%rbp)
	movb	%cl, -25(%rbp)
	movb	-26(%rbp), %al
	movb	%al, -27(%rbp)
	movb	%dl, -26(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	jmp	.LBB23_57
.LBB23_13:
	cmpq	$8, 8(%rbx)
	jbe	.LBB23_4
# %bb.46:
	addq	$1, %rsi
	leaq	-40(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movb	-33(%rbp), %al
	movb	-40(%rbp), %cl
	movb	-39(%rbp), %dl
	movb	%al, -40(%rbp)
	movb	%cl, -33(%rbp)
	movb	-34(%rbp), %al
	movb	%al, -39(%rbp)
	movb	%dl, -34(%rbp)
	movb	-38(%rbp), %al
	movb	-35(%rbp), %cl
	movb	%cl, -38(%rbp)
	movb	%al, -35(%rbp)
	movb	-37(%rbp), %al
	movb	-36(%rbp), %cl
	movb	%cl, -37(%rbp)
	movb	%al, -36(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB23_59
.LBB23_15:
	cmpq	$1, 8(%rbx)
	jbe	.LBB23_4
# %bb.47:
	movzbl	1(%rsi), %esi
	jmp	.LBB23_52
.LBB23_17:
	cmpq	$2, 8(%rbx)
	jbe	.LBB23_4
# %bb.48:
	movzwl	1(%rsi), %esi
	shlq	$48, %rsi
	bswapq	%rsi
	jmp	.LBB23_54
.LBB23_19:
	cmpq	$4, 8(%rbx)
	jbe	.LBB23_4
# %bb.49:
	movl	1(%rsi), %esi
	shlq	$32, %rsi
	bswapq	%rsi
	jmp	.LBB23_56
.LBB23_21:
	cmpq	$8, 8(%rbx)
	jbe	.LBB23_4
# %bb.50:
	movq	1(%rsi), %rsi
	bswapq	%rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	jmp	.LBB23_60
.LBB23_23:
	cmpq	$1, 8(%rbx)
	jbe	.LBB23_4
# %bb.51:
	movsbq	1(%rsi), %rsi
.LBB23_52:
	movq	%r14, %rdi
	callq	lua_pushinteger
	addq	$2, (%rbx)
	addq	$-2, 8(%rbx)
	jmp	.LBB23_85
.LBB23_25:
	cmpq	$2, 8(%rbx)
	jbe	.LBB23_4
# %bb.53:
	movzbl	1(%rsi), %eax
	shll	$8, %eax
	movswq	%ax, %rax
	movzbl	2(%rsi), %esi
	orq	%rax, %rsi
.LBB23_54:
	movq	%r14, %rdi
	callq	lua_pushinteger
	addq	$3, (%rbx)
	addq	$-3, 8(%rbx)
	jmp	.LBB23_85
.LBB23_27:
	cmpq	$4, 8(%rbx)
	jbe	.LBB23_4
# %bb.55:
	movzbl	1(%rsi), %eax
	shll	$24, %eax
	movzbl	2(%rsi), %ecx
	shlq	$16, %rcx
	cltq
	orq	%rcx, %rax
	movzbl	3(%rsi), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	4(%rsi), %esi
	orq	%rcx, %rsi
.LBB23_56:
	movq	%r14, %rdi
	callq	lua_pushinteger
.LBB23_57:
	addq	$5, (%rbx)
	addq	$-5, 8(%rbx)
	jmp	.LBB23_85
.LBB23_29:
	cmpq	$8, 8(%rbx)
	jbe	.LBB23_4
# %bb.58:
	movq	1(%rsi), %rax
	bswapq	%rax
	cvtsi2sd	%rax, %xmm0
.LBB23_59:
	movq	%r14, %rdi
	callq	lua_pushnumber
.LBB23_60:
	addq	$9, (%rbx)
	addq	$-9, 8(%rbx)
	jmp	.LBB23_85
.LBB23_31:
	movq	8(%rbx), %rax
	cmpq	$1, %rax
	jbe	.LBB23_4
# %bb.61:
	movzbl	1(%rsi), %edx
	leaq	2(%rdx), %r15
	cmpq	%r15, %rax
	jb	.LBB23_4
# %bb.78:
	addq	$2, %rsi
	jmp	.LBB23_83
.LBB23_33:
	movq	8(%rbx), %rax
	cmpq	$2, %rax
	jbe	.LBB23_4
# %bb.63:
	movzwl	1(%rsi), %edx
	shlq	$48, %rdx
	bswapq	%rdx
	leaq	3(%rdx), %r15
	cmpq	%r15, %rax
	jb	.LBB23_4
# %bb.79:
	addq	$3, %rsi
	jmp	.LBB23_83
.LBB23_35:
	movq	8(%rbx), %rax
	cmpq	$4, %rax
	jbe	.LBB23_4
# %bb.65:
	movl	1(%rsi), %r15d
	shlq	$32, %r15
	bswapq	%r15
	addq	$5, %rsi
	movq	%rsi, (%rbx)
	addq	$-5, %rax
	movq	%rax, 8(%rbx)
	cmpq	%r15, %rax
	jb	.LBB23_4
# %bb.80:
	movq	%r14, %rdi
	movq	%r15, %rdx
	jmp	.LBB23_84
.LBB23_37:
	movq	8(%rbx), %rax
	cmpq	$4, %rax
	jbe	.LBB23_4
# %bb.67:
	movl	1(%rsi), %edx
	shlq	$32, %rdx
	bswapq	%rdx
	addq	$5, %rsi
	movq	%rsi, (%rbx)
	addq	$-5, %rax
	jmp	.LBB23_73
.LBB23_39:
	movq	8(%rbx), %rax
	cmpq	$2, %rax
	jbe	.LBB23_4
# %bb.68:
	movzwl	1(%rsi), %edx
	shlq	$48, %rdx
	bswapq	%rdx
	addq	$3, %rsi
	movq	%rsi, (%rbx)
	addq	$-3, %rax
	jmp	.LBB23_70
.LBB23_41:
	movq	8(%rbx), %rax
	cmpq	$4, %rax
	jbe	.LBB23_4
# %bb.69:
	movl	1(%rsi), %edx
	shlq	$32, %rdx
	bswapq	%rdx
	addq	$5, %rsi
	movq	%rsi, (%rbx)
	addq	$-5, %rax
.LBB23_70:
	movq	%rax, 8(%rbx)
.LBB23_71:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mp_decode_to_lua_hash   # TAILCALL
.LBB23_43:
	movq	8(%rbx), %rax
	cmpq	$2, %rax
	ja	.LBB23_72
.LBB23_4:
	movl	$1, 16(%rbx)
.LBB23_85:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_72:
	movzwl	1(%rsi), %edx
	shlq	$48, %rdx
	bswapq	%rdx
	addq	$3, %rsi
	movq	%rsi, (%rbx)
	addq	$-3, %rax
.LBB23_73:
	movq	%rax, 8(%rbx)
.LBB23_74:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mp_decode_to_lua_array  # TAILCALL
.LBB23_75:
	movl	%edx, %eax
	andb	$-32, %al
	cmpb	$-96, %al
	je	.LBB23_81
# %bb.76:
	cmpb	$-32, %al
	jne	.LBB23_86
# %bb.77:
	movsbq	%dl, %rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	jmp	.LBB23_10
.LBB23_81:
	andl	$31, %edx
	cmpq	%rdx, 8(%rbx)
	jbe	.LBB23_4
# %bb.82:
	addq	$1, %rsi
	leaq	1(%rdx), %r15
.LBB23_83:
	movq	%r14, %rdi
.LBB23_84:
	callq	lua_pushlstring
	addq	%r15, (%rbx)
	subq	%r15, 8(%rbx)
	jmp	.LBB23_85
.LBB23_86:
	movl	%edx, %eax
	andb	$-16, %al
	cmpb	$-128, %al
	je	.LBB23_90
# %bb.87:
	cmpb	$-112, %al
	jne	.LBB23_91
# %bb.88:
	andl	$15, %edx
	addq	$1, %rsi
	movq	%rsi, (%rbx)
	addq	$-1, 8(%rbx)
	jmp	.LBB23_74
.LBB23_90:
	andl	$15, %edx
	addq	$1, %rsi
	movq	%rsi, (%rbx)
	addq	$-1, 8(%rbx)
	jmp	.LBB23_71
.LBB23_91:
	movl	$2, 16(%rbx)
	jmp	.LBB23_85
.Lfunc_end23:
	.size	mp_decode_to_lua_type, .Lfunc_end23-mp_decode_to_lua_type
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_3
	.quad	.LBB23_5
	.quad	.LBB23_7
	.quad	.LBB23_8
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_11
	.quad	.LBB23_13
	.quad	.LBB23_15
	.quad	.LBB23_17
	.quad	.LBB23_19
	.quad	.LBB23_21
	.quad	.LBB23_23
	.quad	.LBB23_25
	.quad	.LBB23_27
	.quad	.LBB23_29
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_5
	.quad	.LBB23_31
	.quad	.LBB23_33
	.quad	.LBB23_35
	.quad	.LBB23_43
	.quad	.LBB23_37
	.quad	.LBB23_39
	.quad	.LBB23_41
                                        # -- End function
	.text
	.globl	mp_decode_to_lua_hash   # -- Begin function mp_decode_to_lua_hash
	.p2align	4, 0x90
	.type	mp_decode_to_lua_hash,@function
mp_decode_to_lua_hash:                  # @mp_decode_to_lua_hash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rax
	shrq	$32, %rax
	jne	.LBB24_7
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	testq	%rbx, %rbx
	je	.LBB24_6
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	mp_decode_to_lua_type
	cmpl	$0, 16(%r14)
	jne	.LBB24_6
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	mp_decode_to_lua_type
	cmpl	$0, 16(%r14)
	jne	.LBB24_6
# %bb.5:                                #   in Loop: Header=BB24_3 Depth=1
	addq	$-1, %rbx
	movq	%r15, %rdi
	movl	$-3, %esi
	callq	lua_settable
	testq	%rbx, %rbx
	jne	.LBB24_3
.LBB24_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_7:
	movl	$.L.str.5, %edi
	movl	$.L__func__.mp_decode_to_lua_hash, %edx
	movl	$.L.str.6, %ecx
	movl	$566, %esi              # imm = 0x236
	callq	__assert_func
.Lfunc_end24:
	.size	mp_decode_to_lua_hash, .Lfunc_end24-mp_decode_to_lua_hash
                                        # -- End function
	.globl	mp_unpack_full          # -- Begin function mp_unpack_full
	.p2align	4, 0x90
	.type	mp_unpack_full,@function
mp_unpack_full:                         # @mp_unpack_full
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	leaq	-48(%rbp), %rdx
	movl	$1, %esi
	callq	luaL_checklstring
	movl	%ebx, %r13d
	orl	%r15d, %r13d
	js	.LBB25_3
# %bb.1:
	movslq	%ebx, %rsi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	jae	.LBB25_7
# %bb.2:
	movl	$.L.str.10, %esi
	jmp	.LBB25_4
.LBB25_3:
	movq	-48(%rbp), %rcx
	movl	$.L.str.9, %esi
.LBB25_4:
	movq	%r14, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	luaL_error
.LBB25_5:
	movl	%eax, %ebx
.LBB25_6:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_7:
	testl	%r13d, %r13d
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmovel	%ecx, %r15d
	addq	%rsi, %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$0, -56(%rbp)
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	jle	.LBB25_14
# %bb.8:
	testq	%rdx, %rdx
	je	.LBB25_14
# %bb.9:                                # %.preheader
	xorl	%ebx, %ebx
	leaq	-72(%rbp), %r12
	.p2align	4, 0x90
.LBB25_10:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	mp_decode_to_lua_type
	movl	-56(%rbp), %eax
	cmpl	$2, %eax
	je	.LBB25_16
# %bb.11:                               #   in Loop: Header=BB25_10 Depth=1
	cmpl	$1, %eax
	je	.LBB25_17
# %bb.12:                               #   in Loop: Header=BB25_10 Depth=1
	addl	$1, %ebx
	movq	-64(%rbp), %rdx
	cmpl	%r15d, %ebx
	jge	.LBB25_14
# %bb.13:                               #   in Loop: Header=BB25_10 Depth=1
	testq	%rdx, %rdx
	jne	.LBB25_10
.LBB25_14:
	testl	%r13d, %r13d
	je	.LBB25_6
# %bb.15:
	movl	-48(%rbp), %r15d
	subl	%edx, %r15d
	movl	$.L.str.13, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checkstack
	xorl	%esi, %esi
	cmpq	$1, -64(%rbp)
	movslq	%r15d, %rax
	sbbq	%rsi, %rsi
	orq	%rax, %rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_insert
	addl	$1, %ebx
	jmp	.LBB25_6
.LBB25_16:
	movl	$.L.str.12, %esi
	jmp	.LBB25_18
.LBB25_17:
	movl	$.L.str.11, %esi
.LBB25_18:
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB25_5
.Lfunc_end25:
	.size	mp_unpack_full, .Lfunc_end25-mp_unpack_full
                                        # -- End function
	.globl	mp_unpack               # -- Begin function mp_unpack
	.p2align	4, 0x90
	.type	mp_unpack,@function
mp_unpack:                              # @mp_unpack
# %bb.0:
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	mp_unpack_full          # TAILCALL
.Lfunc_end26:
	.size	mp_unpack, .Lfunc_end26-mp_unpack
                                        # -- End function
	.globl	mp_unpack_one           # -- Begin function mp_unpack_one
	.p2align	4, 0x90
	.type	mp_unpack_one,@function
mp_unpack_one:                          # @mp_unpack_one
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_optinteger
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	lua_gettop
	negl	%eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	mp_unpack_full          # TAILCALL
.Lfunc_end27:
	.size	mp_unpack_one, .Lfunc_end27-mp_unpack_one
                                        # -- End function
	.globl	mp_unpack_limit         # -- Begin function mp_unpack_limit
	.p2align	4, 0x90
	.type	mp_unpack_limit,@function
mp_unpack_limit:                        # @mp_unpack_limit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	luaL_optinteger
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	lua_gettop
	negl	%eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_settop
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mp_unpack_full          # TAILCALL
.Lfunc_end28:
	.size	mp_unpack_limit, .Lfunc_end28-mp_unpack_limit
                                        # -- End function
	.globl	mp_safe                 # -- Begin function mp_safe
	.p2align	4, 0x90
	.type	mp_safe,@function
mp_safe:                                # @mp_safe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	lua_gettop
	movl	%eax, %r14d
	movq	%rbx, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_insert
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$-1, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	lua_gettop
	testl	%r14d, %r14d
	je	.LBB29_2
# %bb.1:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %eax
.LBB29_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	mp_safe, .Lfunc_end29-mp_safe
                                        # -- End function
	.globl	luaopen_create          # -- Begin function luaopen_create
	.p2align	4, 0x90
	.type	luaopen_create,@function
luaopen_create:                         # @luaopen_create
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$mp_pack, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$mp_unpack, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$mp_unpack_one, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$mp_unpack_limit, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.18, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.20, %esi
	movl	$18, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.21, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.22, %esi
	movl	$40, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.23, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.24, %esi
	movl	$36, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$.L.str.25, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end30:
	.size	luaopen_create, .Lfunc_end30-luaopen_create
                                        # -- End function
	.globl	luaopen_cmsgpack        # -- Begin function luaopen_cmsgpack
	.p2align	4, 0x90
	.type	luaopen_cmsgpack,@function
luaopen_cmsgpack:                       # @luaopen_cmsgpack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	luaopen_create
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$.L.str.18, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	luaopen_cmsgpack, .Lfunc_end31-luaopen_cmsgpack
                                        # -- End function
	.globl	luaopen_cmsgpack_safe   # -- Begin function luaopen_cmsgpack_safe
	.p2align	4, 0x90
	.type	luaopen_cmsgpack_safe,@function
luaopen_cmsgpack_safe:                  # @luaopen_cmsgpack_safe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	luaopen_create
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$.L.str.18, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$mp_safe, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$mp_safe, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$mp_safe, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$mp_safe, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$.L.str.26, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	luaopen_cmsgpack_safe, .Lfunc_end32-luaopen_cmsgpack_safe
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in function mp_encode_lua_table_as_array"
	.size	.L.str, 41

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"in function mp_encode_lua_table_as_map"
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"MessagePack pack needs input."
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Too many arguments for MessagePack pack."
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"in function mp_check"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cmsgpack.c"
	.size	.L.str.5, 89

	.type	.L__func__.mp_decode_to_lua_array,@object # @__func__.mp_decode_to_lua_array
.L__func__.mp_decode_to_lua_array:
	.asciz	"mp_decode_to_lua_array"
	.size	.L__func__.mp_decode_to_lua_array, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"len <= UINT_MAX"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"in function mp_decode_to_lua_array"
	.size	.L.str.7, 35

	.type	.L__func__.mp_decode_to_lua_hash,@object # @__func__.mp_decode_to_lua_hash
.L__func__.mp_decode_to_lua_hash:
	.asciz	"mp_decode_to_lua_hash"
	.size	.L__func__.mp_decode_to_lua_hash, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"too many return values at once; use unpack_one or unpack_limit instead."
	.size	.L.str.8, 72

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Invalid request to unpack with offset of %d and limit of %d."
	.size	.L.str.9, 61

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Start offset %d greater than input length %d."
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Missing bytes in input."
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Bad data format in input."
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"in function mp_unpack_full"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pack"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"unpack"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"unpack_one"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"unpack_limit"
	.size	.L.str.17, 13

	.type	cmds,@object            # @cmds
	.section	.rodata,"a",@progbits
	.globl	cmds
	.p2align	4
cmds:
	.quad	.L.str.14
	.quad	mp_pack
	.quad	.L.str.15
	.quad	mp_unpack
	.quad	.L.str.16
	.quad	mp_unpack_one
	.quad	.L.str.17
	.quad	mp_unpack_limit
	.zero	16
	.size	cmds, 80

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"cmsgpack"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_NAME"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"lua-cmsgpack 0.4.0"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_VERSION"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Copyright (C) 2012, Salvatore Sanfilippo"
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_COPYRIGHT"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"MessagePack C implementation for Lua"
	.size	.L.str.24, 37

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_DESCRIPTION"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"cmsgpack_safe"
	.size	.L.str.26, 14

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
