	.text
	.file	"crc64.c"
	.globl	crc64                   # -- Begin function crc64
	.p2align	4, 0x90
	.type	crc64,@function
crc64:                                  # @crc64
# %bb.0:
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB0_7
# %bb.1:
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpq	$1, %rdx
	jne	.LBB0_3
# %bb.2:
	xorl	%edi, %edi
	jmp	.LBB0_5
.LBB0_3:
	subq	%r8, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %r9d
	movzbl	%al, %ecx
	xorq	%r9, %rcx
	shrq	$8, %rax
	xorq	crc64_tab(,%rcx,8), %rax
	movzbl	1(%rsi,%rdi), %r9d
	movzbl	%al, %ecx
	xorq	%r9, %rcx
	shrq	$8, %rax
	xorq	crc64_tab(,%rcx,8), %rax
	addq	$2, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_4
.LBB0_5:
	testq	%r8, %r8
	je	.LBB0_7
# %bb.6:
	movzbl	%al, %ecx
	movzbl	(%rsi,%rdi), %edx
	xorq	%rcx, %rdx
	shrq	$8, %rax
	xorq	crc64_tab(,%rdx,8), %rax
.LBB0_7:
	retq
.Lfunc_end0:
	.size	crc64, .Lfunc_end0-crc64
                                        # -- End function
	.type	crc64_tab,@object       # @crc64_tab
	.section	.rodata,"a",@progbits
	.p2align	4
crc64_tab:
	.quad	0                       # 0x0
	.quad	8851949072701294969     # 0x7ad870c830358979
	.quad	-742845928306961678     # 0xf5b0e190606b12f2
	.quad	-8113074920216421493    # 0x8f689158505e9b8b
	.quad	-4595671135093148017    # 0xc038e5739841b68f
	.quad	-4980816554654154762    # 0xbae095bba8743ff6
	.quad	3857338458010461309     # 0x358804e3f82aa47d
	.quad	5715195658523061508     # 0x4f50742bc81f2d04
	.quad	-6113376234570973579    # 0xab28ecb46814fe75
	.quad	-3318980867503589620    # 0xd1f09c7c5821770c
	.quad	6816212484437830791     # 0x5e980d24087fec87
	.quad	2612226237385041406     # 0x24407dec384a65fe
	.quad	7714676916020922618     # 0x6b1009c7f05548fa
	.quad	1281407202545942915     # 0x11c8790fc060c183
	.quad	-7016352756663428600    # 0x9ea0e857903e5a08
	.quad	-1983667824504351887    # 0xe478989fa00bd371
	.quad	9009731685717012353     # 0x7d08ff3b88be6f81
	.quad	563108230357313272      # 0x7d08ff3b88be6f8
	.quad	-8595086165142045325    # 0x88b81eabe8d57d73
	.quad	-981663343647329270     # 0xf2606e63d8e0f40a
	.quad	-4814319104833890034    # 0xbd301a4810ffd90e
	.quad	-4041863567026532233    # 0xc7e86a8020ca5077
	.quad	5224452474770082812     # 0x4880fbd87094cbfc
	.quad	3627802401766982277     # 0x32588b1040a14285
	.quad	-3017390241667706380    # 0xd620138fe0aa91f4
	.quad	-5982922944867788659    # 0xacf86347d09f188d
	.quad	2562814405091885830     # 0x2390f21f80c18306
	.quad	6433535930597116543     # 0x594882d7b0f40a7f
	.quad	1592294032496338811     # 0x1618f6fc78eb277b
	.quad	7836410910743637506     # 0x6cc0863448deae02
	.quad	-2042356677977557623    # 0xe3a8176c18803589
	.quad	-7390293033759687440    # 0x997067a428b5bcf0
	.quad	-427280702275526910     # 0xfa11fe77117cdf02
	.quad	-9166638614987581829    # 0x80c98ebf2149567b
	.quad	1126216460714626544     # 0xfa11fe77117cdf0
	.quad	8464919223366468745     # 0x75796f2f41224489
	.quad	4190910634541279629     # 0x3a291b04893d698d
	.quad	4679640014836523252     # 0x40f16bccb908e0f4
	.quad	-3487480918944875649    # 0xcf99fa94e9567b7f
	.quad	-5385871547969572346    # 0xb5418a5cd963f206
	.quad	5852729821509460343     # 0x513912c379682177
	.quad	3161916214005835790     # 0x2be1620b495da80e
	.quad	-6590469041452534907    # 0xa489f35319033385
	.quad	-2427014021741364484    # 0xde51839b2936bafc
	.quad	-7997839124169385992    # 0x9101f7b0e12997f8
	.quad	-1451980451876168063    # 0xebd98778d11c1e81
	.quad	7255604803533964554     # 0x64b116208142850a
	.quad	2191395843288271987     # 0x1e6966e8b1770c73
	.quad	-8711930575662698365    # 0x8719014c99c2b083
	.quad	-161723297007453702     # 0xfdc17184a9f739fa
	.quad	8262382231073956465     # 0x72a9e0dcf9a9a271
	.quad	608425843627928328      # 0x8719014c99c2b08
	.quad	5125628810183771660     # 0x4721e43f0183060c
	.quad	4465764294926438261     # 0x3df994f731b68f75
	.quad	-5579672212515318530    # 0xb29105af61e814fe
	.quad	-4014548506208526969    # 0xc849756751dd9d87
	.quad	3184588064992677622     # 0x2c31edf8f1d64ef6
	.quad	6262709589572306831     # 0x56e99d30c1e3c78f
	.quad	-2773922252222276604    # 0xd9810c6891bd5c04
	.quad	-6676167943253338755    # 0xa3597ca0a188d57d
	.quad	-1438609211103119239    # 0xec09088b6997f879
	.quad	-7579144467225874176    # 0x96d1784359a27100
	.quad	1853769023980628619     # 0x19b9e91b09fcea8b
	.quad	7161174014982448114     # 0x636199d339c963f2
	.quad	-2343320148755206801    # 0xdf7adabd7a6e2d6f
	.quad	-6511454690488900586    # 0xa5a2aa754a5ba416
	.quad	3083341959784644509     # 0x2aca3b2d1a053f9d
	.quad	5769757520242456292     # 0x50124be52a30b6e4
	.quad	2252432921429253088     # 0x1f423fcee22f9be0
	.quad	7321251034957484697     # 0x659a4f06d21a1299
	.quad	-1516905626976614126    # 0xeaf2de5e82448912
	.quad	-8058436620964003733    # 0x902aae96b271006b
	.quad	8381821269082559258     # 0x74523609127ad31a
	.quad	1047727658635319907     # 0xe8a46c1224f5a63
	.quad	-9087464044036505112    # 0x81e2d7997211c1e8
	.quad	-343778454096557935     # 0xfb3aa75142244891
	.quad	-5446308276092574315    # 0xb46ad37a8a3b6595
	.quad	-3552597168020853524    # 0xceb2a3b2ba0eecec
	.quad	4745161141923116903     # 0x41da32eaea507767
	.quad	4252033715651608094     # 0x3b024222da65fe1e
	.quad	-6741284430690630930    # 0xa2722586f2d042ee
	.quad	-2834359218710656105    # 0xd8aa554ec2e5cb97
	.quad	6323832428011671580     # 0x57c2c41692bb501c
	.quad	3250108949404244325     # 0x2d1ab4dea28ed965
	.quad	7082685524280996961     # 0x624ac0f56a91f461
	.quad	1770671381070249240     # 0x1892b03d5aa47d18
	.quad	-7495641911945140589    # 0x97fa21650afae693
	.quad	-1359434333054603286    # 0xed2251ad3acf6fea
	.quad	674072313427442843      # 0x95ac9329ac4bc9b
	.quad	8323419547594995170     # 0x7382b9faaaf135e2
	.quad	-222320551145787799     # 0xfcea28a2faafae69
	.quad	-8776855508102797552    # 0x8632586aca9a2710
	.quad	-3935534466641622508    # 0xc9622c4102850a14
	.quad	-5495978650921565331    # 0xb3ba5c8932b0836d
	.quad	4382791686576543974     # 0x3cd2cdd162ee18e6
	.quad	5047054248884015519     # 0x460abd1952db919f
	.quad	2696289253709771373     # 0x256b24ca6b12f26d
	.quad	6895947823530343188     # 0x5fb354025b277b14
	.quad	-3396904503390642017    # 0xd0dbc55a0b79e09f
	.quad	-6195909022666954266    # 0xaa03b5923b4c69e6
	.quad	-1921979611561638686    # 0xe553c1b9f35344e2
	.quad	-6950266497748513381    # 0x9f8bb171c366cd9b
	.quad	1216851687255856656     # 0x10e3202993385610
	.quad	7654800921679748969     # 0x6a3b50e1a30ddf69
	.quad	-8195486453342008296    # 0x8e43c87e03060c18
	.quad	-820859414382410399     # 0xf49bb8b633338561
	.quad	8931528589852876522     # 0x7bf329ee636d1eea
	.quad	84259039178430355       # 0x12b592653589793
	.quad	5655163293556783767     # 0x4e7b2d0d9b47ba97
	.quad	3792978414742418414     # 0x34a35dc5ab7233ee
	.quad	-4914609589448824731    # 0xbbcbcc9dfb2ca865
	.quad	-4534073323166293732    # 0xc113bc55cb19211c
	.quad	6369176129985355244     # 0x5863dbf1e3ac9dec
	.quad	2502782282785952917     # 0x22bbab39d3991495
	.quad	-5921324894564937954    # 0xadd33a6183c78f1e
	.quad	-2951183038082316697    # 0xd70b4aa9b3f20667
	.quad	-7468306826918024349    # 0x985b3e827bed2b63
	.quad	-2124768518181707238    # 0xe2834e4a4bd8a21a
	.quad	7920669638525335953     # 0x6debdf121b863991
	.quad	1671873238255513832     # 0x1733afda2bb3b0e8
	.quad	-915577327403375719     # 0xf34b37458bb86399
	.quad	-8533398194874357024    # 0x8993478dbb8deae0
	.quad	503231997654823275      # 0x6fbd6d5ebd3716b
	.quad	8945175932061546514     # 0x7c23a61ddbe6f812
	.quad	3707538047961257238     # 0x3373d23613f9d516
	.quad	5308515798192249967     # 0x49aba2fe23cc5c6f
	.quad	-4124396043744655388    # 0xc6c333a67392c7e4
	.quad	-4892242429347410275    # 0xbc1b436e43a74e9d
	.quad	-7661587058870466123    # 0x95ac9329ac4bc9b5
	.quad	-1192077443213672244    # 0xef74e3e19c7e40cc
	.quad	6925536469308201799     # 0x601c72b9cc20db47
	.quad	1928669229005230654     # 0x1ac40271fc15523e
	.quad	6166683919569289018     # 0x5594765a340a7f3a
	.quad	3408106242218915395     # 0x2f4c0692043ff643
	.quad	-6907229033224639032    # 0xa02497ca54616dc8
	.quad	-2667002881850940239    # 0xdafce7026454e4b1
	.quad	4504865842858506176     # 0x3e847f9dc45f37c0
	.quad	4925828954283753145     # 0x445c0f55f46abeb9
	.quad	-3804242003794582222    # 0xcb349e0da4342532
	.quad	-5625859302133486517    # 0xb1eceec59401ac4b
	.quad	-91027543915855537      # 0xfebc9aee5c1e814f
	.quad	-8906736712287582154    # 0x8464ea266c2b0836
	.quad	796147016248169405      # 0xb0c7b7e3c7593bd
	.quad	8202193697865996996     # 0x71d40bb60c401ac4
	.quad	-1683101535544433100    # 0xe8a46c1224f5a634
	.quad	-7891400724083364019    # 0x927c1cda14c02f4d
	.quad	2095455317270639814     # 0x1d148d82449eb4c6
	.quad	7479631577382337983     # 0x67ccfd4a74ab3dbf
	.quad	2926364910754730171     # 0x289c8961bcb410bb
	.quad	5928137516128508354     # 0x5244f9a98c8199c2
	.quad	-2509515504350199223    # 0xdd2c68f1dcdf0249
	.quad	-6344419337991189712    # 0xa7f41839ecea8b30
	.quad	4867406749023426625     # 0x438c80a64ce15841
	.quad	4131191115536978232     # 0x3954f06e7cd4d138
	.quad	-5315266574900639053    # 0xb63c61362c8a4ab3
	.quad	-3682798812180528182    # 0xcce411fe1cbfc3ca
	.quad	-8956421789863317810    # 0x83b465d5d4a0eece
	.quad	-473980642647513161     # 0xf96c151de49567b7
	.quad	8504067431303216188     # 0x76048445b4cbfc3c
	.quad	926884511990314309      # 0xcdcf48d84fe7545
	.quad	8051711962477172407     # 0x6fbd6d5ebd3716b7
	.quad	1541670979892322254     # 0x15651d968d029fce
	.quad	-7346060597066464187    # 0x9a0d8ccedd5c0445
	.quad	-2245611732491203268    # 0xe0d5fc06ed698d3c
	.quad	-5799079217686208456    # 0xaf85882d2576a038
	.quad	-3072025708008887999    # 0xd55df8e515432941
	.quad	6500217898808488650     # 0x5a3569bd451db2ca
	.quad	2372580570961558451     # 0x20ed197575283bb3
	.quad	-4281373025147557694    # 0xc49581ead523e8c2
	.quad	-4733862501121891909    # 0xbe4df122e51661bb
	.quad	3541342762140498480     # 0x3125607ab548fa30
	.quad	5475551080882205513     # 0x4bfd10b2857d7349
	.quad	337036156713721421      # 0x4ad64994d625e4d
	.quad	9112211761281881908     # 0x7e7514517d57d734
	.quad	-1072554861787525953    # 0xf11d85092d094cbf
	.quad	-8375017722257553978    # 0x8bc5f5c11d3cc5c6
	.quad	1348144626854885686     # 0x12b5926535897936
	.quad	7524919785159454799     # 0x686de2ad05bcf04f
	.quad	-1799904978519561276    # 0xe70573f555e26bc4
	.quad	-7071492277665275203    # 0x9ddd033d65d7e2bd
	.quad	-3274830414739877959    # 0xd28d7716adc8cfb9
	.quad	-6317134249602496832    # 0xa85507de9dfd46c0
	.quad	2827581646778391883     # 0x273d9686cda3dd4b
	.quad	6766067242130363442     # 0x5de5e64efd965432
	.quad	-5071758167665440957    # 0xb99d7ed15d9d8743
	.quad	-4376075960543867334    # 0xc3450e196da80e3a
	.quad	5489218623395763633     # 0x4c2d9f413df695b1
	.quad	3960334819262667976     # 0x36f5ef890dc31cc8
	.quad	8765583373153087948     # 0x79a59ba2c5dc31cc
	.quad	251615998827411637      # 0x37deb6af5e9b8b5
	.quad	-8352635575941520578    # 0x8c157a32a5b7233e
	.quad	-662861498787124665     # 0xf6cd0afa9582aa47
	.quad	5392578507419542746     # 0x4ad64994d625e4da
	.quad	3462768234654100899     # 0x300e395ce6106da3
	.quad	-4654848426648865240    # 0xbf66a804b64ef628
	.quad	-4197679429721555119    # 0xc5bed8cc867b7f51
	.quad	-8435614942565739947    # 0x8aeeace74e645255
	.quad	-1137479759323604180    # 0xf036dc2f7e51db2c
	.quad	9177858264896848039     # 0x7f5e4d772e0f40a7
	.quad	398073508124084702      # 0x5863dbf1e3ac9de
	.quad	-2162109211042833745    # 0xe1fea520be311aaf
	.quad	-7266885753923922986    # 0x9b26d5e88e0493d6
	.quad	1463182455377365085     # 0x144e44b0de5a085d
	.quad	7968614284679676196     # 0x6e963478ee6f8124
	.quad	2433703374511713312     # 0x21c640532670ac20
	.quad	6565738749404456281     # 0x5b1e309b16452559
	.quad	-3137142230350053678    # 0xd476a1c3461bbed2
	.quad	-5859516218004850773    # 0xaeaed10b762e37ab
	.quad	4025855981238586203     # 0x37deb6af5e9b8b5b
	.quad	5550341738321543714     # 0x4d06c6676eae0222
	.quad	-4436512653762848343    # 0xc26e573f3ef099a9
	.quad	-5136874382911270704    # 0xb8b627f70ec510d0
	.quad	-583686894003798572     # 0xf7e653dcc6da3dd4
	.quad	-8269133292856429395    # 0x8d3e2314f6efb4ad
	.quad	168518078356860710      # 0x256b24ca6b12f26
	.quad	8687094605961012831     # 0x788ec2849684a65f
	.quad	-7136417486595984082    # 0x9cf65a1b368f752e
	.quad	-1860502510218052521    # 0xe62e2ad306bafc57
	.quad	7585956829484836828     # 0x6946bb8b56e467dc
	.quad	1413790823389195941     # 0x139ecb4366d1eea5
	.quad	6687492953022055329     # 0x5ccebf68aecec3a1
	.quad	2744609311697881816     # 0x2616cfa09efb4ad8
	.quad	-6233440411522313901    # 0xa97e5ef8cea5d153
	.quad	-3195816097608607702    # 0xd3a62e30fe90582a
	.quad	-5708391813738841128    # 0xb0c7b7e3c7593bd8
	.quad	-3882165362121461087    # 0xca1fc72bf76cb2a1
	.quad	5005564565571905834     # 0x45775673a732292a
	.quad	4588929132448424019     # 0x3faf26bb9707a053
	.quad	8142317431333358935     # 0x70ff52905f188d57
	.quad	731591227688682542      # 0xa2722586f2d042e
	.quad	-8840650729859080283    # 0x854fb3003f739fa5
	.quad	-29339608537491748      # 0xff97c3c80f4616dc
	.quad	2012927990619293101     # 0x1bef5b57af4dc5ad
	.quad	7005115709973351636     # 0x61372b9f9f784cd4
	.quad	-1270091202558503073    # 0xee5fbac7cf26d75f
	.quad	-7743998864187498970    # 0x9487ca0fff135e26
	.quad	-2605404796658879710    # 0xdbd7be24370c7322
	.quad	-6841021795823650213    # 0xa10fceec0739fa5b
	.quad	3343746476511027664     # 0x2e675fb4576761d0
	.quad	6106651831093618857     # 0x54bf2f7c6752e8a9
	.quad	-3616591881864522663    # 0xcdcf48d84fe75459
	.quad	-5253668796789236448    # 0xb71738107fd2dd20
	.quad	4071158715666679467     # 0x387fa9482f8c46ab
	.quad	4803046671925235666     # 0x42a7d9801fb9cfd2
	.quad	1006463995309646550     # 0xdf7adabd7a6e2d6
	.quad	8588326435575524271     # 0x772fdd63e7936baf
	.quad	-556392209586458588     # 0xf8474c3bb7cdf024
	.quad	-9034435310825997987    # 0x829f3cf387f8795d
	.quad	7415076095922514476     # 0x66e7a46c27f3aa2c
	.quad	2035579357833339733     # 0x1c3fd4a417c62355
	.quad	-7829712477325051682    # 0x935745fc4798b8de
	.quad	-1617015241740308057    # 0xe98f353477ad31a7
	.quad	-6422342938991125341    # 0xa6df411fbfb21ca3
	.quad	-2592048258632673830    # 0xdc0731d78f8795da
	.quad	6012200567359213137     # 0x536fa08fdfd90e51
	.quad	3006100283679606568     # 0x29b7d047efec8728
	.size	crc64_tab, 2048

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
