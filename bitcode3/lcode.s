	.text
	.file	"lcode.c"
	.hidden	luaK_nil                # -- Begin function luaK_nil
	.globl	luaK_nil
	.p2align	4, 0x90
	.type	luaK_nil,@function
luaK_nil:                               # @luaK_nil
# %bb.0:
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
	jmp	luaK_code               # TAILCALL
.LBB0_9:
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
	shll	$6, %edx
	orl	%edx, %esi
	shll	$23, %ecx
	shll	$14, %r8d
	orl	%ecx, %r8d
	orl	%r8d, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	jmp	luaK_code               # TAILCALL
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
	jmp	.LBB2_8
.LBB2_2:
	movl	%r15d, %r14d
.LBB2_8:
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
	shll	$6, %edx
	orl	%edx, %esi
	shll	$14, %ecx
	orl	%ecx, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	jmp	luaK_code               # TAILCALL
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
	jmp	.LBB4_7
.LBB4_8:
	movl	%edx, (%rsi)
.LBB4_7:
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
	shll	$6, %esi
	shll	$23, %edx
	addl	$8388608, %edx          # imm = 0x800000
	orl	%edx, %esi
	orl	$30, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	jmp	luaK_code               # TAILCALL
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
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	cmpl	%edx, 48(%rdi)
	jne	.LBB7_8
# %bb.1:
	movl	%edx, 52(%r14)
	cmpl	$-1, %esi
	je	.LBB7_10
# %bb.2:
	movl	56(%r14), %eax
	cmpl	$-1, %eax
	je	.LBB7_9
# %bb.3:
	movq	(%r14), %rcx
	movq	24(%rcx), %r15
	.p2align	4, 0x90
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	movslq	%eax, %rbx
	movl	(%r15,%rbx,4), %eax
	shrl	$14, %eax
	leal	-131071(%rax), %ecx
	cmpl	$-1, %ecx
	leal	-131070(%rbx,%rax), %eax
	cmovel	%ecx, %eax
	cmpl	$-1, %eax
	jne	.LBB7_4
# %bb.5:
	notl	%r12d
	addl	%esi, %r12d
	movl	%r12d, %edi
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
	shll	$14, %r12d
	addl	%r12d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15,%rbx,4)
	jmp	.LBB7_10
.LBB7_8:
	movq	%r14, %rdi
	movl	$255, %ecx
	movl	%edx, %r8d
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	patchlistaux            # TAILCALL
.LBB7_9:
	movl	%esi, 56(%r14)
.LBB7_10:
	popq	%rbx
	popq	%r12
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
	jmp	.LBB8_7
.LBB8_8:
	movl	%esi, 56(%r14)
.LBB8_7:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaK_patchtohere, .Lfunc_end8-luaK_patchtohere
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function patchlistaux
	.type	patchlistaux,@function
patchlistaux:                           # @patchlistaux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cmpl	$-1, %esi
	je	.LBB9_8
# %bb.1:
	movl	%ecx, %r12d
	movl	%esi, %ebx
	movq	%rdi, %r13
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_2
	.p2align	4, 0x90
.LBB9_6:                                #   in Loop: Header=BB9_2 Depth=1
	movl	(%r12,%r14,4), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r12,%r14,4)
	movl	-44(%rbp), %r12d        # 4-byte Reload
.LBB9_7:                                #   in Loop: Header=BB9_2 Depth=1
	movl	%r15d, %ebx
	cmpl	$-1, %r15d
	je	.LBB9_8
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	24(%rax), %rax
	movslq	%ebx, %r14
	movl	(%rax,%r14,4), %eax
	shrl	$14, %eax
	leal	-131071(%rax), %ecx
	cmpl	$-1, %ecx
	leal	-131070(%r14,%rax), %r15d
	cmovel	%ecx, %r15d
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	patchtestreg
	testl	%eax, %eax
	je	.LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	fixjump
	jmp	.LBB9_7
	.p2align	4, 0x90
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	movq	(%r13), %rax
	movq	24(%rax), %r12
	notl	%ebx
	addl	-48(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_2 Depth=1
	movq	24(%r13), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
	jmp	.LBB9_6
.LBB9_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	patchlistaux, .Lfunc_end9-patchlistaux
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fixjump
	.type	fixjump,@function
fixjump:                                # @fixjump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	(%rdi), %rax
	movq	24(%rax), %r15
	movslq	%esi, %r12
	movl	%r12d, %ebx
	notl	%ebx
	addl	%edx, %ebx
	movl	%ebx, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB10_2
# %bb.1:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB10_2:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r15,%r12,4), %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r15,%r12,4)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fixjump, .Lfunc_end10-fixjump
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
	jle	.LBB11_4
# %bb.1:
	cmpl	$250, %ebx
	jl	.LBB11_3
# %bb.2:
	movq	%rdi, %r14
	movq	24(%rdi), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r14), %rax
.LBB11_3:
	addq	$115, %rax
	movb	%bl, (%rax)
.LBB11_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	luaK_checkstack, .Lfunc_end11-luaK_checkstack
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
	jle	.LBB12_5
# %bb.1:
	cmpl	$250, %ebx
	jl	.LBB12_2
# %bb.3:
	movl	%esi, %r14d
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r15), %rax
	addq	$115, %rax
	addl	60(%r15), %r14d
	jmp	.LBB12_4
.LBB12_2:
	addq	$115, %rax
	movl	%ebx, %r14d
.LBB12_4:
	movb	%bl, (%rax)
	movl	%r14d, %ebx
.LBB12_5:
	movl	%ebx, 60(%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	luaK_reserveregs, .Lfunc_end12-luaK_reserveregs
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaK_stringK, .Lfunc_end13-luaK_stringK
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
	jne	.LBB14_2
# %bb.1:
	cvttsd2si	(%rax), %eax
	jmp	.LBB14_18
.LBB14_2:
	movq	(%r13), %r12
	movslq	76(%r12), %rbx
	cvtsi2sdl	64(%r13), %xmm0
	movsd	%xmm0, (%rax)
	movl	$3, 8(%rax)
	movl	76(%r12), %edx
	cmpl	%edx, 64(%r13)
	jge	.LBB14_4
# %bb.3:
	movq	16(%r12), %rax
	cmpl	%edx, %ebx
	jl	.LBB14_6
	jmp	.LBB14_13
.LBB14_4:
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
	jge	.LBB14_13
.LBB14_6:
	movslq	%edx, %rcx
	subl	%ebx, %edx
	movq	%rbx, %r8
	notq	%r8
	addq	%rcx, %r8
	andq	$3, %rdx
	je	.LBB14_10
# %bb.7:                                # %.preheader1
	movq	%rbx, %rsi
	shlq	$4, %rsi
	leaq	(%rax,%rsi), %rdi
	addq	$8, %rdi
	negq	%rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB14_8:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	addq	$16, %rdi
	addq	$-1, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB14_8
# %bb.9:                                # %.loopexit2
	subq	%rsi, %rbx
.LBB14_10:
	cmpq	$3, %r8
	jb	.LBB14_13
# %bb.11:                               # %.preheader
	movq	%rbx, %rdx
	shlq	$4, %rdx
	addq	%rax, %rdx
	addq	$56, %rdx
	.p2align	4, 0x90
.LBB14_12:                              # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rdx)
	movl	$0, -32(%rdx)
	movl	$0, -16(%rdx)
	addq	$4, %rbx
	movl	$0, (%rdx)
	addq	$64, %rdx
	cmpq	%rcx, %rbx
	jl	.LBB14_12
.LBB14_13:
	movslq	64(%r13), %rcx
	shlq	$4, %rcx
	movq	(%r15), %rdx
	movq	%rdx, (%rax,%rcx)
	movl	8(%r15), %edx
	movl	%edx, 8(%rax,%rcx)
	cmpl	$4, 8(%r15)
	jl	.LBB14_17
# %bb.14:
	movq	(%r15), %rdx
	testb	$3, 9(%rdx)
	je	.LBB14_17
# %bb.15:
	testb	$4, 9(%r12)
	je	.LBB14_17
# %bb.16:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaC_barrierf
.LBB14_17:
	movl	64(%r13), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 64(%r13)
.LBB14_18:
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	addk, .Lfunc_end14-addk
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	luaK_numberK, .Lfunc_end15-luaK_numberK
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
	je	.LBB16_3
# %bb.1:
	cmpl	$13, %eax
	jne	.LBB16_9
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
	jmp	.LBB16_9
.LBB16_3:
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
	jl	.LBB16_8
# %bb.4:
	cmpl	$249, %ecx
	jl	.LBB16_5
# %bb.6:
	movq	24(%rbx), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%rbx), %r8
	addq	$115, %r8
	movl	60(%rbx), %ecx
	addl	$1, %ecx
	jmp	.LBB16_7
.LBB16_5:
	addq	$115, %r8
	movl	%r14d, %ecx
.LBB16_7:
	movb	%r14b, (%r8)
	movl	%ecx, %r14d
.LBB16_8:
	movl	%r14d, 60(%rbx)
.LBB16_9:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	luaK_setreturns, .Lfunc_end16-luaK_setreturns
                                        # -- End function
	.hidden	luaK_setoneret          # -- Begin function luaK_setoneret
	.globl	luaK_setoneret
	.p2align	4, 0x90
	.type	luaK_setoneret,@function
luaK_setoneret:                         # @luaK_setoneret
# %bb.0:
	movl	(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB17_3
# %bb.1:
	cmpl	$13, %eax
	jne	.LBB17_4
# %bb.2:
	movl	$12, (%rsi)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rsi), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%rsi)
	retq
.LBB17_3:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rsi), %rcx
	movl	$8388607, %edx          # imm = 0x7FFFFF
	andl	(%rax,%rcx,4), %edx
	orl	$16777216, %edx         # imm = 0x1000000
	movl	%edx, (%rax,%rcx,4)
	movl	$11, (%rsi)
.LBB17_4:
	retq
.Lfunc_end17:
	.size	luaK_setoneret, .Lfunc_end17-luaK_setoneret
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
	ja	.LBB18_16
# %bb.1:
	movq	%rsi, %rbx
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_2:
	movl	$12, (%rbx)
	jmp	.LBB18_16
.LBB18_3:
	movl	8(%rbx), %esi
	shll	$23, %esi
	orl	$4, %esi
	jmp	.LBB18_4
.LBB18_5:
	movl	8(%rbx), %esi
	shll	$14, %esi
	orl	$5, %esi
	jmp	.LBB18_4
.LBB18_6:
	movl	12(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB18_9
# %bb.7:
	movzbl	74(%rdi), %ecx
	cmpl	%ecx, %eax
	jl	.LBB18_9
# %bb.8:
	addl	$-1, 60(%rdi)
.LBB18_9:
	movl	8(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB18_12
# %bb.10:
	movzbl	74(%rdi), %ecx
	cmpl	%ecx, %eax
	jl	.LBB18_12
# %bb.11:
	addl	$-1, 60(%rdi)
	movl	8(%rbx), %eax
.LBB18_12:
	movl	12(%rbx), %esi
	shll	$23, %eax
	shll	$14, %esi
	orl	%eax, %esi
	orl	$6, %esi
.LBB18_4:
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	callq	luaK_code
	movl	%eax, 8(%rbx)
	jmp	.LBB18_15
.LBB18_14:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	$8388607, %edx          # imm = 0x7FFFFF
	andl	(%rax,%rcx,4), %edx
	orl	$16777216, %edx         # imm = 0x1000000
	movl	%edx, (%rax,%rcx,4)
.LBB18_15:
	movl	$11, (%rbx)
.LBB18_16:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB18_13:
	movl	$12, (%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%rbx)
	jmp	.LBB18_16
.Lfunc_end18:
	.size	luaK_dischargevars, .Lfunc_end18-luaK_dischargevars
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_5
	.quad	.LBB18_6
	.quad	.LBB18_16
	.quad	.LBB18_16
	.quad	.LBB18_16
	.quad	.LBB18_13
	.quad	.LBB18_14
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
	jne	.LBB19_4
# %bb.1:
	movl	8(%r14), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB19_4
# %bb.2:
	movzbl	74(%r15), %ecx
	cmpl	%ecx, %eax
	jl	.LBB19_4
# %bb.3:
	addl	$-1, 60(%r15)
.LBB19_4:
	movl	60(%r15), %ecx
	leal	1(%rcx), %ebx
	movq	(%r15), %rax
	movzbl	115(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB19_9
# %bb.5:
	cmpl	$249, %ecx
	jl	.LBB19_6
# %bb.7:
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r15), %rax
	addq	$115, %rax
	movl	60(%r15), %ecx
	addl	$1, %ecx
	jmp	.LBB19_8
.LBB19_6:
	addq	$115, %rax
	movl	%ebx, %ecx
.LBB19_8:
	movb	%bl, (%rax)
	movl	%ecx, %ebx
.LBB19_9:
	movl	%ebx, 60(%r15)
	addl	$-1, %ebx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	exp2reg                 # TAILCALL
.Lfunc_end19:
	.size	luaK_exp2nextreg, .Lfunc_end19-luaK_exp2nextreg
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
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	discharge2reg
	cmpl	$10, (%r12)
	jne	.LBB20_8
# %bb.1:
	movl	8(%r12), %ebx
	cmpl	$-1, %ebx
	je	.LBB20_8
# %bb.2:
	movl	16(%r12), %ecx
	cmpl	$-1, %ecx
	je	.LBB20_35
# %bb.3:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	(%r15), %rax
	movq	24(%rax), %r14
	.p2align	4, 0x90
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %r13
	movl	(%r14,%r13,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%r13,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB20_4
# %bb.5:
	notl	%eax
	addl	%eax, %ebx
	movl	%ebx, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB20_7
# %bb.6:
	movq	24(%r15), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB20_7:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r14,%r13,4), %eax
	shll	$14, %ebx
	addl	%ebx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r14,%r13,4)
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB20_8:
	movl	16(%r12), %ebx
.LBB20_9:
	movl	20(%r12), %eax
	cmpl	%eax, %ebx
	je	.LBB20_47
# %bb.10:
	cmpl	$-1, %ebx
	je	.LBB20_17
# %bb.11:
	movq	(%r15), %rcx
	movq	24(%rcx), %rcx
	.p2align	4, 0x90
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rdx
	testl	%edx, %edx
	jle	.LBB20_14
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=1
	movl	-4(%rcx,%rdx,4), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	js	.LBB20_15
.LBB20_14:                              #   in Loop: Header=BB20_12 Depth=1
	movl	(%rcx,%rdx,4), %esi
.LBB20_15:                              #   in Loop: Header=BB20_12 Depth=1
	andl	$63, %esi
	cmpl	$27, %esi
	jne	.LBB20_25
# %bb.16:                               #   in Loop: Header=BB20_12 Depth=1
	movl	(%rcx,%rdx,4), %esi
	shrl	$14, %esi
	leal	-131071(%rsi), %edi
	cmpl	$-1, %edi
	leal	-131070(%rdx,%rsi), %ebx
	cmovel	%edi, %ebx
	cmpl	$-1, %ebx
	jne	.LBB20_12
.LBB20_17:
	movl	$-1, %r14d
	cmpl	$-1, %eax
	je	.LBB20_34
# %bb.18:
	movq	(%r15), %rcx
	movq	24(%rcx), %rcx
	.p2align	4, 0x90
.LBB20_19:                              # =>This Inner Loop Header: Depth=1
	cltq
	testl	%eax, %eax
	jle	.LBB20_21
# %bb.20:                               #   in Loop: Header=BB20_19 Depth=1
	movl	-4(%rcx,%rax,4), %edx
	movl	%edx, %esi
	andl	$63, %esi
	cmpb	$0, luaP_opmodes(%rsi)
	js	.LBB20_22
.LBB20_21:                              #   in Loop: Header=BB20_19 Depth=1
	movl	(%rcx,%rax,4), %edx
.LBB20_22:                              #   in Loop: Header=BB20_19 Depth=1
	andl	$63, %edx
	cmpl	$27, %edx
	jne	.LBB20_25
# %bb.23:                               #   in Loop: Header=BB20_19 Depth=1
	movl	(%rcx,%rax,4), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rax,%rdx), %eax
	cmovel	%esi, %eax
	cmpl	$-1, %eax
	jne	.LBB20_19
.LBB20_34:
	movl	$-1, %r8d
	jmp	.LBB20_46
.LBB20_25:
	cmpl	$10, (%r12)
	jne	.LBB20_27
# %bb.26:
	leaq	24(%r15), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	56(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$-1, %ebx
	jmp	.LBB20_37
.LBB20_27:
	leaq	56(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	56(%r15), %r14d
	movl	$-1, 56(%r15)
	leaq	24(%r15), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	%eax, %ebx
	cmpl	$-1, %r14d
	je	.LBB20_37
# %bb.28:
	cmpl	$-1, %ebx
	je	.LBB20_36
# %bb.29:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	(%r15), %rax
	movq	24(%rax), %r13
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%ebx, %ecx
	.p2align	4, 0x90
.LBB20_30:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB20_30
# %bb.31:
	notl	%eax
	addl	%eax, %r14d
	movl	%r14d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB20_33
# %bb.32:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB20_33:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r14d
	addl	%r14d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB20_37
.LBB20_35:
	movl	%ebx, 16(%r12)
	jmp	.LBB20_9
.LBB20_36:
	movl	%r14d, %ebx
.LBB20_37:
	movl	48(%r15), %eax
	movl	%eax, 52(%r15)
	movl	%r13d, %r14d
	shll	$6, %r14d
	movl	%r14d, %esi
	orl	$16386, %esi            # imm = 0x4002
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	luaK_code
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	48(%r15), %eax
	movl	%eax, 52(%r15)
	orl	$8388610, %r14d         # imm = 0x800002
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	luaK_code
	movl	%eax, %r14d
	movl	48(%r15), %eax
	movl	%eax, 52(%r15)
	cmpl	$-1, %ebx
	je	.LBB20_45
# %bb.38:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	cmpl	$-1, %ecx
	je	.LBB20_44
# %bb.39:
	movl	%r14d, -64(%rbp)        # 4-byte Spill
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	%rbx, %r13
	movq	(%r15), %rax
	movq	24(%rax), %r14
	.p2align	4, 0x90
.LBB20_40:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r14,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB20_40
# %bb.41:
	notl	%eax
	addl	%eax, %r13d
	movl	%r13d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB20_43
# %bb.42:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB20_43:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r14,%rbx,4), %eax
	shll	$14, %r13d
	addl	%r13d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r14,%rbx,4)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movl	-64(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB20_45
.LBB20_44:
	movl	%ebx, (%rax)
.LBB20_45:
	movl	-56(%rbp), %r8d         # 4-byte Reload
.LBB20_46:
	movl	48(%r15), %ebx
	movl	%ebx, 52(%r15)
	movl	20(%r12), %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	callq	patchlistaux
	movl	16(%r12), %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	movl	%r14d, %r8d
	callq	patchlistaux
.LBB20_47:
	movq	$-1, 16(%r12)
	movl	%r13d, 8(%r12)
	movl	$12, (%r12)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	exp2reg, .Lfunc_end20-exp2reg
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
	jne	.LBB21_1
# %bb.3:
	movl	8(%rbx), %eax
	movl	16(%rbx), %ecx
	cmpl	20(%rbx), %ecx
	je	.LBB21_7
# %bb.4:
	leaq	8(%rbx), %r15
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB21_2
# %bb.5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	exp2reg
	jmp	.LBB21_6
.LBB21_1:
	leaq	8(%rbx), %r15
.LBB21_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB21_6:
	movl	(%r15), %eax
.LBB21_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	luaK_exp2anyreg, .Lfunc_end21-luaK_exp2anyreg
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
	jne	.LBB22_1
# %bb.5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaK_dischargevars      # TAILCALL
.LBB22_1:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	jne	.LBB22_4
# %bb.2:
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	jne	.LBB22_3
# %bb.6:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB22_3:
	movl	8(%rbx), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB22_7
.LBB22_4:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaK_exp2nextreg        # TAILCALL
.LBB22_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	exp2reg                 # TAILCALL
.Lfunc_end22:
	.size	luaK_exp2val, .Lfunc_end22-luaK_exp2val
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	16(%rsi), %r12d
	movl	20(%rsi), %ebx
	callq	luaK_dischargevars
	cmpl	%ebx, %r12d
	je	.LBB23_5
# %bb.1:
	cmpl	$12, (%r15)
	jne	.LBB23_4
# %bb.2:
	movl	16(%r15), %eax
	cmpl	20(%r15), %eax
	je	.LBB23_5
# %bb.3:
	movl	8(%r15), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB23_26
.LBB23_4:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2nextreg
.LBB23_5:
	movl	(%r15), %eax
	leal	-1(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB23_8
# %bb.6:
	cmpl	$4, %eax
	je	.LBB23_12
# %bb.7:
	cmpl	$5, %eax
	jne	.LBB23_14
.LBB23_8:
	cmpl	$255, 64(%r14)
	jg	.LBB23_14
# %bb.9:
	cmpl	$5, %eax
	je	.LBB23_19
# %bb.10:
	cmpl	$1, %eax
	jne	.LBB23_20
# %bb.11:
	movl	$0, -56(%rbp)
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	movl	$5, -40(%rbp)
	leaq	-48(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rdi
	jmp	.LBB23_22
.LBB23_12:
	movl	8(%r15), %eax
	cmpl	$255, %eax
	jle	.LBB23_23
.LBB23_14:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%r15)
	jne	.LBB23_17
# %bb.15:
	movl	8(%r15), %eax
	movl	16(%r15), %ecx
	cmpl	20(%r15), %ecx
	je	.LBB23_24
# %bb.16:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jge	.LBB23_25
.LBB23_17:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaK_exp2nextreg
.LBB23_18:
	movl	8(%r15), %eax
	jmp	.LBB23_24
.LBB23_19:
	movq	8(%r15), %rax
	movq	%rax, -48(%rbp)
	movl	$3, -40(%rbp)
	jmp	.LBB23_21
.LBB23_20:
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	sete	%cl
	movl	%ecx, -48(%rbp)
	movl	$1, -40(%rbp)
.LBB23_21:
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rdx, %rsi
.LBB23_22:
	callq	addk
	movl	%eax, 8(%r15)
	movl	$4, (%r15)
.LBB23_23:
	orl	$256, %eax              # imm = 0x100
.LBB23_24:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_25:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	exp2reg
	jmp	.LBB23_18
.LBB23_26:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	exp2reg
	jmp	.LBB23_5
.Lfunc_end23:
	.size	luaK_exp2RK, .Lfunc_end23-luaK_exp2RK
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
	ja	.LBB24_25
# %bb.1:
	movq	%rsi, %r15
	jmpq	*.LJTI24_0(,%rax,8)
.LBB24_2:
	cmpl	$12, (%rbx)
	jne	.LBB24_6
# %bb.3:
	movl	8(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB24_6
# %bb.4:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB24_6
# %bb.5:
	addl	$-1, 60(%r14)
.LBB24_6:
	movl	8(%r15), %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	exp2reg                 # TAILCALL
.LBB24_15:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	jne	.LBB24_16
# %bb.18:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	je	.LBB24_22
# %bb.19:
	leaq	8(%rbx), %r12
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jl	.LBB24_17
# %bb.20:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB24_21
.LBB24_23:
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
	jmp	.LBB24_24
.LBB24_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%rbx)
	jne	.LBB24_8
# %bb.10:
	movl	8(%rbx), %edx
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	je	.LBB24_14
# %bb.11:
	leaq	8(%rbx), %r12
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jl	.LBB24_9
# %bb.12:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	exp2reg
	jmp	.LBB24_13
.LBB24_16:
	leaq	8(%rbx), %r12
.LBB24_17:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB24_21:
	movl	(%r12), %edx
.LBB24_22:
	movl	8(%r15), %esi
	shll	$6, %edx
	shll	$14, %esi
	orl	%edx, %esi
	orl	$7, %esi
	jmp	.LBB24_24
.LBB24_8:
	leaq	8(%rbx), %r12
.LBB24_9:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
.LBB24_13:
	movl	(%r12), %edx
.LBB24_14:
	movl	8(%r15), %esi
	shll	$6, %edx
	shll	$23, %esi
	orl	%edx, %esi
	orl	$8, %esi
.LBB24_24:
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	callq	luaK_code
.LBB24_25:
	cmpl	$12, (%rbx)
	jne	.LBB24_29
# %bb.26:
	movl	8(%rbx), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB24_29
# %bb.27:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB24_29
# %bb.28:
	addl	$-1, 60(%r14)
.LBB24_29:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	luaK_storevar, .Lfunc_end24-luaK_storevar
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI24_0:
	.quad	.LBB24_2
	.quad	.LBB24_7
	.quad	.LBB24_15
	.quad	.LBB24_23
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
	jne	.LBB25_4
# %bb.1:
	movl	16(%r14), %eax
	cmpl	20(%r14), %eax
	je	.LBB25_5
# %bb.2:
	movl	8(%r14), %edx
	movzbl	74(%r12), %eax
	cmpl	%eax, %edx
	jge	.LBB25_3
.LBB25_4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2nextreg
.LBB25_5:
	cmpl	$12, (%r14)
	jne	.LBB25_9
.LBB25_6:
	movl	8(%r14), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB25_9
# %bb.7:
	movzbl	74(%r12), %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_9
# %bb.8:
	addl	$-1, 60(%r12)
	jmp	.LBB25_9
.LBB25_3:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	exp2reg
	cmpl	$12, (%r14)
	je	.LBB25_6
.LBB25_9:
	movl	60(%r12), %r13d
	leal	2(%r13), %ebx
	movq	(%r12), %rax
	movzbl	115(%rax), %ecx
	cmpl	%ecx, %ebx
	jle	.LBB25_14
# %bb.10:
	cmpl	$248, %r13d
	jl	.LBB25_11
# %bb.12:
	movq	24(%r12), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r12), %rax
	addq	$115, %rax
	movl	60(%r12), %ecx
	addl	$2, %ecx
	jmp	.LBB25_13
.LBB25_11:
	addq	$115, %rax
	movl	%ebx, %ecx
.LBB25_13:
	movb	%bl, (%rax)
	movl	%ecx, %ebx
.LBB25_14:
	movl	%ebx, 60(%r12)
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
	cmpl	$12, (%r15)
	jne	.LBB25_18
# %bb.15:
	movl	8(%r15), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB25_18
# %bb.16:
	movzbl	74(%r12), %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_18
# %bb.17:
	addl	$-1, 60(%r12)
.LBB25_18:
	movl	%r13d, 8(%r14)
	movl	$12, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	luaK_self, .Lfunc_end25-luaK_self
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
	jb	.LBB26_16
# %bb.1:
	cmpl	$2, %eax
	je	.LBB26_16
# %bb.2:
	cmpl	$10, %eax
	jne	.LBB26_8
# %bb.3:
	movslq	8(%r14), %rcx
	movq	(%r12), %rdx
	leaq	(,%rcx,4), %rax
	addq	24(%rdx), %rax
	testq	%rcx, %rcx
	jle	.LBB26_6
# %bb.4:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	andl	$63, %edx
	cmpb	$0, luaP_opmodes(%rdx)
	js	.LBB26_5
.LBB26_6:
	movl	(%rax), %ecx
	jmp	.LBB26_7
.LBB26_8:
	movq	%r12, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	jumponcond
	movl	%eax, %r15d
	cmpl	$-1, %r15d
	jne	.LBB26_10
	jmp	.LBB26_16
.LBB26_5:
	addq	$-4, %rax
.LBB26_7:
	movl	%ecx, %edx
	andl	$-16321, %edx           # imm = 0xC03F
	xorl	%esi, %esi
	testl	$16320, %ecx            # imm = 0x3FC0
	sete	%sil
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax)
	movl	8(%r14), %r15d
	cmpl	$-1, %r15d
	je	.LBB26_16
.LBB26_10:
	movl	20(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB26_24
# %bb.11:
	movq	(%r12), %rax
	movq	24(%rax), %r13
	.p2align	4, 0x90
.LBB26_12:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB26_12
# %bb.13:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB26_15
# %bb.14:
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB26_15:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	jmp	.LBB26_16
.LBB26_24:
	movl	%r15d, 20(%r14)
.LBB26_16:
	movl	16(%r14), %r15d
	movl	48(%r12), %eax
	movl	%eax, 52(%r12)
	cmpl	$-1, %r15d
	je	.LBB26_23
# %bb.17:
	movl	56(%r12), %ecx
	cmpl	$-1, %ecx
	je	.LBB26_25
# %bb.18:
	movq	(%r12), %rax
	movq	24(%rax), %r13
	.p2align	4, 0x90
.LBB26_19:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB26_19
# %bb.20:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB26_22
# %bb.21:
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB26_22:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	jmp	.LBB26_23
.LBB26_25:
	movl	%r15d, 56(%r12)
.LBB26_23:
	movl	$-1, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	luaK_goiftrue, .Lfunc_end26-luaK_goiftrue
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
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	(%rsi), %eax
	cmpl	$12, %eax
	je	.LBB27_11
# %bb.1:
	cmpl	$11, %eax
	jne	.LBB27_4
# %bb.2:
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movslq	8(%rbx), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, %eax
	andl	$63, %eax
	cmpl	$19, %eax
	jne	.LBB27_4
# %bb.3:
	addl	$-1, 48(%r15)
	shrl	$23, %edx
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	sete	%r8b
	movq	%r15, %rdi
	movl	$26, %esi
	xorl	%ecx, %ecx
	jmp	.LBB27_15
.LBB27_4:
	movl	60(%r15), %ecx
	leal	1(%rcx), %r12d
	movq	(%r15), %rax
	movzbl	115(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB27_9
# %bb.5:
	cmpl	$249, %ecx
	jl	.LBB27_6
# %bb.7:
	movq	24(%r15), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r15), %rax
	addq	$115, %rax
	movl	60(%r15), %ecx
	addl	$1, %ecx
	jmp	.LBB27_8
.LBB27_6:
	addq	$115, %rax
	movl	%r12d, %ecx
.LBB27_8:
	movb	%r12b, (%rax)
	movl	%ecx, %r12d
.LBB27_9:
	movl	%r12d, 60(%r15)
	addl	$-1, %r12d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	discharge2reg
	cmpl	$12, (%rbx)
	jne	.LBB27_10
.LBB27_11:
	movl	8(%rbx), %eax
	addq	$8, %rbx
	testl	$256, %eax              # imm = 0x100
	jne	.LBB27_14
# %bb.12:
	movzbl	74(%r15), %ecx
	cmpl	%ecx, %eax
	jl	.LBB27_14
# %bb.13:
	addl	$-1, 60(%r15)
	jmp	.LBB27_14
.LBB27_10:
	addq	$8, %rbx
.LBB27_14:
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movl	$27, %esi
	movl	$255, %edx
	movl	%r14d, %r8d
.LBB27_15:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	condjump                # TAILCALL
.Lfunc_end27:
	.size	jumponcond, .Lfunc_end27-jumponcond
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	luaK_indexed, .Lfunc_end28-luaK_indexed
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
	je	.LBB29_50
# %bb.1:
	cmpl	$1, %esi
	je	.LBB29_12
# %bb.2:
	testl	%esi, %esi
	jne	.LBB29_57
# %bb.3:
	cmpl	$5, (%r12)
	jne	.LBB29_6
# %bb.4:
	cmpl	$-1, 16(%r12)
	jne	.LBB29_6
# %bb.5:
	cmpl	$-1, 20(%r12)
	je	.LBB29_11
.LBB29_6:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%r12)
	jne	.LBB29_10
# %bb.7:
	movl	16(%r12), %eax
	cmpl	20(%r12), %eax
	je	.LBB29_11
# %bb.8:
	movl	8(%r12), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB29_9
.LBB29_10:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
.LBB29_11:
	leaq	-56(%rbp), %rcx
	movq	%r14, %rdi
	movl	$18, %esi
	jmp	.LBB29_56
.LBB29_50:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	cmpl	$12, (%r12)
	jne	.LBB29_54
# %bb.51:
	movl	16(%r12), %eax
	cmpl	20(%r12), %eax
	je	.LBB29_55
# %bb.52:
	movl	8(%r12), %edx
	movzbl	74(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB29_53
.LBB29_54:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
.LBB29_55:
	leaq	-56(%rbp), %rcx
	movq	%r14, %rdi
	movl	$20, %esi
.LBB29_56:
	movq	%r12, %rdx
	callq	codearith
.LBB29_57:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_12:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_dischargevars
	movl	(%r12), %eax
	addl	$-1, %eax
	cmpl	$11, %eax
	ja	.LBB29_31
# %bb.13:
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_15:
	movl	$3, (%r12)
	jmp	.LBB29_31
.LBB29_14:
	movl	$2, (%r12)
	jmp	.LBB29_31
.LBB29_53:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	exp2reg
	jmp	.LBB29_55
.LBB29_9:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	exp2reg
	jmp	.LBB29_11
.LBB29_16:
	movslq	8(%r12), %rcx
	movq	(%r14), %rdx
	leaq	(,%rcx,4), %rax
	addq	24(%rdx), %rax
	testq	%rcx, %rcx
	jle	.LBB29_19
# %bb.17:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	andl	$63, %edx
	cmpb	$0, luaP_opmodes(%rdx)
	js	.LBB29_18
.LBB29_19:
	movl	(%rax), %ecx
	jmp	.LBB29_20
.LBB29_21:
	movl	60(%r14), %ecx
	leal	1(%rcx), %r15d
	movq	(%r14), %rax
	movzbl	115(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB29_26
# %bb.22:
	cmpl	$249, %ecx
	jl	.LBB29_23
# %bb.24:
	movq	24(%r14), %rdi
	movl	$.L.str, %esi
	callq	luaX_syntaxerror
	movq	(%r14), %rax
	addq	$115, %rax
	movl	60(%r14), %ecx
	addl	$1, %ecx
	jmp	.LBB29_25
.LBB29_18:
	addq	$-4, %rax
.LBB29_20:
	movl	%ecx, %edx
	andl	$-16321, %edx           # imm = 0xC03F
	xorl	%esi, %esi
	testl	$16320, %ecx            # imm = 0x3FC0
	sete	%sil
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax)
	jmp	.LBB29_31
.LBB29_23:
	addq	$115, %rax
	movl	%r15d, %ecx
.LBB29_25:
	movb	%r15b, (%rax)
	movl	%ecx, %r15d
.LBB29_26:
	movl	%r15d, 60(%r14)
	addl	$-1, %r15d
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	discharge2reg
	cmpl	$12, (%r12)
	jne	.LBB29_30
.LBB29_27:
	movl	8(%r12), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB29_30
# %bb.28:
	movzbl	74(%r14), %ecx
	cmpl	%ecx, %eax
	jl	.LBB29_30
# %bb.29:
	addl	$-1, 60(%r14)
.LBB29_30:
	movl	8(%r12), %esi
	shll	$23, %esi
	orl	$19, %esi
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	callq	luaK_code
	movl	%eax, 8(%r12)
	movl	$11, (%r12)
.LBB29_31:
	movl	16(%r12), %ecx
	movl	20(%r12), %eax
	movl	%ecx, 20(%r12)
	movl	%eax, 16(%r12)
	cmpl	$-1, %ecx
	je	.LBB29_41
# %bb.32:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	jmp	.LBB29_33
	.p2align	4, 0x90
.LBB29_39:                              #   in Loop: Header=BB29_33 Depth=1
	movl	(%rdx), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rcx,%rdx), %ecx
	cmovel	%esi, %ecx
	cmpl	$-1, %ecx
	je	.LBB29_40
.LBB29_33:                              # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rsi
	leaq	(%rax,%rsi,4), %rdx
	testl	%esi, %esi
	jle	.LBB29_36
# %bb.34:                               #   in Loop: Header=BB29_33 Depth=1
	movl	-4(%rdx), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	js	.LBB29_35
.LBB29_36:                              #   in Loop: Header=BB29_33 Depth=1
	movl	(%rdx), %esi
	movq	%rdx, %rdi
	jmp	.LBB29_37
	.p2align	4, 0x90
.LBB29_35:                              #   in Loop: Header=BB29_33 Depth=1
	leaq	-4(%rdx), %rdi
.LBB29_37:                              #   in Loop: Header=BB29_33 Depth=1
	movl	%esi, %ebx
	andl	$63, %ebx
	cmpl	$27, %ebx
	jne	.LBB29_39
# %bb.38:                               #   in Loop: Header=BB29_33 Depth=1
	movl	%esi, %ebx
	shrl	$17, %ebx
	andl	$-64, %ebx
	andl	$8372224, %esi          # imm = 0x7FC000
	orl	%ebx, %esi
	orl	$26, %esi
	movl	%esi, (%rdi)
	jmp	.LBB29_39
.LBB29_40:
	movl	16(%r12), %eax
.LBB29_41:
	cmpl	$-1, %eax
	je	.LBB29_57
# %bb.42:
	movq	(%r14), %rcx
	movq	24(%rcx), %rcx
	jmp	.LBB29_43
	.p2align	4, 0x90
.LBB29_49:                              #   in Loop: Header=BB29_43 Depth=1
	movl	(%rdx), %edx
	shrl	$14, %edx
	leal	-131071(%rdx), %esi
	cmpl	$-1, %esi
	leal	-131070(%rax,%rdx), %eax
	cmovel	%esi, %eax
	cmpl	$-1, %eax
	je	.LBB29_57
.LBB29_43:                              # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rsi
	leaq	(%rcx,%rsi,4), %rdx
	testl	%esi, %esi
	jle	.LBB29_46
# %bb.44:                               #   in Loop: Header=BB29_43 Depth=1
	movl	-4(%rdx), %esi
	movl	%esi, %edi
	andl	$63, %edi
	cmpb	$0, luaP_opmodes(%rdi)
	js	.LBB29_45
.LBB29_46:                              #   in Loop: Header=BB29_43 Depth=1
	movl	(%rdx), %esi
	movq	%rdx, %rdi
	jmp	.LBB29_47
	.p2align	4, 0x90
.LBB29_45:                              #   in Loop: Header=BB29_43 Depth=1
	leaq	-4(%rdx), %rdi
.LBB29_47:                              #   in Loop: Header=BB29_43 Depth=1
	movl	%esi, %ebx
	andl	$63, %ebx
	cmpl	$27, %ebx
	jne	.LBB29_49
# %bb.48:                               #   in Loop: Header=BB29_43 Depth=1
	movl	%esi, %ebx
	shrl	$17, %ebx
	andl	$-64, %ebx
	andl	$8372224, %esi          # imm = 0x7FC000
	orl	%ebx, %esi
	orl	$26, %esi
	movl	%esi, (%rdi)
	jmp	.LBB29_49
.Lfunc_end29:
	.size	luaK_prefix, .Lfunc_end29-luaK_prefix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI29_0:
	.quad	.LBB29_14
	.quad	.LBB29_15
	.quad	.LBB29_14
	.quad	.LBB29_15
	.quad	.LBB29_15
	.quad	.LBB29_31
	.quad	.LBB29_31
	.quad	.LBB29_31
	.quad	.LBB29_31
	.quad	.LBB29_16
	.quad	.LBB29_21
	.quad	.LBB29_27
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function codearith
.LCPI30_0:
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
	jne	.LBB30_20
# %bb.1:
	cmpl	$-1, 16(%r13)
	jne	.LBB30_20
# %bb.2:
	cmpl	$-1, 20(%r13)
	jne	.LBB30_20
# %bb.3:
	cmpl	$5, (%r12)
	jne	.LBB30_20
# %bb.4:
	cmpl	$-1, 16(%r12)
	jne	.LBB30_20
# %bb.5:
	cmpl	$-1, 20(%r12)
	je	.LBB30_6
.LBB30_20:
	xorl	%ebx, %ebx
	cmpl	$18, %r15d
	je	.LBB30_23
# %bb.21:
	cmpl	$20, %r15d
	je	.LBB30_23
.LBB30_22:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2RK
	movl	%eax, %ebx
.LBB30_23:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	%ebx, %eax
	jle	.LBB30_30
# %bb.24:
	cmpl	$12, (%r13)
	jne	.LBB30_28
# %bb.25:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB30_28
# %bb.26:
	movzbl	74(%r14), %edx
	cmpl	%edx, %ecx
	jl	.LBB30_28
# %bb.27:
	addl	$-1, 60(%r14)
.LBB30_28:
	cmpl	$12, (%r12)
	jne	.LBB30_39
# %bb.29:
	movl	8(%r12), %ecx
	testl	$256, %ecx              # imm = 0x100
	je	.LBB30_37
	jmp	.LBB30_39
.LBB30_30:
	cmpl	$12, (%r12)
	jne	.LBB30_34
# %bb.31:
	movl	8(%r12), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB30_34
# %bb.32:
	movzbl	74(%r14), %edx
	cmpl	%edx, %ecx
	jl	.LBB30_34
# %bb.33:
	addl	$-1, 60(%r14)
.LBB30_34:
	cmpl	$12, (%r13)
	jne	.LBB30_39
# %bb.35:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB30_39
.LBB30_37:
	movzbl	74(%r14), %edx
	cmpl	%edx, %ecx
	jl	.LBB30_39
# %bb.38:
	addl	$-1, 60(%r14)
.LBB30_39:
	shll	$23, %eax
	shll	$14, %ebx
	orl	%r15d, %ebx
	orl	%eax, %ebx
	movq	24(%r14), %rax
	movl	8(%rax), %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_code
	movl	%eax, 8(%r13)
	movl	$11, (%r13)
.LBB30_40:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_6:
	xorpd	%xmm0, %xmm0
	leal	-12(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB30_19
# %bb.7:
	movsd	8(%r13), %xmm2          # xmm2 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	xorl	%ebx, %ebx
	jmpq	*.LJTI30_0(,%rax,8)
.LBB30_8:
	addsd	%xmm1, %xmm2
	jmp	.LBB30_17
.LBB30_9:
	subsd	%xmm1, %xmm2
	jmp	.LBB30_17
.LBB30_10:
	mulsd	%xmm1, %xmm2
	jmp	.LBB30_17
.LBB30_11:
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB30_12
	jnp	.LBB30_22
.LBB30_12:
	divsd	%xmm1, %xmm2
	jmp	.LBB30_17
.LBB30_13:
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB30_14
	jnp	.LBB30_22
.LBB30_14:
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm2, -64(%rbp)        # 16-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	floor
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.LBB30_18
.LBB30_15:
	movapd	%xmm2, %xmm0
	callq	pow
	jmp	.LBB30_18
.LBB30_16:
	xorpd	.LCPI30_0(%rip), %xmm2
.LBB30_17:
	movapd	%xmm2, %xmm0
.LBB30_18:
	ucomisd	%xmm0, %xmm0
	jp	.LBB30_20
.LBB30_19:
	movsd	%xmm0, 8(%r13)
	jmp	.LBB30_40
.Lfunc_end30:
	.size	codearith, .Lfunc_end30-codearith
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI30_0:
	.quad	.LBB30_8
	.quad	.LBB30_9
	.quad	.LBB30_10
	.quad	.LBB30_11
	.quad	.LBB30_13
	.quad	.LBB30_15
	.quad	.LBB30_16
	.quad	.LBB30_19
	.quad	.LBB30_23
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
	ja	.LBB31_5
# %bb.1:
	movl	%esi, %eax
	jmpq	*.LJTI31_0(,%rax,8)
.LBB31_2:
	cmpl	$5, (%r13)
	jne	.LBB31_5
# %bb.3:
	cmpl	$-1, 16(%r13)
	jne	.LBB31_5
# %bb.4:
	cmpl	$-1, 20(%r13)
	je	.LBB31_31
.LBB31_5:
	movq	%r14, %rdi
	movq	%r13, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaK_exp2RK             # TAILCALL
.LBB31_6:
	movq	%r14, %rdi
	movq	%r13, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaK_exp2nextreg        # TAILCALL
.LBB31_7:
	movq	%r14, %rdi
	movq	%r13, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaK_goiftrue           # TAILCALL
.LBB31_8:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	luaK_dischargevars
	movl	(%r13), %eax
	cmpl	$1, %eax
	je	.LBB31_21
# %bb.9:
	cmpl	$3, %eax
	je	.LBB31_21
# %bb.10:
	cmpl	$10, %eax
	jne	.LBB31_12
# %bb.11:
	movl	8(%r13), %r15d
	jmp	.LBB31_13
.LBB31_12:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	jumponcond
	movl	%eax, %r15d
.LBB31_13:
	cmpl	$-1, %r15d
	je	.LBB31_21
# %bb.14:
	movl	16(%r13), %ecx
	cmpl	$-1, %ecx
	je	.LBB31_20
# %bb.15:
	movq	(%r14), %rax
	movq	24(%rax), %r12
	.p2align	4, 0x90
.LBB31_16:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r12,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB31_16
# %bb.17:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB31_19
# %bb.18:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB31_19:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r12,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r12,%rbx,4)
	jmp	.LBB31_21
.LBB31_20:
	movl	%r15d, 16(%r13)
.LBB31_21:
	movl	20(%r13), %r15d
	movl	48(%r14), %eax
	movl	%eax, 52(%r14)
	cmpl	$-1, %r15d
	je	.LBB31_30
# %bb.22:
	movl	56(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB31_29
# %bb.23:
	movq	(%r14), %rax
	movq	24(%rax), %r12
	.p2align	4, 0x90
.LBB31_24:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r12,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB31_24
# %bb.25:
	notl	%eax
	addl	%eax, %r15d
	movl	%r15d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB31_27
# %bb.26:
	movq	24(%r14), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB31_27:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r12,%rbx,4), %eax
	shll	$14, %r15d
	addl	%r15d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r12,%rbx,4)
	jmp	.LBB31_30
.LBB31_29:
	movl	%r15d, 56(%r14)
.LBB31_30:
	movl	$-1, 20(%r13)
.LBB31_31:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	luaK_infix, .Lfunc_end31-luaK_infix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI31_0:
	.quad	.LBB31_2
	.quad	.LBB31_2
	.quad	.LBB31_2
	.quad	.LBB31_2
	.quad	.LBB31_2
	.quad	.LBB31_2
	.quad	.LBB31_6
	.quad	.LBB31_5
	.quad	.LBB31_5
	.quad	.LBB31_5
	.quad	.LBB31_5
	.quad	.LBB31_5
	.quad	.LBB31_5
	.quad	.LBB31_7
	.quad	.LBB31_8
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
	ja	.LBB32_93
# %bb.1:
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	%esi, %eax
	jmpq	*.LJTI32_0(,%rax,8)
.LBB32_28:
	movq	%r15, %rdi
	movl	$12, %esi
	jmp	.LBB32_29
.LBB32_30:
	movq	%r15, %rdi
	movl	$13, %esi
	jmp	.LBB32_29
.LBB32_31:
	movq	%r15, %rdi
	movl	$14, %esi
	jmp	.LBB32_29
.LBB32_32:
	movq	%r15, %rdi
	movl	$15, %esi
	jmp	.LBB32_29
.LBB32_33:
	movq	%r15, %rdi
	movl	$16, %esi
	jmp	.LBB32_29
.LBB32_34:
	movq	%r15, %rdi
	movl	$17, %esi
	jmp	.LBB32_29
.LBB32_46:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r13)
	jne	.LBB32_50
# %bb.47:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_50
# %bb.48:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_50
# %bb.49:
	addl	$-1, 60(%r15)
.LBB32_50:
	cmpl	$12, (%r14)
	jne	.LBB32_54
# %bb.51:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_54
# %bb.52:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_54
# %bb.53:
	addl	$-1, 60(%r15)
.LBB32_54:
	movq	%r15, %rdi
	movl	$23, %esi
	xorl	%edx, %edx
	jmp	.LBB32_45
.LBB32_55:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r13)
	jne	.LBB32_59
# %bb.56:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_59
# %bb.57:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_59
# %bb.58:
	addl	$-1, 60(%r15)
.LBB32_59:
	cmpl	$12, (%r14)
	jne	.LBB32_63
# %bb.60:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_63
# %bb.61:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_63
# %bb.62:
	addl	$-1, 60(%r15)
.LBB32_63:
	movq	%r15, %rdi
	movl	$24, %esi
	jmp	.LBB32_44
.LBB32_73:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r13)
	jne	.LBB32_77
# %bb.74:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_77
# %bb.75:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_77
# %bb.76:
	addl	$-1, 60(%r15)
.LBB32_77:
	cmpl	$12, (%r14)
	jne	.LBB32_81
# %bb.78:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_81
# %bb.79:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_81
# %bb.80:
	addl	$-1, 60(%r15)
.LBB32_81:
	movq	%r15, %rdi
	movl	$24, %esi
	jmp	.LBB32_91
.LBB32_82:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r13)
	jne	.LBB32_86
# %bb.83:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_86
# %bb.84:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_86
# %bb.85:
	addl	$-1, 60(%r15)
.LBB32_86:
	cmpl	$12, (%r14)
	jne	.LBB32_90
# %bb.87:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_90
# %bb.88:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_90
# %bb.89:
	addl	$-1, 60(%r15)
.LBB32_90:
	movq	%r15, %rdi
	movl	$25, %esi
.LBB32_91:
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%r12d, %r8d
	jmp	.LBB32_92
.LBB32_2:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_dischargevars
	movl	20(%r14), %edi
	cmpl	$-1, %edi
	je	.LBB32_9
# %bb.3:
	movl	20(%r13), %ecx
	cmpl	$-1, %ecx
	je	.LBB32_94
# %bb.4:
	movq	(%r15), %rax
	movq	24(%rax), %rbx
	.p2align	4, 0x90
.LBB32_5:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %r12
	movl	(%rbx,%r12,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%r12,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB32_5
	jmp	.LBB32_6
.LBB32_10:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_dischargevars
	movl	16(%r14), %edi
	cmpl	$-1, %edi
	je	.LBB32_9
# %bb.11:
	movl	16(%r13), %ecx
	cmpl	$-1, %ecx
	je	.LBB32_95
# %bb.12:
	movq	(%r15), %rax
	movq	24(%rax), %rbx
	.p2align	4, 0x90
.LBB32_13:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %r12
	movl	(%rbx,%r12,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%r12,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB32_13
.LBB32_6:
	notl	%eax
	addl	%eax, %edi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
                                        # kill: def $edi killed $edi killed $rdi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB32_8
# %bb.7:
	movq	24(%r15), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB32_8:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%rbx,%r12,4), %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	shll	$14, %ecx
	addl	%ecx, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%rbx,%r12,4)
	jmp	.LBB32_9
.LBB32_14:
	movl	16(%r13), %r12d
	movl	20(%r13), %ebx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_dischargevars
	cmpl	%ebx, %r12d
	je	.LBB32_20
# %bb.15:
	cmpl	$12, (%r13)
	jne	.LBB32_19
# %bb.16:
	movl	16(%r13), %eax
	cmpl	20(%r13), %eax
	je	.LBB32_20
# %bb.17:
	movl	8(%r13), %edx
	movzbl	74(%r15), %eax
	cmpl	%eax, %edx
	jge	.LBB32_18
.LBB32_19:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
.LBB32_20:
	cmpl	$11, (%r13)
	jne	.LBB32_27
.LBB32_21:
	movq	(%r15), %rax
	movq	24(%rax), %rdx
	movslq	8(%r13), %rcx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, %esi
	andl	$63, %esi
	cmpl	$21, %esi
	jne	.LBB32_27
# %bb.22:
	leaq	(%rdx,%rcx,4), %rcx
	cmpl	$12, (%r14)
	jne	.LBB32_26
# %bb.23:
	movl	8(%r14), %esi
	testl	$256, %esi              # imm = 0x100
	jne	.LBB32_26
# %bb.24:
	movzbl	74(%r15), %edi
	cmpl	%edi, %esi
	jl	.LBB32_26
# %bb.25:
	addl	$-1, 60(%r15)
	movslq	8(%r13), %rax
	leaq	(%rdx,%rax,4), %rcx
	movl	(%rdx,%rax,4), %eax
.LBB32_26:
	andl	$8388607, %eax          # imm = 0x7FFFFF
	movl	8(%r14), %edx
	shll	$23, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movl	$11, (%r14)
	movl	8(%r13), %eax
	movl	%eax, 8(%r14)
	jmp	.LBB32_93
.LBB32_35:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r13)
	jne	.LBB32_39
# %bb.36:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_39
# %bb.37:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_39
# %bb.38:
	addl	$-1, 60(%r15)
.LBB32_39:
	cmpl	$12, (%r14)
	jne	.LBB32_43
# %bb.40:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_43
# %bb.41:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_43
# %bb.42:
	addl	$-1, 60(%r15)
.LBB32_43:
	movq	%r15, %rdi
	movl	$23, %esi
	jmp	.LBB32_44
.LBB32_64:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	cmpl	$12, (%r13)
	jne	.LBB32_68
# %bb.65:
	movl	8(%r13), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_68
# %bb.66:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_68
# %bb.67:
	addl	$-1, 60(%r15)
.LBB32_68:
	cmpl	$12, (%r14)
	jne	.LBB32_72
# %bb.69:
	movl	8(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB32_72
# %bb.70:
	movzbl	74(%r15), %edx
	cmpl	%edx, %ecx
	jl	.LBB32_72
# %bb.71:
	addl	$-1, 60(%r15)
.LBB32_72:
	movq	%r15, %rdi
	movl	$25, %esi
.LBB32_44:
	movl	$1, %edx
.LBB32_45:
	movl	%r12d, %ecx
	movl	%eax, %r8d
.LBB32_92:
	callq	condjump
	movl	%eax, 8(%r14)
	movl	$10, (%r14)
	jmp	.LBB32_93
.LBB32_94:
	movl	%edi, 20(%r13)
	jmp	.LBB32_9
.LBB32_95:
	movl	%edi, 16(%r13)
.LBB32_9:
	movq	16(%r13), %rax
	movq	%rax, 16(%r14)
	movups	(%r13), %xmm0
	movups	%xmm0, (%r14)
.LBB32_93:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_18:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	exp2reg
	cmpl	$11, (%r13)
	je	.LBB32_21
.LBB32_27:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	movq	%r15, %rdi
	movl	$21, %esi
.LBB32_29:
	movq	%r14, %rdx
	movq	%r13, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	codearith               # TAILCALL
.Lfunc_end32:
	.size	luaK_posfix, .Lfunc_end32-luaK_posfix
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_28
	.quad	.LBB32_30
	.quad	.LBB32_31
	.quad	.LBB32_32
	.quad	.LBB32_33
	.quad	.LBB32_34
	.quad	.LBB32_14
	.quad	.LBB32_46
	.quad	.LBB32_35
	.quad	.LBB32_55
	.quad	.LBB32_64
	.quad	.LBB32_73
	.quad	.LBB32_82
	.quad	.LBB32_2
	.quad	.LBB32_10
                                        # -- End function
	.text
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
	retq
.Lfunc_end33:
	.size	luaK_fixline, .Lfunc_end33-luaK_fixline
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function luaK_code
	.type	luaK_code,@function
luaK_code:                              # @luaK_code
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movl	56(%rdi), %esi
	movl	48(%rdi), %edx
	movl	$255, %ecx
	movl	%edx, %r8d
	callq	patchlistaux
	movl	$-1, 56(%rbx)
	movl	48(%rbx), %ecx
	cmpl	80(%r12), %ecx
	jge	.LBB34_2
# %bb.1:
	movq	24(%r12), %rax
	jmp	.LBB34_3
.LBB34_2:
	leaq	80(%r12), %rdx
	movq	32(%rbx), %rdi
	movq	24(%r12), %rsi
	movl	$4, %ecx
	movl	$.L.str.3, %r9d
	movl	$2147483645, %r8d       # imm = 0x7FFFFFFD
	callq	luaM_growaux_
	movq	%rax, 24(%r12)
	movl	48(%rbx), %ecx
.LBB34_3:
	movslq	%ecx, %rcx
	movl	%r15d, (%rax,%rcx,4)
	movl	48(%rbx), %ecx
	cmpl	84(%r12), %ecx
	jge	.LBB34_5
# %bb.4:
	movq	40(%r12), %rax
	jmp	.LBB34_6
.LBB34_5:
	leaq	84(%r12), %rdx
	movq	32(%rbx), %rdi
	movq	40(%r12), %rsi
	movl	$4, %ecx
	movl	$.L.str.3, %r9d
	movl	$2147483645, %r8d       # imm = 0x7FFFFFFD
	callq	luaM_growaux_
	movq	%rax, 40(%r12)
	movl	48(%rbx), %ecx
.LBB34_6:
	movslq	%ecx, %rcx
	movl	%r14d, (%rax,%rcx,4)
	movl	48(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 48(%rbx)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	luaK_code, .Lfunc_end34-luaK_code
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
	jg	.LBB35_2
# %bb.1:
	shll	$14, %r12d
	orl	%r12d, %esi
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	jmp	.LBB35_3
.LBB35_2:
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	luaK_code
	movq	24(%r15), %rax
	movl	8(%rax), %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
.LBB35_3:
	callq	luaK_code
	addl	$1, %r14d
	movl	%r14d, 60(%r15)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	luaK_setlist, .Lfunc_end35-luaK_setlist
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function patchtestreg
	.type	patchtestreg,@function
patchtestreg:                           # @patchtestreg
# %bb.0:
	movq	(%rdi), %rax
	movslq	%esi, %rsi
	leaq	(,%rsi,4), %rcx
	addq	24(%rax), %rcx
	testl	%esi, %esi
	jle	.LBB36_3
# %bb.1:
	movl	-4(%rcx), %esi
	movl	%esi, %eax
	andl	$63, %eax
	cmpb	$0, luaP_opmodes(%rax)
	js	.LBB36_2
.LBB36_3:
	movl	(%rcx), %esi
	jmp	.LBB36_4
.LBB36_2:
	addq	$-4, %rcx
.LBB36_4:
	movl	%esi, %edi
	andl	$63, %edi
	xorl	%eax, %eax
	cmpl	$27, %edi
	jne	.LBB36_10
# %bb.5:
	movl	%esi, %eax
	shrl	$23, %eax
	cmpl	$255, %edx
	je	.LBB36_8
# %bb.6:
	cmpl	%edx, %eax
	je	.LBB36_8
# %bb.7:
	andl	$-16321, %esi           # imm = 0xC03F
	movzbl	%dl, %eax
	shll	$6, %eax
	orl	%esi, %eax
	movl	%eax, %esi
	jmp	.LBB36_9
.LBB36_8:
	shll	$6, %eax
	andl	$8372224, %esi          # imm = 0x7FC000
	orl	%eax, %esi
	orl	$26, %esi
.LBB36_9:
	movl	%esi, (%rcx)
	movl	$1, %eax
.LBB36_10:
	retq
.Lfunc_end36:
	.size	patchtestreg, .Lfunc_end36-patchtestreg
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
	ja	.LBB37_20
# %bb.1:
	jmpq	*.LJTI37_0(,%rcx,8)
.LBB37_11:
	xorl	%esi, %esi
	cmpl	$2, %eax
	sete	%sil
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$23, %esi
	orl	%eax, %esi
	orl	$2, %esi
	jmp	.LBB37_18
.LBB37_2:
	movslq	48(%rbx), %rax
	cmpl	52(%rbx), %eax
	jle	.LBB37_5
# %bb.3:
	testl	%eax, %eax
	je	.LBB37_4
# %bb.6:
	movq	(%rbx), %rcx
	movq	24(%rcx), %rcx
	movl	-4(%rcx,%rax,4), %edx
	movl	%edx, %esi
	andl	$63, %esi
	cmpl	$3, %esi
	jne	.LBB37_5
# %bb.7:
	movl	%edx, %esi
	shrl	$6, %esi
	movzbl	%sil, %esi
	cmpl	%r14d, %esi
	jg	.LBB37_5
# %bb.8:
	movl	%edx, %esi
	shrl	$23, %esi
	leal	1(%rsi), %edi
	cmpl	%r14d, %edi
	jl	.LBB37_5
# %bb.9:
	cmpl	%r14d, %esi
	jge	.LBB37_19
# %bb.10:
	andl	$8388607, %edx          # imm = 0x7FFFFF
	movl	%r14d, %esi
	shll	$23, %esi
	orl	%edx, %esi
	movl	%esi, -4(%rcx,%rax,4)
	jmp	.LBB37_19
.LBB37_12:
	movl	8(%r15), %esi
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$14, %esi
	jmp	.LBB37_13
.LBB37_14:
	movq	8(%r15), %rax
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	addk
	movl	%r14d, %esi
	shll	$6, %esi
	shll	$14, %eax
.LBB37_13:
	orl	%eax, %esi
	orl	$1, %esi
	jmp	.LBB37_18
.LBB37_15:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movslq	8(%r15), %rcx
	movl	$-16321, %edx           # imm = 0xC03F
	andl	(%rax,%rcx,4), %edx
	movzbl	%r14b, %esi
	shll	$6, %esi
	orl	%edx, %esi
	movl	%esi, (%rax,%rcx,4)
	jmp	.LBB37_19
.LBB37_16:
	movl	8(%r15), %esi
	cmpl	%r14d, %esi
	je	.LBB37_19
# %bb.17:
	movl	%r14d, %eax
	shll	$6, %eax
	shll	$23, %esi
	orl	%eax, %esi
	jmp	.LBB37_18
.LBB37_4:
	movzbl	74(%rbx), %eax
	cmpl	%r14d, %eax
	jle	.LBB37_19
.LBB37_5:
	movl	%r14d, %eax
	shll	$6, %eax
	movl	%r14d, %esi
	shll	$23, %esi
	orl	%eax, %esi
	orl	$3, %esi
.LBB37_18:
	movq	24(%rbx), %rax
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	luaK_code
.LBB37_19:
	movl	%r14d, 8(%r15)
	movl	$12, (%r15)
.LBB37_20:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	discharge2reg, .Lfunc_end37-discharge2reg
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI37_0:
	.quad	.LBB37_2
	.quad	.LBB37_11
	.quad	.LBB37_11
	.quad	.LBB37_12
	.quad	.LBB37_14
	.quad	.LBB37_20
	.quad	.LBB37_20
	.quad	.LBB37_20
	.quad	.LBB37_20
	.quad	.LBB37_20
	.quad	.LBB37_15
	.quad	.LBB37_16
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function condjump
	.type	condjump,@function
condjump:                               # @condjump
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
	shll	$6, %edx
	orl	%edx, %esi
	shll	$23, %ecx
	shll	$14, %r8d
	orl	%ecx, %r8d
	orl	%r8d, %esi
	movq	24(%rdi), %rax
	movl	8(%rax), %edx
	callq	luaK_code
	movl	56(%r12), %r14d
	movl	$-1, 56(%r12)
	movq	24(%r12), %rax
	movl	8(%rax), %edx
	movq	%r12, %rdi
	movl	$2147450902, %esi       # imm = 0x7FFF8016
	callq	luaK_code
	movl	%eax, %r15d
	cmpl	$-1, %r14d
	je	.LBB38_8
# %bb.1:
	cmpl	$-1, %r15d
	je	.LBB38_2
# %bb.3:
	movq	(%r12), %rax
	movq	24(%rax), %r13
	movl	%r15d, %ecx
	.p2align	4, 0x90
.LBB38_4:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%ecx, %rbx
	movl	(%r13,%rbx,4), %ecx
	shrl	$14, %ecx
	leal	-131071(%rcx), %edx
	cmpl	$-1, %edx
	leal	-131070(%rbx,%rcx), %ecx
	cmovel	%edx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB38_4
# %bb.5:
	notl	%eax
	addl	%eax, %r14d
	movl	%r14d, %edi
	callq	abs
	cmpl	$131072, %eax           # imm = 0x20000
	jl	.LBB38_7
# %bb.6:
	movq	24(%r12), %rdi
	movl	$.L.str.1, %esi
	callq	luaX_syntaxerror
.LBB38_7:
	movl	$16383, %eax            # imm = 0x3FFF
	andl	(%r13,%rbx,4), %eax
	shll	$14, %r14d
	addl	%r14d, %eax
	addl	$2147467264, %eax       # imm = 0x7FFFC000
	movl	%eax, (%r13,%rbx,4)
	jmp	.LBB38_8
.LBB38_2:
	movl	%r14d, %r15d
.LBB38_8:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	condjump, .Lfunc_end38-condjump
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

	.hidden	luaX_syntaxerror
	.hidden	luaH_set
	.hidden	luaM_growaux_
	.hidden	luaC_barrierf
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
