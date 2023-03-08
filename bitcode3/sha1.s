	.text
	.file	"sha1.c"
	.globl	SHA1Transform           # -- Begin function SHA1Transform
	.p2align	4, 0x90
	.type	SHA1Transform,@function
SHA1Transform:                          # @SHA1Transform
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdi, %rbx
	leaq	-176(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy
	movq	%rbx, -200(%rbp)        # 8-byte Spill
	movl	(%rbx), %eax
	movdqu	4(%rbx), %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %r10d
	movl	%r10d, %esi
	xorl	%edx, %esi
	movd	%xmm0, %ecx
	andl	%ecx, %esi
	xorl	%r10d, %esi
	movl	-176(%rbp), %r9d
	movl	-172(%rbp), %r8d
	bswapl	%r9d
	movl	%eax, %edi
	roll	$5, %edi
	movl	%r9d, -176(%rbp)
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %ebx
	addl	%edi, %ebx
	addl	%r9d, %ebx
	leal	(%rsi,%rbx), %r14d
	addl	$1518500249, %r14d      # imm = 0x5A827999
	roll	$30, %ecx
	movl	%ecx, %edi
	xorl	%edx, %edi
	andl	%eax, %edi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	xorl	%edx, %edi
	bswapl	%r8d
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	%r8d, -172(%rbp)
	movl	%r14d, %esi
	roll	$5, %esi
	addl	%r10d, %edi
	addl	%r8d, %edi
	leal	(%rsi,%rdi), %r10d
	addl	$1518500249, %r10d      # imm = 0x5A827999
	movl	%eax, %ebx
	roll	$30, %ebx
	movl	%ecx, %esi
	xorl	%ebx, %esi
	andl	%r14d, %esi
	xorl	%ecx, %esi
	movl	-168(%rbp), %eax
	bswapl	%eax
	movl	%eax, -168(%rbp)
	movl	%r10d, %edi
	roll	$5, %edi
	addl	%eax, %edx
	movl	%eax, %r12d
	addl	%esi, %edx
	roll	$30, %r14d
	addl	%edx, %edi
	addl	$1518500249, %edi       # imm = 0x5A827999
	movl	%r14d, %edx
	xorl	%ebx, %edx
	andl	%r10d, %edx
	xorl	%ebx, %edx
	movl	-164(%rbp), %eax
	bswapl	%eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edi, %esi
	roll	$5, %esi
	movl	%eax, -164(%rbp)
	addl	%eax, %ecx
	addl	%edx, %ecx
	leal	(%rsi,%rcx), %r8d
	addl	$1518500249, %r8d       # imm = 0x5A827999
	roll	$30, %r10d
	movl	%r10d, %edx
	xorl	%r14d, %edx
	andl	%edi, %edx
	xorl	%r14d, %edx
	movl	-160(%rbp), %eax
	bswapl	%eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%eax, -160(%rbp)
	addl	%eax, %ebx
	addl	%edx, %ebx
	movl	%r8d, %edx
	roll	$5, %edx
	addl	%ebx, %edx
	addl	$1518500249, %edx       # imm = 0x5A827999
	roll	$30, %edi
	movl	%edi, %esi
	xorl	%r10d, %esi
	andl	%r8d, %esi
	xorl	%r10d, %esi
	movl	-156(%rbp), %eax
	bswapl	%eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addl	%eax, %r14d
	addl	%esi, %r14d
	movl	%edx, %esi
	roll	$5, %esi
	leal	(%rsi,%r14), %ebx
	addl	$1518500249, %ebx       # imm = 0x5A827999
	movl	%eax, -156(%rbp)
	roll	$30, %r8d
	movl	%r8d, %eax
	xorl	%edi, %eax
	andl	%edx, %eax
	xorl	%edi, %eax
	movl	-152(%rbp), %ecx
	bswapl	%ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%ebx, %esi
	roll	$5, %esi
	addl	%ecx, %r10d
	addl	%eax, %r10d
	leal	(%rsi,%r10), %r14d
	addl	$1518500249, %r14d      # imm = 0x5A827999
	roll	$30, %edx
	movl	%ecx, -152(%rbp)
	movl	%edx, %esi
	xorl	%r8d, %esi
	andl	%ebx, %esi
	xorl	%r8d, %esi
	movl	-148(%rbp), %eax
	bswapl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	addl	%eax, %edi
	addl	%esi, %edi
	movl	%r14d, %esi
	roll	$5, %esi
	addl	%esi, %edi
	addl	$1518500249, %edi       # imm = 0x5A827999
	movl	%eax, -148(%rbp)
	roll	$30, %ebx
	movl	%ebx, %esi
	xorl	%edx, %esi
	andl	%r14d, %esi
	xorl	%edx, %esi
	movl	-144(%rbp), %r15d
	bswapl	%r15d
	addl	%r15d, %r8d
	addl	%esi, %r8d
	movl	%edi, %esi
	roll	$5, %esi
	leal	(%rsi,%r8), %ecx
	addl	$1518500249, %ecx       # imm = 0x5A827999
	movl	%r15d, -144(%rbp)
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	roll	$30, %r14d
	movl	%r14d, %esi
	xorl	%ebx, %esi
	andl	%edi, %esi
	xorl	%ebx, %esi
	movl	-140(%rbp), %eax
	bswapl	%eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	addl	%eax, %edx
	addl	%esi, %edx
	movl	%ecx, %esi
	roll	$5, %esi
	leal	(%rsi,%rdx), %r11d
	addl	$1518500249, %r11d      # imm = 0x5A827999
	movl	%eax, -140(%rbp)
	roll	$30, %edi
	movl	%edi, %esi
	xorl	%r14d, %esi
	andl	%ecx, %esi
	xorl	%r14d, %esi
	movl	-136(%rbp), %eax
	bswapl	%eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	roll	$5, %edx
	addl	%eax, %ebx
	addl	%esi, %ebx
	leal	(%rdx,%rbx), %r10d
	addl	$1518500249, %r10d      # imm = 0x5A827999
	roll	$30, %ecx
	movl	%eax, -136(%rbp)
	movl	%ecx, %edx
	xorl	%edi, %edx
	andl	%r11d, %edx
	xorl	%edi, %edx
	movl	-132(%rbp), %esi
	bswapl	%esi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	addl	%esi, %r14d
	addl	%edx, %r14d
	movl	%r10d, %edx
	roll	$5, %edx
	leal	(%rdx,%r14), %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	movl	%esi, -132(%rbp)
	roll	$30, %r11d
	movl	%r11d, %edx
	xorl	%ecx, %edx
	andl	%r10d, %edx
	xorl	%ecx, %edx
	movl	-128(%rbp), %esi
	bswapl	%esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	addl	%esi, %edi
	addl	%edx, %edi
	movl	%eax, %edx
	roll	$5, %edx
	leal	(%rdx,%rdi), %r14d
	addl	$1518500249, %r14d      # imm = 0x5A827999
	movl	%esi, -128(%rbp)
	roll	$30, %r10d
	movl	%r10d, %edx
	xorl	%r11d, %edx
	andl	%eax, %edx
	xorl	%r11d, %edx
	movl	-124(%rbp), %r8d
	bswapl	%r8d
	addl	%r8d, %ecx
	addl	%edx, %ecx
	movl	%r14d, %edx
	roll	$5, %edx
	addl	%edx, %ecx
	addl	$1518500249, %ecx       # imm = 0x5A827999
	movl	%r8d, -124(%rbp)
	movq	%r8, -104(%rbp)         # 8-byte Spill
	roll	$30, %eax
	movl	%eax, %edx
	xorl	%r10d, %edx
	andl	%r14d, %edx
	xorl	%r10d, %edx
	movl	-120(%rbp), %r13d
	bswapl	%r13d
	movl	%ecx, %esi
	roll	$5, %esi
	addl	%r13d, %r11d
	addl	%edx, %r11d
	addl	%r11d, %esi
	addl	$1518500249, %esi       # imm = 0x5A827999
	roll	$30, %r14d
	movl	%r13d, -120(%rbp)
	movl	%r14d, %edx
	xorl	%eax, %edx
	andl	%ecx, %edx
	xorl	%eax, %edx
	movl	-116(%rbp), %edi
	bswapl	%edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	addl	%edi, %r10d
	addl	%edx, %r10d
	movl	%esi, %edx
	roll	$5, %edx
	addl	%r10d, %edx
	addl	$1518500249, %edx       # imm = 0x5A827999
	movl	%r12d, %ebx
	xorl	%r12d, %r9d
                                        # kill: def $r15d killed $r15d def $r15
	xorl	%r8d, %r15d
	xorl	%r9d, %r15d
	roll	$30, %ecx
	movl	%ecx, %edi
	xorl	%r14d, %edi
	andl	%esi, %edi
	roll	%r15d
	xorl	%r14d, %edi
	movl	%edx, %r9d
	roll	$5, %r9d
	addl	%r15d, %eax
	addl	%edi, %eax
	addl	%eax, %r9d
	addl	$1518500249, %r9d       # imm = 0x5A827999
	movl	-72(%rbp), %r11d        # 4-byte Reload
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%r11d, %eax
	movl	-48(%rbp), %edi         # 4-byte Reload
	movl	%edi, %r12d
	xorl	%r13d, %r12d
	movl	%r13d, -88(%rbp)        # 4-byte Spill
	xorl	%eax, %r12d
	roll	$30, %esi
	movl	%esi, %edi
	xorl	%ecx, %edi
	andl	%edx, %edi
	xorl	%ecx, %edi
	roll	%r12d
	addl	%r12d, %r14d
	addl	%edi, %r14d
	movl	%r9d, %edi
	roll	$5, %edi
	addl	%r14d, %edi
	addl	$1518500249, %edi       # imm = 0x5A827999
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%ebx, %r8d
	xorl	%r10d, %r8d
	movl	-80(%rbp), %ebx         # 4-byte Reload
	xorl	-76(%rbp), %ebx         # 4-byte Folded Reload
	xorl	%r8d, %ebx
	roll	$30, %edx
	movl	%edx, %eax
	xorl	%esi, %eax
	andl	%r9d, %eax
	xorl	%esi, %eax
	roll	%ebx
	addl	%ebx, %ecx
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	addl	%eax, %ecx
	movl	%edi, %eax
	roll	$5, %eax
	addl	%eax, %ecx
	addl	$1518500249, %ecx       # imm = 0x5A827999
	roll	$30, %r9d
	movl	%r9d, %r8d
	xorl	%edx, %r8d
	andl	%edi, %r8d
	xorl	%edx, %r8d
	movl	%r11d, %eax
	movl	-64(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %eax
	xorl	-84(%rbp), %eax         # 4-byte Folded Reload
	xorl	%r15d, %eax
	roll	%eax
	addl	%eax, %esi
	movl	%eax, %r14d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	addl	%r8d, %esi
	movl	%ecx, %eax
	roll	$5, %eax
	roll	$30, %edi
	addl	%eax, %esi
	addl	$1518500249, %esi       # imm = 0x5A827999
	movl	%edi, %r8d
	xorl	%r9d, %r8d
	xorl	%ecx, %r8d
	movl	%r10d, %eax
	movl	-56(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %eax
	xorl	-92(%rbp), %eax         # 4-byte Folded Reload
	xorl	%r12d, %eax
	roll	%eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addl	%eax, %edx
	addl	%r8d, %edx
	movl	%esi, %eax
	roll	$5, %eax
	leal	(%rax,%rdx), %r8d
	addl	$1859775393, %r8d       # imm = 0x6ED9EBA1
	roll	$30, %ecx
	movl	%ecx, %eax
	xorl	%edi, %eax
	xorl	%esi, %eax
	movl	%r11d, %edx
	movl	-68(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %edx
	xorl	-104(%rbp), %edx        # 4-byte Folded Reload
	xorl	%ebx, %edx
	roll	%edx
	addl	%edx, %r9d
	movl	%edx, %ebx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	addl	%eax, %r9d
	movl	%r8d, %eax
	roll	$5, %eax
	roll	$30, %esi
	addl	%r9d, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	%esi, %r9d
	xorl	%ecx, %r9d
	xorl	%r8d, %r9d
	movl	%r10d, %edx
	movl	-44(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %edx
	xorl	%r13d, %edx
	xorl	%r14d, %edx
	roll	%edx
	addl	%edx, %edi
	movl	%edx, %r13d
	movl	%edx, -56(%rbp)         # 4-byte Spill
	addl	%r9d, %edi
	movl	%eax, %edx
	roll	$5, %edx
	leal	(%rdx,%rdi), %r9d
	addl	$1859775393, %r9d       # imm = 0x6ED9EBA1
	roll	$30, %r8d
	movl	%r8d, %edx
	xorl	%esi, %edx
	xorl	%eax, %edx
	movl	%r11d, %edi
	movl	-48(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %edi
	xorl	-76(%rbp), %edi         # 4-byte Folded Reload
	xorl	-52(%rbp), %edi         # 4-byte Folded Reload
	roll	%edi
	movl	%edi, -68(%rbp)         # 4-byte Spill
	addl	%edi, %ecx
	addl	%edx, %ecx
	movl	%r9d, %edx
	roll	$5, %edx
	roll	$30, %eax
	addl	%ecx, %edx
	addl	$1859775393, %edx       # imm = 0x6ED9EBA1
	movl	%eax, %ecx
	xorl	%r8d, %ecx
	xorl	%r9d, %ecx
	movl	-80(%rbp), %r14d        # 4-byte Reload
	xorl	%r14d, %r10d
	xorl	%r15d, %r10d
	xorl	%ebx, %r10d
	roll	%r10d
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	addl	%r10d, %esi
	addl	%ecx, %esi
	movl	%edx, %ecx
	roll	$5, %ecx
	addl	%esi, %ecx
	addl	$1859775393, %ecx       # imm = 0x6ED9EBA1
	roll	$30, %r9d
	movl	%r9d, %esi
	xorl	%eax, %esi
	xorl	%edx, %esi
	movl	-84(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r11d
	xorl	%r12d, %r11d
	xorl	%r13d, %r11d
	roll	%r11d
	movl	%r11d, -48(%rbp)        # 4-byte Spill
	addl	%r11d, %r8d
	addl	%esi, %r8d
	movl	%ecx, %esi
	roll	$5, %esi
	roll	$30, %edx
	addl	%r8d, %esi
	addl	$1859775393, %esi       # imm = 0x6ED9EBA1
	movl	%edx, %edi
	xorl	%r9d, %edi
	xorl	%ecx, %edi
	movl	-92(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %r14d
	xorl	-60(%rbp), %r14d        # 4-byte Folded Reload
	xorl	-68(%rbp), %r14d        # 4-byte Folded Reload
	roll	%r14d
	addl	%r14d, %eax
	movl	%r14d, -80(%rbp)        # 4-byte Spill
	addl	%edi, %eax
	movl	%esi, %edi
	roll	$5, %edi
	leal	(%rdi,%rax), %r8d
	addl	$1859775393, %r8d       # imm = 0x6ED9EBA1
	roll	$30, %ecx
	movl	%ecx, %eax
	xorl	%edx, %eax
	xorl	%esi, %eax
	movl	%ebx, %edi
	movq	-104(%rbp), %r11        # 8-byte Reload
	xorl	%r11d, %edi
	xorl	-72(%rbp), %edi         # 4-byte Folded Reload
	xorl	-44(%rbp), %edi         # 4-byte Folded Reload
	roll	%edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	addl	%edi, %r9d
	addl	%eax, %r9d
	movl	%r8d, %eax
	roll	$5, %eax
	roll	$30, %esi
	leal	(%rax,%r9), %edi
	addl	$1859775393, %edi       # imm = 0x6ED9EBA1
	movl	%esi, %r9d
	xorl	%ecx, %r9d
	xorl	%r8d, %r9d
	movl	-88(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r13d
	xorl	-52(%rbp), %r13d        # 4-byte Folded Reload
	xorl	-48(%rbp), %r13d        # 4-byte Folded Reload
	roll	%r13d
	addl	%r13d, %edx
	movl	%r13d, -92(%rbp)        # 4-byte Spill
	addl	%r9d, %edx
	movl	%edi, %eax
	roll	$5, %eax
	addl	%eax, %edx
	addl	$1859775393, %edx       # imm = 0x6ED9EBA1
	roll	$30, %r8d
	movl	%r8d, %eax
	xorl	%esi, %eax
	xorl	%edi, %eax
	movl	-76(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %r11d
	xorl	-64(%rbp), %r11d        # 4-byte Folded Reload
	xorl	%r14d, %r11d
	roll	%r11d
	addl	%r11d, %ecx
	movq	%r11, %r14
	movq	%r11, -104(%rbp)        # 8-byte Spill
	addl	%eax, %ecx
	movl	%edx, %eax
	roll	$5, %eax
	roll	$30, %edi
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	%edi, %r9d
	xorl	%r8d, %r9d
	xorl	%edx, %r9d
	xorl	%r15d, %ebx
	xorl	-56(%rbp), %ebx         # 4-byte Folded Reload
	xorl	-84(%rbp), %ebx         # 4-byte Folded Reload
	roll	%ebx
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	addl	%ebx, %esi
	addl	%r9d, %esi
	movl	%eax, %ecx
	roll	$5, %ecx
	addl	%esi, %ecx
	addl	$1859775393, %ecx       # imm = 0x6ED9EBA1
	movl	%r10d, -116(%rbp)
	roll	$30, %edx
	movl	%edx, %r9d
	xorl	%edi, %r9d
	xorl	%eax, %r9d
	xorl	%r12d, %r10d
	xorl	-68(%rbp), %r10d        # 4-byte Folded Reload
	xorl	%r13d, %r10d
	roll	%r10d
	addl	%r10d, %r8d
	movl	%r10d, %r11d
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	addl	%r9d, %r8d
	movl	%ecx, %esi
	roll	$5, %esi
	leal	(%rsi,%r8), %r9d
	addl	$1859775393, %r9d       # imm = 0x6ED9EBA1
	movl	%r15d, -176(%rbp)
	roll	$30, %eax
	movl	%eax, %esi
	xorl	%edx, %esi
	xorl	%ecx, %esi
	movl	-60(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %r15d
	xorl	-44(%rbp), %r15d        # 4-byte Folded Reload
	xorl	%r14d, %r15d
	roll	%r15d
	addl	%r15d, %edi
	addl	%esi, %edi
	movl	%r9d, %esi
	roll	$5, %esi
	addl	%edi, %esi
	addl	$1859775393, %esi       # imm = 0x6ED9EBA1
	movl	%r12d, -172(%rbp)
	roll	$30, %ecx
	movl	%ecx, %edi
	xorl	%eax, %edi
	movl	-72(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r12d
	xorl	-48(%rbp), %r12d        # 4-byte Folded Reload
	xorl	-88(%rbp), %r12d        # 4-byte Folded Reload
	roll	%r12d
	xorl	%r9d, %edi
	movl	%esi, %r8d
	roll	$5, %r8d
	addl	%r12d, %edx
	addl	%edi, %edx
	leal	(%r8,%rdx), %r10d
	addl	$1859775393, %r10d      # imm = 0x6ED9EBA1
	roll	$30, %r9d
	movl	%r13d, -168(%rbp)
	movl	%r9d, %edi
	xorl	%ecx, %edi
	xorl	%esi, %edi
	movl	-52(%rbp), %edx         # 4-byte Reload
	xorl	%edx, %r13d
	xorl	-80(%rbp), %r13d        # 4-byte Folded Reload
	xorl	%r11d, %r13d
	roll	%r13d
	addl	%r13d, %eax
	movl	%r13d, %r11d
	movl	%r13d, -60(%rbp)        # 4-byte Spill
	addl	%edi, %eax
	movl	%r10d, %edi
	roll	$5, %edi
	addl	%eax, %edi
	addl	$1859775393, %edi       # imm = 0x6ED9EBA1
	movl	%ebx, %eax
	movl	%ebx, -164(%rbp)
	roll	$30, %esi
	movl	%esi, %r8d
	xorl	%r9d, %r8d
	xorl	%r10d, %r8d
	movl	-64(%rbp), %r14d        # 4-byte Reload
	xorl	%r14d, %eax
	xorl	-84(%rbp), %eax         # 4-byte Folded Reload
	xorl	%r15d, %eax
	roll	%eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	addl	%eax, %ecx
	addl	%r8d, %ecx
	movl	%edi, %eax
	roll	$5, %eax
	leal	(%rax,%rcx), %r8d
	addl	$1859775393, %r8d       # imm = 0x6ED9EBA1
	movl	%edx, %ecx
	movl	%edx, -160(%rbp)
	roll	$30, %r10d
	movl	%r10d, %eax
	xorl	%esi, %eax
	xorl	%edi, %eax
	movl	-56(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %ecx
	xorl	-92(%rbp), %ecx         # 4-byte Folded Reload
	xorl	%r12d, %ecx
	roll	%ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	addl	%ecx, %r9d
	addl	%eax, %r9d
	movl	%r8d, %eax
	roll	$5, %eax
	addl	%eax, %r9d
	addl	$1859775393, %r9d       # imm = 0x6ED9EBA1
	movl	%r14d, -156(%rbp)
	roll	$30, %edi
	movl	%edi, %eax
	xorl	%r10d, %eax
	movl	-68(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r14d
	xorl	-104(%rbp), %r14d       # 4-byte Folded Reload
	xorl	%r11d, %r14d
	roll	%r14d
	xorl	%r8d, %eax
	movl	%r9d, %ecx
	roll	$5, %ecx
	addl	%r14d, %esi
	movl	%r14d, -64(%rbp)        # 4-byte Spill
	addl	%eax, %esi
	leal	(%rcx,%rsi), %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	roll	$30, %r8d
	movl	%r13d, %esi
	movl	%r13d, -152(%rbp)
	movl	%r8d, %ecx
	xorl	%edi, %ecx
	xorl	%r9d, %ecx
	movl	-44(%rbp), %edx         # 4-byte Reload
	xorl	%edx, %esi
	movl	%edx, %r11d
	xorl	-88(%rbp), %esi         # 4-byte Folded Reload
	xorl	-72(%rbp), %esi         # 4-byte Folded Reload
	roll	%esi
	addl	%esi, %r10d
	movl	%esi, %r13d
	movl	%esi, -56(%rbp)         # 4-byte Spill
	addl	%ecx, %r10d
	movl	%eax, %ecx
	roll	$5, %ecx
	addl	%r10d, %ecx
	addl	$1859775393, %ecx       # imm = 0x6ED9EBA1
	movl	%ebx, %esi
	movl	%ebx, -148(%rbp)
	roll	$30, %r9d
	movl	%r9d, %edx
	xorl	%r8d, %edx
	xorl	%eax, %edx
	movl	-48(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %esi
	xorl	-76(%rbp), %esi         # 4-byte Folded Reload
	xorl	-52(%rbp), %esi         # 4-byte Folded Reload
	roll	%esi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	addl	%esi, %edi
	addl	%edx, %edi
	movl	%ecx, %edx
	roll	$5, %edx
	leal	(%rdx,%rdi), %esi
	addl	$1859775393, %esi       # imm = 0x6ED9EBA1
	roll	$30, %eax
	movl	%ecx, %edx
	orl	%eax, %edx
	andl	%r9d, %edx
	movl	%ecx, %edi
	andl	%eax, %edi
	orl	%edx, %edi
	movl	%r11d, %edx
	movl	%r11d, -144(%rbp)
	movl	-80(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %edx
	xorl	%r15d, %edx
	xorl	%r14d, %edx
	roll	%edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	addl	%edx, %r8d
	addl	%edi, %r8d
	movl	%esi, %edx
	roll	$5, %edx
	addl	%edx, %r8d
	addl	$-1894007588, %r8d      # imm = 0x8F1BBCDC
	movl	%ebx, -140(%rbp)
	roll	$30, %ecx
	movl	%esi, %edx
	orl	%ecx, %edx
	andl	%eax, %edx
	movl	%esi, %edi
	andl	%ecx, %edi
	movl	-84(%rbp), %r14d        # 4-byte Reload
	xorl	%r14d, %ebx
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	roll	%ebx
	orl	%edx, %edi
	movl	%r8d, %edx
	roll	$5, %edx
	addl	%ebx, %r9d
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	addl	%edi, %r9d
	addl	%edx, %r9d
	addl	$-1894007588, %r9d      # imm = 0x8F1BBCDC
	roll	$30, %esi
	movl	%r8d, %edi
	orl	%esi, %edi
	andl	%ecx, %edi
	movl	%r8d, %edx
	andl	%esi, %edx
	orl	%edi, %edx
	movl	%r11d, -136(%rbp)
	movl	-92(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %r11d
	xorl	-60(%rbp), %r11d        # 4-byte Folded Reload
	xorl	-68(%rbp), %r11d        # 4-byte Folded Reload
	roll	%r11d
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	addl	%r11d, %eax
	addl	%edx, %eax
	movl	%r9d, %edx
	roll	$5, %edx
	roll	$30, %r8d
	addl	%edx, %eax
	addl	$-1894007588, %eax      # imm = 0x8F1BBCDC
	movl	%r9d, %edx
	orl	%r8d, %edx
	andl	%esi, %edx
	movl	%r9d, %edi
	andl	%r8d, %edi
	orl	%edx, %edi
	movq	-104(%rbp), %r11        # 8-byte Reload
	xorl	%r11d, %r14d
	xorl	-72(%rbp), %r14d        # 4-byte Folded Reload
	xorl	-44(%rbp), %r14d        # 4-byte Folded Reload
	roll	%r14d
	addl	%r14d, %ecx
	movl	%r14d, -84(%rbp)        # 4-byte Spill
	addl	%edi, %ecx
	movl	%eax, %edx
	roll	$5, %edx
	roll	$30, %r9d
	addl	%edx, %ecx
	addl	$-1894007588, %ecx      # imm = 0x8F1BBCDC
	movl	%eax, %edx
	orl	%r9d, %edx
	andl	%r8d, %edx
	movl	%eax, %edi
	andl	%r9d, %edi
	orl	%edx, %edi
	movl	-88(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %r13d
	xorl	-52(%rbp), %r13d        # 4-byte Folded Reload
	xorl	%ebx, %r13d
	roll	%r13d
	addl	%r13d, %esi
	movl	%r13d, -92(%rbp)        # 4-byte Spill
	addl	%edi, %esi
	movl	%ecx, %edx
	roll	$5, %edx
	roll	$30, %eax
	addl	%edx, %esi
	addl	$-1894007588, %esi      # imm = 0x8F1BBCDC
	movl	%ecx, %edx
	orl	%eax, %edx
	andl	%r9d, %edx
	movl	%ecx, %edi
	andl	%eax, %edi
	orl	%edx, %edi
	movl	-76(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r11d
	xorl	-64(%rbp), %r11d        # 4-byte Folded Reload
	xorl	-80(%rbp), %r11d        # 4-byte Folded Reload
	roll	%r11d
	addl	%r11d, %r8d
	movq	%r11, -104(%rbp)        # 8-byte Spill
	addl	%edi, %r8d
	movl	%esi, %edx
	roll	$5, %edx
	roll	$30, %ecx
	addl	%edx, %r8d
	addl	$-1894007588, %r8d      # imm = 0x8F1BBCDC
	movl	%esi, %edx
	orl	%ecx, %edx
	andl	%eax, %edx
	movl	%esi, %edi
	andl	%ecx, %edi
	orl	%edx, %edi
	xorl	%r15d, %r10d
	xorl	-56(%rbp), %r10d        # 4-byte Folded Reload
	xorl	%r14d, %r10d
	roll	%r10d
	addl	%r10d, %r9d
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	addl	%edi, %r9d
	movl	%r8d, %edx
	roll	$5, %edx
	roll	$30, %esi
	addl	%edx, %r9d
	addl	$-1894007588, %r9d      # imm = 0x8F1BBCDC
	movl	%r8d, %edi
	orl	%esi, %edi
	andl	%ecx, %edi
	movl	%r8d, %edx
	andl	%esi, %edx
	orl	%edi, %edx
	movl	%ebx, %edi
	xorl	%r12d, %edi
	xorl	-68(%rbp), %edi         # 4-byte Folded Reload
	xorl	%r13d, %edi
	roll	%edi
	addl	%edi, %eax
	movl	%edi, %r14d
	addl	%edx, %eax
	movl	%r9d, %edx
	roll	$5, %edx
	roll	$30, %r8d
	addl	%edx, %eax
	addl	$-1894007588, %eax      # imm = 0x8F1BBCDC
	movl	%r9d, %edx
	orl	%r8d, %edx
	andl	%esi, %edx
	movl	%r9d, %edi
	andl	%r8d, %edi
	orl	%edx, %edi
	movl	-60(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %r15d
	xorl	-44(%rbp), %r15d        # 4-byte Folded Reload
	xorl	%r11d, %r15d
	roll	%r15d
	addl	%r15d, %ecx
	addl	%edi, %ecx
	movl	%eax, %edx
	roll	$5, %edx
	roll	$30, %r9d
	addl	%edx, %ecx
	addl	$-1894007588, %ecx      # imm = 0x8F1BBCDC
	movl	%eax, %edx
	orl	%r9d, %edx
	andl	%r8d, %edx
	movl	%eax, %edi
	andl	%r9d, %edi
	orl	%edx, %edi
	movl	-72(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r12d
	xorl	-48(%rbp), %r12d        # 4-byte Folded Reload
	xorl	%r10d, %r12d
	roll	%r12d
	addl	%r12d, %esi
	addl	%edi, %esi
	movl	%ecx, %edx
	roll	$5, %edx
	roll	$30, %eax
	addl	%edx, %esi
	addl	$-1894007588, %esi      # imm = 0x8F1BBCDC
	movl	%ecx, %edx
	orl	%eax, %edx
	andl	%r9d, %edx
	movl	%ecx, %edi
	andl	%eax, %edi
	orl	%edx, %edi
	movl	-52(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %r13d
	xorl	-80(%rbp), %r13d        # 4-byte Folded Reload
	movl	%r14d, -76(%rbp)        # 4-byte Spill
	xorl	%r14d, %r13d
	roll	%r13d
	addl	%r13d, %r8d
	movl	%r13d, -60(%rbp)        # 4-byte Spill
	addl	%edi, %r8d
	movl	%esi, %edx
	roll	$5, %edx
	roll	$30, %ecx
	addl	%edx, %r8d
	addl	$-1894007588, %r8d      # imm = 0x8F1BBCDC
	movl	%esi, %edx
	orl	%ecx, %edx
	andl	%eax, %edx
	movl	%esi, %edi
	andl	%ecx, %edi
	orl	%edx, %edi
	movl	%ebx, %edx
	movl	-64(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %edx
	xorl	-84(%rbp), %edx         # 4-byte Folded Reload
	xorl	%r15d, %edx
	movq	%r15, -184(%rbp)        # 8-byte Spill
	roll	%edx
	addl	%edx, %r9d
	movl	%edx, %r11d
	movl	%edx, -72(%rbp)         # 4-byte Spill
	addl	%edi, %r9d
	movl	%r8d, %edx
	roll	$5, %edx
	roll	$30, %esi
	addl	%edx, %r9d
	addl	$-1894007588, %r9d      # imm = 0x8F1BBCDC
	movl	%r8d, %edi
	orl	%esi, %edi
	andl	%ecx, %edi
	movl	%r8d, %edx
	andl	%esi, %edx
	orl	%edi, %edx
	movl	%r10d, %r14d
	movl	-56(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %r14d
	xorl	-92(%rbp), %r14d        # 4-byte Folded Reload
	xorl	%r12d, %r14d
	roll	%r14d
	addl	%r14d, %eax
	movl	%r14d, -52(%rbp)        # 4-byte Spill
	addl	%edx, %eax
	movl	%r9d, %edx
	roll	$5, %edx
	roll	$30, %r8d
	addl	%edx, %eax
	addl	$-1894007588, %eax      # imm = 0x8F1BBCDC
	movl	%r9d, %edx
	orl	%r8d, %edx
	andl	%esi, %edx
	movl	%r9d, %edi
	andl	%r8d, %edi
	orl	%edx, %edi
	xorl	-68(%rbp), %ebx         # 4-byte Folded Reload
	xorl	-104(%rbp), %ebx        # 4-byte Folded Reload
	xorl	%r13d, %ebx
	roll	%ebx
	addl	%ebx, %ecx
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	addl	%edi, %ecx
	movl	%eax, %edx
	roll	$5, %edx
	roll	$30, %r9d
	addl	%edx, %ecx
	addl	$-1894007588, %ecx      # imm = 0x8F1BBCDC
	movl	%eax, %edx
	orl	%r9d, %edx
	andl	%r8d, %edx
	movl	%eax, %edi
	andl	%r9d, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	movl	-44(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %edx
	xorl	-88(%rbp), %edx         # 4-byte Folded Reload
	xorl	%r11d, %edx
	roll	%edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	addl	%edx, %esi
	addl	%edi, %esi
	movl	%ecx, %edx
	roll	$5, %edx
	roll	$30, %eax
	addl	%edx, %esi
	addl	$-1894007588, %esi      # imm = 0x8F1BBCDC
	movl	%ecx, %edx
	orl	%eax, %edx
	andl	%r9d, %edx
	movl	%ecx, %edi
	andl	%eax, %edi
	orl	%edx, %edi
	movl	-68(%rbp), %r13d        # 4-byte Reload
	movl	-48(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %r13d
	xorl	-76(%rbp), %r13d        # 4-byte Folded Reload
	xorl	%r14d, %r13d
	roll	%r13d
	addl	%r13d, %r8d
	movl	%r13d, -68(%rbp)        # 4-byte Spill
	addl	%edi, %r8d
	movl	%esi, %edx
	roll	$5, %edx
	roll	$30, %ecx
	addl	%edx, %r8d
	addl	$-1894007588, %r8d      # imm = 0x8F1BBCDC
	movl	%esi, %edx
	orl	%ecx, %edx
	andl	%eax, %edx
	movl	%esi, %edi
	andl	%ecx, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	movl	-80(%rbp), %r14d        # 4-byte Reload
	xorl	%r14d, %edx
	xorl	%r15d, %edx
	xorl	%ebx, %edx
	roll	%edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	addl	%edx, %r9d
	addl	%edi, %r9d
	movl	%r8d, %edx
	roll	$5, %edx
	roll	$30, %esi
	addl	%r9d, %edx
	addl	$-1894007588, %edx      # imm = 0x8F1BBCDC
	movl	%r8d, %edi
	orl	%esi, %edi
	andl	%ecx, %edi
	movl	%r8d, %r9d
	andl	%esi, %r9d
	orl	%edi, %r9d
	movl	-84(%rbp), %r10d        # 4-byte Reload
	xorl	%r10d, %r11d
	xorl	%r12d, %r11d
	xorl	-56(%rbp), %r11d        # 4-byte Folded Reload
	roll	%r11d
	movl	%r11d, -48(%rbp)        # 4-byte Spill
	addl	%r11d, %eax
	addl	%r9d, %eax
	movl	%edx, %edi
	roll	$5, %edi
	roll	$30, %r8d
	addl	%edi, %eax
	addl	$-1894007588, %eax      # imm = 0x8F1BBCDC
	movl	%edx, %edi
	orl	%r8d, %edi
	andl	%esi, %edi
	movl	%edx, %r9d
	andl	%r8d, %r9d
	orl	%edi, %r9d
	movl	%r14d, %r15d
	movl	-92(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r15d
	xorl	-60(%rbp), %r15d        # 4-byte Folded Reload
	xorl	%r13d, %r15d
	roll	%r15d
	addl	%r15d, %ecx
	movl	%r15d, -80(%rbp)        # 4-byte Spill
	addl	%r9d, %ecx
	movl	%eax, %edi
	roll	$5, %edi
	roll	$30, %edx
	addl	%edi, %ecx
	addl	$-1894007588, %ecx      # imm = 0x8F1BBCDC
	movl	%eax, %edi
	orl	%edx, %edi
	andl	%r8d, %edi
	movl	%eax, %r9d
	andl	%edx, %r9d
	orl	%edi, %r9d
	movl	%r10d, %r13d
	movq	-104(%rbp), %r11        # 8-byte Reload
	xorl	%r11d, %r13d
	xorl	-72(%rbp), %r13d        # 4-byte Folded Reload
	xorl	-44(%rbp), %r13d        # 4-byte Folded Reload
	roll	%r13d
	addl	%r13d, %esi
	movl	%r13d, -84(%rbp)        # 4-byte Spill
	addl	%r9d, %esi
	movl	%ecx, %edi
	roll	$5, %edi
	roll	$30, %eax
	addl	%edi, %esi
	addl	$-1894007588, %esi      # imm = 0x8F1BBCDC
	movl	%eax, %r9d
	xorl	%edx, %r9d
	xorl	%ecx, %r9d
	movl	%ebx, %r14d
	movl	-88(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r14d
	xorl	-52(%rbp), %r14d        # 4-byte Folded Reload
	xorl	-48(%rbp), %r14d        # 4-byte Folded Reload
	roll	%r14d
	addl	%r14d, %r8d
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	addl	%r9d, %r8d
	movl	%esi, %edi
	roll	$5, %edi
	leal	(%rdi,%r8), %r9d
	addl	$-899497514, %r9d       # imm = 0xCA62C1D6
	roll	$30, %ecx
	movl	%ecx, %r8d
	xorl	%eax, %r8d
	xorl	%esi, %r8d
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movq	%r11, %rdi
	xorl	%r10d, %edi
	xorl	-64(%rbp), %edi         # 4-byte Folded Reload
	xorl	%r15d, %edi
	roll	%edi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	addl	%edi, %edx
	addl	%r8d, %edx
	movl	%r9d, %edi
	roll	$5, %edi
	roll	$30, %esi
	addl	%edi, %edx
	addl	$-899497514, %edx       # imm = 0xCA62C1D6
	movl	%esi, %r8d
	xorl	%ecx, %r8d
	xorl	%r9d, %r8d
	movl	%ebx, %edi
	movq	-184(%rbp), %r15        # 8-byte Reload
	xorl	%r15d, %edi
	xorl	-56(%rbp), %edi         # 4-byte Folded Reload
	xorl	%r13d, %edi
	roll	%edi
	addl	%edi, %eax
	movl	%edi, %ebx
	addl	%r8d, %eax
	movl	%edx, %edi
	roll	$5, %edi
	addl	%edi, %eax
	addl	$-899497514, %eax       # imm = 0xCA62C1D6
	roll	$30, %r9d
	movl	%r9d, %r8d
	xorl	%esi, %r8d
	xorl	%edx, %r8d
	xorl	%r12d, %r10d
	xorl	-68(%rbp), %r10d        # 4-byte Folded Reload
	xorl	%r14d, %r10d
	roll	%r10d
	addl	%r10d, %ecx
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	addl	%r8d, %ecx
	movl	%eax, %edi
	roll	$5, %edi
	roll	$30, %edx
	addl	%ecx, %edi
	addl	$-899497514, %edi       # imm = 0xCA62C1D6
	movl	%edx, %ecx
	xorl	%r9d, %ecx
	xorl	%eax, %ecx
	movl	-60(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %r15d
	xorl	-44(%rbp), %r15d        # 4-byte Folded Reload
	xorl	-104(%rbp), %r15d       # 4-byte Folded Reload
	roll	%r15d
	addl	%r15d, %esi
	addl	%ecx, %esi
	movl	%edi, %ecx
	roll	$5, %ecx
	leal	(%rcx,%rsi), %r8d
	addl	$-899497514, %r8d       # imm = 0xCA62C1D6
	roll	$30, %eax
	movl	%eax, %ecx
	xorl	%edx, %ecx
	xorl	%edi, %ecx
	movl	-72(%rbp), %r14d        # 4-byte Reload
	xorl	%r14d, %r12d
	xorl	-48(%rbp), %r12d        # 4-byte Folded Reload
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	xorl	%ebx, %r12d
	roll	%r12d
	addl	%r12d, %r9d
	addl	%ecx, %r9d
	movl	%r8d, %ecx
	roll	$5, %ecx
	roll	$30, %edi
	leal	(%rcx,%r9), %esi
	addl	$-899497514, %esi       # imm = 0xCA62C1D6
	movl	%edi, %ecx
	xorl	%eax, %ecx
	xorl	%r8d, %ecx
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r13d, %ebx
	xorl	%r11d, %ebx
	xorl	-80(%rbp), %ebx         # 4-byte Folded Reload
	xorl	%r10d, %ebx
	roll	%ebx
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	addl	%ebx, %edx
	addl	%ecx, %edx
	movl	%esi, %ecx
	roll	$5, %ecx
	leal	(%rcx,%rdx), %r10d
	addl	$-899497514, %r10d      # imm = 0xCA62C1D6
	roll	$30, %r8d
	movl	%r8d, %edx
	xorl	%edi, %edx
	xorl	%esi, %edx
	movl	-64(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r14d
	xorl	-84(%rbp), %r14d        # 4-byte Folded Reload
	xorl	%r15d, %r14d
	roll	%r14d
	addl	%r14d, %eax
	movl	%r14d, -72(%rbp)        # 4-byte Spill
	addl	%edx, %eax
	movl	%r10d, %edx
	roll	$5, %edx
	roll	$30, %esi
	leal	(%rdx,%rax), %r9d
	addl	$-899497514, %r9d       # imm = 0xCA62C1D6
	movl	%esi, %edx
	xorl	%r8d, %edx
	xorl	%r10d, %edx
	movl	%r11d, %ecx
	movl	-56(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %ecx
	xorl	-92(%rbp), %ecx         # 4-byte Folded Reload
	xorl	%r12d, %ecx
	roll	%ecx
	addl	%ecx, %edi
	movl	%ecx, %r13d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	addl	%edx, %edi
	movl	%r9d, %edx
	roll	$5, %edx
	addl	%edi, %edx
	addl	$-899497514, %edx       # imm = 0xCA62C1D6
	roll	$30, %r10d
	movl	%r10d, %edi
	xorl	%esi, %edi
	xorl	%r9d, %edi
	movl	%ebx, %eax
	movl	-68(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %eax
	xorl	-104(%rbp), %eax        # 4-byte Folded Reload
	xorl	-60(%rbp), %eax         # 4-byte Folded Reload
	roll	%eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addl	%eax, %r8d
	addl	%edi, %r8d
	movl	%edx, %edi
	roll	$5, %edi
	roll	$30, %r9d
	addl	%r8d, %edi
	addl	$-899497514, %edi       # imm = 0xCA62C1D6
	movl	%r9d, %r8d
	xorl	%r10d, %r8d
	xorl	%edx, %r8d
	movl	%r11d, %ecx
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	%eax, %ecx
	xorl	-88(%rbp), %ecx         # 4-byte Folded Reload
	xorl	%r14d, %ecx
	roll	%ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	addl	%ecx, %esi
	addl	%r8d, %esi
	movl	%edi, %ecx
	roll	$5, %ecx
	leal	(%rcx,%rsi), %r8d
	addl	$-899497514, %r8d       # imm = 0xCA62C1D6
	roll	$30, %edx
	movl	%edx, %ecx
	xorl	%r9d, %ecx
	xorl	%edi, %ecx
	movl	%ebx, %r11d
	movl	-48(%rbp), %ebx         # 4-byte Reload
	xorl	%ebx, %r11d
	xorl	-76(%rbp), %r11d        # 4-byte Folded Reload
	xorl	%r13d, %r11d
	roll	%r11d
	addl	%r11d, %r10d
	addl	%ecx, %r10d
	movl	%r8d, %ecx
	roll	$5, %ecx
	roll	$30, %edi
	addl	%r10d, %ecx
	addl	$-899497514, %ecx       # imm = 0xCA62C1D6
	movl	%edi, %r10d
	xorl	%edx, %r10d
	xorl	%r8d, %r10d
	movl	%eax, %esi
	movl	-80(%rbp), %r13d        # 4-byte Reload
	xorl	%r13d, %esi
	movq	%r15, %rax
	movq	%r15, -184(%rbp)        # 8-byte Spill
	xorl	%eax, %esi
	xorl	-64(%rbp), %esi         # 4-byte Folded Reload
	roll	%esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	addl	%esi, %r9d
	addl	%r10d, %r9d
	movl	%ecx, %esi
	roll	$5, %esi
	leal	(%rsi,%r9), %r10d
	addl	$-899497514, %r10d      # imm = 0xCA62C1D6
	roll	$30, %r8d
	movl	%r8d, %esi
	xorl	%edi, %esi
	xorl	%ecx, %esi
	movl	-84(%rbp), %r14d        # 4-byte Reload
	xorl	%r14d, %ebx
	xorl	%r12d, %ebx
	movl	-56(%rbp), %r15d        # 4-byte Reload
	xorl	%r15d, %ebx
	roll	%ebx
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	addl	%ebx, %edx
	addl	%esi, %edx
	movl	%r10d, %esi
	roll	$5, %esi
	leal	(%rsi,%rdx), %r9d
	addl	$-899497514, %r9d       # imm = 0xCA62C1D6
	movl	%eax, -176(%rbp)
	movl	%r12d, -172(%rbp)
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	%esi, -168(%rbp)
	movl	-92(%rbp), %edx         # 4-byte Reload
	xorl	%edx, %r13d
	xorl	%esi, %r13d
	roll	$30, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %esi
	xorl	%r10d, %esi
	xorl	%r11d, %r13d
	roll	%r13d
	addl	%r13d, %edi
	addl	%esi, %edi
	movl	%r9d, %esi
	roll	$5, %esi
	addl	%esi, %edi
	addl	$-899497514, %edi       # imm = 0xCA62C1D6
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	%esi, -164(%rbp)
	xorl	-104(%rbp), %r14d       # 4-byte Folded Reload
	xorl	%esi, %r14d
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -160(%rbp)
	movl	-64(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, -156(%rbp)
	movl	%r15d, -152(%rbp)
	movl	%r11d, -148(%rbp)
	movl	%r11d, %r15d
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%esi, -144(%rbp)
	xorl	%esi, %r14d
	roll	$30, %r10d
	movl	%r10d, %esi
	xorl	%ecx, %esi
	xorl	%r9d, %esi
	roll	%r14d
	addl	%r14d, %r8d
	addl	%esi, %r8d
	movl	%edi, %esi
	roll	$5, %esi
	addl	%r8d, %esi
	addl	$-899497514, %esi       # imm = 0xCA62C1D6
	movl	%edx, %r8d
	movl	-88(%rbp), %r11d        # 4-byte Reload
	xorl	%r11d, %r8d
	xorl	%eax, %r8d
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -140(%rbp)
	xorl	%eax, %r8d
	roll	$30, %r9d
	movl	%r9d, %edx
	xorl	%r10d, %edx
	xorl	%edi, %edx
	roll	%r8d
	addl	%r8d, %ecx
	movl	%r8d, %eax
	addl	%edx, %ecx
	movl	%esi, %edx
	roll	$5, %edx
	addl	%edx, %ecx
	addl	$-899497514, %ecx       # imm = 0xCA62C1D6
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	xorl	%r8d, %edx
	xorl	%ebx, %edx
	movl	%r13d, -136(%rbp)
	xorl	%r13d, %edx
	movl	%r14d, -132(%rbp)
	movl	%eax, -128(%rbp)
	movl	%eax, %r13d
	roll	%edx
	movl	%edx, -124(%rbp)
	addl	%r10d, %edx
	roll	$30, %edi
	movl	%edi, %eax
	xorl	%r9d, %eax
	xorl	%esi, %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	roll	$5, %eax
	addl	%edx, %eax
	addl	$-899497514, %eax       # imm = 0xCA62C1D6
	movq	-184(%rbp), %rbx        # 8-byte Reload
	xorl	%r11d, %ebx
	xorl	-56(%rbp), %ebx         # 4-byte Folded Reload
	xorl	%r14d, %ebx
	roll	$30, %esi
	roll	%ebx
	movl	%ebx, -120(%rbp)
	addl	%r9d, %ebx
	movl	%esi, %edx
	xorl	%edi, %edx
	xorl	%ecx, %edx
	addl	%edx, %ebx
	xorl	%r8d, %r12d
	xorl	%r15d, %r12d
	xorl	%r13d, %r12d
	movl	%eax, %edx
	roll	$5, %edx
	roll	%r12d
	addl	%ebx, %edx
	addl	$-899497514, %edx       # imm = 0xCA62C1D6
	movl	%r12d, -116(%rbp)
	addl	-188(%rbp), %r12d       # 4-byte Folded Reload
	addl	%edi, %r12d
	roll	$30, %ecx
	movd	%ecx, %xmm1
	xorl	%esi, %ecx
	xorl	%eax, %ecx
	movd	%edx, %xmm2
	roll	$5, %edx
	addl	%ecx, %r12d
	leal	(%rdx,%r12), %ecx
	addl	$-899497514, %ecx       # imm = 0xCA62C1D6
	roll	$30, %eax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, (%rdx)
	movd	%eax, %xmm3
	movd	%esi, %xmm4
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, 4(%rdx)
	movl	$64, %edx
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SHA1Transform, .Lfunc_end0-SHA1Transform
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function SHA1Init
.LCPI1_0:
	.long	1732584193              # 0x67452301
	.long	4023233417              # 0xefcdab89
	.long	2562383102              # 0x98badcfe
	.long	271733878               # 0x10325476
	.text
	.globl	SHA1Init
	.p2align	4, 0x90
	.type	SHA1Init,@function
SHA1Init:                               # @SHA1Init
# %bb.0:
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, (%rdi)
	movl	$3285377520, %eax       # imm = 0xC3D2E1F0
	movq	%rax, 16(%rdi)
	movl	$0, 24(%rdi)
	retq
.Lfunc_end1:
	.size	SHA1Init, .Lfunc_end1-SHA1Init
                                        # -- End function
	.globl	SHA1Update              # -- Begin function SHA1Update
	.p2align	4, 0x90
	.type	SHA1Update,@function
SHA1Update:                             # @SHA1Update
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	20(%rdi), %r13d
	movl	24(%rdi), %eax
	leal	(,%r15,8), %ecx
	addl	%r13d, %ecx
	movl	%ecx, 20(%rdi)
	jae	.LBB2_2
# %bb.1:
	addl	$1, %eax
	movl	%eax, 24(%rbx)
.LBB2_2:
	movl	%r15d, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	movl	%ecx, 24(%rbx)
	shrl	$3, %r13d
	andl	$63, %r13d
	leal	(%r15,%r13), %eax
	xorl	%r12d, %r12d
	leaq	(%rbx,%r13), %rdi
	addq	$28, %rdi
	cmpl	$64, %eax
	jb	.LBB2_7
# %bb.3:
	movl	$64, %r12d
	subl	%r13d, %r12d
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leaq	28(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	SHA1Transform
	xorl	$127, %r13d
	cmpl	%r15d, %r13d
	jae	.LBB2_6
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	leal	-63(%r13), %esi
	addq	%r14, %rsi
	movq	%rbx, %rdi
	callq	SHA1Transform
	addl	$64, %r13d
	cmpl	%r15d, %r13d
	jb	.LBB2_4
# %bb.5:                                # %.loopexit
	addl	$-63, %r13d
	movl	%r13d, %r12d
.LBB2_6:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB2_7:
	movl	%r12d, %eax
	addq	%rax, %r14
	subl	%r12d, %r15d
	movq	%r14, %rsi
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.Lfunc_end2:
	.size	SHA1Update, .Lfunc_end2-SHA1Update
                                        # -- End function
	.globl	SHA1Final               # -- Begin function SHA1Final
	.p2align	4, 0x90
	.type	SHA1Final,@function
SHA1Final:                              # @SHA1Final
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	24(%rsi), %eax
	bswapl	%eax
	movl	%eax, -49(%rbp)
	movl	20(%rsi), %eax
	bswapl	%eax
	movl	%eax, -45(%rbp)
	movb	$-128, -41(%rbp)
	leaq	-41(%rbp), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	SHA1Update
	movl	$504, %r12d             # imm = 0x1F8
	movl	20(%r13), %eax
	andl	%r12d, %eax
	cmpl	$448, %eax              # imm = 0x1C0
	je	.LBB3_3
# %bb.1:                                # %.preheader
	leaq	-41(%rbp), %r15
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movb	$0, -41(%rbp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	SHA1Update
	movl	20(%r13), %eax
	andl	%r12d, %eax
	cmpl	$448, %eax              # imm = 0x1C0
	jne	.LBB3_2
.LBB3_3:
	leaq	-49(%rbp), %rsi
	movq	%r13, %rdi
	movl	$8, %edx
	callq	SHA1Update
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movl	%esi, %edi
	andl	$-4, %edi
	movl	(%r13,%rdi), %ebx
	movl	%edx, %eax
	andb	$16, %al
	movl	%eax, %ecx
	xorb	$24, %cl
	shrl	%cl, %ebx
	movb	%bl, (%r14,%rsi)
	movl	(%r13,%rdi), %edi
	xorb	$16, %al
	movl	%eax, %ecx
	shrl	%cl, %edi
	movb	%dil, 1(%r14,%rsi)
	addq	$2, %rsi
	addl	$16, %edx
	cmpq	$20, %rsi
	jne	.LBB3_4
# %bb.5:
	movl	$92, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	leaq	-49(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SHA1Final, .Lfunc_end3-SHA1Final
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
