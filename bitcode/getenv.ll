; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getenv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getenv.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_findenv(i8*, i32*) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call %struct._reent* @__getreent() #4, !dbg !20
  %4 = tail call i8* @_findenv_r(%struct._reent* %3, i8* %0, i32* %1) #4, !dbg !21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !22
  ret i8* %4, !dbg !22
}

; Function Attrs: noredzone
declare dso_local i8* @_findenv_r(%struct._reent*, i8*, i32*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @getenv(i8*) local_unnamed_addr #0 !dbg !23 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !30
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !31
  %5 = call i8* @_findenv_r(%struct._reent* %4, i8* %0, i32* nonnull %2) #4, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i8* %5, !dbg !35
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/getenv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_findenv", scope: !1, file: !1, line: 72, type: !8, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "name", arg: 1, scope: !7, file: !1, line: 72, type: !12)
!18 = !DILocalVariable(name: "offset", arg: 2, scope: !7, file: !1, line: 72, type: !14)
!19 = !DILocation(line: 72, column: 1, scope: !7)
!20 = !DILocation(line: 76, column: 22, scope: !7)
!21 = !DILocation(line: 76, column: 10, scope: !7)
!22 = !DILocation(line: 76, column: 3, scope: !7)
!23 = distinct !DISubprogram(name: "getenv", scope: !1, file: !1, line: 85, type: !24, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!10, !12}
!26 = !{!27, !28}
!27 = !DILocalVariable(name: "name", arg: 1, scope: !23, file: !1, line: 85, type: !12)
!28 = !DILocalVariable(name: "offset", scope: !23, file: !1, line: 88, type: !15)
!29 = !DILocation(line: 85, column: 1, scope: !23)
!30 = !DILocation(line: 88, column: 3, scope: !23)
!31 = !DILocation(line: 90, column: 22, scope: !23)
!32 = !DILocation(line: 88, column: 7, scope: !23)
!33 = !DILocation(line: 90, column: 10, scope: !23)
!34 = !DILocation(line: 91, column: 1, scope: !23)
!35 = !DILocation(line: 90, column: 3, scope: !23)
