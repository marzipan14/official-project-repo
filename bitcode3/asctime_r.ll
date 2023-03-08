; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/asctime_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/asctime_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@asctime_r.day_name = internal constant [7 x [3 x i8]] [[3 x i8] c"Sun", [3 x i8] c"Mon", [3 x i8] c"Tue", [3 x i8] c"Wed", [3 x i8] c"Thu", [3 x i8] c"Fri", [3 x i8] c"Sat"], align 16, !dbg !0
@asctime_r.mon_name = internal constant [12 x [3 x i8]] [[3 x i8] c"Jan", [3 x i8] c"Feb", [3 x i8] c"Mar", [3 x i8] c"Apr", [3 x i8] c"May", [3 x i8] c"Jun", [3 x i8] c"Jul", [3 x i8] c"Aug", [3 x i8] c"Sep", [3 x i8] c"Oct", [3 x i8] c"Nov", [3 x i8] c"Dec"], align 16, !dbg !33
@.str = private unnamed_addr constant [32 x i8] c"%.3s %.3s%3d %.2d:%.2d:%.2d %d\0A\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i8* @asctime_r(%struct.tm* noalias nocapture readonly, i8* noalias returned) local_unnamed_addr #0 !dbg !2 {
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 6, !dbg !50
  %4 = load i32, i32* %3, align 8, !dbg !50, !tbaa !51
  %5 = sext i32 %4 to i64, !dbg !58
  %6 = getelementptr inbounds [7 x [3 x i8]], [7 x [3 x i8]]* @asctime_r.day_name, i64 0, i64 %5, i64 0, !dbg !58
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4, !dbg !59
  %8 = load i32, i32* %7, align 8, !dbg !59, !tbaa !60
  %9 = sext i32 %8 to i64, !dbg !61
  %10 = getelementptr inbounds [12 x [3 x i8]], [12 x [3 x i8]]* @asctime_r.mon_name, i64 0, i64 %9, i64 0, !dbg !61
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !62
  %12 = load i32, i32* %11, align 4, !dbg !62, !tbaa !63
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2, !dbg !64
  %14 = load i32, i32* %13, align 8, !dbg !64, !tbaa !65
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1, !dbg !66
  %16 = load i32, i32* %15, align 4, !dbg !66, !tbaa !67
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0, !dbg !68
  %18 = load i32, i32* %17, align 8, !dbg !68, !tbaa !69
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5, !dbg !70
  %20 = load i32, i32* %19, align 4, !dbg !70, !tbaa !71
  %21 = add nsw i32 %20, 1900, !dbg !72
  %22 = tail call i32 (i8*, i8*, ...) @siprintf(i8* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* nonnull %6, i8* nonnull %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 %21) #3, !dbg !73
  ret i8* %1, !dbg !74
}

; Function Attrs: noredzone
declare dso_local i32 @siprintf(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "day_name", scope: !2, file: !3, line: 13, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "asctime_r", scope: !3, file: !3, line: 9, type: !4, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, unit: !30, retainedNodes: !39)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/asctime_r.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !29}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !12, line: 31, size: 448, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !11, file: !12, line: 32, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !11, file: !12, line: 33, baseType: !15, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !11, file: !12, line: 34, baseType: !15, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !11, file: !12, line: 35, baseType: !15, size: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !11, file: !12, line: 36, baseType: !15, size: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !11, file: !12, line: 37, baseType: !15, size: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !11, file: !12, line: 38, baseType: !15, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !11, file: !12, line: 39, baseType: !15, size: 32, offset: 224)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !11, file: !12, line: 40, baseType: !15, size: 32, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !11, file: !12, line: 41, baseType: !25, size: 64, offset: 320)
!25 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !11, file: !12, line: 42, baseType: !27, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !32)
!31 = !{}
!32 = !{!0, !33}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "mon_name", scope: !2, file: !3, line: 16, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 288, elements: !36)
!36 = !{!37, !38}
!37 = !DISubrange(count: 12)
!38 = !DISubrange(count: 3)
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "tim_p", arg: 1, scope: !2, file: !3, line: 9, type: !8)
!41 = !DILocalVariable(name: "result", arg: 2, scope: !2, file: !3, line: 9, type: !29)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 168, elements: !43)
!43 = !{!44, !38}
!44 = !DISubrange(count: 7)
!45 = !{i32 2, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!49 = !DILocation(line: 9, column: 1, scope: !2)
!50 = !DILocation(line: 22, column: 22, scope: !2)
!51 = !{!52, !53, i64 24}
!52 = !{!"tm", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !56, i64 40, !57, i64 48}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!"long", !54, i64 0}
!57 = !{!"any pointer", !54, i64 0}
!58 = !DILocation(line: 22, column: 6, scope: !2)
!59 = !DILocation(line: 23, column: 22, scope: !2)
!60 = !{!52, !53, i64 16}
!61 = !DILocation(line: 23, column: 6, scope: !2)
!62 = !DILocation(line: 24, column: 13, scope: !2)
!63 = !{!52, !53, i64 12}
!64 = !DILocation(line: 24, column: 29, scope: !2)
!65 = !{!52, !53, i64 8}
!66 = !DILocation(line: 24, column: 45, scope: !2)
!67 = !{!52, !53, i64 4}
!68 = !DILocation(line: 25, column: 13, scope: !2)
!69 = !{!52, !53, i64 0}
!70 = !DILocation(line: 25, column: 35, scope: !2)
!71 = !{!52, !53, i64 20}
!72 = !DILocation(line: 25, column: 26, scope: !2)
!73 = !DILocation(line: 21, column: 3, scope: !2)
!74 = !DILocation(line: 26, column: 3, scope: !2)
