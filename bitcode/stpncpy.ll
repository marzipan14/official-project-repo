; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpncpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpncpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @stpncpy(i8* noalias, i8* noalias, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = ptrtoint i8* %1 to i64, !dbg !35
  %5 = ptrtoint i8* %0 to i64, !dbg !35
  %6 = or i64 %4, %5, !dbg !35
  %7 = and i64 %6, 7, !dbg !35
  %8 = icmp ne i64 %7, 0, !dbg !35
  %9 = icmp ult i64 %2, 8, !dbg !37
  %10 = or i1 %9, %8, !dbg !38
  br i1 %10, label %35, label %11, !dbg !38

; <label>:11:                                     ; preds = %3
  %12 = bitcast i8* %0 to i64*, !dbg !39
  %13 = bitcast i8* %1 to i64*, !dbg !42
  br label %14, !dbg !44

; <label>:14:                                     ; preds = %11, %24
  %15 = phi i64* [ %13, %11 ], [ %26, %24 ]
  %16 = phi i64* [ %12, %11 ], [ %27, %24 ]
  %17 = phi i64 [ %2, %11 ], [ %25, %24 ]
  %18 = load i64, i64* %15, align 8, !dbg !45, !tbaa !46
  %19 = add nsw i64 %18, -72340172838076673, !dbg !45
  %20 = and i64 %18, -9187201950435737472, !dbg !45
  %21 = xor i64 %20, -9187201950435737472, !dbg !45
  %22 = and i64 %21, %19, !dbg !45
  %23 = icmp eq i64 %22, 0, !dbg !50
  br i1 %23, label %24, label %29, !dbg !51

; <label>:24:                                     ; preds = %14
  %25 = add i64 %17, -8, !dbg !52
  %26 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !54
  %27 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !55
  store i64 %18, i64* %16, align 8, !dbg !56, !tbaa !46
  %28 = icmp ugt i64 %25, 7, !dbg !57
  br i1 %28, label %14, label %29, !dbg !44, !llvm.loop !58

; <label>:29:                                     ; preds = %14, %24
  %30 = phi i64 [ %25, %24 ], [ %17, %14 ]
  %31 = phi i64* [ %27, %24 ], [ %16, %14 ], !dbg !60
  %32 = phi i64* [ %26, %24 ], [ %15, %14 ], !dbg !60
  %33 = bitcast i64* %31 to i8*, !dbg !61
  %34 = bitcast i64* %32 to i8*, !dbg !62
  br label %35, !dbg !63

; <label>:35:                                     ; preds = %29, %3
  %36 = phi i8* [ %33, %29 ], [ %0, %3 ]
  %37 = phi i8* [ %34, %29 ], [ %1, %3 ]
  %38 = phi i64 [ %30, %29 ], [ %2, %3 ]
  br label %39, !dbg !64

; <label>:39:                                     ; preds = %35, %44
  %40 = phi i8* [ %48, %44 ], [ %36, %35 ]
  %41 = phi i8* [ %46, %44 ], [ %37, %35 ]
  %42 = phi i64 [ %45, %44 ], [ %38, %35 ]
  %43 = icmp eq i64 %42, 0, !dbg !64
  br i1 %43, label %136, label %44, !dbg !65

; <label>:44:                                     ; preds = %39
  %45 = add i64 %42, -1, !dbg !66
  %46 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !68
  %47 = load i8, i8* %41, align 1, !dbg !70, !tbaa !71
  %48 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !72
  store i8 %47, i8* %40, align 1, !dbg !73, !tbaa !71
  %49 = icmp eq i8 %47, 0, !dbg !74
  br i1 %49, label %50, label %39, !dbg !75, !llvm.loop !76

; <label>:50:                                     ; preds = %44
  %51 = icmp eq i64 %45, 0, !dbg !78
  br i1 %51, label %136, label %52, !dbg !79

; <label>:52:                                     ; preds = %50
  %53 = icmp ult i64 %45, 32, !dbg !80
  br i1 %53, label %125, label %54, !dbg !80

; <label>:54:                                     ; preds = %52
  %55 = and i64 %45, -32, !dbg !80
  %56 = sub i64 %45, %55, !dbg !80
  %57 = getelementptr i8, i8* %48, i64 %55, !dbg !80
  %58 = add i64 %55, -32, !dbg !80
  %59 = lshr exact i64 %58, 5, !dbg !80
  %60 = add nuw nsw i64 %59, 1, !dbg !80
  %61 = and i64 %60, 7, !dbg !80
  %62 = icmp ult i64 %58, 224, !dbg !80
  br i1 %62, label %110, label %63, !dbg !80

; <label>:63:                                     ; preds = %54
  %64 = sub nsw i64 %60, %61, !dbg !80
  br label %65, !dbg !80

; <label>:65:                                     ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %107, %65 ]
  %67 = phi i64 [ %64, %63 ], [ %108, %65 ]
  %68 = getelementptr i8, i8* %48, i64 %66
  %69 = bitcast i8* %68 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %69, align 1, !dbg !81, !tbaa !71
  %70 = getelementptr i8, i8* %68, i64 16, !dbg !81
  %71 = bitcast i8* %70 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %71, align 1, !dbg !81, !tbaa !71
  %72 = or i64 %66, 32
  %73 = getelementptr i8, i8* %48, i64 %72
  %74 = bitcast i8* %73 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %74, align 1, !dbg !81, !tbaa !71
  %75 = getelementptr i8, i8* %73, i64 16, !dbg !81
  %76 = bitcast i8* %75 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %76, align 1, !dbg !81, !tbaa !71
  %77 = or i64 %66, 64
  %78 = getelementptr i8, i8* %48, i64 %77
  %79 = bitcast i8* %78 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %79, align 1, !dbg !81, !tbaa !71
  %80 = getelementptr i8, i8* %78, i64 16, !dbg !81
  %81 = bitcast i8* %80 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %81, align 1, !dbg !81, !tbaa !71
  %82 = or i64 %66, 96
  %83 = getelementptr i8, i8* %48, i64 %82
  %84 = bitcast i8* %83 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %84, align 1, !dbg !81, !tbaa !71
  %85 = getelementptr i8, i8* %83, i64 16, !dbg !81
  %86 = bitcast i8* %85 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %86, align 1, !dbg !81, !tbaa !71
  %87 = or i64 %66, 128
  %88 = getelementptr i8, i8* %48, i64 %87
  %89 = bitcast i8* %88 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %89, align 1, !dbg !81, !tbaa !71
  %90 = getelementptr i8, i8* %88, i64 16, !dbg !81
  %91 = bitcast i8* %90 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %91, align 1, !dbg !81, !tbaa !71
  %92 = or i64 %66, 160
  %93 = getelementptr i8, i8* %48, i64 %92
  %94 = bitcast i8* %93 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %94, align 1, !dbg !81, !tbaa !71
  %95 = getelementptr i8, i8* %93, i64 16, !dbg !81
  %96 = bitcast i8* %95 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %96, align 1, !dbg !81, !tbaa !71
  %97 = or i64 %66, 192
  %98 = getelementptr i8, i8* %48, i64 %97
  %99 = bitcast i8* %98 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %99, align 1, !dbg !81, !tbaa !71
  %100 = getelementptr i8, i8* %98, i64 16, !dbg !81
  %101 = bitcast i8* %100 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %101, align 1, !dbg !81, !tbaa !71
  %102 = or i64 %66, 224
  %103 = getelementptr i8, i8* %48, i64 %102
  %104 = bitcast i8* %103 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %104, align 1, !dbg !81, !tbaa !71
  %105 = getelementptr i8, i8* %103, i64 16, !dbg !81
  %106 = bitcast i8* %105 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %106, align 1, !dbg !81, !tbaa !71
  %107 = add i64 %66, 256
  %108 = add i64 %67, -8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %65, !llvm.loop !82

; <label>:110:                                    ; preds = %65, %54
  %111 = phi i64 [ 0, %54 ], [ %107, %65 ]
  %112 = icmp eq i64 %61, 0
  br i1 %112, label %123, label %113

; <label>:113:                                    ; preds = %110, %113
  %114 = phi i64 [ %120, %113 ], [ %111, %110 ]
  %115 = phi i64 [ %121, %113 ], [ %61, %110 ]
  %116 = getelementptr i8, i8* %48, i64 %114
  %117 = bitcast i8* %116 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %117, align 1, !dbg !81, !tbaa !71
  %118 = getelementptr i8, i8* %116, i64 16, !dbg !81
  %119 = bitcast i8* %118 to <16 x i8>*, !dbg !81
  store <16 x i8> zeroinitializer, <16 x i8>* %119, align 1, !dbg !81, !tbaa !71
  %120 = add i64 %114, 32
  %121 = add i64 %115, -1
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %113, !llvm.loop !85

; <label>:123:                                    ; preds = %113, %110
  %124 = icmp eq i64 %45, %55
  br i1 %124, label %134, label %125, !dbg !80

; <label>:125:                                    ; preds = %123, %52
  %126 = phi i64 [ %45, %52 ], [ %56, %123 ]
  %127 = phi i8* [ %48, %52 ], [ %57, %123 ]
  br label %128, !dbg !80

; <label>:128:                                    ; preds = %125, %128
  %129 = phi i64 [ %131, %128 ], [ %126, %125 ]
  %130 = phi i8* [ %132, %128 ], [ %127, %125 ]
  %131 = add i64 %129, -1, !dbg !80
  %132 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !87
  store i8 0, i8* %130, align 1, !dbg !81, !tbaa !71
  %133 = icmp eq i64 %131, 0, !dbg !78
  br i1 %133, label %134, label %128, !dbg !79, !llvm.loop !88

; <label>:134:                                    ; preds = %128, %123
  %135 = getelementptr i8, i8* %40, i64 %42, !dbg !80
  br label %136, !dbg !90

; <label>:136:                                    ; preds = %39, %134, %50
  %137 = phi i8* [ %40, %50 ], [ %40, %134 ], [ null, %39 ]
  %138 = phi i8* [ %48, %50 ], [ %135, %134 ], [ %40, %39 ], !dbg !91
  %139 = icmp eq i8* %137, null, !dbg !90
  %140 = select i1 %139, i8* %138, i8* %137, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  ret i8* %140, !dbg !92
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/stpncpy.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "stpncpy", scope: !1, file: !1, line: 71, type: !13, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
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
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DILocalVariable(name: "dst", arg: 1, scope: !12, file: !1, line: 71, type: !15)
!26 = !DILocalVariable(name: "src", arg: 2, scope: !12, file: !1, line: 71, type: !16)
!27 = !DILocalVariable(name: "count", arg: 3, scope: !12, file: !1, line: 71, type: !19)
!28 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 76, type: !6)
!29 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 79, type: !5)
!30 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 80, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !DILocation(line: 71, column: 1, scope: !12)
!34 = !DILocation(line: 76, column: 9, scope: !12)
!35 = !DILocation(line: 83, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !12, file: !1, line: 83, column: 7)
!37 = !DILocation(line: 83, column: 33, scope: !36)
!38 = !DILocation(line: 83, column: 29, scope: !36)
!39 = !DILocation(line: 85, column: 21, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 84, column: 5)
!41 = !DILocation(line: 79, column: 9, scope: !12)
!42 = !DILocation(line: 86, column: 21, scope: !40)
!43 = !DILocation(line: 80, column: 16, scope: !12)
!44 = !DILocation(line: 90, column: 41, scope: !40)
!45 = !DILocation(line: 90, column: 45, scope: !40)
!46 = !{!47, !47, i64 0}
!47 = !{!"long", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 90, column: 44, scope: !40)
!51 = !DILocation(line: 90, column: 7, scope: !40)
!52 = !DILocation(line: 92, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 91, column: 2)
!54 = !DILocation(line: 93, column: 33, scope: !53)
!55 = !DILocation(line: 93, column: 16, scope: !53)
!56 = !DILocation(line: 93, column: 19, scope: !53)
!57 = !DILocation(line: 90, column: 20, scope: !40)
!58 = distinct !{!58, !51, !59}
!59 = !DILocation(line: 94, column: 2, scope: !40)
!60 = !DILocation(line: 0, scope: !53)
!61 = !DILocation(line: 96, column: 13, scope: !40)
!62 = !DILocation(line: 97, column: 13, scope: !40)
!63 = !DILocation(line: 98, column: 5, scope: !40)
!64 = !DILocation(line: 101, column: 16, scope: !12)
!65 = !DILocation(line: 101, column: 3, scope: !12)
!66 = !DILocation(line: 103, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !12, file: !1, line: 102, column: 5)
!68 = !DILocation(line: 104, column: 25, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !1, line: 104, column: 11)
!70 = !DILocation(line: 104, column: 21, scope: !69)
!71 = !{!48, !48, i64 0}
!72 = !DILocation(line: 104, column: 16, scope: !69)
!73 = !DILocation(line: 104, column: 19, scope: !69)
!74 = !DILocation(line: 104, column: 29, scope: !69)
!75 = !DILocation(line: 104, column: 11, scope: !67)
!76 = distinct !{!76, !65, !77}
!77 = !DILocation(line: 109, column: 5, scope: !12)
!78 = !DILocation(line: 111, column: 18, scope: !12)
!79 = !DILocation(line: 111, column: 3, scope: !12)
!80 = !DILocation(line: 111, column: 15, scope: !12)
!81 = !DILocation(line: 112, column: 12, scope: !12)
!82 = distinct !{!82, !79, !83, !84}
!83 = !DILocation(line: 112, column: 14, scope: !12)
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !DILocation(line: 112, column: 9, scope: !12)
!88 = distinct !{!88, !79, !83, !89, !84}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !DILocation(line: 114, column: 10, scope: !12)
!91 = !DILocation(line: 0, scope: !12)
!92 = !DILocation(line: 114, column: 3, scope: !12)
