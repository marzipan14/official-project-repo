	.text
	.file	"proto.c"
	.globl	endprotoent             # -- Begin function endprotoent
	.p2align	4, 0x90
	.type	endprotoent,@function
endprotoent:                            # @endprotoent
# %bb.0:
	movq	$0, idx(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	$0, idx(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movq	getprotoent.p(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	idx(%rip), %rax
	cmpq	$239, %rax
	jb	.LBB3_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB3_5
.LBB3_4:
	movl	$getprotoent.p, %eax
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movq	$0, idx(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, getprotoent.p+16(%rip)
	je	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	cmpq	$239, %rax
	jb	.LBB4_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB4_5
.LBB4_4:
	movl	$getprotoent.p, %eax
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
