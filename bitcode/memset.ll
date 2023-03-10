; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memset.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memset.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memset(i8* returned, i32, i64) local_unnamed_addr #0 !dbg !13 {
  %4 = and i32 %1, 255, !dbg !34
  %5 = ptrtoint i8* %0 to i64, !dbg !36
  %6 = and i64 %5, 7, !dbg !36
  %7 = icmp eq i64 %6, 0, !dbg !37
  br i1 %7, label %20, label %8, !dbg !37

; <label>:8:                                      ; preds = %3
  %9 = trunc i32 %1 to i8
  br label %10, !dbg !37

; <label>:10:                                     ; preds = %8, %14
  %11 = phi i8* [ %0, %8 ], [ %16, %14 ]
  %12 = phi i64 [ %2, %8 ], [ %15, %14 ]
  %13 = icmp eq i64 %12, 0, !dbg !38
  br i1 %13, label %226, label %14, !dbg !41

; <label>:14:                                     ; preds = %10
  %15 = add i64 %12, -1, !dbg !38
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !42
  store i8 %9, i8* %11, align 1, !dbg !43, !tbaa !44
  %17 = ptrtoint i8* %16 to i64, !dbg !36
  %18 = and i64 %17, 7, !dbg !36
  %19 = icmp eq i64 %18, 0, !dbg !37
  br i1 %19, label %20, label %10, !dbg !37, !llvm.loop !47

; <label>:20:                                     ; preds = %14, %3
  %21 = phi i64 [ %2, %3 ], [ %15, %14 ]
  %22 = phi i8* [ %0, %3 ], [ %16, %14 ], !dbg !49
  %23 = icmp ult i64 %21, 8, !dbg !50
  br i1 %23, label %135, label %24, !dbg !52

; <label>:24:                                     ; preds = %20
  %25 = shl nuw nsw i32 %4, 8, !dbg !54
  %26 = or i32 %25, %4, !dbg !56
  %27 = shl nuw i32 %26, 16, !dbg !57
  %28 = or i32 %27, %26, !dbg !58
  %29 = zext i32 %28 to i64, !dbg !58
  %30 = shl nuw i64 %29, 32, !dbg !61
  %31 = or i64 %30, %29, !dbg !64
  %32 = bitcast i8* %22 to i64*, !dbg !65
  %33 = icmp ugt i64 %21, 31, !dbg !66
  br i1 %33, label %34, label %62, !dbg !67

; <label>:34:                                     ; preds = %24
  %35 = add i64 %21, -32, !dbg !68
  %36 = and i64 %35, -32, !dbg !68
  %37 = add i64 %36, 32, !dbg !68
  %38 = getelementptr i8, i8* %22, i64 %37, !dbg !68
  %39 = bitcast i8* %38 to i64*
  %40 = lshr i64 %35, 5, !dbg !68
  %41 = add nuw nsw i64 %40, 1, !dbg !68
  %42 = and i64 %41, 3, !dbg !68
  %43 = icmp eq i64 %42, 0, !dbg !68
  br i1 %43, label %55, label %44, !dbg !68

; <label>:44:                                     ; preds = %34, %44
  %45 = phi i64* [ %51, %44 ], [ %32, %34 ]
  %46 = phi i64 [ %52, %44 ], [ %21, %34 ]
  %47 = phi i64 [ %53, %44 ], [ %42, %34 ]
  %48 = getelementptr inbounds i64, i64* %45, i64 1, !dbg !68
  store i64 %31, i64* %45, align 8, !dbg !70, !tbaa !71
  %49 = getelementptr inbounds i64, i64* %45, i64 2, !dbg !73
  store i64 %31, i64* %48, align 8, !dbg !74, !tbaa !71
  %50 = getelementptr inbounds i64, i64* %45, i64 3, !dbg !75
  store i64 %31, i64* %49, align 8, !dbg !76, !tbaa !71
  %51 = getelementptr inbounds i64, i64* %45, i64 4, !dbg !77
  store i64 %31, i64* %50, align 8, !dbg !78, !tbaa !71
  %52 = add i64 %46, -32, !dbg !79
  %53 = add i64 %47, -1, !dbg !67
  %54 = icmp eq i64 %53, 0, !dbg !67
  br i1 %54, label %55, label %44, !dbg !67, !llvm.loop !80

; <label>:55:                                     ; preds = %44, %34
  %56 = phi i64* [ %32, %34 ], [ %51, %44 ]
  %57 = phi i64 [ %21, %34 ], [ %52, %44 ]
  %58 = icmp ult i64 %35, 96, !dbg !68
  br i1 %58, label %59, label %101, !dbg !68

; <label>:59:                                     ; preds = %101, %55
  %60 = sub i64 %35, %36, !dbg !68
  %61 = icmp ugt i64 %60, 7, !dbg !82
  br i1 %61, label %62, label %131, !dbg !83

; <label>:62:                                     ; preds = %24, %59
  %63 = phi i64* [ %39, %59 ], [ %32, %24 ]
  %64 = phi i64 [ %60, %59 ], [ %21, %24 ]
  %65 = add i64 %64, -8, !dbg !84
  %66 = lshr i64 %65, 3, !dbg !84
  %67 = add nuw nsw i64 %66, 1, !dbg !84
  %68 = sub i64 7, %64, !dbg !84
  %69 = icmp ugt i64 %68, -8, !dbg !84
  %70 = select i1 %69, i64 %68, i64 -8, !dbg !84
  %71 = add i64 %64, %70, !dbg !84
  %72 = lshr i64 %71, 3, !dbg !84
  %73 = add nuw nsw i64 %72, 1, !dbg !84
  %74 = icmp ult i64 %73, 4, !dbg !84
  br i1 %74, label %75, label %78, !dbg !84

; <label>:75:                                     ; preds = %99, %62
  %76 = phi i64* [ %63, %62 ], [ %81, %99 ]
  %77 = phi i64 [ %64, %62 ], [ %86, %99 ]
  br label %122, !dbg !84

; <label>:78:                                     ; preds = %62
  %79 = and i64 %73, 3, !dbg !84
  %80 = sub nsw i64 %73, %79, !dbg !84
  %81 = getelementptr i64, i64* %63, i64 %80, !dbg !84
  %82 = shl nuw nsw i64 %79, 3, !dbg !84
  %83 = add i64 %64, %82, !dbg !84
  %84 = add i64 %83, -8, !dbg !84
  %85 = and i64 %71, -8, !dbg !84
  %86 = sub i64 %84, %85, !dbg !84
  %87 = insertelement <2 x i64> undef, i64 %31, i32 0, !dbg !84
  %88 = shufflevector <2 x i64> %87, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !84
  %89 = insertelement <2 x i64> undef, i64 %31, i32 0, !dbg !84
  %90 = shufflevector <2 x i64> %89, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !84
  br label %91, !dbg !84

; <label>:91:                                     ; preds = %91, %78
  %92 = phi i64 [ 0, %78 ], [ %97, %91 ]
  %93 = getelementptr i64, i64* %63, i64 %92
  %94 = bitcast i64* %93 to <2 x i64>*, !dbg !86
  store <2 x i64> %88, <2 x i64>* %94, align 8, !dbg !86, !tbaa !71
  %95 = getelementptr i64, i64* %93, i64 2, !dbg !86
  %96 = bitcast i64* %95 to <2 x i64>*, !dbg !86
  store <2 x i64> %90, <2 x i64>* %96, align 8, !dbg !86, !tbaa !71
  %97 = add i64 %92, 4
  %98 = icmp eq i64 %97, %80
  br i1 %98, label %99, label %91, !llvm.loop !87

; <label>:99:                                     ; preds = %91
  %100 = icmp eq i64 %79, 0
  br i1 %100, label %128, label %75, !dbg !84

; <label>:101:                                    ; preds = %55, %101
  %102 = phi i64* [ %119, %101 ], [ %56, %55 ]
  %103 = phi i64 [ %120, %101 ], [ %57, %55 ]
  %104 = getelementptr inbounds i64, i64* %102, i64 1, !dbg !68
  store i64 %31, i64* %102, align 8, !dbg !70, !tbaa !71
  %105 = getelementptr inbounds i64, i64* %102, i64 2, !dbg !73
  store i64 %31, i64* %104, align 8, !dbg !74, !tbaa !71
  %106 = getelementptr inbounds i64, i64* %102, i64 3, !dbg !75
  store i64 %31, i64* %105, align 8, !dbg !76, !tbaa !71
  %107 = getelementptr inbounds i64, i64* %102, i64 4, !dbg !77
  store i64 %31, i64* %106, align 8, !dbg !78, !tbaa !71
  %108 = getelementptr inbounds i64, i64* %102, i64 5, !dbg !68
  store i64 %31, i64* %107, align 8, !dbg !70, !tbaa !71
  %109 = getelementptr inbounds i64, i64* %102, i64 6, !dbg !73
  store i64 %31, i64* %108, align 8, !dbg !74, !tbaa !71
  %110 = getelementptr inbounds i64, i64* %102, i64 7, !dbg !75
  store i64 %31, i64* %109, align 8, !dbg !76, !tbaa !71
  %111 = getelementptr inbounds i64, i64* %102, i64 8, !dbg !77
  store i64 %31, i64* %110, align 8, !dbg !78, !tbaa !71
  %112 = getelementptr inbounds i64, i64* %102, i64 9, !dbg !68
  store i64 %31, i64* %111, align 8, !dbg !70, !tbaa !71
  %113 = getelementptr inbounds i64, i64* %102, i64 10, !dbg !73
  store i64 %31, i64* %112, align 8, !dbg !74, !tbaa !71
  %114 = getelementptr inbounds i64, i64* %102, i64 11, !dbg !75
  store i64 %31, i64* %113, align 8, !dbg !76, !tbaa !71
  %115 = getelementptr inbounds i64, i64* %102, i64 12, !dbg !77
  store i64 %31, i64* %114, align 8, !dbg !78, !tbaa !71
  %116 = getelementptr inbounds i64, i64* %102, i64 13, !dbg !68
  store i64 %31, i64* %115, align 8, !dbg !70, !tbaa !71
  %117 = getelementptr inbounds i64, i64* %102, i64 14, !dbg !73
  store i64 %31, i64* %116, align 8, !dbg !74, !tbaa !71
  %118 = getelementptr inbounds i64, i64* %102, i64 15, !dbg !75
  store i64 %31, i64* %117, align 8, !dbg !76, !tbaa !71
  %119 = getelementptr inbounds i64, i64* %102, i64 16, !dbg !77
  store i64 %31, i64* %118, align 8, !dbg !78, !tbaa !71
  %120 = add i64 %103, -128, !dbg !79
  %121 = icmp ugt i64 %120, 31, !dbg !66
  br i1 %121, label %101, label %59, !dbg !67, !llvm.loop !90

; <label>:122:                                    ; preds = %75, %122
  %123 = phi i64* [ %125, %122 ], [ %76, %75 ]
  %124 = phi i64 [ %126, %122 ], [ %77, %75 ]
  %125 = getelementptr inbounds i64, i64* %123, i64 1, !dbg !84
  store i64 %31, i64* %123, align 8, !dbg !86, !tbaa !71
  %126 = add i64 %124, -8, !dbg !92
  %127 = icmp ugt i64 %126, 7, !dbg !82
  br i1 %127, label %122, label %128, !dbg !83, !llvm.loop !93

; <label>:128:                                    ; preds = %122, %99
  %129 = getelementptr i64, i64* %63, i64 %67, !dbg !84
  %130 = and i64 %65, 7, !dbg !84
  br label %131, !dbg !95

; <label>:131:                                    ; preds = %128, %59
  %132 = phi i64 [ %60, %59 ], [ %130, %128 ]
  %133 = phi i64* [ %39, %59 ], [ %129, %128 ], !dbg !96
  %134 = bitcast i64* %133 to i8*, !dbg !95
  br label %135, !dbg !97

; <label>:135:                                    ; preds = %131, %20
  %136 = phi i64 [ %21, %20 ], [ %132, %131 ]
  %137 = phi i8* [ %22, %20 ], [ %134, %131 ], !dbg !98
  %138 = icmp eq i64 %136, 0, !dbg !99
  br i1 %138, label %226, label %139, !dbg !99

; <label>:139:                                    ; preds = %135
  %140 = trunc i32 %1 to i8
  %141 = icmp ult i64 %136, 32, !dbg !99
  br i1 %141, label %217, label %142, !dbg !99

; <label>:142:                                    ; preds = %139
  %143 = and i64 %136, -32, !dbg !99
  %144 = getelementptr i8, i8* %137, i64 %143, !dbg !99
  %145 = sub i64 %136, %143, !dbg !99
  %146 = insertelement <16 x i8> undef, i8 %140, i32 0, !dbg !99
  %147 = shufflevector <16 x i8> %146, <16 x i8> undef, <16 x i32> zeroinitializer, !dbg !99
  %148 = insertelement <16 x i8> undef, i8 %140, i32 0, !dbg !99
  %149 = shufflevector <16 x i8> %148, <16 x i8> undef, <16 x i32> zeroinitializer, !dbg !99
  %150 = add i64 %143, -32, !dbg !99
  %151 = lshr exact i64 %150, 5, !dbg !99
  %152 = add nuw nsw i64 %151, 1, !dbg !99
  %153 = and i64 %152, 7, !dbg !99
  %154 = icmp ult i64 %150, 224, !dbg !99
  br i1 %154, label %202, label %155, !dbg !99

; <label>:155:                                    ; preds = %142
  %156 = sub nsw i64 %152, %153, !dbg !99
  br label %157, !dbg !99

; <label>:157:                                    ; preds = %157, %155
  %158 = phi i64 [ 0, %155 ], [ %199, %157 ]
  %159 = phi i64 [ %156, %155 ], [ %200, %157 ]
  %160 = getelementptr i8, i8* %137, i64 %158
  %161 = bitcast i8* %160 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %161, align 1, !dbg !100, !tbaa !44
  %162 = getelementptr i8, i8* %160, i64 16, !dbg !100
  %163 = bitcast i8* %162 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %163, align 1, !dbg !100, !tbaa !44
  %164 = or i64 %158, 32
  %165 = getelementptr i8, i8* %137, i64 %164
  %166 = bitcast i8* %165 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %166, align 1, !dbg !100, !tbaa !44
  %167 = getelementptr i8, i8* %165, i64 16, !dbg !100
  %168 = bitcast i8* %167 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %168, align 1, !dbg !100, !tbaa !44
  %169 = or i64 %158, 64
  %170 = getelementptr i8, i8* %137, i64 %169
  %171 = bitcast i8* %170 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %171, align 1, !dbg !100, !tbaa !44
  %172 = getelementptr i8, i8* %170, i64 16, !dbg !100
  %173 = bitcast i8* %172 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %173, align 1, !dbg !100, !tbaa !44
  %174 = or i64 %158, 96
  %175 = getelementptr i8, i8* %137, i64 %174
  %176 = bitcast i8* %175 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %176, align 1, !dbg !100, !tbaa !44
  %177 = getelementptr i8, i8* %175, i64 16, !dbg !100
  %178 = bitcast i8* %177 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %178, align 1, !dbg !100, !tbaa !44
  %179 = or i64 %158, 128
  %180 = getelementptr i8, i8* %137, i64 %179
  %181 = bitcast i8* %180 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %181, align 1, !dbg !100, !tbaa !44
  %182 = getelementptr i8, i8* %180, i64 16, !dbg !100
  %183 = bitcast i8* %182 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %183, align 1, !dbg !100, !tbaa !44
  %184 = or i64 %158, 160
  %185 = getelementptr i8, i8* %137, i64 %184
  %186 = bitcast i8* %185 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %186, align 1, !dbg !100, !tbaa !44
  %187 = getelementptr i8, i8* %185, i64 16, !dbg !100
  %188 = bitcast i8* %187 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %188, align 1, !dbg !100, !tbaa !44
  %189 = or i64 %158, 192
  %190 = getelementptr i8, i8* %137, i64 %189
  %191 = bitcast i8* %190 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %191, align 1, !dbg !100, !tbaa !44
  %192 = getelementptr i8, i8* %190, i64 16, !dbg !100
  %193 = bitcast i8* %192 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %193, align 1, !dbg !100, !tbaa !44
  %194 = or i64 %158, 224
  %195 = getelementptr i8, i8* %137, i64 %194
  %196 = bitcast i8* %195 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %196, align 1, !dbg !100, !tbaa !44
  %197 = getelementptr i8, i8* %195, i64 16, !dbg !100
  %198 = bitcast i8* %197 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %198, align 1, !dbg !100, !tbaa !44
  %199 = add i64 %158, 256
  %200 = add i64 %159, -8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %157, !llvm.loop !101

; <label>:202:                                    ; preds = %157, %142
  %203 = phi i64 [ 0, %142 ], [ %199, %157 ]
  %204 = icmp eq i64 %153, 0
  br i1 %204, label %215, label %205

; <label>:205:                                    ; preds = %202, %205
  %206 = phi i64 [ %212, %205 ], [ %203, %202 ]
  %207 = phi i64 [ %213, %205 ], [ %153, %202 ]
  %208 = getelementptr i8, i8* %137, i64 %206
  %209 = bitcast i8* %208 to <16 x i8>*, !dbg !100
  store <16 x i8> %147, <16 x i8>* %209, align 1, !dbg !100, !tbaa !44
  %210 = getelementptr i8, i8* %208, i64 16, !dbg !100
  %211 = bitcast i8* %210 to <16 x i8>*, !dbg !100
  store <16 x i8> %149, <16 x i8>* %211, align 1, !dbg !100, !tbaa !44
  %212 = add i64 %206, 32
  %213 = add i64 %207, -1
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %205, !llvm.loop !103

; <label>:215:                                    ; preds = %205, %202
  %216 = icmp eq i64 %136, %143
  br i1 %216, label %226, label %217, !dbg !99

; <label>:217:                                    ; preds = %215, %139
  %218 = phi i8* [ %137, %139 ], [ %144, %215 ]
  %219 = phi i64 [ %136, %139 ], [ %145, %215 ]
  br label %220, !dbg !104

; <label>:220:                                    ; preds = %217, %220
  %221 = phi i8* [ %224, %220 ], [ %218, %217 ]
  %222 = phi i64 [ %223, %220 ], [ %219, %217 ]
  %223 = add i64 %222, -1, !dbg !104
  %224 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !105
  store i8 %140, i8* %221, align 1, !dbg !100, !tbaa !44
  %225 = icmp eq i64 %223, 0, !dbg !99
  br i1 %225, label %226, label %220, !dbg !99, !llvm.loop !106

; <label>:226:                                    ; preds = %10, %220, %215, %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  ret i8* %0, !dbg !107
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
!36 = !DILocation(line: 59, column: 10, scope: !13)
!37 = !DILocation(line: 59, column: 3, scope: !13)
!38 = !DILocation(line: 61, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 61, column: 11)
!40 = distinct !DILexicalBlock(scope: !13, file: !1, line: 60, column: 5)
!41 = !DILocation(line: 61, column: 11, scope: !40)
!42 = !DILocation(line: 62, column: 11, scope: !39)
!43 = !DILocation(line: 62, column: 14, scope: !39)
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = distinct !{!47, !37, !48}
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
!61 = !DILocation(line: 77, column: 26, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 76, column: 7)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 76, column: 7)
!64 = !DILocation(line: 77, column: 32, scope: !62)
!65 = !DILocation(line: 70, column: 22, scope: !55)
!66 = !DILocation(line: 80, column: 16, scope: !55)
!67 = !DILocation(line: 80, column: 7, scope: !55)
!68 = !DILocation(line: 82, column: 24, scope: !69)
!69 = distinct !DILexicalBlock(scope: !55, file: !1, line: 81, column: 9)
!70 = !DILocation(line: 82, column: 27, scope: !69)
!71 = !{!72, !72, i64 0}
!72 = !{!"long", !45, i64 0}
!73 = !DILocation(line: 83, column: 24, scope: !69)
!74 = !DILocation(line: 83, column: 27, scope: !69)
!75 = !DILocation(line: 84, column: 24, scope: !69)
!76 = !DILocation(line: 84, column: 27, scope: !69)
!77 = !DILocation(line: 85, column: 24, scope: !69)
!78 = !DILocation(line: 85, column: 27, scope: !69)
!79 = !DILocation(line: 86, column: 13, scope: !69)
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !DILocation(line: 89, column: 16, scope: !55)
!83 = !DILocation(line: 89, column: 7, scope: !55)
!84 = !DILocation(line: 91, column: 24, scope: !85)
!85 = distinct !DILexicalBlock(scope: !55, file: !1, line: 90, column: 9)
!86 = !DILocation(line: 91, column: 27, scope: !85)
!87 = distinct !{!87, !83, !88, !89}
!88 = !DILocation(line: 93, column: 9, scope: !55)
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = distinct !{!90, !67, !91}
!91 = !DILocation(line: 87, column: 9, scope: !55)
!92 = !DILocation(line: 92, column: 13, scope: !85)
!93 = distinct !{!93, !83, !88, !94, !89}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = !DILocation(line: 95, column: 11, scope: !55)
!96 = !DILocation(line: 0, scope: !85)
!97 = !DILocation(line: 96, column: 5, scope: !55)
!98 = !DILocation(line: 0, scope: !55)
!99 = !DILocation(line: 100, column: 3, scope: !13)
!100 = !DILocation(line: 101, column: 10, scope: !13)
!101 = distinct !{!101, !99, !102, !89}
!102 = !DILocation(line: 101, column: 19, scope: !13)
!103 = distinct !{!103, !81}
!104 = !DILocation(line: 100, column: 11, scope: !13)
!105 = !DILocation(line: 101, column: 7, scope: !13)
!106 = distinct !{!106, !99, !102, !94, !89}
!107 = !DILocation(line: 104, column: 1, scope: !13)
