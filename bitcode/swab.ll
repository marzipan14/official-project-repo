; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/swab.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/swab.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @swab(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp sgt i64 %2, 1, !dbg !38
  br i1 %4, label %5, label %48, !dbg !39

; <label>:5:                                      ; preds = %3
  %6 = add i64 %2, -2, !dbg !40
  %7 = and i64 %6, -2, !dbg !40
  %8 = lshr i64 %6, 1, !dbg !40
  %9 = add nuw i64 %8, 1, !dbg !40
  %10 = and i64 %9, 1, !dbg !40
  %11 = icmp eq i64 %8, 0, !dbg !40
  br i1 %11, label %35, label %12, !dbg !40

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %9, %10, !dbg !40
  br label %14, !dbg !40

; <label>:14:                                     ; preds = %14, %12
  %15 = phi i64 [ 1, %12 ], [ %32, %14 ]
  %16 = phi i64 [ %13, %12 ], [ %33, %14 ]
  %17 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !40
  %18 = load i8, i8* %17, align 1, !dbg !40, !tbaa !41
  %19 = add nsw i64 %15, -1, !dbg !45
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !46
  %21 = load i8, i8* %20, align 1, !dbg !46, !tbaa !41
  %22 = getelementptr inbounds i8, i8* %1, i64 %19, !dbg !48
  store i8 %18, i8* %22, align 1, !dbg !49, !tbaa !41
  %23 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !50
  store i8 %21, i8* %23, align 1, !dbg !51, !tbaa !41
  %24 = add nuw nsw i64 %15, 2, !dbg !52
  %25 = getelementptr inbounds i8, i8* %0, i64 %24, !dbg !40
  %26 = load i8, i8* %25, align 1, !dbg !40, !tbaa !41
  %27 = add nuw nsw i64 %15, 1, !dbg !45
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !46
  %29 = load i8, i8* %28, align 1, !dbg !46, !tbaa !41
  %30 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !48
  store i8 %26, i8* %30, align 1, !dbg !49, !tbaa !41
  %31 = getelementptr inbounds i8, i8* %1, i64 %24, !dbg !50
  store i8 %29, i8* %31, align 1, !dbg !51, !tbaa !41
  %32 = add nuw nsw i64 %15, 4, !dbg !52
  %33 = add i64 %16, -2, !dbg !39
  %34 = icmp eq i64 %33, 0, !dbg !39
  br i1 %34, label %35, label %14, !dbg !39, !llvm.loop !53

; <label>:35:                                     ; preds = %14, %5
  %36 = phi i64 [ 1, %5 ], [ %32, %14 ]
  %37 = icmp eq i64 %10, 0, !dbg !39
  br i1 %37, label %46, label %38, !dbg !39

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 %36, !dbg !40
  %40 = load i8, i8* %39, align 1, !dbg !40, !tbaa !41
  %41 = add nsw i64 %36, -1, !dbg !45
  %42 = getelementptr inbounds i8, i8* %0, i64 %41, !dbg !46
  %43 = load i8, i8* %42, align 1, !dbg !46, !tbaa !41
  %44 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !48
  store i8 %40, i8* %44, align 1, !dbg !49, !tbaa !41
  %45 = getelementptr inbounds i8, i8* %1, i64 %36, !dbg !50
  store i8 %43, i8* %45, align 1, !dbg !51, !tbaa !41
  br label %46, !dbg !40

; <label>:46:                                     ; preds = %35, %38
  %47 = add i64 %7, 3, !dbg !40
  br label %48, !dbg !55

; <label>:48:                                     ; preds = %46, %3
  %49 = phi i64 [ 1, %3 ], [ %47, %46 ], !dbg !57
  %50 = icmp eq i64 %49, %2, !dbg !55
  br i1 %50, label %51, label %54, !dbg !58

; <label>:51:                                     ; preds = %48
  %52 = add nsw i64 %2, -1, !dbg !59
  %53 = getelementptr inbounds i8, i8* %1, i64 %52, !dbg !60
  store i8 0, i8* %53, align 1, !dbg !61, !tbaa !41
  br label %54, !dbg !60

; <label>:54:                                     ; preds = %51, %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  ret void, !dbg !62
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/swab.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "swab", scope: !1, file: !1, line: 27, type: !8, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 200, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !16, line: 145, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!18 = !{!19, !20, !21, !22, !26, !28, !29, !33}
!19 = !DILocalVariable(name: "b1", arg: 1, scope: !7, file: !1, line: 27, type: !10)
!20 = !DILocalVariable(name: "b2", arg: 2, scope: !7, file: !1, line: 27, type: !12)
!21 = !DILocalVariable(name: "length", arg: 3, scope: !7, file: !1, line: 27, type: !13)
!22 = !DILocalVariable(name: "from", scope: !7, file: !1, line: 32, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DILocalVariable(name: "to", scope: !7, file: !1, line: 33, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!28 = !DILocalVariable(name: "ptr", scope: !7, file: !1, line: 34, type: !13)
!29 = !DILocalVariable(name: "p", scope: !30, file: !1, line: 37, type: !25)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 36, column: 5)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 35, column: 3)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!33 = !DILocalVariable(name: "q", scope: !30, file: !1, line: 38, type: !25)
!34 = !DILocation(line: 27, column: 1, scope: !7)
!35 = !DILocation(line: 32, column: 15, scope: !7)
!36 = !DILocation(line: 33, column: 9, scope: !7)
!37 = !DILocation(line: 34, column: 11, scope: !7)
!38 = !DILocation(line: 35, column: 21, scope: !31)
!39 = !DILocation(line: 35, column: 3, scope: !32)
!40 = !DILocation(line: 37, column: 16, scope: !30)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 37, column: 12, scope: !30)
!45 = !DILocation(line: 38, column: 24, scope: !30)
!46 = !DILocation(line: 38, column: 16, scope: !30)
!47 = !DILocation(line: 38, column: 12, scope: !30)
!48 = !DILocation(line: 39, column: 7, scope: !30)
!49 = !DILocation(line: 39, column: 17, scope: !30)
!50 = !DILocation(line: 40, column: 7, scope: !30)
!51 = !DILocation(line: 40, column: 17, scope: !30)
!52 = !DILocation(line: 35, column: 35, scope: !31)
!53 = distinct !{!53, !39, !54}
!54 = !DILocation(line: 41, column: 5, scope: !32)
!55 = !DILocation(line: 42, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 7)
!57 = !DILocation(line: 0, scope: !31)
!58 = !DILocation(line: 42, column: 7, scope: !7)
!59 = !DILocation(line: 43, column: 11, scope: !56)
!60 = !DILocation(line: 43, column: 5, scope: !56)
!61 = !DILocation(line: 43, column: 15, scope: !56)
!62 = !DILocation(line: 44, column: 1, scope: !7)
