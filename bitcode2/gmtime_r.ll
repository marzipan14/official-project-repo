; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gmtime_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gmtime_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.tm* @gmtime_r(i64* noalias nocapture readonly, %struct.tm* noalias returned) local_unnamed_addr #0 !dbg !9 {
  %3 = load i64, i64* %0, align 8, !dbg !54, !tbaa !55
  %4 = sdiv i64 %3, 86400, !dbg !60
  %5 = add nsw i64 %4, 719468, !dbg !61
  %6 = srem i64 %3, 86400, !dbg !63
  %7 = icmp slt i64 %6, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %7, label %8, label %11, !dbg !67

; <label>:8:                                      ; preds = %2
  %9 = add nsw i64 %6, 86400, !dbg !68
  %10 = add nsw i64 %4, 719467, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br label %11, !dbg !71

; <label>:11:                                     ; preds = %8, %2
  %12 = phi i64 [ %9, %8 ], [ %6, %2 ], !dbg !72
  %13 = phi i64 [ %10, %8 ], [ %5, %2 ], !dbg !72
  %14 = sdiv i64 %12, 3600, !dbg !73
  %15 = trunc i64 %14 to i32, !dbg !74
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2, !dbg !75
  store i32 %15, i32* %16, align 8, !dbg !76, !tbaa !77
  %17 = srem i64 %12, 3600, !dbg !81
  %18 = sdiv i64 %17, 60, !dbg !82
  %19 = trunc i64 %18 to i32, !dbg !83
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1, !dbg !84
  store i32 %19, i32* %20, align 4, !dbg !85, !tbaa !86
  %21 = srem i64 %17, 60, !dbg !87
  %22 = trunc i64 %21 to i32, !dbg !88
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0, !dbg !89
  store i32 %22, i32* %23, align 8, !dbg !90, !tbaa !91
  %24 = add nsw i64 %13, 3, !dbg !92
  %25 = srem i64 %24, 7, !dbg !94
  %26 = trunc i64 %25 to i32, !dbg !95
  %27 = icmp slt i32 %26, 0, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %27, label %28, label %30, !dbg !98

; <label>:28:                                     ; preds = %11
  %29 = add nsw i32 %26, 7, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br label %30, !dbg !100

; <label>:30:                                     ; preds = %28, %11
  %31 = phi i32 [ %29, %28 ], [ %26, %11 ], !dbg !101
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 6, !dbg !102
  store i32 %31, i32* %32, align 8, !dbg !103, !tbaa !104
  %33 = icmp sgt i64 %13, -1, !dbg !105
  %34 = add nsw i64 %13, -146096, !dbg !106
  %35 = select i1 %33, i64 %13, i64 %34, !dbg !107
  %36 = sdiv i64 %35, 146097, !dbg !108
  %37 = trunc i64 %36 to i32, !dbg !109
  %38 = shl i64 %36, 32, !dbg !111
  %39 = ashr exact i64 %38, 32, !dbg !111
  %40 = mul nsw i64 %39, -146097, !dbg !112
  %41 = add nsw i64 %40, %13, !dbg !112
  %42 = udiv i64 %41, 1460, !dbg !114
  %43 = sub nsw i64 %41, %42, !dbg !115
  %44 = udiv i64 %41, 36524, !dbg !116
  %45 = add nsw i64 %43, %44, !dbg !117
  %46 = udiv i64 %41, 146096, !dbg !118
  %47 = sub nsw i64 %45, %46, !dbg !119
  %48 = udiv i64 %47, 365, !dbg !120
  %49 = trunc i64 %48 to i32, !dbg !121
  %50 = lshr i32 %49, 2, !dbg !123
  %51 = udiv i32 %49, 100, !dbg !124
  %52 = urem i32 %49, 100, !dbg !125
  %53 = trunc i64 %41 to i32, !dbg !126
  %54 = mul i32 %49, -365
  %55 = sub i32 %53, %50, !dbg !127
  %56 = add i32 %55, %54, !dbg !126
  %57 = add i32 %56, %51, !dbg !126
  %58 = mul i32 %57, 5, !dbg !129
  %59 = add i32 %58, 2, !dbg !130
  %60 = udiv i32 %59, 153, !dbg !131
  %61 = mul i32 %60, 153, !dbg !133
  %62 = add i32 %61, 2, !dbg !134
  %63 = udiv i32 %62, 5, !dbg !135
  %64 = add i32 %57, 1, !dbg !136
  %65 = sub i32 %64, %63, !dbg !137
  %66 = icmp ult i32 %59, 1530, !dbg !139
  %67 = select i1 %66, i32 2, i32 -10, !dbg !140
  %68 = add nsw i32 %67, %60, !dbg !141
  %69 = mul nsw i32 %37, 400, !dbg !142
  %70 = icmp ult i32 %68, 2, !dbg !143
  %71 = zext i1 %70 to i32, !dbg !143
  %72 = icmp ugt i32 %57, 305, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  br i1 %72, label %73, label %75, !dbg !146

; <label>:73:                                     ; preds = %30
  %74 = add i32 %57, -306, !dbg !147
  br label %88, !dbg !146

; <label>:75:                                     ; preds = %30
  %76 = add i32 %57, 59, !dbg !148
  %77 = and i32 %49, 3, !dbg !125
  %78 = icmp eq i32 %77, 0, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br i1 %78, label %79, label %81, !dbg !125

; <label>:79:                                     ; preds = %75
  %80 = icmp eq i32 %52, 0, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br i1 %80, label %81, label %85, !dbg !125

; <label>:81:                                     ; preds = %79, %75
  %82 = urem i32 %49, 400, !dbg !125
  %83 = icmp eq i32 %82, 0, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  %84 = zext i1 %83 to i32, !dbg !125
  br label %85, !dbg !125

; <label>:85:                                     ; preds = %79, %81
  %86 = phi i32 [ 1, %79 ], [ %84, %81 ]
  %87 = add i32 %76, %86, !dbg !149
  br label %88, !dbg !146

; <label>:88:                                     ; preds = %85, %73
  %89 = phi i32 [ %74, %73 ], [ %87, %85 ], !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 7, !dbg !150
  store i32 %89, i32* %90, align 4, !dbg !151, !tbaa !152
  %91 = add i32 %69, -1900, !dbg !153
  %92 = add i32 %91, %49, !dbg !154
  %93 = add i32 %92, %71, !dbg !155
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5, !dbg !156
  store i32 %93, i32* %94, align 4, !dbg !157, !tbaa !158
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4, !dbg !159
  store i32 %68, i32* %95, align 8, !dbg !160, !tbaa !161
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3, !dbg !162
  store i32 %65, i32* %96, align 4, !dbg !163, !tbaa !164
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8, !dbg !165
  store i32 0, i32* %97, align 8, !dbg !166, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  ret %struct.tm* %1, !dbg !168
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
!61 = !DILocation(line: 59, column: 31, scope: !9)
!62 = !DILocation(line: 53, column: 8, scope: !9)
!63 = !DILocation(line: 60, column: 17, scope: !9)
!64 = !DILocation(line: 53, column: 14, scope: !9)
!65 = !DILocation(line: 61, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 7)
!67 = !DILocation(line: 61, column: 7, scope: !9)
!68 = !DILocation(line: 63, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 62, column: 5)
!70 = !DILocation(line: 64, column: 7, scope: !69)
!71 = !DILocation(line: 65, column: 5, scope: !69)
!72 = !DILocation(line: 0, scope: !9)
!73 = !DILocation(line: 68, column: 29, scope: !9)
!74 = !DILocation(line: 68, column: 18, scope: !9)
!75 = !DILocation(line: 68, column: 8, scope: !9)
!76 = !DILocation(line: 68, column: 16, scope: !9)
!77 = !{!78, !79, i64 8}
!78 = !{!"tm", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !79, i64 24, !79, i64 28, !79, i64 32, !56, i64 40, !80, i64 48}
!79 = !{!"int", !57, i64 0}
!80 = !{!"any pointer", !57, i64 0}
!81 = !DILocation(line: 69, column: 7, scope: !9)
!82 = !DILocation(line: 70, column: 28, scope: !9)
!83 = !DILocation(line: 70, column: 17, scope: !9)
!84 = !DILocation(line: 70, column: 8, scope: !9)
!85 = !DILocation(line: 70, column: 15, scope: !9)
!86 = !{!78, !79, i64 4}
!87 = !DILocation(line: 71, column: 28, scope: !9)
!88 = !DILocation(line: 71, column: 17, scope: !9)
!89 = !DILocation(line: 71, column: 8, scope: !9)
!90 = !DILocation(line: 71, column: 15, scope: !9)
!91 = !{!78, !79, i64 0}
!92 = !DILocation(line: 74, column: 40, scope: !93)
!93 = distinct !DILexicalBlock(scope: !9, file: !1, line: 74, column: 7)
!94 = !DILocation(line: 74, column: 48, scope: !93)
!95 = !DILocation(line: 74, column: 18, scope: !93)
!96 = !DILocation(line: 55, column: 12, scope: !9)
!97 = !DILocation(line: 74, column: 64, scope: !93)
!98 = !DILocation(line: 74, column: 7, scope: !9)
!99 = !DILocation(line: 75, column: 13, scope: !93)
!100 = !DILocation(line: 75, column: 5, scope: !93)
!101 = !DILocation(line: 0, scope: !93)
!102 = !DILocation(line: 76, column: 8, scope: !9)
!103 = !DILocation(line: 76, column: 16, scope: !9)
!104 = !{!78, !79, i64 24}
!105 = !DILocation(line: 81, column: 15, scope: !9)
!106 = !DILocation(line: 81, column: 34, scope: !9)
!107 = !DILocation(line: 81, column: 10, scope: !9)
!108 = !DILocation(line: 81, column: 56, scope: !9)
!109 = !DILocation(line: 81, column: 9, scope: !9)
!110 = !DILocation(line: 55, column: 7, scope: !9)
!111 = !DILocation(line: 82, column: 19, scope: !9)
!112 = !DILocation(line: 82, column: 17, scope: !9)
!113 = !DILocation(line: 57, column: 17, scope: !9)
!114 = !DILocation(line: 83, column: 30, scope: !9)
!115 = !DILocation(line: 83, column: 21, scope: !9)
!116 = !DILocation(line: 83, column: 64, scope: !9)
!117 = !DILocation(line: 83, column: 55, scope: !9)
!118 = !DILocation(line: 84, column: 14, scope: !9)
!119 = !DILocation(line: 83, column: 83, scope: !9)
!120 = !DILocation(line: 84, column: 36, scope: !9)
!121 = !DILocation(line: 83, column: 13, scope: !9)
!122 = !DILocation(line: 56, column: 12, scope: !9)
!123 = !DILocation(line: 85, column: 57, scope: !9)
!124 = !DILocation(line: 85, column: 71, scope: !9)
!125 = !DILocation(line: 93, column: 54, scope: !9)
!126 = !DILocation(line: 85, column: 13, scope: !9)
!127 = !DILocation(line: 85, column: 47, scope: !9)
!128 = !DILocation(line: 56, column: 21, scope: !9)
!129 = !DILocation(line: 86, column: 14, scope: !9)
!130 = !DILocation(line: 86, column: 24, scope: !9)
!131 = !DILocation(line: 86, column: 29, scope: !9)
!132 = !DILocation(line: 56, column: 30, scope: !9)
!133 = !DILocation(line: 87, column: 24, scope: !9)
!134 = !DILocation(line: 87, column: 32, scope: !9)
!135 = !DILocation(line: 87, column: 37, scope: !9)
!136 = !DILocation(line: 87, column: 17, scope: !9)
!137 = !DILocation(line: 87, column: 41, scope: !9)
!138 = !DILocation(line: 56, column: 37, scope: !9)
!139 = !DILocation(line: 88, column: 18, scope: !9)
!140 = !DILocation(line: 88, column: 12, scope: !9)
!141 = !DILocation(line: 88, column: 9, scope: !9)
!142 = !DILocation(line: 89, column: 46, scope: !9)
!143 = !DILocation(line: 89, column: 71, scope: !9)
!144 = !DILocation(line: 55, column: 21, scope: !9)
!145 = !DILocation(line: 91, column: 26, scope: !9)
!146 = !DILocation(line: 91, column: 18, scope: !9)
!147 = !DILocation(line: 92, column: 15, scope: !9)
!148 = !DILocation(line: 93, column: 33, scope: !9)
!149 = !DILocation(line: 93, column: 52, scope: !9)
!150 = !DILocation(line: 91, column: 8, scope: !9)
!151 = !DILocation(line: 91, column: 16, scope: !9)
!152 = !{!78, !79, i64 28}
!153 = !DILocation(line: 89, column: 40, scope: !9)
!154 = !DILocation(line: 89, column: 62, scope: !9)
!155 = !DILocation(line: 94, column: 23, scope: !9)
!156 = !DILocation(line: 94, column: 8, scope: !9)
!157 = !DILocation(line: 94, column: 16, scope: !9)
!158 = !{!78, !79, i64 20}
!159 = !DILocation(line: 95, column: 8, scope: !9)
!160 = !DILocation(line: 95, column: 15, scope: !9)
!161 = !{!78, !79, i64 16}
!162 = !DILocation(line: 96, column: 8, scope: !9)
!163 = !DILocation(line: 96, column: 16, scope: !9)
!164 = !{!78, !79, i64 12}
!165 = !DILocation(line: 98, column: 8, scope: !9)
!166 = !DILocation(line: 98, column: 17, scope: !9)
!167 = !{!78, !79, i64 32}
!168 = !DILocation(line: 100, column: 3, scope: !9)
