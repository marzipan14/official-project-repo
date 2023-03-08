	.text
	.file	"crypt_des.c"
	.globl	__des_setkey            # -- Begin function __des_setkey
	.p2align	4, 0x90
	.type	__des_setkey,@function
__des_setkey:                           # @__des_setkey
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movzbl	3(%rdi), %r10d
	movzbl	2(%rdi), %r8d
	movzbl	1(%rdi), %r14d
	movzbl	(%rdi), %ecx
	movzbl	7(%rdi), %r9d
	movzbl	6(%rdi), %r11d
	movzbl	4(%rdi), %ebx
	movq	%rcx, %rax
	shrq	$4, %rax
	movl	key_perm_maskl(,%rax,4), %r15d
	movq	%rbx, %rdx
	shrq	$4, %rdx
	orl	key_perm_maskl+256(,%rdx,4), %r15d
	movzbl	5(%rdi), %edx
	movl	key_perm_maskr(,%rax,4), %edi
	andl	$15, %ecx
	andl	$15, %ebx
	movl	key_perm_maskr+512(,%rbx,4), %r12d
	orl	key_perm_maskr+64(,%rcx,4), %edi
	movq	%r14, %rax
	shrq	$4, %rax
	movl	key_perm_maskl+64(,%rax,4), %ecx
	movq	%rdx, %rbx
	shrq	$4, %rbx
	movl	key_perm_maskl+320(,%rbx,4), %r13d
	orq	%rcx, %r13
	orq	%r15, %r13
	movl	key_perm_maskr+128(,%rax,4), %eax
	orq	%r12, %rax
	orq	%rdi, %rax
	andl	$15, %r14d
	movl	key_perm_maskr+192(,%r14,4), %ecx
	andl	$15, %edx
	movl	key_perm_maskr+576(,%rdx,4), %edx
	orq	%rcx, %rdx
	movq	%r8, %rcx
	shrq	$4, %rcx
	movl	key_perm_maskl+128(,%rcx,4), %r14d
	movq	%r11, %rdi
	shrq	$4, %rdi
	movl	key_perm_maskl+384(,%rdi,4), %edi
	orq	%r14, %rdi
	movl	key_perm_maskr+256(,%rcx,4), %ecx
	orq	%rdx, %rcx
	orq	%rax, %rcx
	andl	$15, %r8d
	movl	key_perm_maskr+320(,%r8,4), %eax
	andl	$15, %r11d
	movl	key_perm_maskr+640(,%r11,4), %edx
	orq	%rax, %rdx
	movq	%r10, %rax
	shrq	$4, %rax
	movl	key_perm_maskl+192(,%rax,4), %ebx
	orq	%rdi, %rbx
	orq	%r13, %rbx
	movq	%r9, %rdi
	shrq	$4, %rdi
	movl	key_perm_maskl+448(,%rdi,4), %r8d
	orq	%rbx, %r8
	movl	key_perm_maskr+384(,%rax,4), %eax
	orq	%rdx, %rax
	andl	$15, %r10d
	movl	key_perm_maskr+448(,%r10,4), %edx
	orq	%rax, %rdx
	orq	%rcx, %rdx
	andl	$15, %r9d
	movl	key_perm_maskr+704(,%r9,4), %r9d
	orq	%rdx, %r9
	xorl	%r11d, %r11d
	movq	$-16, %r10
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	key_shifts+16(%r10), %eax
	addl	%eax, %r11d
	movl	%r8d, %r14d
	movl	%r11d, %ecx
	shll	%cl, %r14d
	movb	$28, %dl
	subb	%r11b, %dl
	movq	%r8, %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movl	%r9d, %eax
	movl	%r11d, %ecx
	shll	%cl, %eax
	movq	%r9, %rdi
	movl	%edx, %ecx
	shrq	%cl, %rdi
	orq	%rbx, %r14
	orq	%rdi, %rax
	movq	%r14, %rcx
	shrq	$23, %rcx
	andl	$28, %ecx
	movl	comp_maskl0(%rcx), %ecx
	movq	%rax, %rdx
	shrq	$23, %rdx
	andl	$28, %edx
	movl	comp_maskr0(%rdx), %edx
	movl	%r14d, %edi
	shrl	$21, %edi
	andl	$15, %edi
	orl	comp_maskl1(,%rdi,4), %ecx
	movl	%eax, %edi
	shrl	$21, %edi
	andl	$15, %edi
	orl	comp_maskr1(,%rdi,4), %edx
	movl	%r14d, %edi
	shrl	$18, %edi
	andl	$7, %edi
	orl	comp_maskl0+32(,%rdi,4), %ecx
	movl	%eax, %edi
	shrl	$18, %edi
	andl	$7, %edi
	orl	comp_maskr0+32(,%rdi,4), %edx
	movl	%r14d, %edi
	shrl	$14, %edi
	andl	$15, %edi
	orl	comp_maskl1+64(,%rdi,4), %ecx
	movl	%eax, %edi
	shrl	$14, %edi
	andl	$15, %edi
	orl	comp_maskr1+64(,%rdi,4), %edx
	movl	%r14d, %edi
	shrl	$11, %edi
	andl	$7, %edi
	orl	comp_maskl0+64(,%rdi,4), %ecx
	movl	%eax, %edi
	shrl	$11, %edi
	andl	$7, %edi
	orl	comp_maskr0+64(,%rdi,4), %edx
	movl	%r14d, %edi
	shrl	$7, %edi
	andl	$15, %edi
	orl	comp_maskl1+128(,%rdi,4), %ecx
	movl	%eax, %edi
	shrl	$7, %edi
	andl	$15, %edi
	orl	comp_maskr1+128(,%rdi,4), %edx
	movl	%r14d, %edi
	shrl	$4, %edi
	andl	$7, %edi
	orl	comp_maskl0+96(,%rdi,4), %ecx
	movl	%eax, %edi
	shrl	$4, %edi
	andl	$7, %edi
	orl	comp_maskr0+96(,%rdi,4), %edx
	andl	$15, %r14d
	orl	comp_maskl1+192(,%r14,4), %ecx
	andl	$15, %eax
	orl	comp_maskr1+192(,%rax,4), %edx
	movl	%ecx, 64(%rsi,%r10,4)
	movl	%edx, 128(%rsi,%r10,4)
	incq	%r10
	jne	.LBB0_1
# %bb.2:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	__des_setkey, .Lfunc_end0-__des_setkey
                                        # -- End function
	.globl	__do_des                # -- Begin function __do_des
	.p2align	4, 0x90
	.type	__do_des,@function
__do_des:                               # @__do_des
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
                                        # kill: def $esi killed $esi def $rsi
                                        # kill: def $edi killed $edi def $rdi
	movl	%esi, %eax
	orl	%edi, %eax
	je	.LBB1_1
# %bb.2:
	movl	%edi, %ebp
	shrl	$28, %ebp
	movl	ip_maskl(,%rbp,4), %eax
	movl	%esi, %ebx
	shrl	$28, %ebx
	orl	ip_maskl+512(,%rbx,4), %eax
	movl	ip_maskr(,%rbp,4), %r10d
	orl	ip_maskr+512(,%rbx,4), %r10d
	movl	%edi, %ebp
	shrl	$24, %ebp
	andl	$15, %ebp
	movl	%esi, %ebx
	shrl	$24, %ebx
	andl	$15, %ebx
	orl	ip_maskl+64(,%rbp,4), %eax
	orl	ip_maskl+576(,%rbx,4), %eax
	orl	ip_maskr+64(,%rbp,4), %r10d
	orl	ip_maskr+576(,%rbx,4), %r10d
	movl	%edi, %ebp
	shrl	$20, %ebp
	andl	$15, %ebp
	movl	%esi, %ebx
	shrl	$20, %ebx
	andl	$15, %ebx
	orl	ip_maskl+128(,%rbp,4), %eax
	orl	ip_maskl+640(,%rbx,4), %eax
	orl	ip_maskr+128(,%rbp,4), %r10d
	orl	ip_maskr+640(,%rbx,4), %r10d
	movl	%edi, %ebp
	shrl	$16, %ebp
	andl	$15, %ebp
	movl	%esi, %ebx
	shrl	$16, %ebx
	andl	$15, %ebx
	orl	ip_maskl+192(,%rbp,4), %eax
	orl	ip_maskl+704(,%rbx,4), %eax
	orl	ip_maskr+192(,%rbp,4), %r10d
	orl	ip_maskr+704(,%rbx,4), %r10d
	movl	%edi, %ebp
	shrl	$12, %ebp
	andl	$15, %ebp
	movl	%esi, %ebx
	shrl	$12, %ebx
	andl	$15, %ebx
	orl	ip_maskl+256(,%rbp,4), %eax
	orl	ip_maskl+768(,%rbx,4), %eax
	orl	ip_maskr+256(,%rbp,4), %r10d
	orl	ip_maskr+768(,%rbx,4), %r10d
	movl	%edi, %ebp
	shrl	$8, %ebp
	andl	$15, %ebp
	movl	%esi, %ebx
	shrl	$8, %ebx
	andl	$15, %ebx
	orl	ip_maskl+320(,%rbp,4), %eax
	orl	ip_maskl+832(,%rbx,4), %eax
	orl	ip_maskr+320(,%rbp,4), %r10d
	orl	ip_maskr+832(,%rbx,4), %r10d
	movl	%edi, %ebp
	shrl	$4, %ebp
	andl	$15, %ebp
	movl	%esi, %ebx
	shrl	$4, %ebx
	andl	$15, %ebx
	orl	ip_maskl+384(,%rbp,4), %eax
	orl	ip_maskl+896(,%rbx,4), %eax
	orl	ip_maskr+384(,%rbp,4), %r10d
	orl	ip_maskr+896(,%rbx,4), %r10d
	andl	$15, %edi
	andl	$15, %esi
	orl	ip_maskl+448(,%rdi,4), %eax
	orl	ip_maskl+960(,%rsi,4), %eax
	orl	ip_maskr+448(,%rdi,4), %r10d
	orl	ip_maskr+960(,%rsi,4), %r10d
	testl	%r8d, %r8d
	jne	.LBB1_4
	jmp	.LBB1_8
.LBB1_1:
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB1_8
.LBB1_4:
	movq	48(%rsp), %r11
	.p2align	4, 0x90
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	xorl	%r15d, %r15d
	movl	%eax, %r14d
	movl	%r10d, %eax
	.p2align	4, 0x90
.LBB1_7:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r10d
	roll	$23, %eax
	andl	$16515072, %eax         # imm = 0xFC0000
	movl	%r10d, %esi
	shrl	$11, %esi
	andl	$258048, %esi           # imm = 0x3F000
	orl	%eax, %esi
	movl	%r10d, %eax
	shrl	$13, %eax
	andl	$4032, %eax             # imm = 0xFC0
	orl	%esi, %eax
	movl	%r10d, %ebx
	shrl	$15, %ebx
	andl	$63, %ebx
	orl	%eax, %ebx
	movl	%r10d, %eax
	shll	$7, %eax
	andl	$16515072, %eax         # imm = 0xFC0000
	movl	%r10d, %esi
	shll	$5, %esi
	andl	$258048, %esi           # imm = 0x3F000
	movl	%r10d, %ebp
	andl	$504, %ebp              # imm = 0x1F8
	movl	%r10d, %r12d
	andl	$31, %r12d
	movl	%r10d, %edi
	shrl	$31, %edi
	orl	%esi, %edi
	orl	%eax, %edi
	leal	(%rdi,%rbp,8), %eax
	leal	(%rax,%r12,2), %eax
	movl	%ebx, %esi
	xorl	%eax, %esi
	andl	%r9d, %esi
	xorl	%esi, %ebx
	xorl	(%r11,%r15,4), %ebx
	xorl	%eax, %esi
	xorl	64(%r11,%r15,4), %esi
	movl	%ebx, %edi
	shrl	$18, %edi
	movl	%ebx, %eax
	shrl	$12, %eax
	andl	$63, %eax
	movl	psbox+256(,%rax,4), %eax
	orl	psbox(,%rdi,4), %eax
	movl	%ebx, %edi
	shrl	$6, %edi
	andl	$63, %edi
	orl	psbox+512(,%rdi,4), %eax
	andl	$63, %ebx
	orl	psbox+768(,%rbx,4), %eax
	movl	%esi, %edi
	shrl	$18, %edi
	orl	psbox+1024(,%rdi,4), %eax
	movl	%esi, %edi
	shrl	$12, %edi
	andl	$63, %edi
	orl	psbox+1280(,%rdi,4), %eax
	movl	%esi, %edi
	shrl	$6, %edi
	andl	$63, %edi
	orl	psbox+1536(,%rdi,4), %eax
	andl	$63, %esi
	orl	psbox+1792(,%rsi,4), %eax
	xorl	%r14d, %eax
	addq	$1, %r15
	movl	%r10d, %r14d
	cmpl	$16, %r15d
	jne	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_6 Depth=1
	addl	$-1, %r8d
	jne	.LBB1_6
.LBB1_8:
	movl	%eax, %esi
	shrl	$28, %esi
	movl	fp_maskl(,%rsi,4), %esi
	movl	%r10d, %edi
	shrl	$28, %edi
	orl	fp_maskl+256(,%rdi,4), %esi
	movl	%eax, %edi
	shrl	$24, %edi
	andl	$15, %edi
	movl	fp_maskl(,%rdi,4), %edi
	movl	%r10d, %ebp
	shrl	$24, %ebp
	andl	$15, %ebp
	orl	fp_maskl+256(,%rbp,4), %edi
	movl	%eax, %ebp
	shrl	$20, %ebp
	andl	$15, %ebp
	movl	%r10d, %ebx
	shrl	$20, %ebx
	andl	$15, %ebx
	orl	fp_maskl+64(,%rbp,4), %esi
	orl	fp_maskl+320(,%rbx,4), %esi
	movl	%eax, %ebp
	shrl	$16, %ebp
	andl	$15, %ebp
	movl	%r10d, %ebx
	shrl	$16, %ebx
	andl	$15, %ebx
	orl	fp_maskl+64(,%rbp,4), %edi
	orl	fp_maskl+320(,%rbx,4), %edi
	movl	%eax, %ebp
	shrl	$12, %ebp
	andl	$15, %ebp
	movl	%r10d, %ebx
	shrl	$12, %ebx
	andl	$15, %ebx
	orl	fp_maskl+128(,%rbp,4), %esi
	orl	fp_maskl+384(,%rbx,4), %esi
	movl	%eax, %ebp
	shrl	$8, %ebp
	andl	$15, %ebp
	movl	%r10d, %ebx
	shrl	$8, %ebx
	andl	$15, %ebx
	orl	fp_maskl+128(,%rbp,4), %edi
	orl	fp_maskl+384(,%rbx,4), %edi
	movl	%eax, %ebp
	shrl	$4, %ebp
	andl	$15, %ebp
	movl	%r10d, %ebx
	shrl	$4, %ebx
	andl	$15, %ebx
	orl	fp_maskl+192(,%rbp,4), %esi
	orl	fp_maskl+448(,%rbx,4), %esi
	andl	$15, %eax
	andl	$15, %r10d
	orl	fp_maskl+192(,%rax,4), %edi
	orl	fp_maskl+448(,%r10,4), %edi
	movl	%edi, (%rdx)
	movl	%esi, (%rcx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__do_des, .Lfunc_end1-__do_des
                                        # -- End function
	.globl	__crypt_des             # -- Begin function __crypt_des
	.p2align	4, 0x90
	.type	__crypt_des,@function
__crypt_des:                            # @__crypt_des
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %r14
	movb	(%rsi), %r12b
	cmpb	$95, %r12b
	movl	$.L.str.1, %eax
	movl	$.L.str.3, %ebx
	cmoveq	%rax, %rbx
	callq	_crypt_extended_r_uut
	movq	%rax, %r15
	leaq	-64(%rbp), %rdx
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	callq	_crypt_extended_r_uut
	testq	%rax, %rax
	je	.LBB2_3
# %bb.1:
	cmpb	$95, %r12b
	movl	$.L.str.2, %ecx
	movl	$.L.str.4, %esi
	cmoveq	%rcx, %rsi
	movq	%rax, %rdi
	callq	strcmp
	testq	%r15, %r15
	je	.LBB2_3
# %bb.2:
	testl	%eax, %eax
	je	.LBB2_4
.LBB2_3:
	cmpb	$42, (%r14)
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %r15d
	cmoveq	%rax, %r15
.LBB2_4:
	movq	%r15, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__crypt_des, .Lfunc_end2-__crypt_des
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypt_extended_r_uut
	.type	_crypt_extended_r_uut,@function
_crypt_extended_r_uut:                  # @_crypt_extended_r_uut
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	leaq	-48(%rbp), %rax
	leaq	-41(%rbp), %r14
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	cmpq	%r14, %rax
	ja	.LBB3_4
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ecx
	addb	%cl, %cl
	movb	%cl, (%rax)
	addq	$1, %rax
	cmpb	$0, (%rbx)
	je	.LBB3_1
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addq	$1, %rbx
	jmp	.LBB3_1
.LBB3_4:
	leaq	-48(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	callq	__des_setkey
	movzbl	(%r12), %eax
	cmpq	$58, %rax
	ja	.LBB3_8
# %bb.5:
	movabsq	$288230376151712769, %rcx # imm = 0x400000000000401
	btq	%rax, %rcx
	jb	.LBB3_6
.LBB3_8:
	cmpb	$95, %al
	jne	.LBB3_11
# %bb.9:
	movzbl	1(%r12), %ecx
	leal	-256(%rcx), %eax
	testb	%cl, %cl
	cmovnsl	%ecx, %eax
	cmpl	$65, %eax
	jl	.LBB3_14
# %bb.10:
	cmpl	$96, %eax
	movl	$-59, %edx
	movl	$-53, %esi
	cmovgl	%edx, %esi
	addl	%eax, %esi
	movl	%esi, %eax
	jmp	.LBB3_15
.LBB3_11:
	movzbl	1(%r12), %edx
	cmpq	$58, %rdx
	ja	.LBB3_19
# %bb.12:
	movabsq	$288230376151712769, %rcx # imm = 0x400000000000401
	btq	%rdx, %rcx
	jb	.LBB3_6
.LBB3_19:
	leal	-256(%rdx), %ecx
	testb	%dl, %dl
	cmovnsl	%edx, %ecx
	cmpl	$65, %ecx
	jl	.LBB3_26
# %bb.20:
	cmpl	$96, %ecx
	movl	$-59, %edx
	movl	$-53, %esi
	cmovgl	%edx, %esi
	addl	%esi, %ecx
	jmp	.LBB3_27
.LBB3_14:
	addl	$-46, %eax
.LBB3_15:
	andl	$63, %eax
	cmpb	%cl, ascii64(%rax)
	jne	.LBB3_6
# %bb.16:
	movzbl	2(%r12), %edx
	leal	-256(%rdx), %ecx
	testb	%dl, %dl
	cmovnsl	%edx, %ecx
	cmpl	$64, %ecx
	jle	.LBB3_21
# %bb.17:
	cmpl	$96, %ecx
	movl	$-59, %esi
	movl	$-53, %edi
	cmovgl	%esi, %edi
	addl	%ecx, %edi
	movl	%edi, %ecx
	jmp	.LBB3_22
.LBB3_21:
	addl	$-46, %ecx
.LBB3_22:
	andl	$63, %ecx
	cmpb	%dl, ascii64(%rcx)
	jne	.LBB3_6
# %bb.23:
	movzbl	3(%r12), %esi
	leal	-256(%rsi), %edx
	testb	%sil, %sil
	cmovnsl	%esi, %edx
	cmpl	$65, %edx
	jl	.LBB3_29
# %bb.24:
	cmpl	$96, %edx
	movl	$-59, %r8d
	movl	$-53, %edi
	cmovgl	%r8d, %edi
	addl	%edx, %edi
	movl	%edi, %edx
	jmp	.LBB3_30
.LBB3_26:
	addl	$-46, %ecx
.LBB3_27:
	andl	$63, %ecx
	shll	$6, %ecx
	leal	-256(%rax), %r13d
	testb	%al, %al
	cmovnsl	%eax, %r13d
	cmpl	$65, %r13d
	jl	.LBB3_33
# %bb.28:
	cmpl	$96, %r13d
	movl	$-59, %edx
	movl	$-53, %esi
	cmovgl	%edx, %esi
	addl	%r13d, %esi
	movl	%esi, %r13d
	jmp	.LBB3_34
.LBB3_29:
	addl	$-46, %edx
.LBB3_30:
	andl	$63, %edx
	cmpb	%sil, ascii64(%rdx)
	jne	.LBB3_6
# %bb.31:
	movzbl	4(%r12), %esi
	leal	-256(%rsi), %r9d
	testb	%sil, %sil
	cmovnsl	%esi, %r9d
	cmpl	$65, %r9d
	jl	.LBB3_39
# %bb.32:
	cmpl	$96, %r9d
	movl	$-59, %r8d
	movl	$-53, %edi
	cmovgl	%r8d, %edi
	addl	%r9d, %edi
	movl	%edi, %r9d
	jmp	.LBB3_40
.LBB3_33:
	addl	$-46, %r13d
.LBB3_34:
	andl	$63, %r13d
	orl	%ecx, %r13d
	movb	%al, (%r15)
	movb	1(%r12), %al
	movb	%al, 1(%r15)
	leaq	2(%r15), %r14
	movl	$25, %r8d
.LBB3_35:
	movl	$8388608, %ebx          # imm = 0x800000
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	$24, %edx
	.p2align	4, 0x90
.LBB3_36:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	andl	%r13d, %esi
	cmovnel	%ebx, %esi
	orl	%r9d, %esi
	leal	(%rcx,%rcx), %edi
	movl	%ebx, %eax
	shrl	%eax
	andl	%r13d, %edi
	cmovnel	%eax, %edi
	orl	%esi, %edi
	leal	(,%rcx,4), %r9d
	movl	%ebx, %eax
	shrl	$2, %eax
	andl	%r13d, %r9d
	cmovnel	%eax, %r9d
	orl	%edi, %r9d
	shll	$3, %ecx
	shrl	$3, %ebx
	addl	$-3, %edx
	jne	.LBB3_36
# %bb.37:
	leaq	-200(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-56(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
                                        # kill: def $r8d killed $r8d killed $r8
	callq	__do_des
	movl	-56(%rbp), %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$63, %eax
	movq	%rcx, %rdx
	shrq	$26, %rdx
	movb	ascii64(%rdx), %dl
	movb	%dl, (%r14)
	movl	%ecx, %edx
	shrl	$20, %edx
	andl	$63, %edx
	movb	ascii64(%rdx), %dl
	movb	%dl, 1(%r14)
	movl	%ecx, %edx
	shrl	$14, %edx
	andl	$63, %edx
	movb	ascii64(%rdx), %dl
	movb	%dl, 2(%r14)
	movb	ascii64(%rax), %al
	movb	%al, 3(%r14)
	movl	%ecx, %edx
	shll	$16, %edx
	movl	-52(%rbp), %eax
	movq	%rax, %rsi
	shrq	$16, %rsi
	orl	%esi, %edx
	shrl	$2, %ecx
	andl	$63, %ecx
	movb	ascii64(%rcx), %cl
	movb	%cl, 4(%r14)
	shrl	$12, %edx
	andl	$63, %edx
	movb	ascii64(%rdx), %cl
	movb	%cl, 5(%r14)
	movl	%eax, %ecx
	shrl	$22, %ecx
	andl	$63, %ecx
	movb	ascii64(%rcx), %cl
	movb	%cl, 6(%r14)
	andl	$63, %esi
	movb	ascii64(%rsi), %cl
	movb	%cl, 7(%r14)
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$63, %ecx
	movb	ascii64(%rcx), %cl
	movb	%cl, 8(%r14)
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$63, %ecx
	movb	ascii64(%rcx), %cl
	movb	%cl, 9(%r14)
	andl	$15, %eax
	movb	ascii64(,%rax,4), %al
	movb	%al, 10(%r14)
	movb	$0, 11(%r14)
	jmp	.LBB3_7
.LBB3_39:
	addl	$-46, %r9d
.LBB3_40:
	andl	$63, %r9d
	cmpb	%sil, ascii64(%r9)
	jne	.LBB3_6
# %bb.41:
	shll	$6, %ecx
	orl	%eax, %ecx
	shll	$12, %edx
	orl	%ecx, %edx
	shll	$18, %r9d
	orl	%edx, %r9d
	je	.LBB3_6
# %bb.42:
	movzbl	5(%r12), %ecx
	leal	-256(%rcx), %eax
	testb	%cl, %cl
	cmovnsl	%ecx, %eax
	cmpl	$64, %eax
	jle	.LBB3_46
# %bb.43:
	cmpl	$96, %eax
	movl	$-59, %edx
	movl	$-53, %esi
	cmovgl	%edx, %esi
	addl	%eax, %esi
	movl	%esi, %eax
	jmp	.LBB3_47
.LBB3_46:
	addl	$-46, %eax
.LBB3_47:
	andl	$63, %eax
	cmpb	%cl, ascii64(%rax)
	jne	.LBB3_6
# %bb.48:
	movzbl	6(%r12), %edx
	leal	-256(%rdx), %ecx
	testb	%dl, %dl
	cmovnsl	%edx, %ecx
	cmpl	$64, %ecx
	jle	.LBB3_51
# %bb.49:
	cmpl	$96, %ecx
	movl	$-59, %esi
	movl	$-53, %edi
	cmovgl	%esi, %edi
	addl	%ecx, %edi
	movl	%edi, %ecx
	jmp	.LBB3_52
.LBB3_51:
	addl	$-46, %ecx
.LBB3_52:
	andl	$63, %ecx
	cmpb	%dl, ascii64(%rcx)
	jne	.LBB3_6
# %bb.53:
	movzbl	7(%r12), %edx
	leal	-256(%rdx), %esi
	testb	%dl, %dl
	cmovnsl	%edx, %esi
	cmpl	$65, %esi
	jl	.LBB3_56
# %bb.54:
	cmpl	$96, %esi
	movl	$-59, %r8d
	movl	$-53, %edi
	cmovgl	%r8d, %edi
	addl	%esi, %edi
	movl	%edi, %esi
	jmp	.LBB3_57
.LBB3_56:
	addl	$-46, %esi
.LBB3_57:
	andl	$63, %esi
	cmpb	%dl, ascii64(%rsi)
	jne	.LBB3_6
# %bb.58:
	movzbl	8(%r12), %edx
	leal	-256(%rdx), %r13d
	testb	%dl, %dl
	cmovnsl	%edx, %r13d
	cmpl	$65, %r13d
	jl	.LBB3_61
# %bb.59:
	cmpl	$96, %r13d
	movl	$-59, %r8d
	movl	$-53, %edi
	cmovgl	%r8d, %edi
	addl	%r13d, %edi
	movl	%edi, %r13d
	jmp	.LBB3_62
.LBB3_61:
	addl	$-46, %r13d
.LBB3_62:
	andl	$63, %r13d
	cmpb	%dl, ascii64(%r13)
	jne	.LBB3_6
# %bb.63:
	movq	%r9, -72(%rbp)          # 8-byte Spill
	shll	$6, %ecx
	orl	%eax, %ecx
	shll	$12, %esi
	orl	%ecx, %esi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	shll	$18, %r13d
	cmpb	$0, (%rbx)
	leaq	-200(%rbp), %rax
	jne	.LBB3_66
.LBB3_64:
	addl	-64(%rbp), %r13d        # 4-byte Folded Reload
	movl	$9, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	leaq	9(%r15), %r14
	movb	$0, 9(%r15)
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB3_35
.LBB3_6:
	xorl	%r15d, %r15d
.LBB3_7:
	movq	%r15, %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_65:                               #   in Loop: Header=BB3_66 Depth=1
	leaq	-48(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	callq	__des_setkey
	leaq	-200(%rbp), %rax
	cmpb	$0, (%rbx)
	je	.LBB3_64
.LBB3_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_67 Depth 2
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	bswapl	%edi
	bswapl	%esi
	movq	%rax, (%rsp)
	leaq	-56(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	__do_des
	movl	-56(%rbp), %eax
	bswapl	%eax
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	bswapl	%eax
	movl	%eax, -44(%rbp)
	leaq	-48(%rbp), %rax
.LBB3_67:                               #   Parent Loop BB3_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %ecx
	testb	%cl, %cl
	je	.LBB3_65
# %bb.68:                               #   in Loop: Header=BB3_67 Depth=2
	addb	%cl, %cl
	xorb	%cl, (%rax)
	addq	$1, %rbx
	addq	$1, %rax
	cmpq	%r14, %rax
	jbe	.LBB3_67
	jmp	.LBB3_65
.Lfunc_end3:
	.size	_crypt_extended_r_uut, .Lfunc_end3-_crypt_extended_r_uut
                                        # -- End function
	.type	key_perm_maskl,@object  # @key_perm_maskl
	.section	.rodata,"a",@progbits
	.p2align	4
key_perm_maskl:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	4096                    # 0x1000
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	4112                    # 0x1010
	.long	1048576                 # 0x100000
	.long	1048576                 # 0x100000
	.long	1048592                 # 0x100010
	.long	1048592                 # 0x100010
	.long	1052672                 # 0x101000
	.long	1052672                 # 0x101000
	.long	1052688                 # 0x101010
	.long	1052688                 # 0x101010
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	8192                    # 0x2000
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	8224                    # 0x2020
	.long	2097152                 # 0x200000
	.long	2097152                 # 0x200000
	.long	2097184                 # 0x200020
	.long	2097184                 # 0x200020
	.long	2105344                 # 0x202000
	.long	2105344                 # 0x202000
	.long	2105376                 # 0x202020
	.long	2105376                 # 0x202020
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	16384                   # 0x4000
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	16448                   # 0x4040
	.long	4194304                 # 0x400000
	.long	4194304                 # 0x400000
	.long	4194368                 # 0x400040
	.long	4194368                 # 0x400040
	.long	4210688                 # 0x404000
	.long	4210688                 # 0x404000
	.long	4210752                 # 0x404040
	.long	4210752                 # 0x404040
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.long	32896                   # 0x8080
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.long	8421376                 # 0x808000
	.long	8421376                 # 0x808000
	.long	8421504                 # 0x808080
	.long	8421504                 # 0x808080
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	65536                   # 0x10000
	.long	65537                   # 0x10001
	.long	65792                   # 0x10100
	.long	65793                   # 0x10101
	.long	16777216                # 0x1000000
	.long	16777217                # 0x1000001
	.long	16777472                # 0x1000100
	.long	16777473                # 0x1000101
	.long	16842752                # 0x1010000
	.long	16842753                # 0x1010001
	.long	16843008                # 0x1010100
	.long	16843009                # 0x1010101
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	131072                  # 0x20000
	.long	131074                  # 0x20002
	.long	131584                  # 0x20200
	.long	131586                  # 0x20202
	.long	33554432                # 0x2000000
	.long	33554434                # 0x2000002
	.long	33554944                # 0x2000200
	.long	33554946                # 0x2000202
	.long	33685504                # 0x2020000
	.long	33685506                # 0x2020002
	.long	33686016                # 0x2020200
	.long	33686018                # 0x2020202
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	262144                  # 0x40000
	.long	262148                  # 0x40004
	.long	263168                  # 0x40400
	.long	263172                  # 0x40404
	.long	67108864                # 0x4000000
	.long	67108868                # 0x4000004
	.long	67109888                # 0x4000400
	.long	67109892                # 0x4000404
	.long	67371008                # 0x4040000
	.long	67371012                # 0x4040004
	.long	67372032                # 0x4040400
	.long	67372036                # 0x4040404
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	524288                  # 0x80000
	.long	524296                  # 0x80008
	.long	526336                  # 0x80800
	.long	526344                  # 0x80808
	.long	134217728               # 0x8000000
	.long	134217736               # 0x8000008
	.long	134219776               # 0x8000800
	.long	134219784               # 0x8000808
	.long	134742016               # 0x8080000
	.long	134742024               # 0x8080008
	.long	134744064               # 0x8080800
	.long	134744072               # 0x8080808
	.size	key_perm_maskl, 512

	.type	key_perm_maskr,@object  # @key_perm_maskr
	.p2align	4
key_perm_maskr:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	1048576                 # 0x100000
	.long	4096                    # 0x1000
	.long	4096                    # 0x1000
	.long	1052672                 # 0x101000
	.long	1052672                 # 0x101000
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	1048592                 # 0x100010
	.long	1048592                 # 0x100010
	.long	4112                    # 0x1010
	.long	4112                    # 0x1010
	.long	1052688                 # 0x101010
	.long	1052688                 # 0x101010
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	2097152                 # 0x200000
	.long	8192                    # 0x2000
	.long	8192                    # 0x2000
	.long	2105344                 # 0x202000
	.long	2105344                 # 0x202000
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	2097184                 # 0x200020
	.long	2097184                 # 0x200020
	.long	8224                    # 0x2020
	.long	8224                    # 0x2020
	.long	2105376                 # 0x202020
	.long	2105376                 # 0x202020
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	4194304                 # 0x400000
	.long	16384                   # 0x4000
	.long	16384                   # 0x4000
	.long	4210688                 # 0x404000
	.long	4210688                 # 0x404000
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	4194368                 # 0x400040
	.long	4194368                 # 0x400040
	.long	16448                   # 0x4040
	.long	16448                   # 0x4040
	.long	4210752                 # 0x404040
	.long	4210752                 # 0x404040
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	8421376                 # 0x808000
	.long	8421376                 # 0x808000
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.long	32896                   # 0x8080
	.long	32896                   # 0x8080
	.long	8421504                 # 0x808080
	.long	8421504                 # 0x808080
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16777216                # 0x1000000
	.long	16777216                # 0x1000000
	.long	65536                   # 0x10000
	.long	65536                   # 0x10000
	.long	16842752                # 0x1010000
	.long	16842752                # 0x1010000
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	16777472                # 0x1000100
	.long	16777472                # 0x1000100
	.long	65792                   # 0x10100
	.long	65792                   # 0x10100
	.long	16843008                # 0x1010100
	.long	16843008                # 0x1010100
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	33554432                # 0x2000000
	.long	33554432                # 0x2000000
	.long	131072                  # 0x20000
	.long	131072                  # 0x20000
	.long	33685504                # 0x2020000
	.long	33685504                # 0x2020000
	.long	512                     # 0x200
	.long	512                     # 0x200
	.long	33554944                # 0x2000200
	.long	33554944                # 0x2000200
	.long	131584                  # 0x20200
	.long	131584                  # 0x20200
	.long	33686016                # 0x2020200
	.long	33686016                # 0x2020200
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	67108864                # 0x4000000
	.long	67108864                # 0x4000000
	.long	262144                  # 0x40000
	.long	262144                  # 0x40000
	.long	67371008                # 0x4040000
	.long	67371008                # 0x4040000
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	67109888                # 0x4000400
	.long	67109888                # 0x4000400
	.long	263168                  # 0x40400
	.long	263168                  # 0x40400
	.long	67372032                # 0x4040400
	.long	67372032                # 0x4040400
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	134217728               # 0x8000000
	.long	134217728               # 0x8000000
	.long	524288                  # 0x80000
	.long	524288                  # 0x80000
	.long	134742016               # 0x8080000
	.long	134742016               # 0x8080000
	.long	2048                    # 0x800
	.long	2048                    # 0x800
	.long	134219776               # 0x8000800
	.long	134219776               # 0x8000800
	.long	526336                  # 0x80800
	.long	526336                  # 0x80800
	.long	134744064               # 0x8080800
	.long	134744064               # 0x8080800
	.size	key_perm_maskr, 768

	.type	key_shifts,@object      # @key_shifts
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
key_shifts:
	.ascii	"\001\001\002\002\002\002\002\002\001\002\002\002\002\002\002\001"
	.size	key_shifts, 16

	.type	comp_maskl0,@object     # @comp_maskl0
	.section	.rodata,"a",@progbits
	.p2align	4
comp_maskl0:
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	1                       # 0x1
	.long	131073                  # 0x20001
	.long	524288                  # 0x80000
	.long	655360                  # 0xa0000
	.long	524289                  # 0x80001
	.long	655361                  # 0xa0001
	.long	0                       # 0x0
	.long	4096                    # 0x1000
	.long	0                       # 0x0
	.long	4096                    # 0x1000
	.long	64                      # 0x40
	.long	4160                    # 0x1040
	.long	64                      # 0x40
	.long	4160                    # 0x1040
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	32                      # 0x20
	.long	4194336                 # 0x400020
	.long	32768                   # 0x8000
	.long	4227072                 # 0x408000
	.long	32800                   # 0x8020
	.long	4227104                 # 0x408020
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	2048                    # 0x800
	.long	1050624                 # 0x100800
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	2048                    # 0x800
	.long	1050624                 # 0x100800
	.size	comp_maskl0, 128

	.type	comp_maskr0,@object     # @comp_maskr0
	.p2align	4
comp_maskr0:
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	131072                  # 0x20000
	.long	2228224                 # 0x220000
	.long	2                       # 0x2
	.long	2097154                 # 0x200002
	.long	131074                  # 0x20002
	.long	2228226                 # 0x220002
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	1048576                 # 0x100000
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1048580                 # 0x100004
	.long	1048580                 # 0x100004
	.long	0                       # 0x0
	.long	16384                   # 0x4000
	.long	2048                    # 0x800
	.long	18432                   # 0x4800
	.long	0                       # 0x0
	.long	16384                   # 0x4000
	.long	2048                    # 0x800
	.long	18432                   # 0x4800
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	32768                   # 0x8000
	.long	4227072                 # 0x408000
	.long	8                       # 0x8
	.long	4194312                 # 0x400008
	.long	32776                   # 0x8008
	.long	4227080                 # 0x408008
	.size	comp_maskr0, 128

	.type	comp_maskl1,@object     # @comp_maskl1
	.p2align	4
comp_maskl1:
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	16384                   # 0x4000
	.long	16400                   # 0x4010
	.long	262144                  # 0x40000
	.long	262160                  # 0x40010
	.long	278528                  # 0x44000
	.long	278544                  # 0x44010
	.long	256                     # 0x100
	.long	272                     # 0x110
	.long	16640                   # 0x4100
	.long	16656                   # 0x4110
	.long	262400                  # 0x40100
	.long	262416                  # 0x40110
	.long	278784                  # 0x44100
	.long	278800                  # 0x44110
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	2                       # 0x2
	.long	8388610                 # 0x800002
	.long	512                     # 0x200
	.long	8389120                 # 0x800200
	.long	514                     # 0x202
	.long	8389122                 # 0x800202
	.long	2097152                 # 0x200000
	.long	10485760                # 0xa00000
	.long	2097154                 # 0x200002
	.long	10485762                # 0xa00002
	.long	2097664                 # 0x200200
	.long	10486272                # 0xa00200
	.long	2097666                 # 0x200202
	.long	10486274                # 0xa00202
	.long	0                       # 0x0
	.long	8192                    # 0x2000
	.long	4                       # 0x4
	.long	8196                    # 0x2004
	.long	1024                    # 0x400
	.long	9216                    # 0x2400
	.long	1028                    # 0x404
	.long	9220                    # 0x2404
	.long	0                       # 0x0
	.long	8192                    # 0x2000
	.long	4                       # 0x4
	.long	8196                    # 0x2004
	.long	1024                    # 0x400
	.long	9216                    # 0x2400
	.long	1028                    # 0x404
	.long	9220                    # 0x2404
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	8                       # 0x8
	.long	65544                   # 0x10008
	.long	128                     # 0x80
	.long	65664                   # 0x10080
	.long	136                     # 0x88
	.long	65672                   # 0x10088
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	8                       # 0x8
	.long	65544                   # 0x10008
	.long	128                     # 0x80
	.long	65664                   # 0x10080
	.long	136                     # 0x88
	.long	65672                   # 0x10088
	.size	comp_maskl1, 256

	.type	comp_maskr1,@object     # @comp_maskr1
	.p2align	4
comp_maskr1:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	8192                    # 0x2000
	.long	8192                    # 0x2000
	.long	8320                    # 0x2080
	.long	8320                    # 0x2080
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	129                     # 0x81
	.long	129                     # 0x81
	.long	8193                    # 0x2001
	.long	8193                    # 0x2001
	.long	8321                    # 0x2081
	.long	8321                    # 0x2081
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	8388608                 # 0x800000
	.long	8388624                 # 0x800010
	.long	65536                   # 0x10000
	.long	65552                   # 0x10010
	.long	8454144                 # 0x810000
	.long	8454160                 # 0x810010
	.long	512                     # 0x200
	.long	528                     # 0x210
	.long	8389120                 # 0x800200
	.long	8389136                 # 0x800210
	.long	66048                   # 0x10200
	.long	66064                   # 0x10210
	.long	8454656                 # 0x810200
	.long	8454672                 # 0x810210
	.long	0                       # 0x0
	.long	1024                    # 0x400
	.long	4096                    # 0x1000
	.long	5120                    # 0x1400
	.long	524288                  # 0x80000
	.long	525312                  # 0x80400
	.long	528384                  # 0x81000
	.long	529408                  # 0x81400
	.long	32                      # 0x20
	.long	1056                    # 0x420
	.long	4128                    # 0x1020
	.long	5152                    # 0x1420
	.long	524320                  # 0x80020
	.long	525344                  # 0x80420
	.long	528416                  # 0x81020
	.long	529440                  # 0x81420
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	262144                  # 0x40000
	.long	262400                  # 0x40100
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	262144                  # 0x40000
	.long	262400                  # 0x40100
	.long	64                      # 0x40
	.long	320                     # 0x140
	.long	262208                  # 0x40040
	.long	262464                  # 0x40140
	.long	64                      # 0x40
	.long	320                     # 0x140
	.long	262208                  # 0x40040
	.long	262464                  # 0x40140
	.size	comp_maskr1, 256

	.type	ip_maskl,@object        # @ip_maskl
	.p2align	4
ip_maskl:
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	16777216                # 0x1000000
	.long	16842752                # 0x1010000
	.long	16777216                # 0x1000000
	.long	16842752                # 0x1010000
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	16777216                # 0x1000000
	.long	16842752                # 0x1010000
	.long	16777216                # 0x1000000
	.long	16842752                # 0x1010000
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	33554432                # 0x2000000
	.long	33685504                # 0x2020000
	.long	33554432                # 0x2000000
	.long	33685504                # 0x2020000
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	33554432                # 0x2000000
	.long	33685504                # 0x2020000
	.long	33554432                # 0x2000000
	.long	33685504                # 0x2020000
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	0                       # 0x0
	.long	262144                  # 0x40000
	.long	0                       # 0x0
	.long	262144                  # 0x40000
	.long	67108864                # 0x4000000
	.long	67371008                # 0x4040000
	.long	67108864                # 0x4000000
	.long	67371008                # 0x4040000
	.long	0                       # 0x0
	.long	262144                  # 0x40000
	.long	0                       # 0x0
	.long	262144                  # 0x40000
	.long	67108864                # 0x4000000
	.long	67371008                # 0x4040000
	.long	67108864                # 0x4000000
	.long	67371008                # 0x4040000
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	0                       # 0x0
	.long	524288                  # 0x80000
	.long	0                       # 0x0
	.long	524288                  # 0x80000
	.long	134217728               # 0x8000000
	.long	134742016               # 0x8080000
	.long	134217728               # 0x8000000
	.long	134742016               # 0x8080000
	.long	0                       # 0x0
	.long	524288                  # 0x80000
	.long	0                       # 0x0
	.long	524288                  # 0x80000
	.long	134217728               # 0x8000000
	.long	134742016               # 0x8080000
	.long	134217728               # 0x8000000
	.long	134742016               # 0x8080000
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	268435456               # 0x10000000
	.long	269484032               # 0x10100000
	.long	268435456               # 0x10000000
	.long	269484032               # 0x10100000
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	268435456               # 0x10000000
	.long	269484032               # 0x10100000
	.long	268435456               # 0x10000000
	.long	269484032               # 0x10100000
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	536870912               # 0x20000000
	.long	538968064               # 0x20200000
	.long	536870912               # 0x20000000
	.long	538968064               # 0x20200000
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	536870912               # 0x20000000
	.long	538968064               # 0x20200000
	.long	536870912               # 0x20000000
	.long	538968064               # 0x20200000
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	1073741824              # 0x40000000
	.long	1077936128              # 0x40400000
	.long	1073741824              # 0x40000000
	.long	1077936128              # 0x40400000
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	1073741824              # 0x40000000
	.long	1077936128              # 0x40400000
	.long	1073741824              # 0x40000000
	.long	1077936128              # 0x40400000
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	2147483648              # 0x80000000
	.long	2155872256              # 0x80800000
	.long	2147483648              # 0x80000000
	.long	2155872256              # 0x80800000
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	2147483648              # 0x80000000
	.long	2155872256              # 0x80800000
	.long	2147483648              # 0x80000000
	.long	2155872256              # 0x80800000
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.size	ip_maskl, 1024

	.type	ip_maskr,@object        # @ip_maskr
	.p2align	4
ip_maskr:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	65536                   # 0x10000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	65536                   # 0x10000
	.long	65536                   # 0x10000
	.long	16777216                # 0x1000000
	.long	16777216                # 0x1000000
	.long	16842752                # 0x1010000
	.long	16842752                # 0x1010000
	.long	16777216                # 0x1000000
	.long	16777216                # 0x1000000
	.long	16842752                # 0x1010000
	.long	16842752                # 0x1010000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	257                     # 0x101
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	257                     # 0x101
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	131072                  # 0x20000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	131072                  # 0x20000
	.long	131072                  # 0x20000
	.long	33554432                # 0x2000000
	.long	33554432                # 0x2000000
	.long	33685504                # 0x2020000
	.long	33685504                # 0x2020000
	.long	33554432                # 0x2000000
	.long	33554432                # 0x2000000
	.long	33685504                # 0x2020000
	.long	33685504                # 0x2020000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	512                     # 0x200
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	514                     # 0x202
	.long	512                     # 0x200
	.long	512                     # 0x200
	.long	514                     # 0x202
	.long	514                     # 0x202
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	262144                  # 0x40000
	.long	262144                  # 0x40000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	262144                  # 0x40000
	.long	262144                  # 0x40000
	.long	67108864                # 0x4000000
	.long	67108864                # 0x4000000
	.long	67371008                # 0x4040000
	.long	67371008                # 0x4040000
	.long	67108864                # 0x4000000
	.long	67108864                # 0x4000000
	.long	67371008                # 0x4040000
	.long	67371008                # 0x4040000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	1028                    # 0x404
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1028                    # 0x404
	.long	1028                    # 0x404
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	524288                  # 0x80000
	.long	524288                  # 0x80000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	524288                  # 0x80000
	.long	524288                  # 0x80000
	.long	134217728               # 0x8000000
	.long	134217728               # 0x8000000
	.long	134742016               # 0x8080000
	.long	134742016               # 0x8080000
	.long	134217728               # 0x8000000
	.long	134217728               # 0x8000000
	.long	134742016               # 0x8080000
	.long	134742016               # 0x8080000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	2048                    # 0x800
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	2056                    # 0x808
	.long	2048                    # 0x800
	.long	2048                    # 0x800
	.long	2056                    # 0x808
	.long	2056                    # 0x808
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	1048576                 # 0x100000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1048576                 # 0x100000
	.long	1048576                 # 0x100000
	.long	268435456               # 0x10000000
	.long	268435456               # 0x10000000
	.long	269484032               # 0x10100000
	.long	269484032               # 0x10100000
	.long	268435456               # 0x10000000
	.long	268435456               # 0x10000000
	.long	269484032               # 0x10100000
	.long	269484032               # 0x10100000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	4096                    # 0x1000
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	4112                    # 0x1010
	.long	4096                    # 0x1000
	.long	4096                    # 0x1000
	.long	4112                    # 0x1010
	.long	4112                    # 0x1010
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	2097152                 # 0x200000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2097152                 # 0x200000
	.long	2097152                 # 0x200000
	.long	536870912               # 0x20000000
	.long	536870912               # 0x20000000
	.long	538968064               # 0x20200000
	.long	538968064               # 0x20200000
	.long	536870912               # 0x20000000
	.long	536870912               # 0x20000000
	.long	538968064               # 0x20200000
	.long	538968064               # 0x20200000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	8192                    # 0x2000
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	8224                    # 0x2020
	.long	8192                    # 0x2000
	.long	8192                    # 0x2000
	.long	8224                    # 0x2020
	.long	8224                    # 0x2020
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	4194304                 # 0x400000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4194304                 # 0x400000
	.long	4194304                 # 0x400000
	.long	1073741824              # 0x40000000
	.long	1073741824              # 0x40000000
	.long	1077936128              # 0x40400000
	.long	1077936128              # 0x40400000
	.long	1073741824              # 0x40000000
	.long	1073741824              # 0x40000000
	.long	1077936128              # 0x40400000
	.long	1077936128              # 0x40400000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	16384                   # 0x4000
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	16448                   # 0x4040
	.long	16384                   # 0x4000
	.long	16384                   # 0x4000
	.long	16448                   # 0x4040
	.long	16448                   # 0x4040
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2155872256              # 0x80800000
	.long	2155872256              # 0x80800000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2155872256              # 0x80800000
	.long	2155872256              # 0x80800000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.long	32896                   # 0x8080
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32896                   # 0x8080
	.long	32896                   # 0x8080
	.size	ip_maskr, 1024

	.type	psbox,@object           # @psbox
	.p2align	4
psbox:
	.long	8421888                 # 0x808200
	.long	0                       # 0x0
	.long	32768                   # 0x8000
	.long	8421890                 # 0x808202
	.long	8421378                 # 0x808002
	.long	33282                   # 0x8202
	.long	2                       # 0x2
	.long	32768                   # 0x8000
	.long	512                     # 0x200
	.long	8421888                 # 0x808200
	.long	8421890                 # 0x808202
	.long	512                     # 0x200
	.long	8389122                 # 0x800202
	.long	8421378                 # 0x808002
	.long	8388608                 # 0x800000
	.long	2                       # 0x2
	.long	514                     # 0x202
	.long	8389120                 # 0x800200
	.long	8389120                 # 0x800200
	.long	33280                   # 0x8200
	.long	33280                   # 0x8200
	.long	8421376                 # 0x808000
	.long	8421376                 # 0x808000
	.long	8389122                 # 0x800202
	.long	32770                   # 0x8002
	.long	8388610                 # 0x800002
	.long	8388610                 # 0x800002
	.long	32770                   # 0x8002
	.long	0                       # 0x0
	.long	514                     # 0x202
	.long	33282                   # 0x8202
	.long	8388608                 # 0x800000
	.long	32768                   # 0x8000
	.long	8421890                 # 0x808202
	.long	2                       # 0x2
	.long	8421376                 # 0x808000
	.long	8421888                 # 0x808200
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	512                     # 0x200
	.long	8421378                 # 0x808002
	.long	32768                   # 0x8000
	.long	33280                   # 0x8200
	.long	8388610                 # 0x800002
	.long	512                     # 0x200
	.long	2                       # 0x2
	.long	8389122                 # 0x800202
	.long	33282                   # 0x8202
	.long	8421890                 # 0x808202
	.long	32770                   # 0x8002
	.long	8421376                 # 0x808000
	.long	8389122                 # 0x800202
	.long	8388610                 # 0x800002
	.long	514                     # 0x202
	.long	33282                   # 0x8202
	.long	8421888                 # 0x808200
	.long	514                     # 0x202
	.long	8389120                 # 0x800200
	.long	8389120                 # 0x800200
	.long	0                       # 0x0
	.long	32770                   # 0x8002
	.long	33280                   # 0x8200
	.long	0                       # 0x0
	.long	8421378                 # 0x808002
	.long	1074282512              # 0x40084010
	.long	1073758208              # 0x40004000
	.long	16384                   # 0x4000
	.long	540688                  # 0x84010
	.long	524288                  # 0x80000
	.long	16                      # 0x10
	.long	1074266128              # 0x40080010
	.long	1073758224              # 0x40004010
	.long	1073741840              # 0x40000010
	.long	1074282512              # 0x40084010
	.long	1074282496              # 0x40084000
	.long	1073741824              # 0x40000000
	.long	1073758208              # 0x40004000
	.long	524288                  # 0x80000
	.long	16                      # 0x10
	.long	1074266128              # 0x40080010
	.long	540672                  # 0x84000
	.long	524304                  # 0x80010
	.long	1073758224              # 0x40004010
	.long	0                       # 0x0
	.long	1073741824              # 0x40000000
	.long	16384                   # 0x4000
	.long	540688                  # 0x84010
	.long	1074266112              # 0x40080000
	.long	524304                  # 0x80010
	.long	1073741840              # 0x40000010
	.long	0                       # 0x0
	.long	540672                  # 0x84000
	.long	16400                   # 0x4010
	.long	1074282496              # 0x40084000
	.long	1074266112              # 0x40080000
	.long	16400                   # 0x4010
	.long	0                       # 0x0
	.long	540688                  # 0x84010
	.long	1074266128              # 0x40080010
	.long	524288                  # 0x80000
	.long	1073758224              # 0x40004010
	.long	1074266112              # 0x40080000
	.long	1074282496              # 0x40084000
	.long	16384                   # 0x4000
	.long	1074266112              # 0x40080000
	.long	1073758208              # 0x40004000
	.long	16                      # 0x10
	.long	1074282512              # 0x40084010
	.long	540688                  # 0x84010
	.long	16                      # 0x10
	.long	16384                   # 0x4000
	.long	1073741824              # 0x40000000
	.long	16400                   # 0x4010
	.long	1074282496              # 0x40084000
	.long	524288                  # 0x80000
	.long	1073741840              # 0x40000010
	.long	524304                  # 0x80010
	.long	1073758224              # 0x40004010
	.long	1073741840              # 0x40000010
	.long	524304                  # 0x80010
	.long	540672                  # 0x84000
	.long	0                       # 0x0
	.long	1073758208              # 0x40004000
	.long	16400                   # 0x4010
	.long	1073741824              # 0x40000000
	.long	1074266128              # 0x40080010
	.long	1074282512              # 0x40084010
	.long	540672                  # 0x84000
	.long	260                     # 0x104
	.long	67174656                # 0x4010100
	.long	0                       # 0x0
	.long	67174404                # 0x4010004
	.long	67109120                # 0x4000100
	.long	0                       # 0x0
	.long	65796                   # 0x10104
	.long	67109120                # 0x4000100
	.long	65540                   # 0x10004
	.long	67108868                # 0x4000004
	.long	67108868                # 0x4000004
	.long	65536                   # 0x10000
	.long	67174660                # 0x4010104
	.long	65540                   # 0x10004
	.long	67174400                # 0x4010000
	.long	260                     # 0x104
	.long	67108864                # 0x4000000
	.long	4                       # 0x4
	.long	67174656                # 0x4010100
	.long	256                     # 0x100
	.long	65792                   # 0x10100
	.long	67174400                # 0x4010000
	.long	67174404                # 0x4010004
	.long	65796                   # 0x10104
	.long	67109124                # 0x4000104
	.long	65792                   # 0x10100
	.long	65536                   # 0x10000
	.long	67109124                # 0x4000104
	.long	4                       # 0x4
	.long	67174660                # 0x4010104
	.long	256                     # 0x100
	.long	67108864                # 0x4000000
	.long	67174656                # 0x4010100
	.long	67108864                # 0x4000000
	.long	65540                   # 0x10004
	.long	260                     # 0x104
	.long	65536                   # 0x10000
	.long	67174656                # 0x4010100
	.long	67109120                # 0x4000100
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	65540                   # 0x10004
	.long	67174660                # 0x4010104
	.long	67109120                # 0x4000100
	.long	67108868                # 0x4000004
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	67174404                # 0x4010004
	.long	67109124                # 0x4000104
	.long	65536                   # 0x10000
	.long	67108864                # 0x4000000
	.long	67174660                # 0x4010104
	.long	4                       # 0x4
	.long	65796                   # 0x10104
	.long	65792                   # 0x10100
	.long	67108868                # 0x4000004
	.long	67174400                # 0x4010000
	.long	67109124                # 0x4000104
	.long	260                     # 0x104
	.long	67174400                # 0x4010000
	.long	65796                   # 0x10104
	.long	4                       # 0x4
	.long	67174404                # 0x4010004
	.long	65792                   # 0x10100
	.long	2151682048              # 0x80401000
	.long	2147487808              # 0x80001040
	.long	2147487808              # 0x80001040
	.long	64                      # 0x40
	.long	4198464                 # 0x401040
	.long	2151678016              # 0x80400040
	.long	2151677952              # 0x80400000
	.long	2147487744              # 0x80001000
	.long	0                       # 0x0
	.long	4198400                 # 0x401000
	.long	4198400                 # 0x401000
	.long	2151682112              # 0x80401040
	.long	2147483712              # 0x80000040
	.long	0                       # 0x0
	.long	4194368                 # 0x400040
	.long	2151677952              # 0x80400000
	.long	2147483648              # 0x80000000
	.long	4096                    # 0x1000
	.long	4194304                 # 0x400000
	.long	2151682048              # 0x80401000
	.long	64                      # 0x40
	.long	4194304                 # 0x400000
	.long	2147487744              # 0x80001000
	.long	4160                    # 0x1040
	.long	2151678016              # 0x80400040
	.long	2147483648              # 0x80000000
	.long	4160                    # 0x1040
	.long	4194368                 # 0x400040
	.long	4096                    # 0x1000
	.long	4198464                 # 0x401040
	.long	2151682112              # 0x80401040
	.long	2147483712              # 0x80000040
	.long	4194368                 # 0x400040
	.long	2151677952              # 0x80400000
	.long	4198400                 # 0x401000
	.long	2151682112              # 0x80401040
	.long	2147483712              # 0x80000040
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4198400                 # 0x401000
	.long	4160                    # 0x1040
	.long	4194368                 # 0x400040
	.long	2151678016              # 0x80400040
	.long	2147483648              # 0x80000000
	.long	2151682048              # 0x80401000
	.long	2147487808              # 0x80001040
	.long	2147487808              # 0x80001040
	.long	64                      # 0x40
	.long	2151682112              # 0x80401040
	.long	2147483712              # 0x80000040
	.long	2147483648              # 0x80000000
	.long	4096                    # 0x1000
	.long	2151677952              # 0x80400000
	.long	2147487744              # 0x80001000
	.long	4198464                 # 0x401040
	.long	2151678016              # 0x80400040
	.long	2147487744              # 0x80001000
	.long	4160                    # 0x1040
	.long	4194304                 # 0x400000
	.long	2151682048              # 0x80401000
	.long	64                      # 0x40
	.long	4194304                 # 0x400000
	.long	4096                    # 0x1000
	.long	4198464                 # 0x401040
	.long	128                     # 0x80
	.long	17039488                # 0x1040080
	.long	17039360                # 0x1040000
	.long	553648256               # 0x21000080
	.long	262144                  # 0x40000
	.long	128                     # 0x80
	.long	536870912               # 0x20000000
	.long	17039360                # 0x1040000
	.long	537133184               # 0x20040080
	.long	262144                  # 0x40000
	.long	16777344                # 0x1000080
	.long	537133184               # 0x20040080
	.long	553648256               # 0x21000080
	.long	553910272               # 0x21040000
	.long	262272                  # 0x40080
	.long	536870912               # 0x20000000
	.long	16777216                # 0x1000000
	.long	537133056               # 0x20040000
	.long	537133056               # 0x20040000
	.long	0                       # 0x0
	.long	536871040               # 0x20000080
	.long	553910400               # 0x21040080
	.long	553910400               # 0x21040080
	.long	16777344                # 0x1000080
	.long	553910272               # 0x21040000
	.long	536871040               # 0x20000080
	.long	0                       # 0x0
	.long	553648128               # 0x21000000
	.long	17039488                # 0x1040080
	.long	16777216                # 0x1000000
	.long	553648128               # 0x21000000
	.long	262272                  # 0x40080
	.long	262144                  # 0x40000
	.long	553648256               # 0x21000080
	.long	128                     # 0x80
	.long	16777216                # 0x1000000
	.long	536870912               # 0x20000000
	.long	17039360                # 0x1040000
	.long	553648256               # 0x21000080
	.long	537133184               # 0x20040080
	.long	16777344                # 0x1000080
	.long	536870912               # 0x20000000
	.long	553910272               # 0x21040000
	.long	17039488                # 0x1040080
	.long	537133184               # 0x20040080
	.long	128                     # 0x80
	.long	16777216                # 0x1000000
	.long	553910272               # 0x21040000
	.long	553910400               # 0x21040080
	.long	262272                  # 0x40080
	.long	553648128               # 0x21000000
	.long	553910400               # 0x21040080
	.long	17039360                # 0x1040000
	.long	0                       # 0x0
	.long	537133056               # 0x20040000
	.long	553648128               # 0x21000000
	.long	262272                  # 0x40080
	.long	16777344                # 0x1000080
	.long	536871040               # 0x20000080
	.long	262144                  # 0x40000
	.long	0                       # 0x0
	.long	537133056               # 0x20040000
	.long	17039488                # 0x1040080
	.long	536871040               # 0x20000080
	.long	268435464               # 0x10000008
	.long	270532608               # 0x10200000
	.long	8192                    # 0x2000
	.long	270540808               # 0x10202008
	.long	270532608               # 0x10200000
	.long	8                       # 0x8
	.long	270540808               # 0x10202008
	.long	2097152                 # 0x200000
	.long	268443648               # 0x10002000
	.long	2105352                 # 0x202008
	.long	2097152                 # 0x200000
	.long	268435464               # 0x10000008
	.long	2097160                 # 0x200008
	.long	268443648               # 0x10002000
	.long	268435456               # 0x10000000
	.long	8200                    # 0x2008
	.long	0                       # 0x0
	.long	2097160                 # 0x200008
	.long	268443656               # 0x10002008
	.long	8192                    # 0x2000
	.long	2105344                 # 0x202000
	.long	268443656               # 0x10002008
	.long	8                       # 0x8
	.long	270532616               # 0x10200008
	.long	270532616               # 0x10200008
	.long	0                       # 0x0
	.long	2105352                 # 0x202008
	.long	270540800               # 0x10202000
	.long	8200                    # 0x2008
	.long	2105344                 # 0x202000
	.long	270540800               # 0x10202000
	.long	268435456               # 0x10000000
	.long	268443648               # 0x10002000
	.long	8                       # 0x8
	.long	270532616               # 0x10200008
	.long	2105344                 # 0x202000
	.long	270540808               # 0x10202008
	.long	2097152                 # 0x200000
	.long	8200                    # 0x2008
	.long	268435464               # 0x10000008
	.long	2097152                 # 0x200000
	.long	268443648               # 0x10002000
	.long	268435456               # 0x10000000
	.long	8200                    # 0x2008
	.long	268435464               # 0x10000008
	.long	270540808               # 0x10202008
	.long	2105344                 # 0x202000
	.long	270532608               # 0x10200000
	.long	2105352                 # 0x202008
	.long	270540800               # 0x10202000
	.long	0                       # 0x0
	.long	270532616               # 0x10200008
	.long	8                       # 0x8
	.long	8192                    # 0x2000
	.long	270532608               # 0x10200000
	.long	2105352                 # 0x202008
	.long	8192                    # 0x2000
	.long	2097160                 # 0x200008
	.long	268443656               # 0x10002008
	.long	0                       # 0x0
	.long	270540800               # 0x10202000
	.long	268435456               # 0x10000000
	.long	2097160                 # 0x200008
	.long	268443656               # 0x10002008
	.long	1048576                 # 0x100000
	.long	34603009                # 0x2100001
	.long	33555457                # 0x2000401
	.long	0                       # 0x0
	.long	1024                    # 0x400
	.long	33555457                # 0x2000401
	.long	1049601                 # 0x100401
	.long	34604032                # 0x2100400
	.long	34604033                # 0x2100401
	.long	1048576                 # 0x100000
	.long	0                       # 0x0
	.long	33554433                # 0x2000001
	.long	1                       # 0x1
	.long	33554432                # 0x2000000
	.long	34603009                # 0x2100001
	.long	1025                    # 0x401
	.long	33555456                # 0x2000400
	.long	1049601                 # 0x100401
	.long	1048577                 # 0x100001
	.long	33555456                # 0x2000400
	.long	33554433                # 0x2000001
	.long	34603008                # 0x2100000
	.long	34604032                # 0x2100400
	.long	1048577                 # 0x100001
	.long	34603008                # 0x2100000
	.long	1024                    # 0x400
	.long	1025                    # 0x401
	.long	34604033                # 0x2100401
	.long	1049600                 # 0x100400
	.long	1                       # 0x1
	.long	33554432                # 0x2000000
	.long	1049600                 # 0x100400
	.long	33554432                # 0x2000000
	.long	1049600                 # 0x100400
	.long	1048576                 # 0x100000
	.long	33555457                # 0x2000401
	.long	33555457                # 0x2000401
	.long	34603009                # 0x2100001
	.long	34603009                # 0x2100001
	.long	1                       # 0x1
	.long	1048577                 # 0x100001
	.long	33554432                # 0x2000000
	.long	33555456                # 0x2000400
	.long	1048576                 # 0x100000
	.long	34604032                # 0x2100400
	.long	1025                    # 0x401
	.long	1049601                 # 0x100401
	.long	34604032                # 0x2100400
	.long	1025                    # 0x401
	.long	33554433                # 0x2000001
	.long	34604033                # 0x2100401
	.long	34603008                # 0x2100000
	.long	1049600                 # 0x100400
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	34604033                # 0x2100401
	.long	0                       # 0x0
	.long	1049601                 # 0x100401
	.long	34603008                # 0x2100000
	.long	1024                    # 0x400
	.long	33554433                # 0x2000001
	.long	33555456                # 0x2000400
	.long	1024                    # 0x400
	.long	1048577                 # 0x100001
	.long	134219808               # 0x8000820
	.long	2048                    # 0x800
	.long	131072                  # 0x20000
	.long	134350880               # 0x8020820
	.long	134217728               # 0x8000000
	.long	134219808               # 0x8000820
	.long	32                      # 0x20
	.long	134217728               # 0x8000000
	.long	131104                  # 0x20020
	.long	134348800               # 0x8020000
	.long	134350880               # 0x8020820
	.long	133120                  # 0x20800
	.long	134350848               # 0x8020800
	.long	133152                  # 0x20820
	.long	2048                    # 0x800
	.long	32                      # 0x20
	.long	134348800               # 0x8020000
	.long	134217760               # 0x8000020
	.long	134219776               # 0x8000800
	.long	2080                    # 0x820
	.long	133120                  # 0x20800
	.long	131104                  # 0x20020
	.long	134348832               # 0x8020020
	.long	134350848               # 0x8020800
	.long	2080                    # 0x820
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	134348832               # 0x8020020
	.long	134217760               # 0x8000020
	.long	134219776               # 0x8000800
	.long	133152                  # 0x20820
	.long	131072                  # 0x20000
	.long	133152                  # 0x20820
	.long	131072                  # 0x20000
	.long	134350848               # 0x8020800
	.long	2048                    # 0x800
	.long	32                      # 0x20
	.long	134348832               # 0x8020020
	.long	2048                    # 0x800
	.long	133152                  # 0x20820
	.long	134219776               # 0x8000800
	.long	32                      # 0x20
	.long	134217760               # 0x8000020
	.long	134348800               # 0x8020000
	.long	134348832               # 0x8020020
	.long	134217728               # 0x8000000
	.long	131072                  # 0x20000
	.long	134219808               # 0x8000820
	.long	0                       # 0x0
	.long	134350880               # 0x8020820
	.long	131104                  # 0x20020
	.long	134217760               # 0x8000020
	.long	134348800               # 0x8020000
	.long	134219776               # 0x8000800
	.long	134219808               # 0x8000820
	.long	0                       # 0x0
	.long	134350880               # 0x8020820
	.long	133120                  # 0x20800
	.long	133120                  # 0x20800
	.long	2080                    # 0x820
	.long	2080                    # 0x820
	.long	131104                  # 0x20020
	.long	134217728               # 0x8000000
	.long	134350848               # 0x8020800
	.size	psbox, 2048

	.type	fp_maskl,@object        # @fp_maskl
	.p2align	4
fp_maskl:
	.long	0                       # 0x0
	.long	1073741824              # 0x40000000
	.long	4194304                 # 0x400000
	.long	1077936128              # 0x40400000
	.long	16384                   # 0x4000
	.long	1073758208              # 0x40004000
	.long	4210688                 # 0x404000
	.long	1077952512              # 0x40404000
	.long	64                      # 0x40
	.long	1073741888              # 0x40000040
	.long	4194368                 # 0x400040
	.long	1077936192              # 0x40400040
	.long	16448                   # 0x4040
	.long	1073758272              # 0x40004040
	.long	4210752                 # 0x404040
	.long	1077952576              # 0x40404040
	.long	0                       # 0x0
	.long	268435456               # 0x10000000
	.long	1048576                 # 0x100000
	.long	269484032               # 0x10100000
	.long	4096                    # 0x1000
	.long	268439552               # 0x10001000
	.long	1052672                 # 0x101000
	.long	269488128               # 0x10101000
	.long	16                      # 0x10
	.long	268435472               # 0x10000010
	.long	1048592                 # 0x100010
	.long	269484048               # 0x10100010
	.long	4112                    # 0x1010
	.long	268439568               # 0x10001010
	.long	1052688                 # 0x101010
	.long	269488144               # 0x10101010
	.long	0                       # 0x0
	.long	67108864                # 0x4000000
	.long	262144                  # 0x40000
	.long	67371008                # 0x4040000
	.long	1024                    # 0x400
	.long	67109888                # 0x4000400
	.long	263168                  # 0x40400
	.long	67372032                # 0x4040400
	.long	4                       # 0x4
	.long	67108868                # 0x4000004
	.long	262148                  # 0x40004
	.long	67371012                # 0x4040004
	.long	1028                    # 0x404
	.long	67109892                # 0x4000404
	.long	263172                  # 0x40404
	.long	67372036                # 0x4040404
	.long	0                       # 0x0
	.long	16777216                # 0x1000000
	.long	65536                   # 0x10000
	.long	16842752                # 0x1010000
	.long	256                     # 0x100
	.long	16777472                # 0x1000100
	.long	65792                   # 0x10100
	.long	16843008                # 0x1010100
	.long	1                       # 0x1
	.long	16777217                # 0x1000001
	.long	65537                   # 0x10001
	.long	16842753                # 0x1010001
	.long	257                     # 0x101
	.long	16777473                # 0x1000101
	.long	65793                   # 0x10101
	.long	16843009                # 0x1010101
	.long	0                       # 0x0
	.long	2147483648              # 0x80000000
	.long	8388608                 # 0x800000
	.long	2155872256              # 0x80800000
	.long	32768                   # 0x8000
	.long	2147516416              # 0x80008000
	.long	8421376                 # 0x808000
	.long	2155905024              # 0x80808000
	.long	128                     # 0x80
	.long	2147483776              # 0x80000080
	.long	8388736                 # 0x800080
	.long	2155872384              # 0x80800080
	.long	32896                   # 0x8080
	.long	2147516544              # 0x80008080
	.long	8421504                 # 0x808080
	.long	2155905152              # 0x80808080
	.long	0                       # 0x0
	.long	536870912               # 0x20000000
	.long	2097152                 # 0x200000
	.long	538968064               # 0x20200000
	.long	8192                    # 0x2000
	.long	536879104               # 0x20002000
	.long	2105344                 # 0x202000
	.long	538976256               # 0x20202000
	.long	32                      # 0x20
	.long	536870944               # 0x20000020
	.long	2097184                 # 0x200020
	.long	538968096               # 0x20200020
	.long	8224                    # 0x2020
	.long	536879136               # 0x20002020
	.long	2105376                 # 0x202020
	.long	538976288               # 0x20202020
	.long	0                       # 0x0
	.long	134217728               # 0x8000000
	.long	524288                  # 0x80000
	.long	134742016               # 0x8080000
	.long	2048                    # 0x800
	.long	134219776               # 0x8000800
	.long	526336                  # 0x80800
	.long	134744064               # 0x8080800
	.long	8                       # 0x8
	.long	134217736               # 0x8000008
	.long	524296                  # 0x80008
	.long	134742024               # 0x8080008
	.long	2056                    # 0x808
	.long	134219784               # 0x8000808
	.long	526344                  # 0x80808
	.long	134744072               # 0x8080808
	.long	0                       # 0x0
	.long	33554432                # 0x2000000
	.long	131072                  # 0x20000
	.long	33685504                # 0x2020000
	.long	512                     # 0x200
	.long	33554944                # 0x2000200
	.long	131584                  # 0x20200
	.long	33686016                # 0x2020200
	.long	2                       # 0x2
	.long	33554434                # 0x2000002
	.long	131074                  # 0x20002
	.long	33685506                # 0x2020002
	.long	514                     # 0x202
	.long	33554946                # 0x2000202
	.long	131586                  # 0x20202
	.long	33686018                # 0x2020202
	.size	fp_maskl, 512

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\200\377\200\001 \177\201\200\200\r\n\377\177 \201 test"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"_0.../9Zz"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"_0.../9ZzX7iSJNd21sU"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\200x"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\200x22/wK52ZKGA"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"x"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"*"
	.size	.L.str.6, 2

	.type	ascii64,@object         # @ascii64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
ascii64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	ascii64, 65

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
