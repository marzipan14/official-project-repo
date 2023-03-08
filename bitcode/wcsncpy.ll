; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcsncpy(i32* noalias returned, i32* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !27
  br i1 %4, label %100, label %5, !dbg !28

; <label>:5:                                      ; preds = %3, %5
  %6 = phi i32* [ %10, %5 ], [ %1, %3 ]
  %7 = phi i64 [ %9, %5 ], [ %2, %3 ]
  %8 = phi i32* [ %12, %5 ], [ %0, %3 ], !dbg !29
  %9 = add i64 %7, -1, !dbg !32
  %10 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !33
  %11 = load i32, i32* %6, align 4, !dbg !34, !tbaa !35
  %12 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !39
  store i32 %11, i32* %8, align 4, !dbg !40, !tbaa !35
  %13 = icmp ne i32 %11, 0, !dbg !41
  %14 = icmp ne i64 %9, 0, !dbg !27
  %15 = and i1 %14, %13, !dbg !42
  br i1 %15, label %5, label %16, !dbg !42, !llvm.loop !43

; <label>:16:                                     ; preds = %5
  %17 = icmp eq i64 %9, 0, !dbg !45
  br i1 %17, label %100, label %18, !dbg !46

; <label>:18:                                     ; preds = %16
  %19 = icmp ult i64 %9, 8, !dbg !47
  br i1 %19, label %91, label %20, !dbg !47

; <label>:20:                                     ; preds = %18
  %21 = and i64 %9, -8, !dbg !47
  %22 = getelementptr i32, i32* %12, i64 %21, !dbg !47
  %23 = sub i64 %9, %21, !dbg !47
  %24 = add i64 %21, -8, !dbg !47
  %25 = lshr exact i64 %24, 3, !dbg !47
  %26 = add nuw nsw i64 %25, 1, !dbg !47
  %27 = and i64 %26, 7, !dbg !47
  %28 = icmp ult i64 %24, 56, !dbg !47
  br i1 %28, label %76, label %29, !dbg !47

; <label>:29:                                     ; preds = %20
  %30 = sub nsw i64 %26, %27, !dbg !47
  br label %31, !dbg !47

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %73, %31 ]
  %33 = phi i64 [ %30, %29 ], [ %74, %31 ]
  %34 = getelementptr i32, i32* %12, i64 %32
  %35 = bitcast i32* %34 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %35, align 4, !dbg !48, !tbaa !35
  %36 = getelementptr i32, i32* %34, i64 4, !dbg !48
  %37 = bitcast i32* %36 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %37, align 4, !dbg !48, !tbaa !35
  %38 = or i64 %32, 8
  %39 = getelementptr i32, i32* %12, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %40, align 4, !dbg !48, !tbaa !35
  %41 = getelementptr i32, i32* %39, i64 4, !dbg !48
  %42 = bitcast i32* %41 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %42, align 4, !dbg !48, !tbaa !35
  %43 = or i64 %32, 16
  %44 = getelementptr i32, i32* %12, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %45, align 4, !dbg !48, !tbaa !35
  %46 = getelementptr i32, i32* %44, i64 4, !dbg !48
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %47, align 4, !dbg !48, !tbaa !35
  %48 = or i64 %32, 24
  %49 = getelementptr i32, i32* %12, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %50, align 4, !dbg !48, !tbaa !35
  %51 = getelementptr i32, i32* %49, i64 4, !dbg !48
  %52 = bitcast i32* %51 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %52, align 4, !dbg !48, !tbaa !35
  %53 = or i64 %32, 32
  %54 = getelementptr i32, i32* %12, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %55, align 4, !dbg !48, !tbaa !35
  %56 = getelementptr i32, i32* %54, i64 4, !dbg !48
  %57 = bitcast i32* %56 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %57, align 4, !dbg !48, !tbaa !35
  %58 = or i64 %32, 40
  %59 = getelementptr i32, i32* %12, i64 %58
  %60 = bitcast i32* %59 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %60, align 4, !dbg !48, !tbaa !35
  %61 = getelementptr i32, i32* %59, i64 4, !dbg !48
  %62 = bitcast i32* %61 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %62, align 4, !dbg !48, !tbaa !35
  %63 = or i64 %32, 48
  %64 = getelementptr i32, i32* %12, i64 %63
  %65 = bitcast i32* %64 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %65, align 4, !dbg !48, !tbaa !35
  %66 = getelementptr i32, i32* %64, i64 4, !dbg !48
  %67 = bitcast i32* %66 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %67, align 4, !dbg !48, !tbaa !35
  %68 = or i64 %32, 56
  %69 = getelementptr i32, i32* %12, i64 %68
  %70 = bitcast i32* %69 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %70, align 4, !dbg !48, !tbaa !35
  %71 = getelementptr i32, i32* %69, i64 4, !dbg !48
  %72 = bitcast i32* %71 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %72, align 4, !dbg !48, !tbaa !35
  %73 = add i64 %32, 64
  %74 = add i64 %33, -8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %31, !llvm.loop !49

; <label>:76:                                     ; preds = %31, %20
  %77 = phi i64 [ 0, %20 ], [ %73, %31 ]
  %78 = icmp eq i64 %27, 0
  br i1 %78, label %89, label %79

; <label>:79:                                     ; preds = %76, %79
  %80 = phi i64 [ %86, %79 ], [ %77, %76 ]
  %81 = phi i64 [ %87, %79 ], [ %27, %76 ]
  %82 = getelementptr i32, i32* %12, i64 %80
  %83 = bitcast i32* %82 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %83, align 4, !dbg !48, !tbaa !35
  %84 = getelementptr i32, i32* %82, i64 4, !dbg !48
  %85 = bitcast i32* %84 to <4 x i32>*, !dbg !48
  store <4 x i32> zeroinitializer, <4 x i32>* %85, align 4, !dbg !48, !tbaa !35
  %86 = add i64 %80, 8
  %87 = add i64 %81, -1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %79, !llvm.loop !52

; <label>:89:                                     ; preds = %79, %76
  %90 = icmp eq i64 %9, %21
  br i1 %90, label %100, label %91, !dbg !47

; <label>:91:                                     ; preds = %89, %18
  %92 = phi i32* [ %12, %18 ], [ %22, %89 ]
  %93 = phi i64 [ %9, %18 ], [ %23, %89 ]
  br label %94, !dbg !47

; <label>:94:                                     ; preds = %91, %94
  %95 = phi i32* [ %98, %94 ], [ %92, %91 ]
  %96 = phi i64 [ %97, %94 ], [ %93, %91 ]
  %97 = add i64 %96, -1, !dbg !47
  %98 = getelementptr inbounds i32, i32* %95, i64 1, !dbg !54
  store i32 0, i32* %95, align 4, !dbg !48, !tbaa !35
  %99 = icmp eq i64 %97, 0, !dbg !45
  br i1 %99, label %100, label %94, !dbg !46, !llvm.loop !55

; <label>:100:                                    ; preds = %94, %89, %3, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  ret i32* %0, !dbg !57
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcsncpy", scope: !1, file: !1, line: 44, type: !8, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !15, !18}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 58, baseType: !19)
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 44, type: !14)
!22 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 44, type: !15)
!23 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 44, type: !18)
!24 = !DILocalVariable(name: "dscan", scope: !7, file: !1, line: 49, type: !10)
!25 = !DILocation(line: 44, column: 1, scope: !7)
!26 = !DILocation(line: 49, column: 12, scope: !7)
!27 = !DILocation(line: 51, column: 11, scope: !7)
!28 = !DILocation(line: 51, column: 3, scope: !7)
!29 = !DILocation(line: 0, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 54, column: 10)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 5)
!32 = !DILocation(line: 53, column: 7, scope: !31)
!33 = !DILocation(line: 54, column: 25, scope: !30)
!34 = !DILocation(line: 54, column: 22, scope: !30)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 54, column: 17, scope: !30)
!40 = !DILocation(line: 54, column: 20, scope: !30)
!41 = !DILocation(line: 54, column: 29, scope: !30)
!42 = !DILocation(line: 54, column: 10, scope: !31)
!43 = distinct !{!43, !28, !44}
!44 = !DILocation(line: 55, column: 5, scope: !7)
!45 = !DILocation(line: 56, column: 13, scope: !7)
!46 = !DILocation(line: 56, column: 3, scope: !7)
!47 = !DILocation(line: 56, column: 10, scope: !7)
!48 = !DILocation(line: 56, column: 28, scope: !7)
!49 = distinct !{!49, !46, !50, !51}
!50 = !DILocation(line: 56, column: 30, scope: !7)
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !DILocation(line: 56, column: 25, scope: !7)
!55 = distinct !{!55, !46, !50, !56, !51}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !DILocation(line: 58, column: 3, scope: !7)
