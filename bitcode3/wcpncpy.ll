; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32* @wcpncpy(i32* noalias, i32* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  br label %4, !dbg !27

; <label>:4:                                      ; preds = %9, %3
  %5 = phi i32* [ %0, %3 ], [ %13, %9 ]
  %6 = phi i32* [ %1, %3 ], [ %11, %9 ]
  %7 = phi i64 [ %2, %3 ], [ %10, %9 ]
  %8 = icmp eq i64 %7, 0, !dbg !28
  br i1 %8, label %101, label %9, !dbg !27

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, -1, !dbg !29
  %11 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !31
  %12 = load i32, i32* %6, align 4, !dbg !33, !tbaa !34
  %13 = getelementptr inbounds i32, i32* %5, i64 1, !dbg !38
  store i32 %12, i32* %5, align 4, !dbg !39, !tbaa !34
  %14 = icmp eq i32 %12, 0, !dbg !40
  br i1 %14, label %15, label %4, !dbg !41, !llvm.loop !42

; <label>:15:                                     ; preds = %9
  %16 = icmp eq i64 %10, 0, !dbg !44
  br i1 %16, label %101, label %17, !dbg !45

; <label>:17:                                     ; preds = %15
  %18 = icmp ult i64 %10, 8, !dbg !46
  br i1 %18, label %90, label %19, !dbg !46

; <label>:19:                                     ; preds = %17
  %20 = and i64 %10, -8, !dbg !46
  %21 = sub i64 %10, %20, !dbg !46
  %22 = getelementptr i32, i32* %13, i64 %20, !dbg !46
  %23 = add i64 %20, -8, !dbg !46
  %24 = lshr exact i64 %23, 3, !dbg !46
  %25 = add nuw nsw i64 %24, 1, !dbg !46
  %26 = and i64 %25, 7, !dbg !46
  %27 = icmp ult i64 %23, 56, !dbg !46
  br i1 %27, label %75, label %28, !dbg !46

; <label>:28:                                     ; preds = %19
  %29 = sub nsw i64 %25, %26, !dbg !46
  br label %30, !dbg !46

; <label>:30:                                     ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %72, %30 ]
  %32 = phi i64 [ %29, %28 ], [ %73, %30 ]
  %33 = getelementptr i32, i32* %13, i64 %31
  %34 = bitcast i32* %33 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %34, align 4, !dbg !47, !tbaa !34
  %35 = getelementptr i32, i32* %33, i64 4, !dbg !47
  %36 = bitcast i32* %35 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %36, align 4, !dbg !47, !tbaa !34
  %37 = or i64 %31, 8
  %38 = getelementptr i32, i32* %13, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %39, align 4, !dbg !47, !tbaa !34
  %40 = getelementptr i32, i32* %38, i64 4, !dbg !47
  %41 = bitcast i32* %40 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %41, align 4, !dbg !47, !tbaa !34
  %42 = or i64 %31, 16
  %43 = getelementptr i32, i32* %13, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %44, align 4, !dbg !47, !tbaa !34
  %45 = getelementptr i32, i32* %43, i64 4, !dbg !47
  %46 = bitcast i32* %45 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %46, align 4, !dbg !47, !tbaa !34
  %47 = or i64 %31, 24
  %48 = getelementptr i32, i32* %13, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %49, align 4, !dbg !47, !tbaa !34
  %50 = getelementptr i32, i32* %48, i64 4, !dbg !47
  %51 = bitcast i32* %50 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %51, align 4, !dbg !47, !tbaa !34
  %52 = or i64 %31, 32
  %53 = getelementptr i32, i32* %13, i64 %52
  %54 = bitcast i32* %53 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %54, align 4, !dbg !47, !tbaa !34
  %55 = getelementptr i32, i32* %53, i64 4, !dbg !47
  %56 = bitcast i32* %55 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %56, align 4, !dbg !47, !tbaa !34
  %57 = or i64 %31, 40
  %58 = getelementptr i32, i32* %13, i64 %57
  %59 = bitcast i32* %58 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %59, align 4, !dbg !47, !tbaa !34
  %60 = getelementptr i32, i32* %58, i64 4, !dbg !47
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %61, align 4, !dbg !47, !tbaa !34
  %62 = or i64 %31, 48
  %63 = getelementptr i32, i32* %13, i64 %62
  %64 = bitcast i32* %63 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %64, align 4, !dbg !47, !tbaa !34
  %65 = getelementptr i32, i32* %63, i64 4, !dbg !47
  %66 = bitcast i32* %65 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %66, align 4, !dbg !47, !tbaa !34
  %67 = or i64 %31, 56
  %68 = getelementptr i32, i32* %13, i64 %67
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %69, align 4, !dbg !47, !tbaa !34
  %70 = getelementptr i32, i32* %68, i64 4, !dbg !47
  %71 = bitcast i32* %70 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %71, align 4, !dbg !47, !tbaa !34
  %72 = add i64 %31, 64
  %73 = add i64 %32, -8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %30, !llvm.loop !48

; <label>:75:                                     ; preds = %30, %19
  %76 = phi i64 [ 0, %19 ], [ %72, %30 ]
  %77 = icmp eq i64 %26, 0
  br i1 %77, label %88, label %78

; <label>:78:                                     ; preds = %75, %78
  %79 = phi i64 [ %85, %78 ], [ %76, %75 ]
  %80 = phi i64 [ %86, %78 ], [ %26, %75 ]
  %81 = getelementptr i32, i32* %13, i64 %79
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %82, align 4, !dbg !47, !tbaa !34
  %83 = getelementptr i32, i32* %81, i64 4, !dbg !47
  %84 = bitcast i32* %83 to <4 x i32>*, !dbg !47
  store <4 x i32> zeroinitializer, <4 x i32>* %84, align 4, !dbg !47, !tbaa !34
  %85 = add i64 %79, 8
  %86 = add i64 %80, -1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %78, !llvm.loop !51

; <label>:88:                                     ; preds = %78, %75
  %89 = icmp eq i64 %10, %20
  br i1 %89, label %99, label %90, !dbg !46

; <label>:90:                                     ; preds = %88, %17
  %91 = phi i64 [ %10, %17 ], [ %21, %88 ]
  %92 = phi i32* [ %13, %17 ], [ %22, %88 ]
  br label %93, !dbg !46

; <label>:93:                                     ; preds = %90, %93
  %94 = phi i64 [ %96, %93 ], [ %91, %90 ]
  %95 = phi i32* [ %97, %93 ], [ %92, %90 ]
  %96 = add i64 %94, -1, !dbg !46
  %97 = getelementptr inbounds i32, i32* %95, i64 1, !dbg !53
  store i32 0, i32* %95, align 4, !dbg !47, !tbaa !34
  %98 = icmp eq i64 %96, 0, !dbg !44
  br i1 %98, label %99, label %93, !dbg !45, !llvm.loop !54

; <label>:99:                                     ; preds = %93, %88
  %100 = getelementptr i32, i32* %5, i64 %7, !dbg !46
  br label %101, !dbg !56

; <label>:101:                                    ; preds = %4, %99, %15
  %102 = phi i32* [ %5, %15 ], [ %5, %99 ], [ null, %4 ]
  %103 = phi i32* [ %13, %15 ], [ %100, %99 ], [ %5, %4 ], !dbg !57
  %104 = icmp eq i32* %102, null, !dbg !56
  %105 = select i1 %104, i32* %103, i32* %102, !dbg !56
  ret i32* %105, !dbg !58
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpncpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcpncpy", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
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
!21 = !DILocalVariable(name: "dst", arg: 1, scope: !7, file: !1, line: 42, type: !14)
!22 = !DILocalVariable(name: "src", arg: 2, scope: !7, file: !1, line: 42, type: !15)
!23 = !DILocalVariable(name: "count", arg: 3, scope: !7, file: !1, line: 42, type: !18)
!24 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 47, type: !10)
!25 = !DILocation(line: 42, column: 1, scope: !7)
!26 = !DILocation(line: 47, column: 12, scope: !7)
!27 = !DILocation(line: 49, column: 3, scope: !7)
!28 = !DILocation(line: 49, column: 16, scope: !7)
!29 = !DILocation(line: 51, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 5)
!31 = !DILocation(line: 52, column: 25, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 52, column: 11)
!33 = !DILocation(line: 52, column: 21, scope: !32)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 52, column: 16, scope: !32)
!39 = !DILocation(line: 52, column: 19, scope: !32)
!40 = !DILocation(line: 52, column: 29, scope: !32)
!41 = !DILocation(line: 52, column: 11, scope: !30)
!42 = distinct !{!42, !27, !43}
!43 = !DILocation(line: 57, column: 5, scope: !7)
!44 = !DILocation(line: 58, column: 18, scope: !7)
!45 = !DILocation(line: 58, column: 3, scope: !7)
!46 = !DILocation(line: 58, column: 15, scope: !7)
!47 = !DILocation(line: 59, column: 12, scope: !7)
!48 = distinct !{!48, !45, !49, !50}
!49 = !DILocation(line: 59, column: 14, scope: !7)
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !DILocation(line: 59, column: 9, scope: !7)
!54 = distinct !{!54, !45, !49, !55, !50}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !DILocation(line: 61, column: 10, scope: !7)
!57 = !DILocation(line: 0, scope: !7)
!58 = !DILocation(line: 61, column: 3, scope: !7)
