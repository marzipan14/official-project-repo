	.text
	.file	"lstate.c"
	.hidden	luaE_newthread          # -- Begin function luaE_newthread
	.globl	luaE_newthread
	.p2align	4, 0x90
	.type	luaE_newthread,@function
luaE_newthread:                         # @luaE_newthread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$184, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$8, %edx
	callq	luaC_link
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 88(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rbx)
	movw	$256, 100(%rbx)         # imm = 0x100
	movups	%xmm0, 104(%rbx)
	movq	$0, 152(%rbx)
	movq	$0, 92(%rbx)
	movb	$0, 10(%rbx)
	movups	%xmm0, 40(%rbx)
	movq	$0, 80(%rbx)
	movl	$0, 128(%rbx)
	movl	$320, %ecx              # imm = 0x140
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 80(%rbx)
	movq	%rax, 40(%rbx)
	movl	$8, 92(%rbx)
	addq	$280, %rax              # imm = 0x118
	movq	%rax, 72(%rbx)
	movl	$720, %ecx              # imm = 0x2D0
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 64(%rbx)
	movl	$45, 88(%rbx)
	leaq	624(%rax), %rcx
	movq	%rcx, 56(%rbx)
	movq	40(%rbx), %rcx
	movq	%rax, 8(%rcx)
	leaq	16(%rax), %rdx
	movq	%rdx, 16(%rbx)
	movl	$0, 8(%rax)
	movq	%rdx, (%rcx)
	movq	%rdx, 24(%rbx)
	addq	$336, %rax              # imm = 0x150
	movq	%rax, 16(%rcx)
	movq	120(%r14), %rax
	movq	%rax, 120(%rbx)
	movl	128(%r14), %eax
	movl	%eax, 128(%rbx)
	movb	100(%r14), %al
	movb	%al, 100(%rbx)
	movl	104(%r14), %eax
	movl	%eax, 104(%rbx)
	movq	112(%r14), %rcx
	movq	%rcx, 112(%rbx)
	movl	%eax, 108(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaE_newthread, .Lfunc_end0-luaE_newthread
                                        # -- End function
	.hidden	luaE_freethread         # -- Begin function luaE_freethread
	.globl	luaE_freethread
	.p2align	4, 0x90
	.type	luaE_freethread,@function
luaE_freethread:                        # @luaE_freethread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	64(%rsi), %rsi
	movq	%rbx, %rdi
	callq	luaF_close
	movq	80(%rbx), %rsi
	movslq	92(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	64(%rbx), %rsi
	movslq	88(%rbx), %rdx
	shlq	$4, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$184, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaM_realloc_           # TAILCALL
.Lfunc_end1:
	.size	luaE_freethread, .Lfunc_end1-luaE_freethread
                                        # -- End function
	.globl	lua_newstate            # -- Begin function lua_newstate
	.p2align	4, 0x90
	.type	lua_newstate,@function
lua_newstate:                           # @lua_newstate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	movl	$616, %ecx              # imm = 0x268
	movq	%rsi, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%r15
	testq	%rax, %rax
	je	.LBB2_4
# %bb.1:
	movq	%rax, %rbx
	addq	$184, %rax
	movq	$0, (%rbx)
	movb	$8, 8(%rbx)
	movb	$33, 216(%rbx)
	movw	$97, 9(%rbx)
	movq	%rax, 32(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 88(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rbx)
	movw	$256, 100(%rbx)         # imm = 0x100
	movups	%xmm0, 104(%rbx)
	movq	$0, 152(%rbx)
	movq	$0, 92(%rbx)
	movups	%xmm0, 40(%rbx)
	movq	$0, 80(%rbx)
	movl	$0, 128(%rbx)
	movq	%r15, 200(%rbx)
	movq	%r14, 208(%rbx)
	movq	%rbx, 360(%rbx)
	leaq	368(%rbx), %rax
	movq	%rax, 392(%rbx)
	movq	%rax, 400(%rbx)
	movups	%xmm0, 184(%rbx)
	movl	$0, 352(%rbx)
	movq	$0, 272(%rbx)
	movups	%xmm0, 288(%rbx)
	movq	$0, 336(%rbx)
	movb	$0, 217(%rbx)
	movq	%rbx, %rax
	addq	$224, %rax
	movq	%rbx, 224(%rbx)
	movl	$0, 220(%rbx)
	movq	%rax, 232(%rbx)
	movups	%xmm0, 240(%rbx)
	movups	%xmm0, 256(%rbx)
	movq	$616, 304(%rbx)         # imm = 0x268
	movabsq	$858993459400, %rax     # imm = 0xC8000000C8
	movq	%rax, 328(%rbx)
	movq	$0, 320(%rbx)
	movups	%xmm0, 408(%rbx)
	movups	%xmm0, 424(%rbx)
	movups	%xmm0, 440(%rbx)
	movups	%xmm0, 456(%rbx)
	movq	$0, 472(%rbx)
	movl	$f_luaopen, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	luaD_rawrunprotected
	testl	%eax, %eax
	je	.LBB2_2
# %bb.3:
	movq	%rbx, %rdi
	callq	close_state
	xorl	%r12d, %r12d
	jmp	.LBB2_4
.LBB2_2:
	movq	%rbx, %r12
.LBB2_4:
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lua_newstate, .Lfunc_end2-lua_newstate
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_luaopen
	.type	f_luaopen,@function
f_luaopen:                              # @f_luaopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	32(%rdi), %r14
	movl	$320, %ecx              # imm = 0x140
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 80(%rbx)
	movq	%rax, 40(%rbx)
	movl	$8, 92(%rbx)
	addq	$280, %rax              # imm = 0x118
	movq	%rax, 72(%rbx)
	movl	$720, %ecx              # imm = 0x2D0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, 64(%rbx)
	movl	$45, 88(%rbx)
	leaq	624(%rax), %rcx
	movq	%rcx, 56(%rbx)
	movq	40(%rbx), %rcx
	movq	%rax, 8(%rcx)
	leaq	16(%rax), %rdx
	movq	%rdx, 16(%rbx)
	movl	$0, 8(%rax)
	movq	%rdx, (%rcx)
	movq	%rdx, 24(%rbx)
	addq	$336, %rax              # imm = 0x150
	movq	%rax, 16(%rcx)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	luaH_new
	movq	%rax, 120(%rbx)
	movl	$5, 128(%rbx)
	movq	32(%rbx), %r15
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	luaH_new
	movq	%rax, 160(%r15)
	movl	$5, 168(%r15)
	movq	%rbx, %rdi
	movl	$32, %esi
	callq	luaS_resize
	movq	%rbx, %rdi
	callq	luaT_init
	movq	%rbx, %rdi
	callq	luaX_init
	movl	$.L.str, %esi
	movl	$17, %edx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	orb	$32, 9(%rax)
	movq	120(%r14), %rax
	shlq	$2, %rax
	movq	%rax, 112(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	f_luaopen, .Lfunc_end3-f_luaopen
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function close_state
	.type	close_state,@function
close_state:                            # @close_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	32(%rdi), %r14
	movq	64(%rdi), %rsi
	callq	luaF_close
	movq	%rbx, %rdi
	callq	luaC_freeall
	movq	32(%rbx), %rax
	movq	(%rax), %rsi
	movslq	12(%rax), %rdx
	shlq	$3, %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	88(%r14), %rsi
	movq	104(%r14), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	%rax, 88(%r14)
	movq	$0, 104(%r14)
	movq	80(%rbx), %rsi
	movslq	92(%rbx), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	64(%rbx), %rsi
	movslq	88(%rbx), %rdx
	shlq	$4, %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	16(%r14), %rax
	movq	24(%r14), %rdi
	movl	$616, %edx              # imm = 0x268
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	close_state, .Lfunc_end4-close_state
                                        # -- End function
	.globl	lua_close               # -- Begin function lua_close
	.p2align	4, 0x90
	.type	lua_close,@function
lua_close:                              # @lua_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	32(%rdi), %rax
	movq	176(%rax), %rbx
	movq	64(%rbx), %rsi
	movq	%rbx, %rdi
	callq	luaF_close
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaC_separateudata
	movq	$0, 176(%rbx)
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	80(%rbx), %rax
	movq	%rax, 40(%rbx)
	movq	(%rax), %rax
	movq	%rax, 16(%rbx)
	movq	%rax, 24(%rbx)
	movl	$0, 96(%rbx)
	movl	$callallgcTM, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	luaD_rawrunprotected
	testl	%eax, %eax
	jne	.LBB5_1
# %bb.2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	close_state             # TAILCALL
.Lfunc_end5:
	.size	lua_close, .Lfunc_end5-lua_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callallgcTM
	.type	callallgcTM,@function
callallgcTM:                            # @callallgcTM
# %bb.0:
	jmp	luaC_callGCTM           # TAILCALL
.Lfunc_end6:
	.size	callallgcTM, .Lfunc_end6-callallgcTM
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not enough memory"
	.size	.L.str, 18

	.hidden	luaM_realloc_
	.hidden	luaC_link
	.hidden	luaF_close
	.hidden	luaD_rawrunprotected
	.hidden	luaC_separateudata
	.hidden	luaH_new
	.hidden	luaS_resize
	.hidden	luaT_init
	.hidden	luaX_init
	.hidden	luaS_newlstr
	.hidden	luaC_freeall
	.hidden	luaC_callGCTM
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
