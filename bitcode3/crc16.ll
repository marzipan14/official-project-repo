; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/crc16.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/crc16.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc16tab = internal unnamed_addr constant [256 x i16] [i16 0, i16 4129, i16 8258, i16 12387, i16 16516, i16 20645, i16 24774, i16 28903, i16 -32504, i16 -28375, i16 -24246, i16 -20117, i16 -15988, i16 -11859, i16 -7730, i16 -3601, i16 4657, i16 528, i16 12915, i16 8786, i16 21173, i16 17044, i16 29431, i16 25302, i16 -27847, i16 -31976, i16 -19589, i16 -23718, i16 -11331, i16 -15460, i16 -3073, i16 -7202, i16 9314, i16 13379, i16 1056, i16 5121, i16 25830, i16 29895, i16 17572, i16 21637, i16 -23190, i16 -19125, i16 -31448, i16 -27383, i16 -6674, i16 -2609, i16 -14932, i16 -10867, i16 13907, i16 9842, i16 5649, i16 1584, i16 30423, i16 26358, i16 22165, i16 18100, i16 -18597, i16 -22662, i16 -26855, i16 -30920, i16 -2081, i16 -6146, i16 -10339, i16 -14404, i16 18628, i16 22757, i16 26758, i16 30887, i16 2112, i16 6241, i16 10242, i16 14371, i16 -13876, i16 -9747, i16 -5746, i16 -1617, i16 -30392, i16 -26263, i16 -22262, i16 -18133, i16 23285, i16 19156, i16 31415, i16 27286, i16 6769, i16 2640, i16 14899, i16 10770, i16 -9219, i16 -13348, i16 -1089, i16 -5218, i16 -25735, i16 -29864, i16 -17605, i16 -21734, i16 27814, i16 31879, i16 19684, i16 23749, i16 11298, i16 15363, i16 3168, i16 7233, i16 -4690, i16 -625, i16 -12820, i16 -8755, i16 -21206, i16 -17141, i16 -29336, i16 -25271, i16 32407, i16 28342, i16 24277, i16 20212, i16 15891, i16 11826, i16 7761, i16 3696, i16 -97, i16 -4162, i16 -8227, i16 -12292, i16 -16613, i16 -20678, i16 -24743, i16 -28808, i16 -28280, i16 -32343, i16 -20022, i16 -24085, i16 -12020, i16 -16083, i16 -3762, i16 -7825, i16 4224, i16 161, i16 12482, i16 8419, i16 20484, i16 16421, i16 28742, i16 24679, i16 -31815, i16 -27752, i16 -23557, i16 -19494, i16 -15555, i16 -11492, i16 -7297, i16 -3234, i16 689, i16 4752, i16 8947, i16 13010, i16 16949, i16 21012, i16 25207, i16 29270, i16 -18966, i16 -23093, i16 -27224, i16 -31351, i16 -2706, i16 -6833, i16 -10964, i16 -15091, i16 13538, i16 9411, i16 5280, i16 1153, i16 29798, i16 25671, i16 21540, i16 17413, i16 -22565, i16 -18438, i16 -30823, i16 -26696, i16 -6305, i16 -2178, i16 -14563, i16 -10436, i16 9939, i16 14066, i16 1681, i16 5808, i16 26199, i16 30326, i16 17941, i16 22068, i16 -9908, i16 -13971, i16 -1778, i16 -5841, i16 -26168, i16 -30231, i16 -18038, i16 -22101, i16 22596, i16 18533, i16 30726, i16 26663, i16 6336, i16 2273, i16 14466, i16 10403, i16 -13443, i16 -9380, i16 -5313, i16 -1250, i16 -29703, i16 -25640, i16 -21573, i16 -17510, i16 19061, i16 23124, i16 27191, i16 31254, i16 2801, i16 6864, i16 10931, i16 14994, i16 -722, i16 -4849, i16 -8852, i16 -12979, i16 -16982, i16 -21109, i16 -25112, i16 -29239, i16 31782, i16 27655, i16 23652, i16 19525, i16 15522, i16 11395, i16 7392, i16 3265, i16 -4321, i16 -194, i16 -12451, i16 -8324, i16 -20581, i16 -16454, i16 -28711, i16 -24584, i16 28183, i16 32310, i16 20053, i16 24180, i16 11923, i16 16050, i16 3793, i16 7920], align 16, !dbg !0

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @crc16(i8* nocapture readonly, i32) local_unnamed_addr #0 !dbg !19 {
  %3 = icmp sgt i32 %1, 0, !dbg !35
  br i1 %3, label %4, label %50, !dbg !38

; <label>:4:                                      ; preds = %2
  %5 = and i32 %1, 1, !dbg !39
  %6 = icmp eq i32 %1, 1, !dbg !39
  br i1 %6, label %35, label %7, !dbg !39

; <label>:7:                                      ; preds = %4
  %8 = sub i32 %1, %5, !dbg !39
  br label %9, !dbg !39

; <label>:9:                                      ; preds = %9, %7
  %10 = phi i16 [ 0, %7 ], [ %32, %9 ]
  %11 = phi i8* [ %0, %7 ], [ %26, %9 ]
  %12 = phi i32 [ %8, %7 ], [ %33, %9 ]
  %13 = shl i16 %10, 8, !dbg !39
  %14 = lshr i16 %10, 8, !dbg !40
  %15 = zext i16 %14 to i64, !dbg !40
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !41
  %17 = load i8, i8* %11, align 1, !dbg !42, !tbaa !43
  %18 = zext i8 %17 to i64, !dbg !42
  %19 = xor i64 %18, %15, !dbg !46
  %20 = getelementptr inbounds [256 x i16], [256 x i16]* @crc16tab, i64 0, i64 %19, !dbg !47
  %21 = load i16, i16* %20, align 2, !dbg !47, !tbaa !48
  %22 = xor i16 %21, %13, !dbg !50
  %23 = shl i16 %21, 8, !dbg !39
  %24 = lshr i16 %22, 8, !dbg !40
  %25 = zext i16 %24 to i64, !dbg !40
  %26 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !41
  %27 = load i8, i8* %16, align 1, !dbg !42, !tbaa !43
  %28 = zext i8 %27 to i64, !dbg !42
  %29 = xor i64 %28, %25, !dbg !46
  %30 = getelementptr inbounds [256 x i16], [256 x i16]* @crc16tab, i64 0, i64 %29, !dbg !47
  %31 = load i16, i16* %30, align 2, !dbg !47, !tbaa !48
  %32 = xor i16 %31, %23, !dbg !50
  %33 = add i32 %12, -2, !dbg !38
  %34 = icmp eq i32 %33, 0, !dbg !38
  br i1 %34, label %35, label %9, !dbg !38, !llvm.loop !51

; <label>:35:                                     ; preds = %9, %4
  %36 = phi i16 [ undef, %4 ], [ %32, %9 ]
  %37 = phi i16 [ 0, %4 ], [ %32, %9 ]
  %38 = phi i8* [ %0, %4 ], [ %26, %9 ]
  %39 = icmp eq i32 %5, 0, !dbg !38
  br i1 %39, label %50, label %40, !dbg !38

; <label>:40:                                     ; preds = %35
  %41 = load i8, i8* %38, align 1, !dbg !42, !tbaa !43
  %42 = zext i8 %41 to i64, !dbg !42
  %43 = lshr i16 %37, 8, !dbg !40
  %44 = zext i16 %43 to i64, !dbg !40
  %45 = xor i64 %42, %44, !dbg !46
  %46 = getelementptr inbounds [256 x i16], [256 x i16]* @crc16tab, i64 0, i64 %45, !dbg !47
  %47 = load i16, i16* %46, align 2, !dbg !47, !tbaa !48
  %48 = shl i16 %37, 8, !dbg !39
  %49 = xor i16 %47, %48, !dbg !50
  br label %50, !dbg !53

; <label>:50:                                     ; preds = %40, %35, %2
  %51 = phi i16 [ 0, %2 ], [ %36, %35 ], [ %49, %40 ], !dbg !54
  ret i16 %51, !dbg !53
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crc16tab", scope: !2, file: !3, line: 47, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/crc16.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4096, elements: !13)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 36, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !11, line: 57, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!13 = !{!14}
!14 = !DISubrange(count: 256)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "crc16", scope: !3, file: !3, line: 82, type: !20, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !26)
!20 = !DISubroutineType(types: !21)
!21 = !{!12, !22, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27, !28, !29, !30}
!27 = !DILocalVariable(name: "buf", arg: 1, scope: !19, file: !3, line: 82, type: !22)
!28 = !DILocalVariable(name: "len", arg: 2, scope: !19, file: !3, line: 82, type: !25)
!29 = !DILocalVariable(name: "counter", scope: !19, file: !3, line: 83, type: !25)
!30 = !DILocalVariable(name: "crc", scope: !19, file: !3, line: 84, type: !8)
!31 = !DILocation(line: 82, column: 28, scope: !19)
!32 = !DILocation(line: 82, column: 37, scope: !19)
!33 = !DILocation(line: 84, column: 14, scope: !19)
!34 = !DILocation(line: 83, column: 9, scope: !19)
!35 = !DILocation(line: 85, column: 31, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !3, line: 85, column: 5)
!37 = distinct !DILexicalBlock(scope: !19, file: !3, line: 85, column: 5)
!38 = !DILocation(line: 85, column: 5, scope: !37)
!39 = !DILocation(line: 86, column: 23, scope: !36)
!40 = !DILocation(line: 86, column: 44, scope: !36)
!41 = !DILocation(line: 86, column: 55, scope: !36)
!42 = !DILocation(line: 86, column: 51, scope: !36)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 86, column: 49, scope: !36)
!47 = !DILocation(line: 86, column: 30, scope: !36)
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !44, i64 0}
!50 = !DILocation(line: 86, column: 28, scope: !36)
!51 = distinct !{!51, !38, !52}
!52 = !DILocation(line: 86, column: 65, scope: !37)
!53 = !DILocation(line: 87, column: 5, scope: !19)
!54 = !DILocation(line: 0, scope: !36)
