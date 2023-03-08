; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_get.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_get.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @envz_get(i8*, i64, i8*) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast i8** %4 to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !27
  store i8* %0, i8** %4, align 8, !dbg !28, !tbaa !29
  %7 = bitcast i64* %5 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4, !dbg !33
  store i64 %1, i64* %5, align 8, !dbg !34, !tbaa !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %8 = icmp eq i64 %1, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %8, label %23, label %9, !dbg !37

; <label>:9:                                      ; preds = %3, %20
  %10 = call i32 @_buf_findstr(i8* %2, i8** nonnull %4, i64* nonnull %5) #5, !dbg !38
  %11 = icmp eq i32 %10, 0, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %11, label %20, label %12, !dbg !41

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !42, !tbaa !29
  %14 = load i8, i8* %13, align 1, !dbg !45, !tbaa !46
  %15 = icmp eq i8 %14, 61, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %15, label %16, label %18, !dbg !48

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !49
  store i8* %17, i8** %4, align 8, !dbg !49, !tbaa !29
  br label %23, !dbg !51

; <label>:18:                                     ; preds = %12
  %19 = icmp eq i8 %14, 0, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %19, label %23, label %20, !dbg !55

; <label>:20:                                     ; preds = %9, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %21 = load i64, i64* %5, align 8, !dbg !56, !tbaa !35
  %22 = icmp eq i64 %21, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %22, label %23, label %9, !dbg !37, !llvm.loop !57

; <label>:23:                                     ; preds = %20, %18, %3, %16
  %24 = phi i8* [ %17, %16 ], [ null, %3 ], [ null, %18 ], [ null, %20 ], !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  ret i8* %24, !dbg !61
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @_buf_findstr(i8*, i8**, i64*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/envz_get.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "envz_get", scope: !1, file: !1, line: 16, type: !11, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !15, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 40, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !18, line: 129, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "envz", arg: 1, scope: !10, file: !1, line: 16, type: !13)
!22 = !DILocalVariable(name: "envz_len", arg: 2, scope: !10, file: !1, line: 16, type: !15)
!23 = !DILocalVariable(name: "name", arg: 3, scope: !10, file: !1, line: 16, type: !13)
!24 = !DILocalVariable(name: "buf_ptr", scope: !10, file: !1, line: 21, type: !4)
!25 = !DILocalVariable(name: "buf_len", scope: !10, file: !1, line: 22, type: !15)
!26 = !DILocation(line: 16, column: 1, scope: !10)
!27 = !DILocation(line: 21, column: 3, scope: !10)
!28 = !DILocation(line: 21, column: 9, scope: !10)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 22, column: 3, scope: !10)
!34 = !DILocation(line: 22, column: 10, scope: !10)
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !31, i64 0}
!37 = !DILocation(line: 24, column: 3, scope: !10)
!38 = !DILocation(line: 26, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 26, column: 11)
!40 = distinct !DILexicalBlock(scope: !10, file: !1, line: 25, column: 5)
!41 = !DILocation(line: 26, column: 11, scope: !40)
!42 = !DILocation(line: 28, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 28, column: 15)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 9)
!45 = !DILocation(line: 28, column: 15, scope: !43)
!46 = !{!31, !31, i64 0}
!47 = !DILocation(line: 28, column: 24, scope: !43)
!48 = !DILocation(line: 28, column: 15, scope: !44)
!49 = !DILocation(line: 30, column: 22, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 29, column: 13)
!51 = !DILocation(line: 31, column: 15, scope: !50)
!52 = !DILocation(line: 35, column: 28, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 35, column: 19)
!54 = distinct !DILexicalBlock(scope: !43, file: !1, line: 34, column: 13)
!55 = !DILocation(line: 35, column: 19, scope: !54)
!56 = !DILocation(line: 24, column: 9, scope: !10)
!57 = distinct !{!57, !37, !58}
!58 = !DILocation(line: 40, column: 5, scope: !10)
!59 = !DILocation(line: 0, scope: !10)
!60 = !DILocation(line: 0, scope: !50)
!61 = !DILocation(line: 43, column: 1, scope: !10)
