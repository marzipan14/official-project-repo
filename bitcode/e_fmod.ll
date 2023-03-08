; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_fmod.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_fmod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Zero = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double -0.000000e+00], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_fmod(double, double) local_unnamed_addr #0 !dbg !21 {
  %3 = bitcast double %0 to i64, !dbg !63
  %4 = lshr i64 %3, 32, !dbg !63
  %5 = trunc i64 %4 to i32, !dbg !63
  %6 = trunc i64 %3 to i32, !dbg !63
  %7 = bitcast double %1 to i64, !dbg !66
  %8 = lshr i64 %7, 32, !dbg !66
  %9 = trunc i64 %8 to i32, !dbg !66
  %10 = trunc i64 %7 to i32, !dbg !66
  %11 = and i32 %5, -2147483648, !dbg !69
  %12 = and i32 %5, 2147483647, !dbg !71
  %13 = and i32 %9, 2147483647, !dbg !72
  %14 = or i32 %13, %10, !dbg !73
  %15 = icmp eq i32 %14, 0, !dbg !75
  %16 = icmp ugt i32 %12, 2146435071, !dbg !76
  %17 = or i1 %16, %15, !dbg !77
  br i1 %17, label %24, label %18, !dbg !77

; <label>:18:                                     ; preds = %2
  %19 = sub i32 0, %10, !dbg !78
  %20 = or i32 %10, %19, !dbg !79
  %21 = lshr i32 %20, 31, !dbg !80
  %22 = or i32 %13, %21, !dbg !81
  %23 = icmp ugt i32 %22, 2146435072, !dbg !82
  br i1 %23, label %24, label %27, !dbg !83

; <label>:24:                                     ; preds = %18, %2
  %25 = fmul double %0, %1, !dbg !84
  %26 = fdiv double %25, %25, !dbg !85
  br label %238, !dbg !86

; <label>:27:                                     ; preds = %18
  %28 = icmp ugt i32 %12, %13, !dbg !87
  br i1 %28, label %39, label %29, !dbg !89

; <label>:29:                                     ; preds = %27
  %30 = icmp ult i32 %12, %13, !dbg !90
  %31 = icmp ult i32 %6, %10, !dbg !93
  %32 = or i1 %31, %30, !dbg !94
  br i1 %32, label %238, label %33, !dbg !94

; <label>:33:                                     ; preds = %29
  %34 = icmp eq i32 %6, %10, !dbg !95
  br i1 %34, label %35, label %39, !dbg !97

; <label>:35:                                     ; preds = %33
  %36 = lshr i64 %3, 63, !dbg !98
  %37 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %36, !dbg !99
  %38 = load double, double* %37, align 8, !dbg !99, !tbaa !100
  br label %238, !dbg !104

; <label>:39:                                     ; preds = %27, %33
  %40 = icmp ult i32 %12, 1048576, !dbg !105
  br i1 %40, label %41, label %61, !dbg !107

; <label>:41:                                     ; preds = %39
  %42 = icmp eq i32 %12, 0, !dbg !108
  br i1 %42, label %43, label %51, !dbg !111

; <label>:43:                                     ; preds = %41
  %44 = icmp sgt i32 %6, 0, !dbg !114
  br i1 %44, label %45, label %64, !dbg !118

; <label>:45:                                     ; preds = %43, %45
  %46 = phi i32 [ %49, %45 ], [ %6, %43 ]
  %47 = phi i32 [ %48, %45 ], [ -1043, %43 ]
  %48 = add nsw i32 %47, -1, !dbg !119
  %49 = shl i32 %46, 1, !dbg !120
  %50 = icmp sgt i32 %49, 0, !dbg !114
  br i1 %50, label %45, label %64, !dbg !118, !llvm.loop !121

; <label>:51:                                     ; preds = %41
  %52 = shl nuw nsw i64 %4, 11, !dbg !123
  %53 = trunc i64 %52 to i32, !dbg !123
  %54 = icmp sgt i32 %53, 0, !dbg !126
  br i1 %54, label %55, label %64, !dbg !128

; <label>:55:                                     ; preds = %51, %55
  %56 = phi i32 [ %59, %55 ], [ %53, %51 ]
  %57 = phi i32 [ %58, %55 ], [ -1022, %51 ]
  %58 = add nsw i32 %57, -1, !dbg !129
  %59 = shl i32 %56, 1, !dbg !130
  %60 = icmp sgt i32 %59, 0, !dbg !126
  br i1 %60, label %55, label %64, !dbg !128, !llvm.loop !131

; <label>:61:                                     ; preds = %39
  %62 = lshr i32 %12, 20, !dbg !133
  %63 = add nsw i32 %62, -1023, !dbg !134
  br label %64

; <label>:64:                                     ; preds = %55, %45, %51, %43, %61
  %65 = phi i32 [ %63, %61 ], [ -1043, %43 ], [ -1022, %51 ], [ %48, %45 ], [ %58, %55 ], !dbg !135
  %66 = icmp ult i32 %13, 1048576, !dbg !136
  br i1 %66, label %67, label %87, !dbg !138

; <label>:67:                                     ; preds = %64
  %68 = icmp eq i32 %13, 0, !dbg !139
  br i1 %68, label %69, label %77, !dbg !142

; <label>:69:                                     ; preds = %67
  %70 = icmp sgt i32 %10, 0, !dbg !144
  br i1 %70, label %71, label %90, !dbg !148

; <label>:71:                                     ; preds = %69, %71
  %72 = phi i32 [ %75, %71 ], [ %10, %69 ]
  %73 = phi i32 [ %74, %71 ], [ -1043, %69 ]
  %74 = add nsw i32 %73, -1, !dbg !149
  %75 = shl i32 %72, 1, !dbg !150
  %76 = icmp sgt i32 %75, 0, !dbg !144
  br i1 %76, label %71, label %90, !dbg !148, !llvm.loop !151

; <label>:77:                                     ; preds = %67
  %78 = shl nuw nsw i64 %8, 11, !dbg !153
  %79 = trunc i64 %78 to i32, !dbg !153
  %80 = icmp sgt i32 %79, 0, !dbg !156
  br i1 %80, label %81, label %90, !dbg !158

; <label>:81:                                     ; preds = %77, %81
  %82 = phi i32 [ %85, %81 ], [ %79, %77 ]
  %83 = phi i32 [ %84, %81 ], [ -1022, %77 ]
  %84 = add nsw i32 %83, -1, !dbg !159
  %85 = shl i32 %82, 1, !dbg !160
  %86 = icmp sgt i32 %85, 0, !dbg !156
  br i1 %86, label %81, label %90, !dbg !158, !llvm.loop !161

; <label>:87:                                     ; preds = %64
  %88 = lshr i32 %13, 20, !dbg !163
  %89 = add nsw i32 %88, -1023, !dbg !164
  br label %90

; <label>:90:                                     ; preds = %81, %71, %77, %69, %87
  %91 = phi i32 [ %89, %87 ], [ -1043, %69 ], [ -1022, %77 ], [ %74, %71 ], [ %84, %81 ], !dbg !165
  %92 = icmp sgt i32 %65, -1023, !dbg !166
  br i1 %92, label %93, label %96, !dbg !168

; <label>:93:                                     ; preds = %90
  %94 = and i32 %5, 1048575, !dbg !169
  %95 = or i32 %94, 1048576, !dbg !170
  br label %108, !dbg !171

; <label>:96:                                     ; preds = %90
  %97 = sub nsw i32 -1022, %65, !dbg !172
  %98 = icmp slt i32 %97, 32, !dbg !175
  br i1 %98, label %99, label %105, !dbg !177

; <label>:99:                                     ; preds = %96
  %100 = shl i32 %12, %97, !dbg !178
  %101 = sub nsw i32 32, %97, !dbg !180
  %102 = lshr i32 %6, %101, !dbg !181
  %103 = or i32 %102, %100, !dbg !182
  %104 = shl i32 %6, %97, !dbg !183
  br label %108, !dbg !184

; <label>:105:                                    ; preds = %96
  %106 = add nsw i32 %97, -32, !dbg !185
  %107 = shl i32 %6, %106, !dbg !187
  br label %108

; <label>:108:                                    ; preds = %99, %105, %93
  %109 = phi i32 [ %95, %93 ], [ %103, %99 ], [ %107, %105 ], !dbg !188
  %110 = phi i32 [ %6, %93 ], [ %104, %99 ], [ 0, %105 ], !dbg !188
  %111 = icmp sgt i32 %91, -1023, !dbg !189
  br i1 %111, label %112, label %115, !dbg !191

; <label>:112:                                    ; preds = %108
  %113 = and i32 %9, 1048575, !dbg !192
  %114 = or i32 %113, 1048576, !dbg !193
  br label %127, !dbg !194

; <label>:115:                                    ; preds = %108
  %116 = sub nsw i32 -1022, %91, !dbg !195
  %117 = icmp slt i32 %116, 32, !dbg !197
  br i1 %117, label %118, label %124, !dbg !199

; <label>:118:                                    ; preds = %115
  %119 = shl i32 %13, %116, !dbg !200
  %120 = sub nsw i32 32, %116, !dbg !202
  %121 = lshr i32 %10, %120, !dbg !203
  %122 = or i32 %121, %119, !dbg !204
  %123 = shl i32 %10, %116, !dbg !205
  br label %127, !dbg !206

; <label>:124:                                    ; preds = %115
  %125 = add nsw i32 %116, -32, !dbg !207
  %126 = shl i32 %10, %125, !dbg !209
  br label %127

; <label>:127:                                    ; preds = %118, %124, %112
  %128 = phi i32 [ %114, %112 ], [ %122, %118 ], [ %126, %124 ], !dbg !210
  %129 = phi i32 [ %10, %112 ], [ %123, %118 ], [ 0, %124 ], !dbg !210
  %130 = sub nsw i32 %65, %91, !dbg !211
  %131 = icmp eq i32 %130, 0, !dbg !212
  %132 = sub nsw i32 %109, %128, !dbg !213
  %133 = sub i32 %110, %129, !dbg !213
  %134 = icmp ult i32 %110, %129, !dbg !216
  %135 = sext i1 %134 to i32, !dbg !218
  %136 = add nsw i32 %132, %135, !dbg !218
  br i1 %131, label %170, label %137, !dbg !212

; <label>:137:                                    ; preds = %127, %158
  %138 = phi i32 [ %169, %158 ], [ %136, %127 ]
  %139 = phi i32 [ %166, %158 ], [ %133, %127 ]
  %140 = phi i32 [ %143, %158 ], [ %130, %127 ]
  %141 = phi i32 [ %163, %158 ], [ %110, %127 ]
  %142 = phi i32 [ %162, %158 ], [ %109, %127 ]
  %143 = add nsw i32 %140, -1, !dbg !220
  %144 = icmp slt i32 %138, 0, !dbg !221
  br i1 %144, label %145, label %148, !dbg !223

; <label>:145:                                    ; preds = %137
  %146 = shl nsw i32 %142, 1, !dbg !224
  %147 = lshr i32 %141, 31, !dbg !226
  br label %158, !dbg !227

; <label>:148:                                    ; preds = %137
  %149 = or i32 %138, %139, !dbg !228
  %150 = icmp eq i32 %149, 0, !dbg !231
  br i1 %150, label %151, label %155, !dbg !232

; <label>:151:                                    ; preds = %148
  %152 = lshr i64 %3, 63, !dbg !233
  %153 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %152, !dbg !234
  %154 = load double, double* %153, align 8, !dbg !234, !tbaa !100
  br label %238, !dbg !235

; <label>:155:                                    ; preds = %148
  %156 = shl nsw i32 %138, 1, !dbg !236
  %157 = lshr i32 %139, 31, !dbg !237
  br label %158

; <label>:158:                                    ; preds = %155, %145
  %159 = phi i32 [ %157, %155 ], [ %146, %145 ]
  %160 = phi i32 [ %156, %155 ], [ %147, %145 ]
  %161 = phi i32 [ %139, %155 ], [ %141, %145 ]
  %162 = or i32 %160, %159, !dbg !238
  %163 = shl i32 %161, 1, !dbg !239
  %164 = icmp eq i32 %143, 0, !dbg !212
  %165 = sub nsw i32 %162, %128, !dbg !213
  %166 = sub i32 %163, %129, !dbg !213
  %167 = icmp ult i32 %163, %129, !dbg !216
  %168 = sext i1 %167 to i32, !dbg !218
  %169 = add nsw i32 %165, %168, !dbg !218
  br i1 %164, label %170, label %137, !dbg !212, !llvm.loop !240

; <label>:170:                                    ; preds = %158, %127
  %171 = phi i32 [ %109, %127 ], [ %162, %158 ], !dbg !238
  %172 = phi i32 [ %110, %127 ], [ %163, %158 ], !dbg !238
  %173 = phi i32 [ %133, %127 ], [ %166, %158 ], !dbg !213
  %174 = phi i32 [ %136, %127 ], [ %169, %158 ], !dbg !218
  %175 = icmp sgt i32 %174, -1, !dbg !242
  %176 = select i1 %175, i32 %174, i32 %171, !dbg !244
  %177 = select i1 %175, i32 %173, i32 %172, !dbg !244
  %178 = or i32 %176, %177, !dbg !245
  %179 = icmp eq i32 %178, 0, !dbg !247
  br i1 %179, label %182, label %180, !dbg !248

; <label>:180:                                    ; preds = %170
  %181 = icmp slt i32 %176, 1048576, !dbg !249
  br i1 %181, label %186, label %196, !dbg !250

; <label>:182:                                    ; preds = %170
  %183 = lshr i64 %3, 63, !dbg !251
  %184 = getelementptr inbounds [2 x double], [2 x double]* @Zero, i64 0, i64 %183, !dbg !252
  %185 = load double, double* %184, align 8, !dbg !252, !tbaa !100
  br label %238, !dbg !253

; <label>:186:                                    ; preds = %180, %186
  %187 = phi i32 [ %193, %186 ], [ %177, %180 ]
  %188 = phi i32 [ %192, %186 ], [ %176, %180 ]
  %189 = phi i32 [ %194, %186 ], [ %91, %180 ]
  %190 = shl nsw i32 %188, 1, !dbg !254
  %191 = lshr i32 %187, 31, !dbg !256
  %192 = or i32 %191, %190, !dbg !257
  %193 = shl i32 %187, 1, !dbg !258
  %194 = add nsw i32 %189, -1, !dbg !259
  %195 = icmp slt i32 %192, 1048576, !dbg !249
  br i1 %195, label %186, label %196, !dbg !250, !llvm.loop !260

; <label>:196:                                    ; preds = %186, %180
  %197 = phi i32 [ %91, %180 ], [ %194, %186 ], !dbg !262
  %198 = phi i32 [ %176, %180 ], [ %192, %186 ], !dbg !262
  %199 = phi i32 [ %177, %180 ], [ %193, %186 ], !dbg !262
  %200 = icmp sgt i32 %197, -1023, !dbg !263
  br i1 %200, label %201, label %207, !dbg !264

; <label>:201:                                    ; preds = %196
  %202 = add nsw i32 %198, -1048576, !dbg !265
  %203 = shl i32 %197, 20, !dbg !266
  %204 = add i32 %203, 1072693248, !dbg !266
  %205 = or i32 %204, %11, !dbg !267
  %206 = or i32 %205, %202, !dbg !268
  br label %230, !dbg !269

; <label>:207:                                    ; preds = %196
  %208 = sub nsw i32 -1022, %197, !dbg !270
  %209 = icmp slt i32 %208, 21, !dbg !271
  br i1 %209, label %210, label %216, !dbg !273

; <label>:210:                                    ; preds = %207
  %211 = lshr i32 %199, %208, !dbg !274
  %212 = sub nsw i32 32, %208, !dbg !276
  %213 = shl i32 %198, %212, !dbg !277
  %214 = or i32 %211, %213, !dbg !278
  %215 = lshr i32 %198, %208
  br label %226, !dbg !279

; <label>:216:                                    ; preds = %207
  %217 = icmp slt i32 %208, 32, !dbg !280
  br i1 %217, label %218, label %223, !dbg !282

; <label>:218:                                    ; preds = %216
  %219 = sub nsw i32 32, %208, !dbg !283
  %220 = shl i32 %198, %219, !dbg !285
  %221 = lshr i32 %199, %208, !dbg !286
  %222 = or i32 %220, %221, !dbg !287
  br label %226, !dbg !288

; <label>:223:                                    ; preds = %216
  %224 = add nsw i32 %208, -32, !dbg !289
  %225 = lshr i32 %198, %224
  br label %226

; <label>:226:                                    ; preds = %210, %223, %218
  %227 = phi i32 [ %215, %210 ], [ %11, %218 ], [ %11, %223 ], !dbg !291
  %228 = phi i32 [ %214, %210 ], [ %222, %218 ], [ %225, %223 ], !dbg !291
  %229 = or i32 %227, %11, !dbg !292
  br label %230

; <label>:230:                                    ; preds = %226, %201
  %231 = phi i32 [ %229, %226 ], [ %206, %201 ]
  %232 = phi i32 [ %228, %226 ], [ %199, %201 ]
  %233 = zext i32 %231 to i64, !dbg !293
  %234 = shl nuw i64 %233, 32, !dbg !293
  %235 = zext i32 %232 to i64, !dbg !293
  %236 = or i64 %234, %235, !dbg !293
  %237 = bitcast i64 %236 to double, !dbg !294
  br label %238, !dbg !295

; <label>:238:                                    ; preds = %29, %230, %182, %151, %35, %24
  %239 = phi double [ %26, %24 ], [ %38, %35 ], [ %154, %151 ], [ %185, %182 ], [ %237, %230 ], [ %0, %29 ], !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  ret double %239, !dbg !296
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Zero", scope: !2, file: !3, line: 25, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_fmod.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!10, !0}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 25, type: !12, isLocal: true, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "__ieee754_fmod", scope: !3, file: !3, line: 31, type: !22, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!13, !13, !13}
!24 = !{!25, !26, !27, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !52, !54, !58}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !21, file: !3, line: 31, type: !13)
!26 = !DILocalVariable(name: "y", arg: 2, scope: !21, file: !3, line: 31, type: !13)
!27 = !DILocalVariable(name: "n", scope: !21, file: !3, line: 37, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !29)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "hx", scope: !21, file: !3, line: 37, type: !28)
!31 = !DILocalVariable(name: "hy", scope: !21, file: !3, line: 37, type: !28)
!32 = !DILocalVariable(name: "hz", scope: !21, file: !3, line: 37, type: !28)
!33 = !DILocalVariable(name: "ix", scope: !21, file: !3, line: 37, type: !28)
!34 = !DILocalVariable(name: "iy", scope: !21, file: !3, line: 37, type: !28)
!35 = !DILocalVariable(name: "sx", scope: !21, file: !3, line: 37, type: !28)
!36 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 37, type: !28)
!37 = !DILocalVariable(name: "lx", scope: !21, file: !3, line: 38, type: !6)
!38 = !DILocalVariable(name: "ly", scope: !21, file: !3, line: 38, type: !6)
!39 = !DILocalVariable(name: "lz", scope: !21, file: !3, line: 38, type: !6)
!40 = !DILocalVariable(name: "ew_u", scope: !41, file: !3, line: 40, type: !42)
!41 = distinct !DILexicalBlock(scope: !21, file: !3, line: 40, column: 2)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !43, line: 278, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !43, line: 270, size: 64, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !43, line: 272, baseType: !13, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !44, file: !43, line: 277, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 273, size: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !48, file: !43, line: 275, baseType: !6, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !48, file: !43, line: 276, baseType: !6, size: 32, offset: 32)
!52 = !DILocalVariable(name: "ew_u", scope: !53, file: !3, line: 41, type: !42)
!53 = distinct !DILexicalBlock(scope: !21, file: !3, line: 41, column: 2)
!54 = !DILocalVariable(name: "iw_u", scope: !55, file: !3, line: 123, type: !42)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 123, column: 6)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 121, column: 17)
!57 = distinct !DILexicalBlock(scope: !21, file: !3, line: 121, column: 5)
!58 = !DILocalVariable(name: "iw_u", scope: !59, file: !3, line: 134, type: !42)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 134, column: 6)
!60 = distinct !DILexicalBlock(scope: !57, file: !3, line: 124, column: 9)
!61 = !DILocation(line: 31, column: 31, scope: !21)
!62 = !DILocation(line: 31, column: 41, scope: !21)
!63 = !DILocation(line: 40, column: 2, scope: !41)
!64 = !DILocation(line: 37, column: 14, scope: !21)
!65 = !DILocation(line: 38, column: 13, scope: !21)
!66 = !DILocation(line: 41, column: 2, scope: !53)
!67 = !DILocation(line: 37, column: 17, scope: !21)
!68 = !DILocation(line: 38, column: 16, scope: !21)
!69 = !DILocation(line: 42, column: 9, scope: !21)
!70 = !DILocation(line: 37, column: 29, scope: !21)
!71 = !DILocation(line: 43, column: 5, scope: !21)
!72 = !DILocation(line: 44, column: 5, scope: !21)
!73 = !DILocation(line: 47, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !21, file: !3, line: 47, column: 5)
!75 = !DILocation(line: 47, column: 12, scope: !74)
!76 = !DILocation(line: 47, column: 20, scope: !74)
!77 = !DILocation(line: 47, column: 15, scope: !74)
!78 = !DILocation(line: 48, column: 14, scope: !74)
!79 = !DILocation(line: 48, column: 13, scope: !74)
!80 = !DILocation(line: 48, column: 18, scope: !74)
!81 = !DILocation(line: 48, column: 8, scope: !74)
!82 = !DILocation(line: 48, column: 24, scope: !74)
!83 = !DILocation(line: 47, column: 5, scope: !21)
!84 = !DILocation(line: 49, column: 15, scope: !74)
!85 = !DILocation(line: 49, column: 18, scope: !74)
!86 = !DILocation(line: 49, column: 6, scope: !74)
!87 = !DILocation(line: 50, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !21, file: !3, line: 50, column: 5)
!89 = !DILocation(line: 50, column: 5, scope: !21)
!90 = !DILocation(line: 51, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 51, column: 9)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 50, column: 13)
!93 = !DILocation(line: 51, column: 21, scope: !91)
!94 = !DILocation(line: 51, column: 16, scope: !91)
!95 = !DILocation(line: 52, column: 11, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !3, line: 52, column: 9)
!97 = !DILocation(line: 52, column: 9, scope: !92)
!98 = !DILocation(line: 53, column: 29, scope: !96)
!99 = !DILocation(line: 53, column: 10, scope: !96)
!100 = !{!101, !101, i64 0}
!101 = !{!"double", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 53, column: 3, scope: !96)
!105 = !DILocation(line: 57, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !21, file: !3, line: 57, column: 5)
!107 = !DILocation(line: 57, column: 5, scope: !21)
!108 = !DILocation(line: 58, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 58, column: 9)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 57, column: 20)
!111 = !DILocation(line: 58, column: 9, scope: !110)
!112 = !DILocation(line: 37, column: 32, scope: !21)
!113 = !DILocation(line: 37, column: 23, scope: !21)
!114 = !DILocation(line: 59, column: 27, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 59, column: 3)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 59, column: 3)
!117 = distinct !DILexicalBlock(scope: !109, file: !3, line: 58, column: 16)
!118 = !DILocation(line: 59, column: 3, scope: !116)
!119 = !DILocation(line: 59, column: 41, scope: !115)
!120 = !DILocation(line: 59, column: 32, scope: !115)
!121 = distinct !{!121, !118, !122}
!122 = !DILocation(line: 59, column: 43, scope: !116)
!123 = !DILocation(line: 61, column: 24, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 61, column: 3)
!125 = distinct !DILexicalBlock(scope: !109, file: !3, line: 60, column: 13)
!126 = !DILocation(line: 61, column: 32, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !3, line: 61, column: 3)
!128 = !DILocation(line: 61, column: 3, scope: !124)
!129 = !DILocation(line: 61, column: 46, scope: !127)
!130 = !DILocation(line: 61, column: 37, scope: !127)
!131 = distinct !{!131, !128, !132}
!132 = !DILocation(line: 61, column: 48, scope: !124)
!133 = !DILocation(line: 63, column: 17, scope: !106)
!134 = !DILocation(line: 63, column: 22, scope: !106)
!135 = !DILocation(line: 0, scope: !106)
!136 = !DILocation(line: 66, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !21, file: !3, line: 66, column: 5)
!138 = !DILocation(line: 66, column: 5, scope: !21)
!139 = !DILocation(line: 67, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 67, column: 9)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 66, column: 20)
!142 = !DILocation(line: 67, column: 9, scope: !141)
!143 = !DILocation(line: 37, column: 26, scope: !21)
!144 = !DILocation(line: 68, column: 27, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 68, column: 3)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 68, column: 3)
!147 = distinct !DILexicalBlock(scope: !140, file: !3, line: 67, column: 16)
!148 = !DILocation(line: 68, column: 3, scope: !146)
!149 = !DILocation(line: 68, column: 41, scope: !145)
!150 = !DILocation(line: 68, column: 32, scope: !145)
!151 = distinct !{!151, !148, !152}
!152 = !DILocation(line: 68, column: 43, scope: !146)
!153 = !DILocation(line: 70, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 70, column: 3)
!155 = distinct !DILexicalBlock(scope: !140, file: !3, line: 69, column: 13)
!156 = !DILocation(line: 70, column: 32, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 70, column: 3)
!158 = !DILocation(line: 70, column: 3, scope: !154)
!159 = !DILocation(line: 70, column: 46, scope: !157)
!160 = !DILocation(line: 70, column: 37, scope: !157)
!161 = distinct !{!161, !158, !162}
!162 = !DILocation(line: 70, column: 48, scope: !154)
!163 = !DILocation(line: 72, column: 17, scope: !137)
!164 = !DILocation(line: 72, column: 22, scope: !137)
!165 = !DILocation(line: 0, scope: !137)
!166 = !DILocation(line: 75, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !21, file: !3, line: 75, column: 5)
!168 = !DILocation(line: 75, column: 5, scope: !21)
!169 = !DILocation(line: 76, column: 33, scope: !167)
!170 = !DILocation(line: 76, column: 21, scope: !167)
!171 = !DILocation(line: 76, column: 6, scope: !167)
!172 = !DILocation(line: 78, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !3, line: 77, column: 7)
!174 = !DILocation(line: 37, column: 12, scope: !21)
!175 = !DILocation(line: 79, column: 10, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !3, line: 79, column: 9)
!177 = !DILocation(line: 79, column: 9, scope: !173)
!178 = !DILocation(line: 80, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 79, column: 16)
!180 = !DILocation(line: 80, column: 31, scope: !179)
!181 = !DILocation(line: 80, column: 26, scope: !179)
!182 = !DILocation(line: 80, column: 22, scope: !179)
!183 = !DILocation(line: 81, column: 13, scope: !179)
!184 = !DILocation(line: 82, column: 6, scope: !179)
!185 = !DILocation(line: 83, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !176, file: !3, line: 82, column: 13)
!187 = !DILocation(line: 83, column: 10, scope: !186)
!188 = !DILocation(line: 0, scope: !186)
!189 = !DILocation(line: 87, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !21, file: !3, line: 87, column: 5)
!191 = !DILocation(line: 87, column: 5, scope: !21)
!192 = !DILocation(line: 88, column: 33, scope: !190)
!193 = !DILocation(line: 88, column: 21, scope: !190)
!194 = !DILocation(line: 88, column: 6, scope: !190)
!195 = !DILocation(line: 90, column: 15, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !3, line: 89, column: 7)
!197 = !DILocation(line: 91, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !3, line: 91, column: 9)
!199 = !DILocation(line: 91, column: 9, scope: !196)
!200 = !DILocation(line: 92, column: 18, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 91, column: 16)
!202 = !DILocation(line: 92, column: 31, scope: !201)
!203 = !DILocation(line: 92, column: 26, scope: !201)
!204 = !DILocation(line: 92, column: 22, scope: !201)
!205 = !DILocation(line: 93, column: 13, scope: !201)
!206 = !DILocation(line: 94, column: 6, scope: !201)
!207 = !DILocation(line: 95, column: 14, scope: !208)
!208 = distinct !DILexicalBlock(scope: !198, file: !3, line: 94, column: 13)
!209 = !DILocation(line: 95, column: 10, scope: !208)
!210 = !DILocation(line: 0, scope: !208)
!211 = !DILocation(line: 101, column: 9, scope: !21)
!212 = !DILocation(line: 102, column: 2, scope: !21)
!213 = !DILocation(line: 0, scope: !21)
!214 = !DILocation(line: 37, column: 20, scope: !21)
!215 = !DILocation(line: 38, column: 19, scope: !21)
!216 = !DILocation(line: 0, scope: !217)
!217 = distinct !DILexicalBlock(scope: !21, file: !3, line: 111, column: 24)
!218 = !DILocation(line: 0, scope: !219)
!219 = distinct !DILexicalBlock(scope: !21, file: !3, line: 102, column: 13)
!220 = !DILocation(line: 102, column: 9, scope: !21)
!221 = !DILocation(line: 104, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 104, column: 9)
!223 = !DILocation(line: 104, column: 9, scope: !219)
!224 = !DILocation(line: 104, column: 22, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !3, line: 104, column: 14)
!226 = !DILocation(line: 104, column: 29, scope: !225)
!227 = !DILocation(line: 104, column: 47, scope: !225)
!228 = !DILocation(line: 106, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 106, column: 10)
!230 = distinct !DILexicalBlock(scope: !222, file: !3, line: 105, column: 11)
!231 = !DILocation(line: 106, column: 17, scope: !229)
!232 = !DILocation(line: 106, column: 10, scope: !230)
!233 = !DILocation(line: 107, column: 33, scope: !229)
!234 = !DILocation(line: 107, column: 14, scope: !229)
!235 = !DILocation(line: 107, column: 7, scope: !229)
!236 = !DILocation(line: 108, column: 14, scope: !230)
!237 = !DILocation(line: 108, column: 21, scope: !230)
!238 = !DILocation(line: 0, scope: !225)
!239 = !DILocation(line: 0, scope: !230)
!240 = distinct !{!240, !212, !241}
!241 = !DILocation(line: 110, column: 2, scope: !21)
!242 = !DILocation(line: 112, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !21, file: !3, line: 112, column: 5)
!244 = !DILocation(line: 112, column: 5, scope: !21)
!245 = !DILocation(line: 115, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !21, file: !3, line: 115, column: 5)
!247 = !DILocation(line: 115, column: 12, scope: !246)
!248 = !DILocation(line: 115, column: 5, scope: !21)
!249 = !DILocation(line: 117, column: 10, scope: !21)
!250 = !DILocation(line: 117, column: 2, scope: !21)
!251 = !DILocation(line: 116, column: 32, scope: !246)
!252 = !DILocation(line: 116, column: 13, scope: !246)
!253 = !DILocation(line: 116, column: 6, scope: !246)
!254 = !DILocation(line: 118, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !21, file: !3, line: 117, column: 23)
!256 = !DILocation(line: 118, column: 20, scope: !255)
!257 = !DILocation(line: 118, column: 16, scope: !255)
!258 = !DILocation(line: 118, column: 34, scope: !255)
!259 = !DILocation(line: 119, column: 9, scope: !255)
!260 = distinct !{!260, !250, !261}
!261 = !DILocation(line: 120, column: 2, scope: !21)
!262 = !DILocation(line: 0, scope: !255)
!263 = !DILocation(line: 121, column: 7, scope: !57)
!264 = !DILocation(line: 121, column: 5, scope: !21)
!265 = !DILocation(line: 122, column: 15, scope: !56)
!266 = !DILocation(line: 122, column: 38, scope: !56)
!267 = !DILocation(line: 122, column: 27, scope: !56)
!268 = !DILocation(line: 123, column: 6, scope: !55)
!269 = !DILocation(line: 124, column: 2, scope: !56)
!270 = !DILocation(line: 125, column: 16, scope: !60)
!271 = !DILocation(line: 126, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !60, file: !3, line: 126, column: 9)
!273 = !DILocation(line: 126, column: 9, scope: !60)
!274 = !DILocation(line: 127, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 126, column: 16)
!276 = !DILocation(line: 127, column: 36, scope: !275)
!277 = !DILocation(line: 127, column: 31, scope: !275)
!278 = !DILocation(line: 127, column: 15, scope: !275)
!279 = !DILocation(line: 129, column: 6, scope: !275)
!280 = !DILocation(line: 129, column: 18, scope: !281)
!281 = distinct !DILexicalBlock(scope: !272, file: !3, line: 129, column: 17)
!282 = !DILocation(line: 129, column: 17, scope: !272)
!283 = !DILocation(line: 130, column: 16, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 129, column: 24)
!285 = !DILocation(line: 130, column: 11, scope: !284)
!286 = !DILocation(line: 130, column: 24, scope: !284)
!287 = !DILocation(line: 130, column: 20, scope: !284)
!288 = !DILocation(line: 131, column: 6, scope: !284)
!289 = !DILocation(line: 132, column: 14, scope: !290)
!290 = distinct !DILexicalBlock(scope: !281, file: !3, line: 131, column: 13)
!291 = !DILocation(line: 0, scope: !290)
!292 = !DILocation(line: 134, column: 6, scope: !59)
!293 = !DILocation(line: 0, scope: !55)
!294 = !DILocation(line: 0, scope: !60)
!295 = !DILocation(line: 137, column: 2, scope: !21)
!296 = !DILocation(line: 138, column: 1, scope: !21)
