; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sccl.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sccl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @__sccl(i8* nocapture, i8* readonly) local_unnamed_addr #0 !dbg !7 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !24
  %4 = load i8, i8* %1, align 1, !dbg !25, !tbaa !26
  %5 = icmp eq i8 %4, 94, !dbg !29
  br i1 %5, label %6, label %9, !dbg !31

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !33
  %8 = load i8, i8* %3, align 1, !dbg !35, !tbaa !26
  br label %9, !dbg !36

; <label>:9:                                      ; preds = %6, %2
  %10 = phi i8* [ %7, %6 ], [ %3, %2 ], !dbg !37
  %11 = phi i8 [ %8, %6 ], [ %4, %2 ]
  %12 = phi i8 [ 1, %6 ], [ 0, %2 ]
  %13 = insertelement <16 x i8> undef, i8 %12, i32 0, !dbg !39
  %14 = shufflevector <16 x i8> %13, <16 x i8> undef, <16 x i32> zeroinitializer, !dbg !39
  %15 = insertelement <16 x i8> undef, i8 %12, i32 0, !dbg !39
  %16 = shufflevector <16 x i8> %15, <16 x i8> undef, <16 x i32> zeroinitializer, !dbg !39
  %17 = bitcast i8* %0 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %17, align 1, !dbg !41, !tbaa !26
  %18 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !41
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %19, align 1, !dbg !41, !tbaa !26
  %20 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !43
  %21 = bitcast i8* %20 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %21, align 1, !dbg !41, !tbaa !26
  %22 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !41
  %23 = bitcast i8* %22 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %23, align 1, !dbg !41, !tbaa !26
  %24 = getelementptr inbounds i8, i8* %0, i64 64, !dbg !43
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %25, align 1, !dbg !41, !tbaa !26
  %26 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !41
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %27, align 1, !dbg !41, !tbaa !26
  %28 = getelementptr inbounds i8, i8* %0, i64 96, !dbg !43
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %29, align 1, !dbg !41, !tbaa !26
  %30 = getelementptr inbounds i8, i8* %0, i64 112, !dbg !41
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %31, align 1, !dbg !41, !tbaa !26
  %32 = getelementptr inbounds i8, i8* %0, i64 128, !dbg !43
  %33 = bitcast i8* %32 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %33, align 1, !dbg !41, !tbaa !26
  %34 = getelementptr inbounds i8, i8* %0, i64 144, !dbg !41
  %35 = bitcast i8* %34 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %35, align 1, !dbg !41, !tbaa !26
  %36 = getelementptr inbounds i8, i8* %0, i64 160, !dbg !43
  %37 = bitcast i8* %36 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %37, align 1, !dbg !41, !tbaa !26
  %38 = getelementptr inbounds i8, i8* %0, i64 176, !dbg !41
  %39 = bitcast i8* %38 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %39, align 1, !dbg !41, !tbaa !26
  %40 = getelementptr inbounds i8, i8* %0, i64 192, !dbg !43
  %41 = bitcast i8* %40 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %41, align 1, !dbg !41, !tbaa !26
  %42 = getelementptr inbounds i8, i8* %0, i64 208, !dbg !41
  %43 = bitcast i8* %42 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %43, align 1, !dbg !41, !tbaa !26
  %44 = getelementptr inbounds i8, i8* %0, i64 224, !dbg !43
  %45 = bitcast i8* %44 to <16 x i8>*, !dbg !41
  store <16 x i8> %14, <16 x i8>* %45, align 1, !dbg !41, !tbaa !26
  %46 = getelementptr inbounds i8, i8* %0, i64 240, !dbg !41
  %47 = bitcast i8* %46 to <16 x i8>*, !dbg !41
  store <16 x i8> %16, <16 x i8>* %47, align 1, !dbg !41, !tbaa !26
  %48 = icmp eq i8 %11, 0, !dbg !44
  br i1 %48, label %55, label %49, !dbg !46

; <label>:49:                                     ; preds = %9
  %50 = xor i8 %12, 1
  %51 = insertelement <16 x i8> undef, i8 %50, i32 0
  %52 = shufflevector <16 x i8> %51, <16 x i8> undef, <16 x i32> zeroinitializer
  %53 = insertelement <16 x i8> undef, i8 %50, i32 0
  %54 = shufflevector <16 x i8> %53, <16 x i8> undef, <16 x i32> zeroinitializer
  br label %57, !dbg !47

; <label>:55:                                     ; preds = %9
  %56 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !51
  br label %156, !dbg !52

; <label>:57:                                     ; preds = %153, %49
  %58 = phi i8* [ %10, %49 ], [ %70, %153 ], !dbg !53
  %59 = phi i8 [ %11, %49 ], [ %154, %153 ]
  %60 = zext i8 %59 to i32, !dbg !54
  %61 = zext i8 %59 to i64, !dbg !57
  %62 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !57
  store i8 %50, i8* %62, align 1, !dbg !58, !tbaa !26
  br label %67, !dbg !57

; <label>:63:                                     ; preds = %148, %144
  %64 = phi i64 [ %88, %144 ], [ %150, %148 ], !dbg !59
  %65 = getelementptr inbounds i8, i8* %68, i64 2, !dbg !61
  %66 = trunc i64 %64 to i32, !dbg !62
  br label %67, !dbg !62

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8* [ %58, %57 ], [ %65, %63 ], !dbg !54
  %69 = phi i32 [ %60, %57 ], [ %66, %63 ], !dbg !63
  %70 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !62
  %71 = load i8, i8* %68, align 1, !dbg !64, !tbaa !26
  switch i8 %71, label %153 [
    i8 0, label %155
    i8 45, label %72
    i8 93, label %156
  ], !dbg !65

; <label>:72:                                     ; preds = %67
  %73 = load i8, i8* %70, align 1, !dbg !66, !tbaa !26
  %74 = zext i8 %73 to i32, !dbg !66
  %75 = icmp eq i8 %73, 93, !dbg !67
  %76 = icmp sgt i32 %69, %74, !dbg !69
  %77 = or i1 %75, %76, !dbg !70
  br i1 %77, label %153, label %78, !dbg !70, !llvm.loop !71

; <label>:78:                                     ; preds = %72
  %79 = sext i32 %69 to i64, !dbg !74
  %80 = zext i8 %73 to i64, !dbg !74
  %81 = add nsw i64 %79, 1, !dbg !74
  %82 = icmp sgt i64 %81, %80, !dbg !74
  %83 = select i1 %82, i64 %81, i64 %80, !dbg !74
  %84 = sub nsw i64 %83, %79, !dbg !74
  %85 = icmp ult i64 %84, 32, !dbg !74
  br i1 %85, label %146, label %86, !dbg !74

; <label>:86:                                     ; preds = %78
  %87 = and i64 %84, -32, !dbg !74
  %88 = add nsw i64 %87, %79, !dbg !74
  %89 = add nsw i64 %87, -32, !dbg !74
  %90 = lshr exact i64 %89, 5, !dbg !74
  %91 = add nuw nsw i64 %90, 1, !dbg !74
  %92 = and i64 %91, 3, !dbg !74
  %93 = icmp ult i64 %89, 96, !dbg !74
  br i1 %93, label %129, label %94, !dbg !74

; <label>:94:                                     ; preds = %86
  %95 = sub nsw i64 %91, %92, !dbg !74
  br label %96, !dbg !74

; <label>:96:                                     ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %126, %96 ]
  %98 = phi i64 [ %95, %94 ], [ %127, %96 ]
  %99 = add i64 %97, %79
  %100 = add nsw i64 %99, 1, !dbg !59
  %101 = getelementptr inbounds i8, i8* %0, i64 %100, !dbg !75
  %102 = bitcast i8* %101 to <16 x i8>*, !dbg !76
  store <16 x i8> %52, <16 x i8>* %102, align 1, !dbg !76, !tbaa !26
  %103 = getelementptr inbounds i8, i8* %101, i64 16, !dbg !76
  %104 = bitcast i8* %103 to <16 x i8>*, !dbg !76
  store <16 x i8> %54, <16 x i8>* %104, align 1, !dbg !76, !tbaa !26
  %105 = or i64 %97, 32
  %106 = add i64 %105, %79
  %107 = add nsw i64 %106, 1, !dbg !59
  %108 = getelementptr inbounds i8, i8* %0, i64 %107, !dbg !75
  %109 = bitcast i8* %108 to <16 x i8>*, !dbg !76
  store <16 x i8> %52, <16 x i8>* %109, align 1, !dbg !76, !tbaa !26
  %110 = getelementptr inbounds i8, i8* %108, i64 16, !dbg !76
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !76
  store <16 x i8> %54, <16 x i8>* %111, align 1, !dbg !76, !tbaa !26
  %112 = or i64 %97, 64
  %113 = add i64 %112, %79
  %114 = add nsw i64 %113, 1, !dbg !59
  %115 = getelementptr inbounds i8, i8* %0, i64 %114, !dbg !75
  %116 = bitcast i8* %115 to <16 x i8>*, !dbg !76
  store <16 x i8> %52, <16 x i8>* %116, align 1, !dbg !76, !tbaa !26
  %117 = getelementptr inbounds i8, i8* %115, i64 16, !dbg !76
  %118 = bitcast i8* %117 to <16 x i8>*, !dbg !76
  store <16 x i8> %54, <16 x i8>* %118, align 1, !dbg !76, !tbaa !26
  %119 = or i64 %97, 96
  %120 = add i64 %119, %79
  %121 = add nsw i64 %120, 1, !dbg !59
  %122 = getelementptr inbounds i8, i8* %0, i64 %121, !dbg !75
  %123 = bitcast i8* %122 to <16 x i8>*, !dbg !76
  store <16 x i8> %52, <16 x i8>* %123, align 1, !dbg !76, !tbaa !26
  %124 = getelementptr inbounds i8, i8* %122, i64 16, !dbg !76
  %125 = bitcast i8* %124 to <16 x i8>*, !dbg !76
  store <16 x i8> %54, <16 x i8>* %125, align 1, !dbg !76, !tbaa !26
  %126 = add i64 %97, 128
  %127 = add i64 %98, -4
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %96, !llvm.loop !77

; <label>:129:                                    ; preds = %96, %86
  %130 = phi i64 [ 0, %86 ], [ %126, %96 ]
  %131 = icmp eq i64 %92, 0
  br i1 %131, label %144, label %132

; <label>:132:                                    ; preds = %129, %132
  %133 = phi i64 [ %141, %132 ], [ %130, %129 ]
  %134 = phi i64 [ %142, %132 ], [ %92, %129 ]
  %135 = add i64 %133, %79
  %136 = add nsw i64 %135, 1, !dbg !59
  %137 = getelementptr inbounds i8, i8* %0, i64 %136, !dbg !75
  %138 = bitcast i8* %137 to <16 x i8>*, !dbg !76
  store <16 x i8> %52, <16 x i8>* %138, align 1, !dbg !76, !tbaa !26
  %139 = getelementptr inbounds i8, i8* %137, i64 16, !dbg !76
  %140 = bitcast i8* %139 to <16 x i8>*, !dbg !76
  store <16 x i8> %54, <16 x i8>* %140, align 1, !dbg !76, !tbaa !26
  %141 = add i64 %133, 32
  %142 = add i64 %134, -1
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %132, !llvm.loop !80

; <label>:144:                                    ; preds = %132, %129
  %145 = icmp eq i64 %84, %87
  br i1 %145, label %63, label %146, !dbg !74

; <label>:146:                                    ; preds = %144, %78
  %147 = phi i64 [ %79, %78 ], [ %88, %144 ]
  br label %148, !dbg !59

; <label>:148:                                    ; preds = %146, %148
  %149 = phi i64 [ %150, %148 ], [ %147, %146 ], !dbg !63
  %150 = add nsw i64 %149, 1, !dbg !59
  %151 = getelementptr inbounds i8, i8* %0, i64 %150, !dbg !75
  store i8 %50, i8* %151, align 1, !dbg !76, !tbaa !26
  %152 = icmp slt i64 %150, %80, !dbg !82
  br i1 %152, label %148, label %63, !dbg !83, !llvm.loop !84

; <label>:153:                                    ; preds = %67, %72
  %154 = phi i8 [ 45, %72 ], [ %71, %67 ]
  br label %57, !dbg !54, !llvm.loop !71

; <label>:155:                                    ; preds = %67
  br label %156, !dbg !86

; <label>:156:                                    ; preds = %67, %155, %55
  %157 = phi i8* [ %56, %55 ], [ %68, %155 ], [ %70, %67 ], !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  ret i8* %157, !dbg !86
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sccl.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__sccl", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !12, line: 87, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !21, !22}
!17 = !DILocalVariable(name: "tab", arg: 1, scope: !7, file: !1, line: 34, type: !14)
!18 = !DILocalVariable(name: "fmt", arg: 2, scope: !7, file: !1, line: 34, type: !10)
!19 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 38, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 38, type: !20)
!22 = !DILocalVariable(name: "v", scope: !7, file: !1, line: 38, type: !20)
!23 = !DILocation(line: 34, column: 1, scope: !7)
!24 = !DILocation(line: 41, column: 11, scope: !7)
!25 = !DILocation(line: 41, column: 7, scope: !7)
!26 = !{!27, !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 42, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 7)
!31 = !DILocation(line: 42, column: 7, scope: !7)
!32 = !DILocation(line: 38, column: 22, scope: !7)
!33 = !DILocation(line: 45, column: 15, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 43, column: 5)
!35 = !DILocation(line: 45, column: 11, scope: !34)
!36 = !DILocation(line: 46, column: 5, scope: !34)
!37 = !DILocation(line: 0, scope: !7)
!38 = !DILocation(line: 38, column: 19, scope: !7)
!39 = !DILocation(line: 50, column: 3, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 3)
!41 = !DILocation(line: 51, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !1, line: 50, column: 3)
!43 = !DILocation(line: 51, column: 5, scope: !42)
!44 = !DILocation(line: 52, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 7)
!46 = !DILocation(line: 52, column: 7, scope: !7)
!47 = !DILocation(line: 66, column: 16, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 65, column: 5)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 64, column: 3)
!50 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 3)
!51 = !DILocation(line: 53, column: 16, scope: !45)
!52 = !DILocation(line: 53, column: 5, scope: !45)
!53 = !DILocation(line: 0, scope: !48)
!54 = !DILocation(line: 0, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !1, line: 70, column: 2)
!56 = !DILocation(line: 38, column: 16, scope: !7)
!57 = !DILocation(line: 66, column: 7, scope: !48)
!58 = !DILocation(line: 66, column: 14, scope: !48)
!59 = !DILocation(line: 97, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 96, column: 6)
!61 = !DILocation(line: 94, column: 7, scope: !55)
!62 = !DILocation(line: 68, column: 15, scope: !48)
!63 = !DILocation(line: 0, scope: !60)
!64 = !DILocation(line: 68, column: 11, scope: !48)
!65 = !DILocation(line: 69, column: 7, scope: !48)
!66 = !DILocation(line: 88, column: 8, scope: !55)
!67 = !DILocation(line: 89, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !1, line: 89, column: 8)
!69 = !DILocation(line: 89, column: 22, scope: !68)
!70 = !DILocation(line: 89, column: 17, scope: !68)
!71 = distinct !{!71, !72, !73}
!72 = !DILocation(line: 64, column: 3, scope: !50)
!73 = !DILocation(line: 125, column: 5, scope: !50)
!74 = !DILocation(line: 95, column: 4, scope: !55)
!75 = !DILocation(line: 97, column: 8, scope: !60)
!76 = !DILocation(line: 97, column: 17, scope: !60)
!77 = distinct !{!77, !74, !78, !79}
!78 = !DILocation(line: 99, column: 16, scope: !55)
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !DILocation(line: 99, column: 13, scope: !55)
!83 = !DILocation(line: 98, column: 6, scope: !60)
!84 = distinct !{!84, !74, !78, !85, !79}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = !DILocation(line: 127, column: 1, scope: !7)
