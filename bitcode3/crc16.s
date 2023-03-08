	.text
	.file	"crc16.c"
	.globl	crc16                   # -- Begin function crc16
	.p2align	4, 0x90
	.type	crc16,@function
crc16:                                  # @crc16
# %bb.0:
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	movl	%esi, %r8d
	andl	$1, %r8d
	cmpl	$1, %esi
	jne	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_1:
	xorl	%eax, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB0_4:
	movl	%r8d, %edx
	subl	%esi, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzwl	%ax, %eax
	movl	%eax, %esi
	shll	$8, %esi
	shrq	$8, %rax
	movzbl	(%rdi), %ecx
	xorq	%rax, %rcx
	movzwl	crc16tab(%rcx,%rcx), %eax
	xorl	%eax, %esi
	shll	$8, %eax
	movzwl	%si, %ecx
	shrq	$8, %rcx
	movzbl	1(%rdi), %esi
	addq	$2, %rdi
	xorq	%rcx, %rsi
	xorw	crc16tab(%rsi,%rsi), %ax
	addl	$2, %edx
	jne	.LBB0_5
.LBB0_6:
	testl	%r8d, %r8d
	je	.LBB0_8
# %bb.7:
	movzbl	(%rdi), %ecx
	movzwl	%ax, %edx
	shrq	$8, %rdx
	xorq	%rcx, %rdx
	shll	$8, %eax
	xorw	crc16tab(%rdx,%rdx), %ax
.LBB0_8:
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end0:
	.size	crc16, .Lfunc_end0-crc16
                                        # -- End function
	.type	crc16tab,@object        # @crc16tab
	.section	.rodata,"a",@progbits
	.p2align	4
crc16tab:
	.short	0                       # 0x0
	.short	4129                    # 0x1021
	.short	8258                    # 0x2042
	.short	12387                   # 0x3063
	.short	16516                   # 0x4084
	.short	20645                   # 0x50a5
	.short	24774                   # 0x60c6
	.short	28903                   # 0x70e7
	.short	33032                   # 0x8108
	.short	37161                   # 0x9129
	.short	41290                   # 0xa14a
	.short	45419                   # 0xb16b
	.short	49548                   # 0xc18c
	.short	53677                   # 0xd1ad
	.short	57806                   # 0xe1ce
	.short	61935                   # 0xf1ef
	.short	4657                    # 0x1231
	.short	528                     # 0x210
	.short	12915                   # 0x3273
	.short	8786                    # 0x2252
	.short	21173                   # 0x52b5
	.short	17044                   # 0x4294
	.short	29431                   # 0x72f7
	.short	25302                   # 0x62d6
	.short	37689                   # 0x9339
	.short	33560                   # 0x8318
	.short	45947                   # 0xb37b
	.short	41818                   # 0xa35a
	.short	54205                   # 0xd3bd
	.short	50076                   # 0xc39c
	.short	62463                   # 0xf3ff
	.short	58334                   # 0xe3de
	.short	9314                    # 0x2462
	.short	13379                   # 0x3443
	.short	1056                    # 0x420
	.short	5121                    # 0x1401
	.short	25830                   # 0x64e6
	.short	29895                   # 0x74c7
	.short	17572                   # 0x44a4
	.short	21637                   # 0x5485
	.short	42346                   # 0xa56a
	.short	46411                   # 0xb54b
	.short	34088                   # 0x8528
	.short	38153                   # 0x9509
	.short	58862                   # 0xe5ee
	.short	62927                   # 0xf5cf
	.short	50604                   # 0xc5ac
	.short	54669                   # 0xd58d
	.short	13907                   # 0x3653
	.short	9842                    # 0x2672
	.short	5649                    # 0x1611
	.short	1584                    # 0x630
	.short	30423                   # 0x76d7
	.short	26358                   # 0x66f6
	.short	22165                   # 0x5695
	.short	18100                   # 0x46b4
	.short	46939                   # 0xb75b
	.short	42874                   # 0xa77a
	.short	38681                   # 0x9719
	.short	34616                   # 0x8738
	.short	63455                   # 0xf7df
	.short	59390                   # 0xe7fe
	.short	55197                   # 0xd79d
	.short	51132                   # 0xc7bc
	.short	18628                   # 0x48c4
	.short	22757                   # 0x58e5
	.short	26758                   # 0x6886
	.short	30887                   # 0x78a7
	.short	2112                    # 0x840
	.short	6241                    # 0x1861
	.short	10242                   # 0x2802
	.short	14371                   # 0x3823
	.short	51660                   # 0xc9cc
	.short	55789                   # 0xd9ed
	.short	59790                   # 0xe98e
	.short	63919                   # 0xf9af
	.short	35144                   # 0x8948
	.short	39273                   # 0x9969
	.short	43274                   # 0xa90a
	.short	47403                   # 0xb92b
	.short	23285                   # 0x5af5
	.short	19156                   # 0x4ad4
	.short	31415                   # 0x7ab7
	.short	27286                   # 0x6a96
	.short	6769                    # 0x1a71
	.short	2640                    # 0xa50
	.short	14899                   # 0x3a33
	.short	10770                   # 0x2a12
	.short	56317                   # 0xdbfd
	.short	52188                   # 0xcbdc
	.short	64447                   # 0xfbbf
	.short	60318                   # 0xeb9e
	.short	39801                   # 0x9b79
	.short	35672                   # 0x8b58
	.short	47931                   # 0xbb3b
	.short	43802                   # 0xab1a
	.short	27814                   # 0x6ca6
	.short	31879                   # 0x7c87
	.short	19684                   # 0x4ce4
	.short	23749                   # 0x5cc5
	.short	11298                   # 0x2c22
	.short	15363                   # 0x3c03
	.short	3168                    # 0xc60
	.short	7233                    # 0x1c41
	.short	60846                   # 0xedae
	.short	64911                   # 0xfd8f
	.short	52716                   # 0xcdec
	.short	56781                   # 0xddcd
	.short	44330                   # 0xad2a
	.short	48395                   # 0xbd0b
	.short	36200                   # 0x8d68
	.short	40265                   # 0x9d49
	.short	32407                   # 0x7e97
	.short	28342                   # 0x6eb6
	.short	24277                   # 0x5ed5
	.short	20212                   # 0x4ef4
	.short	15891                   # 0x3e13
	.short	11826                   # 0x2e32
	.short	7761                    # 0x1e51
	.short	3696                    # 0xe70
	.short	65439                   # 0xff9f
	.short	61374                   # 0xefbe
	.short	57309                   # 0xdfdd
	.short	53244                   # 0xcffc
	.short	48923                   # 0xbf1b
	.short	44858                   # 0xaf3a
	.short	40793                   # 0x9f59
	.short	36728                   # 0x8f78
	.short	37256                   # 0x9188
	.short	33193                   # 0x81a9
	.short	45514                   # 0xb1ca
	.short	41451                   # 0xa1eb
	.short	53516                   # 0xd10c
	.short	49453                   # 0xc12d
	.short	61774                   # 0xf14e
	.short	57711                   # 0xe16f
	.short	4224                    # 0x1080
	.short	161                     # 0xa1
	.short	12482                   # 0x30c2
	.short	8419                    # 0x20e3
	.short	20484                   # 0x5004
	.short	16421                   # 0x4025
	.short	28742                   # 0x7046
	.short	24679                   # 0x6067
	.short	33721                   # 0x83b9
	.short	37784                   # 0x9398
	.short	41979                   # 0xa3fb
	.short	46042                   # 0xb3da
	.short	49981                   # 0xc33d
	.short	54044                   # 0xd31c
	.short	58239                   # 0xe37f
	.short	62302                   # 0xf35e
	.short	689                     # 0x2b1
	.short	4752                    # 0x1290
	.short	8947                    # 0x22f3
	.short	13010                   # 0x32d2
	.short	16949                   # 0x4235
	.short	21012                   # 0x5214
	.short	25207                   # 0x6277
	.short	29270                   # 0x7256
	.short	46570                   # 0xb5ea
	.short	42443                   # 0xa5cb
	.short	38312                   # 0x95a8
	.short	34185                   # 0x8589
	.short	62830                   # 0xf56e
	.short	58703                   # 0xe54f
	.short	54572                   # 0xd52c
	.short	50445                   # 0xc50d
	.short	13538                   # 0x34e2
	.short	9411                    # 0x24c3
	.short	5280                    # 0x14a0
	.short	1153                    # 0x481
	.short	29798                   # 0x7466
	.short	25671                   # 0x6447
	.short	21540                   # 0x5424
	.short	17413                   # 0x4405
	.short	42971                   # 0xa7db
	.short	47098                   # 0xb7fa
	.short	34713                   # 0x8799
	.short	38840                   # 0x97b8
	.short	59231                   # 0xe75f
	.short	63358                   # 0xf77e
	.short	50973                   # 0xc71d
	.short	55100                   # 0xd73c
	.short	9939                    # 0x26d3
	.short	14066                   # 0x36f2
	.short	1681                    # 0x691
	.short	5808                    # 0x16b0
	.short	26199                   # 0x6657
	.short	30326                   # 0x7676
	.short	17941                   # 0x4615
	.short	22068                   # 0x5634
	.short	55628                   # 0xd94c
	.short	51565                   # 0xc96d
	.short	63758                   # 0xf90e
	.short	59695                   # 0xe92f
	.short	39368                   # 0x99c8
	.short	35305                   # 0x89e9
	.short	47498                   # 0xb98a
	.short	43435                   # 0xa9ab
	.short	22596                   # 0x5844
	.short	18533                   # 0x4865
	.short	30726                   # 0x7806
	.short	26663                   # 0x6827
	.short	6336                    # 0x18c0
	.short	2273                    # 0x8e1
	.short	14466                   # 0x3882
	.short	10403                   # 0x28a3
	.short	52093                   # 0xcb7d
	.short	56156                   # 0xdb5c
	.short	60223                   # 0xeb3f
	.short	64286                   # 0xfb1e
	.short	35833                   # 0x8bf9
	.short	39896                   # 0x9bd8
	.short	43963                   # 0xabbb
	.short	48026                   # 0xbb9a
	.short	19061                   # 0x4a75
	.short	23124                   # 0x5a54
	.short	27191                   # 0x6a37
	.short	31254                   # 0x7a16
	.short	2801                    # 0xaf1
	.short	6864                    # 0x1ad0
	.short	10931                   # 0x2ab3
	.short	14994                   # 0x3a92
	.short	64814                   # 0xfd2e
	.short	60687                   # 0xed0f
	.short	56684                   # 0xdd6c
	.short	52557                   # 0xcd4d
	.short	48554                   # 0xbdaa
	.short	44427                   # 0xad8b
	.short	40424                   # 0x9de8
	.short	36297                   # 0x8dc9
	.short	31782                   # 0x7c26
	.short	27655                   # 0x6c07
	.short	23652                   # 0x5c64
	.short	19525                   # 0x4c45
	.short	15522                   # 0x3ca2
	.short	11395                   # 0x2c83
	.short	7392                    # 0x1ce0
	.short	3265                    # 0xcc1
	.short	61215                   # 0xef1f
	.short	65342                   # 0xff3e
	.short	53085                   # 0xcf5d
	.short	57212                   # 0xdf7c
	.short	44955                   # 0xaf9b
	.short	49082                   # 0xbfba
	.short	36825                   # 0x8fd9
	.short	40952                   # 0x9ff8
	.short	28183                   # 0x6e17
	.short	32310                   # 0x7e36
	.short	20053                   # 0x4e55
	.short	24180                   # 0x5e74
	.short	11923                   # 0x2e93
	.short	16050                   # 0x3eb2
	.short	3793                    # 0xed1
	.short	7920                    # 0x1ef0
	.size	crc16tab, 512

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
