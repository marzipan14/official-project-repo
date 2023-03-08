; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gmtime_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gmtime_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

; Function Attrs: noredzone nounwind
define dso_local %struct.tm* @gmtime_r(i64* noalias nocapture readonly, %struct.tm* noalias returned) local_unnamed_addr #0 !dbg !9 {
  %3 = load i64, i64* %0, align 8, !dbg !54, !tbaa !55
  %4 = sdiv i64 %3, 86400, !dbg !60
  %5 = srem i64 %3, 86400, !dbg !62
  %6 = icmp slt i64 %5, 0, !dbg !64
  %7 = add nsw i64 %5, 86400, !dbg !66
  %8 = select i1 %6, i64 %7, i64 %5, !dbg !68
  %9 = select i1 %6, i64 719467, i64 719468, !dbg !68
  %10 = add nsw i64 %9, %4, !dbg !68
  %11 = sdiv i64 %8, 3600, !dbg !69
  %12 = trunc i64 %11 to i32, !dbg !70
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2, !dbg !71
  store i32 %12, i32* %13, align 8, !dbg !72, !tbaa !73
  %14 = srem i64 %8, 3600, !dbg !77
  %15 = sdiv i64 %14, 60, !dbg !78
  %16 = trunc i64 %15 to i32, !dbg !79
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1, !dbg !80
  store i32 %16, i32* %17, align 4, !dbg !81, !tbaa !82
  %18 = srem i64 %14, 60, !dbg !83
  %19 = trunc i64 %18 to i32, !dbg !84
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0, !dbg !85
  store i32 %19, i32* %20, align 8, !dbg !86, !tbaa !87
  %21 = add nsw i64 %10, 3, !dbg !88
  %22 = srem i64 %21, 7, !dbg !90
  %23 = trunc i64 %22 to i32, !dbg !91
  %24 = icmp slt i32 %23, 0, !dbg !93
  %25 = add nsw i32 %23, 7, !dbg !94
  %26 = select i1 %24, i32 %25, i32 %23, !dbg !95
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 6, !dbg !96
  store i32 %26, i32* %27, align 8, !dbg !97, !tbaa !98
  %28 = icmp sgt i64 %10, -1, !dbg !99
  %29 = add nsw i64 %10, -146096, !dbg !100
  %30 = select i1 %28, i64 %10, i64 %29, !dbg !101
  %31 = sdiv i64 %30, 146097, !dbg !102
  %32 = trunc i64 %31 to i32, !dbg !103
  %33 = shl i64 %31, 32, !dbg !105
  %34 = ashr exact i64 %33, 32, !dbg !105
  %35 = mul nsw i64 %34, -146097, !dbg !106
  %36 = add nsw i64 %35, %10, !dbg !106
  %37 = udiv i64 %36, 1460, !dbg !108
  %38 = sub nsw i64 %36, %37, !dbg !109
  %39 = udiv i64 %36, 36524, !dbg !110
  %40 = add nsw i64 %38, %39, !dbg !111
  %41 = udiv i64 %36, 146096, !dbg !112
  %42 = sub nsw i64 %40, %41, !dbg !113
  %43 = udiv i64 %42, 365, !dbg !114
  %44 = trunc i64 %43 to i32, !dbg !115
  %45 = lshr i32 %44, 2, !dbg !117
  %46 = udiv i32 %44, 100, !dbg !118
  %47 = urem i32 %44, 100, !dbg !119
  %48 = trunc i64 %36 to i32, !dbg !120
  %49 = mul i32 %44, -365
  %50 = sub i32 %48, %45, !dbg !121
  %51 = add i32 %50, %49, !dbg !120
  %52 = add i32 %51, %46, !dbg !120
  %53 = mul i32 %52, 5, !dbg !123
  %54 = add i32 %53, 2, !dbg !124
  %55 = udiv i32 %54, 153, !dbg !125
  %56 = mul i32 %55, 153, !dbg !127
  %57 = add i32 %56, 2, !dbg !128
  %58 = udiv i32 %57, 5, !dbg !129
  %59 = add i32 %52, 1, !dbg !130
  %60 = sub i32 %59, %58, !dbg !131
  %61 = icmp ult i32 %54, 1530, !dbg !133
  %62 = select i1 %61, i32 2, i32 -10, !dbg !134
  %63 = add nsw i32 %62, %55, !dbg !135
  %64 = mul nsw i32 %32, 400, !dbg !136
  %65 = icmp ult i32 %63, 2, !dbg !137
  %66 = zext i1 %65 to i32, !dbg !137
  %67 = icmp ugt i32 %52, 305, !dbg !139
  br i1 %67, label %68, label %70, !dbg !140

; <label>:68:                                     ; preds = %2
  %69 = add i32 %52, -306, !dbg !141
  br label %83, !dbg !140

; <label>:70:                                     ; preds = %2
  %71 = add i32 %52, 59, !dbg !142
  %72 = and i32 %44, 3, !dbg !119
  %73 = icmp ne i32 %72, 0, !dbg !119
  %74 = icmp eq i32 %47, 0, !dbg !119
  %75 = or i1 %73, %74, !dbg !119
  br i1 %75, label %76, label %80, !dbg !119

; <label>:76:                                     ; preds = %70
  %77 = urem i32 %44, 400, !dbg !119
  %78 = icmp eq i32 %77, 0, !dbg !119
  %79 = zext i1 %78 to i32, !dbg !119
  br label %80, !dbg !119

; <label>:80:                                     ; preds = %70, %76
  %81 = phi i32 [ %79, %76 ], [ 1, %70 ]
  %82 = add i32 %71, %81, !dbg !143
  br label %83, !dbg !140

; <label>:83:                                     ; preds = %80, %68
  %84 = phi i32 [ %69, %68 ], [ %82, %80 ], !dbg !140
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 7, !dbg !144
  store i32 %84, i32* %85, align 4, !dbg !145, !tbaa !146
  %86 = add i32 %64, -1900, !dbg !147
  %87 = add i32 %86, %44, !dbg !148
  %88 = add i32 %87, %66, !dbg !149
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5, !dbg !150
  store i32 %88, i32* %89, align 4, !dbg !151, !tbaa !152
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4, !dbg !153
  store i32 %63, i32* %90, align 8, !dbg !154, !tbaa !155
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3, !dbg !156
  store i32 %60, i32* %91, align 4, !dbg !157, !tbaa !158
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8, !dbg !159
  store i32 0, i32* %92, align 8, !dbg !160, !tbaa !161
  ret %struct.tm* %1, !dbg !162
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gmtime_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "gmtime_r", scope: !1, file: !1, line: 49, type: !10, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !31, !36}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !14, line: 31, size: 448, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !13, file: !14, line: 32, baseType: !4, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !13, file: !14, line: 33, baseType: !4, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !13, file: !14, line: 34, baseType: !4, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !13, file: !14, line: 35, baseType: !4, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !13, file: !14, line: 36, baseType: !4, size: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !13, file: !14, line: 37, baseType: !4, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !13, file: !14, line: 38, baseType: !4, size: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !13, file: !14, line: 39, baseType: !4, size: 32, offset: 224)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !13, file: !14, line: 40, baseType: !4, size: 32, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !13, file: !14, line: 41, baseType: !26, size: 64, offset: 320)
!26 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !13, file: !14, line: 42, baseType: !28, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !35, line: 34, baseType: !26)
!35 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51}
!38 = !DILocalVariable(name: "tim_p", arg: 1, scope: !9, file: !1, line: 49, type: !31)
!39 = !DILocalVariable(name: "res", arg: 2, scope: !9, file: !1, line: 49, type: !36)
!40 = !DILocalVariable(name: "days", scope: !9, file: !1, line: 53, type: !26)
!41 = !DILocalVariable(name: "rem", scope: !9, file: !1, line: 53, type: !26)
!42 = !DILocalVariable(name: "lcltime", scope: !9, file: !1, line: 54, type: !33)
!43 = !DILocalVariable(name: "era", scope: !9, file: !1, line: 55, type: !4)
!44 = !DILocalVariable(name: "weekday", scope: !9, file: !1, line: 55, type: !4)
!45 = !DILocalVariable(name: "year", scope: !9, file: !1, line: 55, type: !4)
!46 = !DILocalVariable(name: "erayear", scope: !9, file: !1, line: 56, type: !47)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DILocalVariable(name: "yearday", scope: !9, file: !1, line: 56, type: !47)
!49 = !DILocalVariable(name: "month", scope: !9, file: !1, line: 56, type: !47)
!50 = !DILocalVariable(name: "day", scope: !9, file: !1, line: 56, type: !47)
!51 = !DILocalVariable(name: "eraday", scope: !9, file: !1, line: 57, type: !52)
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DILocation(line: 49, column: 1, scope: !9)
!54 = !DILocation(line: 54, column: 27, scope: !9)
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 54, column: 17, scope: !9)
!60 = !DILocation(line: 59, column: 18, scope: !9)
!61 = !DILocation(line: 53, column: 8, scope: !9)
!62 = !DILocation(line: 60, column: 17, scope: !9)
!63 = !DILocation(line: 53, column: 14, scope: !9)
!64 = !DILocation(line: 61, column: 11, scope: !65)
!65 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 7)
!66 = !DILocation(line: 63, column: 11, scope: !67)
!67 = distinct !DILexicalBlock(scope: !65, file: !1, line: 62, column: 5)
!68 = !DILocation(line: 61, column: 7, scope: !9)
!69 = !DILocation(line: 68, column: 29, scope: !9)
!70 = !DILocation(line: 68, column: 18, scope: !9)
!71 = !DILocation(line: 68, column: 8, scope: !9)
!72 = !DILocation(line: 68, column: 16, scope: !9)
!73 = !{!74, !75, i64 8}
!74 = !{!"tm", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12, !75, i64 16, !75, i64 20, !75, i64 24, !75, i64 28, !75, i64 32, !56, i64 40, !76, i64 48}
!75 = !{!"int", !57, i64 0}
!76 = !{!"any pointer", !57, i64 0}
!77 = !DILocation(line: 69, column: 7, scope: !9)
!78 = !DILocation(line: 70, column: 28, scope: !9)
!79 = !DILocation(line: 70, column: 17, scope: !9)
!80 = !DILocation(line: 70, column: 8, scope: !9)
!81 = !DILocation(line: 70, column: 15, scope: !9)
!82 = !{!74, !75, i64 4}
!83 = !DILocation(line: 71, column: 28, scope: !9)
!84 = !DILocation(line: 71, column: 17, scope: !9)
!85 = !DILocation(line: 71, column: 8, scope: !9)
!86 = !DILocation(line: 71, column: 15, scope: !9)
!87 = !{!74, !75, i64 0}
!88 = !DILocation(line: 74, column: 40, scope: !89)
!89 = distinct !DILexicalBlock(scope: !9, file: !1, line: 74, column: 7)
!90 = !DILocation(line: 74, column: 48, scope: !89)
!91 = !DILocation(line: 74, column: 18, scope: !89)
!92 = !DILocation(line: 55, column: 12, scope: !9)
!93 = !DILocation(line: 74, column: 64, scope: !89)
!94 = !DILocation(line: 75, column: 13, scope: !89)
!95 = !DILocation(line: 74, column: 7, scope: !9)
!96 = !DILocation(line: 76, column: 8, scope: !9)
!97 = !DILocation(line: 76, column: 16, scope: !9)
!98 = !{!74, !75, i64 24}
!99 = !DILocation(line: 81, column: 15, scope: !9)
!100 = !DILocation(line: 81, column: 34, scope: !9)
!101 = !DILocation(line: 81, column: 10, scope: !9)
!102 = !DILocation(line: 81, column: 56, scope: !9)
!103 = !DILocation(line: 81, column: 9, scope: !9)
!104 = !DILocation(line: 55, column: 7, scope: !9)
!105 = !DILocation(line: 82, column: 19, scope: !9)
!106 = !DILocation(line: 82, column: 17, scope: !9)
!107 = !DILocation(line: 57, column: 17, scope: !9)
!108 = !DILocation(line: 83, column: 30, scope: !9)
!109 = !DILocation(line: 83, column: 21, scope: !9)
!110 = !DILocation(line: 83, column: 64, scope: !9)
!111 = !DILocation(line: 83, column: 55, scope: !9)
!112 = !DILocation(line: 84, column: 14, scope: !9)
!113 = !DILocation(line: 83, column: 83, scope: !9)
!114 = !DILocation(line: 84, column: 36, scope: !9)
!115 = !DILocation(line: 83, column: 13, scope: !9)
!116 = !DILocation(line: 56, column: 12, scope: !9)
!117 = !DILocation(line: 85, column: 57, scope: !9)
!118 = !DILocation(line: 85, column: 71, scope: !9)
!119 = !DILocation(line: 93, column: 54, scope: !9)
!120 = !DILocation(line: 85, column: 13, scope: !9)
!121 = !DILocation(line: 85, column: 47, scope: !9)
!122 = !DILocation(line: 56, column: 21, scope: !9)
!123 = !DILocation(line: 86, column: 14, scope: !9)
!124 = !DILocation(line: 86, column: 24, scope: !9)
!125 = !DILocation(line: 86, column: 29, scope: !9)
!126 = !DILocation(line: 56, column: 30, scope: !9)
!127 = !DILocation(line: 87, column: 24, scope: !9)
!128 = !DILocation(line: 87, column: 32, scope: !9)
!129 = !DILocation(line: 87, column: 37, scope: !9)
!130 = !DILocation(line: 87, column: 17, scope: !9)
!131 = !DILocation(line: 87, column: 41, scope: !9)
!132 = !DILocation(line: 56, column: 37, scope: !9)
!133 = !DILocation(line: 88, column: 18, scope: !9)
!134 = !DILocation(line: 88, column: 12, scope: !9)
!135 = !DILocation(line: 88, column: 9, scope: !9)
!136 = !DILocation(line: 89, column: 46, scope: !9)
!137 = !DILocation(line: 89, column: 71, scope: !9)
!138 = !DILocation(line: 55, column: 21, scope: !9)
!139 = !DILocation(line: 91, column: 26, scope: !9)
!140 = !DILocation(line: 91, column: 18, scope: !9)
!141 = !DILocation(line: 92, column: 15, scope: !9)
!142 = !DILocation(line: 93, column: 33, scope: !9)
!143 = !DILocation(line: 93, column: 52, scope: !9)
!144 = !DILocation(line: 91, column: 8, scope: !9)
!145 = !DILocation(line: 91, column: 16, scope: !9)
!146 = !{!74, !75, i64 28}
!147 = !DILocation(line: 89, column: 40, scope: !9)
!148 = !DILocation(line: 89, column: 62, scope: !9)
!149 = !DILocation(line: 94, column: 23, scope: !9)
!150 = !DILocation(line: 94, column: 8, scope: !9)
!151 = !DILocation(line: 94, column: 16, scope: !9)
!152 = !{!74, !75, i64 20}
!153 = !DILocation(line: 95, column: 8, scope: !9)
!154 = !DILocation(line: 95, column: 15, scope: !9)
!155 = !{!74, !75, i64 16}
!156 = !DILocation(line: 96, column: 8, scope: !9)
!157 = !DILocation(line: 96, column: 16, scope: !9)
!158 = !{!74, !75, i64 12}
!159 = !DILocation(line: 98, column: 8, scope: !9)
!160 = !DILocation(line: 98, column: 17, scope: !9)
!161 = !{!74, !75, i64 32}
!162 = !DILocation(line: 100, column: 3, scope: !9)
