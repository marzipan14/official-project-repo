; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/syncio.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/syncio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @syncWrite(i32, i8*, i64, i64) local_unnamed_addr #0 !dbg !7 {
  %5 = tail call i64 @mstime() #4, !dbg !36
  br label %6, !dbg !39

; <label>:6:                                      ; preds = %32, %4
  %7 = phi i64 [ %2, %4 ], [ %22, %32 ]
  %8 = phi i64 [ %3, %4 ], [ %33, %32 ], !dbg !38
  %9 = phi i8* [ %1, %4 ], [ %23, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %10 = icmp sgt i64 %8, 10, !dbg !40
  %11 = select i1 %10, i64 %8, i64 10, !dbg !41
  %12 = tail call i64 @write(i32 %0, i8* %9, i64 %7) #4, !dbg !43
  %13 = icmp eq i64 %12, -1, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %13, label %14, label %18, !dbg !47

; <label>:14:                                     ; preds = %6
  %15 = tail call i32* @__errno() #4, !dbg !48
  %16 = load i32, i32* %15, align 4, !dbg !48, !tbaa !51
  %17 = icmp eq i32 %16, 11, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %17, label %21, label %34, !dbg !56

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds i8, i8* %9, i64 %12, !dbg !57
  %20 = sub nsw i64 %7, %12, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %21

; <label>:21:                                     ; preds = %14, %18
  %22 = phi i64 [ %7, %14 ], [ %20, %18 ]
  %23 = phi i8* [ %9, %14 ], [ %19, %18 ]
  %24 = icmp eq i64 %22, 0, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %24, label %34, label %25, !dbg !62

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @aeWait(i32 %0, i32 2, i64 %11) #4, !dbg !63
  %27 = tail call i64 @mstime() #4, !dbg !64
  %28 = sub nsw i64 %27, %5, !dbg !65
  %29 = icmp slt i64 %28, %3, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %29, label %32, label %30, !dbg !69

; <label>:30:                                     ; preds = %25
  %31 = tail call i32* @__errno() #4, !dbg !70
  store i32 116, i32* %31, align 4, !dbg !72, !tbaa !51
  br label %34, !dbg !73

; <label>:32:                                     ; preds = %25
  %33 = sub nsw i64 %3, %28, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br label %6

; <label>:34:                                     ; preds = %21, %14, %30
  %35 = phi i64 [ -1, %30 ], [ %2, %21 ], [ -1, %14 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  ret i64 %35, !dbg !77
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
define dso_local i64 @syncRead(i32, i8*, i64, i64) local_unnamed_addr #0 !dbg !78 {
  %5 = tail call i64 @mstime() #4, !dbg !96
  %6 = icmp eq i64 %2, 0, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %6, label %47, label %7, !dbg !101

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #4, !dbg !102
  %9 = icmp eq i64 %8, 0, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %9, label %39, label %10, !dbg !106

; <label>:10:                                     ; preds = %7
  %11 = icmp sgt i64 %3, 10, !dbg !107
  %12 = select i1 %11, i64 %3, i64 10, !dbg !108
  br label %13, !dbg !110

; <label>:13:                                     ; preds = %10, %41
  %14 = phi i64 [ %45, %41 ], [ %8, %10 ]
  %15 = phi i64 [ %44, %41 ], [ %12, %10 ]
  %16 = phi i8* [ %30, %41 ], [ %1, %10 ]
  %17 = phi i64 [ %31, %41 ], [ %2, %10 ]
  %18 = phi i64 [ %32, %41 ], [ 0, %10 ]
  %19 = icmp eq i64 %14, -1, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %19, label %20, label %24, !dbg !112

; <label>:20:                                     ; preds = %13
  %21 = tail call i32* @__errno() #4, !dbg !113
  %22 = load i32, i32* %21, align 4, !dbg !113, !tbaa !51
  %23 = icmp eq i32 %22, 11, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br i1 %23, label %29, label %47, !dbg !117

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds i8, i8* %16, i64 %14, !dbg !119
  %26 = sub nsw i64 %17, %14, !dbg !121
  %27 = add nsw i64 %14, %18, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %28 = icmp eq i64 %26, 0, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br i1 %28, label %39, label %29, !dbg !125

; <label>:29:                                     ; preds = %20, %24
  %30 = phi i8* [ %25, %24 ], [ %16, %20 ]
  %31 = phi i64 [ %26, %24 ], [ %17, %20 ]
  %32 = phi i64 [ %27, %24 ], [ %18, %20 ]
  %33 = tail call i32 @aeWait(i32 %0, i32 1, i64 %15) #4, !dbg !126
  %34 = tail call i64 @mstime() #4, !dbg !127
  %35 = sub nsw i64 %34, %5, !dbg !128
  %36 = icmp slt i64 %35, %3, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %36, label %41, label %37, !dbg !132

; <label>:37:                                     ; preds = %29
  %38 = tail call i32* @__errno() #4, !dbg !133
  store i32 116, i32* %38, align 4, !dbg !135, !tbaa !51
  br label %39, !dbg !136

; <label>:39:                                     ; preds = %24, %41, %7, %37
  %40 = phi i64 [ -1, %37 ], [ -1, %7 ], [ %27, %24 ], [ -1, %41 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br label %47

; <label>:41:                                     ; preds = %29
  %42 = sub nsw i64 %3, %35, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = icmp sgt i64 %42, 10, !dbg !107
  %44 = select i1 %43, i64 %42, i64 10, !dbg !108
  %45 = tail call i64 @read(i32 %0, i8* %30, i64 %31) #4, !dbg !102
  %46 = icmp eq i64 %45, 0, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %46, label %39, label %13, !dbg !106

; <label>:47:                                     ; preds = %20, %39, %4
  %48 = phi i64 [ 0, %4 ], [ %40, %39 ], [ -1, %20 ], !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  ret i64 %48, !dbg !141
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @syncReadLine(i32, i8* nocapture, i64, i64) local_unnamed_addr #0 !dbg !142 {
  %5 = alloca i8, align 1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %6 = add nsw i64 %2, -1, !dbg !157
  %7 = icmp eq i64 %6, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %7, label %31, label %8, !dbg !156

; <label>:8:                                      ; preds = %4, %26
  %9 = phi i64 [ %29, %26 ], [ %6, %4 ]
  %10 = phi i64 [ %28, %26 ], [ 0, %4 ]
  %11 = phi i8* [ %27, %26 ], [ %1, %4 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #5, !dbg !159
  %12 = call i64 @syncRead(i32 %0, i8* nonnull %5, i64 1, i64 %3) #6, !dbg !160
  %13 = icmp eq i64 %12, -1, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br i1 %13, label %24, label %14, !dbg !163

; <label>:14:                                     ; preds = %8
  %15 = load i8, i8* %5, align 1, !dbg !164, !tbaa !166
  %16 = icmp eq i8 %15, 10, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br i1 %16, label %17, label %26, !dbg !168

; <label>:17:                                     ; preds = %14
  store i8 0, i8* %11, align 1, !dbg !169, !tbaa !166
  %18 = icmp eq i64 %10, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %18, label %24, label %19, !dbg !173

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !174
  %21 = load i8, i8* %20, align 1, !dbg !175, !tbaa !166
  %22 = icmp eq i8 %21, 13, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %22, label %23, label %24, !dbg !177

; <label>:23:                                     ; preds = %19
  store i8 0, i8* %20, align 1, !dbg !178, !tbaa !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  br label %24, !dbg !179

; <label>:24:                                     ; preds = %8, %19, %23, %17
  %25 = phi i64 [ %10, %17 ], [ %10, %23 ], [ %10, %19 ], [ -1, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !181
  br label %31

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !182
  store i8 %15, i8* %11, align 1, !dbg !184, !tbaa !166
  store i8 0, i8* %27, align 1, !dbg !185, !tbaa !166
  %28 = add nuw nsw i64 %10, 1, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #5, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %29 = add nsw i64 %9, -1, !dbg !157
  %30 = icmp eq i64 %29, 0, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %30, label %31, label %8, !dbg !156

; <label>:31:                                     ; preds = %26, %4, %24
  %32 = phi i64 [ %25, %24 ], [ 0, %4 ], [ %28, %26 ], !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  ret i64 %32, !dbg !188
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
!69 = !DILocation(line: 73, column: 13, scope: !29)
!70 = !DILocation(line: 74, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 73, column: 33)
!72 = !DILocation(line: 74, column: 19, scope: !71)
!73 = !DILocation(line: 75, column: 13, scope: !71)
!74 = !DILocation(line: 77, column: 29, scope: !29)
!75 = !DILocation(line: 78, column: 5, scope: !7)
!76 = !DILocation(line: 0, scope: !71)
!77 = !DILocation(line: 79, column: 1, scope: !7)
!78 = distinct !DISubprogram(name: "syncRead", scope: !1, file: !1, line: 85, type: !8, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !90}
!80 = !DILocalVariable(name: "fd", arg: 1, scope: !78, file: !1, line: 85, type: !15)
!81 = !DILocalVariable(name: "ptr", arg: 2, scope: !78, file: !1, line: 85, type: !16)
!82 = !DILocalVariable(name: "size", arg: 3, scope: !78, file: !1, line: 85, type: !10)
!83 = !DILocalVariable(name: "timeout", arg: 4, scope: !78, file: !1, line: 85, type: !18)
!84 = !DILocalVariable(name: "nread", scope: !78, file: !1, line: 86, type: !10)
!85 = !DILocalVariable(name: "totread", scope: !78, file: !1, line: 86, type: !10)
!86 = !DILocalVariable(name: "start", scope: !78, file: !1, line: 87, type: !18)
!87 = !DILocalVariable(name: "remaining", scope: !78, file: !1, line: 88, type: !18)
!88 = !DILocalVariable(name: "wait", scope: !89, file: !1, line: 92, type: !18)
!89 = distinct !DILexicalBlock(scope: !78, file: !1, line: 91, column: 14)
!90 = !DILocalVariable(name: "elapsed", scope: !89, file: !1, line: 94, type: !18)
!91 = !DILocation(line: 85, column: 22, scope: !78)
!92 = !DILocation(line: 85, column: 32, scope: !78)
!93 = !DILocation(line: 85, column: 45, scope: !78)
!94 = !DILocation(line: 85, column: 61, scope: !78)
!95 = !DILocation(line: 86, column: 20, scope: !78)
!96 = !DILocation(line: 87, column: 23, scope: !78)
!97 = !DILocation(line: 87, column: 15, scope: !78)
!98 = !DILocation(line: 88, column: 15, scope: !78)
!99 = !DILocation(line: 90, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !78, file: !1, line: 90, column: 9)
!101 = !DILocation(line: 90, column: 9, scope: !78)
!102 = !DILocation(line: 98, column: 17, scope: !89)
!103 = !DILocation(line: 86, column: 13, scope: !78)
!104 = !DILocation(line: 99, column: 19, scope: !105)
!105 = distinct !DILexicalBlock(scope: !89, file: !1, line: 99, column: 13)
!106 = !DILocation(line: 99, column: 13, scope: !89)
!107 = !DILocation(line: 92, column: 37, scope: !89)
!108 = !DILocation(line: 92, column: 26, scope: !89)
!109 = !DILocation(line: 92, column: 19, scope: !89)
!110 = !DILocation(line: 100, column: 19, scope: !111)
!111 = distinct !DILexicalBlock(scope: !89, file: !1, line: 100, column: 13)
!112 = !DILocation(line: 100, column: 13, scope: !89)
!113 = !DILocation(line: 101, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 101, column: 17)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 100, column: 26)
!116 = !DILocation(line: 101, column: 23, scope: !114)
!117 = !DILocation(line: 101, column: 17, scope: !115)
!118 = !DILocation(line: 0, scope: !114)
!119 = !DILocation(line: 103, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !111, file: !1, line: 102, column: 16)
!121 = !DILocation(line: 104, column: 18, scope: !120)
!122 = !DILocation(line: 105, column: 21, scope: !120)
!123 = !DILocation(line: 107, column: 18, scope: !124)
!124 = distinct !DILexicalBlock(scope: !89, file: !1, line: 107, column: 13)
!125 = !DILocation(line: 107, column: 13, scope: !89)
!126 = !DILocation(line: 110, column: 9, scope: !89)
!127 = !DILocation(line: 111, column: 19, scope: !89)
!128 = !DILocation(line: 111, column: 28, scope: !89)
!129 = !DILocation(line: 94, column: 19, scope: !89)
!130 = !DILocation(line: 112, column: 21, scope: !131)
!131 = distinct !DILexicalBlock(scope: !89, file: !1, line: 112, column: 13)
!132 = !DILocation(line: 112, column: 13, scope: !89)
!133 = !DILocation(line: 113, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 112, column: 33)
!135 = !DILocation(line: 113, column: 19, scope: !134)
!136 = !DILocation(line: 114, column: 13, scope: !134)
!137 = !DILocation(line: 0, scope: !134)
!138 = !DILocation(line: 116, column: 29, scope: !89)
!139 = !DILocation(line: 117, column: 5, scope: !78)
!140 = !DILocation(line: 0, scope: !105)
!141 = !DILocation(line: 118, column: 1, scope: !78)
!142 = distinct !DISubprogram(name: "syncReadLine", scope: !1, file: !1, line: 125, type: !8, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !143)
!143 = !{!144, !145, !146, !147, !148, !149}
!144 = !DILocalVariable(name: "fd", arg: 1, scope: !142, file: !1, line: 125, type: !15)
!145 = !DILocalVariable(name: "ptr", arg: 2, scope: !142, file: !1, line: 125, type: !16)
!146 = !DILocalVariable(name: "size", arg: 3, scope: !142, file: !1, line: 125, type: !10)
!147 = !DILocalVariable(name: "timeout", arg: 4, scope: !142, file: !1, line: 125, type: !18)
!148 = !DILocalVariable(name: "nread", scope: !142, file: !1, line: 126, type: !10)
!149 = !DILocalVariable(name: "c", scope: !150, file: !1, line: 130, type: !17)
!150 = distinct !DILexicalBlock(scope: !142, file: !1, line: 129, column: 17)
!151 = !DILocation(line: 125, column: 26, scope: !142)
!152 = !DILocation(line: 125, column: 36, scope: !142)
!153 = !DILocation(line: 125, column: 49, scope: !142)
!154 = !DILocation(line: 125, column: 65, scope: !142)
!155 = !DILocation(line: 126, column: 13, scope: !142)
!156 = !DILocation(line: 129, column: 5, scope: !142)
!157 = !DILocation(line: 128, column: 9, scope: !142)
!158 = !DILocation(line: 130, column: 14, scope: !150)
!159 = !DILocation(line: 130, column: 9, scope: !150)
!160 = !DILocation(line: 132, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !150, file: !1, line: 132, column: 13)
!162 = !DILocation(line: 132, column: 39, scope: !161)
!163 = !DILocation(line: 132, column: 13, scope: !150)
!164 = !DILocation(line: 133, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !150, file: !1, line: 133, column: 13)
!166 = !{!53, !53, i64 0}
!167 = !DILocation(line: 133, column: 15, scope: !165)
!168 = !DILocation(line: 133, column: 13, scope: !150)
!169 = !DILocation(line: 134, column: 18, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 133, column: 24)
!171 = !DILocation(line: 135, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !1, line: 135, column: 17)
!173 = !DILocation(line: 135, column: 23, scope: !172)
!174 = !DILocation(line: 135, column: 31, scope: !172)
!175 = !DILocation(line: 135, column: 26, scope: !172)
!176 = !DILocation(line: 135, column: 35, scope: !172)
!177 = !DILocation(line: 135, column: 17, scope: !170)
!178 = !DILocation(line: 135, column: 53, scope: !172)
!179 = !DILocation(line: 135, column: 44, scope: !172)
!180 = !DILocation(line: 0, scope: !170)
!181 = !DILocation(line: 143, column: 5, scope: !142)
!182 = !DILocation(line: 138, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !165, file: !1, line: 137, column: 16)
!184 = !DILocation(line: 138, column: 20, scope: !183)
!185 = !DILocation(line: 139, column: 18, scope: !183)
!186 = !DILocation(line: 140, column: 18, scope: !183)
!187 = !DILocation(line: 0, scope: !142)
!188 = !DILocation(line: 145, column: 1, scope: !142)
