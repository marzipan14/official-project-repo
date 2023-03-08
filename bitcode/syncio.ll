; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/syncio.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/syncio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @syncWrite(i32, i8*, i64, i64) local_unnamed_addr #0 !dbg !7 {
  %5 = tail call i64 @mstime() #4, !dbg !36
  br label %6, !dbg !39

; <label>:6:                                      ; preds = %25, %4
  %7 = phi i64 [ %2, %4 ], [ %22, %25 ]
  %8 = phi i64 [ %3, %4 ], [ %30, %25 ], !dbg !38
  %9 = phi i8* [ %1, %4 ], [ %23, %25 ]
  %10 = icmp sgt i64 %8, 10, !dbg !40
  %11 = select i1 %10, i64 %8, i64 10, !dbg !41
  %12 = tail call i64 @write(i32 %0, i8* %9, i64 %7) #4, !dbg !43
  %13 = icmp eq i64 %12, -1, !dbg !45
  br i1 %13, label %14, label %18, !dbg !47

; <label>:14:                                     ; preds = %6
  %15 = tail call i32* @__errno() #4, !dbg !48
  %16 = load i32, i32* %15, align 4, !dbg !48, !tbaa !51
  %17 = icmp eq i32 %16, 11, !dbg !55
  br i1 %17, label %21, label %33, !dbg !56

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds i8, i8* %9, i64 %12, !dbg !57
  %20 = sub nsw i64 %7, %12, !dbg !59
  br label %21

; <label>:21:                                     ; preds = %14, %18
  %22 = phi i64 [ %7, %14 ], [ %20, %18 ]
  %23 = phi i8* [ %9, %14 ], [ %19, %18 ]
  %24 = icmp eq i64 %22, 0, !dbg !60
  br i1 %24, label %33, label %25, !dbg !62

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @aeWait(i32 %0, i32 2, i64 %11) #4, !dbg !63
  %27 = tail call i64 @mstime() #4, !dbg !64
  %28 = sub nsw i64 %27, %5, !dbg !65
  %29 = icmp slt i64 %28, %3, !dbg !67
  %30 = sub nsw i64 %3, %28, !dbg !69
  br i1 %29, label %6, label %31, !dbg !70

; <label>:31:                                     ; preds = %25
  %32 = tail call i32* @__errno() #4, !dbg !71
  store i32 116, i32* %32, align 4, !dbg !73, !tbaa !51
  br label %33, !dbg !74

; <label>:33:                                     ; preds = %14, %21, %31
  %34 = phi i64 [ -1, %31 ], [ -1, %14 ], [ %2, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  ret i64 %34, !dbg !75
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @aeWait(i32, i32, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i64 @syncRead(i32, i8*, i64, i64) local_unnamed_addr #0 !dbg !76 {
  %5 = tail call i64 @mstime() #4, !dbg !94
  %6 = icmp eq i64 %2, 0, !dbg !97
  br i1 %6, label %35, label %7, !dbg !99

; <label>:7:                                      ; preds = %4, %24
  %8 = phi i64 [ %27, %24 ], [ 0, %4 ], !dbg !93
  %9 = phi i64 [ %26, %24 ], [ %2, %4 ]
  %10 = phi i64 [ %32, %24 ], [ %3, %4 ], !dbg !96
  %11 = phi i8* [ %25, %24 ], [ %1, %4 ]
  %12 = icmp sgt i64 %10, 10, !dbg !100
  %13 = select i1 %12, i64 %10, i64 10, !dbg !101
  %14 = tail call i64 @read(i32 %0, i8* %11, i64 %9) #4, !dbg !103
  switch i64 %14, label %19 [
    i64 0, label %35
    i64 -1, label %15
  ], !dbg !105

; <label>:15:                                     ; preds = %7
  %16 = tail call i32* @__errno() #4, !dbg !106
  %17 = load i32, i32* %16, align 4, !dbg !106, !tbaa !51
  %18 = icmp eq i32 %17, 11, !dbg !110
  br i1 %18, label %24, label %35, !dbg !111

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !112
  %21 = sub nsw i64 %9, %14, !dbg !114
  %22 = add nsw i64 %14, %8, !dbg !115
  %23 = icmp eq i64 %21, 0, !dbg !116
  br i1 %23, label %35, label %24, !dbg !118

; <label>:24:                                     ; preds = %15, %19
  %25 = phi i8* [ %20, %19 ], [ %11, %15 ]
  %26 = phi i64 [ %21, %19 ], [ %9, %15 ]
  %27 = phi i64 [ %22, %19 ], [ %8, %15 ]
  %28 = tail call i32 @aeWait(i32 %0, i32 1, i64 %13) #4, !dbg !119
  %29 = tail call i64 @mstime() #4, !dbg !120
  %30 = sub nsw i64 %29, %5, !dbg !121
  %31 = icmp slt i64 %30, %3, !dbg !123
  %32 = sub nsw i64 %3, %30, !dbg !125
  br i1 %31, label %7, label %33, !dbg !126

; <label>:33:                                     ; preds = %24
  %34 = tail call i32* @__errno() #4, !dbg !127
  store i32 116, i32* %34, align 4, !dbg !129, !tbaa !51
  br label %35, !dbg !130

; <label>:35:                                     ; preds = %19, %15, %7, %33, %4
  %36 = phi i64 [ 0, %4 ], [ -1, %33 ], [ -1, %7 ], [ -1, %15 ], [ %22, %19 ], !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  ret i64 %36, !dbg !133
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @syncReadLine(i32, i8* nocapture, i64, i64) local_unnamed_addr #0 !dbg !134 {
  %5 = alloca i8, align 1
  %6 = add nsw i64 %2, -1, !dbg !148
  %7 = icmp eq i64 %6, 0, !dbg !149
  br i1 %7, label %31, label %8, !dbg !149

; <label>:8:                                      ; preds = %4, %26
  %9 = phi i64 [ %29, %26 ], [ %6, %4 ]
  %10 = phi i64 [ %28, %26 ], [ 0, %4 ]
  %11 = phi i8* [ %27, %26 ], [ %1, %4 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #5, !dbg !151
  %12 = call i64 @syncRead(i32 %0, i8* nonnull %5, i64 1, i64 %3) #6, !dbg !152
  %13 = icmp eq i64 %12, -1, !dbg !154
  br i1 %13, label %24, label %14, !dbg !155

; <label>:14:                                     ; preds = %8
  %15 = load i8, i8* %5, align 1, !dbg !156, !tbaa !158
  %16 = icmp eq i8 %15, 10, !dbg !159
  br i1 %16, label %17, label %26, !dbg !160

; <label>:17:                                     ; preds = %14
  store i8 0, i8* %11, align 1, !dbg !161, !tbaa !158
  %18 = icmp eq i64 %10, 0, !dbg !163
  br i1 %18, label %24, label %19, !dbg !165

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !166
  %21 = load i8, i8* %20, align 1, !dbg !167, !tbaa !158
  %22 = icmp eq i8 %21, 13, !dbg !168
  br i1 %22, label %23, label %24, !dbg !169

; <label>:23:                                     ; preds = %19
  store i8 0, i8* %20, align 1, !dbg !170, !tbaa !158
  br label %24, !dbg !171

; <label>:24:                                     ; preds = %8, %17, %23, %19
  %25 = phi i64 [ %10, %19 ], [ %10, %23 ], [ 0, %17 ], [ -1, %8 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !172
  br label %31

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !173
  store i8 %15, i8* %11, align 1, !dbg !175, !tbaa !158
  store i8 0, i8* %27, align 1, !dbg !176, !tbaa !158
  %28 = add nuw nsw i64 %10, 1, !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !172
  %29 = add nsw i64 %9, -1, !dbg !148
  %30 = icmp eq i64 %29, 0, !dbg !149
  br i1 %30, label %31, label %8, !dbg !149

; <label>:31:                                     ; preds = %26, %4, %24
  %32 = phi i64 [ %25, %24 ], [ 0, %4 ], [ %28, %26 ], !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  ret i64 %32, !dbg !179
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/syncio.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "syncWrite", scope: !1, file: !1, line: 49, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !16, !10, !18}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !11, line: 200, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !13, line: 145, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !30}
!20 = !DILocalVariable(name: "fd", arg: 1, scope: !7, file: !1, line: 49, type: !15)
!21 = !DILocalVariable(name: "ptr", arg: 2, scope: !7, file: !1, line: 49, type: !16)
!22 = !DILocalVariable(name: "size", arg: 3, scope: !7, file: !1, line: 49, type: !10)
!23 = !DILocalVariable(name: "timeout", arg: 4, scope: !7, file: !1, line: 49, type: !18)
!24 = !DILocalVariable(name: "nwritten", scope: !7, file: !1, line: 50, type: !10)
!25 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 50, type: !10)
!26 = !DILocalVariable(name: "start", scope: !7, file: !1, line: 51, type: !18)
!27 = !DILocalVariable(name: "remaining", scope: !7, file: !1, line: 52, type: !18)
!28 = !DILocalVariable(name: "wait", scope: !29, file: !1, line: 55, type: !18)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 54, column: 14)
!30 = !DILocalVariable(name: "elapsed", scope: !29, file: !1, line: 57, type: !18)
!31 = !DILocation(line: 49, column: 23, scope: !7)
!32 = !DILocation(line: 49, column: 33, scope: !7)
!33 = !DILocation(line: 49, column: 46, scope: !7)
!34 = !DILocation(line: 49, column: 62, scope: !7)
!35 = !DILocation(line: 50, column: 23, scope: !7)
!36 = !DILocation(line: 51, column: 23, scope: !7)
!37 = !DILocation(line: 51, column: 15, scope: !7)
!38 = !DILocation(line: 52, column: 15, scope: !7)
!39 = !DILocation(line: 54, column: 5, scope: !7)
!40 = !DILocation(line: 55, column: 37, scope: !29)
!41 = !DILocation(line: 55, column: 26, scope: !29)
!42 = !DILocation(line: 55, column: 19, scope: !29)
!43 = !DILocation(line: 61, column: 20, scope: !29)
!44 = !DILocation(line: 50, column: 13, scope: !7)
!45 = !DILocation(line: 62, column: 22, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !1, line: 62, column: 13)
!47 = !DILocation(line: 62, column: 13, scope: !29)
!48 = !DILocation(line: 63, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 63, column: 17)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 62, column: 29)
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 63, column: 23, scope: !49)
!56 = !DILocation(line: 63, column: 17, scope: !50)
!57 = !DILocation(line: 65, column: 17, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 64, column: 16)
!59 = !DILocation(line: 66, column: 18, scope: !58)
!60 = !DILocation(line: 68, column: 18, scope: !61)
!61 = distinct !DILexicalBlock(scope: !29, file: !1, line: 68, column: 13)
!62 = !DILocation(line: 68, column: 13, scope: !29)
!63 = !DILocation(line: 71, column: 9, scope: !29)
!64 = !DILocation(line: 72, column: 19, scope: !29)
!65 = !DILocation(line: 72, column: 28, scope: !29)
!66 = !DILocation(line: 57, column: 19, scope: !29)
!67 = !DILocation(line: 73, column: 21, scope: !68)
!68 = distinct !DILexicalBlock(scope: !29, file: !1, line: 73, column: 13)
!69 = !DILocation(line: 77, column: 29, scope: !29)
!70 = !DILocation(line: 73, column: 13, scope: !29)
!71 = !DILocation(line: 74, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 73, column: 33)
!73 = !DILocation(line: 74, column: 19, scope: !72)
!74 = !DILocation(line: 75, column: 13, scope: !72)
!75 = !DILocation(line: 79, column: 1, scope: !7)
!76 = distinct !DISubprogram(name: "syncRead", scope: !1, file: !1, line: 85, type: !8, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !88}
!78 = !DILocalVariable(name: "fd", arg: 1, scope: !76, file: !1, line: 85, type: !15)
!79 = !DILocalVariable(name: "ptr", arg: 2, scope: !76, file: !1, line: 85, type: !16)
!80 = !DILocalVariable(name: "size", arg: 3, scope: !76, file: !1, line: 85, type: !10)
!81 = !DILocalVariable(name: "timeout", arg: 4, scope: !76, file: !1, line: 85, type: !18)
!82 = !DILocalVariable(name: "nread", scope: !76, file: !1, line: 86, type: !10)
!83 = !DILocalVariable(name: "totread", scope: !76, file: !1, line: 86, type: !10)
!84 = !DILocalVariable(name: "start", scope: !76, file: !1, line: 87, type: !18)
!85 = !DILocalVariable(name: "remaining", scope: !76, file: !1, line: 88, type: !18)
!86 = !DILocalVariable(name: "wait", scope: !87, file: !1, line: 92, type: !18)
!87 = distinct !DILexicalBlock(scope: !76, file: !1, line: 91, column: 14)
!88 = !DILocalVariable(name: "elapsed", scope: !87, file: !1, line: 94, type: !18)
!89 = !DILocation(line: 85, column: 22, scope: !76)
!90 = !DILocation(line: 85, column: 32, scope: !76)
!91 = !DILocation(line: 85, column: 45, scope: !76)
!92 = !DILocation(line: 85, column: 61, scope: !76)
!93 = !DILocation(line: 86, column: 20, scope: !76)
!94 = !DILocation(line: 87, column: 23, scope: !76)
!95 = !DILocation(line: 87, column: 15, scope: !76)
!96 = !DILocation(line: 88, column: 15, scope: !76)
!97 = !DILocation(line: 90, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !76, file: !1, line: 90, column: 9)
!99 = !DILocation(line: 90, column: 9, scope: !76)
!100 = !DILocation(line: 92, column: 37, scope: !87)
!101 = !DILocation(line: 92, column: 26, scope: !87)
!102 = !DILocation(line: 92, column: 19, scope: !87)
!103 = !DILocation(line: 98, column: 17, scope: !87)
!104 = !DILocation(line: 86, column: 13, scope: !76)
!105 = !DILocation(line: 99, column: 13, scope: !87)
!106 = !DILocation(line: 101, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 101, column: 17)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 100, column: 26)
!109 = distinct !DILexicalBlock(scope: !87, file: !1, line: 100, column: 13)
!110 = !DILocation(line: 101, column: 23, scope: !107)
!111 = !DILocation(line: 101, column: 17, scope: !108)
!112 = !DILocation(line: 103, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 102, column: 16)
!114 = !DILocation(line: 104, column: 18, scope: !113)
!115 = !DILocation(line: 105, column: 21, scope: !113)
!116 = !DILocation(line: 107, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !87, file: !1, line: 107, column: 13)
!118 = !DILocation(line: 107, column: 13, scope: !87)
!119 = !DILocation(line: 110, column: 9, scope: !87)
!120 = !DILocation(line: 111, column: 19, scope: !87)
!121 = !DILocation(line: 111, column: 28, scope: !87)
!122 = !DILocation(line: 94, column: 19, scope: !87)
!123 = !DILocation(line: 112, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !87, file: !1, line: 112, column: 13)
!125 = !DILocation(line: 116, column: 29, scope: !87)
!126 = !DILocation(line: 112, column: 13, scope: !87)
!127 = !DILocation(line: 113, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 112, column: 33)
!129 = !DILocation(line: 113, column: 19, scope: !128)
!130 = !DILocation(line: 114, column: 13, scope: !128)
!131 = !DILocation(line: 0, scope: !132)
!132 = distinct !DILexicalBlock(scope: !87, file: !1, line: 99, column: 13)
!133 = !DILocation(line: 118, column: 1, scope: !76)
!134 = distinct !DISubprogram(name: "syncReadLine", scope: !1, file: !1, line: 125, type: !8, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DILocalVariable(name: "fd", arg: 1, scope: !134, file: !1, line: 125, type: !15)
!137 = !DILocalVariable(name: "ptr", arg: 2, scope: !134, file: !1, line: 125, type: !16)
!138 = !DILocalVariable(name: "size", arg: 3, scope: !134, file: !1, line: 125, type: !10)
!139 = !DILocalVariable(name: "timeout", arg: 4, scope: !134, file: !1, line: 125, type: !18)
!140 = !DILocalVariable(name: "nread", scope: !134, file: !1, line: 126, type: !10)
!141 = !DILocalVariable(name: "c", scope: !142, file: !1, line: 130, type: !17)
!142 = distinct !DILexicalBlock(scope: !134, file: !1, line: 129, column: 17)
!143 = !DILocation(line: 125, column: 26, scope: !134)
!144 = !DILocation(line: 125, column: 36, scope: !134)
!145 = !DILocation(line: 125, column: 49, scope: !134)
!146 = !DILocation(line: 125, column: 65, scope: !134)
!147 = !DILocation(line: 126, column: 13, scope: !134)
!148 = !DILocation(line: 128, column: 9, scope: !134)
!149 = !DILocation(line: 129, column: 5, scope: !134)
!150 = !DILocation(line: 130, column: 14, scope: !142)
!151 = !DILocation(line: 130, column: 9, scope: !142)
!152 = !DILocation(line: 132, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !142, file: !1, line: 132, column: 13)
!154 = !DILocation(line: 132, column: 39, scope: !153)
!155 = !DILocation(line: 132, column: 13, scope: !142)
!156 = !DILocation(line: 133, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !142, file: !1, line: 133, column: 13)
!158 = !{!53, !53, i64 0}
!159 = !DILocation(line: 133, column: 15, scope: !157)
!160 = !DILocation(line: 133, column: 13, scope: !142)
!161 = !DILocation(line: 134, column: 18, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 133, column: 24)
!163 = !DILocation(line: 135, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !162, file: !1, line: 135, column: 17)
!165 = !DILocation(line: 135, column: 23, scope: !164)
!166 = !DILocation(line: 135, column: 31, scope: !164)
!167 = !DILocation(line: 135, column: 26, scope: !164)
!168 = !DILocation(line: 135, column: 35, scope: !164)
!169 = !DILocation(line: 135, column: 17, scope: !162)
!170 = !DILocation(line: 135, column: 53, scope: !164)
!171 = !DILocation(line: 135, column: 44, scope: !164)
!172 = !DILocation(line: 143, column: 5, scope: !134)
!173 = !DILocation(line: 138, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !157, file: !1, line: 137, column: 16)
!175 = !DILocation(line: 138, column: 20, scope: !174)
!176 = !DILocation(line: 139, column: 18, scope: !174)
!177 = !DILocation(line: 140, column: 18, scope: !174)
!178 = !DILocation(line: 0, scope: !134)
!179 = !DILocation(line: 145, column: 1, scope: !134)
