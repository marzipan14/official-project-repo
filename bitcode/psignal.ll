; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/signal/psignal.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/signal/psignal.c"
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

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @psignal(i32, i8*) local_unnamed_addr #0 !dbg !9 {
  %3 = icmp eq i8* %1, null, !dbg !20
  br i1 %3, label %13, label %4, !dbg !22

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %1, align 1, !dbg !23, !tbaa !24
  %6 = icmp eq i8 %5, 0, !dbg !27
  br i1 %6, label %13, label %7, !dbg !28

; <label>:7:                                      ; preds = %4
  %8 = tail call %struct._reent* @__getreent() #3, !dbg !29
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 3, !dbg !29
  %10 = load %struct.__sFILE*, %struct.__sFILE** %9, align 8, !dbg !29, !tbaa !30
  %11 = tail call i8* @strsignal(i32 %0) #3, !dbg !37
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull %1, i8* %11) #3, !dbg !38
  br label %19, !dbg !38

; <label>:13:                                     ; preds = %4, %2
  %14 = tail call %struct._reent* @__getreent() #3, !dbg !39
  %15 = getelementptr inbounds %struct._reent, %struct._reent* %14, i64 0, i32 3, !dbg !39
  %16 = load %struct.__sFILE*, %struct.__sFILE** %15, align 8, !dbg !39, !tbaa !30
  %17 = tail call i8* @strsignal(i32 %0) #3, !dbg !40
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %17) #3, !dbg !41
  br label %19

; <label>:19:                                     ; preds = %13, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  ret void, !dbg !42
}

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strsignal(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/signal/psignal.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "psignal", scope: !1, file: !1, line: 43, type: !10, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "sig", arg: 1, scope: !9, file: !1, line: 43, type: !12)
!18 = !DILocalVariable(name: "s", arg: 2, scope: !9, file: !1, line: 43, type: !13)
!19 = !DILocation(line: 43, column: 1, scope: !9)
!20 = !DILocation(line: 47, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 7)
!22 = !DILocation(line: 47, column: 17, scope: !21)
!23 = !DILocation(line: 47, column: 20, scope: !21)
!24 = !{!25, !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 47, column: 23, scope: !21)
!28 = !DILocation(line: 47, column: 7, scope: !9)
!29 = !DILocation(line: 48, column: 14, scope: !21)
!30 = !{!31, !33, i64 24}
!31 = !{!"_reent", !32, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !32, i64 32, !25, i64 36, !32, i64 64, !33, i64 72, !32, i64 80, !33, i64 88, !33, i64 96, !32, i64 104, !33, i64 112, !33, i64 120, !32, i64 128, !33, i64 136, !25, i64 144, !33, i64 504, !34, i64 512, !33, i64 1304, !36, i64 1312, !25, i64 1336}
!32 = !{!"int", !25, i64 0}
!33 = !{!"any pointer", !25, i64 0}
!34 = !{!"_atexit", !33, i64 0, !32, i64 8, !25, i64 16, !35, i64 272}
!35 = !{!"_on_exit_args", !25, i64 0, !25, i64 256, !32, i64 512, !32, i64 516}
!36 = !{!"_glue", !33, i64 0, !32, i64 8, !33, i64 16}
!37 = !DILocation(line: 48, column: 37, scope: !21)
!38 = !DILocation(line: 48, column: 5, scope: !21)
!39 = !DILocation(line: 50, column: 14, scope: !21)
!40 = !DILocation(line: 50, column: 30, scope: !21)
!41 = !DILocation(line: 50, column: 5, scope: !21)
!42 = !DILocation(line: 51, column: 1, scope: !9)
