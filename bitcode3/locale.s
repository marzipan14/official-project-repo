	.text
	.file	"locale.c"
	.globl	_setlocale_r            # -- Begin function _setlocale_r
	.p2align	4, 0x90
	.type	_setlocale_r,@function
_setlocale_r:                           # @_setlocale_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdx, %rdx
	je	.LBB0_5
# %bb.1:
	movq	%rdx, %rbx
	movl	$.L.str.2, %esi
	movq	%rdx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_5
# %bb.2:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_5
# %bb.3:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_5:
	movl	$.L.str.3, %eax
.LBB0_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_setlocale_r, .Lfunc_end0-_setlocale_r
                                        # -- End function
	.globl	__locale_mb_cur_max     # -- Begin function __locale_mb_cur_max
	.p2align	4, 0x90
	.type	__locale_mb_cur_max,@function
__locale_mb_cur_max:                    # @__locale_mb_cur_max
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movsbl	352(%rcx), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__locale_mb_cur_max, .Lfunc_end1-__locale_mb_cur_max
                                        # -- End function
	.globl	__locale_ctype_ptr_l    # -- Begin function __locale_ctype_ptr_l
	.p2align	4, 0x90
	.type	__locale_ctype_ptr_l,@function
__locale_ctype_ptr_l:                   # @__locale_ctype_ptr_l
# %bb.0:
	movq	248(%rdi), %rax
	retq
.Lfunc_end2:
	.size	__locale_ctype_ptr_l, .Lfunc_end2-__locale_ctype_ptr_l
                                        # -- End function
	.globl	__locale_ctype_ptr      # -- Begin function __locale_ctype_ptr
	.p2align	4, 0x90
	.type	__locale_ctype_ptr,@function
__locale_ctype_ptr:                     # @__locale_ctype_ptr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	248(%rcx), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	__locale_ctype_ptr, .Lfunc_end3-__locale_ctype_ptr
                                        # -- End function
	.globl	setlocale               # -- Begin function setlocale
	.p2align	4, 0x90
	.type	setlocale,@function
setlocale:                              # @setlocale
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	__getreent
	testq	%rbx, %rbx
	je	.LBB4_5
# %bb.1:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_5
# %bb.2:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_5
# %bb.3:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_5
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB4_6
.LBB4_5:
	movl	$.L.str.3, %eax
.LBB4_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	setlocale, .Lfunc_end4-setlocale
                                        # -- End function
	.type	_PathLocale,@object     # @_PathLocale
	.bss
	.globl	_PathLocale
	.p2align	3
_PathLocale:
	.quad	0
	.size	_PathLocale, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	__global_locale,@object # @__global_locale
	.data
	.globl	__global_locale
	.p2align	3
__global_locale:
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"C\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.quad	__ascii_wctomb
	.quad	__ascii_mbtowc
	.long	0                       # 0x0
	.zero	4
	.quad	_ctype_b+127
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.quad	.L.str.1
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.byte	127                     # 0x7f
	.zero	2
	.asciz	"\001"
	.asciz	"ASCII\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"ASCII\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	6
	.size	__global_locale, 424

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"POSIX"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"C"
	.size	.L.str.3, 2

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
