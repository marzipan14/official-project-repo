	.text
	.file	"lua_cjson.c"
	.globl	luaopen_cjson           # -- Begin function luaopen_cjson
	.p2align	4, 0x90
	.type	luaopen_cjson,@function
luaopen_cjson:                          # @luaopen_cjson
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_cjson_new
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movl	$-10002, %esi           # imm = 0xD8EE
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_cjson, .Lfunc_end0-luaopen_cjson
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function lua_cjson_new
.LCPI1_0:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	10                      # 0xa
	.long	1000                    # 0x3e8
.LCPI1_1:
	.long	0                       # 0x0
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.p2align	4, 0x90
	.type	lua_cjson_new,@function
lua_cjson_new:                          # @lua_cjson_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdi, %r14
	leaq	-208(%rbp), %rdi
	movl	$.Llua_cjson_new.reg, %esi
	movl	$176, %edx
	callq	memcpy
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	fpconv_init
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$1352, %esi             # imm = 0x548
	movq	%r14, %rdi
	callq	lua_newuserdata
	movq	%rax, %r15
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$json_destroy_config, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.99, %edx
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,2,10,1000]
	movups	%xmm0, 1312(%r15)
	movl	$1000, 1344(%r15)       # imm = 0x3E8
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [0,14,1,1]
	movups	%xmm0, 1328(%r15)
	leaq	1280(%r15), %rdi
	xorl	%esi, %esi
	callq	strbuf_init
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	$12, (%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, 4(%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, 8(%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, 12(%r15,%rbx,4)
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB1_1
# %bb.2:
	movl	$0, 492(%r15)
	movl	$1, 500(%r15)
	movl	$2, 364(%r15)
	movl	$3, 372(%r15)
	movl	$8, 232(%r15)
	movl	$10, (%r15)
	movl	$11, 128(%r15)
	movabsq	$47244640267, %rax      # imm = 0xB0000000B
	movq	%rax, 36(%r15)
	movl	$11, 52(%r15)
	movl	$13, 408(%r15)
	movl	$13, 420(%r15)
	movl	$13, 292(%r15)
	movl	$13, 440(%r15)
	movl	$13, 312(%r15)
	movl	$13, 464(%r15)
	movl	$13, 136(%r15)
	movabsq	$38654705677, %rax      # imm = 0x90000000D
	movq	%rax, 172(%r15)
	movl	$13, 180(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 192(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 196(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 200(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 204(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 208(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 212(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 216(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 220(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 224(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, 228(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movb	$0, 1024(%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 1025(%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 1026(%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 1027(%r15,%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB1_3
# %bb.4:
	movb	$34, 1058(%r15)
	movb	$92, 1116(%r15)
	movb	$47, 1071(%r15)
	movb	$8, 1122(%r15)
	movw	$29961, 1140(%r15)      # imm = 0x7509
	movb	$10, 1134(%r15)
	movb	$12, 1126(%r15)
	movb	$13, 1138(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.100, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checkstack
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -208(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_7
# %bb.5:                                # %.preheader
	leaq	-192(%rbp), %rbx
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rbx), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movq	-16(%rbx), %rdx
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%rbx)
	leaq	16(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_6
.LBB1_7:
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	lua_pushlightuserdata
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	lua_pushlstring
	movl	$.L.str.12, %edx
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$.L.str.13, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	lua_pushlstring
	movl	$.L.str.14, %edx
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lua_cjson_new, .Lfunc_end1-lua_cjson_new
                                        # -- End function
	.globl	luaopen_cjson_safe      # -- Begin function luaopen_cjson_safe
	.p2align	4, 0x90
	.type	luaopen_cjson_safe,@function
luaopen_cjson_safe:                     # @luaopen_cjson_safe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	lua_cjson_safe_new
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaopen_cjson_safe, .Lfunc_end2-luaopen_cjson_safe
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lua_cjson_safe_new
	.type	lua_cjson_safe_new,@function
lua_cjson_safe_new:                     # @lua_cjson_safe_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_cjson_new
	movl	$lua_cjson_safe_new, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$json_protect_conversion, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movl	$json_protect_conversion, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lua_cjson_safe_new, .Lfunc_end3-lua_cjson_safe_new
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_encode
	.type	json_encode,@function
json_encode:                            # @json_encode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r14
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_touserdata
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB4_2
# %bb.1:
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB4_4
# %bb.3:
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB4_4:
	cmpl	$0, 1336(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_5
# %bb.6:
	movq	%r15, %rbx
	addq	$1280, %rbx             # imm = 0x500
	movl	$0, 1292(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_7
.LBB4_5:
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	strbuf_init
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	json_append_data
	movl	$42, __A_VARIABLE(%rip)
	movslq	12(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	lua_pushlstring
	cmpl	$0, 1336(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_9
# %bb.8:
	movq	%rbx, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	json_encode, .Lfunc_end4-json_encode
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_decode
	.type	json_decode,@function
json_decode:                            # @json_decode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r14
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB5_2
# %bb.1:
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB5_2:
	movq	%r14, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_touserdata
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB5_4
# %bb.3:
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB5_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -72(%rbp)
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, -96(%rbp)
	movl	$0, -64(%rbp)
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rdi
	jb	.LBB5_8
# %bb.5:
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_7
# %bb.6:
	cmpb	$0, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_8
.LBB5_7:
	movl	$.L.str.64, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rdi
.LBB5_8:
                                        # kill: def $edi killed $edi killed $rdi
	callq	strbuf_new
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rbx
	leaq	-56(%rbp), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	json_process_value
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	cmpl	$10, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_10
# %bb.9:
	movq	-80(%rbp), %rdi
	callq	strbuf_free
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r8d
	cmpq	$12, %rax
	leaq	-48(%rbp), %rcx
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.65, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movq	-80(%rbp), %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	json_decode, .Lfunc_end5-json_decode
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_encode_sparse_array
	.type	json_cfg_encode_sparse_array,@function
json_cfg_encode_sparse_array:           # @json_cfg_encode_sparse_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$3, %esi
	callq	json_arg_init
	movq	%rax, %r14
	leaq	1312(%rax), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	json_enum_option
	leaq	1316(%r14), %rdx
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	callq	json_integer_option
	leaq	1320(%r14), %rdx
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	callq	json_integer_option
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	json_cfg_encode_sparse_array, .Lfunc_end6-json_cfg_encode_sparse_array
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_encode_max_depth
	.type	json_cfg_encode_max_depth,@function
json_cfg_encode_max_depth:              # @json_cfg_encode_max_depth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	leaq	1324(%rax), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	callq	json_integer_option
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	json_cfg_encode_max_depth, .Lfunc_end7-json_cfg_encode_max_depth
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_decode_max_depth
	.type	json_cfg_decode_max_depth,@function
json_cfg_decode_max_depth:              # @json_cfg_decode_max_depth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	leaq	1344(%rax), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	callq	json_integer_option
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	json_cfg_decode_max_depth, .Lfunc_end8-json_cfg_decode_max_depth
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_encode_number_precision
	.type	json_cfg_encode_number_precision,@function
json_cfg_encode_number_precision:       # @json_cfg_encode_number_precision
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	leaq	1332(%rax), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %ecx
	movl	$14, %r8d
	callq	json_integer_option
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	json_cfg_encode_number_precision, .Lfunc_end9-json_cfg_encode_number_precision
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_encode_keep_buffer
	.type	json_cfg_encode_keep_buffer,@function
json_cfg_encode_keep_buffer:            # @json_cfg_encode_keep_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$1, %esi
	callq	json_arg_init
	movq	%rax, %rbx
	leaq	1336(%rax), %rsi
	movl	1336(%rax), %r15d
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	json_enum_option
	movl	1336(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	je	.LBB10_5
# %bb.1:
	addq	$1280, %rbx             # imm = 0x500
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB10_3
# %bb.2:
	xorl	%esi, %esi
	callq	strbuf_init
	jmp	.LBB10_4
.LBB10_3:
	callq	strbuf_free
.LBB10_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	json_cfg_encode_keep_buffer, .Lfunc_end10-json_cfg_encode_keep_buffer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_encode_invalid_numbers
	.type	json_cfg_encode_invalid_numbers,@function
json_cfg_encode_invalid_numbers:        # @json_cfg_encode_invalid_numbers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	leaq	1328(%rax), %rsi
	movl	$json_cfg_encode_invalid_numbers.options, %edx
	movq	%rbx, %rdi
	callq	json_enum_option
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	json_cfg_encode_invalid_numbers, .Lfunc_end11-json_cfg_encode_invalid_numbers
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_cfg_decode_invalid_numbers
	.type	json_cfg_decode_invalid_numbers,@function
json_cfg_decode_invalid_numbers:        # @json_cfg_decode_invalid_numbers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	leaq	1340(%rax), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	json_enum_option
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	json_cfg_decode_invalid_numbers, .Lfunc_end12-json_cfg_decode_invalid_numbers
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function json_append_data
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	0                       # double 0
	.text
	.p2align	4, 0x90
	.type	json_append_data,@function
json_append_data:                       # @json_append_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r13
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$-1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	ja	.LBB13_7
# %bb.1:
	movl	%eax, %eax
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_2:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
	movl	%esi, %ecx
	notl	%ecx
	addl	8(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_32
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jg	.LBB13_5
# %bb.4:
	addl	$4, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_5:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.17, %esi
	jmp	.LBB13_13
.LBB13_6:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_10
.LBB13_7:
	cmpl	$0, 1336(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_9
# %bb.8:
	movq	%r13, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB13_9:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.63, %esi
	movl	$.L.str.19, %ecx
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB13_82
.LBB13_10:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jg	.LBB13_12
# %bb.11:
	addl	$4, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_12:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.11, %esi
.LBB13_13:
	movl	$4, %edx
	callq	memcpy
	addl	$4, 12(%r13)
	jmp	.LBB13_82
.LBB13_14:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	$-1, %ecx
	callq	json_append_number
	jmp	.LBB13_83
.LBB13_15:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$-1, %edx
	callq	json_append_string
	jmp	.LBB13_83
.LBB13_16:
	leal	1(%rbx), %r12d
	cmpl	%ebx, 1324(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB13_18
# %bb.17:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_21
.LBB13_18:
	cmpl	$0, 1336(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_20
# %bb.19:
	movq	%r13, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB13_20:
	movl	$.L.str.59, %esi
	movq	%r14, %rdi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB13_21:
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	lua_pushnil
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_35
# %bb.22:                               # %.preheader
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB13_24
	.p2align	4, 0x90
.LBB13_23:                              #   in Loop: Header=BB13_24 Depth=1
	addl	$1, %ebx
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_36
.LBB13_24:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB13_30
# %bb.25:                               #   in Loop: Header=BB13_24 Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_tonumber
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	.LCPI13_1, %xmm0
	jne	.LBB13_26
	jnp	.LBB13_30
.LBB13_26:                              #   in Loop: Header=BB13_24 Depth=1
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI13_0(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB13_30
# %bb.27:                               #   in Loop: Header=BB13_24 Depth=1
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_30
	jp	.LBB13_30
# %bb.28:                               #   in Loop: Header=BB13_24 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB13_23
# %bb.29:                               #   in Loop: Header=BB13_24 Depth=1
	cvttsd2si	%xmm1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_23
.LBB13_30:
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_settop
.LBB13_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_52
.LBB13_32:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jg	.LBB13_34
# %bb.33:
	addl	$5, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_34:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.18, %esi
	movl	$5, %edx
	callq	memcpy
	addl	$5, 12(%r13)
	jmp	.LBB13_82
.LBB13_35:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB13_36:
	movl	1316(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r12, %rdx
	jle	.LBB13_43
# %bb.37:
	imull	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jle	.LBB13_43
# %bb.38:
	cmpl	1320(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB13_43
# %bb.39:
	cmpl	$0, 1312(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_31
# %bb.40:
	cmpl	$0, 1336(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_42
# %bb.41:
	movq	%r13, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB13_42:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_type
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.63, %esi
	movl	$.L.str.60, %ecx
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_31
.LBB13_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB13_52
# %bb.44:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r15, -64(%rbp)         # 8-byte Spill
	jg	.LBB13_46
# %bb.45:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movq	%r12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$91, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%edx
	xorl	%r15d, %r15d
	movl	$1, %ebx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_49
	.p2align	4, 0x90
.LBB13_47:                              #   in Loop: Header=BB13_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$44, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r12d
.LBB13_48:                              #   in Loop: Header=BB13_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	%ebx, %edx
	callq	lua_rawgeti
	movq	%r14, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	%r13, %rcx
	callq	json_append_data
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	leal	(%rdx,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	movl	%r12d, %r15d
	cmpl	$1, %eax
	je	.LBB13_78
.LBB13_49:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	testl	%r15d, %r15d
	je	.LBB13_48
# %bb.50:                               #   in Loop: Header=BB13_49 Depth=1
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_47
# %bb.51:                               #   in Loop: Header=BB13_49 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
	jmp	.LBB13_47
.LBB13_52:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_54
# %bb.53:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_54:
	movl	-44(%rbp), %r12d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$123, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	lua_pushnil
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_75
# %bb.55:
	xorl	%ebx, %ebx
	jmp	.LBB13_58
	.p2align	4, 0x90
.LBB13_56:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.61, %esi
	movl	$2, %edx
	callq	memcpy
	addl	$2, 12(%r13)
.LBB13_57:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	json_append_data
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_75
.LBB13_58:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB13_62
# %bb.59:                               #   in Loop: Header=BB13_58 Depth=1
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_61
# %bb.60:                               #   in Loop: Header=BB13_58 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_61:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$44, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_63
	.p2align	4, 0x90
.LBB13_62:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$1, %ebx
.LBB13_63:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB13_68
# %bb.64:                               #   in Loop: Header=BB13_58 Depth=1
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_66
# %bb.65:                               #   in Loop: Header=BB13_58 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_66:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$34, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	$-2, %ecx
	callq	json_append_number
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB13_56
# %bb.67:                               #   in Loop: Header=BB13_58 Depth=1
	addl	$2, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
	jmp	.LBB13_56
	.p2align	4, 0x90
.LBB13_68:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB13_72
# %bb.69:                               #   in Loop: Header=BB13_58 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$-2, %edx
	callq	json_append_string
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_71
# %bb.70:                               #   in Loop: Header=BB13_58 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_71:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$58, (%rax,%rcx)
	jmp	.LBB13_57
	.p2align	4, 0x90
.LBB13_72:                              #   in Loop: Header=BB13_58 Depth=1
	cmpl	$0, 1336(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_74
# %bb.73:                               #   in Loop: Header=BB13_58 Depth=1
	movq	%r13, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB13_74:                              #   in Loop: Header=BB13_58 Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_type
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.63, %esi
	movl	$.L.str.62, %ecx
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB13_57
.LBB13_75:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_77
# %bb.76:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_77:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$125, (%rax,%rcx)
	jmp	.LBB13_81
.LBB13_78:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_80
# %bb.79:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %esi
.LBB13_80:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$93, (%rax,%rcx)
.LBB13_81:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_82:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_83:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	json_append_data, .Lfunc_end13-json_append_data
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI13_0:
	.quad	.LBB13_10
	.quad	.LBB13_2
	.quad	.LBB13_6
	.quad	.LBB13_14
	.quad	.LBB13_15
	.quad	.LBB13_16
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function json_append_string
	.type	json_append_string,@function
json_append_string:                     # @json_append_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	lua_tolstring
	movq	%rax, %r14
	movl	-32(%rbp), %eax
	leal	(%rax,%rax,2), %ecx
	movl	12(%r15), %eax
	movl	%eax, %edx
	notl	%edx
	addl	8(%r15), %edx
	leal	(%rcx,%rcx), %esi
	addl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jge	.LBB14_2
# %bb.1:
	addl	%eax, %esi
	movq	%r15, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %eax
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
	leal	1(%rax), %edx
	movl	%edx, 12(%r15)
	cltq
	movb	$34, (%rcx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_8
# %bb.3:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB14_4
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=1
	movq	(%r15), %rcx
	movslq	12(%r15), %rdx
	leal	1(%rdx), %esi
	movl	%esi, 12(%r15)
	movb	%al, (%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_7:                               #   in Loop: Header=BB14_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jbe	.LBB14_8
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rbx), %eax
	movq	char2escape(,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	movq	%r15, %rdi
	callq	strbuf_append_string
	jmp	.LBB14_7
.LBB14_8:
	movq	(%r15), %rax
	movslq	12(%r15), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 12(%r15)
	movb	$34, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	json_append_string, .Lfunc_end14-json_append_string
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_append_number
	.type	json_append_number,@function
json_append_number:                     # @json_append_number
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	%ecx, %esi
	callq	lua_tonumber
	movl	1328(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	je	.LBB15_1
# %bb.9:
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB15_14
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_6
# %bb.11:
	movl	12(%r15), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jg	.LBB15_13
# %bb.12:
	addl	$3, %esi
	movq	%r15, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %esi
.LBB15_13:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r15), %rdi
	addq	$12, %r15
	movl	$.L.str.58, %esi
	movl	$3, %edx
	callq	memcpy
	movl	$3, %eax
	jmp	.LBB15_19
.LBB15_1:
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB15_3
# %bb.2:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_6
.LBB15_3:
	cmpl	$0, 1336(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_5
# %bb.4:
	movq	%r15, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB15_5:
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	lua_type
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.63, %esi
	movl	$.L.str.57, %ecx
	movq	%r13, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_6
.LBB15_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB15_16
# %bb.15:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_16
.LBB15_6:
	movl	12(%r15), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %eax
	jg	.LBB15_8
# %bb.7:
	addl	$32, %esi
	movq	%r15, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %esi
.LBB15_8:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r15), %rdi
	addq	$12, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	1332(%r14), %esi
	callq	fpconv_g_fmt
	jmp	.LBB15_19
.LBB15_16:
	movl	12(%r15), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jg	.LBB15_18
# %bb.17:
	addl	$4, %esi
	movq	%r15, %rdi
	callq	strbuf_resize
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %esi
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rdi
	addq	(%r15), %rdi
	addq	$12, %r15
	movl	$.L.str.11, %esi
	movl	$4, %edx
	callq	memcpy
	movl	$4, %eax
.LBB15_19:
	addl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	json_append_number, .Lfunc_end15-json_append_number
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_next_token
	.type	json_next_token,@function
json_next_token:                        # @json_next_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rdi
	movzbl	(%rdi), %eax
	movl	(%r15,%rax,4), %ecx
	movl	%ecx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %ecx
	jne	.LBB16_4
# %bb.1:                                # %.preheader
	addq	$1, %rdi
	.p2align	4, 0x90
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi), %eax
	movl	(%r15,%rax,4), %ecx
	movl	%ecx, (%r14)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %ecx
	je	.LBB16_2
# %bb.3:                                # %.loopexit1
	addq	$-1, %rdi
.LBB16_4:
	movq	(%rbx), %rdx
	movl	%edi, %esi
	subl	%edx, %esi
	movl	%esi, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %ecx
	jne	.LBB16_8
# %bb.5:
	movl	$12, (%r14)
	subl	%edx, %edi
	movl	%edi, 4(%r14)
.LBB16_6:
	movq	$.L.str.66, 8(%r14)
.LBB16_7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_40
.LBB16_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	je	.LBB16_40
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %ecx
	jne	.LBB16_39
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$34, %al
	jne	.LBB16_41
# %bb.11:
	cmpb	$34, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_68
# %bb.12:
	leaq	1(%rdi), %r12
	movq	%r12, 8(%rbx)
	movq	16(%rbx), %rcx
	movl	$0, 12(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$34, %al
	jne	.LBB16_16
# %bb.13:
	xorl	%eax, %eax
	jmp	.LBB16_59
	.p2align	4, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_16 Depth=1
	movq	16(%rbx), %rcx
	movq	(%rcx), %rdx
	movslq	12(%rcx), %rsi
	leal	1(%rsi), %edi
	movl	%edi, 12(%rcx)
	movb	%al, (%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %r12
	addq	$1, %r12
	movq	%r12, 8(%rbx)
.LBB16_15:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$34, %al
	je	.LBB16_58
.LBB16_16:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB16_56
# %bb.17:                               #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$92, %al
	jne	.LBB16_14
# %bb.18:                               #   in Loop: Header=BB16_16 Depth=1
	movzbl	1(%r12), %eax
	movzbl	1024(%r15,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$117, %al
	jne	.LBB16_27
# %bb.19:                               #   in Loop: Header=BB16_16 Depth=1
	addq	$2, %r12
	movq	%r12, %rdi
	callq	decode_hex4
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB16_67
# %bb.20:                               #   in Loop: Header=BB16_16 Depth=1
	movl	%eax, %r13d
	andl	$63488, %eax            # imm = 0xF800
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$55296, %eax            # imm = 0xD800
	jne	.LBB16_29
# %bb.21:                               #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r13d            # imm = 0x400
	jne	.LBB16_67
# %bb.22:                               #   in Loop: Header=BB16_16 Depth=1
	movq	8(%rbx), %rdi
	cmpb	$92, 6(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_67
# %bb.23:                               #   in Loop: Header=BB16_16 Depth=1
	cmpb	$117, 7(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_67
# %bb.24:                               #   in Loop: Header=BB16_16 Depth=1
	addq	$8, %rdi
	callq	decode_hex4
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB16_67
# %bb.25:                               #   in Loop: Header=BB16_16 Depth=1
	movl	%eax, %ecx
	andl	$64512, %ecx            # imm = 0xFC00
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$56320, %ecx            # imm = 0xDC00
	jne	.LBB16_67
# %bb.26:                               #   in Loop: Header=BB16_16 Depth=1
	shll	$10, %r13d
	andl	$1047552, %r13d         # imm = 0xFFC00
	andl	$1023, %eax             # imm = 0x3FF
	addl	%eax, %r13d
	addl	$65536, %r13d           # imm = 0x10000
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %r12d
	jmp	.LBB16_30
.LBB16_27:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB16_63
# %bb.28:                               #   in Loop: Header=BB16_16 Depth=1
	addq	$1, %r12
	movq	%r12, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_14
.LBB16_29:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$6, %r12d
.LBB16_30:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %r13d
	jg	.LBB16_32
# %bb.31:                               #   in Loop: Header=BB16_16 Depth=1
	movb	%r13b, -48(%rbp)
	movl	$1, %eax
	jmp	.LBB16_38
.LBB16_32:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2047, %r13d            # imm = 0x7FF
	jg	.LBB16_34
# %bb.33:                               #   in Loop: Header=BB16_16 Depth=1
	movl	%r13d, %eax
	shrl	$6, %eax
	orb	$-64, %al
	movb	%al, -48(%rbp)
	andb	$63, %r13b
	orb	$-128, %r13b
	movb	%r13b, -47(%rbp)
	movl	$2, %eax
	jmp	.LBB16_38
.LBB16_34:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %r13d           # imm = 0xFFFF
	jg	.LBB16_36
# %bb.35:                               #   in Loop: Header=BB16_16 Depth=1
	movl	%r13d, %eax
	shrl	$12, %eax
	orb	$-32, %al
	movb	%al, -48(%rbp)
	movl	%r13d, %eax
	shrl	$6, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, -47(%rbp)
	andb	$63, %r13b
	orb	$-128, %r13b
	movb	%r13b, -46(%rbp)
	movl	$3, %eax
	jmp	.LBB16_38
.LBB16_36:                              #   in Loop: Header=BB16_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097151, %r13d         # imm = 0x1FFFFF
	jg	.LBB16_66
# %bb.37:                               #   in Loop: Header=BB16_16 Depth=1
	movl	%r13d, %eax
	shrl	$18, %eax
	orb	$-16, %al
	movb	%al, -48(%rbp)
	movl	%r13d, %eax
	shrl	$12, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, -47(%rbp)
	movl	%r13d, %eax
	shrl	$6, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, -46(%rbp)
	andb	$63, %r13b
	orb	$-128, %r13b
	movb	%r13b, -45(%rbp)
	movl	$4, %eax
.LBB16_38:                              #   in Loop: Header=BB16_16 Depth=1
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %r13
	movslq	12(%r13), %rdi
	addq	(%r13), %rdi
	movl	%eax, %edx
	leaq	-48(%rbp), %rsi
	callq	memcpy
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	%eax, 12(%r13)
	movl	$42, __A_VARIABLE(%rip)
	addq	8(%rbx), %r12
	movq	%r12, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_15
.LBB16_39:
	addq	$1, %rdi
	movq	%rdi, 8(%rbx)
.LBB16_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_41:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	je	.LBB16_43
# %bb.42:
	addb	$-48, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	ja	.LBB16_49
.LBB16_43:
	cmpl	$0, 1340(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_47
.LBB16_44:
	movl	$5, (%r14)
.LBB16_45:
	leaq	-48(%rbp), %rsi
	callq	fpconv_strtod
	movsd	%xmm0, 8(%r14)
	movq	8(%rbx), %rax
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB16_55
# %bb.46:
	movq	%rcx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_7
.LBB16_47:
	movq	%rbx, %rdi
	callq	json_is_invalid_number
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_60
# %bb.48:
	movl	$12, (%r14)
	movl	8(%rbx), %eax
	subl	(%rbx), %eax
	movl	%eax, 4(%r14)
	movq	$.L.str.67, 8(%r14)
	jmp	.LBB16_7
.LBB16_49:
	movl	$.L.str.17, %esi
	movl	$4, %edx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_61
# %bb.50:
	movq	8(%rbx), %rdi
	movl	$.L.str.18, %esi
	movl	$5, %edx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_62
# %bb.51:
	movq	8(%rbx), %rdi
	movl	$.L.str.11, %esi
	movl	$4, %edx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_65
# %bb.52:
	movq	24(%rbx), %rax
	cmpl	$0, 1340(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_64
# %bb.53:
	movq	%rbx, %rdi
	callq	json_is_invalid_number
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_64
# %bb.54:
	movl	$5, (%r14)
	movq	8(%rbx), %rdi
	jmp	.LBB16_45
.LBB16_55:
	movl	$12, (%r14)
	subl	(%rbx), %eax
	movl	%eax, 4(%r14)
	movq	$.L.str.67, 8(%r14)
	jmp	.LBB16_57
.LBB16_56:
	movl	$12, (%r14)
	subl	(%rbx), %r12d
	movl	%r12d, 4(%r14)
	movq	$.L.str.70, 8(%r14)
	jmp	.LBB16_57
.LBB16_58:
	movq	16(%rbx), %rcx
	movslq	12(%rcx), %rax
.LBB16_59:
	addq	$1, %r12
	movq	%r12, 8(%rbx)
	movq	(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, (%r14)
	movq	16(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rax), %ecx
	movl	%ecx, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_7
.LBB16_60:
	movq	8(%rbx), %rdi
	jmp	.LBB16_44
.LBB16_61:
	movl	$6, (%r14)
	movl	$1, 8(%r14)
	addq	$4, 8(%rbx)
	jmp	.LBB16_40
.LBB16_62:
	movl	$6, (%r14)
	movl	$0, 8(%r14)
	addq	$5, 8(%rbx)
	jmp	.LBB16_40
.LBB16_63:
	movl	$12, (%r14)
	subl	(%rbx), %r12d
	movl	%r12d, 4(%r14)
	movq	$.L.str.72, 8(%r14)
	jmp	.LBB16_57
.LBB16_64:
	movl	$12, (%r14)
	movl	8(%rbx), %eax
	subl	(%rbx), %eax
	movl	%eax, 4(%r14)
	jmp	.LBB16_6
.LBB16_65:
	movl	$7, (%r14)
	addq	$4, 8(%rbx)
	jmp	.LBB16_40
.LBB16_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, (%r14)
	movl	8(%rbx), %eax
	subl	(%rbx), %eax
	movl	%eax, 4(%r14)
	movq	$.L.str.71, 8(%r14)
.LBB16_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_7
.LBB16_68:
	movl	$.L.str.68, %edi
	movl	$.L__func__.json_next_string_token, %edx
	movl	$.L.str.69, %ecx
	movl	$891, %esi              # imm = 0x37B
	callq	__assert_func
.Lfunc_end16:
	.size	json_next_token, .Lfunc_end16-json_next_token
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_process_value
	.type	json_process_value,@function
json_process_value:                     # @json_process_value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rax
	ja	.LBB17_29
# %bb.1:
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_5:
	movl	32(%r12), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%r12)
	movq	24(%r12), %rcx
	cmpl	1344(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB17_7
# %bb.6:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_8
.LBB17_7:
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	32(%r12), %edx
	movq	8(%r12), %rcx
	subq	(%r12), %rcx
	movl	$.L.str.78, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB17_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	json_next_token
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB17_27
# %bb.9:
	leaq	-56(%rbp), %rbx
	leaq	-64(%rbp), %r15
	jmp	.LBB17_10
	.p2align	4, 0x90
.LBB17_17:                              #   in Loop: Header=BB17_10 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB17_12
# %bb.11:                               #   in Loop: Header=BB17_10 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.75, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_12:                              #   in Loop: Header=BB17_10 Depth=1
	movq	-56(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movq	%r14, %rdi
	callq	lua_pushlstring
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	cmpl	$8, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_14
# %bb.13:                               #   in Loop: Header=BB17_10 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.76, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_14:                              #   in Loop: Header=BB17_10 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	json_process_value
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_rawset
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB17_27
# %bb.15:                               #   in Loop: Header=BB17_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	je	.LBB17_17
# %bb.16:                               #   in Loop: Header=BB17_10 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.77, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_17
.LBB17_29:
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	(%rbx), %eax
	leaq	8(%rbx), %rcx
	cmpq	$12, %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rcx, %rax
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rbx), %r8d
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.74, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB17_30
.LBB17_18:
	movl	32(%r12), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%r12)
	movq	24(%r12), %rcx
	cmpl	1344(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB17_20
# %bb.19:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_checkstack
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_21
.LBB17_20:
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	32(%r12), %edx
	movq	8(%r12), %rcx
	subq	(%r12), %rcx
	movl	$.L.str.78, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB17_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	json_next_token
	cmpl	$3, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_27
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rbx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	json_process_value
	movq	%r14, %rdi
	movl	$-2, %esi
	movl	$1, %edx
	callq	lua_rawseti
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	json_next_token
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB17_23
.LBB17_27:
	addl	$-1, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_30:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_31
.LBB17_2:
	movq	8(%rbx), %rsi
	movslq	16(%rbx), %rdx
	movq	%r14, %rdi
	callq	lua_pushlstring
	jmp	.LBB17_31
.LBB17_28:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	lua_pushlightuserdata
	jmp	.LBB17_31
.LBB17_3:
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	lua_pushnumber
	jmp	.LBB17_31
.LBB17_4:
	movl	8(%rbx), %esi
	movq	%r14, %rdi
	callq	lua_pushboolean
.LBB17_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_23:
	movl	$2, %ebx
	leaq	-56(%rbp), %r13
	leaq	-64(%rbp), %r15
	jmp	.LBB17_24
	.p2align	4, 0x90
.LBB17_26:                              #   in Loop: Header=BB17_24 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	json_process_value
	movq	%r14, %rdi
	movl	$-2, %esi
	movl	%ebx, %edx
	callq	lua_rawseti
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movl	-64(%rbp), %eax
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB17_27
.LBB17_24:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	je	.LBB17_26
# %bb.25:                               #   in Loop: Header=BB17_24 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.79, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_26
.Lfunc_end17:
	.size	json_process_value, .Lfunc_end17-json_process_value
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI17_0:
	.quad	.LBB17_5
	.quad	.LBB17_29
	.quad	.LBB17_18
	.quad	.LBB17_29
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4
	.quad	.LBB17_28
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function json_is_invalid_number
	.type	json_is_invalid_number,@function
json_is_invalid_number:                 # @json_is_invalid_number
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	8(%rdi), %rbx
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %al
	jne	.LBB18_2
.LBB18_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB18_12
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	jne	.LBB18_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rbx), %al
	addq	$1, %rbx
.LBB18_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %al
	jne	.LBB18_7
# %bb.5:
	movb	1(%rbx), %cl
	movl	%ecx, %edx
	orb	$32, %dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpb	$120, %dl
	je	.LBB18_11
# %bb.6:
	addb	$-48, %cl
	xorl	%eax, %eax
	cmpb	$10, %cl
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_11
.LBB18_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %al
	jg	.LBB18_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB18_12
.LBB18_9:
	movl	$.L.str.73, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_1
# %bb.10:
	movl	$.L.str.58, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB18_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	json_is_invalid_number, .Lfunc_end18-json_is_invalid_number
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function decode_hex4
	.type	decode_hex4,@function
decode_hex4:                            # @decode_hex4
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ecx
	jl	.LBB19_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %cl
	jg	.LBB19_3
# %bb.2:
	addl	$-48, %ecx
	jmp	.LBB19_6
.LBB19_3:
	orb	$32, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %cl
	jl	.LBB19_10
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$102, %cl
	jg	.LBB19_10
# %bb.5:
	movsbl	%cl, %ecx
	addl	$-87, %ecx
.LBB19_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB19_11
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	1(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$47, %edx
	jle	.LBB19_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %dl
	jge	.LBB19_9
# %bb.14:
	addl	$-48, %edx
	jmp	.LBB19_15
.LBB19_9:
	orb	$32, %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %dl
	jl	.LBB19_10
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$102, %dl
	jg	.LBB19_10
# %bb.13:
	movsbl	%dl, %edx
	addl	$-87, %edx
.LBB19_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB19_11
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	2(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %esi
	jl	.LBB19_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %sil
	jge	.LBB19_18
# %bb.21:
	addl	$-48, %esi
	jmp	.LBB19_22
.LBB19_18:
	orb	$32, %sil
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %sil
	jl	.LBB19_10
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$102, %sil
	jg	.LBB19_10
# %bb.20:
	movsbl	%sil, %esi
	addl	$-87, %esi
.LBB19_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB19_11
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	3(%rdi), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %edi
	jl	.LBB19_25
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %dil
	jge	.LBB19_25
# %bb.28:
	addl	$-48, %edi
	jmp	.LBB19_29
.LBB19_25:
	orb	$32, %dil
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %dil
	jl	.LBB19_10
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$102, %dil
	jg	.LBB19_10
# %bb.27:
	movsbl	%dil, %edi
	addl	$-87, %edi
.LBB19_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB19_11
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$12, %ecx
	shll	$8, %edx
	addl	%ecx, %edx
	shll	$4, %esi
	addl	%edx, %esi
	addl	%edi, %esi
	movl	%esi, %eax
	jmp	.LBB19_11
.LBB19_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end19:
	.size	decode_hex4, .Lfunc_end19-decode_hex4
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_arg_init
	.type	json_arg_init,@function
json_arg_init:                          # @json_arg_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jle	.LBB20_3
# %bb.1:
	leal	1(%r14), %esi
	movl	$.L.str.95, %edx
	movq	%rbx, %rdi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_3
	.p2align	4, 0x90
.LBB20_2:                               #   in Loop: Header=BB20_3 Depth=1
	callq	lua_pushnil
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	cmpl	%r14d, %eax
	jl	.LBB20_2
# %bb.4:
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_touserdata
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB20_6
# %bb.5:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	$42, __A_VARIABLE(%rip)
.LBB20_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	json_arg_init, .Lfunc_end20-json_arg_init
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_enum_option
	.type	json_enum_option,@function
json_enum_option:                       # @json_enum_option
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB21_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$json_enum_option.bool_options, %r14d
.LBB21_2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$1, %esi
	cmpl	$1, %eax
	jne	.LBB21_6
# %bb.5:
	callq	lua_toboolean
	jmp	.LBB21_7
.LBB21_3:
	movl	(%r15), %esi
	jmp	.LBB21_8
.LBB21_6:
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	luaL_checkoption
.LBB21_7:
	movl	%eax, %esi
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB21_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	jne	.LBB21_11
.LBB21_10:
	movq	%rbx, %rdi
	callq	lua_pushboolean
	jmp	.LBB21_12
.LBB21_11:
	movslq	%esi, %rax
	movq	(%r14,%rax,8), %rsi
	movq	%rbx, %rdi
	callq	lua_pushstring
.LBB21_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	json_enum_option, .Lfunc_end21-json_enum_option
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_integer_option
	.type	json_integer_option,@function
json_integer_option:                    # @json_integer_option
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movl	%esi, %ebx
	movq	%rdi, %r15
	callq	lua_type
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_1
# %bb.2:
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaL_checkinteger
	movq	%rax, %rbx
	leaq	-112(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.98, %edx
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ebx
	jl	.LBB22_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jle	.LBB22_5
.LBB22_4:
	leaq	-112(%rbp), %rdx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB22_5:
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_6
.LBB22_1:
	movl	(%r14), %ebx
.LBB22_6:
	movslq	%ebx, %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	json_integer_option, .Lfunc_end22-json_integer_option
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_destroy_config
	.type	json_destroy_config,@function
json_destroy_config:                    # @json_destroy_config
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	lua_touserdata
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:
	addq	$1280, %rax             # imm = 0x500
	movq	%rax, %rdi
	callq	strbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB23_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	json_destroy_config, .Lfunc_end23-json_destroy_config
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_protect_conversion
	.type	json_protect_conversion,@function
json_protect_conversion:                # @json_protect_conversion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	lua_gettop
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB24_2
# %bb.1:
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
	movl	$42, __A_VARIABLE(%rip)
.LBB24_2:
	movq	%rbx, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_pushvalue
	movl	$1, %r14d
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_insert
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	lua_pcall
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB24_5
# %bb.4:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %r14d
	jmp	.LBB24_6
.LBB24_5:
	movl	$.L.str.101, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movl	%eax, %r14d
.LBB24_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	json_protect_conversion, .Lfunc_end24-json_protect_conversion
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cjson"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"encode"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"decode"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"encode_sparse_array"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"encode_max_depth"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"decode_max_depth"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"encode_number_precision"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"encode_keep_buffer"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"encode_invalid_numbers"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"decode_invalid_numbers"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"new"
	.size	.L.str.10, 4

	.type	.Llua_cjson_new.reg,@object # @lua_cjson_new.reg
	.section	.rodata,"a",@progbits
	.p2align	4
.Llua_cjson_new.reg:
	.quad	.L.str.1
	.quad	json_encode
	.quad	.L.str.2
	.quad	json_decode
	.quad	.L.str.3
	.quad	json_cfg_encode_sparse_array
	.quad	.L.str.4
	.quad	json_cfg_encode_max_depth
	.quad	.L.str.5
	.quad	json_cfg_decode_max_depth
	.quad	.L.str.6
	.quad	json_cfg_encode_number_precision
	.quad	.L.str.7
	.quad	json_cfg_encode_keep_buffer
	.quad	.L.str.8
	.quad	json_cfg_encode_invalid_numbers
	.quad	.L.str.9
	.quad	json_cfg_decode_invalid_numbers
	.quad	.L.str.10
	.quad	lua_cjson_new
	.zero	16
	.size	.Llua_cjson_new.reg, 176

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"null"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_NAME"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2.1.0"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_VERSION"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"expected 1 argument"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"BUG: Unable to fetch CJSON configuration"
	.size	.L.str.16, 41

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"true"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"false"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"type not supported"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\\u0000"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\\u0001"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\\u0002"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\\u0003"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\\u0004"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\\u0005"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\\u0006"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\\u0007"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\\b"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\\t"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\\n"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\\u000b"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\\f"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\\r"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\\u000e"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\\u000f"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\\u0010"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\\u0011"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\\u0012"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\\u0013"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\\u0014"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\\u0015"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\\u0016"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\\u0017"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\\u0018"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\\u0019"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\\u001a"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\\u001b"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\\u001c"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\\u001d"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\\u001e"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\\u001f"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\\\""
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"\\/"
	.size	.L.str.53, 3

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\\\\"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\\u007f"
	.size	.L.str.55, 7

	.type	char2escape,@object     # @char2escape
	.section	.rodata,"a",@progbits
	.p2align	4
char2escape:
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	.L.str.52
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.53
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.55
	.zero	1024
	.size	char2escape, 2048

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"must not be NaN or Inf"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"nan"
	.size	.L.str.58, 4

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Cannot serialise, excessive nesting (%d)"
	.size	.L.str.59, 41

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"excessively sparse array"
	.size	.L.str.60, 25

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\":"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"table key must be a number or string"
	.size	.L.str.62, 37

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Cannot serialise %s: %s"
	.size	.L.str.63, 24

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"JSON parser does not support UTF-16 or UTF-32"
	.size	.L.str.64, 46

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"the end"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"invalid token"
	.size	.L.str.66, 14

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"invalid number"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cjson.c"
	.size	.L.str.68, 86

	.type	.L__func__.json_next_string_token,@object # @__func__.json_next_string_token
.L__func__.json_next_string_token:
	.asciz	"json_next_string_token"
	.size	.L__func__.json_next_string_token, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"*json->ptr == '\"'"
	.size	.L.str.69, 18

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"unexpected end of string"
	.size	.L.str.70, 25

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"invalid unicode escape code"
	.size	.L.str.71, 28

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"invalid escape code"
	.size	.L.str.72, 20

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"inf"
	.size	.L.str.73, 4

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"value"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"object key string"
	.size	.L.str.75, 18

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"colon"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"comma or object end"
	.size	.L.str.77, 20

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Found too many nested data structures (%d) at character %d"
	.size	.L.str.78, 59

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"comma or array end"
	.size	.L.str.79, 19

	.type	json_token_type_name,@object # @json_token_type_name
	.section	.rodata,"a",@progbits
	.p2align	4
json_token_type_name:
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	0
	.size	json_token_type_name, 120

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"Expected %s but found %s at character %d"
	.size	.L.str.80, 41

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"T_OBJ_BEGIN"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"T_OBJ_END"
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"T_ARR_BEGIN"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"T_ARR_END"
	.size	.L.str.84, 10

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"T_STRING"
	.size	.L.str.85, 9

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"T_NUMBER"
	.size	.L.str.86, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"T_BOOLEAN"
	.size	.L.str.87, 10

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"T_NULL"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"T_COLON"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"T_COMMA"
	.size	.L.str.90, 8

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"T_END"
	.size	.L.str.91, 6

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"T_WHITESPACE"
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"T_ERROR"
	.size	.L.str.93, 8

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"T_UNKNOWN"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"found too many arguments"
	.size	.L.str.95, 25

	.type	json_enum_option.bool_options,@object # @json_enum_option.bool_options
	.data
	.p2align	4
json_enum_option.bool_options:
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	0
	.size	json_enum_option.bool_options, 24

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"off"
	.size	.L.str.96, 4

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"on"
	.size	.L.str.97, 3

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"expected integer between %d and %d"
	.size	.L.str.98, 35

	.type	json_cfg_encode_invalid_numbers.options,@object # @json_cfg_encode_invalid_numbers.options
	.data
	.p2align	4
json_cfg_encode_invalid_numbers.options:
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.11
	.quad	0
	.size	json_cfg_encode_invalid_numbers.options, 32

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"__gc"
	.size	.L.str.99, 5

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"too many upvalues"
	.size	.L.str.100, 18

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Memory allocation error in CJSON protected call"
	.size	.L.str.101, 48

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
