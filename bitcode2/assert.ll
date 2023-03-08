; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/assert.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/assert.c"
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

@.str = private unnamed_addr constant [47 x i8] c"assertion \22%s\22 failed: file \22%s\22, line %d%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", function: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noredzone noreturn nounwind
define dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #0 !dbg !7 {
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !20
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 3, !dbg !20
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !20, !tbaa !21
  %8 = icmp ne i8* %2, null, !dbg !30
  %9 = select i1 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), !dbg !30
  %10 = select i1 %8, i8* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), !dbg !31
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...) @fiprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %3, i8* %0, i32 %1, i8* %9, i8* %10) #4, !dbg !32
  tail call void @abort() #5, !dbg !33
  unreachable
}

; Function Attrs: noredzone
declare dso_local i32 @fiprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: noredzone noreturn nounwind
define dso_local void @__assert(i8*, i32, i8*) local_unnamed_addr #0 !dbg !34 {
  tail call void @__assert_func(i8* %0, i32 %1, i8* null, i8* %2) #6, !dbg !42
  unreachable
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone noreturn nounwind }
attributes #6 = { nobuiltin noredzone noreturn }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/assert.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__assert_func", scope: !1, file: !1, line: 53, type: !8, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !13, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "file", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!16 = !DILocalVariable(name: "line", arg: 2, scope: !7, file: !1, line: 53, type: !13)
!17 = !DILocalVariable(name: "func", arg: 3, scope: !7, file: !1, line: 53, type: !10)
!18 = !DILocalVariable(name: "failedexpr", arg: 4, scope: !7, file: !1, line: 53, type: !10)
!19 = !DILocation(line: 53, column: 1, scope: !7)
!20 = !DILocation(line: 59, column: 12, scope: !7)
!21 = !{!22, !26, i64 24}
!22 = !{!"_reent", !23, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !23, i64 32, !24, i64 36, !23, i64 64, !26, i64 72, !23, i64 80, !26, i64 88, !26, i64 96, !23, i64 104, !26, i64 112, !26, i64 120, !23, i64 128, !26, i64 136, !24, i64 144, !26, i64 504, !27, i64 512, !26, i64 1304, !29, i64 1312, !24, i64 1336}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !{!"any pointer", !24, i64 0}
!27 = !{!"_atexit", !26, i64 0, !23, i64 8, !24, i64 16, !28, i64 272}
!28 = !{!"_on_exit_args", !24, i64 0, !24, i64 256, !23, i64 512, !23, i64 516}
!29 = !{!"_glue", !26, i64 0, !23, i64 8, !26, i64 16}
!30 = !DILocation(line: 62, column: 5, scope: !7)
!31 = !DILocation(line: 62, column: 33, scope: !7)
!32 = !DILocation(line: 59, column: 3, scope: !7)
!33 = !DILocation(line: 63, column: 3, scope: !7)
!34 = distinct !DISubprogram(name: "__assert", scope: !1, file: !1, line: 69, type: !35, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !10, !13, !10}
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "file", arg: 1, scope: !34, file: !1, line: 69, type: !10)
!39 = !DILocalVariable(name: "line", arg: 2, scope: !34, file: !1, line: 69, type: !13)
!40 = !DILocalVariable(name: "failedexpr", arg: 3, scope: !34, file: !1, line: 69, type: !10)
!41 = !DILocation(line: 69, column: 1, scope: !34)
!42 = !DILocation(line: 74, column: 4, scope: !34)
