; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/localtime.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/localtime.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@nolocks_localtime.mdays = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @nolocks_localtime(%struct.tm* nocapture, i64, i64, i32) local_unnamed_addr #0 !dbg !7 {
  %5 = alloca [12 x i32], align 16
  %6 = sub nsw i64 %1, %2, !dbg !56
  %7 = mul nsw i32 %3, 3600, !dbg !57
  %8 = sext i32 %7 to i64, !dbg !58
  %9 = add nsw i64 %6, %8, !dbg !59
  %10 = sdiv i64 %9, 86400, !dbg !60
  %11 = srem i64 %9, 86400, !dbg !62
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8, !dbg !64
  store i32 %3, i32* %12, align 8, !dbg !65, !tbaa !66
  %13 = sdiv i64 %11, 3600, !dbg !73
  %14 = trunc i64 %13 to i32, !dbg !74
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2, !dbg !75
  store i32 %14, i32* %15, align 8, !dbg !76, !tbaa !77
  %16 = srem i64 %11, 3600, !dbg !78
  %17 = sdiv i64 %16, 60, !dbg !79
  %18 = trunc i64 %17 to i32, !dbg !80
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1, !dbg !81
  store i32 %18, i32* %19, align 4, !dbg !82, !tbaa !83
  %20 = srem i64 %16, 60, !dbg !84
  %21 = trunc i64 %20 to i32, !dbg !85
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0, !dbg !86
  store i32 %21, i32* %22, align 8, !dbg !87, !tbaa !88
  %23 = add nsw i64 %10, 4, !dbg !89
  %24 = srem i64 %23, 7, !dbg !90
  %25 = trunc i64 %24 to i32, !dbg !91
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 6, !dbg !92
  store i32 %25, i32* %26, align 8, !dbg !93, !tbaa !94
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5, !dbg !95
  store i32 1970, i32* %27, align 4, !dbg !96, !tbaa !97
  br label %28, !dbg !98

; <label>:28:                                     ; preds = %46, %4
  %29 = phi i32 [ 1970, %4 ], [ %48, %46 ], !dbg !99
  %30 = phi i64 [ %10, %4 ], [ %47, %46 ], !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %31 = and i32 %29, 3, !dbg !100
  %32 = icmp eq i32 %31, 0, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %32, label %34, label %33, !dbg !108

; <label>:33:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br label %42, !dbg !109

; <label>:34:                                     ; preds = %28
  %35 = urem i32 %29, 100
  %36 = icmp eq i32 %35, 0, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %36, label %38, label %37, !dbg !112

; <label>:37:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br label %42, !dbg !113

; <label>:38:                                     ; preds = %34
  %39 = urem i32 %29, 400
  %40 = icmp eq i32 %39, 0, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  %41 = zext i1 %40 to i64, !dbg !118
  br label %42, !dbg !118

; <label>:42:                                     ; preds = %33, %37, %38
  %43 = phi i64 [ 0, %33 ], [ 1, %37 ], [ %41, %38 ], !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  %44 = add nuw nsw i64 %43, 365, !dbg !120
  %45 = icmp slt i64 %30, %44, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %45, label %49, label %46, !dbg !124

; <label>:46:                                     ; preds = %42
  %47 = sub nsw i64 %30, %44, !dbg !125
  %48 = add nuw nsw i32 %29, 1, !dbg !126
  store i32 %48, i32* %27, align 4, !dbg !126, !tbaa !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br label %28

; <label>:49:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %50 = trunc i64 %30 to i32, !dbg !129
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 7, !dbg !130
  store i32 %50, i32* %51, align 4, !dbg !131, !tbaa !132
  %52 = bitcast [12 x i32]* %5 to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %52) #3, !dbg !133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %52, i8* align 16 bitcast ([12 x i32]* @nolocks_localtime.mdays to i8*), i64 48, i1 false), !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br i1 %32, label %54, label %53, !dbg !135

; <label>:53:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br label %62, !dbg !137

; <label>:54:                                     ; preds = %49
  %55 = urem i32 %29, 100
  %56 = icmp eq i32 %55, 0, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br i1 %56, label %58, label %57, !dbg !139

; <label>:57:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br label %62, !dbg !140

; <label>:58:                                     ; preds = %54
  %59 = urem i32 %29, 400
  %60 = icmp eq i32 %59, 0, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  %61 = select i1 %60, i32 29, i32 28, !dbg !144
  br label %62, !dbg !144

; <label>:62:                                     ; preds = %53, %57, %58
  %63 = phi i32 [ 28, %53 ], [ 29, %57 ], [ %61, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 1, !dbg !146
  store i32 %63, i32* %64, align 4, !dbg !147, !tbaa !148
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4, !dbg !149
  store i32 0, i32* %65, align 8, !dbg !150, !tbaa !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  %66 = icmp slt i64 %30, 31, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  br i1 %66, label %80, label %67, !dbg !152

; <label>:67:                                     ; preds = %62, %67
  %68 = phi i64 [ %72, %67 ], [ 0, %62 ]
  %69 = phi i64 [ %76, %67 ], [ 31, %62 ]
  %70 = phi i64 [ %71, %67 ], [ %30, %62 ]
  %71 = sub nsw i64 %70, %69, !dbg !154
  %72 = add nuw i64 %68, 1, !dbg !156
  %73 = trunc i64 %72 to i32, !dbg !156
  store i32 %73, i32* %65, align 8, !dbg !156, !tbaa !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  %74 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 %72, !dbg !157
  %75 = load i32, i32* %74, align 4, !dbg !157, !tbaa !148
  %76 = sext i32 %75 to i64, !dbg !157
  %77 = icmp slt i64 %71, %76, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  br i1 %77, label %78, label %67, !dbg !152, !llvm.loop !158

; <label>:78:                                     ; preds = %67
  %79 = trunc i64 %71 to i32, !dbg !160
  br label %80, !dbg !160

; <label>:80:                                     ; preds = %78, %62
  %81 = phi i32 [ %79, %78 ], [ %50, %62 ], !dbg !160
  %82 = add i32 %81, 1, !dbg !160
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !161
  store i32 %82, i32* %83, align 4, !dbg !162, !tbaa !163
  %84 = add nsw i32 %29, -1900, !dbg !164
  store i32 %84, i32* %27, align 4, !dbg !164, !tbaa !97
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %52) #3, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  ret void, !dbg !165
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/localtime.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "nolocks_localtime", scope: !1, file: !1, line: 59, type: !8, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !30, !30, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
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
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !31, line: 34, baseType: !25)
!31 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !{!33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45}
!33 = !DILocalVariable(name: "tmp", arg: 1, scope: !7, file: !1, line: 59, type: !10)
!34 = !DILocalVariable(name: "t", arg: 2, scope: !7, file: !1, line: 59, type: !30)
!35 = !DILocalVariable(name: "tz", arg: 3, scope: !7, file: !1, line: 59, type: !30)
!36 = !DILocalVariable(name: "dst", arg: 4, scope: !7, file: !1, line: 59, type: !15)
!37 = !DILocalVariable(name: "secs_min", scope: !7, file: !1, line: 60, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!39 = !DILocalVariable(name: "secs_hour", scope: !7, file: !1, line: 61, type: !38)
!40 = !DILocalVariable(name: "secs_day", scope: !7, file: !1, line: 62, type: !38)
!41 = !DILocalVariable(name: "days", scope: !7, file: !1, line: 66, type: !30)
!42 = !DILocalVariable(name: "seconds", scope: !7, file: !1, line: 67, type: !30)
!43 = !DILocalVariable(name: "days_this_year", scope: !44, file: !1, line: 83, type: !30)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 81, column: 14)
!45 = !DILocalVariable(name: "mdays", scope: !7, file: !1, line: 93, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 384, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 12)
!49 = !DILocation(line: 59, column: 35, scope: !7)
!50 = !DILocation(line: 59, column: 47, scope: !7)
!51 = !DILocation(line: 59, column: 57, scope: !7)
!52 = !DILocation(line: 59, column: 65, scope: !7)
!53 = !DILocation(line: 60, column: 18, scope: !7)
!54 = !DILocation(line: 61, column: 18, scope: !7)
!55 = !DILocation(line: 62, column: 18, scope: !7)
!56 = !DILocation(line: 64, column: 7, scope: !7)
!57 = !DILocation(line: 65, column: 14, scope: !7)
!58 = !DILocation(line: 65, column: 10, scope: !7)
!59 = !DILocation(line: 65, column: 7, scope: !7)
!60 = !DILocation(line: 66, column: 21, scope: !7)
!61 = !DILocation(line: 66, column: 12, scope: !7)
!62 = !DILocation(line: 67, column: 24, scope: !7)
!63 = !DILocation(line: 67, column: 12, scope: !7)
!64 = !DILocation(line: 69, column: 10, scope: !7)
!65 = !DILocation(line: 69, column: 19, scope: !7)
!66 = !{!67, !68, i64 32}
!67 = !{!"tm", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !71, i64 40, !72, i64 48}
!68 = !{!"int", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!"long", !69, i64 0}
!72 = !{!"any pointer", !69, i64 0}
!73 = !DILocation(line: 70, column: 28, scope: !7)
!74 = !DILocation(line: 70, column: 20, scope: !7)
!75 = !DILocation(line: 70, column: 10, scope: !7)
!76 = !DILocation(line: 70, column: 18, scope: !7)
!77 = !{!67, !68, i64 8}
!78 = !DILocation(line: 71, column: 28, scope: !7)
!79 = !DILocation(line: 71, column: 41, scope: !7)
!80 = !DILocation(line: 71, column: 19, scope: !7)
!81 = !DILocation(line: 71, column: 10, scope: !7)
!82 = !DILocation(line: 71, column: 17, scope: !7)
!83 = !{!67, !68, i64 4}
!84 = !DILocation(line: 72, column: 41, scope: !7)
!85 = !DILocation(line: 72, column: 19, scope: !7)
!86 = !DILocation(line: 72, column: 10, scope: !7)
!87 = !DILocation(line: 72, column: 17, scope: !7)
!88 = !{!67, !68, i64 0}
!89 = !DILocation(line: 77, column: 25, scope: !7)
!90 = !DILocation(line: 77, column: 28, scope: !7)
!91 = !DILocation(line: 77, column: 20, scope: !7)
!92 = !DILocation(line: 77, column: 10, scope: !7)
!93 = !DILocation(line: 77, column: 18, scope: !7)
!94 = !{!67, !68, i64 24}
!95 = !DILocation(line: 80, column: 10, scope: !7)
!96 = !DILocation(line: 80, column: 18, scope: !7)
!97 = !{!67, !68, i64 20}
!98 = !DILocation(line: 81, column: 5, scope: !7)
!99 = !DILocation(line: 83, column: 57, scope: !44)
!100 = !DILocation(line: 53, column: 14, scope: !101, inlinedAt: !107)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 53, column: 9)
!102 = distinct !DISubprogram(name: "is_leap_year", scope: !1, file: !1, line: 52, type: !103, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{!15, !30}
!105 = !{!106}
!106 = !DILocalVariable(name: "year", arg: 1, scope: !102, file: !1, line: 52, type: !30)
!107 = distinct !DILocation(line: 83, column: 39, scope: !44)
!108 = !DILocation(line: 53, column: 9, scope: !102, inlinedAt: !107)
!109 = !DILocation(line: 53, column: 19, scope: !101, inlinedAt: !107)
!110 = !DILocation(line: 54, column: 19, scope: !111, inlinedAt: !107)
!111 = distinct !DILexicalBlock(scope: !101, file: !1, line: 54, column: 14)
!112 = !DILocation(line: 54, column: 14, scope: !101, inlinedAt: !107)
!113 = !DILocation(line: 54, column: 26, scope: !111, inlinedAt: !107)
!114 = !DILocation(line: 55, column: 19, scope: !115, inlinedAt: !107)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 55, column: 14)
!116 = !DILocation(line: 55, column: 14, scope: !111, inlinedAt: !107)
!117 = !DILocation(line: 0, scope: !115, inlinedAt: !107)
!118 = !DILocation(line: 56, column: 10, scope: !115, inlinedAt: !107)
!119 = !DILocation(line: 57, column: 1, scope: !102, inlinedAt: !107)
!120 = !DILocation(line: 83, column: 37, scope: !44)
!121 = !DILocation(line: 83, column: 16, scope: !44)
!122 = !DILocation(line: 84, column: 28, scope: !123)
!123 = distinct !DILexicalBlock(scope: !44, file: !1, line: 84, column: 13)
!124 = !DILocation(line: 84, column: 13, scope: !44)
!125 = !DILocation(line: 85, column: 14, scope: !44)
!126 = !DILocation(line: 86, column: 21, scope: !44)
!127 = !DILocation(line: 87, column: 5, scope: !7)
!128 = !DILocation(line: 84, column: 36, scope: !123)
!129 = !DILocation(line: 88, column: 20, scope: !7)
!130 = !DILocation(line: 88, column: 10, scope: !7)
!131 = !DILocation(line: 88, column: 18, scope: !7)
!132 = !{!67, !68, i64 28}
!133 = !DILocation(line: 93, column: 5, scope: !7)
!134 = !DILocation(line: 93, column: 9, scope: !7)
!135 = !DILocation(line: 53, column: 9, scope: !102, inlinedAt: !136)
!136 = distinct !DILocation(line: 94, column: 17, scope: !7)
!137 = !DILocation(line: 53, column: 19, scope: !101, inlinedAt: !136)
!138 = !DILocation(line: 54, column: 19, scope: !111, inlinedAt: !136)
!139 = !DILocation(line: 54, column: 14, scope: !101, inlinedAt: !136)
!140 = !DILocation(line: 54, column: 26, scope: !111, inlinedAt: !136)
!141 = !DILocation(line: 55, column: 19, scope: !115, inlinedAt: !136)
!142 = !DILocation(line: 55, column: 14, scope: !111, inlinedAt: !136)
!143 = !DILocation(line: 0, scope: !115, inlinedAt: !136)
!144 = !DILocation(line: 56, column: 10, scope: !115, inlinedAt: !136)
!145 = !DILocation(line: 57, column: 1, scope: !102, inlinedAt: !136)
!146 = !DILocation(line: 94, column: 5, scope: !7)
!147 = !DILocation(line: 94, column: 14, scope: !7)
!148 = !{!68, !68, i64 0}
!149 = !DILocation(line: 96, column: 10, scope: !7)
!150 = !DILocation(line: 96, column: 17, scope: !7)
!151 = !{!67, !68, i64 16}
!152 = !DILocation(line: 97, column: 5, scope: !7)
!153 = !DILocation(line: 97, column: 16, scope: !7)
!154 = !DILocation(line: 98, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !7, file: !1, line: 97, column: 39)
!156 = !DILocation(line: 99, column: 20, scope: !155)
!157 = !DILocation(line: 97, column: 19, scope: !7)
!158 = distinct !{!158, !152, !159}
!159 = !DILocation(line: 100, column: 5, scope: !7)
!160 = !DILocation(line: 102, column: 20, scope: !7)
!161 = !DILocation(line: 102, column: 10, scope: !7)
!162 = !DILocation(line: 102, column: 18, scope: !7)
!163 = !{!67, !68, i64 12}
!164 = !DILocation(line: 103, column: 18, scope: !7)
!165 = !DILocation(line: 104, column: 1, scope: !7)
