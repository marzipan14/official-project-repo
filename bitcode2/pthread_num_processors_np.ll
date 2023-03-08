; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_num_processors_np.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_num_processors_np.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_num_processors_np() local_unnamed_addr #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4, !dbg !13
  %3 = call i32 @pte_getprocessors(i32* nonnull %1) #5, !dbg !15
  %4 = icmp eq i32 %3, 0, !dbg !17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !18
  br i1 %4, label %5, label %7, !dbg !18

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* %1, align 4, !dbg !19, !tbaa !20
  br label %8, !dbg !18

; <label>:7:                                      ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !24, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  br label %8, !dbg !26

; <label>:8:                                      ; preds = %5, %7
  %9 = phi i32 [ %6, %5 ], [ 1, %7 ], !dbg !19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  ret i32 %9, !dbg !28
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pte_getprocessors(i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_num_processors_np.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_num_processors_np", scope: !1, file: !1, line: 52, type: !8, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 54, type: !10)
!13 = !DILocation(line: 54, column: 3, scope: !7)
!14 = !DILocation(line: 54, column: 7, scope: !7)
!15 = !DILocation(line: 56, column: 7, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 7)
!17 = !DILocation(line: 56, column: 34, scope: !16)
!18 = !DILocation(line: 56, column: 7, scope: !7)
!19 = !DILocation(line: 61, column: 11, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 58, column: 13, scope: !25)
!25 = distinct !DILexicalBlock(scope: !16, file: !1, line: 57, column: 5)
!26 = !DILocation(line: 59, column: 5, scope: !25)
!27 = !DILocation(line: 62, column: 1, scope: !7)
!28 = !DILocation(line: 61, column: 3, scope: !7)
