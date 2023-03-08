	.text
	.file	"liolib.c"
	.globl	luaopen_io              # -- Begin function luaopen_io
	.p2align	4, 0x90
	.type	luaopen_io,@function
luaopen_io:                             # @luaopen_io
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.5, %esi
	callq	luaL_newmetatable
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movl	$flib, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	luaL_register
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movl	$io_fclose, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	callq	lua_replace
	movl	$.L.str, %esi
	movl	$iolib, %edx
	movq	%rbx, %rdi
	callq	luaL_register
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movl	$io_noclose, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	callq	__getreent
	movq	8(%rax), %r15
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r14
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movq	%r15, (%r14)
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$1, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_setfield
	callq	__getreent
	movq	16(%rax), %r15
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r14
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movq	%r15, (%r14)
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$2, %edx
	callq	lua_rawseti
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_setfield
	callq	__getreent
	movq	24(%rax), %r15
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r14
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movq	%r15, (%r14)
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$-3, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	lua_createtable
	movl	$io_pclose, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	lua_pushcclosure
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setfenv
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaopen_io, .Lfunc_end0-luaopen_io
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_fclose
	.type	io_fclose,@function
io_fclose:                              # @io_fclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movl	$1, %r14d
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	%rax, %rbx
	movq	(%rax), %rdi
	callq	fclose
	movl	%eax, %r12d
	movq	$0, (%rbx)
	callq	__errno
	testl	%r12d, %r12d
	je	.LBB1_1
# %bb.2:
	movslq	(%rax), %rbx
	movq	%r15, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movl	$3, %r14d
	jmp	.LBB1_3
.LBB1_1:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB1_3:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	io_fclose, .Lfunc_end1-io_fclose
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_noclose
	.type	io_noclose,@function
io_noclose:                             # @io_noclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lua_pushnil
	movl	$.L.str.45, %esi
	movl	$26, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
	movl	$2, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	io_noclose, .Lfunc_end2-io_noclose
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_pclose
	.type	io_pclose,@function
io_pclose:                              # @io_pclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	$0, (%rax)
	callq	__errno
	movl	(%rax), %r14d
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	%r14d, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	lua_pushinteger
	movl	$3, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	io_pclose, .Lfunc_end3-io_pclose
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_close
	.type	io_close,@function
io_close:                               # @io_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_type
	cmpl	$-1, %eax
	jne	.LBB4_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$2, %edx
	callq	lua_rawgeti
.LBB4_2:
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkudata
	cmpq	$0, (%rax)
	jne	.LBB4_4
# %bb.3:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB4_4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getfenv
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_tocfunction
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	io_close, .Lfunc_end4-io_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_flush
	.type	f_flush,@function
f_flush:                                # @f_flush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.LBB5_2
# %bb.1:
	movq	%rax, %rbx
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	(%rbx), %rdi
.LBB5_2:
	callq	fflush
	movl	%eax, %ebx
	callq	__errno
	testl	%ebx, %ebx
	je	.LBB5_3
# %bb.4:
	movslq	(%rax), %rbx
	movq	%r14, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movl	$3, %ebx
	jmp	.LBB5_5
.LBB5_3:
	movl	$1, %ebx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB5_5:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	f_flush, .Lfunc_end5-f_flush
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_lines
	.type	f_lines,@function
f_lines:                                # @f_lines
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	cmpq	$0, (%rax)
	jne	.LBB6_2
# %bb.1:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB6_2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	lua_pushboolean
	movl	$io_readline, %esi
	movq	%rbx, %rdi
	movl	$2, %edx
	callq	lua_pushcclosure
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	f_lines, .Lfunc_end6-f_lines
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_read
	.type	f_read,@function
f_read:                                 # @f_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_2
# %bb.1:
	movq	%rax, %r14
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	(%r14), %rsi
.LBB7_2:
	movq	%rbx, %rdi
	movl	$2, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	g_read                  # TAILCALL
.Lfunc_end7:
	.size	f_read, .Lfunc_end7-f_read
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_seek
	.type	f_seek,@function
f_seek:                                 # @f_seek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	(%rax), %r12
	testq	%r12, %r12
	jne	.LBB8_2
# %bb.1:
	movq	%rax, %rbx
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	(%rbx), %r12
.LBB8_2:
	movl	$.L.str.26, %edx
	movl	$f_seek.modenames, %ecx
	movq	%r15, %rdi
	movl	$2, %esi
	callq	luaL_checkoption
	movl	%eax, %ebx
	movl	$3, %r14d
	movq	%r15, %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	luaL_optinteger
	movslq	%ebx, %rcx
	movl	f_seek.mode(,%rcx,4), %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	fseek
	testl	%eax, %eax
	je	.LBB8_4
# %bb.3:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r15, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movslq	%ebx, %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	jmp	.LBB8_5
.LBB8_4:
	movq	%r12, %rdi
	callq	ftell
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	lua_pushinteger
	movl	$1, %r14d
.LBB8_5:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	f_seek, .Lfunc_end8-f_seek
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_setvbuf
	.type	f_setvbuf,@function
f_setvbuf:                              # @f_setvbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_2
# %bb.1:
	movq	%rax, %r14
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	(%r14), %rbx
.LBB9_2:
	movl	$f_setvbuf.modenames, %ecx
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	luaL_checkoption
	movl	%eax, %r12d
	movl	$3, %r14d
	movl	$1024, %edx             # imm = 0x400
	movq	%r15, %rdi
	movl	$3, %esi
	callq	luaL_optinteger
	movslq	%r12d, %rcx
	movl	f_setvbuf.mode(,%rcx,4), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rcx
	callq	setvbuf
	movl	%eax, %ebx
	callq	__errno
	testl	%ebx, %ebx
	je	.LBB9_3
# %bb.4:
	movslq	(%rax), %rbx
	movq	%r15, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	jmp	.LBB9_5
.LBB9_3:
	movl	$1, %r14d
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB9_5:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	f_setvbuf, .Lfunc_end9-f_setvbuf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function f_write
	.type	f_write,@function
f_write:                                # @f_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	jne	.LBB10_2
# %bb.1:
	movq	%rax, %r14
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	(%r14), %rsi
.LBB10_2:
	movq	%rbx, %rdi
	movl	$2, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	g_write                 # TAILCALL
.Lfunc_end10:
	.size	f_write, .Lfunc_end10-f_write
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_gc
	.type	io_gc,@function
io_gc:                                  # @io_gc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	cmpq	$0, (%rax)
	je	.LBB11_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getfenv
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_tocfunction
	movq	%rbx, %rdi
	callq	*%rax
.LBB11_2:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	io_gc, .Lfunc_end11-io_gc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_tostring
	.type	io_tostring,@function
io_tostring:                            # @io_tostring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.5, %edx
	movl	$1, %esi
	callq	luaL_checkudata
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB12_1
# %bb.2:
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB12_3
.LBB12_1:
	movl	$.L.str.32, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	lua_pushlstring
.LBB12_3:
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	io_tostring, .Lfunc_end12-io_tostring
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_readline
	.type	io_readline,@function
io_readline:                            # @io_readline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_touserdata
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB13_2
# %bb.1:
	movl	$.L.str.20, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB13_2:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	read_line
	testb	$64, 16(%rbx)
	jne	.LBB13_7
# %bb.3:
	movl	$1, %r14d
	testl	%eax, %eax
	jne	.LBB13_6
# %bb.4:
	movq	%r15, %rdi
	movl	$-10004, %esi           # imm = 0xD8EC
	callq	lua_toboolean
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB13_6
# %bb.5:
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	lua_settop
	movq	%r15, %rdi
	movl	$-10003, %esi           # imm = 0xD8ED
	callq	lua_pushvalue
	movq	%r15, %rdi
	movl	$1, %esi
	callq	lua_getfenv
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_getfield
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_tocfunction
	movq	%r15, %rdi
	callq	*%rax
.LBB13_6:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_7:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaL_error              # TAILCALL
.Lfunc_end13:
	.size	io_readline, .Lfunc_end13-io_readline
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function read_line
	.type	read_line,@function
read_line:                              # @read_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1056, %rsp             # imm = 0x420
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	-1080(%rbp), %rbx
	movq	%rbx, %rsi
	callq	luaL_buffinit
	movq	%rbx, %rdi
	callq	luaL_prepbuffer
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$1024, %esi             # imm = 0x400
	movq	%r15, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB14_6
# %bb.1:
	leaq	-1080(%rbp), %r12
	jmp	.LBB14_2
	.p2align	4, 0x90
.LBB14_5:                               #   in Loop: Header=BB14_2 Depth=1
	addq	%rax, -1080(%rbp)
	movq	%r12, %rdi
	callq	luaL_prepbuffer
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$1024, %esi             # imm = 0x400
	movq	%r15, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB14_6
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB14_5
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	cmpb	$10, -1(%rbx,%rax)
	jne	.LBB14_5
# %bb.4:
	addq	$-1, %rax
	addq	%rax, -1080(%rbp)
	leaq	-1080(%rbp), %rdi
	callq	luaL_pushresult
	movl	$1, %eax
	jmp	.LBB14_7
.LBB14_6:
	leaq	-1080(%rbp), %rdi
	callq	luaL_pushresult
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
.LBB14_7:
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	read_line, .Lfunc_end14-read_line
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function g_read
	.type	g_read,@function
g_read:                                 # @g_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1080, %rsp             # imm = 0x438
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	lua_gettop
	andb	$-97, 16(%r12)
	cmpl	$1, %eax
	movq	%r14, -72(%rbp)         # 8-byte Spill
	jne	.LBB15_2
# %bb.1:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	read_line
	leal	1(%r14), %r13d
	jmp	.LBB15_32
.LBB15_2:
	movl	%eax, %ebx
	leal	19(%rbx), %esi
	movl	$.L.str.21, %edx
	movq	%r15, %rdi
	callq	luaL_checkstack
	addl	$-2, %ebx
	movq	%r14, %rcx
	leaq	-1120(%rbp), %r14
	movl	%ecx, %r13d
	movq	%r15, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB15_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_23 Depth 2
                                        #     Child Loop BB15_7 Depth 2
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	lua_type
	cmpl	$3, %eax
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jne	.LBB15_13
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	movq	%r15, %rdi
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movl	%r13d, %esi
	callq	lua_tointeger
	movq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB15_5
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=1
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaL_buffinit
	movl	$1024, %r13d            # imm = 0x400
	.p2align	4, 0x90
.LBB15_7:                               #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	luaL_prepbuffer
	cmpq	%r15, %r13
	cmovaq	%r15, %r13
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	fread
	addq	%rax, -1120(%rbp)
	subq	%rax, %r15
	cmpq	%r13, %rax
	jne	.LBB15_9
# %bb.8:                                #   in Loop: Header=BB15_7 Depth=2
	testq	%r15, %r15
	jne	.LBB15_7
.LBB15_9:                               #   in Loop: Header=BB15_3 Depth=1
	movq	%r14, %rdi
	callq	luaL_pushresult
	testq	%r15, %r15
	je	.LBB15_10
# %bb.11:                               #   in Loop: Header=BB15_3 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_objlen
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB15_30
	.p2align	4, 0x90
.LBB15_13:                              #   in Loop: Header=BB15_3 Depth=1
	movq	%r15, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB15_15
# %bb.14:                               #   in Loop: Header=BB15_3 Depth=1
	cmpb	$42, (%r15)
	je	.LBB15_16
.LBB15_15:                              #   in Loop: Header=BB15_3 Depth=1
	movl	$.L.str.22, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	luaL_argerror
.LBB15_16:                              #   in Loop: Header=BB15_3 Depth=1
	movsbl	1(%r15), %eax
	cmpl	$97, %eax
	je	.LBB15_22
# %bb.17:                               #   in Loop: Header=BB15_3 Depth=1
	cmpl	$108, %eax
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB15_21
# %bb.18:                               #   in Loop: Header=BB15_3 Depth=1
	cmpl	$110, %eax
	jne	.LBB15_28
# %bb.19:                               #   in Loop: Header=BB15_3 Depth=1
	movl	$.L.str.24, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	jne	.LBB15_29
# %bb.20:                               #   in Loop: Header=BB15_3 Depth=1
	movsd	-1120(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	lua_pushnumber
	movl	$1, %eax
	jmp	.LBB15_30
.LBB15_5:                               #   in Loop: Header=BB15_3 Depth=1
	movq	%r12, %rdi
	callq	getc
	movl	%eax, %r15d
	movl	%eax, %edi
	movq	%r12, %rsi
	callq	ungetc
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lua_pushlstring
	xorl	%eax, %eax
	cmpl	$-1, %r15d
	setne	%al
	movq	%rbx, %r15
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB15_30
.LBB15_22:                              #   in Loop: Header=BB15_3 Depth=1
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	luaL_buffinit
	movq	$-1, %r15
	movl	$1024, %ebx             # imm = 0x400
	.p2align	4, 0x90
.LBB15_23:                              #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	luaL_prepbuffer
	cmpq	%r15, %rbx
	cmovaq	%r15, %rbx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	fread
	addq	%rax, -1120(%rbp)
	subq	%rax, %r15
	cmpq	%rbx, %rax
	jne	.LBB15_25
# %bb.24:                               #   in Loop: Header=BB15_23 Depth=2
	testq	%r15, %r15
	jne	.LBB15_23
.LBB15_25:                              #   in Loop: Header=BB15_3 Depth=1
	movq	%r14, %rdi
	callq	luaL_pushresult
	testq	%r15, %r15
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB15_27
# %bb.26:                               #   in Loop: Header=BB15_3 Depth=1
	movq	%r15, %rdi
	movl	$-1, %esi
	callq	lua_objlen
.LBB15_27:                              #   in Loop: Header=BB15_3 Depth=1
	movl	$1, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB15_30
.LBB15_21:                              #   in Loop: Header=BB15_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	read_line
	jmp	.LBB15_30
.LBB15_10:                              #   in Loop: Header=BB15_3 Depth=1
	movl	$1, %eax
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB15_30
.LBB15_29:                              #   in Loop: Header=BB15_3 Depth=1
	movq	%r15, %rdi
	callq	lua_pushnil
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB15_30:                              #   in Loop: Header=BB15_3 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addl	$1, %r13d
	addl	$-1, %ebx
	setb	%cl
	testl	%eax, %eax
	je	.LBB15_32
# %bb.31:                               #   in Loop: Header=BB15_3 Depth=1
	testb	%cl, %cl
	jne	.LBB15_3
.LBB15_32:
	testb	$64, 16(%r12)
	jne	.LBB15_33
# %bb.34:
	testl	%eax, %eax
	jne	.LBB15_36
# %bb.35:
	movq	%r15, %rdi
	movl	$-2, %esi
	callq	lua_settop
	movq	%r15, %rdi
	callq	lua_pushnil
.LBB15_36:
	subl	-72(%rbp), %r13d        # 4-byte Folded Reload
	jmp	.LBB15_37
.LBB15_33:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r15, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movslq	%ebx, %rsi
	movq	%r15, %rdi
	callq	lua_pushinteger
	movl	$3, %r13d
	jmp	.LBB15_37
.LBB15_28:
	movl	$.L.str.23, %edx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	luaL_argerror
	movl	%eax, %r13d
.LBB15_37:
	movl	%r13d, %eax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_read, .Lfunc_end15-g_read
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function g_write
	.type	g_write,@function
g_write:                                # @g_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	lua_gettop
	movl	%eax, %r12d
	addl	$-1, %r12d
	je	.LBB16_12
# %bb.1:
	movl	$1, %r13d
	jmp	.LBB16_5
	.p2align	4, 0x90
.LBB16_9:                               #   in Loop: Header=BB16_5 Depth=1
	xorl	%eax, %eax
.LBB16_4:                               #   in Loop: Header=BB16_5 Depth=1
	movzbl	%al, %r13d
	addl	$1, %ebx
	addl	$-1, %r12d
	je	.LBB16_10
.LBB16_5:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_type
	cmpl	$3, %eax
	jne	.LBB16_2
# %bb.6:                                #   in Loop: Header=BB16_5 Depth=1
	testl	%r13d, %r13d
	je	.LBB16_9
# %bb.7:                                #   in Loop: Header=BB16_5 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	lua_tonumber
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf
	testl	%eax, %eax
	setg	%al
	jmp	.LBB16_4
	.p2align	4, 0x90
.LBB16_2:                               #   in Loop: Header=BB16_5 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	leaq	-48(%rbp), %rdx
	callq	luaL_checklstring
	testl	%r13d, %r13d
	je	.LBB16_9
# %bb.3:                                #   in Loop: Header=BB16_5 Depth=1
	movq	-48(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%r15, %rcx
	callq	fwrite
	cmpq	-48(%rbp), %rax
	sete	%al
	jmp	.LBB16_4
.LBB16_10:
	callq	__errno
	testl	%r13d, %r13d
	jne	.LBB16_13
# %bb.11:
	movslq	(%rax), %rbx
	movq	%r14, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movl	$3, %ebx
	jmp	.LBB16_14
.LBB16_12:
	callq	__errno
.LBB16_13:
	movl	$1, %ebx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB16_14:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	g_write, .Lfunc_end16-g_write
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_flush
	.type	io_flush,@function
io_flush:                               # @io_flush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$2, %edx
	callq	lua_rawgeti
	movq	%r14, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB17_2
# %bb.1:
	movl	$.L.str.39, %esi
	movl	$.L.str.36, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB17_2:
	movq	%rbx, %rdi
	callq	fflush
	movl	%eax, %ebx
	callq	__errno
	testl	%ebx, %ebx
	je	.LBB17_3
# %bb.4:
	movslq	(%rax), %rbx
	movq	%r14, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lua_pushinteger
	movl	$3, %ebx
	jmp	.LBB17_5
.LBB17_3:
	movl	$1, %ebx
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lua_pushboolean
.LBB17_5:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	io_flush, .Lfunc_end17-io_flush
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_input
	.type	io_input,@function
io_input:                               # @io_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.40, %edx
	movl	$1, %esi
	callq	g_iofile
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	io_input, .Lfunc_end18-io_input
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_lines
	.type	io_lines,@function
io_lines:                               # @io_lines
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_type
	movq	%rbx, %rdi
	testl	%eax, %eax
	jle	.LBB19_1
# %bb.4:
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r15
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB19_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
.LBB19_6:
	movq	%rbx, %rdi
	callq	lua_gettop
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	movl	$1, %esi
	jmp	.LBB19_7
.LBB19_1:
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$1, %edx
	callq	lua_rawgeti
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkudata
	cmpq	$0, (%rax)
	jne	.LBB19_3
# %bb.2:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB19_3:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
	movq	%rbx, %rdi
	xorl	%esi, %esi
.LBB19_7:
	callq	lua_pushboolean
	movl	$io_readline, %esi
	movq	%rbx, %rdi
	movl	$2, %edx
	callq	lua_pushcclosure
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	io_lines, .Lfunc_end19-io_lines
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_open
	.type	io_open,@function
io_open:                                # @io_open
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r13
	movl	$1, %r15d
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movl	$.L.str.40, %edx
	movq	%r13, %rdi
	movl	$2, %esi
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movq	%rax, %r12
	movl	$8, %esi
	movq	%r13, %rdi
	callq	lua_newuserdata
	movq	%rax, %rbx
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%r13, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	fopen
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB20_5
# %bb.1:
	callq	__errno
	movl	(%rax), %eax
	movslq	%eax, %r15
	movq	%r13, %rdi
	callq	lua_pushnil
	movl	%r15d, %edi
	callq	strerror
	testq	%r14, %r14
	je	.LBB20_3
# %bb.2:
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB20_4
.LBB20_3:
	movl	$.L.str.19, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
.LBB20_4:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	lua_pushinteger
	movl	$3, %r15d
.LBB20_5:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	io_open, .Lfunc_end20-io_open
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_output
	.type	io_output,@function
io_output:                              # @io_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.41, %edx
	movl	$2, %esi
	callq	g_iofile
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	io_output, .Lfunc_end21-io_output
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_popen
	.type	io_popen,@function
io_popen:                               # @io_popen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	callq	luaL_checklstring
	movq	%rax, %r14
	movl	$.L.str.40, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%ecx, %ecx
	callq	luaL_optlstring
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r15
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
	movq	$0, (%r15)
	callq	__errno
	movl	(%rax), %eax
	movslq	%eax, %r15
	movq	%rbx, %rdi
	callq	lua_pushnil
	movl	%r15d, %edi
	callq	strerror
	testq	%r14, %r14
	je	.LBB22_2
# %bb.1:
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	jmp	.LBB22_3
.LBB22_2:
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
.LBB22_3:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lua_pushinteger
	movl	$3, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	io_popen, .Lfunc_end22-io_popen
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_read
	.type	io_read,@function
io_read:                                # @io_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$1, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	movq	(%rax), %r14
	testq	%r14, %r14
	jne	.LBB23_2
# %bb.1:
	movl	$.L.str.39, %esi
	movl	$.L.str.34, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB23_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	g_read                  # TAILCALL
.Lfunc_end23:
	.size	io_read, .Lfunc_end23-io_read
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_tmpfile
	.type	io_tmpfile,@function
io_tmpfile:                             # @io_tmpfile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$8, %esi
	callq	lua_newuserdata
	movq	%rax, %rbx
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%r14, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	callq	tmpfile
	movq	%rax, %rcx
	movq	%rax, (%rbx)
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB24_2
# %bb.1:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r14, %rdi
	callq	lua_pushnil
	movl	%ebx, %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	lua_pushinteger
	movl	$3, %eax
.LBB24_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	io_tmpfile, .Lfunc_end24-io_tmpfile
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_type
	.type	io_type,@function
io_type:                                # @io_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	luaL_checkany
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_touserdata
	movq	%rax, %r14
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	testq	%r14, %r14
	je	.LBB25_3
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_getmetatable
	testl	%eax, %eax
	je	.LBB25_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$-2, %esi
	movl	$-1, %edx
	callq	lua_rawequal
	testl	%eax, %eax
	je	.LBB25_3
# %bb.4:
	cmpq	$0, (%r14)
	je	.LBB25_5
# %bb.6:
	movl	$.L.str.44, %esi
	movl	$4, %edx
	jmp	.LBB25_7
.LBB25_3:
	movq	%rbx, %rdi
	callq	lua_pushnil
	jmp	.LBB25_8
.LBB25_5:
	movl	$.L.str.43, %esi
	movl	$11, %edx
.LBB25_7:
	movq	%rbx, %rdi
	callq	lua_pushlstring
.LBB25_8:
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	io_type, .Lfunc_end25-io_type
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function io_write
	.type	io_write,@function
io_write:                               # @io_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	$2, %edx
	callq	lua_rawgeti
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	lua_touserdata
	movq	(%rax), %r14
	testq	%r14, %r14
	jne	.LBB26_2
# %bb.1:
	movl	$.L.str.39, %esi
	movl	$.L.str.36, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB26_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	g_write                 # TAILCALL
.Lfunc_end26:
	.size	io_write, .Lfunc_end26-io_write
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function g_iofile
	.type	g_iofile,@function
g_iofile:                               # @g_iofile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	lua_type
	testl	%eax, %eax
	jle	.LBB27_8
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	testq	%rax, %rax
	je	.LBB27_4
# %bb.2:
	movq	%rax, %r15
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	lua_newuserdata
	movq	%rax, %r13
	movq	$0, (%rax)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$-10000, %esi           # imm = 0xD8F0
	callq	lua_getfield
	movq	%rbx, %rdi
	movl	$-2, %esi
	callq	lua_setmetatable
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	fopen
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB27_7
# %bb.3:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	lua_pushfstring
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	lua_tolstring
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	luaL_argerror
	jmp	.LBB27_7
.LBB27_4:
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaL_checkudata
	cmpq	$0, (%rax)
	jne	.LBB27_6
# %bb.5:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	luaL_error
.LBB27_6:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lua_pushvalue
.LBB27_7:
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	%r14d, %edx
	callq	lua_rawseti
.LBB27_8:
	movq	%rbx, %rdi
	movl	$-10001, %esi           # imm = 0xD8EF
	movl	%r14d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	lua_rawgeti             # TAILCALL
.Lfunc_end27:
	.size	g_iofile, .Lfunc_end27-g_iofile
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"io"
	.size	.L.str, 3

	.type	iolib,@object           # @iolib
	.section	.rodata,"a",@progbits
	.p2align	4
iolib:
	.quad	.L.str.7
	.quad	io_close
	.quad	.L.str.8
	.quad	io_flush
	.quad	.L.str.34
	.quad	io_input
	.quad	.L.str.9
	.quad	io_lines
	.quad	.L.str.35
	.quad	io_open
	.quad	.L.str.36
	.quad	io_output
	.quad	.L.str.4
	.quad	io_popen
	.quad	.L.str.10
	.quad	io_read
	.quad	.L.str.37
	.quad	io_tmpfile
	.quad	.L.str.38
	.quad	io_type
	.quad	.L.str.13
	.quad	io_write
	.zero	16
	.size	iolib, 192

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"stdin"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"stdout"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"stderr"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"popen"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FILE*"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"__index"
	.size	.L.str.6, 8

	.type	flib,@object            # @flib
	.section	.rodata,"a",@progbits
	.p2align	4
flib:
	.quad	.L.str.7
	.quad	io_close
	.quad	.L.str.8
	.quad	f_flush
	.quad	.L.str.9
	.quad	f_lines
	.quad	.L.str.10
	.quad	f_read
	.quad	.L.str.11
	.quad	f_seek
	.quad	.L.str.12
	.quad	f_setvbuf
	.quad	.L.str.13
	.quad	f_write
	.quad	.L.str.14
	.quad	io_gc
	.quad	.L.str.15
	.quad	io_tostring
	.zero	16
	.size	flib, 160

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"close"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"flush"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"lines"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"read"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"seek"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"setvbuf"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"write"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"__gc"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"__tostring"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"attempt to use a closed file"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"__close"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: %s"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"file is already closed"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"too many arguments"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"invalid option"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"invalid format"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%lf"
	.size	.L.str.24, 4

	.type	f_seek.mode,@object     # @f_seek.mode
	.section	.rodata,"a",@progbits
	.p2align	2
f_seek.mode:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.size	f_seek.mode, 12

	.type	f_seek.modenames,@object # @f_seek.modenames
	.p2align	4
f_seek.modenames:
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	0
	.size	f_seek.modenames, 32

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"set"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"cur"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"end"
	.size	.L.str.27, 4

	.type	f_setvbuf.mode,@object  # @f_setvbuf.mode
	.section	.rodata,"a",@progbits
	.p2align	2
f_setvbuf.mode:
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	f_setvbuf.mode, 12

	.type	f_setvbuf.modenames,@object # @f_setvbuf.modenames
	.p2align	4
f_setvbuf.modenames:
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	0
	.size	f_setvbuf.modenames, 32

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"no"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"full"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"line"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%.14g"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"file (closed)"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"file (%p)"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"input"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"open"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"output"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"tmpfile"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"type"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"standard %s file is closed"
	.size	.L.str.39, 27

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"r"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"w"
	.size	.L.str.41, 2

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"'popen' not supported"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"closed file"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"file"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"cannot close standard file"
	.size	.L.str.45, 27

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
