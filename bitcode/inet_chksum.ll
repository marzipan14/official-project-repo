; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/inet_chksum.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/inet_chksum.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"delete me\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.3 = internal global [14 x i8] c"inet_chksum.c\00", section ".data_shared", align 1, !dbg !56
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @lwip_standard_chksum(i8*, i32) local_unnamed_addr #0 !dbg !83 {
  %3 = ptrtoint i8* %0 to i64, !dbg !102
  %4 = and i64 %3, 1, !dbg !103
  %5 = icmp ne i64 %4, 0, !dbg !103
  %6 = icmp sgt i32 %1, 0, !dbg !105
  %7 = and i1 %6, %5, !dbg !106
  br i1 %7, label %8, label %15, !dbg !106

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !107
  %10 = load i8, i8* %0, align 1, !dbg !109, !tbaa !110
  %11 = add nsw i32 %1, -1, !dbg !113
  %12 = zext i8 %10 to i32, !dbg !114
  %13 = shl nuw nsw i32 %12, 8, !dbg !114
  %14 = ptrtoint i8* %9 to i64, !dbg !115
  br label %15, !dbg !114

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i64 [ %14, %8 ], [ %3, %2 ], !dbg !115
  %17 = phi i8* [ %9, %8 ], [ %0, %2 ], !dbg !117
  %18 = phi i32 [ %13, %8 ], [ 0, %2 ]
  %19 = phi i32 [ %11, %8 ], [ %1, %2 ]
  %20 = bitcast i8* %17 to i16*, !dbg !118
  %21 = and i64 %16, 3, !dbg !120
  %22 = icmp ne i64 %21, 0, !dbg !120
  %23 = icmp sgt i32 %19, 1, !dbg !121
  %24 = and i1 %22, %23, !dbg !122
  br i1 %24, label %25, label %31, !dbg !122

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !123
  %27 = bitcast i8* %26 to i16*, !dbg !123
  %28 = load i16, i16* %20, align 2, !dbg !125, !tbaa !126
  %29 = zext i16 %28 to i32, !dbg !125
  %30 = add nsw i32 %19, -2, !dbg !128
  br label %31, !dbg !129

; <label>:31:                                     ; preds = %25, %15
  %32 = phi i16* [ %27, %25 ], [ %20, %15 ], !dbg !117
  %33 = phi i32 [ %29, %25 ], [ 0, %15 ], !dbg !117
  %34 = phi i32 [ %30, %25 ], [ %19, %15 ], !dbg !130
  %35 = bitcast i16* %32 to i32*, !dbg !131
  %36 = icmp sgt i32 %34, 7, !dbg !133
  br i1 %36, label %37, label %108, !dbg !134

; <label>:37:                                     ; preds = %31
  %38 = xor i32 %34, -1, !dbg !135
  %39 = icmp sgt i32 %38, -16, !dbg !135
  %40 = select i1 %39, i32 %38, i32 -16, !dbg !135
  %41 = add i32 %34, %40, !dbg !135
  %42 = add i32 %41, 8, !dbg !135
  %43 = lshr i32 %42, 3, !dbg !135
  %44 = shl nuw nsw i32 %43, 2, !dbg !135
  %45 = add nuw i32 %44, 4, !dbg !135
  %46 = zext i32 %45 to i64, !dbg !135
  %47 = getelementptr i16, i16* %32, i64 %46, !dbg !135
  %48 = bitcast i16* %47 to i32*
  %49 = and i32 %42, -8, !dbg !135
  %50 = and i32 %42, 8, !dbg !135
  %51 = icmp eq i32 %50, 0, !dbg !135
  br i1 %51, label %52, label %68, !dbg !135

; <label>:52:                                     ; preds = %37
  %53 = getelementptr inbounds i16, i16* %32, i64 2, !dbg !135
  %54 = bitcast i16* %53 to i32*, !dbg !135
  %55 = load i32, i32* %35, align 4, !dbg !137, !tbaa !138
  %56 = add i32 %55, %33, !dbg !140
  %57 = icmp ult i32 %56, %33, !dbg !142
  %58 = zext i1 %57 to i32, !dbg !144
  %59 = add i32 %56, %58, !dbg !144
  %60 = getelementptr inbounds i16, i16* %32, i64 4, !dbg !145
  %61 = bitcast i16* %60 to i32*, !dbg !145
  %62 = load i32, i32* %54, align 4, !dbg !146, !tbaa !138
  %63 = add i32 %59, %62, !dbg !147
  %64 = icmp ult i32 %63, %59, !dbg !148
  %65 = zext i1 %64 to i32, !dbg !150
  %66 = add i32 %63, %65, !dbg !150
  %67 = add nsw i32 %34, -8, !dbg !151
  br label %68, !dbg !134

; <label>:68:                                     ; preds = %52, %37
  %69 = phi i32 [ %34, %37 ], [ %67, %52 ]
  %70 = phi i32 [ %33, %37 ], [ %66, %52 ]
  %71 = phi i32* [ %35, %37 ], [ %61, %52 ]
  %72 = phi i32 [ undef, %37 ], [ %66, %52 ]
  %73 = icmp ugt i32 %41, -9, !dbg !135
  br i1 %73, label %104, label %74, !dbg !135

; <label>:74:                                     ; preds = %68, %74
  %75 = phi i32 [ %102, %74 ], [ %69, %68 ]
  %76 = phi i32 [ %101, %74 ], [ %70, %68 ]
  %77 = phi i32* [ %96, %74 ], [ %71, %68 ]
  %78 = getelementptr inbounds i32, i32* %77, i64 1, !dbg !135
  %79 = load i32, i32* %77, align 4, !dbg !137, !tbaa !138
  %80 = add i32 %79, %76, !dbg !140
  %81 = icmp ult i32 %80, %76, !dbg !142
  %82 = zext i1 %81 to i32, !dbg !144
  %83 = add i32 %80, %82, !dbg !144
  %84 = getelementptr inbounds i32, i32* %77, i64 2, !dbg !145
  %85 = load i32, i32* %78, align 4, !dbg !146, !tbaa !138
  %86 = add i32 %83, %85, !dbg !147
  %87 = icmp ult i32 %86, %83, !dbg !148
  %88 = zext i1 %87 to i32, !dbg !150
  %89 = add i32 %86, %88, !dbg !150
  %90 = getelementptr inbounds i32, i32* %77, i64 3, !dbg !135
  %91 = load i32, i32* %84, align 4, !dbg !137, !tbaa !138
  %92 = add i32 %91, %89, !dbg !140
  %93 = icmp ult i32 %92, %89, !dbg !142
  %94 = zext i1 %93 to i32, !dbg !144
  %95 = add i32 %92, %94, !dbg !144
  %96 = getelementptr inbounds i32, i32* %77, i64 4, !dbg !145
  %97 = load i32, i32* %90, align 4, !dbg !146, !tbaa !138
  %98 = add i32 %95, %97, !dbg !147
  %99 = icmp ult i32 %98, %95, !dbg !148
  %100 = zext i1 %99 to i32, !dbg !150
  %101 = add i32 %98, %100, !dbg !150
  %102 = add nsw i32 %75, -16, !dbg !151
  %103 = icmp sgt i32 %75, 23, !dbg !133
  br i1 %103, label %74, label %104, !dbg !134, !llvm.loop !152

; <label>:104:                                    ; preds = %74, %68
  %105 = phi i32 [ %72, %68 ], [ %101, %74 ], !dbg !150
  %106 = add i32 %34, -8, !dbg !135
  %107 = sub i32 %106, %49, !dbg !135
  br label %108, !dbg !154

; <label>:108:                                    ; preds = %104, %31
  %109 = phi i16* [ %32, %31 ], [ %47, %104 ], !dbg !155
  %110 = phi i32* [ %35, %31 ], [ %48, %104 ], !dbg !155
  %111 = phi i32 [ %33, %31 ], [ %105, %104 ], !dbg !156
  %112 = phi i32 [ %34, %31 ], [ %107, %104 ], !dbg !155
  %113 = lshr i32 %111, 16, !dbg !154
  %114 = and i32 %111, 65535, !dbg !154
  %115 = add nuw nsw i32 %113, %114, !dbg !154
  %116 = icmp sgt i32 %112, 1, !dbg !158
  br i1 %116, label %117, label %194, !dbg !159

; <label>:117:                                    ; preds = %108
  %118 = bitcast i32* %110 to i8*
  %119 = xor i32 %112, -1, !dbg !160
  %120 = icmp sgt i32 %119, -4, !dbg !160
  %121 = select i1 %120, i32 %119, i32 -4, !dbg !160
  %122 = add i32 %112, %121, !dbg !160
  %123 = add i32 %122, 2, !dbg !160
  %124 = and i32 %123, -2, !dbg !160
  %125 = zext i32 %124 to i64, !dbg !160
  %126 = add nuw nsw i64 %125, 2, !dbg !160
  %127 = getelementptr i8, i8* %118, i64 %126, !dbg !160
  %128 = bitcast i8* %127 to i16*
  %129 = and i32 %123, -2, !dbg !160
  %130 = xor i32 %112, -1, !dbg !160
  %131 = icmp sgt i32 %130, -4, !dbg !160
  %132 = select i1 %131, i32 %130, i32 -4, !dbg !160
  %133 = add i32 %112, %132, !dbg !160
  %134 = add i32 %133, 2, !dbg !160
  %135 = lshr i32 %134, 1, !dbg !160
  %136 = add nuw i32 %135, 1, !dbg !160
  %137 = icmp ult i32 %136, 8, !dbg !160
  br i1 %137, label %176, label %138, !dbg !160

; <label>:138:                                    ; preds = %117
  %139 = zext i32 %136 to i64, !dbg !160
  %140 = add nuw i32 %135, 1, !dbg !160
  %141 = and i32 %140, 7, !dbg !160
  %142 = zext i32 %141 to i64, !dbg !160
  %143 = sub nsw i64 %139, %142, !dbg !160
  %144 = add i32 %133, 4, !dbg !160
  %145 = and i32 %144, 14, !dbg !160
  %146 = add i32 %112, %145, !dbg !160
  %147 = add i32 %146, -2, !dbg !160
  %148 = and i32 %134, -2, !dbg !160
  %149 = sub i32 %147, %148, !dbg !160
  %150 = getelementptr i16, i16* %109, i64 %143, !dbg !160
  %151 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %115, i32 0, !dbg !160
  br label %152, !dbg !160

; <label>:152:                                    ; preds = %152, %138
  %153 = phi i64 [ 0, %138 ], [ %166, %152 ]
  %154 = phi <4 x i32> [ %151, %138 ], [ %164, %152 ]
  %155 = phi <4 x i32> [ zeroinitializer, %138 ], [ %165, %152 ]
  %156 = getelementptr i16, i16* %109, i64 %153
  %157 = bitcast i16* %156 to <4 x i16>*, !dbg !162
  %158 = load <4 x i16>, <4 x i16>* %157, align 2, !dbg !162, !tbaa !126
  %159 = getelementptr i16, i16* %156, i64 4, !dbg !162
  %160 = bitcast i16* %159 to <4 x i16>*, !dbg !162
  %161 = load <4 x i16>, <4 x i16>* %160, align 2, !dbg !162, !tbaa !126
  %162 = zext <4 x i16> %158 to <4 x i32>, !dbg !162
  %163 = zext <4 x i16> %161 to <4 x i32>, !dbg !162
  %164 = add <4 x i32> %154, %162, !dbg !163
  %165 = add <4 x i32> %155, %163, !dbg !163
  %166 = add i64 %153, 8
  %167 = icmp eq i64 %166, %143
  br i1 %167, label %168, label %152, !llvm.loop !164

; <label>:168:                                    ; preds = %152
  %169 = add <4 x i32> %165, %164, !dbg !163
  %170 = shufflevector <4 x i32> %169, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !163
  %171 = add <4 x i32> %169, %170, !dbg !163
  %172 = shufflevector <4 x i32> %171, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !163
  %173 = add <4 x i32> %171, %172, !dbg !163
  %174 = extractelement <4 x i32> %173, i32 0, !dbg !163
  %175 = icmp eq i32 %141, 0
  br i1 %175, label %190, label %176, !dbg !160

; <label>:176:                                    ; preds = %168, %117
  %177 = phi i32 [ %112, %117 ], [ %149, %168 ]
  %178 = phi i32 [ %115, %117 ], [ %174, %168 ]
  %179 = phi i16* [ %109, %117 ], [ %150, %168 ]
  br label %180, !dbg !160

; <label>:180:                                    ; preds = %176, %180
  %181 = phi i32 [ %188, %180 ], [ %177, %176 ]
  %182 = phi i32 [ %187, %180 ], [ %178, %176 ]
  %183 = phi i16* [ %184, %180 ], [ %179, %176 ]
  %184 = getelementptr inbounds i16, i16* %183, i64 1, !dbg !160
  %185 = load i16, i16* %183, align 2, !dbg !162, !tbaa !126
  %186 = zext i16 %185 to i32, !dbg !162
  %187 = add i32 %182, %186, !dbg !163
  %188 = add nsw i32 %181, -2, !dbg !167
  %189 = icmp sgt i32 %181, 3, !dbg !158
  br i1 %189, label %180, label %190, !dbg !159, !llvm.loop !168

; <label>:190:                                    ; preds = %180, %168
  %191 = phi i32 [ %174, %168 ], [ %187, %180 ], !dbg !163
  %192 = add i32 %112, -2, !dbg !160
  %193 = sub i32 %192, %129, !dbg !160
  br label %194, !dbg !170

; <label>:194:                                    ; preds = %190, %108
  %195 = phi i16* [ %109, %108 ], [ %128, %190 ], !dbg !172
  %196 = phi i32 [ %115, %108 ], [ %191, %190 ], !dbg !172
  %197 = phi i32 [ %112, %108 ], [ %193, %190 ], !dbg !172
  %198 = icmp eq i32 %197, 1, !dbg !170
  br i1 %198, label %199, label %203, !dbg !173

; <label>:199:                                    ; preds = %194
  %200 = bitcast i16* %195 to i8*, !dbg !174
  %201 = load i8, i8* %200, align 1, !dbg !174, !tbaa !110
  %202 = zext i8 %201 to i32, !dbg !176
  br label %203, !dbg !176

; <label>:203:                                    ; preds = %199, %194
  %204 = phi i32 [ %202, %199 ], [ 0, %194 ]
  %205 = or i32 %204, %18, !dbg !177
  %206 = add i32 %205, %196, !dbg !178
  %207 = lshr i32 %206, 16, !dbg !179
  %208 = and i32 %206, 65535, !dbg !179
  %209 = add nuw nsw i32 %207, %208, !dbg !179
  %210 = lshr i32 %209, 16, !dbg !180
  %211 = and i32 %209, 65535, !dbg !180
  %212 = add nuw nsw i32 %210, %211, !dbg !180
  br i1 %5, label %213, label %219, !dbg !181

; <label>:213:                                    ; preds = %203
  %214 = shl nuw nsw i32 %212, 8, !dbg !182
  %215 = and i32 %214, 65280, !dbg !182
  %216 = lshr i32 %212, 8, !dbg !182
  %217 = and i32 %216, 255, !dbg !182
  %218 = or i32 %215, %217, !dbg !182
  br label %219, !dbg !185

; <label>:219:                                    ; preds = %213, %203
  %220 = phi i32 [ %218, %213 ], [ %212, %203 ], !dbg !117
  %221 = trunc i32 %220 to i16, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  ret i16 %221, !dbg !187
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip4_addr* nocapture readonly, %struct.ip4_addr* nocapture readonly) local_unnamed_addr #0 !dbg !188 {
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %3, i64 0, i32 0, !dbg !223
  %7 = load i32, i32* %6, align 4, !dbg !223, !tbaa !224
  %8 = and i32 %7, 65535, !dbg !227
  %9 = lshr i32 %7, 16, !dbg !229
  %10 = add nuw nsw i32 %8, %9, !dbg !230
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !231
  %12 = load i32, i32* %11, align 4, !dbg !231, !tbaa !224
  %13 = and i32 %12, 65535, !dbg !232
  %14 = add nuw nsw i32 %10, %13, !dbg !233
  %15 = lshr i32 %12, 16, !dbg !234
  %16 = add nuw nsw i32 %14, %15, !dbg !235
  %17 = lshr i32 %16, 16, !dbg !236
  %18 = and i32 %16, 65535, !dbg !236
  %19 = add nuw nsw i32 %17, %18, !dbg !236
  %20 = lshr i32 %19, 16, !dbg !237
  %21 = and i32 %19, 65535, !dbg !237
  %22 = add nuw nsw i32 %20, %21, !dbg !237
  %23 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %22) #7, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  ret i16 %23, !dbg !239
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i32) unnamed_addr #0 !dbg !240 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !256
  br i1 %5, label %46, label %6, !dbg !259

; <label>:6:                                      ; preds = %4, %32
  %7 = phi i32 [ %34, %32 ], [ 0, %4 ]
  %8 = phi %struct.pbuf* [ %36, %32 ], [ %0, %4 ]
  %9 = phi i32 [ %33, %32 ], [ %3, %4 ]
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 1, !dbg !260
  %11 = load i8*, i8** %10, align 8, !dbg !260, !tbaa !262
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 3, !dbg !265
  %13 = load i16, i16* %12, align 2, !dbg !265, !tbaa !266
  %14 = zext i16 %13 to i32, !dbg !267
  %15 = tail call zeroext i16 @lwip_standard_chksum(i8* %11, i32 %14) #7, !dbg !268
  %16 = zext i16 %15 to i32, !dbg !268
  %17 = add i32 %9, %16, !dbg !269
  %18 = lshr i32 %17, 16, !dbg !270
  %19 = and i32 %17, 65535, !dbg !270
  %20 = add nuw nsw i32 %18, %19, !dbg !270
  %21 = load i16, i16* %12, align 2, !dbg !271, !tbaa !266
  %22 = and i16 %21, 1, !dbg !273
  %23 = icmp eq i16 %22, 0, !dbg !274
  br i1 %23, label %32, label %24, !dbg !275

; <label>:24:                                     ; preds = %6
  %25 = icmp eq i32 %7, 0, !dbg !276
  %26 = zext i1 %25 to i32, !dbg !276
  %27 = shl nuw nsw i32 %20, 8, !dbg !278
  %28 = and i32 %27, 65280, !dbg !278
  %29 = lshr i32 %20, 8, !dbg !278
  %30 = and i32 %29, 255, !dbg !278
  %31 = or i32 %28, %30, !dbg !278
  br label %32, !dbg !279

; <label>:32:                                     ; preds = %6, %24
  %33 = phi i32 [ %31, %24 ], [ %20, %6 ], !dbg !280
  %34 = phi i32 [ %26, %24 ], [ %7, %6 ], !dbg !281
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 0, !dbg !282
  %36 = load %struct.pbuf*, %struct.pbuf** %35, align 8, !dbg !282, !tbaa !283
  %37 = icmp eq %struct.pbuf* %36, null, !dbg !256
  br i1 %37, label %38, label %6, !dbg !259, !llvm.loop !284

; <label>:38:                                     ; preds = %32
  %39 = icmp eq i32 %34, 0, !dbg !286
  br i1 %39, label %46, label %40, !dbg !288

; <label>:40:                                     ; preds = %38
  %41 = shl nsw i32 %33, 8, !dbg !289
  %42 = and i32 %41, 65280, !dbg !289
  %43 = lshr i32 %33, 8, !dbg !289
  %44 = and i32 %43, 255, !dbg !289
  %45 = or i32 %42, %44, !dbg !289
  br label %46, !dbg !291

; <label>:46:                                     ; preds = %4, %38, %40
  %47 = phi i32 [ %45, %40 ], [ %33, %38 ], [ %3, %4 ]
  %48 = zext i8 %1 to i16, !dbg !292
  %49 = tail call zeroext i16 @lwip_htons(i16 zeroext %48) #8, !dbg !293
  %50 = zext i16 %49 to i32, !dbg !294
  %51 = add i32 %47, %50, !dbg !295
  %52 = tail call zeroext i16 @lwip_htons(i16 zeroext %2) #8, !dbg !296
  %53 = zext i16 %52 to i32, !dbg !297
  %54 = add i32 %51, %53, !dbg !298
  %55 = lshr i32 %54, 16, !dbg !299
  %56 = and i32 %54, 65535, !dbg !299
  %57 = add nuw nsw i32 %55, %56, !dbg !299
  %58 = lshr i32 %57, 16, !dbg !300
  %59 = add nuw nsw i32 %58, %57, !dbg !300
  %60 = trunc i32 %59 to i16, !dbg !301
  %61 = xor i16 %60, -1, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i16 %61, !dbg !303
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip6_addr* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !304 {
  %6 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !334
  %7 = load i32, i32* %6, align 4, !dbg !334, !tbaa !138
  %8 = and i32 %7, 65535, !dbg !339
  %9 = lshr i32 %7, 16, !dbg !340
  %10 = add nuw nsw i32 %8, %9, !dbg !341
  %11 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 0, !dbg !342
  %12 = load i32, i32* %11, align 4, !dbg !342, !tbaa !138
  %13 = and i32 %12, 65535, !dbg !343
  %14 = add nuw nsw i32 %10, %13, !dbg !344
  %15 = lshr i32 %12, 16, !dbg !345
  %16 = add nuw nsw i32 %14, %15, !dbg !346
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !334
  %18 = load i32, i32* %17, align 4, !dbg !334, !tbaa !138
  %19 = and i32 %18, 65535, !dbg !339
  %20 = add nuw nsw i32 %19, %16, !dbg !347
  %21 = lshr i32 %18, 16, !dbg !340
  %22 = add nuw nsw i32 %20, %21, !dbg !341
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 1, !dbg !342
  %24 = load i32, i32* %23, align 4, !dbg !342, !tbaa !138
  %25 = and i32 %24, 65535, !dbg !343
  %26 = add nuw nsw i32 %22, %25, !dbg !344
  %27 = lshr i32 %24, 16, !dbg !345
  %28 = add i32 %26, %27, !dbg !346
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !334
  %30 = load i32, i32* %29, align 4, !dbg !334, !tbaa !138
  %31 = and i32 %30, 65535, !dbg !339
  %32 = add i32 %31, %28, !dbg !347
  %33 = lshr i32 %30, 16, !dbg !340
  %34 = add i32 %32, %33, !dbg !341
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 2, !dbg !342
  %36 = load i32, i32* %35, align 4, !dbg !342, !tbaa !138
  %37 = and i32 %36, 65535, !dbg !343
  %38 = add i32 %34, %37, !dbg !344
  %39 = lshr i32 %36, 16, !dbg !345
  %40 = add i32 %38, %39, !dbg !346
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !334
  %42 = load i32, i32* %41, align 4, !dbg !334, !tbaa !138
  %43 = and i32 %42, 65535, !dbg !339
  %44 = add i32 %43, %40, !dbg !347
  %45 = lshr i32 %42, 16, !dbg !340
  %46 = add i32 %44, %45, !dbg !341
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 3, !dbg !342
  %48 = load i32, i32* %47, align 4, !dbg !342, !tbaa !138
  %49 = and i32 %48, 65535, !dbg !343
  %50 = add i32 %46, %49, !dbg !344
  %51 = lshr i32 %48, 16, !dbg !345
  %52 = add i32 %50, %51, !dbg !346
  %53 = lshr i32 %52, 16, !dbg !348
  %54 = and i32 %52, 65535, !dbg !348
  %55 = add nuw nsw i32 %53, %54, !dbg !348
  %56 = lshr i32 %55, 16, !dbg !349
  %57 = and i32 %55, 65535, !dbg !349
  %58 = add nuw nsw i32 %56, %57, !dbg !349
  %59 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %58) #7, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  ret i16 %59, !dbg !351
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip_addr* nocapture readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !352 {
  %6 = icmp eq %struct.ip_addr* %4, null, !dbg !377
  br i1 %6, label %54, label %7, !dbg !377

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !377
  %9 = load i8, i8* %8, align 4, !dbg !377, !tbaa !379
  %10 = icmp eq i8 %9, 6, !dbg !377
  br i1 %10, label %11, label %54, !dbg !381

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !391
  %13 = load i32, i32* %12, align 4, !dbg !391, !tbaa !138
  %14 = and i32 %13, 65535, !dbg !393
  %15 = lshr i32 %13, 16, !dbg !394
  %16 = add nuw nsw i32 %14, %15, !dbg !395
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !396
  %18 = load i32, i32* %17, align 4, !dbg !396, !tbaa !138
  %19 = and i32 %18, 65535, !dbg !397
  %20 = add nuw nsw i32 %16, %19, !dbg !398
  %21 = lshr i32 %18, 16, !dbg !399
  %22 = add nuw nsw i32 %20, %21, !dbg !400
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !391
  %24 = load i32, i32* %23, align 4, !dbg !391, !tbaa !138
  %25 = and i32 %24, 65535, !dbg !393
  %26 = add nuw nsw i32 %22, %25, !dbg !401
  %27 = lshr i32 %24, 16, !dbg !394
  %28 = add nuw nsw i32 %26, %27, !dbg !395
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !396
  %30 = load i32, i32* %29, align 4, !dbg !396, !tbaa !138
  %31 = and i32 %30, 65535, !dbg !397
  %32 = add nuw nsw i32 %28, %31, !dbg !398
  %33 = lshr i32 %30, 16, !dbg !399
  %34 = add i32 %32, %33, !dbg !400
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !391
  %36 = load i32, i32* %35, align 4, !dbg !391, !tbaa !138
  %37 = and i32 %36, 65535, !dbg !393
  %38 = add i32 %34, %37, !dbg !401
  %39 = lshr i32 %36, 16, !dbg !394
  %40 = add i32 %38, %39, !dbg !395
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !396
  %42 = load i32, i32* %41, align 4, !dbg !396, !tbaa !138
  %43 = and i32 %42, 65535, !dbg !397
  %44 = add i32 %40, %43, !dbg !398
  %45 = lshr i32 %42, 16, !dbg !399
  %46 = add i32 %44, %45, !dbg !400
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !391
  %48 = load i32, i32* %47, align 4, !dbg !391, !tbaa !138
  %49 = and i32 %48, 65535, !dbg !393
  %50 = add i32 %46, %49, !dbg !401
  %51 = lshr i32 %48, 16, !dbg !394
  %52 = add i32 %50, %51, !dbg !395
  %53 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !396
  br label %61, !dbg !402

; <label>:54:                                     ; preds = %5, %7
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !410
  %56 = load i32, i32* %55, align 4, !dbg !410, !tbaa !224
  %57 = and i32 %56, 65535, !dbg !412
  %58 = lshr i32 %56, 16, !dbg !414
  %59 = add nuw nsw i32 %57, %58, !dbg !415
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !416
  br label %61, !dbg !417

; <label>:61:                                     ; preds = %54, %11
  %62 = phi i32* [ %60, %54 ], [ %53, %11 ]
  %63 = phi i32 [ %59, %54 ], [ %52, %11 ]
  %64 = load i32, i32* %62, align 4, !dbg !418, !tbaa !138
  %65 = and i32 %64, 65535, !dbg !418
  %66 = add i32 %63, %65, !dbg !418
  %67 = lshr i32 %64, 16, !dbg !418
  %68 = add i32 %66, %67, !dbg !418
  %69 = lshr i32 %68, 16, !dbg !418
  %70 = and i32 %68, 65535, !dbg !418
  %71 = add nuw nsw i32 %69, %70, !dbg !418
  %72 = lshr i32 %71, 16, !dbg !418
  %73 = and i32 %71, 65535, !dbg !418
  %74 = add nuw nsw i32 %72, %73, !dbg !418
  %75 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %74) #8, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  ret i16 %75, !dbg !419
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip4_addr* nocapture readonly, %struct.ip4_addr* nocapture readonly) local_unnamed_addr #0 !dbg !420 {
  %7 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !438
  %8 = load i32, i32* %7, align 4, !dbg !438, !tbaa !224
  %9 = and i32 %8, 65535, !dbg !440
  %10 = lshr i32 %8, 16, !dbg !442
  %11 = add nuw nsw i32 %9, %10, !dbg !443
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %5, i64 0, i32 0, !dbg !444
  %13 = load i32, i32* %12, align 4, !dbg !444, !tbaa !224
  %14 = and i32 %13, 65535, !dbg !445
  %15 = add nuw nsw i32 %11, %14, !dbg !446
  %16 = lshr i32 %13, 16, !dbg !447
  %17 = add nuw nsw i32 %15, %16, !dbg !448
  %18 = lshr i32 %17, 16, !dbg !449
  %19 = and i32 %17, 65535, !dbg !449
  %20 = add nuw nsw i32 %18, %19, !dbg !449
  %21 = lshr i32 %20, 16, !dbg !450
  %22 = and i32 %20, 65535, !dbg !450
  %23 = add nuw nsw i32 %21, %22, !dbg !450
  %24 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %23) #7, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  ret i16 %24, !dbg !452
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, i32) unnamed_addr #0 !dbg !453 {
  %6 = icmp ne %struct.pbuf* %0, null, !dbg !472
  %7 = icmp ne i16 %3, 0, !dbg !475
  %8 = and i1 %7, %6, !dbg !476
  br i1 %8, label %9, label %58, !dbg !477

; <label>:9:                                      ; preds = %5, %42
  %10 = phi i32 [ %44, %42 ], [ 0, %5 ]
  %11 = phi %struct.pbuf* [ %46, %42 ], [ %0, %5 ]
  %12 = phi i32 [ %43, %42 ], [ %4, %5 ]
  %13 = phi i16 [ %24, %42 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 3, !dbg !478
  %15 = load i16, i16* %14, align 2, !dbg !478, !tbaa !266
  %16 = icmp ugt i16 %15, %13, !dbg !481
  %17 = select i1 %16, i16 %13, i16 %15, !dbg !483
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 1, !dbg !484
  %19 = load i8*, i8** %18, align 8, !dbg !484, !tbaa !262
  %20 = zext i16 %17 to i32, !dbg !485
  %21 = tail call zeroext i16 @lwip_standard_chksum(i8* %19, i32 %20) #7, !dbg !486
  %22 = zext i16 %21 to i32, !dbg !486
  %23 = add i32 %12, %22, !dbg !487
  %24 = sub i16 %13, %17, !dbg !488
  %25 = icmp ult i16 %24, 32767, !dbg !489
  br i1 %25, label %27, label %26, !dbg !492

; <label>:26:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !493
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !496
  tail call void @ukplat_terminate(i32 3) #9, !dbg !496
  unreachable, !dbg !496

; <label>:27:                                     ; preds = %9
  %28 = lshr i32 %23, 16, !dbg !500
  %29 = and i32 %23, 65535, !dbg !500
  %30 = add nuw nsw i32 %28, %29, !dbg !500
  %31 = load i16, i16* %14, align 2, !dbg !501, !tbaa !266
  %32 = and i16 %31, 1, !dbg !503
  %33 = icmp eq i16 %32, 0, !dbg !504
  br i1 %33, label %42, label %34, !dbg !505

; <label>:34:                                     ; preds = %27
  %35 = icmp eq i32 %10, 0, !dbg !506
  %36 = zext i1 %35 to i32, !dbg !506
  %37 = shl nuw nsw i32 %30, 8, !dbg !508
  %38 = and i32 %37, 65280, !dbg !508
  %39 = lshr i32 %30, 8, !dbg !508
  %40 = and i32 %39, 255, !dbg !508
  %41 = or i32 %38, %40, !dbg !508
  br label %42, !dbg !509

; <label>:42:                                     ; preds = %27, %34
  %43 = phi i32 [ %41, %34 ], [ %30, %27 ], !dbg !510
  %44 = phi i32 [ %36, %34 ], [ %10, %27 ], !dbg !511
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 0, !dbg !512
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !512, !tbaa !283
  %47 = icmp ne %struct.pbuf* %46, null, !dbg !472
  %48 = icmp ne i16 %24, 0, !dbg !475
  %49 = and i1 %48, %47, !dbg !476
  br i1 %49, label %9, label %50, !dbg !477, !llvm.loop !513

; <label>:50:                                     ; preds = %42
  %51 = icmp eq i32 %44, 0, !dbg !515
  br i1 %51, label %58, label %52, !dbg !517

; <label>:52:                                     ; preds = %50
  %53 = shl nsw i32 %43, 8, !dbg !518
  %54 = and i32 %53, 65280, !dbg !518
  %55 = lshr i32 %43, 8, !dbg !518
  %56 = and i32 %55, 255, !dbg !518
  %57 = or i32 %54, %56, !dbg !518
  br label %58, !dbg !520

; <label>:58:                                     ; preds = %5, %50, %52
  %59 = phi i32 [ %57, %52 ], [ %43, %50 ], [ %4, %5 ]
  %60 = zext i8 %1 to i16, !dbg !521
  %61 = tail call zeroext i16 @lwip_htons(i16 zeroext %60) #8, !dbg !522
  %62 = zext i16 %61 to i32, !dbg !523
  %63 = add i32 %59, %62, !dbg !524
  %64 = tail call zeroext i16 @lwip_htons(i16 zeroext %2) #8, !dbg !525
  %65 = zext i16 %64 to i32, !dbg !526
  %66 = add i32 %63, %65, !dbg !527
  %67 = lshr i32 %66, 16, !dbg !528
  %68 = and i32 %66, 65535, !dbg !528
  %69 = add nuw nsw i32 %67, %68, !dbg !528
  %70 = lshr i32 %69, 16, !dbg !529
  %71 = add nuw nsw i32 %70, %69, !dbg !529
  %72 = trunc i32 %71 to i16, !dbg !530
  %73 = xor i16 %72, -1, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  ret i16 %73, !dbg !532
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip6_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip6_addr* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !533 {
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 0, !dbg !554
  %8 = load i32, i32* %7, align 4, !dbg !554, !tbaa !138
  %9 = and i32 %8, 65535, !dbg !559
  %10 = lshr i32 %8, 16, !dbg !560
  %11 = add nuw nsw i32 %9, %10, !dbg !561
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 0, !dbg !562
  %13 = load i32, i32* %12, align 4, !dbg !562, !tbaa !138
  %14 = and i32 %13, 65535, !dbg !563
  %15 = add nuw nsw i32 %11, %14, !dbg !564
  %16 = lshr i32 %13, 16, !dbg !565
  %17 = add nuw nsw i32 %15, %16, !dbg !566
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 1, !dbg !554
  %19 = load i32, i32* %18, align 4, !dbg !554, !tbaa !138
  %20 = and i32 %19, 65535, !dbg !559
  %21 = add nuw nsw i32 %20, %17, !dbg !567
  %22 = lshr i32 %19, 16, !dbg !560
  %23 = add nuw nsw i32 %21, %22, !dbg !561
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 1, !dbg !562
  %25 = load i32, i32* %24, align 4, !dbg !562, !tbaa !138
  %26 = and i32 %25, 65535, !dbg !563
  %27 = add nuw nsw i32 %23, %26, !dbg !564
  %28 = lshr i32 %25, 16, !dbg !565
  %29 = add i32 %27, %28, !dbg !566
  %30 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 2, !dbg !554
  %31 = load i32, i32* %30, align 4, !dbg !554, !tbaa !138
  %32 = and i32 %31, 65535, !dbg !559
  %33 = add i32 %32, %29, !dbg !567
  %34 = lshr i32 %31, 16, !dbg !560
  %35 = add i32 %33, %34, !dbg !561
  %36 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 2, !dbg !562
  %37 = load i32, i32* %36, align 4, !dbg !562, !tbaa !138
  %38 = and i32 %37, 65535, !dbg !563
  %39 = add i32 %35, %38, !dbg !564
  %40 = lshr i32 %37, 16, !dbg !565
  %41 = add i32 %39, %40, !dbg !566
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 3, !dbg !554
  %43 = load i32, i32* %42, align 4, !dbg !554, !tbaa !138
  %44 = and i32 %43, 65535, !dbg !559
  %45 = add i32 %44, %41, !dbg !567
  %46 = lshr i32 %43, 16, !dbg !560
  %47 = add i32 %45, %46, !dbg !561
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 3, !dbg !562
  %49 = load i32, i32* %48, align 4, !dbg !562, !tbaa !138
  %50 = and i32 %49, 65535, !dbg !563
  %51 = add i32 %47, %50, !dbg !564
  %52 = lshr i32 %49, 16, !dbg !565
  %53 = add i32 %51, %52, !dbg !566
  %54 = lshr i32 %53, 16, !dbg !568
  %55 = and i32 %53, 65535, !dbg !568
  %56 = add nuw nsw i32 %54, %55, !dbg !568
  %57 = lshr i32 %56, 16, !dbg !569
  %58 = and i32 %56, 65535, !dbg !569
  %59 = add nuw nsw i32 %57, %58, !dbg !569
  %60 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %59) #7, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  ret i16 %60, !dbg !571
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip_addr* nocapture readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !572 {
  %7 = icmp eq %struct.ip_addr* %5, null, !dbg !588
  br i1 %7, label %55, label %8, !dbg !588

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !588
  %10 = load i8, i8* %9, align 4, !dbg !588, !tbaa !379
  %11 = icmp eq i8 %10, 6, !dbg !588
  br i1 %11, label %12, label %55, !dbg !590

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !601
  %14 = load i32, i32* %13, align 4, !dbg !601, !tbaa !138
  %15 = and i32 %14, 65535, !dbg !603
  %16 = lshr i32 %14, 16, !dbg !604
  %17 = add nuw nsw i32 %15, %16, !dbg !605
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !606
  %19 = load i32, i32* %18, align 4, !dbg !606, !tbaa !138
  %20 = and i32 %19, 65535, !dbg !607
  %21 = add nuw nsw i32 %17, %20, !dbg !608
  %22 = lshr i32 %19, 16, !dbg !609
  %23 = add nuw nsw i32 %21, %22, !dbg !610
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !601
  %25 = load i32, i32* %24, align 4, !dbg !601, !tbaa !138
  %26 = and i32 %25, 65535, !dbg !603
  %27 = add nuw nsw i32 %23, %26, !dbg !611
  %28 = lshr i32 %25, 16, !dbg !604
  %29 = add nuw nsw i32 %27, %28, !dbg !605
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !606
  %31 = load i32, i32* %30, align 4, !dbg !606, !tbaa !138
  %32 = and i32 %31, 65535, !dbg !607
  %33 = add nuw nsw i32 %29, %32, !dbg !608
  %34 = lshr i32 %31, 16, !dbg !609
  %35 = add i32 %33, %34, !dbg !610
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !601
  %37 = load i32, i32* %36, align 4, !dbg !601, !tbaa !138
  %38 = and i32 %37, 65535, !dbg !603
  %39 = add i32 %35, %38, !dbg !611
  %40 = lshr i32 %37, 16, !dbg !604
  %41 = add i32 %39, %40, !dbg !605
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !606
  %43 = load i32, i32* %42, align 4, !dbg !606, !tbaa !138
  %44 = and i32 %43, 65535, !dbg !607
  %45 = add i32 %41, %44, !dbg !608
  %46 = lshr i32 %43, 16, !dbg !609
  %47 = add i32 %45, %46, !dbg !610
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !601
  %49 = load i32, i32* %48, align 4, !dbg !601, !tbaa !138
  %50 = and i32 %49, 65535, !dbg !603
  %51 = add i32 %47, %50, !dbg !611
  %52 = lshr i32 %49, 16, !dbg !604
  %53 = add i32 %51, %52, !dbg !605
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !606
  br label %62, !dbg !612

; <label>:55:                                     ; preds = %6, %8
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !621
  %57 = load i32, i32* %56, align 4, !dbg !621, !tbaa !224
  %58 = and i32 %57, 65535, !dbg !623
  %59 = lshr i32 %57, 16, !dbg !625
  %60 = add nuw nsw i32 %58, %59, !dbg !626
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !627
  br label %62, !dbg !628

; <label>:62:                                     ; preds = %55, %12
  %63 = phi i32* [ %61, %55 ], [ %54, %12 ]
  %64 = phi i32 [ %60, %55 ], [ %53, %12 ]
  %65 = load i32, i32* %63, align 4, !dbg !629, !tbaa !138
  %66 = and i32 %65, 65535, !dbg !629
  %67 = add i32 %64, %66, !dbg !629
  %68 = lshr i32 %65, 16, !dbg !629
  %69 = add i32 %67, %68, !dbg !629
  %70 = lshr i32 %69, 16, !dbg !629
  %71 = and i32 %69, 65535, !dbg !629
  %72 = add nuw nsw i32 %70, %71, !dbg !629
  %73 = lshr i32 %72, 16, !dbg !629
  %74 = and i32 %72, 65535, !dbg !629
  %75 = add nuw nsw i32 %73, %74, !dbg !629
  %76 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %75) #8, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  ret i16 %76, !dbg !630
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !631 {
  %3 = zext i16 %1 to i32, !dbg !639
  %4 = tail call zeroext i16 @lwip_standard_chksum(i8* %0, i32 %3) #7, !dbg !640
  %5 = xor i16 %4, -1, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret i16 %5, !dbg !642
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pbuf(%struct.pbuf* readonly) local_unnamed_addr #0 !dbg !643 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !655
  br i1 %2, label %43, label %3, !dbg !658

; <label>:3:                                      ; preds = %1, %29
  %4 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %5 = phi %struct.pbuf* [ %33, %29 ], [ %0, %1 ]
  %6 = phi i32 [ %30, %29 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !659
  %8 = load i8*, i8** %7, align 8, !dbg !659, !tbaa !262
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !661
  %10 = load i16, i16* %9, align 2, !dbg !661, !tbaa !266
  %11 = zext i16 %10 to i32, !dbg !662
  %12 = tail call zeroext i16 @lwip_standard_chksum(i8* %8, i32 %11) #7, !dbg !663
  %13 = zext i16 %12 to i32, !dbg !663
  %14 = add nsw i32 %6, %13, !dbg !664
  %15 = lshr i32 %14, 16, !dbg !665
  %16 = and i32 %14, 65535, !dbg !665
  %17 = add nuw nsw i32 %15, %16, !dbg !665
  %18 = load i16, i16* %9, align 2, !dbg !666, !tbaa !266
  %19 = and i16 %18, 1, !dbg !668
  %20 = icmp eq i16 %19, 0, !dbg !669
  br i1 %20, label %29, label %21, !dbg !670

; <label>:21:                                     ; preds = %3
  %22 = icmp eq i32 %4, 0, !dbg !671
  %23 = zext i1 %22 to i32, !dbg !671
  %24 = shl nuw nsw i32 %17, 8, !dbg !673
  %25 = and i32 %24, 65280, !dbg !673
  %26 = lshr i32 %17, 8, !dbg !673
  %27 = and i32 %26, 255, !dbg !673
  %28 = or i32 %25, %27, !dbg !673
  br label %29, !dbg !674

; <label>:29:                                     ; preds = %3, %21
  %30 = phi i32 [ %28, %21 ], [ %17, %3 ], !dbg !675
  %31 = phi i32 [ %23, %21 ], [ %4, %3 ], !dbg !676
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !677
  %33 = load %struct.pbuf*, %struct.pbuf** %32, align 8, !dbg !677, !tbaa !283
  %34 = icmp eq %struct.pbuf* %33, null, !dbg !655
  br i1 %34, label %35, label %3, !dbg !658, !llvm.loop !678

; <label>:35:                                     ; preds = %29
  %36 = icmp eq i32 %31, 0, !dbg !680
  br i1 %36, label %43, label %37, !dbg !682

; <label>:37:                                     ; preds = %35
  %38 = shl nsw i32 %30, 8, !dbg !683
  %39 = and i32 %38, 65280, !dbg !683
  %40 = lshr i32 %30, 8, !dbg !683
  %41 = and i32 %40, 255, !dbg !683
  %42 = or i32 %39, %41, !dbg !683
  br label %43, !dbg !685

; <label>:43:                                     ; preds = %1, %35, %37
  %44 = phi i32 [ %42, %37 ], [ %30, %35 ], [ 0, %1 ], !dbg !676
  %45 = trunc i32 %44 to i16, !dbg !686
  %46 = xor i16 %45, -1, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  ret i16 %46, !dbg !688
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !690
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !690
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !692
  call void @llvm.va_start(i8* nonnull %3), !dbg !692
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !693
  call void @llvm.va_end(i8* nonnull %3), !dbg !696
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  ret void, !dbg !697
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !61)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !26, globals: !55)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/inet_chksum.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !19}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !13, line: 54, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!18 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !20, line: 68, baseType: !14, size: 32, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!26 = !{!27, !36, !40, !41, !47, !49, !51, !43, !54, !14}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !30, line: 125, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 43, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_ptr_t", file: !30, line: 135, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !32, line: 82, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !34, line: 232, baseType: !39)
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !30, line: 127, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !32, line: 36, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !34, line: 57, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !30, line: 129, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 48, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 79, baseType: !14)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !{!0, !56}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 112, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 14)
!61 = !{!62, !63}
!62 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!63 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !65, line: 32, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, elements: !74)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !68, file: !10, line: 196, baseType: !14, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !68, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !68, file: !10, line: 196, baseType: !54, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !68, file: !10, line: 196, baseType: !54, size: 64, offset: 128)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 8)
!79 = !{i32 2, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 4}
!82 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!83 = distinct !DISubprogram(name: "lwip_standard_chksum", scope: !10, file: !10, line: 189, type: !84, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !87)
!84 = !DISubroutineType(types: !85)
!85 = !{!43, !47, !86}
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96}
!88 = !DILocalVariable(name: "dataptr", arg: 1, scope: !83, file: !10, line: 189, type: !47)
!89 = !DILocalVariable(name: "len", arg: 2, scope: !83, file: !10, line: 189, type: !86)
!90 = !DILocalVariable(name: "pb", scope: !83, file: !10, line: 191, type: !27)
!91 = !DILocalVariable(name: "ps", scope: !83, file: !10, line: 192, type: !41)
!92 = !DILocalVariable(name: "t", scope: !83, file: !10, line: 193, type: !43)
!93 = !DILocalVariable(name: "pl", scope: !83, file: !10, line: 194, type: !49)
!94 = !DILocalVariable(name: "sum", scope: !83, file: !10, line: 195, type: !51)
!95 = !DILocalVariable(name: "tmp", scope: !83, file: !10, line: 195, type: !51)
!96 = !DILocalVariable(name: "odd", scope: !83, file: !10, line: 197, type: !86)
!97 = !DILocation(line: 189, column: 34, scope: !83)
!98 = !DILocation(line: 189, column: 47, scope: !83)
!99 = !DILocation(line: 191, column: 15, scope: !83)
!100 = !DILocation(line: 193, column: 9, scope: !83)
!101 = !DILocation(line: 195, column: 9, scope: !83)
!102 = !DILocation(line: 197, column: 14, scope: !83)
!103 = !DILocation(line: 199, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !83, file: !10, line: 199, column: 7)
!105 = !DILocation(line: 199, column: 18, scope: !104)
!106 = !DILocation(line: 199, column: 11, scope: !104)
!107 = !DILocation(line: 200, column: 26, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !10, line: 199, column: 23)
!109 = !DILocation(line: 200, column: 23, scope: !108)
!110 = !{!111, !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !DILocation(line: 201, column: 8, scope: !108)
!114 = !DILocation(line: 202, column: 3, scope: !108)
!115 = !DILocation(line: 206, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !10, line: 206, column: 7)
!117 = !DILocation(line: 0, scope: !83)
!118 = !DILocation(line: 204, column: 8, scope: !83)
!119 = !DILocation(line: 192, column: 16, scope: !83)
!120 = !DILocation(line: 206, column: 22, scope: !116)
!121 = !DILocation(line: 206, column: 34, scope: !116)
!122 = !DILocation(line: 206, column: 27, scope: !116)
!123 = !DILocation(line: 207, column: 15, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !10, line: 206, column: 39)
!125 = !DILocation(line: 207, column: 12, scope: !124)
!126 = !{!127, !127, i64 0}
!127 = !{!"short", !111, i64 0}
!128 = !DILocation(line: 208, column: 9, scope: !124)
!129 = !DILocation(line: 209, column: 3, scope: !124)
!130 = !DILocation(line: 0, scope: !108)
!131 = !DILocation(line: 211, column: 8, scope: !83)
!132 = !DILocation(line: 194, column: 16, scope: !83)
!133 = !DILocation(line: 213, column: 14, scope: !83)
!134 = !DILocation(line: 213, column: 3, scope: !83)
!135 = !DILocation(line: 214, column: 20, scope: !136)
!136 = distinct !DILexicalBlock(scope: !83, file: !10, line: 213, column: 20)
!137 = !DILocation(line: 214, column: 17, scope: !136)
!138 = !{!139, !139, i64 0}
!139 = !{!"int", !111, i64 0}
!140 = !DILocation(line: 214, column: 15, scope: !136)
!141 = !DILocation(line: 195, column: 18, scope: !83)
!142 = !DILocation(line: 215, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !10, line: 215, column: 9)
!144 = !DILocation(line: 215, column: 9, scope: !136)
!145 = !DILocation(line: 219, column: 20, scope: !136)
!146 = !DILocation(line: 219, column: 17, scope: !136)
!147 = !DILocation(line: 219, column: 15, scope: !136)
!148 = !DILocation(line: 220, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !136, file: !10, line: 220, column: 9)
!150 = !DILocation(line: 220, column: 9, scope: !136)
!151 = !DILocation(line: 224, column: 9, scope: !136)
!152 = distinct !{!152, !134, !153}
!153 = !DILocation(line: 225, column: 3, scope: !83)
!154 = !DILocation(line: 228, column: 9, scope: !83)
!155 = !DILocation(line: 0, scope: !136)
!156 = !DILocation(line: 0, scope: !157)
!157 = distinct !DILexicalBlock(scope: !149, file: !10, line: 220, column: 20)
!158 = !DILocation(line: 233, column: 14, scope: !83)
!159 = !DILocation(line: 233, column: 3, scope: !83)
!160 = !DILocation(line: 234, column: 15, scope: !161)
!161 = distinct !DILexicalBlock(scope: !83, file: !10, line: 233, column: 19)
!162 = !DILocation(line: 234, column: 12, scope: !161)
!163 = !DILocation(line: 234, column: 9, scope: !161)
!164 = distinct !{!164, !159, !165, !166}
!165 = !DILocation(line: 236, column: 3, scope: !83)
!166 = !{!"llvm.loop.isvectorized", i32 1}
!167 = !DILocation(line: 235, column: 9, scope: !161)
!168 = distinct !{!168, !159, !165, !169, !166}
!169 = !{!"llvm.loop.unroll.runtime.disable"}
!170 = !DILocation(line: 239, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !83, file: !10, line: 239, column: 7)
!172 = !DILocation(line: 0, scope: !161)
!173 = !DILocation(line: 239, column: 7, scope: !83)
!174 = !DILocation(line: 240, column: 23, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !10, line: 239, column: 16)
!176 = !DILocation(line: 241, column: 3, scope: !175)
!177 = !DILocation(line: 243, column: 10, scope: !83)
!178 = !DILocation(line: 243, column: 7, scope: !83)
!179 = !DILocation(line: 247, column: 9, scope: !83)
!180 = !DILocation(line: 248, column: 9, scope: !83)
!181 = !DILocation(line: 250, column: 7, scope: !83)
!182 = !DILocation(line: 251, column: 11, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !10, line: 250, column: 12)
!184 = distinct !DILexicalBlock(scope: !83, file: !10, line: 250, column: 7)
!185 = !DILocation(line: 252, column: 3, scope: !183)
!186 = !DILocation(line: 254, column: 10, scope: !83)
!187 = !DILocation(line: 254, column: 3, scope: !83)
!188 = distinct !DISubprogram(name: "inet_chksum_pseudo", scope: !10, file: !10, line: 310, type: !189, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !210)
!189 = !DISubroutineType(types: !190)
!190 = !{!43, !191, !29, !43, !203, !203}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !193, line: 186, size: 192, elements: !194)
!193 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !193, line: 188, baseType: !191, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !192, file: !193, line: 191, baseType: !54, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !192, file: !193, line: 200, baseType: !43, size: 16, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !192, file: !193, line: 203, baseType: !43, size: 16, offset: 144)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !192, file: !193, line: 208, baseType: !29, size: 8, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !193, line: 211, baseType: !29, size: 8, offset: 168)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !192, file: !193, line: 218, baseType: !29, size: 8, offset: 176)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !192, file: !193, line: 221, baseType: !29, size: 8, offset: 184)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !206, line: 57, baseType: !207)
!206 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !206, line: 51, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !207, file: !206, line: 52, baseType: !51, size: 32)
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DILocalVariable(name: "p", arg: 1, scope: !188, file: !10, line: 310, type: !191)
!212 = !DILocalVariable(name: "proto", arg: 2, scope: !188, file: !10, line: 310, type: !29)
!213 = !DILocalVariable(name: "proto_len", arg: 3, scope: !188, file: !10, line: 310, type: !43)
!214 = !DILocalVariable(name: "src", arg: 4, scope: !188, file: !10, line: 311, type: !203)
!215 = !DILocalVariable(name: "dest", arg: 5, scope: !188, file: !10, line: 311, type: !203)
!216 = !DILocalVariable(name: "acc", scope: !188, file: !10, line: 313, type: !51)
!217 = !DILocalVariable(name: "addr", scope: !188, file: !10, line: 314, type: !51)
!218 = !DILocation(line: 310, column: 33, scope: !188)
!219 = !DILocation(line: 310, column: 41, scope: !188)
!220 = !DILocation(line: 310, column: 54, scope: !188)
!221 = !DILocation(line: 311, column: 38, scope: !188)
!222 = !DILocation(line: 311, column: 61, scope: !188)
!223 = !DILocation(line: 316, column: 10, scope: !188)
!224 = !{!225, !139, i64 0}
!225 = !{!"ip4_addr", !139, i64 0}
!226 = !DILocation(line: 314, column: 9, scope: !188)
!227 = !DILocation(line: 317, column: 15, scope: !188)
!228 = !DILocation(line: 313, column: 9, scope: !188)
!229 = !DILocation(line: 318, column: 30, scope: !188)
!230 = !DILocation(line: 318, column: 21, scope: !188)
!231 = !DILocation(line: 319, column: 10, scope: !188)
!232 = !DILocation(line: 320, column: 29, scope: !188)
!233 = !DILocation(line: 320, column: 21, scope: !188)
!234 = !DILocation(line: 321, column: 30, scope: !188)
!235 = !DILocation(line: 321, column: 21, scope: !188)
!236 = !DILocation(line: 323, column: 9, scope: !188)
!237 = !DILocation(line: 324, column: 9, scope: !188)
!238 = !DILocation(line: 326, column: 10, scope: !188)
!239 = !DILocation(line: 326, column: 3, scope: !188)
!240 = distinct !DISubprogram(name: "inet_cksum_pseudo_base", scope: !10, file: !10, line: 260, type: !241, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!43, !191, !29, !43, !51}
!243 = !{!244, !245, !246, !247, !248, !249}
!244 = !DILocalVariable(name: "p", arg: 1, scope: !240, file: !10, line: 260, type: !191)
!245 = !DILocalVariable(name: "proto", arg: 2, scope: !240, file: !10, line: 260, type: !29)
!246 = !DILocalVariable(name: "proto_len", arg: 3, scope: !240, file: !10, line: 260, type: !43)
!247 = !DILocalVariable(name: "acc", arg: 4, scope: !240, file: !10, line: 260, type: !51)
!248 = !DILocalVariable(name: "q", scope: !240, file: !10, line: 262, type: !191)
!249 = !DILocalVariable(name: "swapped", scope: !240, file: !10, line: 263, type: !86)
!250 = !DILocation(line: 260, column: 37, scope: !240)
!251 = !DILocation(line: 260, column: 45, scope: !240)
!252 = !DILocation(line: 260, column: 58, scope: !240)
!253 = !DILocation(line: 260, column: 75, scope: !240)
!254 = !DILocation(line: 263, column: 7, scope: !240)
!255 = !DILocation(line: 262, column: 16, scope: !240)
!256 = !DILocation(line: 266, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !10, line: 266, column: 3)
!258 = distinct !DILexicalBlock(scope: !240, file: !10, line: 266, column: 3)
!259 = !DILocation(line: 266, column: 3, scope: !258)
!260 = !DILocation(line: 269, column: 27, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !10, line: 266, column: 39)
!262 = !{!263, !264, i64 8}
!263 = !{!"pbuf", !264, i64 0, !264, i64 8, !127, i64 16, !127, i64 18, !111, i64 20, !111, i64 21, !111, i64 22, !111, i64 23}
!264 = !{!"any pointer", !111, i64 0}
!265 = !DILocation(line: 269, column: 39, scope: !261)
!266 = !{!263, !127, i64 18}
!267 = !DILocation(line: 269, column: 36, scope: !261)
!268 = !DILocation(line: 269, column: 12, scope: !261)
!269 = !DILocation(line: 269, column: 9, scope: !261)
!270 = !DILocation(line: 273, column: 11, scope: !261)
!271 = !DILocation(line: 274, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !261, file: !10, line: 274, column: 9)
!273 = !DILocation(line: 274, column: 16, scope: !272)
!274 = !DILocation(line: 274, column: 20, scope: !272)
!275 = !DILocation(line: 274, column: 9, scope: !261)
!276 = !DILocation(line: 275, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !10, line: 274, column: 26)
!278 = !DILocation(line: 276, column: 13, scope: !277)
!279 = !DILocation(line: 277, column: 5, scope: !277)
!280 = !DILocation(line: 0, scope: !261)
!281 = !DILocation(line: 0, scope: !240)
!282 = !DILocation(line: 266, column: 33, scope: !257)
!283 = !{!263, !264, i64 0}
!284 = distinct !{!284, !259, !285}
!285 = !DILocation(line: 279, column: 3, scope: !258)
!286 = !DILocation(line: 281, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !240, file: !10, line: 281, column: 7)
!288 = !DILocation(line: 281, column: 7, scope: !240)
!289 = !DILocation(line: 282, column: 11, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !10, line: 281, column: 16)
!291 = !DILocation(line: 283, column: 3, scope: !290)
!292 = !DILocation(line: 285, column: 28, scope: !240)
!293 = !DILocation(line: 285, column: 17, scope: !240)
!294 = !DILocation(line: 285, column: 10, scope: !240)
!295 = !DILocation(line: 285, column: 7, scope: !240)
!296 = !DILocation(line: 286, column: 17, scope: !240)
!297 = !DILocation(line: 286, column: 10, scope: !240)
!298 = !DILocation(line: 286, column: 7, scope: !240)
!299 = !DILocation(line: 290, column: 9, scope: !240)
!300 = !DILocation(line: 291, column: 9, scope: !240)
!301 = !DILocation(line: 293, column: 23, scope: !240)
!302 = !DILocation(line: 293, column: 17, scope: !240)
!303 = !DILocation(line: 293, column: 3, scope: !240)
!304 = distinct !DISubprogram(name: "ip6_chksum_pseudo", scope: !10, file: !10, line: 343, type: !305, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !318)
!305 = !DISubroutineType(types: !306)
!306 = !{!43, !191, !29, !43, !307, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !310, line: 67, baseType: !311)
!310 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !310, line: 59, size: 160, elements: !312)
!312 = !{!313, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !311, file: !310, line: 60, baseType: !314, size: 128)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 4)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !311, file: !310, line: 62, baseType: !29, size: 8, offset: 128)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326}
!319 = !DILocalVariable(name: "p", arg: 1, scope: !304, file: !10, line: 343, type: !191)
!320 = !DILocalVariable(name: "proto", arg: 2, scope: !304, file: !10, line: 343, type: !29)
!321 = !DILocalVariable(name: "proto_len", arg: 3, scope: !304, file: !10, line: 343, type: !43)
!322 = !DILocalVariable(name: "src", arg: 4, scope: !304, file: !10, line: 344, type: !307)
!323 = !DILocalVariable(name: "dest", arg: 5, scope: !304, file: !10, line: 344, type: !307)
!324 = !DILocalVariable(name: "acc", scope: !304, file: !10, line: 346, type: !51)
!325 = !DILocalVariable(name: "addr", scope: !304, file: !10, line: 347, type: !51)
!326 = !DILocalVariable(name: "addr_part", scope: !304, file: !10, line: 348, type: !29)
!327 = !DILocation(line: 343, column: 32, scope: !304)
!328 = !DILocation(line: 343, column: 40, scope: !304)
!329 = !DILocation(line: 343, column: 53, scope: !304)
!330 = !DILocation(line: 344, column: 37, scope: !304)
!331 = !DILocation(line: 344, column: 60, scope: !304)
!332 = !DILocation(line: 346, column: 9, scope: !304)
!333 = !DILocation(line: 348, column: 8, scope: !304)
!334 = !DILocation(line: 351, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !10, line: 350, column: 51)
!336 = distinct !DILexicalBlock(scope: !337, file: !10, line: 350, column: 3)
!337 = distinct !DILexicalBlock(scope: !304, file: !10, line: 350, column: 3)
!338 = !DILocation(line: 347, column: 9, scope: !304)
!339 = !DILocation(line: 352, column: 31, scope: !335)
!340 = !DILocation(line: 353, column: 32, scope: !335)
!341 = !DILocation(line: 353, column: 23, scope: !335)
!342 = !DILocation(line: 354, column: 12, scope: !335)
!343 = !DILocation(line: 355, column: 31, scope: !335)
!344 = !DILocation(line: 355, column: 23, scope: !335)
!345 = !DILocation(line: 356, column: 32, scope: !335)
!346 = !DILocation(line: 356, column: 23, scope: !335)
!347 = !DILocation(line: 352, column: 23, scope: !335)
!348 = !DILocation(line: 359, column: 9, scope: !304)
!349 = !DILocation(line: 360, column: 9, scope: !304)
!350 = !DILocation(line: 362, column: 10, scope: !304)
!351 = !DILocation(line: 362, column: 3, scope: !304)
!352 = distinct !DISubprogram(name: "ip_chksum_pseudo", scope: !10, file: !10, line: 379, type: !353, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !366)
!353 = !DISubroutineType(types: !354)
!354 = !{!43, !191, !29, !43, !355, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !13, line: 76, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !13, line: 69, size: 192, elements: !359)
!359 = !{!360, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !358, file: !13, line: 73, baseType: !361, size: 160)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !13, line: 70, size: 160, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !361, file: !13, line: 71, baseType: !309, size: 160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !361, file: !13, line: 72, baseType: !205, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !13, line: 75, baseType: !29, size: 8, offset: 160)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DILocalVariable(name: "p", arg: 1, scope: !352, file: !10, line: 379, type: !191)
!368 = !DILocalVariable(name: "proto", arg: 2, scope: !352, file: !10, line: 379, type: !29)
!369 = !DILocalVariable(name: "proto_len", arg: 3, scope: !352, file: !10, line: 379, type: !43)
!370 = !DILocalVariable(name: "src", arg: 4, scope: !352, file: !10, line: 380, type: !355)
!371 = !DILocalVariable(name: "dest", arg: 5, scope: !352, file: !10, line: 380, type: !355)
!372 = !DILocation(line: 379, column: 31, scope: !352)
!373 = !DILocation(line: 379, column: 39, scope: !352)
!374 = !DILocation(line: 379, column: 52, scope: !352)
!375 = !DILocation(line: 380, column: 35, scope: !352)
!376 = !DILocation(line: 380, column: 57, scope: !352)
!377 = !DILocation(line: 383, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !352, file: !10, line: 383, column: 7)
!379 = !{!380, !111, i64 20}
!380 = !{!"ip_addr", !111, i64 0, !111, i64 20}
!381 = !DILocation(line: 383, column: 7, scope: !352)
!382 = !DILocation(line: 343, column: 32, scope: !304, inlinedAt: !383)
!383 = distinct !DILocation(line: 384, column: 12, scope: !384)
!384 = distinct !DILexicalBlock(scope: !378, file: !10, line: 383, column: 23)
!385 = !DILocation(line: 343, column: 40, scope: !304, inlinedAt: !383)
!386 = !DILocation(line: 343, column: 53, scope: !304, inlinedAt: !383)
!387 = !DILocation(line: 344, column: 37, scope: !304, inlinedAt: !383)
!388 = !DILocation(line: 344, column: 60, scope: !304, inlinedAt: !383)
!389 = !DILocation(line: 346, column: 9, scope: !304, inlinedAt: !383)
!390 = !DILocation(line: 348, column: 8, scope: !304, inlinedAt: !383)
!391 = !DILocation(line: 351, column: 12, scope: !335, inlinedAt: !383)
!392 = !DILocation(line: 347, column: 9, scope: !304, inlinedAt: !383)
!393 = !DILocation(line: 352, column: 31, scope: !335, inlinedAt: !383)
!394 = !DILocation(line: 353, column: 32, scope: !335, inlinedAt: !383)
!395 = !DILocation(line: 353, column: 23, scope: !335, inlinedAt: !383)
!396 = !DILocation(line: 354, column: 12, scope: !335, inlinedAt: !383)
!397 = !DILocation(line: 355, column: 31, scope: !335, inlinedAt: !383)
!398 = !DILocation(line: 355, column: 23, scope: !335, inlinedAt: !383)
!399 = !DILocation(line: 356, column: 32, scope: !335, inlinedAt: !383)
!400 = !DILocation(line: 356, column: 23, scope: !335, inlinedAt: !383)
!401 = !DILocation(line: 352, column: 23, scope: !335, inlinedAt: !383)
!402 = !DILocation(line: 384, column: 5, scope: !384)
!403 = !DILocation(line: 310, column: 33, scope: !188, inlinedAt: !404)
!404 = distinct !DILocation(line: 392, column: 12, scope: !405)
!405 = distinct !DILexicalBlock(scope: !378, file: !10, line: 391, column: 3)
!406 = !DILocation(line: 310, column: 41, scope: !188, inlinedAt: !404)
!407 = !DILocation(line: 310, column: 54, scope: !188, inlinedAt: !404)
!408 = !DILocation(line: 311, column: 38, scope: !188, inlinedAt: !404)
!409 = !DILocation(line: 311, column: 61, scope: !188, inlinedAt: !404)
!410 = !DILocation(line: 316, column: 10, scope: !188, inlinedAt: !404)
!411 = !DILocation(line: 314, column: 9, scope: !188, inlinedAt: !404)
!412 = !DILocation(line: 317, column: 15, scope: !188, inlinedAt: !404)
!413 = !DILocation(line: 313, column: 9, scope: !188, inlinedAt: !404)
!414 = !DILocation(line: 318, column: 30, scope: !188, inlinedAt: !404)
!415 = !DILocation(line: 318, column: 21, scope: !188, inlinedAt: !404)
!416 = !DILocation(line: 319, column: 10, scope: !188, inlinedAt: !404)
!417 = !DILocation(line: 392, column: 5, scope: !405)
!418 = !DILocation(line: 0, scope: !384)
!419 = !DILocation(line: 395, column: 1, scope: !352)
!420 = distinct !DISubprogram(name: "inet_chksum_pseudo_partial", scope: !10, file: !10, line: 456, type: !421, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!43, !191, !29, !43, !43, !203, !203}
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431}
!424 = !DILocalVariable(name: "p", arg: 1, scope: !420, file: !10, line: 456, type: !191)
!425 = !DILocalVariable(name: "proto", arg: 2, scope: !420, file: !10, line: 456, type: !29)
!426 = !DILocalVariable(name: "proto_len", arg: 3, scope: !420, file: !10, line: 456, type: !43)
!427 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !420, file: !10, line: 457, type: !43)
!428 = !DILocalVariable(name: "src", arg: 5, scope: !420, file: !10, line: 457, type: !203)
!429 = !DILocalVariable(name: "dest", arg: 6, scope: !420, file: !10, line: 457, type: !203)
!430 = !DILocalVariable(name: "acc", scope: !420, file: !10, line: 459, type: !51)
!431 = !DILocalVariable(name: "addr", scope: !420, file: !10, line: 460, type: !51)
!432 = !DILocation(line: 456, column: 41, scope: !420)
!433 = !DILocation(line: 456, column: 49, scope: !420)
!434 = !DILocation(line: 456, column: 62, scope: !420)
!435 = !DILocation(line: 457, column: 34, scope: !420)
!436 = !DILocation(line: 457, column: 64, scope: !420)
!437 = !DILocation(line: 457, column: 87, scope: !420)
!438 = !DILocation(line: 462, column: 10, scope: !420)
!439 = !DILocation(line: 460, column: 9, scope: !420)
!440 = !DILocation(line: 463, column: 15, scope: !420)
!441 = !DILocation(line: 459, column: 9, scope: !420)
!442 = !DILocation(line: 464, column: 30, scope: !420)
!443 = !DILocation(line: 464, column: 21, scope: !420)
!444 = !DILocation(line: 465, column: 10, scope: !420)
!445 = !DILocation(line: 466, column: 29, scope: !420)
!446 = !DILocation(line: 466, column: 21, scope: !420)
!447 = !DILocation(line: 467, column: 30, scope: !420)
!448 = !DILocation(line: 467, column: 21, scope: !420)
!449 = !DILocation(line: 469, column: 9, scope: !420)
!450 = !DILocation(line: 470, column: 9, scope: !420)
!451 = !DILocation(line: 472, column: 10, scope: !420)
!452 = !DILocation(line: 472, column: 3, scope: !420)
!453 = distinct !DISubprogram(name: "inet_cksum_pseudo_partial_base", scope: !10, file: !10, line: 399, type: !454, isLocal: true, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!43, !191, !29, !43, !43, !51}
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464}
!457 = !DILocalVariable(name: "p", arg: 1, scope: !453, file: !10, line: 399, type: !191)
!458 = !DILocalVariable(name: "proto", arg: 2, scope: !453, file: !10, line: 399, type: !29)
!459 = !DILocalVariable(name: "proto_len", arg: 3, scope: !453, file: !10, line: 399, type: !43)
!460 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !453, file: !10, line: 400, type: !43)
!461 = !DILocalVariable(name: "acc", arg: 5, scope: !453, file: !10, line: 400, type: !51)
!462 = !DILocalVariable(name: "q", scope: !453, file: !10, line: 402, type: !191)
!463 = !DILocalVariable(name: "swapped", scope: !453, file: !10, line: 403, type: !86)
!464 = !DILocalVariable(name: "chklen", scope: !453, file: !10, line: 404, type: !43)
!465 = !DILocation(line: 399, column: 45, scope: !453)
!466 = !DILocation(line: 399, column: 53, scope: !453)
!467 = !DILocation(line: 399, column: 66, scope: !453)
!468 = !DILocation(line: 400, column: 38, scope: !453)
!469 = !DILocation(line: 400, column: 56, scope: !453)
!470 = !DILocation(line: 403, column: 7, scope: !453)
!471 = !DILocation(line: 402, column: 16, scope: !453)
!472 = !DILocation(line: 407, column: 18, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !10, line: 407, column: 3)
!474 = distinct !DILexicalBlock(scope: !453, file: !10, line: 407, column: 3)
!475 = !DILocation(line: 407, column: 42, scope: !473)
!476 = !DILocation(line: 407, column: 27, scope: !473)
!477 = !DILocation(line: 407, column: 3, scope: !474)
!478 = !DILocation(line: 410, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !473, file: !10, line: 407, column: 61)
!480 = !DILocation(line: 404, column: 9, scope: !453)
!481 = !DILocation(line: 411, column: 16, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !10, line: 411, column: 9)
!483 = !DILocation(line: 411, column: 9, scope: !479)
!484 = !DILocation(line: 414, column: 27, scope: !479)
!485 = !DILocation(line: 414, column: 36, scope: !479)
!486 = !DILocation(line: 414, column: 12, scope: !479)
!487 = !DILocation(line: 414, column: 9, scope: !479)
!488 = !DILocation(line: 415, column: 37, scope: !479)
!489 = !DILocation(line: 416, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !10, line: 416, column: 5)
!491 = distinct !DILexicalBlock(scope: !479, file: !10, line: 416, column: 5)
!492 = !DILocation(line: 416, column: 5, scope: !491)
!493 = !DILocation(line: 416, column: 5, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !10, line: 416, column: 5)
!495 = distinct !DILexicalBlock(scope: !490, file: !10, line: 416, column: 5)
!496 = !DILocation(line: 416, column: 5, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !10, line: 416, column: 5)
!498 = distinct !DILexicalBlock(scope: !499, file: !10, line: 416, column: 5)
!499 = distinct !DILexicalBlock(scope: !494, file: !10, line: 416, column: 5)
!500 = !DILocation(line: 419, column: 11, scope: !479)
!501 = !DILocation(line: 420, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !479, file: !10, line: 420, column: 9)
!503 = !DILocation(line: 420, column: 16, scope: !502)
!504 = !DILocation(line: 420, column: 20, scope: !502)
!505 = !DILocation(line: 420, column: 9, scope: !479)
!506 = !DILocation(line: 421, column: 17, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !10, line: 420, column: 26)
!508 = !DILocation(line: 422, column: 13, scope: !507)
!509 = !DILocation(line: 423, column: 5, scope: !507)
!510 = !DILocation(line: 0, scope: !479)
!511 = !DILocation(line: 0, scope: !453)
!512 = !DILocation(line: 407, column: 55, scope: !473)
!513 = distinct !{!513, !477, !514}
!514 = !DILocation(line: 425, column: 3, scope: !474)
!515 = !DILocation(line: 427, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !453, file: !10, line: 427, column: 7)
!517 = !DILocation(line: 427, column: 7, scope: !453)
!518 = !DILocation(line: 428, column: 11, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !10, line: 427, column: 16)
!520 = !DILocation(line: 429, column: 3, scope: !519)
!521 = !DILocation(line: 431, column: 28, scope: !453)
!522 = !DILocation(line: 431, column: 17, scope: !453)
!523 = !DILocation(line: 431, column: 10, scope: !453)
!524 = !DILocation(line: 431, column: 7, scope: !453)
!525 = !DILocation(line: 432, column: 17, scope: !453)
!526 = !DILocation(line: 432, column: 10, scope: !453)
!527 = !DILocation(line: 432, column: 7, scope: !453)
!528 = !DILocation(line: 436, column: 9, scope: !453)
!529 = !DILocation(line: 437, column: 9, scope: !453)
!530 = !DILocation(line: 439, column: 23, scope: !453)
!531 = !DILocation(line: 439, column: 17, scope: !453)
!532 = !DILocation(line: 439, column: 3, scope: !453)
!533 = distinct !DISubprogram(name: "ip6_chksum_pseudo_partial", scope: !10, file: !10, line: 491, type: !534, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!43, !191, !29, !43, !43, !307, !307}
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545}
!537 = !DILocalVariable(name: "p", arg: 1, scope: !533, file: !10, line: 491, type: !191)
!538 = !DILocalVariable(name: "proto", arg: 2, scope: !533, file: !10, line: 491, type: !29)
!539 = !DILocalVariable(name: "proto_len", arg: 3, scope: !533, file: !10, line: 491, type: !43)
!540 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !533, file: !10, line: 492, type: !43)
!541 = !DILocalVariable(name: "src", arg: 5, scope: !533, file: !10, line: 492, type: !307)
!542 = !DILocalVariable(name: "dest", arg: 6, scope: !533, file: !10, line: 492, type: !307)
!543 = !DILocalVariable(name: "acc", scope: !533, file: !10, line: 494, type: !51)
!544 = !DILocalVariable(name: "addr", scope: !533, file: !10, line: 495, type: !51)
!545 = !DILocalVariable(name: "addr_part", scope: !533, file: !10, line: 496, type: !29)
!546 = !DILocation(line: 491, column: 40, scope: !533)
!547 = !DILocation(line: 491, column: 48, scope: !533)
!548 = !DILocation(line: 491, column: 61, scope: !533)
!549 = !DILocation(line: 492, column: 33, scope: !533)
!550 = !DILocation(line: 492, column: 63, scope: !533)
!551 = !DILocation(line: 492, column: 86, scope: !533)
!552 = !DILocation(line: 494, column: 9, scope: !533)
!553 = !DILocation(line: 496, column: 8, scope: !533)
!554 = !DILocation(line: 499, column: 12, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !10, line: 498, column: 51)
!556 = distinct !DILexicalBlock(scope: !557, file: !10, line: 498, column: 3)
!557 = distinct !DILexicalBlock(scope: !533, file: !10, line: 498, column: 3)
!558 = !DILocation(line: 495, column: 9, scope: !533)
!559 = !DILocation(line: 500, column: 31, scope: !555)
!560 = !DILocation(line: 501, column: 32, scope: !555)
!561 = !DILocation(line: 501, column: 23, scope: !555)
!562 = !DILocation(line: 502, column: 12, scope: !555)
!563 = !DILocation(line: 503, column: 31, scope: !555)
!564 = !DILocation(line: 503, column: 23, scope: !555)
!565 = !DILocation(line: 504, column: 32, scope: !555)
!566 = !DILocation(line: 504, column: 23, scope: !555)
!567 = !DILocation(line: 500, column: 23, scope: !555)
!568 = !DILocation(line: 507, column: 9, scope: !533)
!569 = !DILocation(line: 508, column: 9, scope: !533)
!570 = !DILocation(line: 510, column: 10, scope: !533)
!571 = !DILocation(line: 510, column: 3, scope: !533)
!572 = distinct !DISubprogram(name: "ip_chksum_pseudo_partial", scope: !10, file: !10, line: 526, type: !573, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{!43, !191, !29, !43, !43, !355, !355}
!575 = !{!576, !577, !578, !579, !580, !581}
!576 = !DILocalVariable(name: "p", arg: 1, scope: !572, file: !10, line: 526, type: !191)
!577 = !DILocalVariable(name: "proto", arg: 2, scope: !572, file: !10, line: 526, type: !29)
!578 = !DILocalVariable(name: "proto_len", arg: 3, scope: !572, file: !10, line: 526, type: !43)
!579 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !572, file: !10, line: 527, type: !43)
!580 = !DILocalVariable(name: "src", arg: 5, scope: !572, file: !10, line: 527, type: !355)
!581 = !DILocalVariable(name: "dest", arg: 6, scope: !572, file: !10, line: 527, type: !355)
!582 = !DILocation(line: 526, column: 39, scope: !572)
!583 = !DILocation(line: 526, column: 47, scope: !572)
!584 = !DILocation(line: 526, column: 60, scope: !572)
!585 = !DILocation(line: 527, column: 32, scope: !572)
!586 = !DILocation(line: 527, column: 61, scope: !572)
!587 = !DILocation(line: 527, column: 83, scope: !572)
!588 = !DILocation(line: 530, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !572, file: !10, line: 530, column: 7)
!590 = !DILocation(line: 530, column: 7, scope: !572)
!591 = !DILocation(line: 491, column: 40, scope: !533, inlinedAt: !592)
!592 = distinct !DILocation(line: 531, column: 12, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !10, line: 530, column: 23)
!594 = !DILocation(line: 491, column: 48, scope: !533, inlinedAt: !592)
!595 = !DILocation(line: 491, column: 61, scope: !533, inlinedAt: !592)
!596 = !DILocation(line: 492, column: 33, scope: !533, inlinedAt: !592)
!597 = !DILocation(line: 492, column: 63, scope: !533, inlinedAt: !592)
!598 = !DILocation(line: 492, column: 86, scope: !533, inlinedAt: !592)
!599 = !DILocation(line: 494, column: 9, scope: !533, inlinedAt: !592)
!600 = !DILocation(line: 496, column: 8, scope: !533, inlinedAt: !592)
!601 = !DILocation(line: 499, column: 12, scope: !555, inlinedAt: !592)
!602 = !DILocation(line: 495, column: 9, scope: !533, inlinedAt: !592)
!603 = !DILocation(line: 500, column: 31, scope: !555, inlinedAt: !592)
!604 = !DILocation(line: 501, column: 32, scope: !555, inlinedAt: !592)
!605 = !DILocation(line: 501, column: 23, scope: !555, inlinedAt: !592)
!606 = !DILocation(line: 502, column: 12, scope: !555, inlinedAt: !592)
!607 = !DILocation(line: 503, column: 31, scope: !555, inlinedAt: !592)
!608 = !DILocation(line: 503, column: 23, scope: !555, inlinedAt: !592)
!609 = !DILocation(line: 504, column: 32, scope: !555, inlinedAt: !592)
!610 = !DILocation(line: 504, column: 23, scope: !555, inlinedAt: !592)
!611 = !DILocation(line: 500, column: 23, scope: !555, inlinedAt: !592)
!612 = !DILocation(line: 531, column: 5, scope: !593)
!613 = !DILocation(line: 456, column: 41, scope: !420, inlinedAt: !614)
!614 = distinct !DILocation(line: 539, column: 12, scope: !615)
!615 = distinct !DILexicalBlock(scope: !589, file: !10, line: 538, column: 3)
!616 = !DILocation(line: 456, column: 49, scope: !420, inlinedAt: !614)
!617 = !DILocation(line: 456, column: 62, scope: !420, inlinedAt: !614)
!618 = !DILocation(line: 457, column: 34, scope: !420, inlinedAt: !614)
!619 = !DILocation(line: 457, column: 64, scope: !420, inlinedAt: !614)
!620 = !DILocation(line: 457, column: 87, scope: !420, inlinedAt: !614)
!621 = !DILocation(line: 462, column: 10, scope: !420, inlinedAt: !614)
!622 = !DILocation(line: 460, column: 9, scope: !420, inlinedAt: !614)
!623 = !DILocation(line: 463, column: 15, scope: !420, inlinedAt: !614)
!624 = !DILocation(line: 459, column: 9, scope: !420, inlinedAt: !614)
!625 = !DILocation(line: 464, column: 30, scope: !420, inlinedAt: !614)
!626 = !DILocation(line: 464, column: 21, scope: !420, inlinedAt: !614)
!627 = !DILocation(line: 465, column: 10, scope: !420, inlinedAt: !614)
!628 = !DILocation(line: 539, column: 5, scope: !615)
!629 = !DILocation(line: 0, scope: !593)
!630 = !DILocation(line: 542, column: 1, scope: !572)
!631 = distinct !DISubprogram(name: "inet_chksum", scope: !10, file: !10, line: 555, type: !632, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!43, !47, !43}
!634 = !{!635, !636}
!635 = !DILocalVariable(name: "dataptr", arg: 1, scope: !631, file: !10, line: 555, type: !47)
!636 = !DILocalVariable(name: "len", arg: 2, scope: !631, file: !10, line: 555, type: !43)
!637 = !DILocation(line: 555, column: 25, scope: !631)
!638 = !DILocation(line: 555, column: 40, scope: !631)
!639 = !DILocation(line: 557, column: 53, scope: !631)
!640 = !DILocation(line: 557, column: 32, scope: !631)
!641 = !DILocation(line: 557, column: 17, scope: !631)
!642 = !DILocation(line: 557, column: 3, scope: !631)
!643 = distinct !DISubprogram(name: "inet_chksum_pbuf", scope: !10, file: !10, line: 568, type: !644, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{!43, !191}
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(name: "p", arg: 1, scope: !643, file: !10, line: 568, type: !191)
!648 = !DILocalVariable(name: "acc", scope: !643, file: !10, line: 570, type: !51)
!649 = !DILocalVariable(name: "q", scope: !643, file: !10, line: 571, type: !191)
!650 = !DILocalVariable(name: "swapped", scope: !643, file: !10, line: 572, type: !86)
!651 = !DILocation(line: 568, column: 31, scope: !643)
!652 = !DILocation(line: 572, column: 7, scope: !643)
!653 = !DILocation(line: 570, column: 9, scope: !643)
!654 = !DILocation(line: 571, column: 16, scope: !643)
!655 = !DILocation(line: 575, column: 17, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !10, line: 575, column: 3)
!657 = distinct !DILexicalBlock(scope: !643, file: !10, line: 575, column: 3)
!658 = !DILocation(line: 575, column: 3, scope: !657)
!659 = !DILocation(line: 576, column: 27, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !10, line: 575, column: 39)
!661 = !DILocation(line: 576, column: 39, scope: !660)
!662 = !DILocation(line: 576, column: 36, scope: !660)
!663 = !DILocation(line: 576, column: 12, scope: !660)
!664 = !DILocation(line: 576, column: 9, scope: !660)
!665 = !DILocation(line: 577, column: 11, scope: !660)
!666 = !DILocation(line: 578, column: 12, scope: !667)
!667 = distinct !DILexicalBlock(scope: !660, file: !10, line: 578, column: 9)
!668 = !DILocation(line: 578, column: 16, scope: !667)
!669 = !DILocation(line: 578, column: 20, scope: !667)
!670 = !DILocation(line: 578, column: 9, scope: !660)
!671 = !DILocation(line: 579, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !10, line: 578, column: 26)
!673 = !DILocation(line: 580, column: 13, scope: !672)
!674 = !DILocation(line: 581, column: 5, scope: !672)
!675 = !DILocation(line: 0, scope: !660)
!676 = !DILocation(line: 0, scope: !643)
!677 = !DILocation(line: 575, column: 33, scope: !656)
!678 = distinct !{!678, !658, !679}
!679 = !DILocation(line: 582, column: 3, scope: !657)
!680 = !DILocation(line: 584, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !643, file: !10, line: 584, column: 7)
!682 = !DILocation(line: 584, column: 7, scope: !643)
!683 = !DILocation(line: 585, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !10, line: 584, column: 16)
!685 = !DILocation(line: 586, column: 3, scope: !684)
!686 = !DILocation(line: 587, column: 23, scope: !643)
!687 = !DILocation(line: 587, column: 17, scope: !643)
!688 = !DILocation(line: 587, column: 3, scope: !643)
!689 = !DILocation(line: 194, column: 43, scope: !2)
!690 = !DILocation(line: 196, column: 2, scope: !2)
!691 = !DILocation(line: 196, column: 10, scope: !2)
!692 = !DILocation(line: 197, column: 2, scope: !2)
!693 = !DILocation(line: 198, column: 2, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 198, column: 2)
!695 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!696 = !DILocation(line: 199, column: 2, scope: !2)
!697 = !DILocation(line: 200, column: 1, scope: !2)
