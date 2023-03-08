; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memset.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memset.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memset(i8* returned, i32, i64) local_unnamed_addr #0 !dbg !13 {
  %4 = and i32 %1, 255, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  %5 = ptrtoint i8* %0 to i64, !dbg !37
  %6 = and i64 %5, 7, !dbg !37
  %7 = icmp eq i64 %6, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %7, label %20, label %8, !dbg !36

; <label>:8:                                      ; preds = %3
  %9 = trunc i32 %1 to i8
  br label %10, !dbg !36

; <label>:10:                                     ; preds = %8, %14
  %11 = phi i8* [ %0, %8 ], [ %16, %14 ]
  %12 = phi i64 [ %2, %8 ], [ %15, %14 ]
  %13 = icmp eq i64 %12, 0, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %13, label %145, label %14, !dbg !41

; <label>:14:                                     ; preds = %10
  %15 = add i64 %12, -1, !dbg !38
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !42
  store i8 %9, i8* %11, align 1, !dbg !43, !tbaa !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  %17 = ptrtoint i8* %16 to i64, !dbg !37
  %18 = and i64 %17, 7, !dbg !37
  %19 = icmp eq i64 %18, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %19, label %20, label %10, !dbg !36, !llvm.loop !47

; <label>:20:                                     ; preds = %14, %3
  %21 = phi i64 [ %2, %3 ], [ %15, %14 ]
  %22 = phi i8* [ %0, %3 ], [ %16, %14 ], !dbg !49
  %23 = icmp ult i64 %21, 8, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %23, label %115, label %24, !dbg !52

; <label>:24:                                     ; preds = %20
  %25 = shl nuw nsw i32 %4, 8, !dbg !54
  %26 = or i32 %25, %4, !dbg !56
  %27 = shl nuw i32 %26, 16, !dbg !57
  %28 = or i32 %27, %26, !dbg !58
  %29 = zext i32 %28 to i64, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  %30 = shl nuw i64 %29, 32, !dbg !64
  %31 = or i64 %30, %29, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  %32 = bitcast i8* %22 to i64*, !dbg !68
  %33 = icmp ugt i64 %21, 31, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %33, label %35, label %34, !dbg !70

; <label>:34:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br label %60, !dbg !71

; <label>:35:                                     ; preds = %24
  %36 = add i64 %21, -32, !dbg !72
  %37 = and i64 %36, -32, !dbg !72
  %38 = add i64 %37, 32, !dbg !72
  %39 = getelementptr i8, i8* %22, i64 %38, !dbg !72
  %40 = bitcast i8* %39 to i64*
  %41 = and i64 %36, 32, !dbg !72
  %42 = icmp eq i64 %41, 0, !dbg !72
  br i1 %42, label %43, label %53, !dbg !72

; <label>:43:                                     ; preds = %35
  %44 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !72
  %45 = bitcast i8* %44 to i64*, !dbg !72
  store i64 %31, i64* %32, align 8, !dbg !74, !tbaa !75
  %46 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !77
  %47 = bitcast i8* %46 to i64*, !dbg !77
  store i64 %31, i64* %45, align 8, !dbg !78, !tbaa !75
  %48 = getelementptr inbounds i8, i8* %22, i64 24, !dbg !79
  %49 = bitcast i8* %48 to i64*, !dbg !79
  store i64 %31, i64* %47, align 8, !dbg !80, !tbaa !75
  %50 = getelementptr inbounds i8, i8* %22, i64 32, !dbg !81
  %51 = bitcast i8* %50 to i64*, !dbg !81
  store i64 %31, i64* %49, align 8, !dbg !82, !tbaa !75
  %52 = add i64 %21, -32, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br label %53, !dbg !70

; <label>:53:                                     ; preds = %43, %35
  %54 = phi i64* [ %32, %35 ], [ %51, %43 ]
  %55 = phi i64 [ %21, %35 ], [ %52, %43 ]
  %56 = icmp ult i64 %36, 32, !dbg !72
  br i1 %56, label %57, label %86, !dbg !72

; <label>:57:                                     ; preds = %86, %53
  %58 = sub i64 %36, %37, !dbg !72
  %59 = icmp ugt i64 %58, 7, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %59, label %60, label %111, !dbg !71

; <label>:60:                                     ; preds = %34, %57
  %61 = phi i64* [ %32, %34 ], [ %40, %57 ]
  %62 = phi i64 [ %21, %34 ], [ %58, %57 ]
  %63 = add i64 %62, -8, !dbg !85
  %64 = lshr i64 %63, 3, !dbg !85
  %65 = add nuw nsw i64 %64, 1, !dbg !85
  %66 = sub i64 7, %62, !dbg !85
  %67 = icmp ugt i64 %66, -8, !dbg !85
  %68 = select i1 %67, i64 %66, i64 -8, !dbg !85
  %69 = add i64 %62, %68, !dbg !85
  %70 = lshr i64 %69, 3, !dbg !85
  %71 = add nuw nsw i64 %70, 1, !dbg !85
  %72 = and i64 %71, 3, !dbg !85
  %73 = icmp eq i64 %72, 0, !dbg !85
  br i1 %73, label %82, label %74, !dbg !85

; <label>:74:                                     ; preds = %60, %74
  %75 = phi i64* [ %78, %74 ], [ %61, %60 ]
  %76 = phi i64 [ %79, %74 ], [ %62, %60 ]
  %77 = phi i64 [ %80, %74 ], [ %72, %60 ]
  %78 = getelementptr inbounds i64, i64* %75, i64 1, !dbg !85
  store i64 %31, i64* %75, align 8, !dbg !87, !tbaa !75
  %79 = add i64 %76, -8, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %80 = add i64 %77, -1, !dbg !71
  %81 = icmp eq i64 %80, 0, !dbg !71
  br i1 %81, label %82, label %74, !dbg !71, !llvm.loop !89

; <label>:82:                                     ; preds = %74, %60
  %83 = phi i64* [ %61, %60 ], [ %78, %74 ]
  %84 = phi i64 [ %62, %60 ], [ %79, %74 ]
  %85 = icmp ult i64 %69, 24, !dbg !85
  br i1 %85, label %108, label %99, !dbg !85

; <label>:86:                                     ; preds = %53, %86
  %87 = phi i64* [ %96, %86 ], [ %54, %53 ]
  %88 = phi i64 [ %97, %86 ], [ %55, %53 ]
  %89 = getelementptr inbounds i64, i64* %87, i64 1, !dbg !72
  store i64 %31, i64* %87, align 8, !dbg !74, !tbaa !75
  %90 = getelementptr inbounds i64, i64* %87, i64 2, !dbg !77
  store i64 %31, i64* %89, align 8, !dbg !78, !tbaa !75
  %91 = getelementptr inbounds i64, i64* %87, i64 3, !dbg !79
  store i64 %31, i64* %90, align 8, !dbg !80, !tbaa !75
  %92 = getelementptr inbounds i64, i64* %87, i64 4, !dbg !81
  store i64 %31, i64* %91, align 8, !dbg !82, !tbaa !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  %93 = getelementptr inbounds i64, i64* %87, i64 5, !dbg !72
  store i64 %31, i64* %92, align 8, !dbg !74, !tbaa !75
  %94 = getelementptr inbounds i64, i64* %87, i64 6, !dbg !77
  store i64 %31, i64* %93, align 8, !dbg !78, !tbaa !75
  %95 = getelementptr inbounds i64, i64* %87, i64 7, !dbg !79
  store i64 %31, i64* %94, align 8, !dbg !80, !tbaa !75
  %96 = getelementptr inbounds i64, i64* %87, i64 8, !dbg !81
  store i64 %31, i64* %95, align 8, !dbg !82, !tbaa !75
  %97 = add i64 %88, -64, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  %98 = icmp ugt i64 %97, 31, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %98, label %86, label %57, !dbg !70, !llvm.loop !91

; <label>:99:                                     ; preds = %82, %99
  %100 = phi i64* [ %105, %99 ], [ %83, %82 ]
  %101 = phi i64 [ %106, %99 ], [ %84, %82 ]
  %102 = getelementptr inbounds i64, i64* %100, i64 1, !dbg !85
  store i64 %31, i64* %100, align 8, !dbg !87, !tbaa !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %103 = getelementptr inbounds i64, i64* %100, i64 2, !dbg !85
  store i64 %31, i64* %102, align 8, !dbg !87, !tbaa !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %104 = getelementptr inbounds i64, i64* %100, i64 3, !dbg !85
  store i64 %31, i64* %103, align 8, !dbg !87, !tbaa !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %105 = getelementptr inbounds i64, i64* %100, i64 4, !dbg !85
  store i64 %31, i64* %104, align 8, !dbg !87, !tbaa !75
  %106 = add i64 %101, -32, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %107 = icmp ugt i64 %106, 7, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %107, label %99, label %108, !dbg !71, !llvm.loop !93

; <label>:108:                                    ; preds = %99, %82
  %109 = getelementptr i64, i64* %61, i64 %65, !dbg !85
  %110 = and i64 %63, 7, !dbg !85
  br label %111, !dbg !95

; <label>:111:                                    ; preds = %108, %57
  %112 = phi i64 [ %58, %57 ], [ %110, %108 ]
  %113 = phi i64* [ %40, %57 ], [ %109, %108 ], !dbg !96
  %114 = bitcast i64* %113 to i8*, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %115, !dbg !97

; <label>:115:                                    ; preds = %111, %20
  %116 = phi i64 [ %21, %20 ], [ %112, %111 ]
  %117 = phi i8* [ %22, %20 ], [ %114, %111 ], !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  %118 = icmp eq i64 %116, 0, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %118, label %145, label %119, !dbg !99

; <label>:119:                                    ; preds = %115
  %120 = trunc i32 %1 to i8
  %121 = add i64 %116, -1, !dbg !99
  %122 = and i64 %116, 3, !dbg !99
  %123 = icmp eq i64 %122, 0, !dbg !99
  br i1 %123, label %132, label %124, !dbg !99

; <label>:124:                                    ; preds = %119, %124
  %125 = phi i8* [ %129, %124 ], [ %117, %119 ]
  %126 = phi i64 [ %128, %124 ], [ %116, %119 ]
  %127 = phi i64 [ %130, %124 ], [ %122, %119 ]
  %128 = add i64 %126, -1, !dbg !100
  %129 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !101
  store i8 %120, i8* %125, align 1, !dbg !102, !tbaa !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  %130 = add i64 %127, -1, !dbg !99
  %131 = icmp eq i64 %130, 0, !dbg !99
  br i1 %131, label %132, label %124, !dbg !99, !llvm.loop !103

; <label>:132:                                    ; preds = %124, %119
  %133 = phi i8* [ %117, %119 ], [ %129, %124 ]
  %134 = phi i64 [ %116, %119 ], [ %128, %124 ]
  %135 = icmp ult i64 %121, 3, !dbg !99
  br i1 %135, label %145, label %136, !dbg !99

; <label>:136:                                    ; preds = %132, %136
  %137 = phi i8* [ %143, %136 ], [ %133, %132 ]
  %138 = phi i64 [ %142, %136 ], [ %134, %132 ]
  %139 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !101
  store i8 %120, i8* %137, align 1, !dbg !102, !tbaa !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  %140 = getelementptr inbounds i8, i8* %137, i64 2, !dbg !101
  store i8 %120, i8* %139, align 1, !dbg !102, !tbaa !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  %141 = getelementptr inbounds i8, i8* %137, i64 3, !dbg !101
  store i8 %120, i8* %140, align 1, !dbg !102, !tbaa !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  %142 = add i64 %138, -4, !dbg !100
  %143 = getelementptr inbounds i8, i8* %137, i64 4, !dbg !101
  store i8 %120, i8* %141, align 1, !dbg !102, !tbaa !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  %144 = icmp eq i64 %142, 0, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %144, label %145, label %136, !dbg !99, !llvm.loop !104

; <label>:145:                                    ; preds = %10, %132, %136, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  ret i8* %0, !dbg !106
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memset.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "memset", scope: !1, file: !1, line: 45, type: !14, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !17, !18}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 40, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !21, line: 129, baseType: !8)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !25, !26, !27, !29, !30, !31}
!23 = !DILocalVariable(name: "m", arg: 1, scope: !13, file: !1, line: 45, type: !16)
!24 = !DILocalVariable(name: "c", arg: 2, scope: !13, file: !1, line: 45, type: !17)
!25 = !DILocalVariable(name: "n", arg: 3, scope: !13, file: !1, line: 45, type: !18)
!26 = !DILocalVariable(name: "s", scope: !13, file: !1, line: 50, type: !4)
!27 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 53, type: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "buffer", scope: !13, file: !1, line: 54, type: !8)
!30 = !DILocalVariable(name: "aligned_addr", scope: !13, file: !1, line: 55, type: !7)
!31 = !DILocalVariable(name: "d", scope: !13, file: !1, line: 56, type: !28)
!32 = !DILocation(line: 45, column: 1, scope: !13)
!33 = !DILocation(line: 50, column: 9, scope: !13)
!34 = !DILocation(line: 56, column: 22, scope: !13)
!35 = !DILocation(line: 56, column: 16, scope: !13)
!36 = !DILocation(line: 59, column: 3, scope: !13)
!37 = !DILocation(line: 59, column: 10, scope: !13)
!38 = !DILocation(line: 61, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 61, column: 11)
!40 = distinct !DILexicalBlock(scope: !13, file: !1, line: 60, column: 5)
!41 = !DILocation(line: 61, column: 11, scope: !40)
!42 = !DILocation(line: 62, column: 11, scope: !39)
!43 = !DILocation(line: 62, column: 14, scope: !39)
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = distinct !{!47, !36, !48}
!48 = !DILocation(line: 65, column: 5, scope: !13)
!49 = !DILocation(line: 0, scope: !39)
!50 = !DILocation(line: 67, column: 8, scope: !51)
!51 = distinct !DILexicalBlock(scope: !13, file: !1, line: 67, column: 7)
!52 = !DILocation(line: 67, column: 7, scope: !13)
!53 = !DILocation(line: 55, column: 18, scope: !13)
!54 = !DILocation(line: 74, column: 19, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 68, column: 5)
!56 = !DILocation(line: 74, column: 25, scope: !55)
!57 = !DILocation(line: 75, column: 25, scope: !55)
!58 = !DILocation(line: 75, column: 14, scope: !55)
!59 = !DILocation(line: 54, column: 17, scope: !13)
!60 = !DILocation(line: 53, column: 16, scope: !13)
!61 = !DILocation(line: 76, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 76, column: 7)
!63 = !DILocation(line: 76, column: 7, scope: !62)
!64 = !DILocation(line: 77, column: 26, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 76, column: 7)
!66 = !DILocation(line: 77, column: 32, scope: !65)
!67 = !DILocation(line: 76, column: 7, scope: !65)
!68 = !DILocation(line: 70, column: 22, scope: !55)
!69 = !DILocation(line: 80, column: 16, scope: !55)
!70 = !DILocation(line: 80, column: 7, scope: !55)
!71 = !DILocation(line: 89, column: 7, scope: !55)
!72 = !DILocation(line: 82, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !55, file: !1, line: 81, column: 9)
!74 = !DILocation(line: 82, column: 27, scope: !73)
!75 = !{!76, !76, i64 0}
!76 = !{!"long", !45, i64 0}
!77 = !DILocation(line: 83, column: 24, scope: !73)
!78 = !DILocation(line: 83, column: 27, scope: !73)
!79 = !DILocation(line: 84, column: 24, scope: !73)
!80 = !DILocation(line: 84, column: 27, scope: !73)
!81 = !DILocation(line: 85, column: 24, scope: !73)
!82 = !DILocation(line: 85, column: 27, scope: !73)
!83 = !DILocation(line: 86, column: 13, scope: !73)
!84 = !DILocation(line: 89, column: 16, scope: !55)
!85 = !DILocation(line: 91, column: 24, scope: !86)
!86 = distinct !DILexicalBlock(scope: !55, file: !1, line: 90, column: 9)
!87 = !DILocation(line: 91, column: 27, scope: !86)
!88 = !DILocation(line: 92, column: 13, scope: !86)
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !70, !92}
!92 = !DILocation(line: 87, column: 9, scope: !55)
!93 = distinct !{!93, !71, !94}
!94 = !DILocation(line: 93, column: 9, scope: !55)
!95 = !DILocation(line: 95, column: 11, scope: !55)
!96 = !DILocation(line: 0, scope: !86)
!97 = !DILocation(line: 96, column: 5, scope: !55)
!98 = !DILocation(line: 0, scope: !55)
!99 = !DILocation(line: 100, column: 3, scope: !13)
!100 = !DILocation(line: 100, column: 11, scope: !13)
!101 = !DILocation(line: 101, column: 7, scope: !13)
!102 = !DILocation(line: 101, column: 10, scope: !13)
!103 = distinct !{!103, !90}
!104 = distinct !{!104, !99, !105}
!105 = !DILocation(line: 101, column: 19, scope: !13)
!106 = !DILocation(line: 104, column: 1, scope: !13)
