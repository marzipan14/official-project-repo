; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/xpg_strerror_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/xpg_strerror_r.c"
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

; Function Attrs: noredzone nounwind
define dso_local i32 @__xpg_strerror_r(i32, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !25
  store i32 0, i32* %4, align 4, !dbg !26, !tbaa !27
  %6 = icmp eq i64 %2, 0, !dbg !31
  br i1 %6, label %24, label %7, !dbg !33

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !34
  %9 = call i8* @_strerror_r(%struct._reent* %8, i32 %0, i32 1, i32* nonnull %4) #5, !dbg !35
  %10 = call i64 @strlen(i8* %9) #5, !dbg !37
  %11 = icmp ult i64 %10, %2, !dbg !39
  br i1 %11, label %16, label %12, !dbg !40

; <label>:12:                                     ; preds = %7
  %13 = add i64 %2, -1, !dbg !41
  %14 = call i8* @memcpy(i8* %1, i8* %9, i64 %13) #5, !dbg !43
  %15 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !44
  store i8 0, i8* %15, align 1, !dbg !45, !tbaa !46
  br label %24, !dbg !47

; <label>:16:                                     ; preds = %7
  %17 = call i8* @strcpy(i8* %1, i8* %9) #5, !dbg !48
  %18 = load i32, i32* %4, align 4, !dbg !49, !tbaa !27
  %19 = icmp eq i32 %18, 0, !dbg !49
  br i1 %19, label %20, label %23, !dbg !50

; <label>:20:                                     ; preds = %16
  %21 = load i8, i8* %9, align 1, !dbg !51, !tbaa !46
  %22 = icmp eq i8 %21, 0, !dbg !51
  br i1 %22, label %24, label %23, !dbg !52

; <label>:23:                                     ; preds = %20, %16
  br label %24, !dbg !52

; <label>:24:                                     ; preds = %23, %20, %3, %12
  %25 = phi i32 [ 34, %12 ], [ 34, %3 ], [ %18, %23 ], [ 22, %20 ], !dbg !53
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !54
  ret i32 %25, !dbg !54
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @_strerror_r(%struct._reent*, i32, i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/xpg_strerror_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__xpg_strerror_r", scope: !1, file: !1, line: 7, type: !8, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11, !13}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23}
!19 = !DILocalVariable(name: "errnum", arg: 1, scope: !7, file: !1, line: 7, type: !10)
!20 = !DILocalVariable(name: "buffer", arg: 2, scope: !7, file: !1, line: 7, type: !11)
!21 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 7, type: !13)
!22 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 12, type: !11)
!23 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 13, type: !10)
!24 = !DILocation(line: 7, column: 1, scope: !7)
!25 = !DILocation(line: 13, column: 3, scope: !7)
!26 = !DILocation(line: 13, column: 7, scope: !7)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 15, column: 8, scope: !32)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 7)
!33 = !DILocation(line: 15, column: 7, scope: !7)
!34 = !DILocation(line: 17, column: 24, scope: !7)
!35 = !DILocation(line: 17, column: 11, scope: !7)
!36 = !DILocation(line: 12, column: 9, scope: !7)
!37 = !DILocation(line: 18, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 7)
!39 = !DILocation(line: 18, column: 22, scope: !38)
!40 = !DILocation(line: 18, column: 7, scope: !7)
!41 = !DILocation(line: 20, column: 32, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 19, column: 5)
!43 = !DILocation(line: 20, column: 7, scope: !42)
!44 = !DILocation(line: 21, column: 7, scope: !42)
!45 = !DILocation(line: 21, column: 21, scope: !42)
!46 = !{!29, !29, i64 0}
!47 = !DILocation(line: 22, column: 7, scope: !42)
!48 = !DILocation(line: 24, column: 3, scope: !7)
!49 = !DILocation(line: 25, column: 11, scope: !7)
!50 = !DILocation(line: 25, column: 18, scope: !7)
!51 = !DILocation(line: 25, column: 21, scope: !7)
!52 = !DILocation(line: 25, column: 10, scope: !7)
!53 = !DILocation(line: 0, scope: !32)
!54 = !DILocation(line: 26, column: 1, scope: !7)
