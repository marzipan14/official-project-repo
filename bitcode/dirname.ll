; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/unix/dirname.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/unix/dirname.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @dirname(i8*) local_unnamed_addr #0 !dbg !9 {
  %2 = icmp eq i8* %0, null, !dbg !18
  br i1 %2, label %36, label %3, !dbg !20

; <label>:3:                                      ; preds = %1
  %4 = load i8, i8* %0, align 1, !dbg !21, !tbaa !22
  %5 = icmp eq i8 %4, 0, !dbg !25
  br i1 %5, label %36, label %6, !dbg !26

; <label>:6:                                      ; preds = %3
  %7 = tail call i64 @strlen(i8* nonnull %0) #3, !dbg !27
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !28
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !30
  %10 = load i8, i8* %9, align 1, !dbg !32, !tbaa !22
  %11 = icmp eq i8 %10, 47, !dbg !33
  br i1 %11, label %18, label %12, !dbg !34

; <label>:12:                                     ; preds = %21, %6
  %13 = phi i8 [ %10, %6 ], [ %23, %21 ]
  %14 = phi i8* [ %9, %6 ], [ %22, %21 ], !dbg !30
  %15 = icmp ult i8* %14, %0, !dbg !35
  br i1 %15, label %36, label %16, !dbg !36

; <label>:16:                                     ; preds = %12
  %17 = icmp eq i8 %13, 47, !dbg !37
  br i1 %17, label %32, label %25, !dbg !38

; <label>:18:                                     ; preds = %6, %21
  %19 = phi i8* [ %22, %21 ], [ %9, %6 ]
  %20 = icmp eq i8* %19, %0, !dbg !39
  br i1 %20, label %36, label %21, !dbg !41

; <label>:21:                                     ; preds = %18
  store i8 0, i8* %19, align 1, !dbg !42, !tbaa !22
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !30
  %23 = load i8, i8* %22, align 1, !dbg !32, !tbaa !22
  %24 = icmp eq i8 %23, 47, !dbg !33
  br i1 %24, label %18, label %12, !dbg !34, !llvm.loop !43

; <label>:25:                                     ; preds = %16, %29
  %26 = phi i8* [ %27, %29 ], [ %14, %16 ]
  %27 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !45
  %28 = icmp ult i8* %27, %0, !dbg !35
  br i1 %28, label %36, label %29, !dbg !36, !llvm.loop !46

; <label>:29:                                     ; preds = %25
  %30 = load i8, i8* %27, align 1, !dbg !47, !tbaa !22
  %31 = icmp eq i8 %30, 47, !dbg !37
  br i1 %31, label %32, label %25, !dbg !38

; <label>:32:                                     ; preds = %29, %16
  %33 = phi i8* [ %14, %16 ], [ %27, %29 ]
  %34 = icmp eq i8* %33, %0, !dbg !48
  br i1 %34, label %36, label %35, !dbg !49

; <label>:35:                                     ; preds = %32
  store i8 0, i8* %33, align 1, !dbg !50, !tbaa !22
  br label %36, !dbg !49

; <label>:36:                                     ; preds = %18, %25, %12, %32, %35, %1, %3
  %37 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %3 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %1 ], [ %0, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %25 ], [ %0, %18 ], !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  ret i8* %37, !dbg !52
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/unix/dirname.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "dirname", scope: !1, file: !1, line: 12, type: !10, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16}
!15 = !DILocalVariable(name: "path", arg: 1, scope: !9, file: !1, line: 12, type: !12)
!16 = !DILocalVariable(name: "p", scope: !9, file: !1, line: 15, type: !12)
!17 = !DILocation(line: 12, column: 1, scope: !9)
!18 = !DILocation(line: 16, column: 11, scope: !19)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 16, column: 6)
!20 = !DILocation(line: 16, column: 19, scope: !19)
!21 = !DILocation(line: 16, column: 22, scope: !19)
!22 = !{!23, !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 16, column: 28, scope: !19)
!26 = !DILocation(line: 16, column: 6, scope: !9)
!27 = !DILocation(line: 18, column: 13, scope: !9)
!28 = !DILocation(line: 18, column: 11, scope: !9)
!29 = !DILocation(line: 15, column: 8, scope: !9)
!30 = !DILocation(line: 0, scope: !31)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 19, column: 21)
!32 = !DILocation(line: 19, column: 9, scope: !9)
!33 = !DILocation(line: 19, column: 12, scope: !9)
!34 = !DILocation(line: 19, column: 2, scope: !9)
!35 = !DILocation(line: 24, column: 11, scope: !9)
!36 = !DILocation(line: 24, column: 19, scope: !9)
!37 = !DILocation(line: 24, column: 25, scope: !9)
!38 = !DILocation(line: 24, column: 2, scope: !9)
!39 = !DILocation(line: 20, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !1, line: 20, column: 7)
!41 = !DILocation(line: 20, column: 7, scope: !31)
!42 = !DILocation(line: 22, column: 8, scope: !31)
!43 = distinct !{!43, !34, !44}
!44 = !DILocation(line: 23, column: 2, scope: !9)
!45 = !DILocation(line: 25, column: 4, scope: !9)
!46 = distinct !{!46, !38, !45}
!47 = !DILocation(line: 24, column: 22, scope: !9)
!48 = !DILocation(line: 28, column: 5, scope: !9)
!49 = !DILocation(line: 28, column: 3, scope: !9)
!50 = !DILocation(line: 29, column: 7, scope: !9)
!51 = !DILocation(line: 0, scope: !9)
!52 = !DILocation(line: 30, column: 1, scope: !9)
