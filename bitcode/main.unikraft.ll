; ModuleID = '/root/.unikraft/libs/redis/main.c'
source_filename = "/root/.unikraft/libs/redis/main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.arg_wrapper = type { i32, i8** }
%struct.pte_handle_t = type { i8*, i32 }
%struct.pthread_attr_t_ = type opaque

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @server_thread_fn(i8* nocapture readonly) #0 !dbg !9 {
  %2 = bitcast i8* %0 to i32*, !dbg !28
  %3 = load i32, i32* %2, align 8, !dbg !28, !tbaa !29
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !35
  %5 = bitcast i8* %4 to i8***, !dbg !35
  %6 = load i8**, i8*** %5, align 8, !dbg !35, !tbaa !36
  %7 = tail call i32 @redis_server_main(i32 %3, i8** %6) #4, !dbg !37
  %8 = sext i32 %7 to i64, !dbg !37
  %9 = inttoptr i64 %8 to i8*, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  ret i8* %9, !dbg !40
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @redis_server_main(i32, i8**) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @main(i32, i8**) local_unnamed_addr #0 !dbg !41 {
  %3 = alloca %struct.arg_wrapper, align 8
  %4 = alloca %struct.pte_handle_t, align 8
  %5 = bitcast %struct.arg_wrapper* %3 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #5, !dbg !61
  %6 = bitcast %struct.pte_handle_t* %4 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5, !dbg !62
  %7 = getelementptr inbounds %struct.arg_wrapper, %struct.arg_wrapper* %3, i64 0, i32 0, !dbg !63
  store i32 %0, i32* %7, align 8, !dbg !64, !tbaa !29
  %8 = getelementptr inbounds %struct.arg_wrapper, %struct.arg_wrapper* %3, i64 0, i32 1, !dbg !65
  store i8** %1, i8*** %8, align 8, !dbg !66, !tbaa !36
  %9 = call i32 @pthread_create(%struct.pte_handle_t* nonnull %4, %struct.pthread_attr_t_** null, i8* (i8*)* nonnull @server_thread_fn, i8* nonnull %5) #4, !dbg !68
  %10 = icmp eq i32 %9, 0, !dbg !70
  br i1 %10, label %11, label %17, !dbg !72

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.pte_handle_t, %struct.pte_handle_t* %4, i64 0, i32 0, !dbg !73
  %13 = load i8*, i8** %12, align 8, !dbg !73
  %14 = getelementptr inbounds %struct.pte_handle_t, %struct.pte_handle_t* %4, i64 0, i32 1, !dbg !73
  %15 = load i32, i32* %14, align 8, !dbg !73
  %16 = call i32 @pthread_join(i8* %13, i32 %15, i8** null) #4, !dbg !73
  br label %17, !dbg !75

; <label>:17:                                     ; preds = %11, %2
  %18 = phi i32 [ %9, %2 ], [ %16, %11 ], !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #5, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  ret i32 %18, !dbg !79
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_create(%struct.pte_handle_t*, %struct.pthread_attr_t_**, i8* (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_join(i8*, i32, i8**) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/libs/redis/main.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "server_thread_fn", scope: !1, file: !1, line: 52, type: !10, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4}
!12 = !{!13, !14, !16}
!13 = !DILocalVariable(name: "arg", arg: 1, scope: !9, file: !1, line: 52, type: !4)
!14 = !DILocalVariable(name: "rc", scope: !9, file: !1, line: 54, type: !15)
!15 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "aw", scope: !9, file: !1, line: 55, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arg_wrapper", file: !1, line: 40, size: 128, elements: !19)
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !18, file: !1, line: 41, baseType: !21, size: 32)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !18, file: !1, line: 42, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DILocation(line: 52, column: 30, scope: !9)
!27 = !DILocation(line: 55, column: 22, scope: !9)
!28 = !DILocation(line: 57, column: 29, scope: !9)
!29 = !{!30, !31, i64 0}
!30 = !{!"arg_wrapper", !31, i64 0, !34, i64 8}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !{!"any pointer", !32, i64 0}
!35 = !DILocation(line: 57, column: 39, scope: !9)
!36 = !{!30, !34, i64 8}
!37 = !DILocation(line: 57, column: 7, scope: !9)
!38 = !DILocation(line: 54, column: 7, scope: !9)
!39 = !DILocation(line: 58, column: 9, scope: !9)
!40 = !DILocation(line: 58, column: 2, scope: !9)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 81, type: !42, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!21, !21, !23}
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DILocalVariable(name: "argc", arg: 1, scope: !41, file: !1, line: 81, type: !21)
!46 = !DILocalVariable(name: "argv", arg: 2, scope: !41, file: !1, line: 81, type: !23)
!47 = !DILocalVariable(name: "rc", scope: !41, file: !1, line: 83, type: !21)
!48 = !DILocalVariable(name: "_rc", scope: !41, file: !1, line: 83, type: !21)
!49 = !DILocalVariable(name: "aw", scope: !41, file: !1, line: 84, type: !18)
!50 = !DILocalVariable(name: "thread_server", scope: !41, file: !1, line: 86, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !52, line: 413, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !52, line: 411, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 395, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !54, file: !52, line: 398, baseType: !4, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !54, file: !52, line: 399, baseType: !58, size: 32, offset: 64)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DILocation(line: 81, column: 14, scope: !41)
!60 = !DILocation(line: 81, column: 26, scope: !41)
!61 = !DILocation(line: 84, column: 2, scope: !41)
!62 = !DILocation(line: 86, column: 2, scope: !41)
!63 = !DILocation(line: 92, column: 5, scope: !41)
!64 = !DILocation(line: 92, column: 10, scope: !41)
!65 = !DILocation(line: 93, column: 5, scope: !41)
!66 = !DILocation(line: 93, column: 10, scope: !41)
!67 = !DILocation(line: 86, column: 12, scope: !41)
!68 = !DILocation(line: 97, column: 7, scope: !41)
!69 = !DILocation(line: 83, column: 6, scope: !41)
!70 = !DILocation(line: 98, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !41, file: !1, line: 98, column: 6)
!72 = !DILocation(line: 98, column: 6, scope: !41)
!73 = !DILocation(line: 111, column: 8, scope: !41)
!74 = !DILocation(line: 83, column: 10, scope: !41)
!75 = !DILocation(line: 112, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !41, file: !1, line: 112, column: 6)
!77 = !DILocation(line: 0, scope: !76)
!78 = !DILocation(line: 118, column: 1, scope: !41)
!79 = !DILocation(line: 117, column: 2, scope: !41)
