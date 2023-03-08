; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_bcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_bcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @timingsafe_bcmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !34
  br i1 %4, label %123, label %5, !dbg !37

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %2, 8, !dbg !38
  br i1 %6, label %100, label %7, !dbg !38

; <label>:7:                                      ; preds = %5
  %8 = and i64 %2, -8, !dbg !38
  %9 = getelementptr i8, i8* %1, i64 %8, !dbg !38
  %10 = getelementptr i8, i8* %0, i64 %8, !dbg !38
  %11 = sub i64 %2, %8, !dbg !38
  %12 = add i64 %8, -8, !dbg !38
  %13 = lshr exact i64 %12, 3, !dbg !38
  %14 = add nuw nsw i64 %13, 1, !dbg !38
  %15 = and i64 %14, 1, !dbg !38
  %16 = icmp eq i64 %12, 0, !dbg !38
  br i1 %16, label %64, label %17, !dbg !38

; <label>:17:                                     ; preds = %7
  %18 = sub nsw i64 %14, %15, !dbg !38
  br label %19, !dbg !38

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %61, %19 ]
  %21 = phi <4 x i32> [ zeroinitializer, %17 ], [ %59, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %17 ], [ %60, %19 ]
  %23 = phi i64 [ %18, %17 ], [ %62, %19 ]
  %24 = getelementptr i8, i8* %1, i64 %20
  %25 = getelementptr i8, i8* %0, i64 %20
  %26 = bitcast i8* %25 to <4 x i8>*, !dbg !39
  %27 = load <4 x i8>, <4 x i8>* %26, align 1, !dbg !39, !tbaa !40
  %28 = getelementptr i8, i8* %25, i64 4, !dbg !39
  %29 = bitcast i8* %28 to <4 x i8>*, !dbg !39
  %30 = load <4 x i8>, <4 x i8>* %29, align 1, !dbg !39, !tbaa !40
  %31 = bitcast i8* %24 to <4 x i8>*, !dbg !43
  %32 = load <4 x i8>, <4 x i8>* %31, align 1, !dbg !43, !tbaa !40
  %33 = getelementptr i8, i8* %24, i64 4, !dbg !43
  %34 = bitcast i8* %33 to <4 x i8>*, !dbg !43
  %35 = load <4 x i8>, <4 x i8>* %34, align 1, !dbg !43, !tbaa !40
  %36 = xor <4 x i8> %32, %27, !dbg !44
  %37 = xor <4 x i8> %35, %30, !dbg !44
  %38 = zext <4 x i8> %36 to <4 x i32>, !dbg !44
  %39 = zext <4 x i8> %37 to <4 x i32>, !dbg !44
  %40 = or <4 x i32> %21, %38, !dbg !45
  %41 = or <4 x i32> %22, %39, !dbg !45
  %42 = or i64 %20, 8
  %43 = getelementptr i8, i8* %1, i64 %42
  %44 = getelementptr i8, i8* %0, i64 %42
  %45 = bitcast i8* %44 to <4 x i8>*, !dbg !39
  %46 = load <4 x i8>, <4 x i8>* %45, align 1, !dbg !39, !tbaa !40
  %47 = getelementptr i8, i8* %44, i64 4, !dbg !39
  %48 = bitcast i8* %47 to <4 x i8>*, !dbg !39
  %49 = load <4 x i8>, <4 x i8>* %48, align 1, !dbg !39, !tbaa !40
  %50 = bitcast i8* %43 to <4 x i8>*, !dbg !43
  %51 = load <4 x i8>, <4 x i8>* %50, align 1, !dbg !43, !tbaa !40
  %52 = getelementptr i8, i8* %43, i64 4, !dbg !43
  %53 = bitcast i8* %52 to <4 x i8>*, !dbg !43
  %54 = load <4 x i8>, <4 x i8>* %53, align 1, !dbg !43, !tbaa !40
  %55 = xor <4 x i8> %51, %46, !dbg !44
  %56 = xor <4 x i8> %54, %49, !dbg !44
  %57 = zext <4 x i8> %55 to <4 x i32>, !dbg !44
  %58 = zext <4 x i8> %56 to <4 x i32>, !dbg !44
  %59 = or <4 x i32> %40, %57, !dbg !45
  %60 = or <4 x i32> %41, %58, !dbg !45
  %61 = add i64 %20, 16
  %62 = add i64 %23, -2
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %19, !llvm.loop !46

; <label>:64:                                     ; preds = %19, %7
  %65 = phi <4 x i32> [ undef, %7 ], [ %59, %19 ]
  %66 = phi <4 x i32> [ undef, %7 ], [ %60, %19 ]
  %67 = phi i64 [ 0, %7 ], [ %61, %19 ]
  %68 = phi <4 x i32> [ zeroinitializer, %7 ], [ %59, %19 ]
  %69 = phi <4 x i32> [ zeroinitializer, %7 ], [ %60, %19 ]
  %70 = icmp eq i64 %15, 0
  br i1 %70, label %90, label %71

; <label>:71:                                     ; preds = %64
  %72 = getelementptr i8, i8* %1, i64 %67
  %73 = getelementptr i8, i8* %0, i64 %67
  %74 = getelementptr i8, i8* %72, i64 4, !dbg !43
  %75 = bitcast i8* %74 to <4 x i8>*, !dbg !43
  %76 = load <4 x i8>, <4 x i8>* %75, align 1, !dbg !43, !tbaa !40
  %77 = getelementptr i8, i8* %73, i64 4, !dbg !39
  %78 = bitcast i8* %77 to <4 x i8>*, !dbg !39
  %79 = load <4 x i8>, <4 x i8>* %78, align 1, !dbg !39, !tbaa !40
  %80 = xor <4 x i8> %76, %79, !dbg !44
  %81 = zext <4 x i8> %80 to <4 x i32>, !dbg !44
  %82 = or <4 x i32> %69, %81, !dbg !45
  %83 = bitcast i8* %72 to <4 x i8>*, !dbg !43
  %84 = load <4 x i8>, <4 x i8>* %83, align 1, !dbg !43, !tbaa !40
  %85 = bitcast i8* %73 to <4 x i8>*, !dbg !39
  %86 = load <4 x i8>, <4 x i8>* %85, align 1, !dbg !39, !tbaa !40
  %87 = xor <4 x i8> %84, %86, !dbg !44
  %88 = zext <4 x i8> %87 to <4 x i32>, !dbg !44
  %89 = or <4 x i32> %68, %88, !dbg !45
  br label %90, !dbg !45

; <label>:90:                                     ; preds = %64, %71
  %91 = phi <4 x i32> [ %65, %64 ], [ %89, %71 ], !dbg !45
  %92 = phi <4 x i32> [ %66, %64 ], [ %82, %71 ], !dbg !45
  %93 = or <4 x i32> %92, %91, !dbg !45
  %94 = shufflevector <4 x i32> %93, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !45
  %95 = or <4 x i32> %93, %94, !dbg !45
  %96 = shufflevector <4 x i32> %95, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !45
  %97 = or <4 x i32> %95, %96, !dbg !45
  %98 = extractelement <4 x i32> %97, i32 0, !dbg !45
  %99 = icmp eq i64 %8, %2
  br i1 %99, label %119, label %100, !dbg !38

; <label>:100:                                    ; preds = %90, %5
  %101 = phi i32 [ 0, %5 ], [ %98, %90 ]
  %102 = phi i8* [ %1, %5 ], [ %9, %90 ]
  %103 = phi i8* [ %0, %5 ], [ %10, %90 ]
  %104 = phi i64 [ %2, %5 ], [ %11, %90 ]
  br label %105, !dbg !38

; <label>:105:                                    ; preds = %100, %105
  %106 = phi i32 [ %116, %105 ], [ %101, %100 ]
  %107 = phi i8* [ %112, %105 ], [ %102, %100 ]
  %108 = phi i8* [ %110, %105 ], [ %103, %100 ]
  %109 = phi i64 [ %117, %105 ], [ %104, %100 ]
  %110 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !38
  %111 = load i8, i8* %108, align 1, !dbg !39, !tbaa !40
  %112 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !49
  %113 = load i8, i8* %107, align 1, !dbg !43, !tbaa !40
  %114 = xor i8 %113, %111, !dbg !44
  %115 = zext i8 %114 to i32, !dbg !44
  %116 = or i32 %106, %115, !dbg !45
  %117 = add i64 %109, -1, !dbg !50
  %118 = icmp eq i64 %117, 0, !dbg !34
  br i1 %118, label %119, label %105, !dbg !37, !llvm.loop !51

; <label>:119:                                    ; preds = %105, %90
  %120 = phi i32 [ %98, %90 ], [ %116, %105 ], !dbg !45
  %121 = icmp ne i32 %120, 0, !dbg !53
  %122 = zext i1 %121 to i32, !dbg !53
  br label %123, !dbg !53

; <label>:123:                                    ; preds = %119, %3
  %124 = phi i32 [ 0, %3 ], [ %122, %119 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret i32 %124, !dbg !54
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_bcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "timingsafe_bcmp", scope: !1, file: !1, line: 21, type: !8, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !13}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !26, !27}
!19 = !DILocalVariable(name: "b1", arg: 1, scope: !7, file: !1, line: 21, type: !11)
!20 = !DILocalVariable(name: "b2", arg: 2, scope: !7, file: !1, line: 21, type: !11)
!21 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 21, type: !13)
!22 = !DILocalVariable(name: "p1", scope: !7, file: !1, line: 23, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DILocalVariable(name: "p2", scope: !7, file: !1, line: 23, type: !23)
!27 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 24, type: !10)
!28 = !DILocation(line: 21, column: 29, scope: !7)
!29 = !DILocation(line: 21, column: 45, scope: !7)
!30 = !DILocation(line: 21, column: 56, scope: !7)
!31 = !DILocation(line: 23, column: 23, scope: !7)
!32 = !DILocation(line: 23, column: 33, scope: !7)
!33 = !DILocation(line: 24, column: 6, scope: !7)
!34 = !DILocation(line: 26, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 26, column: 2)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 2)
!37 = !DILocation(line: 26, column: 2, scope: !36)
!38 = !DILocation(line: 27, column: 13, scope: !35)
!39 = !DILocation(line: 27, column: 10, scope: !35)
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 27, column: 18, scope: !35)
!44 = !DILocation(line: 27, column: 16, scope: !35)
!45 = !DILocation(line: 27, column: 7, scope: !35)
!46 = distinct !{!46, !37, !47, !48}
!47 = !DILocation(line: 27, column: 21, scope: !36)
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !DILocation(line: 27, column: 21, scope: !35)
!50 = !DILocation(line: 26, column: 17, scope: !35)
!51 = distinct !{!51, !37, !47, !52, !48}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !DILocation(line: 28, column: 14, scope: !7)
!54 = !DILocation(line: 28, column: 2, scope: !7)
