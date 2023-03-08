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
.LCPI1_2:
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
.LCPI1_3:
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.text
	.p2align	4, 0x90
	.type	lua_cjson_new,@function
lua_cjson_new:                          # @lua_cjson_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
	movq	%rdi, %r14
	leaq	-192(%rbp), %rdi
	movl	$.Llua_cjson_new.reg, %esi
	movl	$176, %edx
	callq	memcpy
	xorl	%eax, %eax
	callq	fpconv_init
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	movl	$1352, %esi             # imm = 0x548
	movq	%r14, %rdi
	callq	lua_newuserdata
	movq	%rax, %rbx
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
	movups	%xmm0, 1312(%rbx)
	movl	$1000, 1344(%rbx)       # imm = 0x3E8
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [0,14,1,1]
	movups	%xmm0, 1328(%rbx)
	leaq	1280(%rbx), %rdi
	xorl	%esi, %esi
	callq	strbuf_init
	movaps	.LCPI1_2(%rip), %xmm0   # xmm0 = [12,12,12,12]
	movups	%xmm0, (%rbx)
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 48(%rbx)
	movups	%xmm0, 64(%rbx)
	movups	%xmm0, 80(%rbx)
	movups	%xmm0, 96(%rbx)
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 128(%rbx)
	movups	%xmm0, 144(%rbx)
	movups	%xmm0, 160(%rbx)
	movups	%xmm0, 176(%rbx)
	movups	%xmm0, 192(%rbx)
	movups	%xmm0, 208(%rbx)
	movups	%xmm0, 224(%rbx)
	movups	%xmm0, 240(%rbx)
	movups	%xmm0, 256(%rbx)
	movups	%xmm0, 272(%rbx)
	movups	%xmm0, 288(%rbx)
	movups	%xmm0, 304(%rbx)
	movups	%xmm0, 320(%rbx)
	movups	%xmm0, 336(%rbx)
	movups	%xmm0, 352(%rbx)
	movups	%xmm0, 368(%rbx)
	movups	%xmm0, 384(%rbx)
	movups	%xmm0, 400(%rbx)
	movups	%xmm0, 416(%rbx)
	movups	%xmm0, 432(%rbx)
	movups	%xmm0, 448(%rbx)
	movups	%xmm0, 464(%rbx)
	movups	%xmm0, 480(%rbx)
	movups	%xmm0, 496(%rbx)
	movups	%xmm0, 512(%rbx)
	movups	%xmm0, 528(%rbx)
	movups	%xmm0, 544(%rbx)
	movups	%xmm0, 560(%rbx)
	movups	%xmm0, 576(%rbx)
	movups	%xmm0, 592(%rbx)
	movups	%xmm0, 608(%rbx)
	movups	%xmm0, 624(%rbx)
	movups	%xmm0, 640(%rbx)
	movups	%xmm0, 656(%rbx)
	movups	%xmm0, 672(%rbx)
	movups	%xmm0, 688(%rbx)
	movups	%xmm0, 704(%rbx)
	movups	%xmm0, 720(%rbx)
	movups	%xmm0, 736(%rbx)
	movups	%xmm0, 752(%rbx)
	movups	%xmm0, 768(%rbx)
	movups	%xmm0, 784(%rbx)
	movups	%xmm0, 800(%rbx)
	movups	%xmm0, 816(%rbx)
	movups	%xmm0, 832(%rbx)
	movups	%xmm0, 848(%rbx)
	movups	%xmm0, 864(%rbx)
	movups	%xmm0, 880(%rbx)
	movups	%xmm0, 896(%rbx)
	movups	%xmm0, 912(%rbx)
	movups	%xmm0, 928(%rbx)
	movups	%xmm0, 944(%rbx)
	movups	%xmm0, 960(%rbx)
	movups	%xmm0, 976(%rbx)
	movups	%xmm0, 992(%rbx)
	movups	%xmm0, 1008(%rbx)
	movl	$0, 492(%rbx)
	movl	$1, 500(%rbx)
	movl	$2, 364(%rbx)
	movl	$3, 372(%rbx)
	movl	$8, 232(%rbx)
	movl	$10, (%rbx)
	movl	$11, 128(%rbx)
	movabsq	$47244640267, %rax      # imm = 0xB0000000B
	movq	%rax, 36(%rbx)
	movl	$11, 52(%rbx)
	movl	$13, 408(%rbx)
	movl	$13, 420(%rbx)
	movl	$13, 292(%rbx)
	movl	$13, 440(%rbx)
	movl	$13, 312(%rbx)
	movl	$13, 464(%rbx)
	movl	$13, 136(%rbx)
	movabsq	$38654705677, %rax      # imm = 0x90000000D
	movq	%rax, 172(%rbx)
	movl	$13, 180(%rbx)
	movaps	.LCPI1_3(%rip), %xmm0   # xmm0 = [13,13,13,13]
	movups	%xmm0, 192(%rbx)
	movups	%xmm0, 208(%rbx)
	movabsq	$55834574861, %rax      # imm = 0xD0000000D
	movq	%rax, 224(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1024(%rbx)
	movups	%xmm0, 1040(%rbx)
	movups	%xmm0, 1056(%rbx)
	movups	%xmm0, 1072(%rbx)
	movups	%xmm0, 1088(%rbx)
	movups	%xmm0, 1104(%rbx)
	movups	%xmm0, 1120(%rbx)
	movups	%xmm0, 1136(%rbx)
	movups	%xmm0, 1152(%rbx)
	movups	%xmm0, 1168(%rbx)
	movups	%xmm0, 1184(%rbx)
	movups	%xmm0, 1200(%rbx)
	movups	%xmm0, 1216(%rbx)
	movups	%xmm0, 1232(%rbx)
	movups	%xmm0, 1248(%rbx)
	movups	%xmm0, 1264(%rbx)
	movb	$34, 1058(%rbx)
	movb	$92, 1116(%rbx)
	movb	$47, 1071(%rbx)
	movb	$8, 1122(%rbx)
	movw	$29961, 1140(%rbx)      # imm = 0x7509
	movb	$10, 1134(%rbx)
	movb	$12, 1126(%rbx)
	movb	$13, 1138(%rbx)
	movl	$.L.str.100, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checkstack
	leaq	-176(%rbp), %rbx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	-8(%rbx), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	lua_pushcclosure
	movq	-16(%rbx), %rdx
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_setfield
	cmpq	$0, (%rbx)
	leaq	16(%rbx), %rbx
	jne	.LBB1_1
# %bb.2:
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
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
	movl	$1, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
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
	testq	%rax, %rax
	jne	.LBB4_2
# %bb.1:
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB4_2:
	movq	%r14, %rdi
	callq	lua_gettop
	cmpl	$1, %eax
	je	.LBB4_4
# %bb.3:
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB4_4:
	cmpl	$0, 1336(%r15)
	je	.LBB4_5
# %bb.6:
	movq	%r15, %rbx
	addq	$1280, %rbx             # imm = 0x500
	movl	$0, 1292(%r15)
	jmp	.LBB4_7
.LBB4_5:
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	strbuf_init
.LBB4_7:
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	json_append_data
	movslq	12(%rbx), %rdx
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	lua_pushlstring
	cmpl	$0, 1336(%r15)
	jne	.LBB4_9
# %bb.8:
	movq	%rbx, %rdi
	callq	strbuf_free
.LBB4_9:
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
	cmpl	$1, %eax
	je	.LBB5_2
# %bb.1:
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB5_2:
	movq	%r14, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_touserdata
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB5_4
# %bb.3:
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_4:
	movq	%rbx, -72(%rbp)
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaL_checklstring
	movq	%rax, -96(%rbp)
	movl	$0, -64(%rbp)
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$2, %rdi
	jb	.LBB5_8
# %bb.5:
	cmpb	$0, (%rax)
	je	.LBB5_7
# %bb.6:
	cmpb	$0, 1(%rax)
	jne	.LBB5_8
.LBB5_7:
	movl	$.L.str.64, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
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
	movq	(%rax), %rcx
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.65, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB5_10:
	movq	-80(%rbp), %rdi
	callq	strbuf_free
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	movl	$3, %esi
	callq	json_arg_init
	movq	%rax, %r14
	leaq	1312(%rax), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	json_enum_option
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB6_1
# %bb.2:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	leaq	-96(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.98, %edx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	callq	snprintf
	testl	%r15d, %r15d
	jns	.LBB6_4
# %bb.3:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB6_4:
	movl	%r15d, 1316(%r14)
	jmp	.LBB6_5
.LBB6_1:
	movl	1316(%r14), %r15d
.LBB6_5:
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB6_6
# %bb.7:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	leaq	-96(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.98, %edx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	callq	snprintf
	testl	%r15d, %r15d
	jns	.LBB6_9
# %bb.8:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB6_9:
	movl	%r15d, 1320(%r14)
	jmp	.LBB6_10
.LBB6_6:
	movl	1320(%r14), %r15d
.LBB6_10:
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$3, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB7_1
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	leaq	-96(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.98, %edx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	callq	snprintf
	testl	%r15d, %r15d
	jg	.LBB7_4
# %bb.3:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB7_4:
	movl	%r15d, 1324(%r14)
	jmp	.LBB7_5
.LBB7_1:
	movl	1324(%r14), %r15d
.LBB7_5:
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB8_1
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	leaq	-96(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.98, %edx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	callq	snprintf
	testl	%r15d, %r15d
	jg	.LBB8_4
# %bb.3:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB8_4:
	movl	%r15d, 1344(%r14)
	jmp	.LBB8_5
.LBB8_1:
	movl	1344(%r14), %r15d
.LBB8_5:
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	json_arg_init
	movq	%rax, %r14
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB9_1
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkinteger
	movq	%rax, %r15
	leaq	-96(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.98, %edx
	movl	$1, %ecx
	movl	$14, %r8d
	xorl	%eax, %eax
	callq	snprintf
	leal	-1(%r15), %eax
	cmpl	$14, %eax
	jb	.LBB9_4
# %bb.3:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB9_4:
	movl	%r15d, 1332(%r14)
	jmp	.LBB9_5
.LBB9_1:
	movl	1332(%r14), %r15d
.LBB9_5:
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	cmpl	%eax, %r15d
	je	.LBB10_4
# %bb.1:
	addq	$1280, %rbx             # imm = 0x500
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
	cmpl	$5, %eax
	ja	.LBB13_78
# %bb.1:
	movl	%eax, %eax
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_4:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_toboolean
	movl	12(%r13), %esi
	movl	%esi, %ecx
	notl	%ecx
	addl	8(%r13), %ecx
	testl	%eax, %eax
	je	.LBB13_9
# %bb.5:
	cmpl	$3, %ecx
	jg	.LBB13_7
# %bb.6:
	addl	$4, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_7:
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.17, %esi
	jmp	.LBB13_8
.LBB13_77:
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	testq	%rax, %rax
	je	.LBB13_74
.LBB13_78:
	cmpl	$0, 1336(%r15)
	jne	.LBB13_80
# %bb.79:
	movq	%r13, %rdi
	callq	strbuf_free
.LBB13_80:
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
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_error              # TAILCALL
.LBB13_74:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	cmpl	$3, %eax
	jg	.LBB13_76
# %bb.75:
	addl	$4, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_76:
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.11, %esi
.LBB13_8:
	movl	$4, %edx
	callq	memcpy
	addl	$4, 12(%r13)
	jmp	.LBB13_46
.LBB13_3:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	$-1, %ecx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	json_append_number      # TAILCALL
.LBB13_2:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$-1, %edx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	json_append_string      # TAILCALL
.LBB13_12:
	leal	1(%rbx), %r12d
	cmpl	%ebx, 1324(%r15)
	jle	.LBB13_14
# %bb.13:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	lua_checkstack
	testl	%eax, %eax
	jne	.LBB13_17
.LBB13_14:
	cmpl	$0, 1336(%r15)
	jne	.LBB13_16
# %bb.15:
	movq	%r13, %rdi
	callq	strbuf_free
.LBB13_16:
	movl	$.L.str.59, %esi
	movq	%r14, %rdi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	luaL_error
.LBB13_17:
	movq	%r14, %rdi
	callq	lua_pushnil
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	je	.LBB13_18
# %bb.19:                               # %.preheader
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB13_20
	.p2align	4, 0x90
.LBB13_26:                              #   in Loop: Header=BB13_20 Depth=1
	addl	$1, %ebx
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB13_27
.LBB13_20:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_type
	cmpl	$3, %eax
	jne	.LBB13_47
# %bb.21:                               #   in Loop: Header=BB13_20 Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_tonumber
	ucomisd	.LCPI13_1, %xmm0
	jne	.LBB13_22
	jnp	.LBB13_47
.LBB13_22:                              #   in Loop: Header=BB13_20 Depth=1
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI13_0(%rip), %xmm1
	jb	.LBB13_47
# %bb.23:                               #   in Loop: Header=BB13_20 Depth=1
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_47
	jp	.LBB13_47
# %bb.24:                               #   in Loop: Header=BB13_20 Depth=1
	movq	%r12, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_26
# %bb.25:                               #   in Loop: Header=BB13_20 Depth=1
	cvttsd2si	%xmm1, %r12d
	jmp	.LBB13_26
.LBB13_47:
	movq	%r14, %rdi
	movl	$-3, %esi
	callq	lua_settop
	jmp	.LBB13_48
.LBB13_9:
	cmpl	$4, %ecx
	jg	.LBB13_11
# %bb.10:
	addl	$5, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_11:
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.18, %esi
	movl	$5, %edx
	callq	memcpy
	addl	$5, 12(%r13)
	jmp	.LBB13_46
.LBB13_18:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB13_27:
	movl	1316(%r15), %eax
	testl	%eax, %eax
	movq	%r12, %rdx
	jle	.LBB13_34
# %bb.28:
	imull	%ebx, %eax
	cmpl	%eax, %edx
	jle	.LBB13_34
# %bb.29:
	cmpl	1320(%r15), %edx
	jle	.LBB13_34
# %bb.30:
	cmpl	$0, 1312(%r15)
	jne	.LBB13_48
# %bb.31:
	cmpl	$0, 1336(%r15)
	jne	.LBB13_33
# %bb.32:
	movq	%r13, %rdi
	callq	strbuf_free
.LBB13_33:
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
	jmp	.LBB13_48
.LBB13_34:
	testl	%edx, %edx
	jle	.LBB13_48
# %bb.35:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	movq	%r15, -64(%rbp)         # 8-byte Spill
	jg	.LBB13_37
# %bb.36:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movq	%r12, %rdx
	movl	12(%r13), %esi
.LBB13_37:
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$91, (%rax,%rcx)
	negl	%edx
	xorl	%r15d, %r15d
	movl	$1, %ebx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_38
	.p2align	4, 0x90
.LBB13_41:                              #   in Loop: Header=BB13_38 Depth=1
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$44, (%rax,%rcx)
	movl	%r15d, %r12d
.LBB13_42:                              #   in Loop: Header=BB13_38 Depth=1
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
	movq	-56(%rbp), %rdx         # 8-byte Reload
	leal	(%rdx,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	movl	%r12d, %r15d
	cmpl	$1, %eax
	je	.LBB13_43
.LBB13_38:                              # =>This Inner Loop Header: Depth=1
	movl	$1, %r12d
	testl	%r15d, %r15d
	je	.LBB13_42
# %bb.39:                               #   in Loop: Header=BB13_38 Depth=1
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_41
# %bb.40:                               #   in Loop: Header=BB13_38 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
	jmp	.LBB13_41
.LBB13_48:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_50
# %bb.49:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_50:
	movl	-44(%rbp), %r12d        # 4-byte Reload
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$123, (%rax,%rcx)
	movq	%r14, %rdi
	callq	lua_pushnil
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB13_71
# %bb.51:
	xorl	%ebx, %ebx
	jmp	.LBB13_52
	.p2align	4, 0x90
.LBB13_67:                              #   in Loop: Header=BB13_52 Depth=1
	cmpl	$0, 1336(%r15)
	je	.LBB13_68
.LBB13_69:                              #   in Loop: Header=BB13_52 Depth=1
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
.LBB13_70:                              #   in Loop: Header=BB13_52 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	json_append_data
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_next
	testl	%eax, %eax
	je	.LBB13_71
.LBB13_52:                              # =>This Inner Loop Header: Depth=1
	testl	%ebx, %ebx
	je	.LBB13_53
# %bb.54:                               #   in Loop: Header=BB13_52 Depth=1
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_56
# %bb.55:                               #   in Loop: Header=BB13_52 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_56:                              #   in Loop: Header=BB13_52 Depth=1
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$44, (%rax,%rcx)
	jmp	.LBB13_57
	.p2align	4, 0x90
.LBB13_53:                              #   in Loop: Header=BB13_52 Depth=1
	movl	$1, %ebx
.LBB13_57:                              #   in Loop: Header=BB13_52 Depth=1
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_type
	cmpl	$4, %eax
	je	.LBB13_64
# %bb.58:                               #   in Loop: Header=BB13_52 Depth=1
	cmpl	$3, %eax
	jne	.LBB13_67
# %bb.59:                               #   in Loop: Header=BB13_52 Depth=1
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_61
# %bb.60:                               #   in Loop: Header=BB13_52 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_61:                              #   in Loop: Header=BB13_52 Depth=1
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$34, (%rax,%rcx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	$-2, %ecx
	callq	json_append_number
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	cmpl	$1, %eax
	jg	.LBB13_63
# %bb.62:                               #   in Loop: Header=BB13_52 Depth=1
	addl	$2, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_63:                              #   in Loop: Header=BB13_52 Depth=1
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	movl	$.L.str.61, %esi
	movl	$2, %edx
	callq	memcpy
	addl	$2, 12(%r13)
	jmp	.LBB13_70
	.p2align	4, 0x90
.LBB13_64:                              #   in Loop: Header=BB13_52 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$-2, %edx
	callq	json_append_string
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_66
# %bb.65:                               #   in Loop: Header=BB13_52 Depth=1
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_66:                              #   in Loop: Header=BB13_52 Depth=1
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$58, (%rax,%rcx)
	jmp	.LBB13_70
.LBB13_68:                              #   in Loop: Header=BB13_52 Depth=1
	movq	%r13, %rdi
	callq	strbuf_free
	jmp	.LBB13_69
.LBB13_71:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_73
# %bb.72:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_73:
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$125, (%rax,%rcx)
	jmp	.LBB13_46
.LBB13_43:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	testl	%eax, %eax
	jg	.LBB13_45
# %bb.44:
	addl	$1, %esi
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB13_45:
	movq	(%r13), %rax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%r13)
	movslq	%esi, %rcx
	movb	$93, (%rax,%rcx)
.LBB13_46:
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
	.quad	.LBB13_74
	.quad	.LBB13_4
	.quad	.LBB13_77
	.quad	.LBB13_3
	.quad	.LBB13_2
	.quad	.LBB13_12
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
	leal	(%rax,%rax,2), %eax
	leal	(%rax,%rax), %esi
	addl	$2, %esi
	movl	12(%r15), %eax
	movl	%eax, %ecx
	notl	%ecx
	addl	8(%r15), %ecx
	cmpl	%esi, %ecx
	jge	.LBB14_2
# %bb.1:
	addl	%eax, %esi
	movq	%r15, %rdi
	callq	strbuf_resize
	movl	12(%r15), %eax
.LBB14_2:
	movq	(%r15), %rcx
	leal	1(%rax), %edx
	movl	%edx, 12(%r15)
	cltq
	movb	$34, (%rcx,%rax)
	cmpq	$0, -32(%rbp)
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
.LBB14_7:                               #   in Loop: Header=BB14_4 Depth=1
	addq	$1, %rbx
	cmpq	%rbx, -32(%rbp)
	jbe	.LBB14_8
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rbx), %eax
	movq	char2escape(,%rax,8), %rsi
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
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	%ecx, %esi
	callq	lua_tonumber
	movl	1328(%r14), %ebx
	testl	%ebx, %ebx
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	je	.LBB15_1
# %bb.9:
	callq	__fpclassifyd
	cmpl	$1, %ebx
	jne	.LBB15_14
# %bb.10:
	testl	%eax, %eax
	jne	.LBB15_6
# %bb.11:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	cmpl	$2, %eax
	jg	.LBB15_13
# %bb.12:
	addl	$3, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB15_13:
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	addq	$12, %r13
	movl	$.L.str.58, %esi
	movl	$3, %edx
	callq	memcpy
	movl	$3, %eax
	jmp	.LBB15_19
.LBB15_1:
	callq	__fpclassifyd
	cmpl	$1, %eax
	je	.LBB15_3
# %bb.2:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	jne	.LBB15_6
.LBB15_3:
	cmpl	$0, 1336(%r14)
	jne	.LBB15_5
# %bb.4:
	movq	%r13, %rdi
	callq	strbuf_free
.LBB15_5:
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	lua_type
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	lua_typename
	movl	$.L.str.63, %esi
	movl	$.L.str.57, %ecx
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB15_6
.LBB15_14:
	cmpl	$1, %eax
	je	.LBB15_16
# %bb.15:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB15_16
.LBB15_6:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	cmpl	$31, %eax
	jg	.LBB15_8
# %bb.7:
	addl	$32, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB15_8:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	addq	$12, %r13
	movl	1332(%r14), %esi
	callq	fpconv_g_fmt
	jmp	.LBB15_19
.LBB15_16:
	movl	12(%r13), %esi
	movl	%esi, %eax
	notl	%eax
	addl	8(%r13), %eax
	cmpl	$3, %eax
	jg	.LBB15_18
# %bb.17:
	addl	$4, %esi
	movq	%r13, %rdi
	callq	strbuf_resize
	movl	12(%r13), %esi
.LBB15_18:
	movslq	%esi, %rdi
	addq	(%r13), %rdi
	addq	$12, %r13
	movl	$.L.str.11, %esi
	movl	$4, %edx
	callq	memcpy
	movl	$4, %eax
.LBB15_19:
	addl	%eax, (%r13)
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
	movq	%rdi, %r15
	movq	8(%rdi), %rbx
	movq	24(%rdi), %r13
	movzbl	(%rbx), %eax
	movl	(%r13,%rax,4), %ecx
	movl	%ecx, (%rsi)
	cmpl	$11, %ecx
	jne	.LBB16_4
# %bb.1:                                # %.preheader
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, 8(%r15)
	movzbl	(%rbx), %eax
	movl	(%r13,%rax,4), %ecx
	movl	%ecx, (%r14)
	addq	$1, %rbx
	cmpl	$11, %ecx
	je	.LBB16_2
# %bb.3:                                # %.loopexit
	addq	$-1, %rbx
.LBB16_4:
	movq	(%r15), %r12
	movl	%ebx, %edx
	subl	%r12d, %edx
	movl	%edx, 4(%r14)
	cmpl	$10, %ecx
	je	.LBB16_90
# %bb.5:
	cmpl	$13, %ecx
	je	.LBB16_9
# %bb.6:
	cmpl	$12, %ecx
	jne	.LBB16_56
# %bb.7:
	movl	$12, (%r14)
	subl	%r12d, %ebx
.LBB16_8:
	movl	%ebx, 4(%r14)
	movq	$.L.str.66, 8(%r14)
	jmp	.LBB16_90
.LBB16_9:
	cmpb	$45, %al
	je	.LBB16_58
# %bb.10:
	cmpb	$34, %al
	jne	.LBB16_57
# %bb.11:
	cmpb	$34, (%rbx)
	jne	.LBB16_96
# %bb.12:
	addq	$1, %rbx
	movq	%rbx, 8(%r15)
	movq	16(%r15), %rax
	movl	$0, 12(%rax)
	jmp	.LBB16_14
	.p2align	4, 0x90
.LBB16_13:                              #   in Loop: Header=BB16_14 Depth=1
	movq	16(%r15), %rcx
	movq	(%rcx), %rdx
	movslq	12(%rcx), %rsi
	leal	1(%rsi), %edi
	movl	%edi, 12(%rcx)
	movb	%al, (%rdx,%rsi)
	movq	8(%r15), %rbx
	addq	$1, %rbx
	movq	%rbx, 8(%r15)
.LBB16_14:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpb	$92, %al
	je	.LBB16_17
# %bb.15:                               #   in Loop: Header=BB16_14 Depth=1
	cmpb	$34, %al
	je	.LBB16_84
# %bb.16:                               #   in Loop: Header=BB16_14 Depth=1
	testb	%al, %al
	jne	.LBB16_13
	jmp	.LBB16_85
	.p2align	4, 0x90
.LBB16_17:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	1(%rbx), %eax
	movzbl	1024(%r13,%rax), %eax
	cmpb	$117, %al
	je	.LBB16_20
# %bb.18:                               #   in Loop: Header=BB16_14 Depth=1
	testb	%al, %al
	je	.LBB16_86
# %bb.19:                               #   in Loop: Header=BB16_14 Depth=1
	addq	$1, %rbx
	movq	%rbx, 8(%r15)
	jmp	.LBB16_13
	.p2align	4, 0x90
.LBB16_20:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	2(%rbx), %r8d
	leal	-48(%r8), %eax
	movl	$-48, %ecx
	cmpb	$10, %al
	jae	.LBB16_22
# %bb.21:                               #   in Loop: Header=BB16_14 Depth=1
	movl	$-48, %r10d
	jmp	.LBB16_23
.LBB16_22:                              #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %r8b
	leal	-97(%r8), %eax
	movl	$-87, %r10d
	cmpb	$5, %al
	ja	.LBB16_77
.LBB16_23:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	3(%rbx), %r11d
	leal	-48(%r11), %eax
	cmpb	$10, %al
	jb	.LBB16_25
# %bb.24:                               #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %r11b
	leal	-97(%r11), %eax
	movl	$-87, %ecx
	cmpb	$5, %al
	ja	.LBB16_77
.LBB16_25:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	4(%rbx), %edx
	leal	-48(%rdx), %eax
	movl	$-48, %r9d
	cmpb	$10, %al
	jae	.LBB16_27
# %bb.26:                               #   in Loop: Header=BB16_14 Depth=1
	movl	$-48, %eax
	jmp	.LBB16_28
.LBB16_27:                              #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %dl
	leal	-97(%rdx), %esi
	movl	$-87, %eax
	cmpb	$5, %sil
	ja	.LBB16_77
.LBB16_28:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	5(%rbx), %esi
	leal	-48(%rsi), %edi
	cmpb	$10, %dil
	jb	.LBB16_30
# %bb.29:                               #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %sil
	leal	-97(%rsi), %edi
	movl	$-87, %r9d
	cmpb	$5, %dil
	ja	.LBB16_77
.LBB16_30:                              #   in Loop: Header=BB16_14 Depth=1
	movsbl	%r8b, %edi
	addl	%edi, %r10d
	movsbl	%r11b, %edi
	addl	%edi, %ecx
	movsbl	%dl, %edx
	addl	%edx, %eax
	movsbl	%sil, %edx
	addl	%r9d, %edx
	shll	$12, %r10d
	shll	$8, %ecx
	addl	%r10d, %ecx
	shll	$4, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	js	.LBB16_77
# %bb.31:                               #   in Loop: Header=BB16_14 Depth=1
	movl	%eax, %ecx
	andl	$63488, %ecx            # imm = 0xF800
	movl	$6, %edx
	cmpl	$55296, %ecx            # imm = 0xD800
	jne	.LBB16_47
# %bb.32:                               #   in Loop: Header=BB16_14 Depth=1
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB16_77
# %bb.33:                               #   in Loop: Header=BB16_14 Depth=1
	cmpb	$92, 6(%rbx)
	jne	.LBB16_77
# %bb.34:                               #   in Loop: Header=BB16_14 Depth=1
	cmpb	$117, 7(%rbx)
	jne	.LBB16_77
# %bb.35:                               #   in Loop: Header=BB16_14 Depth=1
	movzbl	8(%rbx), %r8d
	leal	-48(%r8), %edx
	movl	$-48, %r12d
	cmpb	$10, %dl
	jae	.LBB16_37
# %bb.36:                               #   in Loop: Header=BB16_14 Depth=1
	movl	$-48, %r9d
	jmp	.LBB16_38
.LBB16_37:                              #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %r8b
	leal	-97(%r8), %edx
	movl	$-87, %r9d
	cmpb	$5, %dl
	ja	.LBB16_77
.LBB16_38:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	9(%rbx), %r11d
	leal	-48(%r11), %edx
	cmpb	$10, %dl
	jb	.LBB16_40
# %bb.39:                               #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %r11b
	leal	-97(%r11), %edx
	movl	$-87, %r12d
	cmpb	$5, %dl
	ja	.LBB16_77
.LBB16_40:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	10(%rbx), %esi
	leal	-48(%rsi), %edx
	movl	$-48, %r10d
	cmpb	$10, %dl
	jae	.LBB16_42
# %bb.41:                               #   in Loop: Header=BB16_14 Depth=1
	movl	$-48, %edx
	jmp	.LBB16_43
.LBB16_42:                              #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %sil
	leal	-97(%rsi), %edi
	movl	$-87, %edx
	cmpb	$5, %dil
	ja	.LBB16_77
.LBB16_43:                              #   in Loop: Header=BB16_14 Depth=1
	movzbl	11(%rbx), %edi
	leal	-48(%rdi), %ecx
	cmpb	$10, %cl
	jb	.LBB16_45
# %bb.44:                               #   in Loop: Header=BB16_14 Depth=1
	orb	$32, %dil
	leal	-97(%rdi), %ecx
	movl	$-87, %r10d
	cmpb	$5, %cl
	ja	.LBB16_77
.LBB16_45:                              #   in Loop: Header=BB16_14 Depth=1
	movsbl	%r8b, %ecx
	addl	%ecx, %r9d
	movsbl	%r11b, %ecx
	addl	%ecx, %r12d
	movsbl	%sil, %ecx
	addl	%ecx, %edx
	movsbl	%dil, %ecx
	addl	%r10d, %ecx
	shll	$12, %r9d
	shll	$8, %r12d
	addl	%r9d, %r12d
	shll	$4, %edx
	addl	%r12d, %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	andl	$-2147419136, %ecx      # imm = 0x8000FC00
	cmpl	$56320, %ecx            # imm = 0xDC00
	jne	.LBB16_77
# %bb.46:                               #   in Loop: Header=BB16_14 Depth=1
	shll	$10, %eax
	andl	$1047552, %eax          # imm = 0xFFC00
	andl	$1023, %edx             # imm = 0x3FF
	addl	%edx, %eax
	addl	$65536, %eax            # imm = 0x10000
	movl	$12, %edx
.LBB16_47:                              #   in Loop: Header=BB16_14 Depth=1
	cmpl	$127, %eax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jg	.LBB16_49
# %bb.48:                               #   in Loop: Header=BB16_14 Depth=1
	movb	%al, -48(%rbp)
	movl	$1, %ebx
	jmp	.LBB16_55
.LBB16_49:                              #   in Loop: Header=BB16_14 Depth=1
	cmpl	$2047, %eax             # imm = 0x7FF
	jg	.LBB16_51
# %bb.50:                               #   in Loop: Header=BB16_14 Depth=1
	movl	%eax, %ecx
	shrl	$6, %ecx
	orb	$-64, %cl
	movb	%cl, -48(%rbp)
	andb	$63, %al
	orb	$-128, %al
	movb	%al, -47(%rbp)
	movl	$2, %ebx
	jmp	.LBB16_55
.LBB16_51:                              #   in Loop: Header=BB16_14 Depth=1
	cmpl	$65535, %eax            # imm = 0xFFFF
	jg	.LBB16_53
# %bb.52:                               #   in Loop: Header=BB16_14 Depth=1
	movl	%eax, %ecx
	shrl	$12, %ecx
	orb	$-32, %cl
	movb	%cl, -48(%rbp)
	movl	%eax, %ecx
	shrl	$6, %ecx
	andb	$63, %cl
	orb	$-128, %cl
	movb	%cl, -47(%rbp)
	andb	$63, %al
	orb	$-128, %al
	movb	%al, -46(%rbp)
	movl	$3, %ebx
	jmp	.LBB16_55
.LBB16_53:                              #   in Loop: Header=BB16_14 Depth=1
	cmpl	$2097151, %eax          # imm = 0x1FFFFF
	jg	.LBB16_77
# %bb.54:                               #   in Loop: Header=BB16_14 Depth=1
	movl	%eax, %ecx
	shrl	$18, %ecx
	orb	$-16, %cl
	movb	%cl, -48(%rbp)
	movl	%eax, %ecx
	shrl	$12, %ecx
	andb	$63, %cl
	orb	$-128, %cl
	movb	%cl, -47(%rbp)
	movl	%eax, %ecx
	shrl	$6, %ecx
	andb	$63, %cl
	orb	$-128, %cl
	movb	%cl, -46(%rbp)
	andb	$63, %al
	orb	$-128, %al
	movb	%al, -45(%rbp)
	movl	$4, %ebx
.LBB16_55:                              #   in Loop: Header=BB16_14 Depth=1
	movq	16(%r15), %r12
	movslq	12(%r12), %rdi
	addq	(%r12), %rdi
	movl	%ebx, %edx
	leaq	-48(%rbp), %rsi
	callq	memcpy
	addl	%ebx, 12(%r12)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	8(%r15), %rbx
	movq	%rbx, 8(%r15)
	jmp	.LBB16_14
.LBB16_56:
	addq	$1, %rbx
	movq	%rbx, 8(%r15)
	jmp	.LBB16_90
.LBB16_57:
	addb	$-48, %al
	cmpb	$9, %al
	ja	.LBB16_67
.LBB16_58:
	cmpl	$0, 1340(%r13)
	je	.LBB16_61
.LBB16_59:
	movl	$5, (%r14)
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	callq	fpconv_strtod
	movsd	%xmm0, 8(%r14)
	movq	8(%r15), %rax
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB16_78
# %bb.60:
	movq	%rcx, 8(%r15)
	jmp	.LBB16_90
.LBB16_61:
	movb	(%rbx), %al
	cmpb	$43, %al
	je	.LBB16_82
# %bb.62:
	movq	%rbx, %r13
	cmpb	$45, %al
	jne	.LBB16_64
# %bb.63:
	leaq	1(%rbx), %r13
	movb	1(%rbx), %al
.LBB16_64:
	cmpb	$48, %al
	jne	.LBB16_79
# %bb.65:
	movb	1(%r13), %al
	movl	%eax, %ecx
	orb	$32, %cl
	cmpb	$120, %cl
	je	.LBB16_82
# %bb.66:
	addb	$-48, %al
	cmpb	$10, %al
	jae	.LBB16_59
	jmp	.LBB16_82
.LBB16_67:
	movl	$.L.str.17, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB16_83
# %bb.68:
	movq	8(%r15), %rdi
	movl	$.L.str.18, %esi
	movl	$5, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB16_87
# %bb.69:
	movq	8(%r15), %rdi
	movl	$.L.str.11, %esi
	movl	$4, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB16_88
# %bb.70:
	movq	24(%r15), %rax
	cmpl	$0, 1340(%rax)
	je	.LBB16_91
# %bb.71:
	movq	8(%r15), %rbx
	movb	(%rbx), %al
	cmpb	$43, %al
	je	.LBB16_59
# %bb.72:
	movq	%rbx, %r12
	cmpb	$45, %al
	jne	.LBB16_74
# %bb.73:
	leaq	1(%rbx), %r12
	movb	1(%rbx), %al
.LBB16_74:
	cmpb	$48, %al
	jne	.LBB16_92
# %bb.75:
	movb	1(%r12), %al
	movl	%eax, %ecx
	orb	$32, %cl
	cmpb	$120, %cl
	je	.LBB16_59
# %bb.76:
	addb	$-48, %al
	cmpb	$10, %al
	jae	.LBB16_95
	jmp	.LBB16_59
.LBB16_77:
	movl	$12, (%r14)
	subl	(%r15), %ebx
	movl	%ebx, 4(%r14)
	movq	$.L.str.71, 8(%r14)
	jmp	.LBB16_90
.LBB16_78:
	movl	$12, (%r14)
	subl	(%r15), %eax
	movl	%eax, 4(%r14)
	movq	$.L.str.67, 8(%r14)
	jmp	.LBB16_90
.LBB16_79:
	cmpb	$58, %al
	jl	.LBB16_59
# %bb.80:
	movl	$.L.str.73, %esi
	movl	$3, %edx
	movq	%r13, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB16_82
# %bb.81:
	movl	$.L.str.58, %esi
	movl	$3, %edx
	movq	%r13, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB16_59
.LBB16_82:
	movl	$12, (%r14)
	subl	%r12d, %ebx
	movl	%ebx, 4(%r14)
	movq	$.L.str.67, 8(%r14)
	jmp	.LBB16_90
.LBB16_83:
	movl	$6, (%r14)
	movl	$1, 8(%r14)
	jmp	.LBB16_89
.LBB16_84:
	addq	$1, %rbx
	movq	%rbx, 8(%r15)
	movq	16(%r15), %rax
	movq	(%rax), %rcx
	movslq	12(%rax), %rax
	movb	$0, (%rcx,%rax)
	movl	$4, (%r14)
	movq	16(%r15), %rax
	movl	12(%rax), %ecx
	movl	%ecx, 16(%r14)
	movq	(%rax), %rax
	movq	%rax, 8(%r14)
	jmp	.LBB16_90
.LBB16_85:
	movl	$12, (%r14)
	subl	(%r15), %ebx
	movl	%ebx, 4(%r14)
	movq	$.L.str.70, 8(%r14)
	jmp	.LBB16_90
.LBB16_86:
	movl	$12, (%r14)
	subl	(%r15), %ebx
	movl	%ebx, 4(%r14)
	movq	$.L.str.72, 8(%r14)
	jmp	.LBB16_90
.LBB16_87:
	movl	$6, (%r14)
	movl	$0, 8(%r14)
	addq	$5, 8(%r15)
	jmp	.LBB16_90
.LBB16_88:
	movl	$7, (%r14)
.LBB16_89:
	addq	$4, 8(%r15)
.LBB16_90:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_91:
	movq	8(%r15), %rbx
	jmp	.LBB16_95
.LBB16_92:
	cmpb	$58, %al
	jl	.LBB16_95
# %bb.93:
	movl	$.L.str.73, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB16_59
# %bb.94:
	movl	$.L.str.58, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB16_59
.LBB16_95:
	movl	$12, (%r14)
	subl	(%r15), %ebx
	jmp	.LBB16_8
.LBB16_96:
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
	cmpq	$7, %rax
	ja	.LBB17_28
# %bb.1:
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_5:
	movl	32(%r12), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%r12)
	movq	24(%r12), %rcx
	cmpl	1344(%rcx), %eax
	jge	.LBB17_7
# %bb.6:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	lua_checkstack
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
.LBB17_8:
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	json_next_token
	movl	-64(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB17_29
# %bb.9:
	leaq	-56(%rbp), %rbx
	leaq	-64(%rbp), %r15
	jmp	.LBB17_10
	.p2align	4, 0x90
.LBB17_17:                              #   in Loop: Header=BB17_10 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	movl	-64(%rbp), %eax
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
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
	movq	(%rax), %rcx
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.75, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB17_12:                              #   in Loop: Header=BB17_10 Depth=1
	movq	-56(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movq	%r14, %rdi
	callq	lua_pushlstring
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	cmpl	$8, -64(%rbp)
	je	.LBB17_14
# %bb.13:                               #   in Loop: Header=BB17_10 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rbx, %rax
	movq	(%rax), %rcx
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.76, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
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
	cmpl	$9, %eax
	je	.LBB17_17
# %bb.15:                               #   in Loop: Header=BB17_10 Depth=1
	cmpl	$1, %eax
	je	.LBB17_29
# %bb.16:                               #   in Loop: Header=BB17_10 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rbx, %rax
	movq	(%rax), %rcx
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.77, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB17_17
.LBB17_28:
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	(%rbx), %eax
	movl	4(%rbx), %r8d
	addq	$8, %rbx
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%rbx, %rax
	movq	(%rax), %rcx
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.74, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_error              # TAILCALL
.LBB17_18:
	movl	32(%r12), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%r12)
	movq	24(%r12), %rcx
	cmpl	1344(%rcx), %eax
	jge	.LBB17_20
# %bb.19:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lua_checkstack
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
.LBB17_21:
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_createtable
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	json_next_token
	cmpl	$3, -64(%rbp)
	jne	.LBB17_22
.LBB17_29:
	addl	$-1, 32(%r12)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_2:
	movq	8(%rbx), %rsi
	movslq	16(%rbx), %rdx
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_pushlstring         # TAILCALL
.LBB17_27:
	movq	%r14, %rdi
	xorl	%esi, %esi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_pushlightuserdata   # TAILCALL
.LBB17_3:
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_pushnumber          # TAILCALL
.LBB17_4:
	movl	8(%rbx), %esi
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_pushboolean         # TAILCALL
.LBB17_22:
	movl	$1, %ebx
	leaq	-56(%rbp), %r13
	leaq	-64(%rbp), %r15
	jmp	.LBB17_23
	.p2align	4, 0x90
.LBB17_26:                              #   in Loop: Header=BB17_23 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	json_next_token
	addl	$1, %ebx
.LBB17_23:                              # =>This Inner Loop Header: Depth=1
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
	cmpl	$9, %eax
	je	.LBB17_26
# %bb.24:                               #   in Loop: Header=BB17_23 Depth=1
	cmpl	$3, %eax
	je	.LBB17_29
# %bb.25:                               #   in Loop: Header=BB17_23 Depth=1
	movq	16(%r12), %rdi
	callq	strbuf_free
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %r8d
	cmpq	$12, %rax
	leaq	json_token_type_name(,%rax,8), %rax
	cmoveq	%r13, %rax
	movq	(%rax), %rcx
	addl	$1, %r8d
	movl	$.L.str.80, %esi
	movl	$.L.str.79, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	jmp	.LBB17_26
.Lfunc_end17:
	.size	json_process_value, .Lfunc_end17-json_process_value
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI17_0:
	.quad	.LBB17_5
	.quad	.LBB17_28
	.quad	.LBB17_18
	.quad	.LBB17_28
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4
	.quad	.LBB17_27
                                        # -- End function
	.text
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
	cmpl	%r14d, %eax
	jle	.LBB18_3
# %bb.1:
	leal	1(%r14), %esi
	movl	$.L.str.95, %edx
	movq	%rbx, %rdi
	callq	luaL_argerror
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_2:                               #   in Loop: Header=BB18_3 Depth=1
	callq	lua_pushnil
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	lua_gettop
	movq	%rbx, %rdi
	cmpl	%r14d, %eax
	jl	.LBB18_2
# %bb.4:
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_touserdata
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB18_6
# %bb.5:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB18_6:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	json_arg_init, .Lfunc_end18-json_arg_init
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	movl	$json_enum_option.bool_options, %r14d
	cmovneq	%rdx, %r14
	movl	$1, %esi
	callq	lua_type
	testl	%eax, %eax
	je	.LBB19_4
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_type
	movq	%rbx, %rdi
	movl	$1, %esi
	cmpl	$1, %eax
	jne	.LBB19_6
# %bb.2:
	callq	lua_toboolean
	jmp	.LBB19_3
.LBB19_4:
	movl	(%r15), %eax
	cmpl	$1, %eax
	jbe	.LBB19_7
.LBB19_5:
	cltq
	movq	(%r14,%rax,8), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_pushstring          # TAILCALL
.LBB19_6:
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	luaL_checkoption
.LBB19_3:
	movl	%eax, (%r15)
	cmpl	$1, %eax
	ja	.LBB19_5
.LBB19_7:
	movq	%rbx, %rdi
	movl	%eax, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_pushboolean         # TAILCALL
.Lfunc_end19:
	.size	json_enum_option, .Lfunc_end19-json_enum_option
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function json_destroy_config
	.type	json_destroy_config,@function
json_destroy_config:                    # @json_destroy_config
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	lua_touserdata
	testq	%rax, %rax
	je	.LBB20_2
# %bb.1:
	addq	$1280, %rax             # imm = 0x500
	movq	%rax, %rdi
	callq	strbuf_free
.LBB20_2:
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	json_destroy_config, .Lfunc_end20-json_destroy_config
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
	cmpl	$1, %eax
	je	.LBB21_2
# %bb.1:
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_argerror
.LBB21_2:
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
	testl	%eax, %eax
	je	.LBB21_5
# %bb.3:
	cmpl	$2, %eax
	jne	.LBB21_6
# %bb.4:
	movq	%rbx, %rdi
	callq	lua_pushnil
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_insert
	movl	$2, %r14d
.LBB21_5:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB21_6:
	movl	$.L.str.101, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaL_error              # TAILCALL
.Lfunc_end21:
	.size	json_protect_conversion, .Lfunc_end21-json_protect_conversion
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
