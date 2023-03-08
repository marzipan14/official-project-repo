	.text
	.file	"lcode.c"
	.hidden	luaK_nil                # -- Begin function luaK_nil
	.globl	luaK_nil
	.p2align	4, 0x90
	.type	luaK_nil,@function
luaK_nil:                               # @luaK_nil
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	movslq	48(%rdi), %rax
	cmpl	52(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_9
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movq	(%rdi), %rcx
	movq	24(%rcx), %r8
	movl	-4(%r8,%rax,4), %r10d
	movl	%r10d, %ecx
	andl	$63, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB0_9
# %bb.4:
	movl	%r10d, %ecx
	shrl	$6, %ecx
	movzbl	%cl, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ecx
	jg	.LBB0_8
# %bb.5:
	movl	%r10d, %r9d
	shrl	$23, %r9d
	leal	1(%r9), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ecx
	jge	.LBB0_6
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_9
.LBB0_2:
	movzbl	74(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jle	.LBB0_11
.LBB0_9:
	addl	%esi, %edx
	shll	$6, %esi
	shll	$23, %edx
	addl	$-8388608, %edx         # imm = 0xFF800000
	orl	%esi, %edx
	orl	$3, %edx
	movq	24(%rdi), %rax
	movl	8(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edx
	callq	luaK_code
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB0_6:
	addl	%esi, %edx
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %edx
	jle	.LBB0_10
# %bb.7:
	andl	$8388607, %r10d         # imm = 0x7FFFFF
	shll	$23, %edx
	orl	%r10d, %edx
	movl	%edx, -4(%r8,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_10
.Lfunc_end0:
	.size	luaK_nil, .Lfunc_end0-luaK_nil
                                        # -- End function
	.hidden	luaK_codeABC            # -- Begin function luaK_codeABC
	.globl	luaK_codeABC
	.p2align	4, 0x90
	.type	luaK_codeABC,@function
luaK_codeABC:                           # @luaK_codeABC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	shll	$6, %edx
	orl	%edx, %esi
	shll	$23, %ecx
	shll	$14, %r8d
	orl	%ecx, %r8d
	orl	%r8d, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaK_codeABC, .Lfunc_end1-luaK_codeABC
                                        # -- End function
	.hidden	luaK_jump               # -- Begin function luaK_jump
	.globl	luaK_jump
	.p2align	4, 0x90
	.type	luaK_jump,@function
luaK_jump:                              # @luaK_jump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movl	56(%rdi), %r14d
	movl	$-1, 56(%rdi)
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -20(%rbp)
	leaq	-20(%rbp), %rsi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	luaK_concat
	movl	-20(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaK_jump, .Lfunc_end2-luaK_jump
                                        # -- End function
	.hidden	luaK_codeABx            # -- Begin function luaK_codeABx
	.globl	luaK_codeABx
	.p2align	4, 0x90
	.type	luaK_codeABx,@function
luaK_codeABx:                           # @luaK_codeABx
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	shll	$6, %edx
	orl	%edx, %esi
	shll	$14, %ecx
	orl	%ecx, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaK_codeABx, .Lfunc_end3-luaK_codeABx
                                        # -- End function
	.hidden	luaK_concat             # -- Begin function luaK_concat
	.globl	luaK_concat
	.p2align	4, 0x90
	.type	luaK_concat,@function
luaK_concat:                            # @luaK_concat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	je	.LBB4_14
# %bb.1:
	movslq	(%rsi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB4_2
# %bb.3:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	leaq	(%rax,%rbx,4), %r15
	movl	(%rax,%rbx,4), %ecx
	shrl	$14, %ecx
	addl	$-131071, %ecx          # imm = 0xFFFE0001
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	je	.LBB4_6
# %bb.4:
	leal	(%rbx,%rcx), %esi
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB4_10
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	movl	%esi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rcx
	movl	(%rax,%rcx,4), %esi
	shrl	$14, %esi
	addl	$-131071, %esi          # imm = 0xFFFE0001
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_8 Depth=1
	addl	%ebx, %esi
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	jne	.LBB4_8
# %bb.9:
	leaq	(%rax,%rcx,4), %r15
	jmp	.LBB4_10
.LBB4_2:
	movl	%edx, (%rsi)
	jmp	.LBB4_13
.LBB4_5:
	leaq	(%rax,%rcx,4), %r15
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_10:
	notl	%ebx
	addl	%edx, %ebx
	movl	%ebx, %edi
	callq	abs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB4_12
# %bb.11:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB4_12:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r15), %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaK_concat, .Lfunc_end4-luaK_concat
                                        # -- End function
	.hidden	luaK_ret                # -- Begin function luaK_ret
	.globl	luaK_ret
	.p2align	4, 0x90
	.type	luaK_ret,@function
luaK_ret:                               # @luaK_ret
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	shll	$6, %esi
	shll	$23, %edx
	addl	$8388608, %edx          # imm = 0x800000
	orl	%edx, %esi
	orl	$30, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaK_ret, .Lfunc_end5-luaK_ret
                                        # -- End function
	.hidden	luaK_getlabel           # -- Begin function luaK_getlabel
	.globl	luaK_getlabel
	.p2align	4, 0x90
	.type	luaK_getlabel,@function
luaK_getlabel:                          # @luaK_getlabel
# %bb.0:
	movl	48(%rdi), %eax
	movl	%eax, 52(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	luaK_getlabel, .Lfunc_end6-luaK_getlabel
                                        # -- End function
	.hidden	luaK_patchlist          # -- Begin function luaK_patchlist
	.globl	luaK_patchlist
	.p2align	4, 0x90
	.type	luaK_patchlist,@function
luaK_patchlist:                         # @luaK_patchlist
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
	movl	%esi, %r12d
	movq	%rdi, %r15
	cmpl	%edx, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
# %bb.1:
	movl	%r14d, 52(%r15)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%r15), %rsi
	movq	%r15, %rdi
	movl	%r12d, %edx
	callq	luaK_concat
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=1
	movl	(%r13), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	movl	%r12d, %ebx
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movslq	%r12d, %rcx
	leaq	(%rax,%rcx,4), %r13
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	leal	-131070(%rcx,%rdx), %r12d
	cmovel	%esi, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB7_7
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	movl	-4(%r13), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB7_6
.LBB7_7:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r13, %rcx
	jmp	.LBB7_8
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	leaq	-4(%r13), %rcx
	movl	%edx, %eax
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %edx
	jne	.LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=1
	movl	%eax, %edx
	shrl	$17, %edx
	andl	$-64, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_10:                               #   in Loop: Header=BB7_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	addl	%r14d, %ebx
	movl	%ebx, %edi
	callq	abs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_3 Depth=1
	movq	24(%r15), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_12
.Lfunc_end7:
	.size	luaK_patchlist, .Lfunc_end7-luaK_patchlist
                                        # -- End function
	.hidden	luaK_patchtohere        # -- Begin function luaK_patchtohere
	.globl	luaK_patchtohere
	.p2align	4, 0x90
	.type	luaK_patchtohere,@function
luaK_patchtohere:                       # @luaK_patchtohere
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %edx
	movl	48(%rdi), %eax
	movl	%eax, 52(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rdi), %rsi
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaK_patchtohere, .Lfunc_end8-luaK_patchtohere
                                        # -- End function
	.hidden	luaK_checkstack         # -- Begin function luaK_checkstack
	.globl	luaK_checkstack
	.p2align	4, 0x90
	.type	luaK_checkstack,@function
luaK_checkstack:                        # @luaK_checkstack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	addl	60(%rdi), %ebx
	movq	(%rdi), %rax
	movzbl	115(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jle	.LBB9_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$250, %ebx
	jl	.LBB9_3
# %bb.2:
	movq	%rdi, %r14
	movq	24(%rdi), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
.LBB9_3:
	addq	$115, %rax
	movb	%bl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaK_checkstack, .Lfunc_end9-luaK_checkstack
                                        # -- End function
	.hidden	luaK_reserveregs        # -- Begin function luaK_reserveregs
	.globl	luaK_reserveregs
	.p2align	4, 0x90
	.type	luaK_reserveregs,@function
luaK_reserveregs:                       # @luaK_reserveregs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	60(%rdi), %ebx
	addl	%esi, %ebx
	movq	(%rdi), %rax
	movzbl	115(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jle	.LBB10_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$250, %ebx
	jl	.LBB10_2
# %bb.3:
	movl	%esi, %r14d
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	addq	$115, %rax
	addl	60(%r15), %r14d
	jmp	.LBB10_4
.LBB10_2:
	addq	$115, %rax
	movl	%ebx, %r14d
.LBB10_4:
	movb	%bl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ebx
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 60(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	luaK_reserveregs, .Lfunc_end10-luaK_reserveregs
                                        # -- End function
	.hidden	luaK_stringK            # -- Begin function luaK_stringK
	.globl	luaK_stringK
	.p2align	4, 0x90
	.type	luaK_stringK,@function
luaK_stringK:                           # @luaK_stringK
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, -16(%rbp)
	movl	$4, -8(%rbp)
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	addk
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	luaK_stringK, .Lfunc_end11-luaK_stringK
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function addk
	.type	addk,@function
addk:                                   # @addk
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
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	8(%rdi), %rsi
	movq	32(%rdi), %r14
	movq	%r14, %rdi
	callq	luaH_set
	movq	(%r13), %r15
	movslq	76(%r15), %rbx
	cmpl	$3, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_2
# %bb.1:
	cvttsd2si	(%rax), %eax
	jmp	.LBB12_18
.LBB12_2:
	cvtsi2sdl	64(%r13), %xmm0
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	movl	76(%r15), %edx
	cmpl	%edx, 64(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB12_4
# %bb.3:
	movq	16(%r15), %rax
	jmp	.LBB12_5
.LBB12_4:
	leaq	76(%r15), %rdx
	movq	16(%r15), %rsi
	movl	$16, %ecx
	movl	$.L.str.2, %r9d
	movq	%r14, %rdi
	movl	$262143, %r8d           # imm = 0x3FFFF
	callq	luaM_growaux_
	movq	%rax, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	76(%r15), %edx
.LBB12_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jge	.LBB12_13
# %bb.6:
	movslq	%edx, %rcx
	subl	%ebx, %edx
	movq	%rbx, %r8
	notq	%r8
	addq	%rcx, %r8
	andq	$3, %rdx
	je	.LBB12_10
# %bb.7:                                # %.preheader1
	movq	%rbx, %rsi
	shlq	$4, %rsi
	leaq	(%rax,%rsi), %rdi
	addq	$8, %rdi
	negq	%rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdi
	addq	$-1, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB12_8
# %bb.9:                                # %.loopexit2
	subq	%rsi, %rbx
.LBB12_10:
	cmpq	$3, %r8
	jb	.LBB12_13
# %bb.11:                               # %.preheader
	movq	%rbx, %rdx
	shlq	$4, %rdx
	addq	%rax, %rdx
	addq	$56, %rdx
	.p2align	4, 0x90
.LBB12_12:                              # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rbx
	movl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rdx
	cmpq	%rcx, %rbx
	jl	.LBB12_12
.LBB12_13:
	movslq	64(%r13), %rcx
	shlq	$4, %rcx
	movq	(%r12), %rdx
	movq	%rdx, (%rax,%rcx)
	movl	8(%r12), %edx
	movl	%edx, 8(%rax,%rcx)
	cmpl	$4, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB12_17
# %bb.14:
	movq	(%r12), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_17
# %bb.15:
	testb	$4, 9(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_17
# %bb.16:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
.LBB12_17:
	movl	64(%r13), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 64(%r13)
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	addk, .Lfunc_end12-addk
                                        # -- End function
	.hidden	luaK_numberK            # -- Begin function luaK_numberK
	.globl	luaK_numberK
	.p2align	4, 0x90
	.type	luaK_numberK,@function
luaK_numberK:                           # @luaK_numberK
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	%xmm0, -16(%rbp)
	movl	$3, -8(%rbp)
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	addk
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaK_numberK, .Lfunc_end13-luaK_numberK
                                        # -- End function
	.hidden	luaK_setreturns         # -- Begin function luaK_setreturns
	.globl	luaK_setreturns
	.p2align	4, 0x90
	.type	luaK_setreturns,@function
luaK_setreturns:                        # @luaK_setreturns
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %rbx
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	jne	.LBB14_2
# %bb.1:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movslq	8(%rsi), %rcx
	movl	$-8372225, %esi         # imm = 0xFF803FFF
	andl	(%rax,%rcx,4), %esi
	shll	$14, %edx
	addl	$16384, %edx            # imm = 0x4000
	andl	$8372224, %edx          # imm = 0x7FC000
	orl	%esi, %edx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB14_9
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %eax
	jne	.LBB14_10
# %bb.3:
	movq	(%rbx), %r8
	movq	24(%r8), %rcx
	movslq	8(%rsi), %rdi
	movl	$8388607, %eax          # imm = 0x7FFFFF
	andl	(%rcx,%rdi,4), %eax
	shll	$23, %edx
	addl	%edx, %eax
	addl	$8388608, %eax          # imm = 0x800000
	movl	%eax, (%rcx,%rdi,4)
	movslq	8(%rsi), %rax
	movl	$-16321, %edx           # imm = 0xC03F
	andl	(%rcx,%rax,4), %edx
	movl	60(%rbx), %esi
	movzbl	%sil, %esi
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rcx,%rax,4)
	movl	60(%rbx), %ecx
	leal	1(%rcx), %r14d
	movzbl	115(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jl	.LBB14_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$249, %ecx
	jl	.LBB14_5
# %bb.6:
	movq	24(%rbx), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %r8
	addq	$115, %r8
	movl	60(%rbx), %ecx
	addl	$1, %ecx
	jmp	.LBB14_7
.LBB14_5:
	addq	$115, %r8
	movl	%r14d, %ecx
.LBB14_7:
	movb	%r14b, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r14d
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	luaK_setreturns, .Lfunc_end14-luaK_setreturns
                                        # -- End function
	.hidden	luaK_setoneret          # -- Begin function luaK_setoneret
	.globl	luaK_setoneret
	.p2align	4, 0x90
	.type	luaK_setoneret,@function
luaK_setoneret:                         # @luaK_setoneret
# %bb.0:
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	jne	.LBB15_2
# %bb.1:
	movl	$12, (%rsi)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rsi), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%rsi)
	jmp	.LBB15_4
.LBB15_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %eax
	jne	.LBB15_5
# %bb.3:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rsi), %rcx
	movl	$8388607, %edx          # imm = 0x7FFFFF
	andl	(%rax,%rcx,4), %edx
	orl	$16777216, %edx         # imm = 0x1000000
	movl	%edx, (%rax,%rcx,4)
	movl	$11, (%rsi)
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end15:
	.size	luaK_setoneret, .Lfunc_end15-luaK_setoneret
                                        # -- End function
	.hidden	luaK_dischargevars      # -- Begin function luaK_dischargevars
	.globl	luaK_dischargevars
	.p2align	4, 0x90
	.type	luaK_dischargevars,@function
luaK_dischargevars:                     # @luaK_dischargevars
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-6(%rax), %ecx
	cmpl	$8, %ecx
	ja	.LBB16_18
# %bb.1:
	movq	%rsi, %rbx
	jmpq	*.LJTI16_0(,%rcx,8)
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	jne	.LBB16_15
# %bb.14:
	movl	$12, (%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%rbx)
	jmp	.LBB16_16
.LBB16_2:
	movl	$12, (%rbx)
	jmp	.LBB16_17
.LBB16_3:
	movl	8(%rbx), %esi
	shll	$23, %esi
	orl	$4, %esi
	jmp	.LBB16_4
.LBB16_5:
	movl	8(%rbx), %esi
	shll	$14, %esi
	orl	$5, %esi
	jmp	.LBB16_4
.LBB16_6:
	movl	12(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB16_9
# %bb.7:
	movzbl	74(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB16_9
# %bb.8:
	addl	$-1, 60(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB16_12
# %bb.10:
	movzbl	74(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB16_12
# %bb.11:
	addl	$-1, 60(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %eax
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rbx), %esi
	shll	$23, %eax
	shll	$14, %esi
	orl	%eax, %esi
	orl	$6, %esi
.LBB16_4:
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%rbx)
	movl	$11, (%rbx)
	jmp	.LBB16_17
.LBB16_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	$8388607, %edx          # imm = 0x7FFFFF
	andl	(%rax,%rcx,4), %edx
	orl	$16777216, %edx         # imm = 0x1000000
	movl	%edx, (%rax,%rcx,4)
	movl	$11, (%rbx)
.LBB16_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_18:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	luaK_dischargevars, .Lfunc_end16-luaK_dischargevars
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI16_0:
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_18
	.quad	.LBB16_18
	.quad	.LBB16_18
	.quad	.LBB16_13
	.quad	.LBB16_13
                                        # -- End function
	.text
	.hidden	luaK_exp2nextreg        # -- Begin function luaK_exp2nextreg
	.globl	luaK_exp2nextreg
	.p2align	4, 0x90
	.type	luaK_exp2nextreg,@function
luaK_exp2nextreg:                       # @luaK_exp2nextreg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	luaK_dischargevars
	cmpl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_5
# %bb.1:
	movl	8(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB17_4
# %bb.2:
	movzbl	74(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB17_4
# %bb.3:
	addl	$-1, 60(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	60(%r15), %ecx
	leal	1(%rcx), %ebx
	movq	(%r15), %rax
	movzbl	115(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB17_10
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$249, %ecx
	jl	.LBB17_7
# %bb.8:
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	addq	$115, %rax
	movl	60(%r15), %ecx
	addl	$1, %ecx
	jmp	.LBB17_9
.LBB17_7:
	addq	$115, %rax
	movl	%ebx, %ecx
.LBB17_9:
	movb	%bl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
.LBB17_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 60(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	exp2reg
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	luaK_exp2nextreg, .Lfunc_end17-luaK_exp2nextreg
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function exp2reg
	.type	exp2reg,@function
exp2reg:                                # @exp2reg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	discharge2reg
	leaq	16(%r15), %r12
	cmpl	$10, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_2
# %bb.1:
	movl	8(%r15), %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
.LBB18_2:
	movl	16(%r15), %eax
	movl	20(%r15), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	je	.LBB18_61
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	je	.LBB18_13
# %bb.4:
	movq	(%r14), %rcx
	movq	24(%rcx), %rcx
	.p2align	4, 0x90
.LBB18_5:                               # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB18_8
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	movl	-4(%rcx,%rdx,4), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_7
.LBB18_8:                               #   in Loop: Header=BB18_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx,%rdx,4), %esi
	jmp	.LBB18_9
	.p2align	4, 0x90
.LBB18_7:                               #   in Loop: Header=BB18_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB18_9:                               #   in Loop: Header=BB18_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %esi
	jne	.LBB18_24
# %bb.10:                               #   in Loop: Header=BB18_5 Depth=1
	movl	(%rcx,%rdx,4), %edx
	shrl	$14, %edx
	addl	$-131071, %edx          # imm = 0xFFFE0001
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	je	.LBB18_11
# %bb.12:                               #   in Loop: Header=BB18_5 Depth=1
	addl	%edx, %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB18_5
	jmp	.LBB18_13
.LBB18_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB18_23
# %bb.14:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movl	%ebx, %ecx
	.p2align	4, 0x90
.LBB18_15:                              # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB18_18
# %bb.16:                               #   in Loop: Header=BB18_15 Depth=1
	movl	-4(%rax,%rdx,4), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_17
.LBB18_18:                              #   in Loop: Header=BB18_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax,%rdx,4), %esi
	jmp	.LBB18_19
	.p2align	4, 0x90
.LBB18_17:                              #   in Loop: Header=BB18_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB18_19:                              #   in Loop: Header=BB18_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %esi
	jne	.LBB18_24
# %bb.20:                               #   in Loop: Header=BB18_15 Depth=1
	movl	(%rax,%rdx,4), %edx
	shrl	$14, %edx
	addl	$-131071, %edx          # imm = 0xFFFE0001
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	je	.LBB18_21
# %bb.22:                               #   in Loop: Header=BB18_15 Depth=1
	addl	%edx, %ecx
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB18_15
	jmp	.LBB18_23
.LBB18_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%r14), %rax
	jne	.LBB18_26
# %bb.25:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$-1, %ebx
	jmp	.LBB18_27
.LBB18_26:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	56(%r14), %ebx
	movl	$-1, 56(%r14)
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -56(%rbp)
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	luaK_concat
	movl	-56(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_27:
	leaq	48(%r14), %r12
	movl	48(%r14), %eax
	leaq	52(%r14), %r15
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	shll	$6, %r13d
	movl	%r13d, %esi
	orl	$16386, %esi            # imm = 0x4002
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	callq	luaK_code
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	orl	$8388610, %r13d         # imm = 0x800002
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	luaK_code
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %edx
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %ebx
	jmp	.LBB18_28
.LBB18_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	48(%r14), %r12
	leaq	52(%r14), %r15
	movl	$-1, -52(%rbp)          # 4-byte Folded Spill
	movl	$-1, -48(%rbp)          # 4-byte Folded Spill
.LBB18_28:
	movl	(%r12), %r12d
	movl	%r12d, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB18_44
# %bb.29:
	movzbl	-44(%rbp), %eax         # 1-byte Folded Reload
	shll	$6, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB18_30
	.p2align	4, 0x90
.LBB18_43:                              #   in Loop: Header=BB18_30 Depth=1
	movl	(%r15), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %r13d
	addl	%r13d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB18_44
.LBB18_30:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r13d
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	%ebx, %rcx
	leaq	(%rax,%rcx,4), %r15
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	leal	-131070(%rcx,%rdx), %ebx
	cmovel	%esi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB18_33
# %bb.31:                               #   in Loop: Header=BB18_30 Depth=1
	movl	-4(%r15), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_32
.LBB18_33:                              #   in Loop: Header=BB18_30 Depth=1
	movq	%r15, %rcx
	jmp	.LBB18_34
	.p2align	4, 0x90
.LBB18_32:                              #   in Loop: Header=BB18_30 Depth=1
	leaq	-4(%r15), %rcx
	movl	%edx, %eax
.LBB18_34:                              #   in Loop: Header=BB18_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	notl	%r13d
	cmpl	$27, %edx
	jne	.LBB18_40
# %bb.35:                               #   in Loop: Header=BB18_30 Depth=1
	movl	%eax, %edx
	shrl	$23, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	$255, %esi
	je	.LBB18_38
# %bb.36:                               #   in Loop: Header=BB18_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jne	.LBB18_37
.LBB18_38:                              #   in Loop: Header=BB18_30 Depth=1
	shll	$6, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
	jmp	.LBB18_39
	.p2align	4, 0x90
.LBB18_40:                              #   in Loop: Header=BB18_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	-48(%rbp), %r13d        # 4-byte Folded Reload
	jmp	.LBB18_41
.LBB18_37:                              #   in Loop: Header=BB18_30 Depth=1
	andl	$-16321, %eax           # imm = 0xC03F
	orl	-64(%rbp), %eax         # 4-byte Folded Reload
.LBB18_39:                              #   in Loop: Header=BB18_30 Depth=1
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%r12d, %r13d
.LBB18_41:                              #   in Loop: Header=BB18_30 Depth=1
	movl	%r13d, %edi
	callq	abs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB18_43
# %bb.42:                               #   in Loop: Header=BB18_30 Depth=1
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_43
.LBB18_44:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	je	.LBB18_60
# %bb.45:
	movzbl	-44(%rbp), %eax         # 1-byte Folded Reload
	shll	$6, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB18_46
	.p2align	4, 0x90
.LBB18_59:                              #   in Loop: Header=BB18_46 Depth=1
	movl	(%r15), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	je	.LBB18_60
.LBB18_46:                              # =>This Inner Loop Header: Depth=1
	movl	%r13d, %ebx
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	%r13d, %rcx
	leaq	(%rax,%rcx,4), %r15
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	leal	-131070(%rcx,%rdx), %r13d
	cmovel	%esi, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB18_49
# %bb.47:                               #   in Loop: Header=BB18_46 Depth=1
	movl	-4(%r15), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_48
.LBB18_49:                              #   in Loop: Header=BB18_46 Depth=1
	movq	%r15, %rcx
	jmp	.LBB18_50
	.p2align	4, 0x90
.LBB18_48:                              #   in Loop: Header=BB18_46 Depth=1
	leaq	-4(%r15), %rcx
	movl	%edx, %eax
.LBB18_50:                              #   in Loop: Header=BB18_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	cmpl	$27, %edx
	jne	.LBB18_56
# %bb.51:                               #   in Loop: Header=BB18_46 Depth=1
	movl	%eax, %edx
	shrl	$23, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	$255, %esi
	je	.LBB18_54
# %bb.52:                               #   in Loop: Header=BB18_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jne	.LBB18_53
.LBB18_54:                              #   in Loop: Header=BB18_46 Depth=1
	shll	$6, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
	jmp	.LBB18_55
	.p2align	4, 0x90
.LBB18_56:                              #   in Loop: Header=BB18_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	-52(%rbp), %ebx         # 4-byte Folded Reload
	jmp	.LBB18_57
.LBB18_53:                              #   in Loop: Header=BB18_46 Depth=1
	andl	$-16321, %eax           # imm = 0xC03F
	orl	-48(%rbp), %eax         # 4-byte Folded Reload
.LBB18_55:                              #   in Loop: Header=BB18_46 Depth=1
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%r12d, %ebx
.LBB18_57:                              #   in Loop: Header=BB18_46 Depth=1
	movl	%ebx, %edi
	callq	abs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB18_59
# %bb.58:                               #   in Loop: Header=BB18_46 Depth=1
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_59
.LBB18_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB18_61:
	movq	$-1, 16(%r15)
	movl	%r13d, 8(%r15)
	movl	$12, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	exp2reg, .Lfunc_end18-exp2reg
                                        # -- End function
	.hidden	luaK_exp2anyreg         # -- Begin function luaK_exp2anyreg
	.globl	luaK_exp2anyreg
	.p2align	4, 0x90
	.type	luaK_exp2anyreg,@function
luaK_exp2anyreg:                        # @luaK_exp2anyreg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_1
# %bb.3:
	movl	8(%rbx), %eax
	movl	16(%rbx), %ecx
	cmpl	20(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_7
# %bb.4:
	leaq	8(%rbx), %r15
	movzbl	74(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB19_2
# %bb.5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	exp2reg
	jmp	.LBB19_6
.LBB19_1:
	leaq	8(%rbx), %r15
.LBB19_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB19_6:
	movl	(%r15), %eax
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	luaK_exp2anyreg, .Lfunc_end19-luaK_exp2anyreg
                                        # -- End function
	.hidden	luaK_exp2val            # -- Begin function luaK_exp2val
	.globl	luaK_exp2val
	.p2align	4, 0x90
	.type	luaK_exp2val,@function
luaK_exp2val:                           # @luaK_exp2val
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	16(%rsi), %eax
	cmpl	20(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_1
# %bb.7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	jmp	.LBB20_8
.LBB20_1:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_5
# %bb.2:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_6
# %bb.3:
	movzbl	74(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jge	.LBB20_4
.LBB20_5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB20_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB20_4:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB20_6
.Lfunc_end20:
	.size	luaK_exp2val, .Lfunc_end20-luaK_exp2val
                                        # -- End function
	.hidden	luaK_exp2RK             # -- Begin function luaK_exp2RK
	.globl	luaK_exp2RK
	.p2align	4, 0x90
	.type	luaK_exp2RK,@function
luaK_exp2RK:                            # @luaK_exp2RK
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	luaK_exp2val
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB21_3
# %bb.1:
	cmpl	$4, %eax
	je	.LBB21_6
# %bb.2:
	cmpl	$5, %eax
	jne	.LBB21_8
.LBB21_3:
	cmpl	$255, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB21_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB21_16
# %bb.5:
	movl	$0, -48(%rbp)
	movq	8(%r14), %rax
	movq	%rax, -40(%rbp)
	movl	$5, -32(%rbp)
	leaq	-40(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%r14, %rdi
	jmp	.LBB21_20
.LBB21_6:
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	jle	.LBB21_21
.LBB21_8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_12
# %bb.9:
	movl	8(%rbx), %eax
	movl	16(%rbx), %ecx
	cmpl	20(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB21_15
# %bb.10:
	leaq	8(%rbx), %r15
	movzbl	74(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB21_13
# %bb.11:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	exp2reg
	jmp	.LBB21_14
.LBB21_12:
	leaq	8(%rbx), %r15
.LBB21_13:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB21_14:
	movl	(%r15), %eax
.LBB21_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_22
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB21_18
# %bb.17:
	movq	8(%rbx), %rax
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	jmp	.LBB21_19
.LBB21_18:
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	sete	%cl
	movl	%ecx, -40(%rbp)
	movl	$1, -32(%rbp)
.LBB21_19:
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rdx, %rsi
.LBB21_20:
	callq	addk
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%rbx)
	movl	$4, (%rbx)
.LBB21_21:
	orl	$256, %eax              # imm = 0x100
.LBB21_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	luaK_exp2RK, .Lfunc_end21-luaK_exp2RK
                                        # -- End function
	.hidden	luaK_storevar           # -- Begin function luaK_storevar
	.globl	luaK_storevar
	.p2align	4, 0x90
	.type	luaK_storevar,@function
luaK_storevar:                          # @luaK_storevar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-6, %eax
	cmpl	$3, %eax
	ja	.LBB22_26
# %bb.1:
	movq	%rsi, %r15
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_2:
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB22_7
# %bb.3:
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB22_6
# %bb.4:
	movzbl	74(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB22_6
# %bb.5:
	addl	$-1, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB22_32
.LBB22_16:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB22_17
# %bb.19:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_23
# %bb.20:
	leaq	8(%rbx), %r12
	movzbl	74(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jl	.LBB22_18
# %bb.21:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB22_22
.LBB22_24:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2RK
	movl	8(%r15), %esi
	movl	12(%r15), %ecx
	shll	$6, %esi
	shll	$23, %ecx
	shll	$14, %eax
	orl	%eax, %esi
	orl	%ecx, %esi
	orl	$9, %esi
	jmp	.LBB22_25
.LBB22_8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB22_9
# %bb.11:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_15
# %bb.12:
	leaq	8(%rbx), %r12
	movzbl	74(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jl	.LBB22_10
# %bb.13:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB22_14
.LBB22_17:
	leaq	8(%rbx), %r12
.LBB22_18:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB22_22:
	movl	(%r12), %edx
.LBB22_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %esi
	shll	$6, %edx
	shll	$14, %esi
	orl	%edx, %esi
	orl	$7, %esi
	jmp	.LBB22_25
.LBB22_9:
	leaq	8(%rbx), %r12
.LBB22_10:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB22_14:
	movl	(%r12), %edx
.LBB22_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %esi
	shll	$6, %edx
	shll	$23, %esi
	orl	%edx, %esi
	orl	$8, %esi
.LBB22_25:
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_26:
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB22_31
# %bb.27:
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB22_30
# %bb.28:
	movzbl	74(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB22_30
# %bb.29:
	addl	$-1, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	luaK_storevar, .Lfunc_end22-luaK_storevar
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI22_0:
	.quad	.LBB22_2
	.quad	.LBB22_8
	.quad	.LBB22_16
	.quad	.LBB22_24
                                        # -- End function
	.text
	.hidden	luaK_self               # -- Begin function luaK_self
	.globl	luaK_self
	.p2align	4, 0x90
	.type	luaK_self,@function
luaK_self:                              # @luaK_self
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
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	luaK_dischargevars
	cmpl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_4
# %bb.1:
	movl	8(%r14), %edx
	movl	16(%r14), %eax
	cmpl	20(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_5
# %bb.2:
	movzbl	74(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jge	.LBB23_3
.LBB23_4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2nextreg
.LBB23_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_10
# %bb.6:
	movl	8(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB23_9
# %bb.7:
	movzbl	74(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB23_9
# %bb.8:
	addl	$-1, 60(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	60(%r12), %r13d
	leal	2(%r13), %ebx
	movq	(%r12), %rax
	movzbl	115(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jle	.LBB23_15
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$248, %r13d
	jl	.LBB23_12
# %bb.13:
	movq	24(%r12), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rax
	addq	$115, %rax
	movl	60(%r12), %ecx
	addl	$2, %ecx
	jmp	.LBB23_14
.LBB23_12:
	addq	$115, %rax
	movl	%ebx, %ecx
.LBB23_14:
	movb	%bl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
.LBB23_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 60(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r14), %ebx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2RK
	movl	%r13d, %ecx
	shll	$6, %ecx
	shll	$23, %ebx
	orl	%ecx, %ebx
	shll	$14, %eax
	orl	%eax, %ebx
	orl	$11, %ebx
	movq	24(%r12), %rax
	movl	8(%rax), %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_20
# %bb.16:
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB23_19
# %bb.17:
	movzbl	74(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB23_19
# %bb.18:
	addl	$-1, 60(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, 8(%r14)
	movl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_3:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	exp2reg
	jmp	.LBB23_5
.Lfunc_end23:
	.size	luaK_self, .Lfunc_end23-luaK_self
                                        # -- End function
	.hidden	luaK_goiftrue           # -- Begin function luaK_goiftrue
	.globl	luaK_goiftrue
	.p2align	4, 0x90
	.type	luaK_goiftrue,@function
luaK_goiftrue:                          # @luaK_goiftrue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	luaK_dischargevars
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	leal	-4(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB24_9
# %bb.1:
	cmpl	$2, %eax
	je	.LBB24_9
# %bb.2:
	cmpl	$10, %eax
	jne	.LBB24_8
# %bb.3:
	movslq	8(%r14), %rcx
	movq	(%rbx), %rdx
	leaq	(,%rcx,4), %rax
	addq	24(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB24_6
# %bb.4:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	andl	$63, %edx
	cmpb	$0, luaP_opmodes(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB24_5
.LBB24_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	jmp	.LBB24_7
.LBB24_8:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	jumponcond
	movl	%eax, %edx
	jmp	.LBB24_9
.LBB24_5:
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB24_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andl	$-16321, %edx           # imm = 0xC03F
	xorl	%esi, %esi
	testl	$16320, %ecx            # imm = 0x3FC0
	sete	%sil
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r14), %edx
.LBB24_9:
	movl	$42, __A_VARIABLE(%rip)
	leaq	20(%r14), %rsi
	movq	%rbx, %rdi
	callq	luaK_concat
	movl	16(%r14), %edx
	movl	48(%rbx), %eax
	movl	%eax, 52(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rbx), %rsi
	movq	%rbx, %rdi
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	luaK_goiftrue, .Lfunc_end24-luaK_goiftrue
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function jumponcond
	.type	jumponcond,@function
jumponcond:                             # @jumponcond
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %eax
	jne	.LBB25_7
# %bb.1:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movslq	8(%r15), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19, %ecx
	jne	.LBB25_2
# %bb.6:
	addl	$-1, 48(%rbx)
	shrl	$17, %eax
	andl	$-64, %eax
	xorl	%esi, %esi
	testl	%r14d, %r14d
	sete	%sil
	shll	$14, %esi
	orl	%eax, %esi
	orl	$26, %esi
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	56(%rbx), %r14d
	movl	$-1, 56(%rbx)
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -36(%rbp)
	leaq	-36(%rbp), %rsi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	luaK_concat
	movl	-36(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_18
.LBB25_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %eax
	jne	.LBB25_3
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_9
.LBB25_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_3:
	movl	60(%rbx), %ecx
	leal	1(%rcx), %r12d
	movq	(%rbx), %rax
	movzbl	115(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB25_15
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$249, %ecx
	jl	.LBB25_5
# %bb.13:
	movq	24(%rbx), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	addq	$115, %rax
	movl	60(%rbx), %ecx
	addl	$1, %ecx
	jmp	.LBB25_14
.LBB25_5:
	addq	$115, %rax
	movl	%r12d, %ecx
.LBB25_14:
	movb	%r12b, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r12d
.LBB25_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	discharge2reg
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_16
.LBB25_9:
	movl	8(%r15), %eax
	addq	$8, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB25_12
# %bb.10:
	movzbl	74(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB25_12
# %bb.11:
	addl	$-1, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_17
.LBB25_16:
	addq	$8, %r15
.LBB25_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %eax
	shll	$23, %eax
	shll	$14, %r14d
	orl	%eax, %r14d
	orl	$16347, %r14d           # imm = 0x3FDB
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	56(%rbx), %r14d
	movl	$-1, 56(%rbx)
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	luaK_concat
	movl	-40(%rbp), %eax
.LBB25_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	jumponcond, .Lfunc_end25-jumponcond
                                        # -- End function
	.hidden	luaK_indexed            # -- Begin function luaK_indexed
	.globl	luaK_indexed
	.p2align	4, 0x90
	.type	luaK_indexed,@function
luaK_indexed:                           # @luaK_indexed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdx, %rsi
	callq	luaK_exp2RK
	movl	%eax, 12(%rbx)
	movl	$9, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	luaK_indexed, .Lfunc_end26-luaK_indexed
                                        # -- End function
	.hidden	luaK_prefix             # -- Begin function luaK_prefix
	.globl	luaK_prefix
	.p2align	4, 0x90
	.type	luaK_prefix,@function
luaK_prefix:                            # @luaK_prefix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	$-1, -32(%rbp)
	movl	$5, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	je	.LBB27_38
# %bb.1:
	cmpl	$1, %esi
	je	.LBB27_14
# %bb.2:
	testl	%esi, %esi
	jne	.LBB27_46
# %bb.3:
	cmpl	$5, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_5
# %bb.4:
	cmpl	$-1, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB27_6
.LBB27_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_11
# %bb.8:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB27_12
# %bb.9:
	movzbl	74(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jge	.LBB27_10
.LBB27_11:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB27_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_13:
	leaq	-48(%rbp), %rcx
	movq	%r14, %rdi
	movl	$18, %esi
	jmp	.LBB27_44
.LBB27_38:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_42
# %bb.39:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB27_43
# %bb.40:
	movzbl	74(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jge	.LBB27_41
.LBB27_42:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB27_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rcx
	movq	%r14, %rdi
	movl	$20, %esi
.LBB27_44:
	movq	%rbx, %rdx
	callq	codearith
	jmp	.LBB27_45
.LBB27_14:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rax), %ecx
	cmpl	$11, %ecx
	ja	.LBB27_37
# %bb.15:
	jmpq	*.LJTI27_0(,%rcx,8)
.LBB27_17:
	movl	$3, (%rbx)
	jmp	.LBB27_36
.LBB27_16:
	movl	$2, (%rbx)
	jmp	.LBB27_36
.LBB27_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %eax
	jne	.LBB27_25
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_31
.LBB27_6:
	cmpl	$-1, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_7
	jmp	.LBB27_13
.LBB27_41:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB27_43
.LBB27_10:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB27_12
.LBB27_18:
	movslq	8(%rbx), %rcx
	movq	(%r14), %rdx
	leaq	(,%rcx,4), %rax
	addq	24(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB27_21
# %bb.19:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	andl	$63, %edx
	cmpb	$0, luaP_opmodes(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB27_20
.LBB27_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	jmp	.LBB27_22
.LBB27_25:
	movl	60(%r14), %ecx
	leal	1(%rcx), %r15d
	movq	(%r14), %rax
	movzbl	115(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB27_30
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$249, %ecx
	jl	.LBB27_27
# %bb.28:
	movq	24(%r14), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	addq	$115, %rax
	movl	60(%r14), %ecx
	addl	$1, %ecx
	jmp	.LBB27_29
.LBB27_20:
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB27_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andl	$-16321, %edx           # imm = 0xC03F
	xorl	%esi, %esi
	testl	$16320, %ecx            # imm = 0x3FC0
	sete	%sil
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_36
.LBB27_27:
	addq	$115, %rax
	movl	%r15d, %ecx
.LBB27_29:
	movb	%r15b, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r15d
.LBB27_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	discharge2reg
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_35
.LBB27_31:
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB27_34
# %bb.32:
	movzbl	74(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jl	.LBB27_34
# %bb.33:
	addl	$-1, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %esi
	shll	$23, %esi
	orl	$19, %esi
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%rbx)
	movl	$11, (%rbx)
.LBB27_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_37:
	movl	16(%rbx), %esi
	movl	20(%rbx), %eax
	movl	%esi, 20(%rbx)
	movl	%eax, 16(%rbx)
	movq	%r14, %rdi
	callq	removevalues
	movl	16(%rbx), %esi
	movq	%r14, %rdi
	callq	removevalues
	movl	$42, __A_VARIABLE(%rip)
.LBB27_45:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_46:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	luaK_prefix, .Lfunc_end27-luaK_prefix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI27_0:
	.quad	.LBB27_16
	.quad	.LBB27_17
	.quad	.LBB27_16
	.quad	.LBB27_17
	.quad	.LBB27_17
	.quad	.LBB27_37
	.quad	.LBB27_37
	.quad	.LBB27_37
	.quad	.LBB27_37
	.quad	.LBB27_18
	.quad	.LBB27_23
	.quad	.LBB27_23
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function codearith
.LCPI28_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.p2align	4, 0x90
	.type	codearith,@function
codearith:                              # @codearith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %r15d
	movq	%rdi, %r14
	cmpl	$5, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_2
# %bb.1:
	cmpl	$-1, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_5
.LBB28_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$18, %r15d
	je	.LBB28_26
# %bb.4:
	cmpl	$20, %r15d
	je	.LBB28_26
.LBB28_25:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2RK
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB28_26:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jle	.LBB28_34
# %bb.27:
	cmpl	$12, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_32
# %bb.28:
	movl	8(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB28_31
# %bb.29:
	movzbl	74(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB28_31
# %bb.30:
	addl	$-1, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_32:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_45
# %bb.33:
	movl	8(%r12), %ecx
	jmp	.LBB28_41
.LBB28_34:
	cmpl	$12, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_39
# %bb.35:
	movl	8(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB28_38
# %bb.36:
	movzbl	74(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB28_38
# %bb.37:
	addl	$-1, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_39:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_45
# %bb.40:
	movl	8(%r13), %ecx
.LBB28_41:
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB28_44
# %bb.42:
	movzbl	74(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB28_44
# %bb.43:
	addl	$-1, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$23, %eax
	shll	$14, %ebx
	orl	%r15d, %ebx
	orl	%eax, %ebx
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%r13)
	movl	$11, (%r13)
.LBB28_46:
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
.LBB28_5:
	cmpl	$-1, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_3
# %bb.6:
	cmpl	$5, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_2
# %bb.7:
	cmpl	$-1, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_2
# %bb.8:
	cmpl	$-1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_3
# %bb.9:
	movsd	8(%r13), %xmm2          # xmm2 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	leal	-12(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB28_20
# %bb.10:
	jmpq	*.LJTI28_0(,%rax,8)
.LBB28_21:
	addsd	%xmm1, %xmm2
	jmp	.LBB28_22
.LBB28_11:
	subsd	%xmm1, %xmm2
	jmp	.LBB28_22
.LBB28_12:
	mulsd	%xmm1, %xmm2
	jmp	.LBB28_22
.LBB28_13:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB28_14
	jnp	.LBB28_24
.LBB28_14:
	divsd	%xmm1, %xmm2
	jmp	.LBB28_22
.LBB28_15:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB28_16
	jp	.LBB28_16
.LBB28_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_25
.LBB28_17:
	movapd	%xmm2, %xmm0
	callq	pow
	movapd	%xmm0, %xmm2
	jmp	.LBB28_22
.LBB28_18:
	xorpd	.LCPI28_0(%rip), %xmm2
	jmp	.LBB28_22
.LBB28_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm2, %xmm2
	jmp	.LBB28_23
.LBB28_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB28_26
.LBB28_16:
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm2, -64(%rbp)        # 16-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	floor
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	subsd	%xmm0, %xmm2
.LBB28_22:
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm2, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jp	.LBB28_3
.LBB28_23:
	movsd	%xmm2, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_46
.Lfunc_end28:
	.size	codearith, .Lfunc_end28-codearith
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_21
	.quad	.LBB28_11
	.quad	.LBB28_12
	.quad	.LBB28_13
	.quad	.LBB28_15
	.quad	.LBB28_17
	.quad	.LBB28_18
	.quad	.LBB28_20
	.quad	.LBB28_19
                                        # -- End function
	.text
	.hidden	luaK_infix              # -- Begin function luaK_infix
	.globl	luaK_infix
	.p2align	4, 0x90
	.type	luaK_infix,@function
luaK_infix:                             # @luaK_infix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %esi
	ja	.LBB29_14
# %bb.1:
	movl	%esi, %eax
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_10:
	cmpl	$5, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_12
# %bb.11:
	cmpl	$-1, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_13
.LBB29_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_14:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2RK
.LBB29_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB29_13:
	cmpl	$-1, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_14
	jmp	.LBB29_16
.LBB29_9:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
	jmp	.LBB29_15
.LBB29_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_goiftrue
	jmp	.LBB29_15
.LBB29_3:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	cmpl	$1, %eax
	je	.LBB29_8
# %bb.4:
	cmpl	$3, %eax
	je	.LBB29_8
# %bb.5:
	cmpl	$10, %eax
	jne	.LBB29_7
# %bb.6:
	movl	8(%rbx), %edx
	jmp	.LBB29_8
.LBB29_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	jumponcond
	movl	%eax, %edx
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rbx), %rsi
	movq	%r14, %rdi
	callq	luaK_concat
	movl	20(%rbx), %edx
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%r14), %rsi
	movq	%r14, %rdi
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_15
.Lfunc_end29:
	.size	luaK_infix, .Lfunc_end29-luaK_infix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI29_0:
	.quad	.LBB29_10
	.quad	.LBB29_10
	.quad	.LBB29_10
	.quad	.LBB29_10
	.quad	.LBB29_10
	.quad	.LBB29_10
	.quad	.LBB29_9
	.quad	.LBB29_14
	.quad	.LBB29_14
	.quad	.LBB29_14
	.quad	.LBB29_14
	.quad	.LBB29_14
	.quad	.LBB29_14
	.quad	.LBB29_2
	.quad	.LBB29_3
                                        # -- End function
	.text
	.hidden	luaK_posfix             # -- Begin function luaK_posfix
	.globl	luaK_posfix
	.p2align	4, 0x90
	.type	luaK_posfix,@function
luaK_posfix:                            # @luaK_posfix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %esi
	ja	.LBB30_31
# %bb.1:
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	%esi, %eax
	jmpq	*.LJTI30_0(,%rax,8)
.LBB30_2:
	movq	%rbx, %rdi
	movl	$12, %esi
	jmp	.LBB30_29
.LBB30_3:
	movq	%rbx, %rdi
	movl	$13, %esi
	jmp	.LBB30_29
.LBB30_4:
	movq	%rbx, %rdi
	movl	$14, %esi
	jmp	.LBB30_29
.LBB30_5:
	movq	%rbx, %rdi
	movl	$15, %esi
	jmp	.LBB30_29
.LBB30_6:
	movq	%rbx, %rdi
	movl	$16, %esi
	jmp	.LBB30_29
.LBB30_7:
	movq	%rbx, %rdi
	movl	$17, %esi
	jmp	.LBB30_29
.LBB30_8:
	movq	%rbx, %rdi
	movl	$23, %esi
	jmp	.LBB30_12
.LBB30_9:
	movq	%rbx, %rdi
	movl	$24, %esi
	jmp	.LBB30_26
.LBB30_10:
	movq	%rbx, %rdi
	movl	$24, %esi
	jmp	.LBB30_12
.LBB30_11:
	movq	%rbx, %rdi
	movl	$25, %esi
.LBB30_12:
	xorl	%edx, %edx
	jmp	.LBB30_27
.LBB30_13:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_dischargevars
	leaq	20(%r15), %rsi
	movl	20(%r14), %edx
	jmp	.LBB30_15
.LBB30_14:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_dischargevars
	leaq	16(%r15), %rsi
	movl	16(%r14), %edx
.LBB30_15:
	movq	%rbx, %rdi
	callq	luaK_concat
	movq	16(%r15), %rax
	movq	%rax, 16(%r14)
	movups	(%r15), %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB30_30
.LBB30_16:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2val
	cmpl	$11, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_28
# %bb.17:
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movslq	8(%r15), %rcx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, %esi
	andl	$63, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$21, %esi
	jne	.LBB30_28
# %bb.18:
	leaq	(%rdx,%rcx,4), %rcx
	cmpl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_23
# %bb.19:
	movl	8(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %esi              # imm = 0x100
	jne	.LBB30_22
# %bb.20:
	movzbl	74(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %esi
	jl	.LBB30_22
# %bb.21:
	addl	$-1, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%r15), %rax
	leaq	(%rdx,%rax,4), %rcx
	movl	(%rdx,%rax,4), %eax
.LBB30_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_23:
	movl	$42, __A_VARIABLE(%rip)
	andl	$8388607, %eax          # imm = 0x7FFFFF
	movl	8(%r14), %edx
	shll	$23, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movl	$11, (%r14)
	movl	8(%r15), %eax
	movl	%eax, 8(%r14)
	jmp	.LBB30_30
.LBB30_24:
	movq	%rbx, %rdi
	movl	$23, %esi
	jmp	.LBB30_26
.LBB30_25:
	movq	%rbx, %rdi
	movl	$25, %esi
.LBB30_26:
	movl	$1, %edx
.LBB30_27:
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	codecomp
	jmp	.LBB30_30
.LBB30_28:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2nextreg
	movq	%rbx, %rdi
	movl	$21, %esi
.LBB30_29:
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	codearith
.LBB30_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_31:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	luaK_posfix, .Lfunc_end30-luaK_posfix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI30_0:
	.quad	.LBB30_2
	.quad	.LBB30_3
	.quad	.LBB30_4
	.quad	.LBB30_5
	.quad	.LBB30_6
	.quad	.LBB30_7
	.quad	.LBB30_16
	.quad	.LBB30_8
	.quad	.LBB30_24
	.quad	.LBB30_9
	.quad	.LBB30_25
	.quad	.LBB30_10
	.quad	.LBB30_11
	.quad	.LBB30_13
	.quad	.LBB30_14
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function codecomp
	.type	codecomp,@function
codecomp:                               # @codecomp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r15
	movq	%rcx, %r14
	movl	%edx, %r12d
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rdi, %rbx
	movq	%rcx, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r13d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_5
# %bb.1:
	movl	8(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB31_4
# %bb.2:
	movzbl	74(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB31_4
# %bb.3:
	addl	$-1, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_10
# %bb.6:
	movl	8(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB31_9
# %bb.7:
	movzbl	74(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jl	.LBB31_9
# %bb.8:
	addl	$-1, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	$23, %ecx
	je	.LBB31_11
# %bb.12:
	testl	%r12d, %r12d
	jne	.LBB31_11
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	movl	%eax, %esi
	jmp	.LBB31_14
.LBB31_11:
	movl	%r13d, %esi
	movl	%eax, %r13d
.LBB31_14:
	shll	$6, %r12d
	shll	$23, %esi
	shll	$14, %r13d
	orl	%r12d, %r13d
	orl	%ecx, %esi
	orl	%r13d, %esi
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	56(%rbx), %r15d
	movl	$-1, 56(%rbx)
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -44(%rbp)
	leaq	-44(%rbp), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	luaK_concat
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%r14)
	movl	$10, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	codecomp, .Lfunc_end31-codecomp
                                        # -- End function
	.hidden	luaK_fixline            # -- Begin function luaK_fixline
	.globl	luaK_fixline
	.p2align	4, 0x90
	.type	luaK_fixline,@function
luaK_fixline:                           # @luaK_fixline
# %bb.0:
	movq	(%rdi), %rax
	movq	40(%rax), %rax
	movslq	48(%rdi), %rcx
	movl	%esi, -4(%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end32:
	.size	luaK_fixline, .Lfunc_end32-luaK_fixline
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaK_code
	.type	luaK_code,@function
luaK_code:                              # @luaK_code
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r15d
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %r12
	movq	(%rdi), %r13
	movl	56(%rdi), %ebx
	movl	48(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB33_13
# %bb.1:
	movl	%r15d, -48(%rbp)        # 4-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rax
	.p2align	4, 0x90
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rax), %rax
	movslq	%ebx, %rcx
	leaq	(%rax,%rcx,4), %r13
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	leal	-131070(%rcx,%rdx), %r15d
	cmovel	%esi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB33_5
# %bb.3:                                #   in Loop: Header=BB33_2 Depth=1
	movl	-4(%r13), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB33_4
.LBB33_5:                               #   in Loop: Header=BB33_2 Depth=1
	movq	%r13, %rcx
	jmp	.LBB33_6
	.p2align	4, 0x90
.LBB33_4:                               #   in Loop: Header=BB33_2 Depth=1
	leaq	-4(%r13), %rcx
	movl	%edx, %eax
.LBB33_6:                               #   in Loop: Header=BB33_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %edx
	jne	.LBB33_8
# %bb.7:                                #   in Loop: Header=BB33_2 Depth=1
	movl	%eax, %edx
	shrl	$17, %edx
	andl	$-64, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB33_8:                               #   in Loop: Header=BB33_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	addl	%r14d, %ebx
	movl	%ebx, %edi
	callq	abs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB33_10
# %bb.9:                                #   in Loop: Header=BB33_2 Depth=1
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB33_10:                              #   in Loop: Header=BB33_2 Depth=1
	movl	(%r13), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB33_12
# %bb.11:                               #   in Loop: Header=BB33_2 Depth=1
	movq	(%r12), %rax
	movl	%r15d, %ebx
	jmp	.LBB33_2
.LBB33_12:
	movl	48(%r12), %r14d
	movl	-48(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB33_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	80(%r13), %r14d
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB33_15
# %bb.14:
	movq	24(%r13), %rax
	jmp	.LBB33_16
.LBB33_15:
	leaq	80(%r13), %rdx
	movq	32(%r12), %rdi
	movq	24(%r13), %rsi
	movl	$4, %ecx
	movl	$.L.str.3, %r9d
	movl	$2147483645, %r8d       # imm = 0x7FFFFFFD
	callq	luaM_growaux_
	movq	%rax, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r12), %r14d
.LBB33_16:
	movl	-44(%rbp), %edx         # 4-byte Reload
	movslq	%r14d, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	48(%r12), %ecx
	cmpl	84(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB33_18
# %bb.17:
	movq	40(%r13), %rax
	jmp	.LBB33_19
.LBB33_18:
	leaq	84(%r13), %rdx
	movq	32(%r12), %rdi
	movq	40(%r13), %rsi
	movl	$4, %ecx
	movl	$.L.str.3, %r9d
	movl	$2147483645, %r8d       # imm = 0x7FFFFFFD
	callq	luaM_growaux_
	movq	%rax, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r12), %ecx
.LBB33_19:
	movslq	%ecx, %rcx
	movl	%r15d, (%rax,%rcx,4)
	movl	48(%r12), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	luaK_code, .Lfunc_end33-luaK_code
                                        # -- End function
	.hidden	luaK_setlist            # -- Begin function luaK_setlist
	.globl	luaK_setlist
	.p2align	4, 0x90
	.type	luaK_setlist,@function
luaK_setlist:                           # @luaK_setlist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
                                        # kill: def $edx killed $edx def $rdx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leal	-1(%rdx), %eax
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rsi
	sarq	$36, %rsi
	shrq	$63, %rax
	leal	(%rsi,%rax), %r15d
	addl	$1, %r15d
	movl	%r14d, %eax
	shll	$6, %eax
	movl	%ecx, %edi
	shll	$23, %edi
	xorl	%esi, %esi
	cmpl	$-1, %ecx
	cmovnel	%edi, %esi
	orl	%eax, %esi
	orl	$34, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25550, %edx            # imm = 0x63CE
	jg	.LBB34_2
# %bb.1:
	shll	$14, %r15d
	orl	%r15d, %esi
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_3
.LBB34_2:
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	luaK_code
.LBB34_3:
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r14d
	movl	%r14d, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	luaK_setlist, .Lfunc_end34-luaK_setlist
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function discharge2reg
	.type	discharge2reg,@function
discharge2reg:                          # @discharge2reg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	luaK_dischargevars
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rax), %ecx
	cmpl	$11, %ecx
	ja	.LBB35_13
# %bb.1:
	jmpq	*.LJTI35_0(,%rcx,8)
.LBB35_3:
	xorl	%esi, %esi
	cmpl	$2, %eax
	sete	%sil
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$23, %esi
	orl	%eax, %esi
	orl	$2, %esi
	jmp	.LBB35_10
.LBB35_7:
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	$-16321, %edx           # imm = 0xC03F
	andl	(%rax,%rcx,4), %edx
	movzbl	%r14b, %esi
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax,%rcx,4)
	jmp	.LBB35_11
.LBB35_8:
	movl	8(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %esi
	je	.LBB35_12
# %bb.9:
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$23, %esi
	orl	%eax, %esi
	jmp	.LBB35_10
.LBB35_2:
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	$1, %edx
	callq	luaK_nil
	jmp	.LBB35_11
.LBB35_4:
	movl	8(%rbx), %esi
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$14, %esi
	jmp	.LBB35_5
.LBB35_6:
	movq	8(%rbx), %rax
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	leaq	-40(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rdx, %rsi
	callq	addk
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
	shll	$6, %esi
	shll	$14, %eax
.LBB35_5:
	orl	%eax, %esi
	orl	$1, %esi
.LBB35_10:
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
.LBB35_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB35_12:
	movl	%r14d, 8(%rbx)
	movl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB35_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	discharge2reg, .Lfunc_end35-discharge2reg
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_2
	.quad	.LBB35_3
	.quad	.LBB35_3
	.quad	.LBB35_4
	.quad	.LBB35_6
	.quad	.LBB35_13
	.quad	.LBB35_13
	.quad	.LBB35_13
	.quad	.LBB35_13
	.quad	.LBB35_13
	.quad	.LBB35_7
	.quad	.LBB35_8
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function removevalues
	.type	removevalues,@function
removevalues:                           # @removevalues
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB36_11
# %bb.1:
	movq	(%rdi), %rax
	movq	24(%rax), %r8
	.p2align	4, 0x90
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	movslq	%esi, %rdx
	leaq	(%r8,%rdx,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB36_5
# %bb.3:                                #   in Loop: Header=BB36_2 Depth=1
	movl	-4(%rcx), %edx
	movl	%edx, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB36_4
.LBB36_5:                               #   in Loop: Header=BB36_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	movq	%rcx, %rdi
	jmp	.LBB36_6
	.p2align	4, 0x90
.LBB36_4:                               #   in Loop: Header=BB36_2 Depth=1
	leaq	-4(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB36_6:                               #   in Loop: Header=BB36_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andl	$63, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %eax
	jne	.LBB36_8
# %bb.7:                                #   in Loop: Header=BB36_2 Depth=1
	movl	%edx, %eax
	shrl	$17, %eax
	andl	$-64, %eax
	andl	$8372224, %edx          # imm = 0x7FC000
	orl	%eax, %edx
	orl	$26, %edx
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_8:                               #   in Loop: Header=BB36_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %ecx
	shrl	$14, %ecx
	addl	$-131071, %ecx          # imm = 0xFFFE0001
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	je	.LBB36_9
# %bb.10:                               #   in Loop: Header=BB36_2 Depth=1
	addl	%ecx, %esi
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	jne	.LBB36_2
.LBB36_11:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB36_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end36:
	.size	removevalues, .Lfunc_end36-removevalues
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function or expression too complex"
	.size	.L.str, 35

	.hidden	luaP_opmodes
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"control structure too long"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"constant table overflow"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"code size overflow"
	.size	.L.str.3, 19

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaX_syntaxerror
	.hidden	luaH_set
	.hidden	luaM_growaux_
	.hidden	luaC_barrierf
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
