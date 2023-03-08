	.text
	.file	"strerror.c"
	.globl	_strerror_r             # -- Begin function _strerror_r
	.p2align	4, 0x90
	.type	_strerror_r,@function
_strerror_r:                            # @_strerror_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %r8
	cmpl	$143, %esi
	ja	.LBB0_96
# %bb.1:
	movl	$.L.str, %eax
	movl	%esi, %edi
	jmpq	*.LJTI0_0(,%rdi,8)
.LBB0_2:
	movl	$.L.str.1, %eax
	popq	%rbp
	retq
.LBB0_3:
	movl	$.L.str.2, %eax
	popq	%rbp
	retq
.LBB0_4:
	movl	$.L.str.3, %eax
	popq	%rbp
	retq
.LBB0_5:
	movl	$.L.str.4, %eax
	popq	%rbp
	retq
.LBB0_6:
	movl	$.L.str.5, %eax
	popq	%rbp
	retq
.LBB0_7:
	movl	$.L.str.6, %eax
	popq	%rbp
	retq
.LBB0_8:
	movl	$.L.str.7, %eax
	popq	%rbp
	retq
.LBB0_9:
	movl	$.L.str.8, %eax
	popq	%rbp
	retq
.LBB0_11:
	movl	$.L.str.10, %eax
	popq	%rbp
	retq
.LBB0_12:
	movl	$.L.str.11, %eax
	popq	%rbp
	retq
.LBB0_14:
	movl	$.L.str.13, %eax
	popq	%rbp
	retq
.LBB0_15:
	movl	$.L.str.14, %eax
	popq	%rbp
	retq
.LBB0_16:
	movl	$.L.str.15, %eax
	popq	%rbp
	retq
.LBB0_17:
	movl	$.L.str.16, %eax
	popq	%rbp
	retq
.LBB0_18:
	movl	$.L.str.17, %eax
	popq	%rbp
	retq
.LBB0_19:
	movl	$.L.str.18, %eax
	popq	%rbp
	retq
.LBB0_20:
	movl	$.L.str.19, %eax
	popq	%rbp
	retq
.LBB0_21:
	movl	$.L.str.20, %eax
	popq	%rbp
	retq
.LBB0_22:
	movl	$.L.str.21, %eax
	popq	%rbp
	retq
.LBB0_23:
	movl	$.L.str.22, %eax
	popq	%rbp
	retq
.LBB0_26:
	movl	$.L.str.25, %eax
	popq	%rbp
	retq
.LBB0_27:
	movl	$.L.str.26, %eax
	popq	%rbp
	retq
.LBB0_30:
	movl	$.L.str.29, %eax
	popq	%rbp
	retq
.LBB0_31:
	movl	$.L.str.30, %eax
	popq	%rbp
	retq
.LBB0_32:
	movl	$.L.str.31, %eax
	popq	%rbp
	retq
.LBB0_33:
	movl	$.L.str.32, %eax
	popq	%rbp
	retq
.LBB0_34:
	movl	$.L.str.33, %eax
	popq	%rbp
	retq
.LBB0_36:
	movl	$.L.str.35, %eax
	popq	%rbp
	retq
.LBB0_38:
	movl	$.L.str.37, %eax
	popq	%rbp
	retq
.LBB0_39:
	movl	$.L.str.38, %eax
	popq	%rbp
	retq
.LBB0_40:
	movl	$.L.str.39, %eax
	popq	%rbp
	retq
.LBB0_41:
	movl	$.L.str.40, %eax
	popq	%rbp
	retq
.LBB0_42:
	movl	$.L.str.41, %eax
	popq	%rbp
	retq
.LBB0_43:
	movl	$.L.str.42, %eax
	popq	%rbp
	retq
.LBB0_44:
	movl	$.L.str.43, %eax
	popq	%rbp
	retq
.LBB0_45:
	movl	$.L.str.44, %eax
	popq	%rbp
	retq
.LBB0_96:
	testq	%rcx, %rcx
	cmovneq	%rcx, %r8
	movl	%esi, %edi
	movl	%edx, %esi
	movq	%r8, %rdx
	callq	_user_strerror
	movq	%rax, %rcx
	testq	%rax, %rax
	movl	$.L.str.95, %eax
	cmovneq	%rcx, %rax
.LBB0_97:
	popq	%rbp
	retq
.LBB0_47:
	movl	$.L.str.46, %eax
	popq	%rbp
	retq
.LBB0_49:
	movl	$.L.str.48, %eax
	popq	%rbp
	retq
.LBB0_50:
	movl	$.L.str.49, %eax
	popq	%rbp
	retq
.LBB0_74:
	movl	$.L.str.73, %eax
	popq	%rbp
	retq
.LBB0_51:
	movl	$.L.str.50, %eax
	popq	%rbp
	retq
.LBB0_52:
	movl	$.L.str.51, %eax
	popq	%rbp
	retq
.LBB0_53:
	movl	$.L.str.52, %eax
	popq	%rbp
	retq
.LBB0_54:
	movl	$.L.str.53, %eax
	popq	%rbp
	retq
.LBB0_55:
	movl	$.L.str.54, %eax
	popq	%rbp
	retq
.LBB0_56:
	movl	$.L.str.55, %eax
	popq	%rbp
	retq
.LBB0_57:
	movl	$.L.str.56, %eax
	popq	%rbp
	retq
.LBB0_58:
	movl	$.L.str.57, %eax
	popq	%rbp
	retq
.LBB0_59:
	movl	$.L.str.58, %eax
	popq	%rbp
	retq
.LBB0_60:
	movl	$.L.str.59, %eax
	popq	%rbp
	retq
.LBB0_62:
	movl	$.L.str.61, %eax
	popq	%rbp
	retq
.LBB0_63:
	movl	$.L.str.62, %eax
	popq	%rbp
	retq
.LBB0_64:
	movl	$.L.str.63, %eax
	popq	%rbp
	retq
.LBB0_65:
	movl	$.L.str.64, %eax
	popq	%rbp
	retq
.LBB0_66:
	movl	$.L.str.65, %eax
	popq	%rbp
	retq
.LBB0_67:
	movl	$.L.str.66, %eax
	popq	%rbp
	retq
.LBB0_68:
	movl	$.L.str.67, %eax
	popq	%rbp
	retq
.LBB0_69:
	movl	$.L.str.68, %eax
	popq	%rbp
	retq
.LBB0_70:
	movl	$.L.str.69, %eax
	popq	%rbp
	retq
.LBB0_71:
	movl	$.L.str.70, %eax
	popq	%rbp
	retq
.LBB0_72:
	movl	$.L.str.71, %eax
	popq	%rbp
	retq
.LBB0_92:
	movl	$.L.str.91, %eax
	popq	%rbp
	retq
.LBB0_81:
	movl	$.L.str.80, %eax
	popq	%rbp
	retq
.LBB0_73:
	movl	$.L.str.72, %eax
	popq	%rbp
	retq
.LBB0_75:
	movl	$.L.str.74, %eax
	popq	%rbp
	retq
.LBB0_76:
	movl	$.L.str.75, %eax
	popq	%rbp
	retq
.LBB0_77:
	movl	$.L.str.76, %eax
	popq	%rbp
	retq
.LBB0_78:
	movl	$.L.str.77, %eax
	popq	%rbp
	retq
.LBB0_79:
	movl	$.L.str.78, %eax
	popq	%rbp
	retq
.LBB0_80:
	movl	$.L.str.79, %eax
	popq	%rbp
	retq
.LBB0_82:
	movl	$.L.str.81, %eax
	popq	%rbp
	retq
.LBB0_84:
	movl	$.L.str.83, %eax
	popq	%rbp
	retq
.LBB0_48:
	movl	$.L.str.47, %eax
	popq	%rbp
	retq
.LBB0_28:
	movl	$.L.str.27, %eax
	popq	%rbp
	retq
.LBB0_95:
	movl	$.L.str.94, %eax
	popq	%rbp
	retq
.LBB0_24:
	movl	$.L.str.23, %eax
	popq	%rbp
	retq
.LBB0_35:
	movl	$.L.str.34, %eax
	popq	%rbp
	retq
.LBB0_25:
	movl	$.L.str.24, %eax
	popq	%rbp
	retq
.LBB0_10:
	movl	$.L.str.9, %eax
	popq	%rbp
	retq
.LBB0_13:
	movl	$.L.str.12, %eax
	popq	%rbp
	retq
.LBB0_94:
	movl	$.L.str.93, %eax
	popq	%rbp
	retq
.LBB0_61:
	movl	$.L.str.60, %eax
	popq	%rbp
	retq
.LBB0_86:
	movl	$.L.str.85, %eax
	popq	%rbp
	retq
.LBB0_83:
	movl	$.L.str.82, %eax
	popq	%rbp
	retq
.LBB0_29:
	movl	$.L.str.28, %eax
	popq	%rbp
	retq
.LBB0_87:
	movl	$.L.str.86, %eax
	popq	%rbp
	retq
.LBB0_85:
	movl	$.L.str.84, %eax
	popq	%rbp
	retq
.LBB0_37:
	movl	$.L.str.36, %eax
	popq	%rbp
	retq
.LBB0_46:
	movl	$.L.str.45, %eax
	popq	%rbp
	retq
.LBB0_93:
	movl	$.L.str.92, %eax
	popq	%rbp
	retq
.LBB0_88:
	movl	$.L.str.87, %eax
	popq	%rbp
	retq
.LBB0_89:
	movl	$.L.str.88, %eax
	popq	%rbp
	retq
.LBB0_90:
	movl	$.L.str.89, %eax
	popq	%rbp
	retq
.LBB0_91:
	movl	$.L.str.90, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strerror_r, .Lfunc_end0-_strerror_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_97
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
	.quad	.LBB0_23
	.quad	.LBB0_26
	.quad	.LBB0_27
	.quad	.LBB0_30
	.quad	.LBB0_31
	.quad	.LBB0_32
	.quad	.LBB0_33
	.quad	.LBB0_34
	.quad	.LBB0_36
	.quad	.LBB0_38
	.quad	.LBB0_39
	.quad	.LBB0_40
	.quad	.LBB0_41
	.quad	.LBB0_42
	.quad	.LBB0_43
	.quad	.LBB0_44
	.quad	.LBB0_45
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_47
	.quad	.LBB0_49
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_50
	.quad	.LBB0_74
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_56
	.quad	.LBB0_57
	.quad	.LBB0_58
	.quad	.LBB0_59
	.quad	.LBB0_60
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_62
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_63
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_64
	.quad	.LBB0_65
	.quad	.LBB0_66
	.quad	.LBB0_67
	.quad	.LBB0_68
	.quad	.LBB0_69
	.quad	.LBB0_96
	.quad	.LBB0_70
	.quad	.LBB0_71
	.quad	.LBB0_72
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_92
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_81
	.quad	.LBB0_73
	.quad	.LBB0_75
	.quad	.LBB0_76
	.quad	.LBB0_77
	.quad	.LBB0_78
	.quad	.LBB0_79
	.quad	.LBB0_80
	.quad	.LBB0_82
	.quad	.LBB0_84
	.quad	.LBB0_48
	.quad	.LBB0_28
	.quad	.LBB0_95
	.quad	.LBB0_24
	.quad	.LBB0_35
	.quad	.LBB0_25
	.quad	.LBB0_10
	.quad	.LBB0_13
	.quad	.LBB0_94
	.quad	.LBB0_61
	.quad	.LBB0_86
	.quad	.LBB0_83
	.quad	.LBB0_29
	.quad	.LBB0_87
	.quad	.LBB0_85
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_37
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_96
	.quad	.LBB0_46
	.quad	.LBB0_93
	.quad	.LBB0_88
	.quad	.LBB0_89
	.quad	.LBB0_90
	.quad	.LBB0_91
                                        # -- End function
	.text
	.globl	strerror                # -- Begin function strerror
	.p2align	4, 0x90
	.type	strerror,@function
strerror:                               # @strerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movq	%rax, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_strerror_r             # TAILCALL
.Lfunc_end1:
	.size	strerror, .Lfunc_end1-strerror
                                        # -- End function
	.globl	strerror_l              # -- Begin function strerror_l
	.p2align	4, 0x90
	.type	strerror_l,@function
strerror_l:                             # @strerror_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movq	%rax, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_strerror_r             # TAILCALL
.Lfunc_end2:
	.size	strerror_l, .Lfunc_end2-strerror_l
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Success"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Not owner"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"No such file or directory"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"No such process"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Interrupted system call"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"I/O error"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"No such device or address"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Arg list too long"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Exec format error"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Socket already connected"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Bad file number"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"No children"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Destination address required"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"No more processes"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Not enough space"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Permission denied"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Bad address"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Block device required"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Device or resource busy"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"File exists"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Cross-device link"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"No such device"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Not a directory"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Host is down"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Connection already in progress"
	.size	.L.str.24, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Is a directory"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Invalid argument"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Network interface is not configured"
	.size	.L.str.27, 36

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Connection aborted by network"
	.size	.L.str.28, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Too many open files in system"
	.size	.L.str.29, 30

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"File descriptor value too large"
	.size	.L.str.30, 32

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Not a character device"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Text file busy"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"File too large"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Host is unreachable"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"No space left on device"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Not supported"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Illegal seek"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Read-only file system"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Too many links"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Broken pipe"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Mathematics argument out of domain of function"
	.size	.L.str.41, 47

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Result too large"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"No message of desired type"
	.size	.L.str.43, 27

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Identifier removed"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Illegal byte sequence"
	.size	.L.str.45, 22

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Deadlock"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Network is unreachable"
	.size	.L.str.47, 23

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"No lock"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Not a stream"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Stream ioctl timeout"
	.size	.L.str.50, 21

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"No stream resources"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Machine is not on the network"
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"No package"
	.size	.L.str.53, 11

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Resource is remote"
	.size	.L.str.54, 19

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Virtual circuit is gone"
	.size	.L.str.55, 24

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Advertise error"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Srmount error"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Communication error"
	.size	.L.str.58, 20

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Protocol error"
	.size	.L.str.59, 15

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Unknown protocol"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Multihop attempted"
	.size	.L.str.61, 19

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Bad message"
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Cannot access a needed shared library"
	.size	.L.str.63, 38

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Accessing a corrupted shared library"
	.size	.L.str.64, 37

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	".lib section in a.out corrupted"
	.size	.L.str.65, 32

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Attempting to link in more shared libraries than system limit"
	.size	.L.str.66, 62

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Cannot exec a shared library directly"
	.size	.L.str.67, 38

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Function not implemented"
	.size	.L.str.68, 25

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Directory not empty"
	.size	.L.str.69, 20

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"File or path name too long"
	.size	.L.str.70, 27

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Too many symbolic links"
	.size	.L.str.71, 24

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"No buffer space available"
	.size	.L.str.72, 26

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"No data"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Address family not supported by protocol family"
	.size	.L.str.74, 48

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Protocol wrong type for socket"
	.size	.L.str.75, 31

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Socket operation on non-socket"
	.size	.L.str.76, 31

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Protocol not available"
	.size	.L.str.77, 23

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Can't send after socket shutdown"
	.size	.L.str.78, 33

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Connection refused"
	.size	.L.str.79, 19

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Connection reset by peer"
	.size	.L.str.80, 25

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Address already in use"
	.size	.L.str.81, 23

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Address not available"
	.size	.L.str.82, 22

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Software caused connection abort"
	.size	.L.str.83, 33

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Socket is not connected"
	.size	.L.str.84, 24

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Socket type not supported"
	.size	.L.str.85, 26

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Socket is already connected"
	.size	.L.str.86, 28

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Operation canceled"
	.size	.L.str.87, 19

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"State not recoverable"
	.size	.L.str.88, 22

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Previous owner died"
	.size	.L.str.89, 20

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Streams pipe error"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Operation not supported on socket"
	.size	.L.str.91, 34

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Value too large for defined data type"
	.size	.L.str.92, 38

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Message too long"
	.size	.L.str.93, 17

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Connection timed out"
	.size	.L.str.94, 21

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.zero	1
	.size	.L.str.95, 1

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
