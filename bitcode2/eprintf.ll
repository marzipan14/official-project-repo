; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/eprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/eprintf.c"
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

; Function Attrs: noredzone noreturn nounwind
define dso_local void @__eprintf(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !7 {
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !23
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 3, !dbg !23
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !23, !tbaa !24
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...) @fiprintf(%struct.__sFILE* %7, i8* %0, i8* %1, i32 %2, i8* %3) #4, !dbg !33
  tail call void @abort() #5, !dbg !34
  unreachable
}

; Function Attrs: noredzone
declare dso_local i32 @fiprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/eprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__eprintf", scope: !1, file: !1, line: 17, type: !8, isLocal: false, isDefinition: true, scopeLine: 22, isOptimized: true, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !13, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "format", arg: 1, scope: !7, file: !1, line: 18, type: !10)
!16 = !DILocalVariable(name: "file", arg: 2, scope: !7, file: !1, line: 19, type: !10)
!17 = !DILocalVariable(name: "line", arg: 3, scope: !7, file: !1, line: 20, type: !13)
!18 = !DILocalVariable(name: "expression", arg: 4, scope: !7, file: !1, line: 21, type: !10)
!19 = !DILocation(line: 18, column: 18, scope: !7)
!20 = !DILocation(line: 19, column: 18, scope: !7)
!21 = !DILocation(line: 20, column: 19, scope: !7)
!22 = !DILocation(line: 21, column: 18, scope: !7)
!23 = !DILocation(line: 23, column: 20, scope: !7)
!24 = !{!25, !29, i64 24}
!25 = !{!"_reent", !26, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !26, i64 32, !27, i64 36, !26, i64 64, !29, i64 72, !26, i64 80, !29, i64 88, !29, i64 96, !26, i64 104, !29, i64 112, !29, i64 120, !26, i64 128, !29, i64 136, !27, i64 144, !29, i64 504, !30, i64 512, !29, i64 1304, !32, i64 1312, !27, i64 1336}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!"any pointer", !27, i64 0}
!30 = !{!"_atexit", !29, i64 0, !26, i64 8, !27, i64 16, !31, i64 272}
!31 = !{!"_on_exit_args", !27, i64 0, !27, i64 256, !26, i64 512, !26, i64 516}
!32 = !{!"_glue", !29, i64 0, !26, i64 8, !29, i64 16}
!33 = !DILocation(line: 23, column: 10, scope: !7)
!34 = !DILocation(line: 24, column: 3, scope: !7)
