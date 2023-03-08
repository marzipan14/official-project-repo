	.text
	.file	"zmalloc.c"
	.globl	zlibc_free              # -- Begin function zlibc_free
	.p2align	4, 0x90
	.type	zlibc_free,@function
zlibc_free:                             # @zlibc_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zlibc_free, .Lfunc_end0-zlibc_free
                                        # -- End function
	.globl	zmalloc                 # -- Begin function zmalloc
	.p2align	4, 0x90
	.type	zmalloc,@function
zmalloc:                                # @zmalloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	leaq	8(%rdi), %r14
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB1_2
# %bb.1:
	movq	%r15, %rdi
	callq	*zmalloc_oom_handler(%rip)
.LBB1_2:
	movq	%r15, (%rbx)
	lock		addq	%r14, used_memory(%rip)
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zmalloc, .Lfunc_end1-zmalloc
                                        # -- End function
	.globl	zcalloc                 # -- Begin function zcalloc
	.p2align	4, 0x90
	.type	zcalloc,@function
zcalloc:                                # @zcalloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	leaq	8(%rdi), %r14
	movl	$1, %edi
	movq	%r14, %rsi
	callq	calloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	movq	%r15, %rdi
	callq	*zmalloc_oom_handler(%rip)
.LBB2_2:
	movq	%r15, (%rbx)
	lock		addq	%r14, used_memory(%rip)
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zcalloc, .Lfunc_end2-zcalloc
                                        # -- End function
	.globl	zrealloc                # -- Begin function zrealloc
	.p2align	4, 0x90
	.type	zrealloc,@function
zrealloc:                               # @zrealloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.4:
	movq	-8(%rdi), %r12
	addq	$-8, %rdi
	leaq	8(%r14), %r15
	movq	%r15, %rsi
	callq	realloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB3_6
# %bb.5:
	movq	%r14, %rdi
	callq	*zmalloc_oom_handler(%rip)
.LBB3_6:
	movq	%r14, (%rbx)
	addq	$8, %r12
	lock		subq	%r12, used_memory(%rip)
	lock		addq	%r15, used_memory(%rip)
	jmp	.LBB3_7
.LBB3_1:
	leaq	8(%r14), %r15
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB3_3
# %bb.2:
	movq	%r14, %rdi
	callq	*zmalloc_oom_handler(%rip)
.LBB3_3:
	movq	%r14, (%rbx)
	lock		addq	%r15, used_memory(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zrealloc, .Lfunc_end3-zrealloc
                                        # -- End function
	.globl	zmalloc_size            # -- Begin function zmalloc_size
	.p2align	4, 0x90
	.type	zmalloc_size,@function
zmalloc_size:                           # @zmalloc_size
# %bb.0:
	movq	-8(%rdi), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	$8, %edx
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	cmoveq	%rcx, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	zmalloc_size, .Lfunc_end4-zmalloc_size
                                        # -- End function
	.globl	zmalloc_usable          # -- Begin function zmalloc_usable
	.p2align	4, 0x90
	.type	zmalloc_usable,@function
zmalloc_usable:                         # @zmalloc_usable
# %bb.0:
	movq	-8(%rdi), %rcx
	movl	%ecx, %edx
	andl	$7, %edx
	movl	$8, %eax
	subq	%rdx, %rax
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	zmalloc_usable, .Lfunc_end5-zmalloc_usable
                                        # -- End function
	.globl	zfree                   # -- Begin function zfree
	.p2align	4, 0x90
	.type	zfree,@function
zfree:                                  # @zfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB6_2
# %bb.1:
	movq	-8(%rdi), %rax
	addq	$-8, %rdi
	addq	$8, %rax
	lock		subq	%rax, used_memory(%rip)
	callq	free
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zfree, .Lfunc_end6-zfree
                                        # -- End function
	.globl	zstrdup                 # -- Begin function zstrdup
	.p2align	4, 0x90
	.type	zstrdup,@function
zstrdup:                                # @zstrdup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	callq	strlen
	movq	%rax, %r12
	leaq	1(%rax), %r15
	addq	$9, %r12
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB7_2
# %bb.1:
	movq	%r15, %rdi
	callq	*zmalloc_oom_handler(%rip)
.LBB7_2:
	movq	%r15, (%rbx)
	lock		addq	%r12, used_memory(%rip)
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zstrdup, .Lfunc_end7-zstrdup
                                        # -- End function
	.globl	zmalloc_used_memory     # -- Begin function zmalloc_used_memory
	.p2align	4, 0x90
	.type	zmalloc_used_memory,@function
zmalloc_used_memory:                    # @zmalloc_used_memory
# %bb.0:
	movq	used_memory(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end8:
	.size	zmalloc_used_memory, .Lfunc_end8-zmalloc_used_memory
                                        # -- End function
	.globl	zmalloc_set_oom_handler # -- Begin function zmalloc_set_oom_handler
	.p2align	4, 0x90
	.type	zmalloc_set_oom_handler,@function
zmalloc_set_oom_handler:                # @zmalloc_set_oom_handler
# %bb.0:
	movq	%rdi, zmalloc_oom_handler(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	zmalloc_set_oom_handler, .Lfunc_end9-zmalloc_set_oom_handler
                                        # -- End function
	.globl	zmalloc_get_rss         # -- Begin function zmalloc_get_rss
	.p2align	4, 0x90
	.type	zmalloc_get_rss,@function
zmalloc_get_rss:                        # @zmalloc_get_rss
# %bb.0:
	movq	used_memory(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	zmalloc_get_rss, .Lfunc_end10-zmalloc_get_rss
                                        # -- End function
	.globl	zmalloc_get_allocator_info # -- Begin function zmalloc_get_allocator_info
	.p2align	4, 0x90
	.type	zmalloc_get_allocator_info,@function
zmalloc_get_allocator_info:             # @zmalloc_get_allocator_info
# %bb.0:
	movq	$0, (%rsi)
	movq	$0, (%rdx)
	movq	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	retq
.Lfunc_end11:
	.size	zmalloc_get_allocator_info, .Lfunc_end11-zmalloc_get_allocator_info
                                        # -- End function
	.globl	zmalloc_get_smap_bytes_by_field # -- Begin function zmalloc_get_smap_bytes_by_field
	.p2align	4, 0x90
	.type	zmalloc_get_smap_bytes_by_field,@function
zmalloc_get_smap_bytes_by_field:        # @zmalloc_get_smap_bytes_by_field
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	zmalloc_get_smap_bytes_by_field, .Lfunc_end12-zmalloc_get_smap_bytes_by_field
                                        # -- End function
	.globl	zmalloc_get_private_dirty # -- Begin function zmalloc_get_private_dirty
	.p2align	4, 0x90
	.type	zmalloc_get_private_dirty,@function
zmalloc_get_private_dirty:              # @zmalloc_get_private_dirty
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	zmalloc_get_private_dirty, .Lfunc_end13-zmalloc_get_private_dirty
                                        # -- End function
	.globl	zmalloc_get_memory_size # -- Begin function zmalloc_get_memory_size
	.p2align	4, 0x90
	.type	zmalloc_get_memory_size,@function
zmalloc_get_memory_size:                # @zmalloc_get_memory_size
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	zmalloc_get_memory_size, .Lfunc_end14-zmalloc_get_memory_size
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function zmalloc_default_oom
	.type	zmalloc_default_oom,@function
zmalloc_default_oom:                    # @zmalloc_default_oom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.1, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	callq	fflush
	callq	abort
.Lfunc_end15:
	.size	zmalloc_default_oom, .Lfunc_end15-zmalloc_default_oom
                                        # -- End function
	.type	used_memory_mutex,@object # @used_memory_mutex
	.data
	.globl	used_memory_mutex
	.p2align	3
used_memory_mutex:
	.quad	-1
	.size	used_memory_mutex, 8

	.type	zmalloc_oom_handler,@object # @zmalloc_oom_handler
	.p2align	3
zmalloc_oom_handler:
	.quad	zmalloc_default_oom
	.size	zmalloc_oom_handler, 8

	.type	used_memory,@object     # @used_memory
	.local	used_memory
	.comm	used_memory,8,8
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"zmalloc: Out of memory trying to allocate %zu bytes\n"
	.size	.L.str.1, 53

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
