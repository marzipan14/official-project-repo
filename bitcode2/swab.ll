; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/swab.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/swab.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @swab(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  %4 = icmp sgt i64 %2, 1, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %4, label %5, label %16, !dbg !40

; <label>:5:                                      ; preds = %3, %5
  %6 = phi i64 [ %14, %5 ], [ 1, %3 ]
  %7 = getelementptr inbounds i8, i8* %0, i64 %6, !dbg !41
  %8 = load i8, i8* %7, align 1, !dbg !41, !tbaa !42
  %9 = add nsw i64 %6, -1, !dbg !46
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !47
  %11 = load i8, i8* %10, align 1, !dbg !47, !tbaa !42
  %12 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !49
  store i8 %8, i8* %12, align 1, !dbg !50, !tbaa !42
  %13 = getelementptr inbounds i8, i8* %1, i64 %6, !dbg !51
  store i8 %11, i8* %13, align 1, !dbg !52, !tbaa !42
  %14 = add nuw nsw i64 %6, 2, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  %15 = icmp slt i64 %14, %2, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %15, label %5, label %16, !dbg !40, !llvm.loop !55

; <label>:16:                                     ; preds = %5, %3
  %17 = phi i64 [ 1, %3 ], [ %14, %5 ], !dbg !57
  %18 = icmp eq i64 %17, %2, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %18, label %19, label %22, !dbg !60

; <label>:19:                                     ; preds = %16
  %20 = add nsw i64 %2, -1, !dbg !61
  %21 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !62
  store i8 0, i8* %21, align 1, !dbg !63, !tbaa !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br label %22, !dbg !62

; <label>:22:                                     ; preds = %19, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  ret void, !dbg !64
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
!38 = !DILocation(line: 35, column: 8, scope: !32)
!39 = !DILocation(line: 35, column: 21, scope: !31)
!40 = !DILocation(line: 35, column: 3, scope: !32)
!41 = !DILocation(line: 37, column: 16, scope: !30)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 37, column: 12, scope: !30)
!46 = !DILocation(line: 38, column: 24, scope: !30)
!47 = !DILocation(line: 38, column: 16, scope: !30)
!48 = !DILocation(line: 38, column: 12, scope: !30)
!49 = !DILocation(line: 39, column: 7, scope: !30)
!50 = !DILocation(line: 39, column: 17, scope: !30)
!51 = !DILocation(line: 40, column: 7, scope: !30)
!52 = !DILocation(line: 40, column: 17, scope: !30)
!53 = !DILocation(line: 35, column: 35, scope: !31)
!54 = !DILocation(line: 35, column: 3, scope: !31)
!55 = distinct !{!55, !40, !56}
!56 = !DILocation(line: 41, column: 5, scope: !32)
!57 = !DILocation(line: 0, scope: !31)
!58 = !DILocation(line: 42, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 7)
!60 = !DILocation(line: 42, column: 7, scope: !7)
!61 = !DILocation(line: 43, column: 11, scope: !59)
!62 = !DILocation(line: 43, column: 5, scope: !59)
!63 = !DILocation(line: 43, column: 15, scope: !59)
!64 = !DILocation(line: 44, column: 1, scope: !7)
