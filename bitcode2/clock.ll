; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/clock.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/clock.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tms = type { i64, i64, i64, i64 }
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
define dso_local i64 @clock() local_unnamed_addr #0 !dbg !11 {
  %1 = alloca %struct.tms, align 8
  %2 = bitcast %struct.tms* %1 to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4, !dbg !23
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !24
  %4 = call i64 @_times_r(%struct._reent* %3, %struct.tms* nonnull %1) #5, !dbg !27
  %5 = icmp eq i64 %4, -1, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %5, label %18, label %6, !dbg !30

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.tms, %struct.tms* %1, i64 0, i32 0, !dbg !31
  %8 = load i64, i64* %7, align 8, !dbg !31, !tbaa !32
  %9 = getelementptr inbounds %struct.tms, %struct.tms* %1, i64 0, i32 1, !dbg !37
  %10 = load i64, i64* %9, align 8, !dbg !37, !tbaa !38
  %11 = add nsw i64 %10, %8, !dbg !39
  %12 = getelementptr inbounds %struct.tms, %struct.tms* %1, i64 0, i32 2, !dbg !40
  %13 = load i64, i64* %12, align 8, !dbg !40, !tbaa !41
  %14 = add nsw i64 %11, %13, !dbg !42
  %15 = getelementptr inbounds %struct.tms, %struct.tms* %1, i64 0, i32 3, !dbg !43
  %16 = load i64, i64* %15, align 8, !dbg !43, !tbaa !44
  %17 = add nsw i64 %14, %16, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br label %18, !dbg !46

; <label>:18:                                     ; preds = %0, %6
  %19 = phi i64 [ %17, %6 ], [ -1, %0 ], !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  ret i64 %19, !dbg !49
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @_times_r(%struct._reent*, %struct.tms*) local_unnamed_addr #2

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

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/clock.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !5, line: 70, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "clock", scope: !1, file: !1, line: 57, type: !12, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!12 = !DISubroutineType(types: !3)
!13 = !{!14, !22}
!14 = !DILocalVariable(name: "tim_s", scope: !11, file: !1, line: 59, type: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !16, line: 17, size: 256, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/times.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !20, !21}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !15, file: !16, line: 18, baseType: !4, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !15, file: !16, line: 19, baseType: !4, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !15, file: !16, line: 20, baseType: !4, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !15, file: !16, line: 21, baseType: !4, size: 64, offset: 192)
!22 = !DILocalVariable(name: "res", scope: !11, file: !1, line: 60, type: !4)
!23 = !DILocation(line: 59, column: 3, scope: !11)
!24 = !DILocation(line: 62, column: 34, scope: !25)
!25 = distinct !DILexicalBlock(scope: !11, file: !1, line: 62, column: 7)
!26 = !DILocation(line: 59, column: 14, scope: !11)
!27 = !DILocation(line: 62, column: 24, scope: !25)
!28 = !DILocation(line: 60, column: 11, scope: !11)
!29 = !DILocation(line: 62, column: 51, scope: !25)
!30 = !DILocation(line: 62, column: 7, scope: !11)
!31 = !DILocation(line: 63, column: 28, scope: !25)
!32 = !{!33, !34, i64 0}
!33 = !{!"tms", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!34 = !{!"long", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 63, column: 46, scope: !25)
!38 = !{!33, !34, i64 8}
!39 = !DILocation(line: 63, column: 38, scope: !25)
!40 = !DILocation(line: 64, column: 14, scope: !25)
!41 = !{!33, !34, i64 16}
!42 = !DILocation(line: 63, column: 56, scope: !25)
!43 = !DILocation(line: 64, column: 33, scope: !25)
!44 = !{!33, !34, i64 24}
!45 = !DILocation(line: 64, column: 25, scope: !25)
!46 = !DILocation(line: 63, column: 5, scope: !25)
!47 = !DILocation(line: 0, scope: !25)
!48 = !DILocation(line: 67, column: 1, scope: !11)
!49 = !DILocation(line: 66, column: 3, scope: !11)
