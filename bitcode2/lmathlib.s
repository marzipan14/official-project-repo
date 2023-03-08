	.text
	.file	"lmathlib.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function luaopen_math
.LCPI0_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI0_1:
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	luaopen_math
	.p2align	4, 0x90
	.type	luaopen_math,@function
luaopen_math:                           # @luaopen_math
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	movl	$mathlib, %edx
	callq	luaL_register
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_math, .Lfunc_end0-luaopen_math
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_abs
	.type	math_abs,@function
math_abs:                               # @math_abs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	fabs
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	math_abs, .Lfunc_end1-math_abs
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_acos
	.type	math_acos,@function
math_acos:                              # @math_acos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	acos
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	math_acos, .Lfunc_end2-math_acos
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_asin
	.type	math_asin,@function
math_asin:                              # @math_asin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	asin
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	math_asin, .Lfunc_end3-math_asin
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_atan2
	.type	math_atan2,@function
math_atan2:                             # @math_atan2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checknumber
	movaps	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	atan2
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	math_atan2, .Lfunc_end4-math_atan2
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_atan
	.type	math_atan,@function
math_atan:                              # @math_atan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	atan
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	math_atan, .Lfunc_end5-math_atan
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_ceil
	.type	math_ceil,@function
math_ceil:                              # @math_ceil
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	ceil
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	math_ceil, .Lfunc_end6-math_ceil
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_cosh
	.type	math_cosh,@function
math_cosh:                              # @math_cosh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	cosh
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	math_cosh, .Lfunc_end7-math_cosh
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_cos
	.type	math_cos,@function
math_cos:                               # @math_cos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	cos
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	math_cos, .Lfunc_end8-math_cos
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function math_deg
.LCPI9_0:
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.p2align	4, 0x90
	.type	math_deg,@function
math_deg:                               # @math_deg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	divsd	.LCPI9_0(%rip), %xmm0
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	math_deg, .Lfunc_end9-math_deg
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_exp
	.type	math_exp,@function
math_exp:                               # @math_exp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	exp
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	math_exp, .Lfunc_end10-math_exp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_floor
	.type	math_floor,@function
math_floor:                             # @math_floor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	floor
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	math_floor, .Lfunc_end11-math_floor
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_fmod
	.type	math_fmod,@function
math_fmod:                              # @math_fmod
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checknumber
	movaps	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fmod
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	math_fmod, .Lfunc_end12-math_fmod
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_frexp
	.type	math_frexp,@function
math_frexp:                             # @math_frexp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	leaq	-12(%rbp), %rdi
	callq	frexp
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movslq	-12(%rbp), %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	math_frexp, .Lfunc_end13-math_frexp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_ldexp
	.type	math_ldexp,@function
math_ldexp:                             # @math_ldexp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%eax, %edi
	callq	ldexp
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	math_ldexp, .Lfunc_end14-math_ldexp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_log10
	.type	math_log10,@function
math_log10:                             # @math_log10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	log10
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	math_log10, .Lfunc_end15-math_log10
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_log
	.type	math_log,@function
math_log:                               # @math_log
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	log
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	math_log, .Lfunc_end16-math_log
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_max
	.type	math_max,@function
math_max:                               # @math_max
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	lua_gettop
	movl	%eax, %r15d
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checknumber
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jge	.LBB17_1
.LBB17_5:
	movq	%r14, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_1:                               # %.preheader
	negl	%r15d
	movl	$2, %ebx
	jmp	.LBB17_2
	.p2align	4, 0x90
.LBB17_4:                               #   in Loop: Header=BB17_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r15,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	cmpl	$1, %eax
	je	.LBB17_5
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaL_checknumber
	ucomisd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB17_4
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB17_4
.Lfunc_end17:
	.size	math_max, .Lfunc_end17-math_max
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_min
	.type	math_min,@function
math_min:                               # @math_min
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	lua_gettop
	movl	%eax, %r15d
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checknumber
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jge	.LBB18_1
.LBB18_5:
	movq	%r14, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_1:                               # %.preheader
	negl	%r15d
	movl	$2, %ebx
	jmp	.LBB18_2
	.p2align	4, 0x90
.LBB18_4:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r15,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	cmpl	$1, %eax
	je	.LBB18_5
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaL_checknumber
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB18_4
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB18_4
.Lfunc_end18:
	.size	math_min, .Lfunc_end18-math_min
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_modf
	.type	math_modf,@function
math_modf:                              # @math_modf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	leaq	-24(%rbp), %rdi
	callq	modf
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movq	%rbx, %rdi
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	math_modf, .Lfunc_end19-math_modf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_pow
	.type	math_pow,@function
math_pow:                               # @math_pow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checknumber
	movaps	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pow
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	math_pow, .Lfunc_end20-math_pow
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function math_rad
.LCPI21_0:
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.p2align	4, 0x90
	.type	math_rad,@function
math_rad:                               # @math_rad
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	mulsd	.LCPI21_0(%rip), %xmm0
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	math_rad, .Lfunc_end21-math_rad
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function math_random
.LCPI22_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI22_1:
	.quad	4607182418800017408     # double 1
	.text
	.p2align	4, 0x90
	.type	math_random,@function
math_random:                            # @math_random
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	callq	rand
	cltq
	movq	%rax, %rcx
	shlq	$30, %rcx
	addq	%rax, %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$61, %rcx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shll	$31, %edx
	subl	%edx, %ecx
	addl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	divsd	.LCPI22_0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB22_4
# %bb.1:
	cmpl	$1, %eax
	je	.LBB22_7
# %bb.2:
	testl	%eax, %eax
	jne	.LBB22_12
# %bb.3:
	movq	%r15, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB22_11
.LBB22_4:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %ebx
	jge	.LBB22_6
# %bb.5:
	movl	$.L.str.32, %edx
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB22_6:
	addl	$1, %ebx
	cvtsi2sd	%ebx, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB22_10
.LBB22_7:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB22_9
# %bb.8:
	movl	$.L.str.32, %edx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB22_9:
	cvtsi2sd	%ebx, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor
	addsd	.LCPI22_1(%rip), %xmm0
.LBB22_10:
	movq	%r15, %rdi
.LBB22_11:
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB22_13
.LBB22_12:
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB22_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	math_random, .Lfunc_end22-math_random
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_randomseed
	.type	math_randomseed,@function
math_randomseed:                        # @math_randomseed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	luaL_checkinteger
	movl	%eax, %edi
	callq	srand
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	math_randomseed, .Lfunc_end23-math_randomseed
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_sinh
	.type	math_sinh,@function
math_sinh:                              # @math_sinh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	sinh
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	math_sinh, .Lfunc_end24-math_sinh
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_sin
	.type	math_sin,@function
math_sin:                               # @math_sin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	sin
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	math_sin, .Lfunc_end25-math_sin
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_sqrt
	.type	math_sqrt,@function
math_sqrt:                              # @math_sqrt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	sqrt
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	math_sqrt, .Lfunc_end26-math_sqrt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_tanh
	.type	math_tanh,@function
math_tanh:                              # @math_tanh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	tanh
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	math_tanh, .Lfunc_end27-math_tanh
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function math_tan
	.type	math_tan,@function
math_tan:                               # @math_tan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checknumber
	callq	tan
	movq	%rbx, %rdi
	callq	lua_pushnumber
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	math_tan, .Lfunc_end28-math_tan
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"math"
	.size	.L.str, 5

	.type	mathlib,@object         # @mathlib
	.section	.rodata,"a",@progbits
	.p2align	4
mathlib:
	.quad	.L.str.5
	.quad	math_abs
	.quad	.L.str.6
	.quad	math_acos
	.quad	.L.str.7
	.quad	math_asin
	.quad	.L.str.8
	.quad	math_atan2
	.quad	.L.str.9
	.quad	math_atan
	.quad	.L.str.10
	.quad	math_ceil
	.quad	.L.str.11
	.quad	math_cosh
	.quad	.L.str.12
	.quad	math_cos
	.quad	.L.str.13
	.quad	math_deg
	.quad	.L.str.14
	.quad	math_exp
	.quad	.L.str.15
	.quad	math_floor
	.quad	.L.str.3
	.quad	math_fmod
	.quad	.L.str.16
	.quad	math_frexp
	.quad	.L.str.17
	.quad	math_ldexp
	.quad	.L.str.18
	.quad	math_log10
	.quad	.L.str.19
	.quad	math_log
	.quad	.L.str.20
	.quad	math_max
	.quad	.L.str.21
	.quad	math_min
	.quad	.L.str.22
	.quad	math_modf
	.quad	.L.str.23
	.quad	math_pow
	.quad	.L.str.24
	.quad	math_rad
	.quad	.L.str.25
	.quad	math_random
	.quad	.L.str.26
	.quad	math_randomseed
	.quad	.L.str.27
	.quad	math_sinh
	.quad	.L.str.28
	.quad	math_sin
	.quad	.L.str.29
	.quad	math_sqrt
	.quad	.L.str.30
	.quad	math_tanh
	.quad	.L.str.31
	.quad	math_tan
	.zero	16
	.size	mathlib, 464

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pi"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"huge"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"fmod"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mod"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"abs"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"acos"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"asin"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"atan2"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"atan"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ceil"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cosh"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cos"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"deg"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"exp"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"floor"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"frexp"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ldexp"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"log10"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"log"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"max"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"min"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"modf"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"pow"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"rad"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"random"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"randomseed"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"sinh"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"sin"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"sqrt"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tanh"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"tan"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"interval is empty"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"wrong number of arguments"
	.size	.L.str.33, 26

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
