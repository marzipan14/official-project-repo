; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/crc64.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/crc64.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc64_tab = internal unnamed_addr constant [256 x i64] [i64 0, i64 8851949072701294969, i64 -742845928306961678, i64 -8113074920216421493, i64 -4595671135093148017, i64 -4980816554654154762, i64 3857338458010461309, i64 5715195658523061508, i64 -6113376234570973579, i64 -3318980867503589620, i64 6816212484437830791, i64 2612226237385041406, i64 7714676916020922618, i64 1281407202545942915, i64 -7016352756663428600, i64 -1983667824504351887, i64 9009731685717012353, i64 563108230357313272, i64 -8595086165142045325, i64 -981663343647329270, i64 -4814319104833890034, i64 -4041863567026532233, i64 5224452474770082812, i64 3627802401766982277, i64 -3017390241667706380, i64 -5982922944867788659, i64 2562814405091885830, i64 6433535930597116543, i64 1592294032496338811, i64 7836410910743637506, i64 -2042356677977557623, i64 -7390293033759687440, i64 -427280702275526910, i64 -9166638614987581829, i64 1126216460714626544, i64 8464919223366468745, i64 4190910634541279629, i64 4679640014836523252, i64 -3487480918944875649, i64 -5385871547969572346, i64 5852729821509460343, i64 3161916214005835790, i64 -6590469041452534907, i64 -2427014021741364484, i64 -7997839124169385992, i64 -1451980451876168063, i64 7255604803533964554, i64 2191395843288271987, i64 -8711930575662698365, i64 -161723297007453702, i64 8262382231073956465, i64 608425843627928328, i64 5125628810183771660, i64 4465764294926438261, i64 -5579672212515318530, i64 -4014548506208526969, i64 3184588064992677622, i64 6262709589572306831, i64 -2773922252222276604, i64 -6676167943253338755, i64 -1438609211103119239, i64 -7579144467225874176, i64 1853769023980628619, i64 7161174014982448114, i64 -2343320148755206801, i64 -6511454690488900586, i64 3083341959784644509, i64 5769757520242456292, i64 2252432921429253088, i64 7321251034957484697, i64 -1516905626976614126, i64 -8058436620964003733, i64 8381821269082559258, i64 1047727658635319907, i64 -9087464044036505112, i64 -343778454096557935, i64 -5446308276092574315, i64 -3552597168020853524, i64 4745161141923116903, i64 4252033715651608094, i64 -6741284430690630930, i64 -2834359218710656105, i64 6323832428011671580, i64 3250108949404244325, i64 7082685524280996961, i64 1770671381070249240, i64 -7495641911945140589, i64 -1359434333054603286, i64 674072313427442843, i64 8323419547594995170, i64 -222320551145787799, i64 -8776855508102797552, i64 -3935534466641622508, i64 -5495978650921565331, i64 4382791686576543974, i64 5047054248884015519, i64 2696289253709771373, i64 6895947823530343188, i64 -3396904503390642017, i64 -6195909022666954266, i64 -1921979611561638686, i64 -6950266497748513381, i64 1216851687255856656, i64 7654800921679748969, i64 -8195486453342008296, i64 -820859414382410399, i64 8931528589852876522, i64 84259039178430355, i64 5655163293556783767, i64 3792978414742418414, i64 -4914609589448824731, i64 -4534073323166293732, i64 6369176129985355244, i64 2502782282785952917, i64 -5921324894564937954, i64 -2951183038082316697, i64 -7468306826918024349, i64 -2124768518181707238, i64 7920669638525335953, i64 1671873238255513832, i64 -915577327403375719, i64 -8533398194874357024, i64 503231997654823275, i64 8945175932061546514, i64 3707538047961257238, i64 5308515798192249967, i64 -4124396043744655388, i64 -4892242429347410275, i64 -7661587058870466123, i64 -1192077443213672244, i64 6925536469308201799, i64 1928669229005230654, i64 6166683919569289018, i64 3408106242218915395, i64 -6907229033224639032, i64 -2667002881850940239, i64 4504865842858506176, i64 4925828954283753145, i64 -3804242003794582222, i64 -5625859302133486517, i64 -91027543915855537, i64 -8906736712287582154, i64 796147016248169405, i64 8202193697865996996, i64 -1683101535544433100, i64 -7891400724083364019, i64 2095455317270639814, i64 7479631577382337983, i64 2926364910754730171, i64 5928137516128508354, i64 -2509515504350199223, i64 -6344419337991189712, i64 4867406749023426625, i64 4131191115536978232, i64 -5315266574900639053, i64 -3682798812180528182, i64 -8956421789863317810, i64 -473980642647513161, i64 8504067431303216188, i64 926884511990314309, i64 8051711962477172407, i64 1541670979892322254, i64 -7346060597066464187, i64 -2245611732491203268, i64 -5799079217686208456, i64 -3072025708008887999, i64 6500217898808488650, i64 2372580570961558451, i64 -4281373025147557694, i64 -4733862501121891909, i64 3541342762140498480, i64 5475551080882205513, i64 337036156713721421, i64 9112211761281881908, i64 -1072554861787525953, i64 -8375017722257553978, i64 1348144626854885686, i64 7524919785159454799, i64 -1799904978519561276, i64 -7071492277665275203, i64 -3274830414739877959, i64 -6317134249602496832, i64 2827581646778391883, i64 6766067242130363442, i64 -5071758167665440957, i64 -4376075960543867334, i64 5489218623395763633, i64 3960334819262667976, i64 8765583373153087948, i64 251615998827411637, i64 -8352635575941520578, i64 -662861498787124665, i64 5392578507419542746, i64 3462768234654100899, i64 -4654848426648865240, i64 -4197679429721555119, i64 -8435614942565739947, i64 -1137479759323604180, i64 9177858264896848039, i64 398073508124084702, i64 -2162109211042833745, i64 -7266885753923922986, i64 1463182455377365085, i64 7968614284679676196, i64 2433703374511713312, i64 6565738749404456281, i64 -3137142230350053678, i64 -5859516218004850773, i64 4025855981238586203, i64 5550341738321543714, i64 -4436512653762848343, i64 -5136874382911270704, i64 -583686894003798572, i64 -8269133292856429395, i64 168518078356860710, i64 8687094605961012831, i64 -7136417486595984082, i64 -1860502510218052521, i64 7585956829484836828, i64 1413790823389195941, i64 6687492953022055329, i64 2744609311697881816, i64 -6233440411522313901, i64 -3195816097608607702, i64 -5708391813738841128, i64 -3882165362121461087, i64 5005564565571905834, i64 4588929132448424019, i64 8142317431333358935, i64 731591227688682542, i64 -8840650729859080283, i64 -29339608537491748, i64 2012927990619293101, i64 7005115709973351636, i64 -1270091202558503073, i64 -7743998864187498970, i64 -2605404796658879710, i64 -6841021795823650213, i64 3343746476511027664, i64 6106651831093618857, i64 -3616591881864522663, i64 -5253668796789236448, i64 4071158715666679467, i64 4803046671925235666, i64 1006463995309646550, i64 8588326435575524271, i64 -556392209586458588, i64 -9034435310825997987, i64 7415076095922514476, i64 2035579357833339733, i64 -7829712477325051682, i64 -1617015241740308057, i64 -6422342938991125341, i64 -2592048258632673830, i64 6012200567359213137, i64 3006100283679606568], align 16, !dbg !0

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @crc64(i64, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !23 {
  %4 = icmp eq i64 %2, 0, !dbg !41
  br i1 %4, label %51, label %5, !dbg !42

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !43
  %7 = icmp eq i64 %2, 1, !dbg !43
  br i1 %7, label %36, label %8, !dbg !43

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !43
  br label %10, !dbg !43

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ %0, %8 ], [ %32, %10 ]
  %12 = phi i64 [ 0, %8 ], [ %33, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %34, %10 ]
  %14 = getelementptr inbounds i8, i8* %1, i64 %12, !dbg !43
  %15 = load i8, i8* %14, align 1, !dbg !43, !tbaa !44
  %16 = and i64 %11, 255, !dbg !48
  %17 = zext i8 %15 to i64, !dbg !49
  %18 = xor i64 %16, %17, !dbg !50
  %19 = getelementptr inbounds [256 x i64], [256 x i64]* @crc64_tab, i64 0, i64 %18, !dbg !51
  %20 = load i64, i64* %19, align 8, !dbg !51, !tbaa !52
  %21 = lshr i64 %11, 8, !dbg !54
  %22 = xor i64 %20, %21, !dbg !55
  %23 = or i64 %12, 1, !dbg !56
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !43
  %25 = load i8, i8* %24, align 1, !dbg !43, !tbaa !44
  %26 = and i64 %22, 255, !dbg !48
  %27 = zext i8 %25 to i64, !dbg !49
  %28 = xor i64 %26, %27, !dbg !50
  %29 = getelementptr inbounds [256 x i64], [256 x i64]* @crc64_tab, i64 0, i64 %28, !dbg !51
  %30 = load i64, i64* %29, align 8, !dbg !51, !tbaa !52
  %31 = lshr i64 %22, 8, !dbg !54
  %32 = xor i64 %30, %31, !dbg !55
  %33 = add i64 %12, 2, !dbg !56
  %34 = add i64 %13, -2, !dbg !42
  %35 = icmp eq i64 %34, 0, !dbg !42
  br i1 %35, label %36, label %10, !dbg !42, !llvm.loop !57

; <label>:36:                                     ; preds = %10, %5
  %37 = phi i64 [ undef, %5 ], [ %32, %10 ]
  %38 = phi i64 [ %0, %5 ], [ %32, %10 ]
  %39 = phi i64 [ 0, %5 ], [ %33, %10 ]
  %40 = icmp eq i64 %6, 0, !dbg !42
  br i1 %40, label %51, label %41, !dbg !42

; <label>:41:                                     ; preds = %36
  %42 = and i64 %38, 255, !dbg !48
  %43 = getelementptr inbounds i8, i8* %1, i64 %39, !dbg !43
  %44 = load i8, i8* %43, align 1, !dbg !43, !tbaa !44
  %45 = zext i8 %44 to i64, !dbg !49
  %46 = xor i64 %42, %45, !dbg !50
  %47 = getelementptr inbounds [256 x i64], [256 x i64]* @crc64_tab, i64 0, i64 %46, !dbg !51
  %48 = load i64, i64* %47, align 8, !dbg !51, !tbaa !52
  %49 = lshr i64 %38, 8, !dbg !54
  %50 = xor i64 %48, %49, !dbg !55
  br label %51, !dbg !59

; <label>:51:                                     ; preds = %41, %36, %3
  %52 = phi i64 [ %0, %3 ], [ %37, %36 ], [ %50, %41 ]
  ret i64 %52, !dbg !59
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crc64_tab", scope: !2, file: !3, line: 42, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/crc64.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 43, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 16384, elements: !17)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 60, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 105, baseType: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18}
!18 = !DISubrange(count: 256)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "crc64", scope: !3, file: !3, line: 173, type: !24, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{!14, !14, !26, !14}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DILocalVariable(name: "crc", arg: 1, scope: !23, file: !3, line: 173, type: !14)
!30 = !DILocalVariable(name: "s", arg: 2, scope: !23, file: !3, line: 173, type: !26)
!31 = !DILocalVariable(name: "l", arg: 3, scope: !23, file: !3, line: 173, type: !14)
!32 = !DILocalVariable(name: "j", scope: !23, file: !3, line: 174, type: !14)
!33 = !DILocalVariable(name: "byte", scope: !34, file: !3, line: 177, type: !6)
!34 = distinct !DILexicalBlock(scope: !35, file: !3, line: 176, column: 29)
!35 = distinct !DILexicalBlock(scope: !36, file: !3, line: 176, column: 5)
!36 = distinct !DILexicalBlock(scope: !23, file: !3, line: 176, column: 5)
!37 = !DILocation(line: 173, column: 25, scope: !23)
!38 = !DILocation(line: 173, column: 51, scope: !23)
!39 = !DILocation(line: 173, column: 63, scope: !23)
!40 = !DILocation(line: 174, column: 14, scope: !23)
!41 = !DILocation(line: 176, column: 19, scope: !35)
!42 = !DILocation(line: 176, column: 5, scope: !36)
!43 = !DILocation(line: 177, column: 24, scope: !34)
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 177, column: 17, scope: !34)
!48 = !DILocation(line: 178, column: 25, scope: !34)
!49 = !DILocation(line: 178, column: 40, scope: !34)
!50 = !DILocation(line: 178, column: 38, scope: !34)
!51 = !DILocation(line: 178, column: 15, scope: !34)
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !45, i64 0}
!54 = !DILocation(line: 178, column: 53, scope: !34)
!55 = !DILocation(line: 178, column: 46, scope: !34)
!56 = !DILocation(line: 176, column: 25, scope: !35)
!57 = distinct !{!57, !42, !58}
!58 = !DILocation(line: 179, column: 5, scope: !36)
!59 = !DILocation(line: 180, column: 5, scope: !23)
