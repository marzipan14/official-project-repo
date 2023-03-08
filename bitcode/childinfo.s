	.text
	.file	"childinfo.c"
	.globl	openChildInfoPipe       # -- Begin function openChildInfoPipe
	.p2align	4, 0x90
	.type	openChildInfoPipe,@function
openChildInfoPipe:                      # @openChildInfoPipe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$server+2192, %edi
	callq	pipe
	movl	server+2192(%rip), %esi
	cmpl	$-1, %eax
	je	.LBB0_4
# %bb.1:
	xorl	%edi, %edi
	callq	anetNonBlock
	testl	%eax, %eax
	je	.LBB0_8
# %bb.2:
	movl	server+2192(%rip), %edi
	movl	server+2196(%rip), %eax
	andl	%edi, %eax
	cmpl	$-1, %eax
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_4:
	movl	server+2196(%rip), %eax
	andl	%esi, %eax
	cmpl	$-1, %eax
	je	.LBB0_7
# %bb.5:
	movl	%esi, %edi
.LBB0_6:
	callq	close
	movl	server+2196(%rip), %edi
	callq	close
	movq	$-1, server+2192(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_9
.LBB0_8:
	movl	$server+2200, %edi
	movl	$24, %edx
	xorl	%esi, %esi
	callq	memset
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	openChildInfoPipe, .Lfunc_end0-openChildInfoPipe
                                        # -- End function
	.globl	closeChildInfoPipe      # -- Begin function closeChildInfoPipe
	.p2align	4, 0x90
	.type	closeChildInfoPipe,@function
closeChildInfoPipe:                     # @closeChildInfoPipe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	server+2192(%rip), %edi
	movl	server+2196(%rip), %eax
	andl	%edi, %eax
	cmpl	$-1, %eax
	je	.LBB1_2
# %bb.1:
	callq	close
	movl	server+2196(%rip), %edi
	callq	close
	movq	$-1, server+2192(%rip)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	closeChildInfoPipe, .Lfunc_end1-closeChildInfoPipe
                                        # -- End function
	.globl	sendChildInfo           # -- Begin function sendChildInfo
	.p2align	4, 0x90
	.type	sendChildInfo,@function
sendChildInfo:                          # @sendChildInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movl	server+2196(%rip), %edi
	cmpl	$-1, %edi
	je	.LBB2_2
# %bb.1:
	movabsq	$-4504203834474342792, %rcx # imm = 0xC17DDA7A12345678
	movq	%rcx, server+2216(%rip)
	movl	%eax, server+2200(%rip)
	movl	$server+2200, %esi
	movl	$24, %edx
	callq	write
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sendChildInfo, .Lfunc_end2-sendChildInfo
                                        # -- End function
	.globl	receiveChildInfo        # -- Begin function receiveChildInfo
	.p2align	4, 0x90
	.type	receiveChildInfo,@function
receiveChildInfo:                       # @receiveChildInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	server+2192(%rip), %edi
	cmpl	$-1, %edi
	je	.LBB3_7
# %bb.1:
	movl	$server+2200, %esi
	movl	$24, %edx
	callq	read
	cmpq	$24, %rax
	jne	.LBB3_7
# %bb.2:
	movabsq	$-4504203834474342792, %rax # imm = 0xC17DDA7A12345678
	cmpq	%rax, server+2216(%rip)
	jne	.LBB3_7
# %bb.3:
	movl	server+2200(%rip), %eax
	cmpl	$1, %eax
	je	.LBB3_6
# %bb.4:
	testl	%eax, %eax
	jne	.LBB3_7
# %bb.5:
	movq	server+2208(%rip), %rax
	movq	%rax, server+1256(%rip)
	jmp	.LBB3_7
.LBB3_6:
	movq	server+2208(%rip), %rax
	movq	%rax, server+1264(%rip)
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	receiveChildInfo, .Lfunc_end3-receiveChildInfo
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
