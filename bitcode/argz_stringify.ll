; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_stringify.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_stringify.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @argz_stringify(i8* nocapture, i64, i32) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp ugt i64 %1, 1, !dbg !22
  br i1 %4, label %5, label %110, !dbg !24

; <label>:5:                                      ; preds = %3
  %6 = add i64 %1, -1, !dbg !26
  %7 = trunc i32 %2 to i8
  %8 = icmp ult i64 %6, 16, !dbg !29
  br i1 %8, label %99, label %9, !dbg !29

; <label>:9:                                      ; preds = %5
  %10 = and i64 %6, -16, !dbg !29
  br label %11, !dbg !29

; <label>:11:                                     ; preds = %94, %9
  %12 = phi i64 [ 0, %9 ], [ %95, %94 ], !dbg !30
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !31
  %14 = bitcast i8* %13 to <16 x i8>*, !dbg !31
  %15 = load <16 x i8>, <16 x i8>* %14, align 1, !dbg !31, !tbaa !34
  %16 = icmp eq <16 x i8> %15, zeroinitializer, !dbg !37
  %17 = extractelement <16 x i1> %16, i32 0, !dbg !37
  br i1 %17, label %18, label %19, !dbg !30

; <label>:18:                                     ; preds = %11
  store i8 %7, i8* %13, align 1, !dbg !38, !tbaa !34
  br label %19

; <label>:19:                                     ; preds = %18, %11
  %20 = extractelement <16 x i1> %16, i32 1, !dbg !38
  br i1 %20, label %21, label %24, !dbg !38

; <label>:21:                                     ; preds = %19
  %22 = or i64 %12, 1, !dbg !30
  %23 = getelementptr inbounds i8, i8* %0, i64 %22, !dbg !31
  store i8 %7, i8* %23, align 1, !dbg !38, !tbaa !34
  br label %24

; <label>:24:                                     ; preds = %21, %19
  %25 = extractelement <16 x i1> %16, i32 2, !dbg !38
  br i1 %25, label %26, label %29, !dbg !38

; <label>:26:                                     ; preds = %24
  %27 = or i64 %12, 2, !dbg !30
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !31
  store i8 %7, i8* %28, align 1, !dbg !38, !tbaa !34
  br label %29

; <label>:29:                                     ; preds = %26, %24
  %30 = extractelement <16 x i1> %16, i32 3, !dbg !38
  br i1 %30, label %31, label %34, !dbg !38

; <label>:31:                                     ; preds = %29
  %32 = or i64 %12, 3, !dbg !30
  %33 = getelementptr inbounds i8, i8* %0, i64 %32, !dbg !31
  store i8 %7, i8* %33, align 1, !dbg !38, !tbaa !34
  br label %34

; <label>:34:                                     ; preds = %31, %29
  %35 = extractelement <16 x i1> %16, i32 4, !dbg !38
  br i1 %35, label %36, label %39, !dbg !38

; <label>:36:                                     ; preds = %34
  %37 = or i64 %12, 4, !dbg !30
  %38 = getelementptr inbounds i8, i8* %0, i64 %37, !dbg !31
  store i8 %7, i8* %38, align 1, !dbg !38, !tbaa !34
  br label %39

; <label>:39:                                     ; preds = %36, %34
  %40 = extractelement <16 x i1> %16, i32 5, !dbg !38
  br i1 %40, label %41, label %44, !dbg !38

; <label>:41:                                     ; preds = %39
  %42 = or i64 %12, 5, !dbg !30
  %43 = getelementptr inbounds i8, i8* %0, i64 %42, !dbg !31
  store i8 %7, i8* %43, align 1, !dbg !38, !tbaa !34
  br label %44

; <label>:44:                                     ; preds = %41, %39
  %45 = extractelement <16 x i1> %16, i32 6, !dbg !38
  br i1 %45, label %46, label %49, !dbg !38

; <label>:46:                                     ; preds = %44
  %47 = or i64 %12, 6, !dbg !30
  %48 = getelementptr inbounds i8, i8* %0, i64 %47, !dbg !31
  store i8 %7, i8* %48, align 1, !dbg !38, !tbaa !34
  br label %49

; <label>:49:                                     ; preds = %46, %44
  %50 = extractelement <16 x i1> %16, i32 7, !dbg !38
  br i1 %50, label %51, label %54, !dbg !38

; <label>:51:                                     ; preds = %49
  %52 = or i64 %12, 7, !dbg !30
  %53 = getelementptr inbounds i8, i8* %0, i64 %52, !dbg !31
  store i8 %7, i8* %53, align 1, !dbg !38, !tbaa !34
  br label %54

; <label>:54:                                     ; preds = %51, %49
  %55 = extractelement <16 x i1> %16, i32 8, !dbg !38
  br i1 %55, label %56, label %59, !dbg !38

; <label>:56:                                     ; preds = %54
  %57 = or i64 %12, 8, !dbg !30
  %58 = getelementptr inbounds i8, i8* %0, i64 %57, !dbg !31
  store i8 %7, i8* %58, align 1, !dbg !38, !tbaa !34
  br label %59

; <label>:59:                                     ; preds = %56, %54
  %60 = extractelement <16 x i1> %16, i32 9, !dbg !38
  br i1 %60, label %61, label %64, !dbg !38

; <label>:61:                                     ; preds = %59
  %62 = or i64 %12, 9, !dbg !30
  %63 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !31
  store i8 %7, i8* %63, align 1, !dbg !38, !tbaa !34
  br label %64

; <label>:64:                                     ; preds = %61, %59
  %65 = extractelement <16 x i1> %16, i32 10, !dbg !38
  br i1 %65, label %66, label %69, !dbg !38

; <label>:66:                                     ; preds = %64
  %67 = or i64 %12, 10, !dbg !30
  %68 = getelementptr inbounds i8, i8* %0, i64 %67, !dbg !31
  store i8 %7, i8* %68, align 1, !dbg !38, !tbaa !34
  br label %69

; <label>:69:                                     ; preds = %66, %64
  %70 = extractelement <16 x i1> %16, i32 11, !dbg !38
  br i1 %70, label %71, label %74, !dbg !38

; <label>:71:                                     ; preds = %69
  %72 = or i64 %12, 11, !dbg !30
  %73 = getelementptr inbounds i8, i8* %0, i64 %72, !dbg !31
  store i8 %7, i8* %73, align 1, !dbg !38, !tbaa !34
  br label %74

; <label>:74:                                     ; preds = %71, %69
  %75 = extractelement <16 x i1> %16, i32 12, !dbg !38
  br i1 %75, label %76, label %79, !dbg !38

; <label>:76:                                     ; preds = %74
  %77 = or i64 %12, 12, !dbg !30
  %78 = getelementptr inbounds i8, i8* %0, i64 %77, !dbg !31
  store i8 %7, i8* %78, align 1, !dbg !38, !tbaa !34
  br label %79

; <label>:79:                                     ; preds = %76, %74
  %80 = extractelement <16 x i1> %16, i32 13, !dbg !38
  br i1 %80, label %81, label %84, !dbg !38

; <label>:81:                                     ; preds = %79
  %82 = or i64 %12, 13, !dbg !30
  %83 = getelementptr inbounds i8, i8* %0, i64 %82, !dbg !31
  store i8 %7, i8* %83, align 1, !dbg !38, !tbaa !34
  br label %84

; <label>:84:                                     ; preds = %81, %79
  %85 = extractelement <16 x i1> %16, i32 14, !dbg !38
  br i1 %85, label %86, label %89, !dbg !38

; <label>:86:                                     ; preds = %84
  %87 = or i64 %12, 14, !dbg !30
  %88 = getelementptr inbounds i8, i8* %0, i64 %87, !dbg !31
  store i8 %7, i8* %88, align 1, !dbg !38, !tbaa !34
  br label %89

; <label>:89:                                     ; preds = %86, %84
  %90 = extractelement <16 x i1> %16, i32 15, !dbg !38
  br i1 %90, label %91, label %94, !dbg !38

; <label>:91:                                     ; preds = %89
  %92 = or i64 %12, 15, !dbg !30
  %93 = getelementptr inbounds i8, i8* %0, i64 %92, !dbg !31
  store i8 %7, i8* %93, align 1, !dbg !38, !tbaa !34
  br label %94

; <label>:94:                                     ; preds = %91, %89
  %95 = add i64 %12, 16, !dbg !30
  %96 = icmp eq i64 %95, %10, !dbg !30
  br i1 %96, label %97, label %11, !dbg !30, !llvm.loop !39

; <label>:97:                                     ; preds = %94
  %98 = icmp eq i64 %6, %10
  br i1 %98, label %110, label %99, !dbg !29

; <label>:99:                                     ; preds = %97, %5
  %100 = phi i64 [ 0, %5 ], [ %10, %97 ]
  br label %101, !dbg !31

; <label>:101:                                    ; preds = %99, %107
  %102 = phi i64 [ %108, %107 ], [ %100, %99 ]
  %103 = getelementptr inbounds i8, i8* %0, i64 %102, !dbg !31
  %104 = load i8, i8* %103, align 1, !dbg !31, !tbaa !34
  %105 = icmp eq i8 %104, 0, !dbg !37
  br i1 %105, label %106, label %107, !dbg !42

; <label>:106:                                    ; preds = %101
  store i8 %7, i8* %103, align 1, !dbg !38, !tbaa !34
  br label %107, !dbg !43

; <label>:107:                                    ; preds = %101, %106
  %108 = add nuw i64 %102, 1, !dbg !30
  %109 = icmp eq i64 %108, %6, !dbg !44
  br i1 %109, label %110, label %101, !dbg !29, !llvm.loop !45

; <label>:110:                                    ; preds = %107, %97, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret void, !dbg !47
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_stringify.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "argz_stringify", scope: !1, file: !1, line: 13, type: !8, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "argz", arg: 1, scope: !7, file: !1, line: 13, type: !10)
!18 = !DILocalVariable(name: "argz_len", arg: 2, scope: !7, file: !1, line: 13, type: !12)
!19 = !DILocalVariable(name: "sep", arg: 3, scope: !7, file: !1, line: 13, type: !15)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 18, type: !12)
!21 = !DILocation(line: 13, column: 1, scope: !7)
!22 = !DILocation(line: 21, column: 16, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!24 = !DILocation(line: 21, column: 7, scope: !7)
!25 = !DILocation(line: 18, column: 10, scope: !7)
!26 = !DILocation(line: 22, column: 30, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 22, column: 5)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 22, column: 5)
!29 = !DILocation(line: 22, column: 5, scope: !28)
!30 = !DILocation(line: 22, column: 36, scope: !27)
!31 = !DILocation(line: 24, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 6)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 23, column: 7)
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 24, column: 14, scope: !32)
!38 = !DILocation(line: 25, column: 12, scope: !32)
!39 = distinct !{!39, !29, !40, !41}
!40 = !DILocation(line: 26, column: 7, scope: !28)
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !DILocation(line: 24, column: 6, scope: !33)
!43 = !DILocation(line: 25, column: 4, scope: !32)
!44 = !DILocation(line: 22, column: 19, scope: !27)
!45 = distinct !{!45, !29, !40, !46, !41}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !DILocation(line: 27, column: 1, scope: !7)
