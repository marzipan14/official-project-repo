; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemset.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemset.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wmemset(i32* returned, i32, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp eq i64 %2, 0, !dbg !26
  br i1 %4, label %90, label %5, !dbg !29

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %2, 8, !dbg !30
  br i1 %6, label %81, label %7, !dbg !30

; <label>:7:                                      ; preds = %5
  %8 = and i64 %2, -8, !dbg !30
  %9 = getelementptr i32, i32* %0, i64 %8, !dbg !30
  %10 = insertelement <4 x i32> undef, i32 %1, i32 0, !dbg !30
  %11 = shufflevector <4 x i32> %10, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !30
  %12 = insertelement <4 x i32> undef, i32 %1, i32 0, !dbg !30
  %13 = shufflevector <4 x i32> %12, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !30
  %14 = add i64 %8, -8, !dbg !30
  %15 = lshr exact i64 %14, 3, !dbg !30
  %16 = add nuw nsw i64 %15, 1, !dbg !30
  %17 = and i64 %16, 7, !dbg !30
  %18 = icmp ult i64 %14, 56, !dbg !30
  br i1 %18, label %66, label %19, !dbg !30

; <label>:19:                                     ; preds = %7
  %20 = sub nsw i64 %16, %17, !dbg !30
  br label %21, !dbg !30

; <label>:21:                                     ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %63, %21 ], !dbg !32
  %23 = phi i64 [ %20, %19 ], [ %64, %21 ]
  %24 = getelementptr i32, i32* %0, i64 %22
  %25 = bitcast i32* %24 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %25, align 4, !dbg !30, !tbaa !33
  %26 = getelementptr i32, i32* %24, i64 4, !dbg !30
  %27 = bitcast i32* %26 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %27, align 4, !dbg !30, !tbaa !33
  %28 = or i64 %22, 8, !dbg !32
  %29 = getelementptr i32, i32* %0, i64 %28
  %30 = bitcast i32* %29 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %30, align 4, !dbg !30, !tbaa !33
  %31 = getelementptr i32, i32* %29, i64 4, !dbg !30
  %32 = bitcast i32* %31 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %32, align 4, !dbg !30, !tbaa !33
  %33 = or i64 %22, 16, !dbg !32
  %34 = getelementptr i32, i32* %0, i64 %33
  %35 = bitcast i32* %34 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %35, align 4, !dbg !30, !tbaa !33
  %36 = getelementptr i32, i32* %34, i64 4, !dbg !30
  %37 = bitcast i32* %36 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %37, align 4, !dbg !30, !tbaa !33
  %38 = or i64 %22, 24, !dbg !32
  %39 = getelementptr i32, i32* %0, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %40, align 4, !dbg !30, !tbaa !33
  %41 = getelementptr i32, i32* %39, i64 4, !dbg !30
  %42 = bitcast i32* %41 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %42, align 4, !dbg !30, !tbaa !33
  %43 = or i64 %22, 32, !dbg !32
  %44 = getelementptr i32, i32* %0, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %45, align 4, !dbg !30, !tbaa !33
  %46 = getelementptr i32, i32* %44, i64 4, !dbg !30
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %47, align 4, !dbg !30, !tbaa !33
  %48 = or i64 %22, 40, !dbg !32
  %49 = getelementptr i32, i32* %0, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %50, align 4, !dbg !30, !tbaa !33
  %51 = getelementptr i32, i32* %49, i64 4, !dbg !30
  %52 = bitcast i32* %51 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %52, align 4, !dbg !30, !tbaa !33
  %53 = or i64 %22, 48, !dbg !32
  %54 = getelementptr i32, i32* %0, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %55, align 4, !dbg !30, !tbaa !33
  %56 = getelementptr i32, i32* %54, i64 4, !dbg !30
  %57 = bitcast i32* %56 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %57, align 4, !dbg !30, !tbaa !33
  %58 = or i64 %22, 56, !dbg !32
  %59 = getelementptr i32, i32* %0, i64 %58
  %60 = bitcast i32* %59 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %60, align 4, !dbg !30, !tbaa !33
  %61 = getelementptr i32, i32* %59, i64 4, !dbg !30
  %62 = bitcast i32* %61 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %62, align 4, !dbg !30, !tbaa !33
  %63 = add i64 %22, 64, !dbg !32
  %64 = add i64 %23, -8, !dbg !32
  %65 = icmp eq i64 %64, 0, !dbg !32
  br i1 %65, label %66, label %21, !dbg !32, !llvm.loop !37

; <label>:66:                                     ; preds = %21, %7
  %67 = phi i64 [ 0, %7 ], [ %63, %21 ]
  %68 = icmp eq i64 %17, 0, !dbg !32
  br i1 %68, label %79, label %69, !dbg !32

; <label>:69:                                     ; preds = %66, %69
  %70 = phi i64 [ %76, %69 ], [ %67, %66 ], !dbg !32
  %71 = phi i64 [ %77, %69 ], [ %17, %66 ]
  %72 = getelementptr i32, i32* %0, i64 %70
  %73 = bitcast i32* %72 to <4 x i32>*, !dbg !30
  store <4 x i32> %11, <4 x i32>* %73, align 4, !dbg !30, !tbaa !33
  %74 = getelementptr i32, i32* %72, i64 4, !dbg !30
  %75 = bitcast i32* %74 to <4 x i32>*, !dbg !30
  store <4 x i32> %13, <4 x i32>* %75, align 4, !dbg !30, !tbaa !33
  %76 = add i64 %70, 8, !dbg !32
  %77 = add i64 %71, -1, !dbg !32
  %78 = icmp eq i64 %77, 0, !dbg !32
  br i1 %78, label %79, label %69, !dbg !32, !llvm.loop !40

; <label>:79:                                     ; preds = %69, %66
  %80 = icmp eq i64 %8, %2
  br i1 %80, label %90, label %81, !dbg !30

; <label>:81:                                     ; preds = %79, %5
  %82 = phi i32* [ %0, %5 ], [ %9, %79 ]
  %83 = phi i64 [ 0, %5 ], [ %8, %79 ]
  br label %84, !dbg !30

; <label>:84:                                     ; preds = %81, %84
  %85 = phi i32* [ %87, %84 ], [ %82, %81 ]
  %86 = phi i64 [ %88, %84 ], [ %83, %81 ]
  store i32 %1, i32* %85, align 4, !dbg !30, !tbaa !33
  %87 = getelementptr inbounds i32, i32* %85, i64 1, !dbg !42
  %88 = add nuw i64 %86, 1, !dbg !32
  %89 = icmp eq i64 %88, %2, !dbg !26
  br i1 %89, label %90, label %84, !dbg !29, !llvm.loop !43

; <label>:90:                                     ; preds = %84, %79, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  ret i32* %0, !dbg !45
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemset.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "wmemset", scope: !1, file: !1, line: 68, type: !13, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !4, !5, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 58, baseType: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !12, file: !1, line: 68, type: !4)
!19 = !DILocalVariable(name: "c", arg: 2, scope: !12, file: !1, line: 68, type: !5)
!20 = !DILocalVariable(name: "n", arg: 3, scope: !12, file: !1, line: 68, type: !15)
!21 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 73, type: !15)
!22 = !DILocalVariable(name: "p", scope: !12, file: !1, line: 74, type: !4)
!23 = !DILocation(line: 68, column: 1, scope: !12)
!24 = !DILocation(line: 74, column: 11, scope: !12)
!25 = !DILocation(line: 73, column: 9, scope: !12)
!26 = !DILocation(line: 77, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 77, column: 2)
!28 = distinct !DILexicalBlock(scope: !12, file: !1, line: 77, column: 2)
!29 = !DILocation(line: 77, column: 2, scope: !28)
!30 = !DILocation(line: 78, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 77, column: 26)
!32 = !DILocation(line: 77, column: 22, scope: !27)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !29, !38, !39}
!38 = !DILocation(line: 80, column: 2, scope: !28)
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !DILocation(line: 79, column: 4, scope: !31)
!43 = distinct !{!43, !29, !38, !44, !39}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !DILocation(line: 81, column: 2, scope: !12)
