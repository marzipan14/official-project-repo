; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/exit.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/exit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@_global_impure_ptr = external dso_local local_unnamed_addr constant %struct._reent*, align 8

; Function Attrs: noredzone noreturn nounwind
define dso_local void @exit(i32) local_unnamed_addr #0 !dbg !9 {
  tail call void @__call_exitprocs(i32 %0, i8* null) #4, !dbg !16
  %2 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !17, !tbaa !19
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 9, !dbg !23
  %4 = load void (%struct._reent*)*, void (%struct._reent*)** %3, align 8, !dbg !23, !tbaa !24
  %5 = icmp eq void (%struct._reent*)* %4, null, !dbg !17
  br i1 %5, label %7, label %6, !dbg !30

; <label>:6:                                      ; preds = %1
  tail call void %4(%struct._reent* %2) #4, !dbg !31
  br label %7, !dbg !31

; <label>:7:                                      ; preds = %1, %6
  tail call void @_exit(i32 %0) #5, !dbg !32
  unreachable, !dbg !32
}

; Function Attrs: noredzone
declare dso_local void @__call_exitprocs(i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/exit.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "exit", scope: !1, file: !1, line: 58, type: !10, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DILocalVariable(name: "code", arg: 1, scope: !9, file: !1, line: 58, type: !12)
!15 = !DILocation(line: 58, column: 1, scope: !9)
!16 = !DILocation(line: 66, column: 5, scope: !9)
!17 = !DILocation(line: 68, column: 7, scope: !18)
!18 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 7)
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 68, column: 22, scope: !18)
!24 = !{!25, !20, i64 88}
!25 = !{!"_reent", !26, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !26, i64 32, !21, i64 36, !26, i64 64, !20, i64 72, !26, i64 80, !20, i64 88, !20, i64 96, !26, i64 104, !20, i64 112, !20, i64 120, !26, i64 128, !20, i64 136, !21, i64 144, !20, i64 504, !27, i64 512, !20, i64 1304, !29, i64 1312, !21, i64 1336}
!26 = !{!"int", !21, i64 0}
!27 = !{!"_atexit", !20, i64 0, !26, i64 8, !21, i64 16, !28, i64 272}
!28 = !{!"_on_exit_args", !21, i64 0, !21, i64 256, !26, i64 512, !26, i64 516}
!29 = !{!"_glue", !20, i64 0, !26, i64 8, !20, i64 16}
!30 = !DILocation(line: 68, column: 7, scope: !9)
!31 = !DILocation(line: 69, column: 5, scope: !18)
!32 = !DILocation(line: 70, column: 3, scope: !9)
