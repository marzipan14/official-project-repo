; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/lcltime_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/lcltime_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@__month_lengths = external dso_local local_unnamed_addr constant [2 x [12 x i32]], align 16
@_daylight = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.tm* @localtime_r(i64* noalias, %struct.tm* noalias) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call %struct.__tzinfo_struct* @__gettzinfo() #3, !dbg !72
  %4 = tail call %struct.tm* @gmtime_r(i64* %0, %struct.tm* %1) #3, !dbg !74
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 5, !dbg !75
  %6 = load i32, i32* %5, align 4, !dbg !75, !tbaa !76
  %7 = add nsw i32 %6, 1900, !dbg !83
  %8 = and i32 %7, 3, !dbg !85
  %9 = icmp ne i32 %8, 0, !dbg !85
  %10 = srem i32 %7, 100, !dbg !85
  %11 = icmp eq i32 %10, 0, !dbg !85
  %12 = or i1 %9, %11, !dbg !85
  br i1 %12, label %13, label %16, !dbg !85

; <label>:13:                                     ; preds = %2
  %14 = srem i32 %7, 400, !dbg !85
  %15 = icmp eq i32 %14, 0, !dbg !85
  br label %16, !dbg !85

; <label>:16:                                     ; preds = %2, %13
  %17 = phi i1 [ %15, %13 ], [ true, %2 ]
  %18 = zext i1 %17 to i64, !dbg !86
  tail call void @__tz_lock() #3, !dbg !87
  tail call void @_tzset_unlocked() #3, !dbg !88
  %19 = load i32, i32* @_daylight, align 4, !dbg !89, !tbaa !91
  %20 = icmp eq i32 %19, 0, !dbg !89
  br i1 %20, label %50, label %21, !dbg !92

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 1, !dbg !93
  %23 = load i32, i32* %22, align 4, !dbg !93, !tbaa !96
  %24 = icmp eq i32 %7, %23, !dbg !98
  br i1 %24, label %28, label %25, !dbg !99

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @__tzcalc_limits(i32 %7) #3, !dbg !100
  %27 = icmp eq i32 %26, 0, !dbg !100
  br i1 %27, label %50, label %28, !dbg !101

; <label>:28:                                     ; preds = %25, %21
  %29 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 0, !dbg !102
  %30 = load i32, i32* %29, align 8, !dbg !102, !tbaa !103
  %31 = icmp eq i32 %30, 0, !dbg !104
  %32 = load i64, i64* %0, align 8, !dbg !105, !tbaa !106
  %33 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 5, !dbg !105
  %34 = load i64, i64* %33, align 8, !dbg !105, !tbaa !107
  %35 = icmp sge i64 %32, %34, !dbg !105
  br i1 %31, label %47, label %36, !dbg !104

; <label>:36:                                     ; preds = %28
  br i1 %35, label %40, label %37, !dbg !109

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !110
  store i32 0, i32* %38, align 8, !dbg !111, !tbaa !112
  %39 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 6, !dbg !113
  br label %63, !dbg !114

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 1, i32 5, !dbg !115
  %42 = load i64, i64* %41, align 8, !dbg !115, !tbaa !107
  %43 = icmp slt i64 %32, %42, !dbg !116
  %44 = zext i1 %43 to i32, !dbg !104
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !110
  store i32 %44, i32* %45, align 8, !dbg !111, !tbaa !112
  %46 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 6, !dbg !113
  br i1 %43, label %61, label %63, !dbg !114

; <label>:47:                                     ; preds = %28
  br i1 %35, label %48, label %54, !dbg !117

; <label>:48:                                     ; preds = %47
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !110
  store i32 1, i32* %49, align 8, !dbg !111, !tbaa !112
  br label %61, !dbg !114

; <label>:50:                                     ; preds = %16, %25
  %51 = phi i32 [ -1, %25 ], [ 0, %16 ]
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !118
  store i32 %51, i32* %52, align 8, !dbg !118, !tbaa !112
  %53 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 6, !dbg !113
  br label %63, !dbg !114

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 1, i32 5, !dbg !119
  %56 = load i64, i64* %55, align 8, !dbg !119, !tbaa !107
  %57 = icmp slt i64 %32, %56, !dbg !120
  %58 = zext i1 %57 to i32, !dbg !104
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !110
  store i32 %58, i32* %59, align 8, !dbg !111, !tbaa !112
  %60 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 6, !dbg !113
  br i1 %57, label %61, label %63, !dbg !114

; <label>:61:                                     ; preds = %40, %48, %54
  %62 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 1, i32 6, !dbg !121
  br label %63, !dbg !114

; <label>:63:                                     ; preds = %40, %37, %50, %54, %61
  %64 = phi i64* [ %62, %61 ], [ %60, %54 ], [ %53, %50 ], [ %39, %37 ], [ %46, %40 ]
  %65 = load i64, i64* %64, align 8, !dbg !114, !tbaa !122
  %66 = sdiv i64 %65, 3600, !dbg !124
  %67 = trunc i64 %66 to i32, !dbg !125
  %68 = srem i64 %65, 3600, !dbg !127
  %69 = sdiv i64 %68, 60, !dbg !128
  %70 = trunc i64 %69 to i32, !dbg !129
  %71 = srem i64 %68, 60, !dbg !131
  %72 = trunc i64 %71 to i32, !dbg !132
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 0, !dbg !134
  %74 = load i32, i32* %73, align 8, !dbg !135, !tbaa !136
  %75 = sub nsw i32 %74, %72, !dbg !135
  store i32 %75, i32* %73, align 8, !dbg !135, !tbaa !136
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 1, !dbg !137
  %77 = load i32, i32* %76, align 4, !dbg !138, !tbaa !139
  %78 = sub nsw i32 %77, %70, !dbg !138
  store i32 %78, i32* %76, align 4, !dbg !138, !tbaa !139
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 2, !dbg !140
  %80 = load i32, i32* %79, align 8, !dbg !141, !tbaa !142
  %81 = sub nsw i32 %80, %67, !dbg !141
  store i32 %81, i32* %79, align 8, !dbg !141, !tbaa !142
  %82 = icmp sgt i32 %75, 59, !dbg !143
  br i1 %82, label %83, label %85, !dbg !145

; <label>:83:                                     ; preds = %63
  %84 = add nsw i32 %78, 1, !dbg !146
  br label %89, !dbg !148

; <label>:85:                                     ; preds = %63
  %86 = icmp slt i32 %75, 0, !dbg !149
  br i1 %86, label %87, label %93, !dbg !151

; <label>:87:                                     ; preds = %85
  %88 = add nsw i32 %78, -1, !dbg !152
  br label %89, !dbg !154

; <label>:89:                                     ; preds = %83, %87
  %90 = phi i32 [ %88, %87 ], [ %84, %83 ]
  %91 = phi i32 [ 60, %87 ], [ -60, %83 ]
  store i32 %90, i32* %76, align 4, !dbg !155, !tbaa !139
  %92 = add i32 %75, %91, !dbg !155
  store i32 %92, i32* %73, align 8, !dbg !155, !tbaa !136
  br label %93, !dbg !156

; <label>:93:                                     ; preds = %89, %85
  %94 = phi i32 [ %78, %85 ], [ %90, %89 ], !dbg !158
  %95 = icmp sgt i32 %94, 59, !dbg !156
  br i1 %95, label %96, label %98, !dbg !159

; <label>:96:                                     ; preds = %93
  %97 = add nsw i32 %81, 1, !dbg !160
  br label %102, !dbg !162

; <label>:98:                                     ; preds = %93
  %99 = icmp slt i32 %94, 0, !dbg !163
  br i1 %99, label %100, label %106, !dbg !165

; <label>:100:                                    ; preds = %98
  %101 = add nsw i32 %81, -1, !dbg !166
  br label %102, !dbg !168

; <label>:102:                                    ; preds = %96, %100
  %103 = phi i32 [ %101, %100 ], [ %97, %96 ]
  %104 = phi i32 [ 60, %100 ], [ -60, %96 ]
  store i32 %103, i32* %79, align 8, !dbg !169, !tbaa !142
  %105 = add i32 %94, %104, !dbg !169
  store i32 %105, i32* %76, align 4, !dbg !169, !tbaa !139
  br label %106, !dbg !170

; <label>:106:                                    ; preds = %102, %98
  %107 = phi i32 [ %81, %98 ], [ %103, %102 ], !dbg !172
  %108 = icmp sgt i32 %107, 23, !dbg !170
  br i1 %108, label %109, label %135, !dbg !173

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 7, !dbg !174
  %111 = load i32, i32* %110, align 4, !dbg !176, !tbaa !177
  %112 = add nsw i32 %111, 1, !dbg !176
  store i32 %112, i32* %110, align 4, !dbg !176, !tbaa !177
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 6, !dbg !178
  %114 = load i32, i32* %113, align 8, !dbg !179, !tbaa !180
  %115 = add nsw i32 %114, 1, !dbg !179
  %116 = icmp sgt i32 %114, 5, !dbg !181
  %117 = select i1 %116, i32 0, i32 %115, !dbg !183
  store i32 %117, i32* %113, align 8, !dbg !184, !tbaa !180
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 3, !dbg !185
  %119 = load i32, i32* %118, align 4, !dbg !186, !tbaa !187
  %120 = add nsw i32 %119, 1, !dbg !186
  store i32 %120, i32* %118, align 4, !dbg !186, !tbaa !187
  %121 = add i32 %107, -24, !dbg !188
  store i32 %121, i32* %79, align 8, !dbg !188, !tbaa !142
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !189
  %123 = load i32, i32* %122, align 8, !dbg !189, !tbaa !191
  %124 = sext i32 %123 to i64, !dbg !192
  %125 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %18, i64 %124, !dbg !192
  %126 = load i32, i32* %125, align 4, !dbg !192, !tbaa !91
  %127 = icmp slt i32 %119, %126, !dbg !193
  br i1 %127, label %176, label %128, !dbg !194

; <label>:128:                                    ; preds = %109
  %129 = sub nsw i32 %120, %126, !dbg !195
  store i32 %129, i32* %118, align 4, !dbg !195, !tbaa !187
  %130 = add nsw i32 %123, 1, !dbg !197
  store i32 %130, i32* %122, align 8, !dbg !197, !tbaa !191
  %131 = icmp eq i32 %130, 12, !dbg !198
  br i1 %131, label %132, label %176, !dbg !200

; <label>:132:                                    ; preds = %128
  store i32 0, i32* %122, align 8, !dbg !201, !tbaa !191
  %133 = load i32, i32* %5, align 4, !dbg !203, !tbaa !76
  %134 = add nsw i32 %133, 1, !dbg !203
  store i32 %134, i32* %5, align 4, !dbg !203, !tbaa !76
  store i32 0, i32* %110, align 4, !dbg !204, !tbaa !177
  br label %176, !dbg !205

; <label>:135:                                    ; preds = %106
  %136 = icmp slt i32 %107, 0, !dbg !206
  br i1 %136, label %137, label %176, !dbg !208

; <label>:137:                                    ; preds = %135
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 7, !dbg !209
  %139 = load i32, i32* %138, align 4, !dbg !211, !tbaa !177
  %140 = add nsw i32 %139, -1, !dbg !211
  store i32 %140, i32* %138, align 4, !dbg !211, !tbaa !177
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 6, !dbg !212
  %142 = load i32, i32* %141, align 8, !dbg !213, !tbaa !180
  %143 = add nsw i32 %142, -1, !dbg !213
  %144 = icmp slt i32 %142, 1, !dbg !214
  %145 = select i1 %144, i32 6, i32 %143, !dbg !216
  store i32 %145, i32* %141, align 8, !dbg !217, !tbaa !180
  %146 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 3, !dbg !218
  %147 = load i32, i32* %146, align 4, !dbg !219, !tbaa !187
  %148 = add nsw i32 %147, -1, !dbg !219
  store i32 %148, i32* %146, align 4, !dbg !219, !tbaa !187
  %149 = add nsw i32 %107, 24, !dbg !220
  store i32 %149, i32* %79, align 8, !dbg !220, !tbaa !142
  %150 = icmp eq i32 %148, 0, !dbg !221
  br i1 %150, label %151, label %176, !dbg !223

; <label>:151:                                    ; preds = %137
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !224
  %153 = load i32, i32* %152, align 8, !dbg !226, !tbaa !191
  %154 = add nsw i32 %153, -1, !dbg !226
  store i32 %154, i32* %152, align 8, !dbg !226, !tbaa !191
  %155 = icmp slt i32 %153, 1, !dbg !227
  br i1 %155, label %156, label %171, !dbg !229

; <label>:156:                                    ; preds = %151
  store i32 11, i32* %152, align 8, !dbg !230, !tbaa !191
  %157 = load i32, i32* %5, align 4, !dbg !232, !tbaa !76
  %158 = add nsw i32 %157, -1, !dbg !232
  store i32 %158, i32* %5, align 4, !dbg !232, !tbaa !76
  %159 = add nsw i32 %157, 1899, !dbg !233
  %160 = and i32 %159, 3, !dbg !233
  %161 = icmp ne i32 %160, 0, !dbg !233
  %162 = srem i32 %159, 100, !dbg !233
  %163 = icmp eq i32 %162, 0, !dbg !233
  %164 = or i1 %161, %163, !dbg !233
  br i1 %164, label %165, label %169, !dbg !233

; <label>:165:                                    ; preds = %156
  %166 = srem i32 %159, 400, !dbg !233
  %167 = icmp eq i32 %166, 0, !dbg !233
  %168 = select i1 %167, i32 365, i32 364, !dbg !233
  br label %169, !dbg !233

; <label>:169:                                    ; preds = %156, %165
  %170 = phi i32 [ %168, %165 ], [ 365, %156 ]
  store i32 %170, i32* %138, align 4, !dbg !234, !tbaa !177
  br label %171, !dbg !235

; <label>:171:                                    ; preds = %169, %151
  %172 = phi i32 [ 11, %169 ], [ %154, %151 ], !dbg !236
  %173 = sext i32 %172 to i64, !dbg !237
  %174 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %18, i64 %173, !dbg !237
  %175 = load i32, i32* %174, align 4, !dbg !237, !tbaa !91
  store i32 %175, i32* %146, align 4, !dbg !238, !tbaa !187
  br label %176, !dbg !239

; <label>:176:                                    ; preds = %109, %135, %171, %137, %132, %128
  tail call void @__tz_unlock() #3, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  ret %struct.tm* %4, !dbg !241
}

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__tz_lock() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_tzset_unlocked() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__tzcalc_limits(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__tz_unlock() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/lcltime_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "localtime_r", scope: !1, file: !1, line: 19, type: !10, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !31, !36}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !14, line: 31, size: 448, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !13, file: !14, line: 32, baseType: !4, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !13, file: !14, line: 33, baseType: !4, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !13, file: !14, line: 34, baseType: !4, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !13, file: !14, line: 35, baseType: !4, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !13, file: !14, line: 36, baseType: !4, size: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !13, file: !14, line: 37, baseType: !4, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !13, file: !14, line: 38, baseType: !4, size: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !13, file: !14, line: 39, baseType: !4, size: 32, offset: 224)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !13, file: !14, line: 40, baseType: !4, size: 32, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !13, file: !14, line: 41, baseType: !26, size: 64, offset: 320)
!26 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !13, file: !14, line: 42, baseType: !28, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !35, line: 34, baseType: !26)
!35 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !68}
!38 = !DILocalVariable(name: "tim_p", arg: 1, scope: !9, file: !1, line: 19, type: !31)
!39 = !DILocalVariable(name: "res", arg: 2, scope: !9, file: !1, line: 19, type: !36)
!40 = !DILocalVariable(name: "offset", scope: !9, file: !1, line: 23, type: !26)
!41 = !DILocalVariable(name: "hours", scope: !9, file: !1, line: 24, type: !4)
!42 = !DILocalVariable(name: "mins", scope: !9, file: !1, line: 24, type: !4)
!43 = !DILocalVariable(name: "secs", scope: !9, file: !1, line: 24, type: !4)
!44 = !DILocalVariable(name: "year", scope: !9, file: !1, line: 25, type: !4)
!45 = !DILocalVariable(name: "tz", scope: !9, file: !1, line: 26, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !49, line: 65, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !49, line: 60, size: 704, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !50, file: !49, line: 62, baseType: !4, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !50, file: !49, line: 63, baseType: !4, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !50, file: !49, line: 64, baseType: !55, size: 640, offset: 64)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 640, elements: !66)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !49, line: 58, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !49, line: 49, size: 320, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !57, file: !49, line: 51, baseType: !30, size: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !57, file: !49, line: 52, baseType: !4, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !57, file: !49, line: 53, baseType: !4, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !57, file: !49, line: 54, baseType: !4, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !57, file: !49, line: 55, baseType: !4, size: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !57, file: !49, line: 56, baseType: !34, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !57, file: !49, line: 57, baseType: !26, size: 64, offset: 256)
!66 = !{!67}
!67 = !DISubrange(count: 2)
!68 = !DILocalVariable(name: "ip", scope: !9, file: !1, line: 27, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!71 = !DILocation(line: 19, column: 1, scope: !9)
!72 = !DILocation(line: 26, column: 30, scope: !9)
!73 = !DILocation(line: 26, column: 25, scope: !9)
!74 = !DILocation(line: 29, column: 9, scope: !9)
!75 = !DILocation(line: 31, column: 15, scope: !9)
!76 = !{!77, !78, i64 20}
!77 = !{!"tm", !78, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !78, i64 16, !78, i64 20, !78, i64 24, !78, i64 28, !78, i64 32, !81, i64 40, !82, i64 48}
!78 = !{!"int", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!"long", !79, i64 0}
!82 = !{!"any pointer", !79, i64 0}
!83 = !DILocation(line: 31, column: 23, scope: !9)
!84 = !DILocation(line: 25, column: 7, scope: !9)
!85 = !DILocation(line: 32, column: 24, scope: !9)
!86 = !DILocation(line: 32, column: 8, scope: !9)
!87 = !DILocation(line: 34, column: 3, scope: !9)
!88 = !DILocation(line: 35, column: 3, scope: !9)
!89 = !DILocation(line: 36, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !9, file: !1, line: 36, column: 7)
!91 = !{!78, !78, i64 0}
!92 = !DILocation(line: 36, column: 7, scope: !9)
!93 = !DILocation(line: 38, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 38, column: 11)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 37, column: 5)
!96 = !{!97, !78, i64 4}
!97 = !{!"__tzinfo_struct", !78, i64 0, !78, i64 4, !79, i64 8}
!98 = !DILocation(line: 38, column: 16, scope: !94)
!99 = !DILocation(line: 38, column: 32, scope: !94)
!100 = !DILocation(line: 38, column: 35, scope: !94)
!101 = !DILocation(line: 38, column: 11, scope: !95)
!102 = !DILocation(line: 39, column: 23, scope: !94)
!103 = !{!97, !78, i64 0}
!104 = !DILocation(line: 39, column: 19, scope: !94)
!105 = !DILocation(line: 0, scope: !94)
!106 = !{!81, !81, i64 0}
!107 = !{!108, !81, i64 24}
!108 = !{!"__tzrule_struct", !79, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !78, i64 16, !81, i64 24, !81, i64 32}
!109 = !DILocation(line: 41, column: 4, scope: !94)
!110 = !DILocation(line: 39, column: 7, scope: !94)
!111 = !DILocation(line: 39, column: 16, scope: !94)
!112 = !{!77, !78, i64 32}
!113 = !DILocation(line: 52, column: 23, scope: !9)
!114 = !DILocation(line: 50, column: 13, scope: !9)
!115 = !DILocation(line: 41, column: 32, scope: !94)
!116 = !DILocation(line: 41, column: 14, scope: !94)
!117 = !DILocation(line: 43, column: 4, scope: !94)
!118 = !DILocation(line: 0, scope: !90)
!119 = !DILocation(line: 43, column: 32, scope: !94)
!120 = !DILocation(line: 43, column: 14, scope: !94)
!121 = !DILocation(line: 51, column: 23, scope: !9)
!122 = !{!108, !81, i64 32}
!123 = !DILocation(line: 23, column: 8, scope: !9)
!124 = !DILocation(line: 54, column: 25, scope: !9)
!125 = !DILocation(line: 54, column: 11, scope: !9)
!126 = !DILocation(line: 24, column: 7, scope: !9)
!127 = !DILocation(line: 55, column: 19, scope: !9)
!128 = !DILocation(line: 57, column: 24, scope: !9)
!129 = !DILocation(line: 57, column: 10, scope: !9)
!130 = !DILocation(line: 24, column: 14, scope: !9)
!131 = !DILocation(line: 58, column: 24, scope: !9)
!132 = !DILocation(line: 58, column: 10, scope: !9)
!133 = !DILocation(line: 24, column: 20, scope: !9)
!134 = !DILocation(line: 60, column: 8, scope: !9)
!135 = !DILocation(line: 60, column: 15, scope: !9)
!136 = !{!77, !78, i64 0}
!137 = !DILocation(line: 61, column: 8, scope: !9)
!138 = !DILocation(line: 61, column: 15, scope: !9)
!139 = !{!77, !78, i64 4}
!140 = !DILocation(line: 62, column: 8, scope: !9)
!141 = !DILocation(line: 62, column: 16, scope: !9)
!142 = !{!77, !78, i64 8}
!143 = !DILocation(line: 64, column: 19, scope: !144)
!144 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 7)
!145 = !DILocation(line: 64, column: 7, scope: !9)
!146 = !DILocation(line: 66, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 65, column: 5)
!148 = !DILocation(line: 68, column: 5, scope: !147)
!149 = !DILocation(line: 69, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 69, column: 12)
!151 = !DILocation(line: 69, column: 12, scope: !144)
!152 = !DILocation(line: 71, column: 19, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 70, column: 5)
!154 = !DILocation(line: 73, column: 5, scope: !153)
!155 = !DILocation(line: 0, scope: !147)
!156 = !DILocation(line: 74, column: 19, scope: !157)
!157 = distinct !DILexicalBlock(scope: !9, file: !1, line: 74, column: 7)
!158 = !DILocation(line: 74, column: 12, scope: !157)
!159 = !DILocation(line: 74, column: 7, scope: !9)
!160 = !DILocation(line: 76, column: 20, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 75, column: 5)
!162 = !DILocation(line: 78, column: 5, scope: !161)
!163 = !DILocation(line: 79, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !1, line: 79, column: 12)
!165 = !DILocation(line: 79, column: 12, scope: !157)
!166 = !DILocation(line: 81, column: 20, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 80, column: 5)
!168 = !DILocation(line: 83, column: 5, scope: !167)
!169 = !DILocation(line: 0, scope: !161)
!170 = !DILocation(line: 84, column: 20, scope: !171)
!171 = distinct !DILexicalBlock(scope: !9, file: !1, line: 84, column: 7)
!172 = !DILocation(line: 84, column: 12, scope: !171)
!173 = !DILocation(line: 84, column: 7, scope: !9)
!174 = !DILocation(line: 86, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 85, column: 5)
!176 = !DILocation(line: 86, column: 7, scope: !175)
!177 = !{!77, !78, i64 28}
!178 = !DILocation(line: 87, column: 14, scope: !175)
!179 = !DILocation(line: 87, column: 7, scope: !175)
!180 = !{!77, !78, i64 24}
!181 = !DILocation(line: 88, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 88, column: 11)
!183 = !DILocation(line: 88, column: 11, scope: !175)
!184 = !DILocation(line: 0, scope: !175)
!185 = !DILocation(line: 90, column: 14, scope: !175)
!186 = !DILocation(line: 90, column: 7, scope: !175)
!187 = !{!77, !78, i64 12}
!188 = !DILocation(line: 91, column: 20, scope: !175)
!189 = !DILocation(line: 92, column: 34, scope: !190)
!190 = distinct !DILexicalBlock(scope: !175, file: !1, line: 92, column: 11)
!191 = !{!77, !78, i64 16}
!192 = !DILocation(line: 92, column: 26, scope: !190)
!193 = !DILocation(line: 92, column: 24, scope: !190)
!194 = !DILocation(line: 92, column: 11, scope: !175)
!195 = !DILocation(line: 94, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !1, line: 93, column: 2)
!197 = !DILocation(line: 95, column: 16, scope: !196)
!198 = !DILocation(line: 96, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 96, column: 8)
!200 = !DILocation(line: 96, column: 8, scope: !196)
!201 = !DILocation(line: 98, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 97, column: 6)
!203 = !DILocation(line: 99, column: 21, scope: !202)
!204 = !DILocation(line: 100, column: 21, scope: !202)
!205 = !DILocation(line: 101, column: 6, scope: !202)
!206 = !DILocation(line: 104, column: 25, scope: !207)
!207 = distinct !DILexicalBlock(scope: !171, file: !1, line: 104, column: 12)
!208 = !DILocation(line: 104, column: 12, scope: !171)
!209 = !DILocation(line: 106, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 105, column: 5)
!211 = !DILocation(line: 106, column: 20, scope: !210)
!212 = !DILocation(line: 107, column: 12, scope: !210)
!213 = !DILocation(line: 107, column: 20, scope: !210)
!214 = !DILocation(line: 108, column: 24, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 108, column: 11)
!216 = !DILocation(line: 108, column: 11, scope: !210)
!217 = !DILocation(line: 0, scope: !210)
!218 = !DILocation(line: 110, column: 12, scope: !210)
!219 = !DILocation(line: 110, column: 20, scope: !210)
!220 = !DILocation(line: 111, column: 20, scope: !210)
!221 = !DILocation(line: 112, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !210, file: !1, line: 112, column: 11)
!223 = !DILocation(line: 112, column: 11, scope: !210)
!224 = !DILocation(line: 114, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 113, column: 2)
!226 = !DILocation(line: 114, column: 16, scope: !225)
!227 = !DILocation(line: 115, column: 20, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 115, column: 8)
!229 = !DILocation(line: 115, column: 8, scope: !225)
!230 = !DILocation(line: 117, column: 20, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 116, column: 6)
!232 = !DILocation(line: 118, column: 21, scope: !231)
!233 = !DILocation(line: 119, column: 29, scope: !231)
!234 = !DILocation(line: 119, column: 21, scope: !231)
!235 = !DILocation(line: 120, column: 6, scope: !231)
!236 = !DILocation(line: 121, column: 27, scope: !225)
!237 = !DILocation(line: 121, column: 19, scope: !225)
!238 = !DILocation(line: 121, column: 17, scope: !225)
!239 = !DILocation(line: 122, column: 2, scope: !225)
!240 = !DILocation(line: 124, column: 3, scope: !9)
!241 = !DILocation(line: 126, column: 3, scope: !9)
