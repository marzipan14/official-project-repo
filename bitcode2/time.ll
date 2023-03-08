; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/time.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/time.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @time(i64*) local_unnamed_addr #0 !dbg !12 {
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timeval* %2 to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #4, !dbg !25
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !26
  %5 = call i32 @_gettimeofday_r(%struct._reent* %4, %struct.timeval* nonnull %2, i8* null) #5, !dbg !29
  %6 = icmp slt i32 %5, 0, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %6, label %7, label %9, !dbg !31

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0, !dbg !32
  store i64 -1, i64* %8, align 8, !dbg !33, !tbaa !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %9, !dbg !39

; <label>:9:                                      ; preds = %7, %1
  %10 = icmp eq i64* %0, null, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !dbg !43, !tbaa !34
  br i1 %10, label %14, label %13, !dbg !42

; <label>:13:                                     ; preds = %9
  store i64 %12, i64* %0, align 8, !dbg !44, !tbaa !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br label %14, !dbg !46

; <label>:14:                                     ; preds = %9, %13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i64 %12, !dbg !48
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @_gettimeofday_r(%struct._reent*, %struct.timeval*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/time.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6, line: 34, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "time", scope: !1, file: !1, line: 41, type: !13, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!5, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "t", arg: 1, scope: !12, file: !1, line: 41, type: !15)
!18 = !DILocalVariable(name: "now", scope: !12, file: !1, line: 44, type: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !6, line: 44, size: 128, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !19, file: !6, line: 45, baseType: !5, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !19, file: !6, line: 46, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !6, line: 39, baseType: !7)
!24 = !DILocation(line: 41, column: 1, scope: !12)
!25 = !DILocation(line: 44, column: 3, scope: !12)
!26 = !DILocation(line: 46, column: 24, scope: !27)
!27 = distinct !DILexicalBlock(scope: !12, file: !1, line: 46, column: 7)
!28 = !DILocation(line: 44, column: 18, scope: !12)
!29 = !DILocation(line: 46, column: 7, scope: !27)
!30 = !DILocation(line: 46, column: 44, scope: !27)
!31 = !DILocation(line: 46, column: 7, scope: !12)
!32 = !DILocation(line: 47, column: 9, scope: !27)
!33 = !DILocation(line: 47, column: 16, scope: !27)
!34 = !{!35, !36, i64 0}
!35 = !{!"timeval", !36, i64 0, !36, i64 8}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 47, column: 5, scope: !27)
!40 = !DILocation(line: 49, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !12, file: !1, line: 49, column: 7)
!42 = !DILocation(line: 49, column: 7, scope: !12)
!43 = !DILocation(line: 0, scope: !41)
!44 = !DILocation(line: 50, column: 8, scope: !41)
!45 = !{!36, !36, i64 0}
!46 = !DILocation(line: 50, column: 5, scope: !41)
!47 = !DILocation(line: 52, column: 1, scope: !12)
!48 = !DILocation(line: 51, column: 3, scope: !12)
