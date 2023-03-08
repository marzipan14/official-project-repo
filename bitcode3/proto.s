	.text
	.file	"proto.c"
	.globl	endprotoent             # -- Begin function endprotoent
	.p2align	4, 0x90
	.type	endprotoent,@function
endprotoent:                            # @endprotoent
# %bb.0:
	movq	$0, idx(%rip)
	retq
.Lfunc_end0:
	.size	endprotoent, .Lfunc_end0-endprotoent
                                        # -- End function
	.globl	setprotoent             # -- Begin function setprotoent
	.p2align	4, 0x90
	.type	setprotoent,@function
setprotoent:                            # @setprotoent
# %bb.0:
	movq	$0, idx(%rip)
	retq
.Lfunc_end1:
	.size	setprotoent, .Lfunc_end1-setprotoent
                                        # -- End function
	.globl	getprotoent             # -- Begin function getprotoent
	.p2align	4, 0x90
	.type	getprotoent,@function
getprotoent:                            # @getprotoent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	idx(%rip), %rax
	cmpq	$238, %rax
	jbe	.LBB2_2
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB2_3
.LBB2_2:
	movzbl	protos(%rax), %ecx
	movl	%ecx, getprotoent.p+16(%rip)
	movl	$getprotoent.p, %ebx
	leaq	protos+1(%rax), %rdi
	movq	%rdi, getprotoent.p(%rip)
	movq	$getprotoent.aliases, getprotoent.p+8(%rip)
	callq	strlen
	movq	idx(%rip), %rcx
	addq	%rcx, %rax
	addq	$2, %rax
	movq	%rax, idx(%rip)
.LBB2_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	getprotoent, .Lfunc_end2-getprotoent
                                        # -- End function
	.globl	getprotobyname          # -- Begin function getprotobyname
	.p2align	4, 0x90
	.type	getprotobyname,@function
getprotobyname:                         # @getprotobyname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	$0, idx(%rip)
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	protos(%rax), %ecx
	movl	%ecx, getprotoent.p+16(%rip)
	leaq	protos+1(%rax), %rdi
	movq	%rdi, getprotoent.p(%rip)
	movq	$getprotoent.aliases, getprotoent.p+8(%rip)
	callq	strlen
	movq	idx(%rip), %rcx
	addq	%rcx, %rax
	addq	$2, %rax
	movq	%rax, idx(%rip)
	movq	getprotoent.p(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_3
# %bb.1:                                #   in Loop: Header=BB3_2 Depth=1
	movq	idx(%rip), %rax
	cmpq	$238, %rax
	jbe	.LBB3_2
	jmp	.LBB3_4
.LBB3_3:
	movl	$getprotoent.p, %r14d
.LBB3_4:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	getprotobyname, .Lfunc_end3-getprotobyname
                                        # -- End function
	.globl	getprotobynumber        # -- Begin function getprotobynumber
	.p2align	4, 0x90
	.type	getprotobynumber,@function
getprotobynumber:                       # @getprotobynumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %ebx
	movq	$0, idx(%rip)
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	protos(%rax), %ecx
	movl	%ecx, getprotoent.p+16(%rip)
	leaq	protos+1(%rax), %rdi
	movq	%rdi, getprotoent.p(%rip)
	movq	$getprotoent.aliases, getprotoent.p+8(%rip)
	callq	strlen
	movq	idx(%rip), %rcx
	addq	%rcx, %rax
	addq	$2, %rax
	movq	%rax, idx(%rip)
	cmpl	%ebx, getprotoent.p+16(%rip)
	je	.LBB4_3
# %bb.1:                                #   in Loop: Header=BB4_2 Depth=1
	cmpq	$238, %rax
	jbe	.LBB4_2
	jmp	.LBB4_4
.LBB4_3:
	movl	$getprotoent.p, %r14d
.LBB4_4:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	getprotobynumber, .Lfunc_end4-getprotobynumber
                                        # -- End function
	.type	idx,@object             # @idx
	.local	idx
	.comm	idx,8,8
	.type	getprotoent.p,@object   # @getprotoent.p
	.local	getprotoent.p
	.comm	getprotoent.p,24,8
	.type	getprotoent.aliases,@object # @getprotoent.aliases
	.local	getprotoent.aliases
	.comm	getprotoent.aliases,8,8
	.type	protos,@object          # @protos
	.section	.rodata,"a",@progbits
	.p2align	4
protos:
	.asciz	"\000ip\000\001icmp\000\002igmp\000\003ggp\000\004ipencap\000\005st\000\006tcp\000\begp\000\fpup\000\021udp\000\024hmp\000\026xns-idp\000\033rdp\000\035iso-tp4\000$xtp\000%ddp\000&idpr-cmtp\000)ipv6\000+ipv6-route\000,ipv6-frag\000-idrp\000.rsvp\000/gre\0002esp\0003ah\0009skip\000:ipv6-icmp\000;ipv6-nonxt\000<ipv6-opts\000Irspf\000Qvmtp\000Yospf\000^ipip\000bencap\000gpim\000\377raw"
	.size	protos, 239

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
