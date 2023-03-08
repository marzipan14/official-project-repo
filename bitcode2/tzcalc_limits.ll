; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzcalc_limits.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzcalc_limits.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@__month_lengths = external dso_local local_unnamed_addr constant [2 x [12 x i32]], align 16
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__tzcalc_limits(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call %struct.__tzinfo_struct* @__gettzinfo() #3, !dbg !60
  %3 = icmp slt i32 %0, 1970, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %3, label %142, label %4, !dbg !64

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 1, !dbg !65
  store i32 %0, i32* %5, align 4, !dbg !66, !tbaa !67
  %6 = mul i32 %0, 365, !dbg !73
  %7 = add i32 %6, -719050, !dbg !73
  %8 = add nsw i32 %0, -1969, !dbg !74
  %9 = sdiv i32 %8, 4, !dbg !75
  %10 = add nsw i32 %7, %9, !dbg !76
  %11 = add nsw i32 %0, -1901, !dbg !77
  %12 = sdiv i32 %11, -100
  %13 = add i32 %10, %12, !dbg !78
  %14 = add nsw i32 %0, -1601, !dbg !79
  %15 = sdiv i32 %14, 400, !dbg !80
  %16 = add nsw i32 %13, %15, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %17 = and i32 %0, 3
  %18 = icmp eq i32 %17, 0
  %19 = urem i32 %0, 100
  %20 = icmp eq i32 %19, 0
  %21 = urem i32 %0, 400
  %22 = icmp eq i32 %21, 0
  %23 = add i32 %16, -1
  br label %24, !dbg !85

; <label>:24:                                     ; preds = %120, %4
  %25 = phi i64 [ 0, %4 ], [ %132, %120 ]
  %26 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 0, !dbg !86
  %27 = load i8, i8* %26, align 8, !dbg !86, !tbaa !87
  %28 = icmp eq i8 %27, 74, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %28, label %29, label %41, !dbg !91

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 3, !dbg !92
  %31 = load i32, i32* %30, align 4, !dbg !92, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %18, label %32, label %33, !dbg !95

; <label>:32:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %20, label %33, label %34, !dbg !95

; <label>:33:                                     ; preds = %32, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %22, label %34, label %36, !dbg !96

; <label>:34:                                     ; preds = %32, %33
  %35 = icmp sgt i32 %31, 59, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %33
  %37 = phi i1 [ false, %33 ], [ %35, %34 ], !dbg !98
  %38 = zext i1 %37 to i32, !dbg !96
  %39 = add i32 %23, %31, !dbg !100
  %40 = add i32 %39, %38, !dbg !101
  br label %120, !dbg !102

; <label>:41:                                     ; preds = %24
  %42 = icmp eq i8 %27, 68, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %42, label %43, label %47, !dbg !104

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 3, !dbg !105
  %45 = load i32, i32* %44, align 4, !dbg !105, !tbaa !94
  %46 = add nsw i32 %45, %16, !dbg !106
  br label %120, !dbg !107

; <label>:47:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %18, label %48, label %49, !dbg !108

; <label>:48:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %20, label %49, label %50, !dbg !108

; <label>:49:                                     ; preds = %48, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %50, !dbg !108

; <label>:50:                                     ; preds = %48, %49
  %51 = phi i1 [ true, %48 ], [ %22, %49 ]
  %52 = zext i1 %51 to i64, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  %53 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 1, !dbg !114
  %54 = load i32, i32* %53, align 4, !dbg !114, !tbaa !116
  %55 = icmp sgt i32 %54, 1, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br i1 %55, label %56, label %89, !dbg !118

; <label>:56:                                     ; preds = %50
  %57 = sext i32 %54 to i64
  %58 = add nsw i64 %57, -1, !dbg !119
  %59 = and i64 %58, 1, !dbg !119
  %60 = icmp eq i32 %54, 2, !dbg !119
  br i1 %60, label %77, label %61, !dbg !119

; <label>:61:                                     ; preds = %56
  %62 = sub nsw i64 %58, %59, !dbg !119
  br label %63, !dbg !119

; <label>:63:                                     ; preds = %63, %61
  %64 = phi i64 [ 1, %61 ], [ %74, %63 ]
  %65 = phi i32 [ %16, %61 ], [ %73, %63 ]
  %66 = phi i64 [ %62, %61 ], [ %75, %63 ]
  %67 = add nsw i64 %64, -1, !dbg !119
  %68 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %52, i64 %67, !dbg !120
  %69 = load i32, i32* %68, align 4, !dbg !120, !tbaa !121
  %70 = add nsw i32 %69, %65, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %71 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %52, i64 %64, !dbg !120
  %72 = load i32, i32* %71, align 4, !dbg !120, !tbaa !121
  %73 = add nsw i32 %72, %70, !dbg !122
  %74 = add nuw nsw i64 %64, 2, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %75 = add i64 %66, -2, !dbg !118
  %76 = icmp eq i64 %75, 0, !dbg !118
  br i1 %76, label %77, label %63, !dbg !118, !llvm.loop !125

; <label>:77:                                     ; preds = %63, %56
  %78 = phi i32 [ undef, %56 ], [ %73, %63 ]
  %79 = phi i64 [ undef, %56 ], [ %74, %63 ]
  %80 = phi i64 [ 1, %56 ], [ %74, %63 ]
  %81 = phi i32 [ %16, %56 ], [ %73, %63 ]
  %82 = icmp eq i64 %59, 0, !dbg !118
  br i1 %82, label %89, label %83, !dbg !118

; <label>:83:                                     ; preds = %77
  %84 = add nsw i64 %80, -1, !dbg !119
  %85 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %52, i64 %84, !dbg !120
  %86 = load i32, i32* %85, align 4, !dbg !120, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %87 = add nuw nsw i64 %80, 1, !dbg !124
  %88 = add nsw i32 %86, %81, !dbg !122
  br label %89, !dbg !127

; <label>:89:                                     ; preds = %83, %77, %50
  %90 = phi i64 [ 1, %50 ], [ %79, %77 ], [ %87, %83 ], !dbg !128
  %91 = phi i32 [ %16, %50 ], [ %78, %77 ], [ %88, %83 ], !dbg !128
  %92 = add nsw i32 %91, 4, !dbg !127
  %93 = srem i32 %92, 7, !dbg !129
  %94 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 3, !dbg !131
  %95 = load i32, i32* %94, align 4, !dbg !131, !tbaa !94
  %96 = sub nsw i32 %95, %93, !dbg !132
  %97 = icmp slt i32 %96, 0, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %97, label %98, label %100, !dbg !136

; <label>:98:                                     ; preds = %89
  %99 = add nsw i32 %96, 7, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br label %100, !dbg !138

; <label>:100:                                    ; preds = %98, %89
  %101 = phi i32 [ %99, %98 ], [ %96, %89 ], !dbg !139
  %102 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 2, !dbg !140
  %103 = load i32, i32* %102, align 8, !dbg !140, !tbaa !141
  %104 = mul i32 %103, 7, !dbg !142
  %105 = add i32 %101, -7, !dbg !142
  %106 = add i32 %105, %104, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  %107 = shl i64 %90, 32, !dbg !146
  %108 = add i64 %107, -4294967296, !dbg !146
  %109 = ashr exact i64 %108, 32, !dbg !146
  %110 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %52, i64 %109, !dbg !146
  %111 = load i32, i32* %110, align 4, !dbg !146, !tbaa !121
  %112 = icmp slt i32 %106, %111, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %112, label %117, label %113, !dbg !145

; <label>:113:                                    ; preds = %100, %113
  %114 = phi i32 [ %115, %113 ], [ %106, %100 ]
  %115 = add nsw i32 %114, -7, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  %116 = icmp slt i32 %115, %111, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %116, label %117, label %113, !dbg !145, !llvm.loop !149

; <label>:117:                                    ; preds = %113, %100
  %118 = phi i32 [ %106, %100 ], [ %115, %113 ], !dbg !139
  %119 = add nsw i32 %118, %91, !dbg !151
  br label %120

; <label>:120:                                    ; preds = %43, %117, %36
  %121 = phi i32 [ %40, %36 ], [ %46, %43 ], [ %119, %117 ], !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %122 = sext i32 %121 to i64, !dbg !152
  %123 = mul nsw i64 %122, 86400, !dbg !153
  %124 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 4, !dbg !154
  %125 = load i32, i32* %124, align 8, !dbg !154, !tbaa !155
  %126 = sext i32 %125 to i64, !dbg !156
  %127 = add nsw i64 %123, %126, !dbg !157
  %128 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 6, !dbg !158
  %129 = load i64, i64* %128, align 8, !dbg !158, !tbaa !159
  %130 = add nsw i64 %127, %129, !dbg !160
  %131 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 %25, i32 5, !dbg !161
  store i64 %130, i64* %131, align 8, !dbg !162, !tbaa !163
  %132 = add nuw nsw i64 %25, 1, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %133 = icmp eq i64 %132, 2, !dbg !166
  br i1 %133, label %134, label %24, !dbg !85, !llvm.loop !167

; <label>:134:                                    ; preds = %120
  %135 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 5, !dbg !169
  %136 = load i64, i64* %135, align 8, !dbg !169, !tbaa !163
  %137 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 5, !dbg !170
  %138 = load i64, i64* %137, align 8, !dbg !170, !tbaa !163
  %139 = icmp slt i64 %136, %138, !dbg !171
  %140 = zext i1 %139 to i32, !dbg !171
  %141 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 0, !dbg !172
  store i32 %140, i32* %141, align 8, !dbg !173, !tbaa !174
  br label %142, !dbg !175

; <label>:142:                                    ; preds = %1, %134
  %143 = phi i32 [ 1, %134 ], [ 0, %1 ], !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  ret i32 %143, !dbg !178
}

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzcalc_limits.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__tzcalc_limits", scope: !1, file: !1, line: 14, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !45, !53, !54, !55, !56}
!12 = !DILocalVariable(name: "year", arg: 1, scope: !7, file: !1, line: 14, type: !10)
!13 = !DILocalVariable(name: "days", scope: !7, file: !1, line: 17, type: !10)
!14 = !DILocalVariable(name: "year_days", scope: !7, file: !1, line: 17, type: !10)
!15 = !DILocalVariable(name: "years", scope: !7, file: !1, line: 17, type: !10)
!16 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 18, type: !10)
!17 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 18, type: !10)
!18 = !DILocalVariable(name: "tz", scope: !7, file: !1, line: 19, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !22, line: 65, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !22, line: 60, size: 704, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !23, file: !22, line: 62, baseType: !10, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !23, file: !22, line: 63, baseType: !10, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !23, file: !22, line: 64, baseType: !28, size: 640, offset: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !43)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !22, line: 58, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !22, line: 49, size: 320, elements: !31)
!31 = !{!32, !34, !35, !36, !37, !38, !42}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !30, file: !22, line: 51, baseType: !33, size: 8)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !30, file: !22, line: 52, baseType: !10, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !30, file: !22, line: 53, baseType: !10, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !30, file: !22, line: 54, baseType: !10, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !30, file: !22, line: 55, baseType: !10, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !30, file: !22, line: 56, baseType: !39, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !40, line: 34, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !30, file: !22, line: 57, baseType: !41, size: 64, offset: 256)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DILocalVariable(name: "yleap", scope: !46, file: !1, line: 47, type: !52)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 46, column: 2)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 43, column: 16)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 35, column: 11)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 34, column: 5)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 33, column: 3)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 3)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!53 = !DILocalVariable(name: "m_day", scope: !46, file: !1, line: 48, type: !10)
!54 = !DILocalVariable(name: "m_wday", scope: !46, file: !1, line: 48, type: !10)
!55 = !DILocalVariable(name: "wday_diff", scope: !46, file: !1, line: 48, type: !10)
!56 = !DILocalVariable(name: "ip", scope: !46, file: !1, line: 49, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!59 = !DILocation(line: 14, column: 1, scope: !7)
!60 = !DILocation(line: 19, column: 30, scope: !7)
!61 = !DILocation(line: 19, column: 25, scope: !7)
!62 = !DILocation(line: 21, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!64 = !DILocation(line: 21, column: 7, scope: !7)
!65 = !DILocation(line: 24, column: 7, scope: !7)
!66 = !DILocation(line: 24, column: 16, scope: !7)
!67 = !{!68, !69, i64 4}
!68 = !{!"__tzinfo_struct", !69, i64 0, !69, i64 4, !70, i64 8}
!69 = !{!"int", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 17, column: 24, scope: !7)
!73 = !DILocation(line: 28, column: 21, scope: !7)
!74 = !DILocation(line: 29, column: 16, scope: !7)
!75 = !DILocation(line: 29, column: 42, scope: !7)
!76 = !DILocation(line: 28, column: 27, scope: !7)
!77 = !DILocation(line: 30, column: 16, scope: !7)
!78 = !DILocation(line: 29, column: 46, scope: !7)
!79 = !DILocation(line: 31, column: 16, scope: !7)
!80 = !DILocation(line: 31, column: 50, scope: !7)
!81 = !DILocation(line: 30, column: 51, scope: !7)
!82 = !DILocation(line: 17, column: 13, scope: !7)
!83 = !DILocation(line: 18, column: 7, scope: !7)
!84 = !DILocation(line: 33, column: 8, scope: !51)
!85 = !DILocation(line: 33, column: 3, scope: !51)
!86 = !DILocation(line: 35, column: 27, scope: !48)
!87 = !{!88, !70, i64 0}
!88 = !{!"__tzrule_struct", !70, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !89, i64 24, !89, i64 32}
!89 = !{!"long", !70, i64 0}
!90 = !DILocation(line: 35, column: 30, scope: !48)
!91 = !DILocation(line: 35, column: 11, scope: !49)
!92 = !DILocation(line: 38, column: 39, scope: !93)
!93 = distinct !DILexicalBlock(scope: !48, file: !1, line: 36, column: 2)
!94 = !{!88, !69, i64 12}
!95 = !DILocation(line: 39, column: 7, scope: !93)
!96 = !DILocation(line: 39, column: 20, scope: !93)
!97 = !DILocation(line: 39, column: 41, scope: !93)
!98 = !DILocation(line: 0, scope: !93)
!99 = !DILocation(line: 17, column: 7, scope: !7)
!100 = !DILocation(line: 38, column: 41, scope: !93)
!101 = !DILocation(line: 41, column: 4, scope: !93)
!102 = !DILocation(line: 42, column: 2, scope: !93)
!103 = !DILocation(line: 43, column: 35, scope: !47)
!104 = !DILocation(line: 43, column: 16, scope: !48)
!105 = !DILocation(line: 44, column: 37, scope: !47)
!106 = !DILocation(line: 44, column: 19, scope: !47)
!107 = !DILocation(line: 44, column: 2, scope: !47)
!108 = !DILocation(line: 47, column: 23, scope: !46)
!109 = !DILocation(line: 49, column: 28, scope: !46)
!110 = !DILocation(line: 47, column: 15, scope: !46)
!111 = !DILocation(line: 18, column: 10, scope: !7)
!112 = !DILocation(line: 53, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !46, file: !1, line: 53, column: 4)
!114 = !DILocation(line: 53, column: 36, scope: !115)
!115 = distinct !DILexicalBlock(scope: !113, file: !1, line: 53, column: 4)
!116 = !{!88, !69, i64 4}
!117 = !DILocation(line: 53, column: 18, scope: !115)
!118 = !DILocation(line: 53, column: 4, scope: !113)
!119 = !DILocation(line: 54, column: 18, scope: !115)
!120 = !DILocation(line: 54, column: 14, scope: !115)
!121 = !{!69, !69, i64 0}
!122 = !DILocation(line: 54, column: 11, scope: !115)
!123 = !DILocation(line: 53, column: 4, scope: !115)
!124 = !DILocation(line: 53, column: 39, scope: !115)
!125 = distinct !{!125, !118, !126}
!126 = !DILocation(line: 54, column: 20, scope: !113)
!127 = !DILocation(line: 56, column: 25, scope: !46)
!128 = !DILocation(line: 0, scope: !115)
!129 = !DILocation(line: 56, column: 33, scope: !46)
!130 = !DILocation(line: 48, column: 15, scope: !46)
!131 = !DILocation(line: 58, column: 32, scope: !46)
!132 = !DILocation(line: 58, column: 34, scope: !46)
!133 = !DILocation(line: 48, column: 23, scope: !46)
!134 = !DILocation(line: 59, column: 18, scope: !135)
!135 = distinct !DILexicalBlock(scope: !46, file: !1, line: 59, column: 8)
!136 = !DILocation(line: 59, column: 8, scope: !46)
!137 = !DILocation(line: 60, column: 16, scope: !135)
!138 = !DILocation(line: 60, column: 6, scope: !135)
!139 = !DILocation(line: 0, scope: !46)
!140 = !DILocation(line: 61, column: 29, scope: !46)
!141 = !{!88, !69, i64 8}
!142 = !DILocation(line: 61, column: 36, scope: !46)
!143 = !DILocation(line: 61, column: 50, scope: !46)
!144 = !DILocation(line: 48, column: 8, scope: !46)
!145 = !DILocation(line: 63, column: 4, scope: !46)
!146 = !DILocation(line: 63, column: 20, scope: !46)
!147 = !DILocation(line: 63, column: 17, scope: !46)
!148 = !DILocation(line: 64, column: 12, scope: !46)
!149 = distinct !{!149, !145, !150}
!150 = !DILocation(line: 64, column: 15, scope: !46)
!151 = !DILocation(line: 66, column: 9, scope: !46)
!152 = !DILocation(line: 70, column: 32, scope: !49)
!153 = !DILocation(line: 70, column: 37, scope: !49)
!154 = !DILocation(line: 71, column: 23, scope: !49)
!155 = !{!88, !69, i64 16}
!156 = !DILocation(line: 71, column: 7, scope: !49)
!157 = !DILocation(line: 70, column: 50, scope: !49)
!158 = !DILocation(line: 71, column: 43, scope: !49)
!159 = !{!88, !89, i64 32}
!160 = !DILocation(line: 71, column: 25, scope: !49)
!161 = !DILocation(line: 70, column: 23, scope: !49)
!162 = !DILocation(line: 70, column: 30, scope: !49)
!163 = !{!88, !89, i64 24}
!164 = !DILocation(line: 33, column: 22, scope: !50)
!165 = !DILocation(line: 33, column: 3, scope: !50)
!166 = !DILocation(line: 33, column: 17, scope: !50)
!167 = distinct !{!167, !85, !168}
!168 = !DILocation(line: 72, column: 5, scope: !51)
!169 = !DILocation(line: 74, column: 36, scope: !7)
!170 = !DILocation(line: 74, column: 61, scope: !7)
!171 = !DILocation(line: 74, column: 43, scope: !7)
!172 = !DILocation(line: 74, column: 7, scope: !7)
!173 = !DILocation(line: 74, column: 17, scope: !7)
!174 = !{!68, !69, i64 0}
!175 = !DILocation(line: 76, column: 3, scope: !7)
!176 = !DILocation(line: 0, scope: !7)
!177 = !DILocation(line: 0, scope: !63)
!178 = !DILocation(line: 77, column: 1, scope: !7)
