	.text
	.file	"inet.c"
	.globl	inet_ntop               # -- Begin function inet_ntop
	.p2align	4, 0x90
	.type	inet_ntop,@function
inet_ntop:                              # @inet_ntop
# %bb.0:
	jmp	lwip_inet_ntop          # TAILCALL
.Lfunc_end0:
	.size	inet_ntop, .Lfunc_end0-inet_ntop
                                        # -- End function
	.globl	inet_pton               # -- Begin function inet_pton
	.p2align	4, 0x90
	.type	inet_pton,@function
inet_pton:                              # @inet_pton
# %bb.0:
	jmp	lwip_inet_pton          # TAILCALL
.Lfunc_end1:
	.size	inet_pton, .Lfunc_end1-inet_pton
                                        # -- End function
	.globl	getaddrinfo             # -- Begin function getaddrinfo
	.p2align	4, 0x90
	.type	getaddrinfo,@function
getaddrinfo:                            # @getaddrinfo
# %bb.0:
	jmp	lwip_getaddrinfo        # TAILCALL
.Lfunc_end2:
	.size	getaddrinfo, .Lfunc_end2-getaddrinfo
                                        # -- End function
	.globl	freeaddrinfo            # -- Begin function freeaddrinfo
	.p2align	4, 0x90
	.type	freeaddrinfo,@function
freeaddrinfo:                           # @freeaddrinfo
# %bb.0:
	jmp	lwip_freeaddrinfo       # TAILCALL
.Lfunc_end3:
	.size	freeaddrinfo, .Lfunc_end3-freeaddrinfo
                                        # -- End function
	.globl	gai_strerror            # -- Begin function gai_strerror
	.p2align	4, 0x90
	.type	gai_strerror,@function
gai_strerror:                           # @gai_strerror
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	-200(%rdi), %ecx
	cmpl	$4, %ecx
	ja	.LBB4_1
# %bb.3:
	movl	$.L.str, %eax
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_4:
	movl	$.L.str.1, %eax
	retq
.LBB4_1:
	cmpl	$-12, %edi
	jne	.LBB4_8
# %bb.2:
	movl	$.L.str.5, %eax
	retq
.LBB4_5:
	movl	$.L.str.2, %eax
	retq
.LBB4_6:
	movl	$.L.str.3, %eax
	retq
.LBB4_7:
	movl	$.L.str.4, %eax
	retq
.LBB4_8:
	movl	$.L.str.6, %eax
.LBB4_9:
	retq
.Lfunc_end4:
	.size	gai_strerror, .Lfunc_end4-gai_strerror
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_9
	.quad	.LBB4_4
	.quad	.LBB4_5
	.quad	.LBB4_6
	.quad	.LBB4_7
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The node or service is not known; or both node and service are NULL."
	.size	.L.str, 69

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The requested service is not available for the requested socket type."
	.size	.L.str.1, 70

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The name server returned a permanent failure indication."
	.size	.L.str.2, 57

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Out of memory."
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The requested address family is not supported."
	.size	.L.str.4, 47

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The buffer pointed to by host or serv was too small."
	.size	.L.str.5, 53

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Error on getaddrinfo."
	.size	.L.str.6, 22

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
