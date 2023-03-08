; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_relmillisecs.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_relmillisecs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.timeb = type { i64, i16, i16, i16 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pte_relmillisecs(%struct.timespec* nocapture readonly) local_unnamed_addr #0 !dbg !14 {
  %2 = alloca %struct.timeb, align 8
  %3 = bitcast %struct.timeb* %2 to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #4, !dbg !47
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !48
  %5 = load i64, i64* %4, align 8, !dbg !48, !tbaa !49
  %6 = mul nsw i64 %5, 1000, !dbg !54
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !56
  %8 = load i64, i64* %7, align 8, !dbg !56, !tbaa !57
  %9 = add nsw i64 %8, 500000, !dbg !58
  %10 = sdiv i64 %9, 1000000, !dbg !59
  %11 = add nsw i64 %10, %6, !dbg !60
  %12 = call i32 @ftime(%struct.timeb* nonnull %2) #5, !dbg !62
  %13 = getelementptr inbounds %struct.timeb, %struct.timeb* %2, i64 0, i32 0, !dbg !63
  %14 = load i64, i64* %13, align 8, !dbg !63, !tbaa !64
  %15 = mul nsw i64 %14, 1000, !dbg !67
  %16 = getelementptr inbounds %struct.timeb, %struct.timeb* %2, i64 0, i32 1, !dbg !69
  %17 = load i16, i16* %16, align 8, !dbg !69, !tbaa !70
  %18 = zext i16 %17 to i64, !dbg !71
  %19 = add nsw i64 %15, %18, !dbg !72
  %20 = icmp sgt i64 %11, %19, !dbg !73
  br i1 %20, label %21, label %27, !dbg !75

; <label>:21:                                     ; preds = %1
  %22 = sub nsw i64 %11, %19, !dbg !76
  %23 = trunc i64 %22 to i32, !dbg !78
  %24 = icmp eq i32 %23, -1, !dbg !80
  %25 = sext i1 %24 to i32, !dbg !82
  %26 = add i32 %25, %23, !dbg !82
  br label %27, !dbg !82

; <label>:27:                                     ; preds = %21, %1
  %28 = phi i32 [ %26, %21 ], [ 0, %1 ], !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #4, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  ret i32 %28, !dbg !86
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @ftime(%struct.timeb*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_relmillisecs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !5, line: 56, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !7, line: 103, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "pte_relmillisecs", scope: !1, file: !1, line: 50, type: !15, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!15 = !DISubroutineType(types: !16)
!16 = !{!9, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !20, line: 52, size: 128, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !24}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !19, file: !20, line: 53, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !20, line: 34, baseType: !8)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !19, file: !20, line: 54, baseType: !8, size: 64, offset: 64)
!25 = !{!26, !27, !30, !31, !32, !33, !34}
!26 = !DILocalVariable(name: "abstime", arg: 1, scope: !14, file: !1, line: 50, type: !17)
!27 = !DILocalVariable(name: "NANOSEC_PER_MILLISEC", scope: !14, file: !1, line: 52, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "MILLISEC_PER_SEC", scope: !14, file: !1, line: 53, type: !28)
!31 = !DILocalVariable(name: "milliseconds", scope: !14, file: !1, line: 54, type: !9)
!32 = !DILocalVariable(name: "tmpAbsMilliseconds", scope: !14, file: !1, line: 55, type: !29)
!33 = !DILocalVariable(name: "tmpCurrMilliseconds", scope: !14, file: !1, line: 56, type: !8)
!34 = !DILocalVariable(name: "currSysTime", scope: !14, file: !1, line: 57, type: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeb", file: !36, line: 26, size: 128, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/timeb.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39, !41, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !35, file: !36, line: 28, baseType: !23, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "millitm", scope: !35, file: !36, line: 29, baseType: !40, size: 16, offset: 64)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !35, file: !36, line: 30, baseType: !42, size: 16, offset: 80)
!42 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dstflag", scope: !35, file: !36, line: 31, baseType: !42, size: 16, offset: 96)
!44 = !DILocation(line: 50, column: 43, scope: !14)
!45 = !DILocation(line: 52, column: 19, scope: !14)
!46 = !DILocation(line: 53, column: 19, scope: !14)
!47 = !DILocation(line: 57, column: 3, scope: !14)
!48 = !DILocation(line: 70, column: 43, scope: !14)
!49 = !{!50, !51, i64 0}
!50 = !{!"timespec", !51, i64 0, !51, i64 8}
!51 = !{!"long", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 70, column: 50, scope: !14)
!55 = !DILocation(line: 55, column: 13, scope: !14)
!56 = !DILocation(line: 71, column: 44, scope: !14)
!57 = !{!50, !51, i64 8}
!58 = !DILocation(line: 71, column: 52, scope: !14)
!59 = !DILocation(line: 71, column: 80, scope: !14)
!60 = !DILocation(line: 71, column: 22, scope: !14)
!61 = !DILocation(line: 57, column: 16, scope: !14)
!62 = !DILocation(line: 75, column: 3, scope: !14)
!63 = !DILocation(line: 77, column: 47, scope: !14)
!64 = !{!65, !51, i64 0}
!65 = !{!"timeb", !51, i64 0, !66, i64 8, !66, i64 10, !66, i64 12}
!66 = !{!"short", !52, i64 0}
!67 = !DILocation(line: 77, column: 52, scope: !14)
!68 = !DILocation(line: 56, column: 9, scope: !14)
!69 = !DILocation(line: 78, column: 48, scope: !14)
!70 = !{!65, !66, i64 8}
!71 = !DILocation(line: 78, column: 26, scope: !14)
!72 = !DILocation(line: 78, column: 23, scope: !14)
!73 = !DILocation(line: 80, column: 26, scope: !74)
!74 = distinct !DILexicalBlock(scope: !14, file: !1, line: 80, column: 7)
!75 = !DILocation(line: 80, column: 7, scope: !14)
!76 = !DILocation(line: 82, column: 57, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 81, column: 5)
!78 = !DILocation(line: 82, column: 22, scope: !77)
!79 = !DILocation(line: 54, column: 16, scope: !14)
!80 = !DILocation(line: 83, column: 24, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 83, column: 11)
!82 = !DILocation(line: 83, column: 11, scope: !77)
!83 = !DILocation(line: 0, scope: !84)
!84 = distinct !DILexicalBlock(scope: !74, file: !1, line: 90, column: 5)
!85 = !DILocation(line: 96, column: 1, scope: !14)
!86 = !DILocation(line: 95, column: 3, scope: !14)
