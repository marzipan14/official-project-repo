; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @strncpy(i8* noalias returned, i8* noalias, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = ptrtoint i8* %1 to i64, !dbg !37
  %5 = ptrtoint i8* %0 to i64, !dbg !37
  %6 = or i64 %4, %5, !dbg !37
  %7 = and i64 %6, 7, !dbg !37
  %8 = icmp ne i64 %7, 0, !dbg !37
  %9 = icmp ult i64 %2, 8, !dbg !39
  %10 = or i1 %9, %8, !dbg !40
  br i1 %10, label %35, label %11, !dbg !40

; <label>:11:                                     ; preds = %3
  %12 = bitcast i8* %0 to i64*, !dbg !41
  %13 = bitcast i8* %1 to i64*, !dbg !44
  br label %14, !dbg !46

; <label>:14:                                     ; preds = %11, %24
  %15 = phi i64* [ %13, %11 ], [ %26, %24 ]
  %16 = phi i64* [ %12, %11 ], [ %27, %24 ]
  %17 = phi i64 [ %2, %11 ], [ %25, %24 ]
  %18 = load i64, i64* %15, align 8, !dbg !47, !tbaa !48
  %19 = add nsw i64 %18, -72340172838076673, !dbg !47
  %20 = and i64 %18, -9187201950435737472, !dbg !47
  %21 = xor i64 %20, -9187201950435737472, !dbg !47
  %22 = and i64 %21, %19, !dbg !47
  %23 = icmp eq i64 %22, 0, !dbg !52
  br i1 %23, label %24, label %29, !dbg !53

; <label>:24:                                     ; preds = %14
  %25 = add i64 %17, -8, !dbg !54
  %26 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !56
  %27 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !57
  store i64 %18, i64* %16, align 8, !dbg !58, !tbaa !48
  %28 = icmp ugt i64 %25, 7, !dbg !59
  br i1 %28, label %14, label %29, !dbg !46, !llvm.loop !60

; <label>:29:                                     ; preds = %14, %24
  %30 = phi i64 [ %25, %24 ], [ %17, %14 ]
  %31 = phi i64* [ %27, %24 ], [ %16, %14 ], !dbg !62
  %32 = phi i64* [ %26, %24 ], [ %15, %14 ], !dbg !62
  %33 = bitcast i64* %31 to i8*, !dbg !63
  %34 = bitcast i64* %32 to i8*, !dbg !64
  br label %35, !dbg !65

; <label>:35:                                     ; preds = %29, %3
  %36 = phi i64 [ %2, %3 ], [ %30, %29 ]
  %37 = phi i8* [ %0, %3 ], [ %33, %29 ], !dbg !66
  %38 = phi i8* [ %1, %3 ], [ %34, %29 ], !dbg !66
  %39 = icmp eq i64 %36, 0, !dbg !67
  br i1 %39, label %135, label %40, !dbg !68

; <label>:40:                                     ; preds = %35, %40
  %41 = phi i64 [ %44, %40 ], [ %36, %35 ]
  %42 = phi i8* [ %47, %40 ], [ %37, %35 ], !dbg !69
  %43 = phi i8* [ %45, %40 ], [ %38, %35 ], !dbg !69
  %44 = add i64 %41, -1, !dbg !72
  %45 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !73
  %46 = load i8, i8* %43, align 1, !dbg !74, !tbaa !75
  %47 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !76
  store i8 %46, i8* %42, align 1, !dbg !77, !tbaa !75
  %48 = icmp ne i8 %46, 0, !dbg !78
  %49 = icmp ne i64 %44, 0, !dbg !67
  %50 = and i1 %49, %48, !dbg !79
  br i1 %50, label %40, label %51, !dbg !79, !llvm.loop !80

; <label>:51:                                     ; preds = %40
  %52 = icmp eq i64 %44, 0, !dbg !82
  br i1 %52, label %135, label %53, !dbg !83

; <label>:53:                                     ; preds = %51
  %54 = icmp ult i64 %44, 32, !dbg !84
  br i1 %54, label %126, label %55, !dbg !84

; <label>:55:                                     ; preds = %53
  %56 = and i64 %44, -32, !dbg !84
  %57 = getelementptr i8, i8* %47, i64 %56, !dbg !84
  %58 = sub i64 %44, %56, !dbg !84
  %59 = add i64 %56, -32, !dbg !84
  %60 = lshr exact i64 %59, 5, !dbg !84
  %61 = add nuw nsw i64 %60, 1, !dbg !84
  %62 = and i64 %61, 7, !dbg !84
  %63 = icmp ult i64 %59, 224, !dbg !84
  br i1 %63, label %111, label %64, !dbg !84

; <label>:64:                                     ; preds = %55
  %65 = sub nsw i64 %61, %62, !dbg !84
  br label %66, !dbg !84

; <label>:66:                                     ; preds = %66, %64
  %67 = phi i64 [ 0, %64 ], [ %108, %66 ]
  %68 = phi i64 [ %65, %64 ], [ %109, %66 ]
  %69 = getelementptr i8, i8* %47, i64 %67
  %70 = bitcast i8* %69 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %70, align 1, !dbg !85, !tbaa !75
  %71 = getelementptr i8, i8* %69, i64 16, !dbg !85
  %72 = bitcast i8* %71 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %72, align 1, !dbg !85, !tbaa !75
  %73 = or i64 %67, 32
  %74 = getelementptr i8, i8* %47, i64 %73
  %75 = bitcast i8* %74 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %75, align 1, !dbg !85, !tbaa !75
  %76 = getelementptr i8, i8* %74, i64 16, !dbg !85
  %77 = bitcast i8* %76 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %77, align 1, !dbg !85, !tbaa !75
  %78 = or i64 %67, 64
  %79 = getelementptr i8, i8* %47, i64 %78
  %80 = bitcast i8* %79 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %80, align 1, !dbg !85, !tbaa !75
  %81 = getelementptr i8, i8* %79, i64 16, !dbg !85
  %82 = bitcast i8* %81 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %82, align 1, !dbg !85, !tbaa !75
  %83 = or i64 %67, 96
  %84 = getelementptr i8, i8* %47, i64 %83
  %85 = bitcast i8* %84 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %85, align 1, !dbg !85, !tbaa !75
  %86 = getelementptr i8, i8* %84, i64 16, !dbg !85
  %87 = bitcast i8* %86 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %87, align 1, !dbg !85, !tbaa !75
  %88 = or i64 %67, 128
  %89 = getelementptr i8, i8* %47, i64 %88
  %90 = bitcast i8* %89 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %90, align 1, !dbg !85, !tbaa !75
  %91 = getelementptr i8, i8* %89, i64 16, !dbg !85
  %92 = bitcast i8* %91 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %92, align 1, !dbg !85, !tbaa !75
  %93 = or i64 %67, 160
  %94 = getelementptr i8, i8* %47, i64 %93
  %95 = bitcast i8* %94 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %95, align 1, !dbg !85, !tbaa !75
  %96 = getelementptr i8, i8* %94, i64 16, !dbg !85
  %97 = bitcast i8* %96 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %97, align 1, !dbg !85, !tbaa !75
  %98 = or i64 %67, 192
  %99 = getelementptr i8, i8* %47, i64 %98
  %100 = bitcast i8* %99 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %100, align 1, !dbg !85, !tbaa !75
  %101 = getelementptr i8, i8* %99, i64 16, !dbg !85
  %102 = bitcast i8* %101 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %102, align 1, !dbg !85, !tbaa !75
  %103 = or i64 %67, 224
  %104 = getelementptr i8, i8* %47, i64 %103
  %105 = bitcast i8* %104 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %105, align 1, !dbg !85, !tbaa !75
  %106 = getelementptr i8, i8* %104, i64 16, !dbg !85
  %107 = bitcast i8* %106 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %107, align 1, !dbg !85, !tbaa !75
  %108 = add i64 %67, 256
  %109 = add i64 %68, -8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %66, !llvm.loop !86

; <label>:111:                                    ; preds = %66, %55
  %112 = phi i64 [ 0, %55 ], [ %108, %66 ]
  %113 = icmp eq i64 %62, 0
  br i1 %113, label %124, label %114

; <label>:114:                                    ; preds = %111, %114
  %115 = phi i64 [ %121, %114 ], [ %112, %111 ]
  %116 = phi i64 [ %122, %114 ], [ %62, %111 ]
  %117 = getelementptr i8, i8* %47, i64 %115
  %118 = bitcast i8* %117 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %118, align 1, !dbg !85, !tbaa !75
  %119 = getelementptr i8, i8* %117, i64 16, !dbg !85
  %120 = bitcast i8* %119 to <16 x i8>*, !dbg !85
  store <16 x i8> zeroinitializer, <16 x i8>* %120, align 1, !dbg !85, !tbaa !75
  %121 = add i64 %115, 32
  %122 = add i64 %116, -1
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %114, !llvm.loop !89

; <label>:124:                                    ; preds = %114, %111
  %125 = icmp eq i64 %44, %56
  br i1 %125, label %135, label %126, !dbg !84

; <label>:126:                                    ; preds = %124, %53
  %127 = phi i8* [ %47, %53 ], [ %57, %124 ]
  %128 = phi i64 [ %44, %53 ], [ %58, %124 ]
  br label %129, !dbg !84

; <label>:129:                                    ; preds = %126, %129
  %130 = phi i8* [ %133, %129 ], [ %127, %126 ]
  %131 = phi i64 [ %132, %129 ], [ %128, %126 ]
  %132 = add i64 %131, -1, !dbg !84
  %133 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !91
  store i8 0, i8* %130, align 1, !dbg !85, !tbaa !75
  %134 = icmp eq i64 %132, 0, !dbg !82
  br i1 %134, label %135, label %129, !dbg !83, !llvm.loop !92

; <label>:135:                                    ; preds = %129, %124, %35, %51
  ret i8* %0, !dbg !94
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strncpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "strncpy", scope: !1, file: !1, line: 69, type: !13, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !16, !19}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !22, line: 129, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DILocalVariable(name: "dst0", arg: 1, scope: !12, file: !1, line: 69, type: !15)
!26 = !DILocalVariable(name: "src0", arg: 2, scope: !12, file: !1, line: 69, type: !16)
!27 = !DILocalVariable(name: "count", arg: 3, scope: !12, file: !1, line: 69, type: !19)
!28 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 91, type: !6)
!29 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 92, type: !17)
!30 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 93, type: !5)
!31 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 94, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!34 = !DILocation(line: 69, column: 1, scope: !12)
!35 = !DILocation(line: 91, column: 9, scope: !12)
!36 = !DILocation(line: 92, column: 16, scope: !12)
!37 = !DILocation(line: 97, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !12, file: !1, line: 97, column: 7)
!39 = !DILocation(line: 97, column: 33, scope: !38)
!40 = !DILocation(line: 97, column: 29, scope: !38)
!41 = !DILocation(line: 99, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 98, column: 5)
!43 = !DILocation(line: 93, column: 9, scope: !12)
!44 = !DILocation(line: 100, column: 21, scope: !42)
!45 = !DILocation(line: 94, column: 16, scope: !12)
!46 = !DILocation(line: 104, column: 41, scope: !42)
!47 = !DILocation(line: 104, column: 45, scope: !42)
!48 = !{!49, !49, i64 0}
!49 = !{!"long", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 104, column: 44, scope: !42)
!53 = !DILocation(line: 104, column: 7, scope: !42)
!54 = !DILocation(line: 106, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !42, file: !1, line: 105, column: 2)
!56 = !DILocation(line: 107, column: 33, scope: !55)
!57 = !DILocation(line: 107, column: 16, scope: !55)
!58 = !DILocation(line: 107, column: 19, scope: !55)
!59 = !DILocation(line: 104, column: 20, scope: !42)
!60 = distinct !{!60, !53, !61}
!61 = !DILocation(line: 108, column: 2, scope: !42)
!62 = !DILocation(line: 0, scope: !55)
!63 = !DILocation(line: 110, column: 13, scope: !42)
!64 = !DILocation(line: 111, column: 13, scope: !42)
!65 = !DILocation(line: 112, column: 5, scope: !42)
!66 = !DILocation(line: 0, scope: !42)
!67 = !DILocation(line: 114, column: 16, scope: !12)
!68 = !DILocation(line: 114, column: 3, scope: !12)
!69 = !DILocation(line: 0, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 117, column: 11)
!71 = distinct !DILexicalBlock(scope: !12, file: !1, line: 115, column: 5)
!72 = !DILocation(line: 116, column: 7, scope: !71)
!73 = !DILocation(line: 117, column: 25, scope: !70)
!74 = !DILocation(line: 117, column: 21, scope: !70)
!75 = !{!50, !50, i64 0}
!76 = !DILocation(line: 117, column: 16, scope: !70)
!77 = !DILocation(line: 117, column: 19, scope: !70)
!78 = !DILocation(line: 117, column: 29, scope: !70)
!79 = !DILocation(line: 117, column: 11, scope: !71)
!80 = distinct !{!80, !68, !81}
!81 = !DILocation(line: 119, column: 5, scope: !12)
!82 = !DILocation(line: 121, column: 18, scope: !12)
!83 = !DILocation(line: 121, column: 3, scope: !12)
!84 = !DILocation(line: 121, column: 15, scope: !12)
!85 = !DILocation(line: 122, column: 12, scope: !12)
!86 = distinct !{!86, !83, !87, !88}
!87 = !DILocation(line: 122, column: 14, scope: !12)
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !DILocation(line: 122, column: 9, scope: !12)
!92 = distinct !{!92, !83, !87, !93, !88}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !DILocation(line: 124, column: 3, scope: !12)
