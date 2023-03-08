; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/ctime_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/ctime_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

; Function Attrs: noredzone nounwind
define dso_local i8* @ctime_r(i64*, i8*) local_unnamed_addr #0 !dbg !7 {
  %3 = alloca %struct.tm, align 8
  %4 = bitcast %struct.tm* %3 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #4, !dbg !39
  %5 = call %struct.tm* @localtime_r(i64* %0, %struct.tm* nonnull %3) #5, !dbg !41
  %6 = call i8* @asctime_r(%struct.tm* %5, i8* %1) #5, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #4, !dbg !43
  ret i8* %6, !dbg !44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @asctime_r(%struct.tm*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.tm* @localtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/ctime_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "ctime_r", scope: !1, file: !1, line: 8, type: !8, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !15, line: 34, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "tim_p", arg: 1, scope: !7, file: !1, line: 8, type: !12)
!19 = !DILocalVariable(name: "result", arg: 2, scope: !7, file: !1, line: 8, type: !10)
!20 = !DILocalVariable(name: "tm", scope: !7, file: !1, line: 13, type: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !22, line: 31, size: 448, elements: !23)
!22 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !21, file: !22, line: 32, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !21, file: !22, line: 33, baseType: !25, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !21, file: !22, line: 34, baseType: !25, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !21, file: !22, line: 35, baseType: !25, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !21, file: !22, line: 36, baseType: !25, size: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !21, file: !22, line: 37, baseType: !25, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !21, file: !22, line: 38, baseType: !25, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !21, file: !22, line: 39, baseType: !25, size: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !21, file: !22, line: 40, baseType: !25, size: 32, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !21, file: !22, line: 41, baseType: !16, size: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !21, file: !22, line: 42, baseType: !36, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!38 = !DILocation(line: 8, column: 1, scope: !7)
!39 = !DILocation(line: 13, column: 3, scope: !7)
!40 = !DILocation(line: 13, column: 13, scope: !7)
!41 = !DILocation(line: 14, column: 21, scope: !7)
!42 = !DILocation(line: 14, column: 10, scope: !7)
!43 = !DILocation(line: 15, column: 1, scope: !7)
!44 = !DILocation(line: 14, column: 3, scope: !7)
