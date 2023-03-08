; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_init(%struct.pthread_attr_t_**) local_unnamed_addr #0 !dbg !48 {
  %2 = icmp eq %struct.pthread_attr_t_** %0, null, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %2, label %22, label %3, !dbg !58

; <label>:3:                                      ; preds = %1
  %4 = tail call i8* @malloc(i64 40) #3, !dbg !59
  %5 = icmp eq i8* %4, null, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %5, label %22, label %6, !dbg !62

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !64
  %8 = bitcast i8* %7 to i64*, !dbg !64
  store i64 0, i64* %8, align 8, !dbg !65, !tbaa !66
  %9 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !74
  %10 = bitcast i8* %9 to i8**, !dbg !74
  store i8* null, i8** %10, align 8, !dbg !75, !tbaa !76
  %11 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !77
  %12 = bitcast i8* %11 to i32*, !dbg !77
  store i32 0, i32* %12, align 8, !dbg !78, !tbaa !79
  %13 = tail call i32 (...) @pte_osThreadGetDefaultPriority() #3, !dbg !80
  %14 = getelementptr inbounds i8, i8* %4, i64 28, !dbg !81
  %15 = bitcast i8* %14 to i32*, !dbg !82
  store i32 %13, i32* %15, align 4, !dbg !83, !tbaa !84
  %16 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !85
  %17 = bitcast i8* %16 to i32*, !dbg !85
  store i32 1, i32* %17, align 8, !dbg !86, !tbaa !87
  %18 = getelementptr inbounds i8, i8* %4, i64 36, !dbg !88
  %19 = bitcast i8* %18 to i32*, !dbg !88
  store i32 1, i32* %19, align 4, !dbg !89, !tbaa !90
  %20 = bitcast i8* %4 to i64*, !dbg !91
  store i64 3300982766, i64* %20, align 8, !dbg !92, !tbaa !93
  %21 = bitcast %struct.pthread_attr_t_** %0 to i8**, !dbg !94
  store i8* %4, i8** %21, align 8, !dbg !94, !tbaa !95
  br label %22, !dbg !96

; <label>:22:                                     ; preds = %3, %1, %6
  %23 = phi i32 [ 0, %6 ], [ 22, %1 ], [ 12, %3 ], !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  ret i32 %23, !dbg !100
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pte_osThreadGetDefaultPriority(...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_init.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 435, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!8 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!9 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!12 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!13 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!14 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!15 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!16 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!21 = !{!22, !23, !29}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !4, line: 414, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !26, line: 116, size: 320, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !30, !31, !36, !37, !42, !43}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !25, file: !26, line: 118, baseType: !29, size: 64)
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !25, file: !26, line: 119, baseType: !22, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !25, file: !26, line: 120, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 40, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !35, line: 129, baseType: !29)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !25, file: !26, line: 121, baseType: !5, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !25, file: !26, line: 122, baseType: !38, size: 32, offset: 224)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !39, line: 97, size: 32, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !38, file: !39, line: 99, baseType: !5, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !25, file: !26, line: 123, baseType: !5, size: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !25, file: !26, line: 124, baseType: !5, size: 32, offset: 288)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!48 = distinct !DISubprogram(name: "pthread_attr_init", scope: !1, file: !1, line: 50, type: !49, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !52)
!49 = !DISubroutineType(types: !50)
!50 = !{!5, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "attr", arg: 1, scope: !48, file: !1, line: 50, type: !51)
!54 = !DILocalVariable(name: "attr_result", scope: !48, file: !1, line: 76, type: !23)
!55 = !DILocation(line: 50, column: 37, scope: !48)
!56 = !DILocation(line: 78, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 78, column: 7)
!58 = !DILocation(line: 78, column: 7, scope: !48)
!59 = !DILocation(line: 84, column: 34, scope: !48)
!60 = !DILocation(line: 86, column: 19, scope: !61)
!61 = distinct !DILexicalBlock(scope: !48, file: !1, line: 86, column: 7)
!62 = !DILocation(line: 86, column: 7, scope: !48)
!63 = !DILocation(line: 76, column: 18, scope: !48)
!64 = !DILocation(line: 95, column: 16, scope: !48)
!65 = !DILocation(line: 95, column: 26, scope: !48)
!66 = !{!67, !68, i64 16}
!67 = !{!"pthread_attr_t_", !68, i64 0, !71, i64 8, !68, i64 16, !72, i64 24, !73, i64 28, !72, i64 32, !72, i64 36}
!68 = !{!"long", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!"any pointer", !69, i64 0}
!72 = !{!"int", !69, i64 0}
!73 = !{!"sched_param", !72, i64 0}
!74 = !DILocation(line: 100, column: 16, scope: !48)
!75 = !DILocation(line: 100, column: 26, scope: !48)
!76 = !{!67, !71, i64 8}
!77 = !DILocation(line: 103, column: 16, scope: !48)
!78 = !DILocation(line: 103, column: 28, scope: !48)
!79 = !{!67, !72, i64 24}
!80 = !DILocation(line: 110, column: 39, scope: !48)
!81 = !DILocation(line: 110, column: 16, scope: !48)
!82 = !DILocation(line: 110, column: 22, scope: !48)
!83 = !DILocation(line: 110, column: 37, scope: !48)
!84 = !{!67, !72, i64 28}
!85 = !DILocation(line: 111, column: 16, scope: !48)
!86 = !DILocation(line: 111, column: 29, scope: !48)
!87 = !{!67, !72, i64 32}
!88 = !DILocation(line: 112, column: 16, scope: !48)
!89 = !DILocation(line: 112, column: 32, scope: !48)
!90 = !{!67, !72, i64 36}
!91 = !DILocation(line: 114, column: 16, scope: !48)
!92 = !DILocation(line: 114, column: 22, scope: !48)
!93 = !{!67, !68, i64 0}
!94 = !DILocation(line: 116, column: 9, scope: !48)
!95 = !{!71, !71, i64 0}
!96 = !DILocation(line: 118, column: 3, scope: !48)
!97 = !DILocation(line: 0, scope: !48)
!98 = !DILocation(line: 0, scope: !99)
!99 = distinct !DILexicalBlock(scope: !57, file: !1, line: 79, column: 5)
!100 = !DILocation(line: 119, column: 1, scope: !48)
