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
	jle	.LBB0_3
# %bb.1:
	testl	%eax, %eax
	je	.LBB0_2
# %bb.4:
	movq	(%rdi), %rcx
	movq	24(%rcx), %r8
	movl	-4(%r8,%rax,4), %r10d
	movl	%r10d, %ecx
	andl	$63, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_3
# %bb.5:
	movl	%r10d, %ecx
	shrl	$6, %ecx
	movzbl	%cl, %ecx
	cmpl	%esi, %ecx
	jg	.LBB0_3
# %bb.6:
	movl	%r10d, %r9d
	shrl	$23, %r9d
	leal	1(%r9), %ecx
	cmpl	%esi, %ecx
	jl	.LBB0_3
# %bb.7:
	addl	%esi, %edx
	addl	$-1, %edx
	cmpl	%r9d, %edx
	jle	.LBB0_9
# %bb.8:
	andl	$8388607, %r10d         # imm = 0x7FFFFF
	shll	$23, %edx
	orl	%r10d, %edx
	movl	%edx, -4(%r8,%rax,4)
	jmp	.LBB0_9
.LBB0_2:
	movzbl	74(%rdi), %eax
	cmpl	%esi, %eax
	jle	.LBB0_9
.LBB0_3:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movl	56(%rdi), %r15d
	movl	$-1, 56(%rdi)
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB2_8
# %bb.1:
	cmpl	$-1, %r14d
	je	.LBB2_2
# %bb.3:
	movq	(%r12), %rax
	movq	24(%rax), %r13
	movl	%r14d, %ecx
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB2_4
# %bb.5:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB2_7
# %bb.6:
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB2_7:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_8
.LBB2_2:
	movl	%r15d, %r14d
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r12
	pushq	%rbx
	cmpl	$-1, %edx
	je	.LBB4_7
# %bb.1:
	movl	(%rsi), %eax
	cmpl	$-1, %eax
	je	.LBB4_8
# %bb.2:
	movq	%rdi, %r14
	movq	(%rdi), %rcx
	movq	24(%rcx), %r15
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	movslq	%eax, %rbx
	movl	(%r15,%rbx,4), %eax
	shrl	$14, %eax
	leal	-131071(%rax), %ecx
	cmpl	$-1, %ecx
	leal	-131070(%rbx,%rax), %eax
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB4_3
# %bb.4:
	notl	%r12d
	addl	%edx, %r12d
	movl	%r12d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB4_6
# %bb.5:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB4_6:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r15,%rbx,4), %eax
	shll	$14, %r12d
	addl	%r12d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_7
.LBB4_8:
	movl	%edx, (%rsi)
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
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
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r14
	cmpl	%edx, 48(%rdi)
	jne	.LBB7_10
# %bb.1:
	movl	%r15d, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB7_8
# %bb.2:
	movl	56(%r14), %eax
	cmpl	$-1, %eax
	je	.LBB7_20
# %bb.3:
	movq	(%r14), %rcx
	movq	24(%rcx), %r15
	.p2align	4, 0x90
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	movslq	%eax, %rbx
	movl	(%r15,%rbx,4), %eax
	shrl	$14, %eax
	leal	-131071(%rax), %ecx
	cmpl	$-1, %ecx
	leal	-131070(%rbx,%rax), %eax
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB7_4
# %bb.5:
	notl	%r13d
	addl	%r12d, %r13d
	movl	%r13d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB7_7
# %bb.6:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB7_7:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r15,%rbx,4), %eax
	shll	$14, %r13d
	addl	%r13d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_8
	.p2align	4, 0x90
.LBB7_19:                               #   in Loop: Header=BB7_10 Depth=1
	movl	(%r13), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %r12d
	je	.LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=1
	movl	%r12d, %ebx
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	%r12d, %rcx
	leaq	(%rax,%rcx,4), %r13
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %r12d
	cmovel	%esi, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB7_14
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=1
	movl	-4(%r13), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	js	.LBB7_13
.LBB7_14:                               #   in Loop: Header=BB7_10 Depth=1
	movq	%r13, %rcx
	jmp	.LBB7_15
	.p2align	4, 0x90
.LBB7_13:                               #   in Loop: Header=BB7_10 Depth=1
	leaq	-4(%r13), %rcx
	movl	%edx, %eax
.LBB7_15:                               #   in Loop: Header=BB7_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	cmpl	$27, %edx
	jne	.LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_10 Depth=1
	movl	%eax, %edx
	shrl	$17, %edx
	andl	$-64, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
	movl	%eax, (%rcx)
.LBB7_17:                               #   in Loop: Header=BB7_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	addl	%r15d, %ebx
	movl	%ebx, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_10 Depth=1
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	jmp	.LBB7_19
.LBB7_20:
	movl	%r12d, 56(%r14)
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_9:
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	48(%rdi), %eax
	movl	%eax, 52(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB8_7
# %bb.1:
	movq	%rdi, %r14
	movl	56(%rdi), %eax
	cmpl	$-1, %eax
	je	.LBB8_8
# %bb.2:
	movq	(%r14), %rcx
	movq	24(%rcx), %r15
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	movslq	%eax, %rbx
	movl	(%r15,%rbx,4), %eax
	shrl	$14, %eax
	leal	-131071(%rax), %ecx
	cmpl	$-1, %ecx
	leal	-131070(%rbx,%rax), %eax
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_3
# %bb.4:
	notl	%r12d
	addl	%esi, %r12d
	movl	%r12d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB8_6
# %bb.5:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB8_6:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r15,%rbx,4), %eax
	shll	$14, %r12d
	addl	%r12d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_7
.LBB8_8:
	movl	%esi, 56(%r14)
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
	cmpl	%ecx, %ebx
	jle	.LBB9_4
# %bb.1:
	cmpl	$250, %ebx
	jl	.LBB9_3
# %bb.2:
	movq	%rdi, %r14
	movq	24(%rdi), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r14), %rax
.LBB9_3:
	addq	$115, %rax
	movb	%bl, (%rax)
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
	cmpl	%ecx, %ebx
	jle	.LBB10_5
# %bb.1:
	cmpl	$250, %ebx
	jl	.LBB10_2
# %bb.3:
	movl	%esi, %r14d
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r15), %rax
	addq	$115, %rax
	addl	60(%r15), %r14d
	jmp	.LBB10_4
.LBB10_2:
	addq	$115, %rax
	movl	%ebx, %r14d
.LBB10_4:
	movb	%bl, (%rax)
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
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movq	8(%rdi), %rsi
	movq	32(%rdi), %r14
	movq	%r14, %rdi
	callq	luaH_set
	cmpl	$3, 8(%rax)
	jne	.LBB12_2
# %bb.1:
	cvttsd2si	(%rax), %eax
	jmp	.LBB12_18
.LBB12_2:
	movq	(%r13), %r12
	movslq	76(%r12), %rbx
	cvtsi2sdl	64(%r13), %xmm0
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	movl	76(%r12), %edx
	cmpl	%edx, 64(%r13)
	jge	.LBB12_4
# %bb.3:
	movq	16(%r12), %rax
	cmpl	%edx, %ebx
	jl	.LBB12_6
	jmp	.LBB12_13
.LBB12_4:
	leaq	76(%r12), %rdx
	movq	16(%r12), %rsi
	movl	$16, %ecx
	movl	$.L.str.2, %r9d
	movq	%r14, %rdi
	movl	$262143, %r8d           # imm = 0x3FFFF
	callq	luaM_growaux_
	movq	%rax, 16(%r12)
	movl	76(%r12), %edx
	cmpl	%edx, %ebx
	jge	.LBB12_13
.LBB12_6:
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
	movl	$0, -32(%rdx)
	movl	$0, -16(%rdx)
	addq	$4, %rbx
	movl	$0, (%rdx)
	addq	$64, %rdx
	cmpq	%rcx, %rbx
	jl	.LBB12_12
.LBB12_13:
	movslq	64(%r13), %rcx
	shlq	$4, %rcx
	movq	(%r15), %rdx
	movq	%rdx, (%rax,%rcx)
	movl	8(%r15), %edx
	movl	%edx, 8(%rax,%rcx)
	cmpl	$4, 8(%r15)
	jl	.LBB12_17
# %bb.14:
	movq	(%r15), %rdx
	testb	$3, 9(%rdx)
	je	.LBB12_17
# %bb.15:
	testb	$4, 9(%r12)
	je	.LBB12_17
# %bb.16:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaC_barrierf
.LBB12_17:
	movl	64(%r13), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 64(%r13)
.LBB12_18:
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
	cmpl	$14, %eax
	je	.LBB14_3
# %bb.1:
	cmpl	$13, %eax
	jne	.LBB14_9
# %bb.2:
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
.LBB14_3:
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
	cmpl	%eax, %ecx
	jl	.LBB14_8
# %bb.4:
	cmpl	$249, %ecx
	jl	.LBB14_5
# %bb.6:
	movq	24(%rbx), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
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
	movl	%ecx, %r14d
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, 60(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_9:
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
	cmpl	$14, %eax
	je	.LBB15_3
# %bb.1:
	cmpl	$13, %eax
	jne	.LBB15_4
# %bb.2:
	movl	$12, (%rsi)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rsi), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB15_3:
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
	addl	$-6, %eax
	cmpl	$8, %eax
	ja	.LBB16_16
# %bb.1:
	movq	%rsi, %rbx
	jmpq	*.LJTI16_0(,%rax,8)
.LBB16_2:
	movl	$12, (%rbx)
	jmp	.LBB16_16
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
	testl	$256, %eax              # imm = 0x100
	jne	.LBB16_9
# %bb.7:
	movzbl	74(%rdi), %ecx
	cmpl	%ecx, %eax
	jl	.LBB16_9
# %bb.8:
	addl	$-1, 60(%rdi)
.LBB16_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB16_12
# %bb.10:
	movzbl	74(%rdi), %ecx
	cmpl	%ecx, %eax
	jl	.LBB16_12
# %bb.11:
	addl	$-1, 60(%rdi)
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
	jmp	.LBB16_16
.LBB16_14:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	$8388607, %edx          # imm = 0x7FFFFF
	andl	(%rax,%rcx,4), %edx
	orl	$16777216, %edx         # imm = 0x1000000
	movl	%edx, (%rax,%rcx,4)
	movl	$11, (%rbx)
	jmp	.LBB16_15
.LBB16_13:
	movl	$12, (%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%rbx)
.LBB16_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_16:
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
	.quad	.LBB16_16
	.quad	.LBB16_16
	.quad	.LBB16_16
	.quad	.LBB16_13
	.quad	.LBB16_14
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
	jne	.LBB17_5
# %bb.1:
	movl	8(%r14), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB17_4
# %bb.2:
	movzbl	74(%r15), %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_4
# %bb.3:
	addl	$-1, 60(%r15)
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	60(%r15), %ecx
	leal	1(%rcx), %ebx
	movq	(%r15), %rax
	movzbl	115(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB17_10
# %bb.6:
	cmpl	$249, %ecx
	jl	.LBB17_7
# %bb.8:
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
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
	subq	$24, %rsp
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	callq	discharge2reg
	cmpl	$10, (%r13)
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	jne	.LBB18_9
# %bb.1:
	movl	8(%r13), %r15d
	cmpl	$-1, %r15d
	je	.LBB18_8
# %bb.2:
	movl	16(%r13), %ecx
	cmpl	$-1, %ecx
	je	.LBB18_69
# %bb.3:
	movq	(%r14), %rax
	movq	24(%rax), %r12
	.p2align	4, 0x90
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r12,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB18_4
# %bb.5:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB18_7
# %bb.6:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB18_7:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r12,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r12,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB18_8
.LBB18_69:
	movl	%r15d, 16(%r13)
.LBB18_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_9:
	movl	16(%r13), %ecx
	movl	20(%r13), %ebx
	cmpl	%ebx, %ecx
	je	.LBB18_68
# %bb.10:
	cmpl	$-1, %ecx
	movq	%r13, -64(%rbp)         # 8-byte Spill
	je	.LBB18_17
# %bb.11:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	.p2align	4, 0x90
.LBB18_12:                              # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	testl	%ecx, %ecx
	jle	.LBB18_14
# %bb.13:                               #   in Loop: Header=BB18_12 Depth=1
	movl	-4(%rax,%rcx,4), %edx
	movl	%edx, %esi
	andl	$63, %esi
	cmpb	$0, luaP_opmodes(%rsi)
	js	.LBB18_15
.LBB18_14:                              #   in Loop: Header=BB18_12 Depth=1
	movl	(%rax,%rcx,4), %edx
.LBB18_15:                              #   in Loop: Header=BB18_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %edx
	cmpl	$27, %edx
	jne	.LBB18_25
# %bb.16:                               #   in Loop: Header=BB18_12 Depth=1
	movl	(%rax,%rcx,4), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%esi, %ecx
	cmpl	$-1, %ecx
	jne	.LBB18_12
.LBB18_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB18_24
# %bb.18:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movl	%ebx, %ecx
	.p2align	4, 0x90
.LBB18_19:                              # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	testl	%ecx, %ecx
	jle	.LBB18_21
# %bb.20:                               #   in Loop: Header=BB18_19 Depth=1
	movl	-4(%rax,%rcx,4), %edx
	movl	%edx, %esi
	andl	$63, %esi
	cmpb	$0, luaP_opmodes(%rsi)
	js	.LBB18_22
.LBB18_21:                              #   in Loop: Header=BB18_19 Depth=1
	movl	(%rax,%rcx,4), %edx
.LBB18_22:                              #   in Loop: Header=BB18_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %edx
	cmpl	$27, %edx
	jne	.LBB18_25
# %bb.23:                               #   in Loop: Header=BB18_19 Depth=1
	movl	(%rax,%rcx,4), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%esi, %ecx
	cmpl	$-1, %ecx
	jne	.LBB18_19
.LBB18_24:
	movl	$42, __A_VARIABLE(%rip)
	leaq	48(%r14), %rax
	leaq	52(%r14), %rcx
	movl	$-1, -52(%rbp)          # 4-byte Folded Spill
	movl	$-1, -48(%rbp)          # 4-byte Folded Spill
	jmp	.LBB18_35
.LBB18_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	cmpl	$10, (%r13)
	je	.LBB18_27
# %bb.26:
	movq	%r14, %rdi
	callq	luaK_jump
	movl	%eax, %r12d
.LBB18_27:
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	shll	$6, %ebx
	movl	%ebx, %esi
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
	orl	$8388610, %ebx          # imm = 0x800002
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_code
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB18_34
# %bb.28:
	movl	56(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB18_70
# %bb.29:
	movq	(%r14), %rax
	movq	24(%rax), %r15
	.p2align	4, 0x90
.LBB18_30:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r15,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB18_30
# %bb.31:
	notl	%eax
	addl	%eax, %r12d
	movl	%r12d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB18_33
# %bb.32:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB18_33:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r15,%rbx,4), %eax
	shll	$14, %r12d
	addl	%r12d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_34
.LBB18_70:
	movl	%r12d, 56(%r14)
.LBB18_34:
	leaq	48(%r14), %rax
	leaq	52(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	20(%r13), %ebx
.LBB18_35:
	movl	(%rax), %r13d
	movl	%r13d, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB18_51
# %bb.36:
	movzbl	-44(%rbp), %eax         # 1-byte Folded Reload
	shll	$6, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB18_37
	.p2align	4, 0x90
.LBB18_50:                              #   in Loop: Header=BB18_37 Depth=1
	movl	(%r15), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %r12d
	addl	%r12d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB18_51
.LBB18_37:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r12d
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	%ebx, %rcx
	leaq	(%rax,%rcx,4), %r15
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %ebx
	cmovel	%esi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB18_40
# %bb.38:                               #   in Loop: Header=BB18_37 Depth=1
	movl	-4(%r15), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	js	.LBB18_39
.LBB18_40:                              #   in Loop: Header=BB18_37 Depth=1
	movq	%r15, %rcx
	jmp	.LBB18_41
	.p2align	4, 0x90
.LBB18_39:                              #   in Loop: Header=BB18_37 Depth=1
	leaq	-4(%r15), %rcx
	movl	%edx, %eax
.LBB18_41:                              #   in Loop: Header=BB18_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	cmpl	$27, %edx
	jne	.LBB18_47
# %bb.42:                               #   in Loop: Header=BB18_37 Depth=1
	movl	%eax, %edx
	shrl	$23, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	$255, %esi
	je	.LBB18_45
# %bb.43:                               #   in Loop: Header=BB18_37 Depth=1
	cmpl	%esi, %edx
	je	.LBB18_45
# %bb.44:                               #   in Loop: Header=BB18_37 Depth=1
	andl	$-16321, %eax           # imm = 0xC03F
	orl	-56(%rbp), %eax         # 4-byte Folded Reload
	jmp	.LBB18_46
	.p2align	4, 0x90
.LBB18_47:                              #   in Loop: Header=BB18_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	notl	%r12d
	addl	-48(%rbp), %r12d        # 4-byte Folded Reload
	jmp	.LBB18_48
	.p2align	4, 0x90
.LBB18_45:                              #   in Loop: Header=BB18_37 Depth=1
	shll	$6, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
.LBB18_46:                              #   in Loop: Header=BB18_37 Depth=1
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	notl	%r12d
	addl	%r13d, %r12d
.LBB18_48:                              #   in Loop: Header=BB18_37 Depth=1
	movl	%r12d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB18_50
# %bb.49:                               #   in Loop: Header=BB18_37 Depth=1
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	jmp	.LBB18_50
.LBB18_51:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	16(%rax), %r12d
	cmpl	$-1, %r12d
	je	.LBB18_67
# %bb.52:
	movzbl	-44(%rbp), %eax         # 1-byte Folded Reload
	shll	$6, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB18_53
	.p2align	4, 0x90
.LBB18_66:                              #   in Loop: Header=BB18_53 Depth=1
	movl	(%r15), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB18_67
.LBB18_53:                              # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ebx
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	%r12d, %rcx
	leaq	(%rax,%rcx,4), %r15
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %r12d
	cmovel	%esi, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB18_56
# %bb.54:                               #   in Loop: Header=BB18_53 Depth=1
	movl	-4(%r15), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
	js	.LBB18_55
.LBB18_56:                              #   in Loop: Header=BB18_53 Depth=1
	movq	%r15, %rcx
	jmp	.LBB18_57
	.p2align	4, 0x90
.LBB18_55:                              #   in Loop: Header=BB18_53 Depth=1
	leaq	-4(%r15), %rcx
	movl	%edx, %eax
.LBB18_57:                              #   in Loop: Header=BB18_53 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$63, %edx
	cmpl	$27, %edx
	jne	.LBB18_63
# %bb.58:                               #   in Loop: Header=BB18_53 Depth=1
	movl	%eax, %edx
	shrl	$23, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	$255, %esi
	je	.LBB18_61
# %bb.59:                               #   in Loop: Header=BB18_53 Depth=1
	cmpl	%esi, %edx
	je	.LBB18_61
# %bb.60:                               #   in Loop: Header=BB18_53 Depth=1
	andl	$-16321, %eax           # imm = 0xC03F
	orl	-48(%rbp), %eax         # 4-byte Folded Reload
	jmp	.LBB18_62
	.p2align	4, 0x90
.LBB18_63:                              #   in Loop: Header=BB18_53 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	addl	-52(%rbp), %ebx         # 4-byte Folded Reload
	jmp	.LBB18_64
	.p2align	4, 0x90
.LBB18_61:                              #   in Loop: Header=BB18_53 Depth=1
	shll	$6, %edx
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%edx, %eax
	orl	$26, %eax
.LBB18_62:                              #   in Loop: Header=BB18_53 Depth=1
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	addl	%r13d, %ebx
.LBB18_64:                              #   in Loop: Header=BB18_53 Depth=1
	movl	%ebx, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB18_66
# %bb.65:                               #   in Loop: Header=BB18_53 Depth=1
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	jmp	.LBB18_66
.LBB18_67:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r13         # 8-byte Reload
	movl	-44(%rbp), %r12d        # 4-byte Reload
.LBB18_68:
	movq	$-1, 16(%r13)
	movl	%r12d, 8(%r13)
	movl	$12, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
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
	jne	.LBB19_1
# %bb.3:
	movl	8(%rbx), %eax
	movl	16(%rbx), %ecx
	cmpl	20(%rbx), %ecx
	je	.LBB19_7
# %bb.4:
	leaq	8(%rbx), %r15
	movzbl	74(%r14), %ecx
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
	jne	.LBB20_2
# %bb.1:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	jmp	.LBB20_7
.LBB20_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	jne	.LBB20_5
# %bb.3:
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	je	.LBB20_6
# %bb.4:
	movl	8(%rbx), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB20_8
.LBB20_5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB20_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB20_8:
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
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	16(%rsi), %r15d
	movl	20(%rsi), %ebx
	callq	luaK_dischargevars
	cmpl	%ebx, %r15d
	je	.LBB21_6
# %bb.1:
	cmpl	$12, (%r12)
	jne	.LBB21_4
# %bb.2:
	movl	16(%r12), %eax
	cmpl	20(%r12), %eax
	je	.LBB21_5
# %bb.3:
	movl	8(%r12), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB21_29
.LBB21_4:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
.LBB21_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %eax
	leal	-1(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB21_9
# %bb.7:
	cmpl	$4, %eax
	je	.LBB21_13
# %bb.8:
	cmpl	$5, %eax
	jne	.LBB21_15
.LBB21_9:
	cmpl	$255, 64(%r14)
	jg	.LBB21_15
# %bb.10:
	cmpl	$5, %eax
	je	.LBB21_23
# %bb.11:
	cmpl	$1, %eax
	jne	.LBB21_24
# %bb.12:
	movl	$0, -56(%rbp)
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	movl	$5, -40(%rbp)
	leaq	-48(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rdi
	jmp	.LBB21_26
.LBB21_13:
	movl	8(%r12), %eax
	cmpl	$255, %eax
	jle	.LBB21_27
.LBB21_15:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%r12)
	jne	.LBB21_19
# %bb.16:
	movl	8(%r12), %eax
	movl	16(%r12), %ecx
	cmpl	20(%r12), %ecx
	je	.LBB21_22
# %bb.17:
	leaq	8(%r12), %r15
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB21_20
# %bb.18:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	exp2reg
	jmp	.LBB21_21
.LBB21_19:
	leaq	8(%r12), %r15
.LBB21_20:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
.LBB21_21:
	movl	(%r15), %eax
.LBB21_22:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_28
.LBB21_23:
	movq	8(%r12), %rax
	movq	%rax, -48(%rbp)
	movl	$3, -40(%rbp)
	jmp	.LBB21_25
.LBB21_24:
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	sete	%cl
	movl	%ecx, -48(%rbp)
	movl	$1, -40(%rbp)
.LBB21_25:
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rdx, %rsi
.LBB21_26:
	callq	addk
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%r12)
	movl	$4, (%r12)
.LBB21_27:
	orl	$256, %eax              # imm = 0x100
.LBB21_28:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_29:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	exp2reg
	jmp	.LBB21_5
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
	addl	$-6, %eax
	cmpl	$3, %eax
	ja	.LBB22_26
# %bb.1:
	movq	%rsi, %r15
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_2:
	cmpl	$12, (%rbx)
	jne	.LBB22_7
# %bb.3:
	movl	8(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB22_6
# %bb.4:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_6
# %bb.5:
	addl	$-1, 60(%r14)
.LBB22_6:
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
	jne	.LBB22_17
# %bb.19:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	je	.LBB22_23
# %bb.20:
	leaq	8(%rbx), %r12
	movzbl	74(%r14), %eax
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
	jne	.LBB22_9
# %bb.11:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	je	.LBB22_15
# %bb.12:
	leaq	8(%rbx), %r12
	movzbl	74(%r14), %eax
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
.LBB22_26:
	cmpl	$12, (%rbx)
	jne	.LBB22_31
# %bb.27:
	movl	8(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB22_30
# %bb.28:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_30
# %bb.29:
	addl	$-1, 60(%r14)
.LBB22_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_32:
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
	jne	.LBB23_4
# %bb.1:
	movl	16(%r14), %eax
	cmpl	20(%r14), %eax
	je	.LBB23_5
# %bb.2:
	movl	8(%r14), %edx
	movzbl	74(%r12), %eax
	cmpl	%eax, %edx
	jge	.LBB23_3
.LBB23_4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2nextreg
.LBB23_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r14)
	jne	.LBB23_10
# %bb.6:
	movl	8(%r14), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB23_9
# %bb.7:
	movzbl	74(%r12), %ecx
	cmpl	%ecx, %eax
	jl	.LBB23_9
# %bb.8:
	addl	$-1, 60(%r12)
.LBB23_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	60(%r12), %r13d
	leal	2(%r13), %ebx
	movq	(%r12), %rax
	movzbl	115(%rax), %ecx
	cmpl	%ecx, %ebx
	jle	.LBB23_15
# %bb.11:
	cmpl	$248, %r13d
	jl	.LBB23_12
# %bb.13:
	movq	24(%r12), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
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
	jne	.LBB23_20
# %bb.16:
	movl	8(%r15), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB23_19
# %bb.17:
	movzbl	74(%r12), %ecx
	cmpl	%ecx, %eax
	jl	.LBB23_19
# %bb.18:
	addl	$-1, 60(%r12)
.LBB23_19:
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	luaK_dischargevars
	movl	(%r14), %eax
	leal	-4(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB24_16
# %bb.1:
	cmpl	$2, %eax
	je	.LBB24_16
# %bb.2:
	cmpl	$10, %eax
	jne	.LBB24_8
# %bb.3:
	movslq	8(%r14), %rcx
	movq	(%r12), %rdx
	leaq	(,%rcx,4), %rax
	addq	24(%rdx), %rax
	testq	%rcx, %rcx
	jle	.LBB24_6
# %bb.4:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	andl	$63, %edx
	cmpb	$0, luaP_opmodes(%rdx)
	js	.LBB24_5
.LBB24_6:
	movl	(%rax), %ecx
	jmp	.LBB24_7
.LBB24_8:
	movq	%r12, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	jumponcond
	movl	%eax, %r15d
	cmpl	$-1, %r15d
	jne	.LBB24_10
	jmp	.LBB24_16
.LBB24_5:
	addq	$-4, %rax
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
	movl	8(%r14), %r15d
	cmpl	$-1, %r15d
	je	.LBB24_16
.LBB24_10:
	movl	20(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB24_24
# %bb.11:
	movq	(%r12), %rax
	movq	24(%rax), %r13
	.p2align	4, 0x90
.LBB24_12:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB24_12
# %bb.13:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB24_15
# %bb.14:
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB24_15:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_16
.LBB24_24:
	movl	%r15d, 20(%r14)
.LBB24_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r14), %r15d
	movl	48(%r12), %eax
	movl	%eax, 52(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB24_23
# %bb.17:
	movl	56(%r12), %ecx
	cmpl	$-1, %ecx
	je	.LBB24_25
# %bb.18:
	movq	(%r12), %rax
	movq	24(%rax), %r13
	.p2align	4, 0x90
.LBB24_19:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB24_19
# %bb.20:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB24_22
# %bb.21:
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB24_22:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_23
.LBB24_25:
	movl	%r15d, 56(%r12)
.LBB24_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	(%rsi), %eax
	cmpl	$12, %eax
	je	.LBB25_11
# %bb.1:
	cmpl	$11, %eax
	jne	.LBB25_4
# %bb.2:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	cmpl	$19, %ecx
	jne	.LBB25_4
# %bb.3:
	addl	$-1, 48(%r14)
	shrl	$17, %eax
	andl	$-64, %eax
	xorl	%esi, %esi
	testl	%r15d, %r15d
	sete	%sil
	shll	$14, %esi
	orl	%eax, %esi
	orl	$26, %esi
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	jmp	.LBB25_17
.LBB25_4:
	movl	60(%r14), %ecx
	leal	1(%rcx), %r12d
	movq	(%r14), %rax
	movzbl	115(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB25_9
# %bb.5:
	cmpl	$249, %ecx
	jl	.LBB25_6
# %bb.7:
	movq	24(%r14), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r14), %rax
	addq	$115, %rax
	movl	60(%r14), %ecx
	addl	$1, %ecx
	jmp	.LBB25_8
.LBB25_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_12
.LBB25_6:
	addq	$115, %rax
	movl	%r12d, %ecx
.LBB25_8:
	movb	%r12b, (%rax)
	movl	%ecx, %r12d
.LBB25_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	discharge2reg
	cmpl	$12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_10
.LBB25_12:
	movl	8(%rbx), %eax
	addq	$8, %rbx
	testl	$256, %eax              # imm = 0x100
	jne	.LBB25_15
# %bb.13:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_15
# %bb.14:
	addl	$-1, 60(%r14)
.LBB25_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_16
.LBB25_10:
	addq	$8, %rbx
.LBB25_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	shll	$23, %eax
	shll	$14, %r15d
	orl	%eax, %r15d
	orl	$16347, %r15d           # imm = 0x3FDB
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
.LBB25_17:
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaK_jump
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdx, %r12
	movq	%rdi, %r14
	movq	$-1, -40(%rbp)
	movl	$5, -56(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$2, %esi
	je	.LBB27_55
# %bb.1:
	cmpl	$1, %esi
	je	.LBB27_14
# %bb.2:
	testl	%esi, %esi
	jne	.LBB27_62
# %bb.3:
	cmpl	$5, (%r12)
	jne	.LBB27_5
# %bb.4:
	cmpl	$-1, 16(%r12)
	je	.LBB27_6
.LBB27_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_7:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%r12)
	jne	.LBB27_11
# %bb.8:
	movl	16(%r12), %eax
	cmpl	20(%r12), %eax
	je	.LBB27_12
# %bb.9:
	movl	8(%r12), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB27_10
.LBB27_11:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
.LBB27_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_13:
	leaq	-56(%rbp), %rcx
	movq	%r14, %rdi
	movl	$18, %esi
	jmp	.LBB27_61
.LBB27_55:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%r12)
	jne	.LBB27_59
# %bb.56:
	movl	16(%r12), %eax
	cmpl	20(%r12), %eax
	je	.LBB27_60
# %bb.57:
	movl	8(%r12), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB27_58
.LBB27_59:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
.LBB27_60:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rcx
	movq	%r14, %rdi
	movl	$20, %esi
.LBB27_61:
	movq	%r12, %rdx
	callq	codearith
	jmp	.LBB27_62
.LBB27_14:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	movl	(%r12), %eax
	addl	$-1, %eax
	cmpl	$11, %eax
	ja	.LBB27_35
# %bb.15:
	jmpq	*.LJTI27_0(,%rax,8)
.LBB27_18:
	movl	$3, (%r12)
	jmp	.LBB27_35
.LBB27_17:
	movl	$2, (%r12)
	jmp	.LBB27_35
.LBB27_6:
	cmpl	$-1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_7
	jmp	.LBB27_13
.LBB27_58:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	exp2reg
	jmp	.LBB27_60
.LBB27_10:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	exp2reg
	jmp	.LBB27_12
.LBB27_19:
	movslq	8(%r12), %rcx
	movq	(%r14), %rdx
	leaq	(,%rcx,4), %rax
	addq	24(%rdx), %rax
	testq	%rcx, %rcx
	jle	.LBB27_22
# %bb.20:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	andl	$63, %edx
	cmpb	$0, luaP_opmodes(%rdx)
	js	.LBB27_21
.LBB27_22:
	movl	(%rax), %ecx
	jmp	.LBB27_23
.LBB27_24:
	movl	60(%r14), %ecx
	leal	1(%rcx), %r15d
	movq	(%r14), %rax
	movzbl	115(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB27_29
# %bb.25:
	cmpl	$249, %ecx
	jl	.LBB27_26
# %bb.27:
	movq	24(%r14), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r14), %rax
	addq	$115, %rax
	movl	60(%r14), %ecx
	addl	$1, %ecx
	jmp	.LBB27_28
.LBB27_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_30
.LBB27_21:
	addq	$-4, %rax
.LBB27_23:
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
	jmp	.LBB27_35
.LBB27_26:
	addq	$115, %rax
	movl	%r15d, %ecx
.LBB27_28:
	movb	%r15b, (%rax)
	movl	%ecx, %r15d
.LBB27_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, 60(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	discharge2reg
	cmpl	$12, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_34
.LBB27_30:
	movl	8(%r12), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB27_33
# %bb.31:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB27_33
# %bb.32:
	addl	$-1, 60(%r14)
.LBB27_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %esi
	shll	$23, %esi
	orl	$19, %esi
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%r12)
	movl	$11, (%r12)
.LBB27_35:
	movl	16(%r12), %ecx
	movl	20(%r12), %eax
	movl	%ecx, 20(%r12)
	movl	%eax, 16(%r12)
	cmpl	$-1, %ecx
	je	.LBB27_45
# %bb.36:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	jmp	.LBB27_37
	.p2align	4, 0x90
.LBB27_43:                              #   in Loop: Header=BB27_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%esi, %ecx
	cmpl	$-1, %ecx
	je	.LBB27_44
.LBB27_37:                              # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rsi
	leaq	(%rax,%rsi,4), %rdx
	testl	%esi, %esi
	jle	.LBB27_40
# %bb.38:                               #   in Loop: Header=BB27_37 Depth=1
	movl	-4(%rdx), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	js	.LBB27_39
.LBB27_40:                              #   in Loop: Header=BB27_37 Depth=1
	movl	(%rdx), %esi
	movq	%rdx, %rdi
	jmp	.LBB27_41
	.p2align	4, 0x90
.LBB27_39:                              #   in Loop: Header=BB27_37 Depth=1
	leaq	-4(%rdx), %rdi
.LBB27_41:                              #   in Loop: Header=BB27_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ebx
	andl	$63, %ebx
	cmpl	$27, %ebx
	jne	.LBB27_43
# %bb.42:                               #   in Loop: Header=BB27_37 Depth=1
	movl	%esi, %ebx
	shrl	$17, %ebx
	andl	$-64, %ebx
	andl	$8372224, %esi          # imm = 0x7FC000
	orl	%ebx, %esi
	orl	$26, %esi
	movl	%esi, (%rdi)
	jmp	.LBB27_43
.LBB27_44:
	movl	16(%r12), %eax
.LBB27_45:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB27_54
# %bb.46:
	movq	(%r14), %rcx
	movq	24(%rcx), %rcx
	jmp	.LBB27_47
	.p2align	4, 0x90
.LBB27_53:                              #   in Loop: Header=BB27_47 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rax,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%esi, %eax
	cmpl	$-1, %eax
	je	.LBB27_54
.LBB27_47:                              # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rsi
	leaq	(%rcx,%rsi,4), %rdx
	testl	%esi, %esi
	jle	.LBB27_50
# %bb.48:                               #   in Loop: Header=BB27_47 Depth=1
	movl	-4(%rdx), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	js	.LBB27_49
.LBB27_50:                              #   in Loop: Header=BB27_47 Depth=1
	movl	(%rdx), %esi
	movq	%rdx, %rdi
	jmp	.LBB27_51
	.p2align	4, 0x90
.LBB27_49:                              #   in Loop: Header=BB27_47 Depth=1
	leaq	-4(%rdx), %rdi
.LBB27_51:                              #   in Loop: Header=BB27_47 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ebx
	andl	$63, %ebx
	cmpl	$27, %ebx
	jne	.LBB27_53
# %bb.52:                               #   in Loop: Header=BB27_47 Depth=1
	movl	%esi, %ebx
	shrl	$17, %ebx
	andl	$-64, %ebx
	andl	$8372224, %esi          # imm = 0x7FC000
	orl	%ebx, %esi
	orl	$26, %esi
	movl	%esi, (%rdi)
	jmp	.LBB27_53
.LBB27_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_62:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	luaK_prefix, .Lfunc_end27-luaK_prefix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI27_0:
	.quad	.LBB27_17
	.quad	.LBB27_18
	.quad	.LBB27_17
	.quad	.LBB27_18
	.quad	.LBB27_18
	.quad	.LBB27_35
	.quad	.LBB27_35
	.quad	.LBB27_35
	.quad	.LBB27_35
	.quad	.LBB27_19
	.quad	.LBB27_24
	.quad	.LBB27_16
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
	jne	.LBB28_2
# %bb.1:
	cmpl	$-1, 16(%r13)
	je	.LBB28_5
.LBB28_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_3:
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
.LBB28_26:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	%ebx, %eax
	jle	.LBB28_34
# %bb.27:
	cmpl	$12, (%r13)
	jne	.LBB28_32
# %bb.28:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB28_31
# %bb.29:
	movzbl	74(%r14), %edx
	cmpl	%edx, %ecx
	jl	.LBB28_31
# %bb.30:
	addl	$-1, 60(%r14)
.LBB28_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_32:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r12)
	jne	.LBB28_45
# %bb.33:
	movl	8(%r12), %ecx
	testl	$256, %ecx              # imm = 0x100
	je	.LBB28_42
	jmp	.LBB28_44
.LBB28_34:
	cmpl	$12, (%r12)
	jne	.LBB28_39
# %bb.35:
	movl	8(%r12), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB28_38
# %bb.36:
	movzbl	74(%r14), %edx
	cmpl	%edx, %ecx
	jl	.LBB28_38
# %bb.37:
	addl	$-1, 60(%r14)
.LBB28_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_39:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r13)
	jne	.LBB28_45
# %bb.40:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB28_44
.LBB28_42:
	movzbl	74(%r14), %edx
	cmpl	%edx, %ecx
	jl	.LBB28_44
# %bb.43:
	addl	$-1, 60(%r14)
.LBB28_44:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_45:
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
	jne	.LBB28_3
# %bb.6:
	cmpl	$5, (%r12)
	jne	.LBB28_2
# %bb.7:
	cmpl	$-1, 16(%r12)
	jne	.LBB28_2
# %bb.8:
	cmpl	$-1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_3
# %bb.9:
	xorpd	%xmm0, %xmm0
	leal	-12(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB28_23
# %bb.10:
	movsd	8(%r13), %xmm2          # xmm2 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	jmpq	*.LJTI28_0(,%rax,8)
.LBB28_12:
	addsd	%xmm1, %xmm2
	jmp	.LBB28_21
.LBB28_13:
	subsd	%xmm1, %xmm2
	jmp	.LBB28_21
.LBB28_14:
	mulsd	%xmm1, %xmm2
	jmp	.LBB28_21
.LBB28_15:
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB28_16
	jnp	.LBB28_24
.LBB28_16:
	divsd	%xmm1, %xmm2
	jmp	.LBB28_21
.LBB28_17:
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB28_18
	jp	.LBB28_18
.LBB28_24:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_25
.LBB28_19:
	movapd	%xmm2, %xmm0
	callq	pow
	ucomisd	%xmm0, %xmm0
	jnp	.LBB28_23
	jmp	.LBB28_3
.LBB28_20:
	xorpd	.LCPI28_0(%rip), %xmm2
.LBB28_21:
	movapd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.LBB28_3
.LBB28_23:
	movsd	%xmm0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_46
.LBB28_11:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB28_26
.LBB28_18:
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm2, -64(%rbp)        # 16-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	floor
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB28_23
	jmp	.LBB28_3
.Lfunc_end28:
	.size	codearith, .Lfunc_end28-codearith
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_12
	.quad	.LBB28_13
	.quad	.LBB28_14
	.quad	.LBB28_15
	.quad	.LBB28_17
	.quad	.LBB28_19
	.quad	.LBB28_20
	.quad	.LBB28_23
	.quad	.LBB28_11
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r13
	movq	%rdi, %r14
	cmpl	$14, %esi
	ja	.LBB29_28
# %bb.1:
	movl	%esi, %eax
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_24:
	cmpl	$5, (%r13)
	jne	.LBB29_26
# %bb.25:
	cmpl	$-1, 16(%r13)
	je	.LBB29_27
.LBB29_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_28:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
.LBB29_29:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_27:
	cmpl	$-1, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_28
	jmp	.LBB29_29
.LBB29_23:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	jmp	.LBB29_29
.LBB29_2:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_goiftrue
	jmp	.LBB29_29
.LBB29_3:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_dischargevars
	movl	(%r13), %eax
	cmpl	$1, %eax
	je	.LBB29_15
# %bb.4:
	cmpl	$3, %eax
	je	.LBB29_15
# %bb.5:
	cmpl	$10, %eax
	jne	.LBB29_7
# %bb.6:
	movl	8(%r13), %r15d
	jmp	.LBB29_8
.LBB29_7:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	jumponcond
	movl	%eax, %r15d
.LBB29_8:
	cmpl	$-1, %r15d
	je	.LBB29_15
# %bb.9:
	movl	16(%r13), %ecx
	cmpl	$-1, %ecx
	je	.LBB29_30
# %bb.10:
	movq	(%r14), %rax
	movq	24(%rax), %r12
	.p2align	4, 0x90
.LBB29_11:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r12,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB29_11
# %bb.12:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB29_14
# %bb.13:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB29_14:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r12,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r12,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_15
.LBB29_30:
	movl	%r15d, 16(%r13)
.LBB29_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	20(%r13), %r15d
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB29_22
# %bb.16:
	movl	56(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB29_31
# %bb.17:
	movq	(%r14), %rax
	movq	24(%rax), %r12
	.p2align	4, 0x90
.LBB29_18:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r12,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB29_18
# %bb.19:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB29_21
# %bb.20:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB29_21:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r12,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r12,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_22
.LBB29_31:
	movl	%r15d, 56(%r14)
.LBB29_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_29
.Lfunc_end29:
	.size	luaK_infix, .Lfunc_end29-luaK_infix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI29_0:
	.quad	.LBB29_24
	.quad	.LBB29_24
	.quad	.LBB29_24
	.quad	.LBB29_24
	.quad	.LBB29_24
	.quad	.LBB29_24
	.quad	.LBB29_23
	.quad	.LBB29_28
	.quad	.LBB29_28
	.quad	.LBB29_28
	.quad	.LBB29_28
	.quad	.LBB29_28
	.quad	.LBB29_28
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpl	$14, %esi
	ja	.LBB30_47
# %bb.1:
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rdi, %r13
	movl	%esi, %eax
	jmpq	*.LJTI30_0(,%rax,8)
.LBB30_2:
	movq	%r13, %rdi
	movl	$12, %esi
	jmp	.LBB30_43
.LBB30_3:
	movq	%r13, %rdi
	movl	$13, %esi
	jmp	.LBB30_43
.LBB30_4:
	movq	%r13, %rdi
	movl	$14, %esi
	jmp	.LBB30_43
.LBB30_5:
	movq	%r13, %rdi
	movl	$15, %esi
	jmp	.LBB30_43
.LBB30_6:
	movq	%r13, %rdi
	movl	$16, %esi
	jmp	.LBB30_43
.LBB30_7:
	movq	%r13, %rdi
	movl	$17, %esi
	jmp	.LBB30_43
.LBB30_8:
	movq	%r13, %rdi
	movl	$23, %esi
	jmp	.LBB30_12
.LBB30_9:
	movq	%r13, %rdi
	movl	$24, %esi
	jmp	.LBB30_40
.LBB30_10:
	movq	%r13, %rdi
	movl	$24, %esi
	jmp	.LBB30_12
.LBB30_11:
	movq	%r13, %rdi
	movl	$25, %esi
.LBB30_12:
	xorl	%edx, %edx
	jmp	.LBB30_41
.LBB30_13:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	luaK_dischargevars
	movl	20(%r14), %edi
	cmpl	$-1, %edi
	je	.LBB30_46
# %bb.14:
	movl	20(%r15), %ecx
	cmpl	$-1, %ecx
	je	.LBB30_44
# %bb.15:
	movq	(%r13), %rax
	movq	24(%rax), %rbx
	.p2align	4, 0x90
.LBB30_16:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %r12
	movl	(%rbx,%r12,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%r12,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB30_16
	jmp	.LBB30_21
.LBB30_17:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	luaK_dischargevars
	movl	16(%r14), %edi
	cmpl	$-1, %edi
	je	.LBB30_46
# %bb.18:
	movl	16(%r15), %ecx
	cmpl	$-1, %ecx
	je	.LBB30_45
# %bb.19:
	movq	(%r13), %rax
	movq	24(%rax), %rbx
	.p2align	4, 0x90
.LBB30_20:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %r12
	movl	(%rbx,%r12,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%r12,%rcx), %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB30_20
.LBB30_21:
	notl	%eax
	addl	%eax, %edi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
                                        # kill: def $edi killed $edi killed $rdi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB30_23
# %bb.22:
	movq	24(%r13), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB30_23:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%rbx,%r12,4), %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	shll	$14, %ecx
	addl	%ecx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%rbx,%r12,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_46
.LBB30_24:
	movl	16(%r15), %r12d
	movl	20(%r15), %ebx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	luaK_dischargevars
	cmpl	%ebx, %r12d
	je	.LBB30_30
# %bb.25:
	cmpl	$12, (%r15)
	jne	.LBB30_28
# %bb.26:
	movl	16(%r15), %eax
	cmpl	20(%r15), %eax
	je	.LBB30_29
# %bb.27:
	movl	8(%r15), %edx
	movzbl	74(%r13), %eax
	cmpl	%eax, %edx
	jge	.LBB30_48
.LBB30_28:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2nextreg
.LBB30_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_30:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, (%r15)
	jne	.LBB30_42
# %bb.31:
	movq	(%r13), %rax
	movq	24(%rax), %rdx
	movslq	8(%r15), %rcx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, %esi
	andl	$63, %esi
	cmpl	$21, %esi
	jne	.LBB30_42
# %bb.32:
	leaq	(%rdx,%rcx,4), %rcx
	cmpl	$12, (%r14)
	jne	.LBB30_37
# %bb.33:
	movl	8(%r14), %esi
	testl	$256, %esi              # imm = 0x100
	jne	.LBB30_36
# %bb.34:
	movzbl	74(%r13), %edi
	cmpl	%edi, %esi
	jl	.LBB30_36
# %bb.35:
	addl	$-1, 60(%r13)
	movslq	8(%r15), %rax
	leaq	(%rdx,%rax,4), %rcx
	movl	(%rdx,%rax,4), %eax
.LBB30_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_37:
	movl	$42, __A_VARIABLE(%rip)
	andl	$8388607, %eax          # imm = 0x7FFFFF
	movl	8(%r14), %edx
	shll	$23, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movl	$11, (%r14)
	movl	8(%r15), %eax
	movl	%eax, 8(%r14)
	jmp	.LBB30_47
.LBB30_38:
	movq	%r13, %rdi
	movl	$23, %esi
	jmp	.LBB30_40
.LBB30_39:
	movq	%r13, %rdi
	movl	$25, %esi
.LBB30_40:
	movl	$1, %edx
.LBB30_41:
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	codecomp
	jmp	.LBB30_47
.LBB30_42:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2nextreg
	movq	%r13, %rdi
	movl	$21, %esi
.LBB30_43:
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	codearith
	jmp	.LBB30_47
.LBB30_44:
	movl	%edi, 20(%r15)
	jmp	.LBB30_46
.LBB30_45:
	movl	%edi, 16(%r15)
.LBB30_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
	movq	%rax, 16(%r14)
	movups	(%r15), %xmm0
	movups	%xmm0, (%r14)
.LBB30_47:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_48:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	exp2reg
	jmp	.LBB30_29
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
	.quad	.LBB30_24
	.quad	.LBB30_8
	.quad	.LBB30_38
	.quad	.LBB30_9
	.quad	.LBB30_39
	.quad	.LBB30_10
	.quad	.LBB30_11
	.quad	.LBB30_13
	.quad	.LBB30_17
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
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %rbx
	movq	%rcx, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r13d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r15)
	jne	.LBB31_5
# %bb.1:
	movl	8(%r15), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB31_4
# %bb.2:
	movzbl	74(%rbx), %edx
	cmpl	%edx, %ecx
	jl	.LBB31_4
# %bb.3:
	addl	$-1, 60(%rbx)
.LBB31_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, (%r14)
	jne	.LBB31_10
# %bb.6:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB31_9
# %bb.7:
	movzbl	74(%rbx), %edx
	cmpl	%edx, %ecx
	jl	.LBB31_9
# %bb.8:
	addl	$-1, 60(%rbx)
.LBB31_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_10:
	testl	%r12d, %r12d
	sete	%cl
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	$23, %esi
	setne	%dl
	shll	$6, %r12d
	testb	%cl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	cmovnel	%r13d, %eax
	movl	$64, %edx
	cmovel	%r12d, %edx
	movl	$42, __A_VARIABLE(%rip)
	orl	%esi, %edx
	shll	$23, %ecx
	orl	%edx, %ecx
	shll	$14, %eax
	orl	%ecx, %eax
	movq	24(%rbx), %rcx
	movl	8(%rcx), %edx
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaK_jump
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
	leal	-131070(%rcx,%rdx), %r15d
	cmovel	%esi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB33_5
# %bb.3:                                #   in Loop: Header=BB33_2 Depth=1
	movl	-4(%r13), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	cmpb	$0, luaP_opmodes(%rcx)
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
	movl	%eax, %edx
	andl	$63, %edx
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
.LBB33_8:                               #   in Loop: Header=BB33_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	notl	%ebx
	addl	%r14d, %ebx
	movl	%ebx, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB33_10
# %bb.9:                                #   in Loop: Header=BB33_2 Depth=1
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB33_10:                              #   in Loop: Header=BB33_2 Depth=1
	movl	(%r13), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13)
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
	movl	48(%r12), %r14d
.LBB33_16:
	movl	-44(%rbp), %edx         # 4-byte Reload
	movslq	%r14d, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	48(%r12), %ecx
	cmpl	84(%r13), %ecx
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
	pushq	%r12
	pushq	%rbx
                                        # kill: def $edx killed $edx def $rdx
	movl	%esi, %r14d
	movq	%rdi, %r15
	leal	-1(%rdx), %eax
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %r8
	sarq	$36, %r8
	shrq	$63, %rax
	movl	%esi, %ebx
	shll	$6, %ebx
	movl	%ecx, %edi
	shll	$23, %edi
	xorl	%esi, %esi
	cmpl	$-1, %ecx
	cmovnel	%edi, %esi
	leal	(%r8,%rax), %r12d
	addl	$1, %r12d
	orl	%ebx, %esi
	orl	$34, %esi
	cmpl	$25550, %edx            # imm = 0x63CE
	jg	.LBB34_2
# %bb.1:
	shll	$14, %r12d
	orl	%r12d, %esi
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_3
.LBB34_2:
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	luaK_code
.LBB34_3:
	addl	$1, %r14d
	movl	%r14d, 60(%r15)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	luaK_dischargevars
	movl	(%r15), %eax
	leal	-1(%rax), %ecx
	cmpl	$11, %ecx
	ja	.LBB35_21
# %bb.1:
	jmpq	*.LJTI35_0(,%rcx,8)
.LBB35_11:
	xorl	%esi, %esi
	cmpl	$2, %eax
	sete	%sil
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$23, %esi
	orl	%eax, %esi
	orl	$2, %esi
	jmp	.LBB35_18
.LBB35_2:
	movslq	48(%rbx), %rax
	cmpl	52(%rbx), %eax
	jle	.LBB35_5
# %bb.3:
	testl	%eax, %eax
	je	.LBB35_4
# %bb.6:
	movq	(%rbx), %rcx
	movq	24(%rcx), %rcx
	movl	-4(%rcx,%rax,4), %edx
	movl	%edx, %esi
	andl	$63, %esi
	cmpl	$3, %esi
	jne	.LBB35_5
# %bb.7:
	movl	%edx, %esi
	shrl	$6, %esi
	movzbl	%sil, %esi
	cmpl	%r14d, %esi
	jg	.LBB35_5
# %bb.8:
	movl	%edx, %esi
	shrl	$23, %esi
	leal	1(%rsi), %edi
	cmpl	%r14d, %edi
	jl	.LBB35_5
# %bb.9:
	cmpl	%r14d, %esi
	jge	.LBB35_19
# %bb.10:
	andl	$8388607, %edx          # imm = 0x7FFFFF
	movl	%r14d, %esi
	shll	$23, %esi
	orl	%edx, %esi
	movl	%esi, -4(%rcx,%rax,4)
	jmp	.LBB35_19
.LBB35_12:
	movl	8(%r15), %esi
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$14, %esi
	jmp	.LBB35_13
.LBB35_14:
	movq	8(%r15), %rax
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	addk
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
	shll	$6, %esi
	shll	$14, %eax
.LBB35_13:
	orl	%eax, %esi
	orl	$1, %esi
	jmp	.LBB35_18
.LBB35_15:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movslq	8(%r15), %rcx
	movl	$-16321, %edx           # imm = 0xC03F
	andl	(%rax,%rcx,4), %edx
	movzbl	%r14b, %esi
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax,%rcx,4)
	jmp	.LBB35_20
.LBB35_16:
	movl	8(%r15), %esi
	cmpl	%r14d, %esi
	je	.LBB35_20
# %bb.17:
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$23, %esi
	orl	%eax, %esi
.LBB35_18:
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
.LBB35_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB35_20:
	movl	%r14d, 8(%r15)
	movl	$12, (%r15)
.LBB35_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_4:
	movzbl	74(%rbx), %eax
	cmpl	%r14d, %eax
	jle	.LBB35_19
.LBB35_5:
	movl	%r14d, %eax
	shll	$6, %eax
	movl	%r14d, %esi
	shll	$23, %esi
	orl	%eax, %esi
	orl	$3, %esi
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB35_19
.Lfunc_end35:
	.size	discharge2reg, .Lfunc_end35-discharge2reg
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_2
	.quad	.LBB35_11
	.quad	.LBB35_11
	.quad	.LBB35_12
	.quad	.LBB35_14
	.quad	.LBB35_21
	.quad	.LBB35_21
	.quad	.LBB35_21
	.quad	.LBB35_21
	.quad	.LBB35_21
	.quad	.LBB35_15
	.quad	.LBB35_16
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
