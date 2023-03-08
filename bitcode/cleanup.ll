; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/cleanup.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/cleanup.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_key_t_ = type { i32, void (i8*)*, %struct.pthread_mutex_t_*, i8* }
%struct.pthread_mutex_t_ = type { %struct.uk_semaphore*, i32, i32, i32, %struct.pte_handle_t }
%struct.uk_semaphore = type { i64, %struct.uk_waitq }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon.0, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon.0 = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, {}*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, {}*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.1, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.uk_thread_sig = type { i64, i64, %struct.uk_list_head, %struct.uk_thread_sig_wait, %struct.uk_list_head }
%struct.uk_thread_sig_wait = type { i32, i64, %struct.siginfo_t }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.uk_list_head = type { %struct.uk_list_head*, %struct.uk_list_head* }
%struct.anon = type { %struct.uk_waitq_entry* }
%struct.pte_handle_t = type { i8*, i32 }
%struct.pte_cleanup_t = type { void (i8*)*, i8*, %struct.pte_cleanup_t* }

@pte_cleanupKey = external dso_local local_unnamed_addr global %struct.pthread_key_t_*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.pte_cleanup_t* @pte_pop_cleanup(i32) local_unnamed_addr #0 !dbg !22 {
  %2 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** @pte_cleanupKey, align 8, !dbg !30, !tbaa !31
  %3 = tail call i8* @pthread_getspecific(%struct.pthread_key_t_* %2) #3, !dbg !35
  %4 = bitcast i8* %3 to %struct.pte_cleanup_t*, !dbg !36
  %5 = icmp eq i8* %3, null, !dbg !38
  br i1 %5, label %22, label %6, !dbg !40

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %0, 0, !dbg !41
  br i1 %7, label %16, label %8, !dbg !44

; <label>:8:                                      ; preds = %6
  %9 = bitcast i8* %3 to void (i8*)**, !dbg !45
  %10 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !45, !tbaa !46
  %11 = icmp eq void (i8*)* %10, null, !dbg !48
  br i1 %11, label %16, label %12, !dbg !49

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !50
  %14 = bitcast i8* %13 to i8**, !dbg !50
  %15 = load i8*, i8** %14, align 8, !dbg !50, !tbaa !52
  tail call void %10(i8* %15) #3, !dbg !53
  br label %16, !dbg !54

; <label>:16:                                     ; preds = %8, %6, %12
  %17 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** @pte_cleanupKey, align 8, !dbg !55, !tbaa !31
  %18 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !56
  %19 = bitcast i8* %18 to i8**, !dbg !56
  %20 = load i8*, i8** %19, align 8, !dbg !56, !tbaa !57
  %21 = tail call i32 @pthread_setspecific(%struct.pthread_key_t_* %17, i8* %20) #3, !dbg !58
  br label %22, !dbg !59

; <label>:22:                                     ; preds = %1, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  ret %struct.pte_cleanup_t* %4, !dbg !60
}

; Function Attrs: noredzone
declare dso_local i8* @pthread_getspecific(%struct.pthread_key_t_*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setspecific(%struct.pthread_key_t_*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @pte_push_cleanup(%struct.pte_cleanup_t*, void (i8*)*, i8*) local_unnamed_addr #0 !dbg !61 {
  %4 = getelementptr inbounds %struct.pte_cleanup_t, %struct.pte_cleanup_t* %0, i64 0, i32 0, !dbg !71
  store void (i8*)* %1, void (i8*)** %4, align 8, !dbg !72, !tbaa !46
  %5 = getelementptr inbounds %struct.pte_cleanup_t, %struct.pte_cleanup_t* %0, i64 0, i32 1, !dbg !73
  store i8* %2, i8** %5, align 8, !dbg !74, !tbaa !52
  %6 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** @pte_cleanupKey, align 8, !dbg !75, !tbaa !31
  %7 = tail call i8* @pthread_getspecific(%struct.pthread_key_t_* %6) #3, !dbg !76
  %8 = getelementptr inbounds %struct.pte_cleanup_t, %struct.pte_cleanup_t* %0, i64 0, i32 2, !dbg !77
  %9 = bitcast %struct.pte_cleanup_t** %8 to i8**, !dbg !78
  store i8* %7, i8** %9, align 8, !dbg !78, !tbaa !57
  %10 = load %struct.pthread_key_t_*, %struct.pthread_key_t_** @pte_cleanupKey, align 8, !dbg !79, !tbaa !31
  %11 = bitcast %struct.pte_cleanup_t* %0 to i8*, !dbg !80
  %12 = tail call i32 @pthread_setspecific(%struct.pthread_key_t_* %10, i8* %11) #3, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  ret void, !dbg !82
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/cleanup.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !14}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_t", file: !6, line: 555, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pte_cleanup_t", file: !6, line: 559, size: 192, elements: !8)
!8 = !{!9, !15, !16}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !7, file: !6, line: 561, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_cleanup_callback_t", file: !6, line: 557, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !7, file: !6, line: 562, baseType: !14, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !6, line: 563, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!22 = distinct !DISubprogram(name: "pte_pop_cleanup", scope: !1, file: !1, line: 56, type: !23, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27, !28}
!27 = !DILocalVariable(name: "execute", arg: 1, scope: !22, file: !1, line: 56, type: !25)
!28 = !DILocalVariable(name: "cleanup", scope: !22, file: !1, line: 82, type: !4)
!29 = !DILocation(line: 56, column: 22, scope: !22)
!30 = !DILocation(line: 84, column: 52, scope: !22)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 84, column: 31, scope: !22)
!36 = !DILocation(line: 84, column: 13, scope: !22)
!37 = !DILocation(line: 82, column: 18, scope: !22)
!38 = !DILocation(line: 86, column: 15, scope: !39)
!39 = distinct !DILexicalBlock(scope: !22, file: !1, line: 86, column: 7)
!40 = !DILocation(line: 86, column: 7, scope: !22)
!41 = !DILocation(line: 88, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 88, column: 11)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 87, column: 5)
!44 = !DILocation(line: 88, column: 19, scope: !42)
!45 = !DILocation(line: 88, column: 32, scope: !42)
!46 = !{!47, !32, i64 0}
!47 = !{!"pte_cleanup_t", !32, i64 0, !32, i64 8, !32, i64 16}
!48 = !DILocation(line: 88, column: 40, scope: !42)
!49 = !DILocation(line: 88, column: 11, scope: !43)
!50 = !DILocation(line: 91, column: 41, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 89, column: 9)
!52 = !{!47, !32, i64 8}
!53 = !DILocation(line: 91, column: 11, scope: !51)
!54 = !DILocation(line: 93, column: 9, scope: !51)
!55 = !DILocation(line: 95, column: 28, scope: !43)
!56 = !DILocation(line: 95, column: 62, scope: !43)
!57 = !{!47, !32, i64 16}
!58 = !DILocation(line: 95, column: 7, scope: !43)
!59 = !DILocation(line: 97, column: 5, scope: !43)
!60 = !DILocation(line: 99, column: 3, scope: !22)
!61 = distinct !DISubprogram(name: "pte_push_cleanup", scope: !1, file: !1, line: 105, type: !62, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !4, !10, !14}
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(name: "cleanup", arg: 1, scope: !61, file: !1, line: 105, type: !4)
!66 = !DILocalVariable(name: "routine", arg: 2, scope: !61, file: !1, line: 106, type: !10)
!67 = !DILocalVariable(name: "arg", arg: 3, scope: !61, file: !1, line: 106, type: !14)
!68 = !DILocation(line: 105, column: 35, scope: !61)
!69 = !DILocation(line: 106, column: 42, scope: !61)
!70 = !DILocation(line: 106, column: 57, scope: !61)
!71 = !DILocation(line: 147, column: 12, scope: !61)
!72 = !DILocation(line: 147, column: 20, scope: !61)
!73 = !DILocation(line: 148, column: 12, scope: !61)
!74 = !DILocation(line: 148, column: 16, scope: !61)
!75 = !DILocation(line: 150, column: 58, scope: !61)
!76 = !DILocation(line: 150, column: 37, scope: !61)
!77 = !DILocation(line: 150, column: 12, scope: !61)
!78 = !DILocation(line: 150, column: 17, scope: !61)
!79 = !DILocation(line: 152, column: 24, scope: !61)
!80 = !DILocation(line: 152, column: 40, scope: !61)
!81 = !DILocation(line: 152, column: 3, scope: !61)
!82 = !DILocation(line: 154, column: 1, scope: !61)
