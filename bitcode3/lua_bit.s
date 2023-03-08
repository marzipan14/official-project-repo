	.text
	.file	"lua_bit.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function luaopen_bit
.LCPI0_0:
	.quad	4743814935752998912     # double 1437217655
.LCPI0_1:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.globl	luaopen_bit
	.p2align	4, 0x90
	.type	luaopen_bit,@function
luaopen_bit:                            # @luaopen_bit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_tonumber
	addsd	.LCPI0_1(%rip), %xmm0
	movq	%xmm0, %rbx
	cmpl	$1437217655, %ebx       # imm = 0x55AA3377
	je	.LBB0_5
# %bb.1:
	testl	%ebx, %ebx
	jne	.LBB0_4
# %bb.2:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	luaL_typerror
.LBB0_4:
	cmpl	$1127743488, %ebx       # imm = 0x43380000
	movl	$.L.str.1, %eax
	movl	$.L.str, %edx
	cmoveq	%rax, %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB0_5:
	movl	$.L.str.3, %esi
	movl	$bit_funcs, %edx
	movq	%r14, %rdi
	callq	luaL_register
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_bit, .Lfunc_end0-luaopen_bit
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_tobit
.LCPI1_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_tobit,@function
bit_tobit:                              # @bit_tobit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI1_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB1_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB1_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB1_3:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bit_tobit, .Lfunc_end1-bit_tobit
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_bnot
.LCPI2_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_bnot,@function
bit_bnot:                               # @bit_bnot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI2_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB2_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB2_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB2_3:
	notl	%ebx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bit_bnot, .Lfunc_end2-bit_bnot
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_band
.LCPI3_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_band,@function
bit_band:                               # @bit_band
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI3_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB3_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB3_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB3_3:
	movq	%r14, %rdi
	callq	lua_gettop
	cmpl	$2, %eax
	jl	.LBB3_9
# %bb.4:                                # %.preheader
	movl	%eax, %ebx
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	andl	%r12d, %r15d
	leal	-1(%rbx), %eax
	cmpl	$2, %ebx
	movl	%eax, %ebx
	jle	.LBB3_9
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_tonumber
	addsd	.LCPI3_0(%rip), %xmm0
	movq	%xmm0, %r12
	testl	%r12d, %r12d
	jne	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaL_typerror
	jmp	.LBB3_8
.LBB3_9:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bit_band, .Lfunc_end3-bit_band
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_bor
.LCPI4_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_bor,@function
bit_bor:                                # @bit_bor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI4_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB4_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB4_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB4_3:
	movq	%r14, %rdi
	callq	lua_gettop
	cmpl	$2, %eax
	jl	.LBB4_9
# %bb.4:                                # %.preheader
	movl	%eax, %ebx
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	orl	%r12d, %r15d
	leal	-1(%rbx), %eax
	cmpl	$2, %ebx
	movl	%eax, %ebx
	jle	.LBB4_9
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_tonumber
	addsd	.LCPI4_0(%rip), %xmm0
	movq	%xmm0, %r12
	testl	%r12d, %r12d
	jne	.LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaL_typerror
	jmp	.LBB4_8
.LBB4_9:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bit_bor, .Lfunc_end4-bit_bor
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_bxor
.LCPI5_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_bxor,@function
bit_bxor:                               # @bit_bxor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI5_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB5_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB5_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB5_3:
	movq	%r14, %rdi
	callq	lua_gettop
	cmpl	$2, %eax
	jl	.LBB5_9
# %bb.4:                                # %.preheader
	movl	%eax, %ebx
	jmp	.LBB5_5
	.p2align	4, 0x90
.LBB5_8:                                #   in Loop: Header=BB5_5 Depth=1
	xorl	%r12d, %r15d
	leal	-1(%rbx), %eax
	cmpl	$2, %ebx
	movl	%eax, %ebx
	jle	.LBB5_9
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_tonumber
	addsd	.LCPI5_0(%rip), %xmm0
	movq	%xmm0, %r12
	testl	%r12d, %r12d
	jne	.LBB5_8
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=1
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaL_typerror
	jmp	.LBB5_8
.LBB5_9:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bit_bxor, .Lfunc_end5-bit_bxor
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_lshift
.LCPI6_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_lshift,@function
bit_lshift:                             # @bit_lshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI6_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB6_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB6_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB6_3:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_tonumber
	addsd	.LCPI6_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB6_6
# %bb.4:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB6_6
# %bb.5:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_typerror
.LBB6_6:
	movl	%ebx, %ecx
	shll	%cl, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bit_lshift, .Lfunc_end6-bit_lshift
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_rshift
.LCPI7_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_rshift,@function
bit_rshift:                             # @bit_rshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI7_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB7_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB7_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB7_3:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_tonumber
	addsd	.LCPI7_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB7_6
# %bb.4:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB7_6
# %bb.5:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_typerror
.LBB7_6:
	movl	%ebx, %ecx
	shrl	%cl, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	bit_rshift, .Lfunc_end7-bit_rshift
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_arshift
.LCPI8_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_arshift,@function
bit_arshift:                            # @bit_arshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI8_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB8_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB8_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB8_3:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_tonumber
	addsd	.LCPI8_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB8_6
# %bb.4:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB8_6
# %bb.5:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_typerror
.LBB8_6:
	movl	%ebx, %ecx
	sarl	%cl, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	bit_arshift, .Lfunc_end8-bit_arshift
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_rol
.LCPI9_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_rol,@function
bit_rol:                                # @bit_rol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI9_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB9_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB9_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB9_3:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_tonumber
	addsd	.LCPI9_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB9_6
# %bb.4:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB9_6
# %bb.5:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_typerror
.LBB9_6:
	movl	%ebx, %ecx
	roll	%cl, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	bit_rol, .Lfunc_end9-bit_rol
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_ror
.LCPI10_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_ror,@function
bit_ror:                                # @bit_ror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI10_0(%rip), %xmm0
	movq	%xmm0, %r15
	testl	%r15d, %r15d
	jne	.LBB10_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB10_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB10_3:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_tonumber
	addsd	.LCPI10_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB10_6
# %bb.4:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB10_6
# %bb.5:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_typerror
.LBB10_6:
	movl	%ebx, %ecx
	rorl	%cl, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bit_ror, .Lfunc_end10-bit_ror
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_bswap
.LCPI11_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_bswap,@function
bit_bswap:                              # @bit_bswap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI11_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB11_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB11_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB11_3:
	bswapl	%ebx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movq	%r14, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bit_bswap, .Lfunc_end11-bit_bswap
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bit_tohex
.LCPI12_0:
	.quad	4843621399236968448     # double 6755399441055744
	.text
	.p2align	4, 0x90
	.type	bit_tohex,@function
bit_tohex:                              # @bit_tohex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movl	$1, %esi
	callq	lua_tonumber
	addsd	.LCPI12_0(%rip), %xmm0
	movq	%xmm0, %rbx
	testl	%ebx, %ebx
	jne	.LBB12_3
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_isnumber
	testl	%eax, %eax
	jne	.LBB12_3
# %bb.2:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_typerror
.LBB12_3:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_type
	movl	$8, %r15d
	movl	$8, %r12d
	cmpl	$-1, %eax
	je	.LBB12_7
# %bb.4:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_tonumber
	addsd	.LCPI12_0(%rip), %xmm0
	movq	%xmm0, %r12
	testl	%r12d, %r12d
	jne	.LBB12_7
# %bb.5:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_isnumber
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.LBB12_7
# %bb.6:
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$2, %esi
	callq	luaL_typerror
.LBB12_7:
	movl	%r12d, %ecx
	negl	%ecx
	cmovll	%r12d, %ecx
	testl	%r12d, %r12d
	movl	$.L.str.18, %edx
	movl	$.L.str.17, %edi
	cmovsq	%rdx, %rdi
	cmpl	$9, %ecx
	cmovll	%ecx, %r15d
	movl	%r15d, %edx
	testl	%ecx, %ecx
	jle	.LBB12_10
# %bb.8:
	leaq	1(%rdx), %rcx
	.p2align	4, 0x90
.LBB12_9:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	andl	$15, %esi
	movzbl	(%rdi,%rsi), %eax
	movb	%al, -42(%rbp,%rcx)
	shrl	$4, %ebx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB12_9
.LBB12_10:
	leaq	-40(%rbp), %rsi
	movq	%r14, %rdi
	callq	lua_pushlstring
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bit_tohex, .Lfunc_end12-bit_tohex
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"compiled with incompatible luaconf.h"
	.size	.L.str, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"not compiled with SWAPPED_DOUBLE"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"bit library self-test failed (%s)"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bit"
	.size	.L.str.3, 4

	.type	bit_funcs,@object       # @bit_funcs
	.section	.rodata,"a",@progbits
	.p2align	4
bit_funcs:
	.quad	.L.str.5
	.quad	bit_tobit
	.quad	.L.str.6
	.quad	bit_bnot
	.quad	.L.str.7
	.quad	bit_band
	.quad	.L.str.8
	.quad	bit_bor
	.quad	.L.str.9
	.quad	bit_bxor
	.quad	.L.str.10
	.quad	bit_lshift
	.quad	.L.str.11
	.quad	bit_rshift
	.quad	.L.str.12
	.quad	bit_arshift
	.quad	.L.str.13
	.quad	bit_rol
	.quad	.L.str.14
	.quad	bit_ror
	.quad	.L.str.15
	.quad	bit_bswap
	.quad	.L.str.16
	.quad	bit_tohex
	.zero	16
	.size	bit_funcs, 208

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"number"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tobit"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"bnot"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"band"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bor"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"bxor"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"lshift"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"rshift"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"arshift"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"rol"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ror"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"bswap"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tohex"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0123456789abcdef"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.18, 17

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
