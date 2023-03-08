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

; Function Attrs: noredzone nounwind readonly
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
  ret i16 %221, !dbg !187
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip4_addr* nocapture readonly, %struct.ip4_addr* nocapture readonly) local_unnamed_addr #3 !dbg !188 {
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
  %23 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %22) #8, !dbg !238
  ret i16 %23, !dbg !239
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i32) unnamed_addr #3 !dbg !240 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !256
  br i1 %5, label %45, label %6, !dbg !259

; <label>:6:                                      ; preds = %4, %31
  %7 = phi i32 [ %33, %31 ], [ 0, %4 ]
  %8 = phi %struct.pbuf* [ %35, %31 ], [ %0, %4 ]
  %9 = phi i32 [ %32, %31 ], [ %3, %4 ]
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 1, !dbg !260
  %11 = load i8*, i8** %10, align 8, !dbg !260, !tbaa !262
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 3, !dbg !265
  %13 = load i16, i16* %12, align 2, !dbg !265, !tbaa !266
  %14 = zext i16 %13 to i32, !dbg !267
  %15 = tail call zeroext i16 @lwip_standard_chksum(i8* %11, i32 %14) #8, !dbg !268
  %16 = zext i16 %15 to i32, !dbg !268
  %17 = add i32 %9, %16, !dbg !269
  %18 = lshr i32 %17, 16, !dbg !270
  %19 = and i32 %17, 65535, !dbg !270
  %20 = add nuw nsw i32 %18, %19, !dbg !270
  %21 = and i16 %13, 1, !dbg !271
  %22 = icmp eq i16 %21, 0, !dbg !273
  br i1 %22, label %31, label %23, !dbg !274

; <label>:23:                                     ; preds = %6
  %24 = icmp eq i32 %7, 0, !dbg !275
  %25 = zext i1 %24 to i32, !dbg !275
  %26 = shl nuw nsw i32 %20, 8, !dbg !277
  %27 = and i32 %26, 65280, !dbg !277
  %28 = lshr i32 %20, 8, !dbg !277
  %29 = and i32 %28, 255, !dbg !277
  %30 = or i32 %27, %29, !dbg !277
  br label %31, !dbg !278

; <label>:31:                                     ; preds = %6, %23
  %32 = phi i32 [ %30, %23 ], [ %20, %6 ], !dbg !279
  %33 = phi i32 [ %25, %23 ], [ %7, %6 ], !dbg !280
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 0, !dbg !281
  %35 = load %struct.pbuf*, %struct.pbuf** %34, align 8, !dbg !281, !tbaa !282
  %36 = icmp eq %struct.pbuf* %35, null, !dbg !256
  br i1 %36, label %37, label %6, !dbg !259, !llvm.loop !283

; <label>:37:                                     ; preds = %31
  %38 = icmp eq i32 %33, 0, !dbg !285
  br i1 %38, label %45, label %39, !dbg !287

; <label>:39:                                     ; preds = %37
  %40 = shl nsw i32 %32, 8, !dbg !288
  %41 = and i32 %40, 65280, !dbg !288
  %42 = lshr i32 %32, 8, !dbg !288
  %43 = and i32 %42, 255, !dbg !288
  %44 = or i32 %41, %43, !dbg !288
  br label %45, !dbg !290

; <label>:45:                                     ; preds = %4, %37, %39
  %46 = phi i32 [ %44, %39 ], [ %32, %37 ], [ %3, %4 ]
  %47 = zext i8 %1 to i16, !dbg !291
  %48 = tail call zeroext i16 @lwip_htons(i16 zeroext %47) #9, !dbg !292
  %49 = zext i16 %48 to i32, !dbg !293
  %50 = add i32 %46, %49, !dbg !294
  %51 = tail call zeroext i16 @lwip_htons(i16 zeroext %2) #9, !dbg !295
  %52 = zext i16 %51 to i32, !dbg !296
  %53 = add i32 %50, %52, !dbg !297
  %54 = lshr i32 %53, 16, !dbg !298
  %55 = and i32 %53, 65535, !dbg !298
  %56 = add nuw nsw i32 %54, %55, !dbg !298
  %57 = lshr i32 %56, 16, !dbg !299
  %58 = add nuw nsw i32 %57, %56, !dbg !299
  %59 = trunc i32 %58 to i16, !dbg !300
  %60 = xor i16 %59, -1, !dbg !301
  ret i16 %60, !dbg !302
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip6_addr* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #3 !dbg !303 {
  %6 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !333
  %7 = load i32, i32* %6, align 4, !dbg !333, !tbaa !138
  %8 = and i32 %7, 65535, !dbg !338
  %9 = lshr i32 %7, 16, !dbg !339
  %10 = add nuw nsw i32 %8, %9, !dbg !340
  %11 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 0, !dbg !341
  %12 = load i32, i32* %11, align 4, !dbg !341, !tbaa !138
  %13 = and i32 %12, 65535, !dbg !342
  %14 = add nuw nsw i32 %10, %13, !dbg !343
  %15 = lshr i32 %12, 16, !dbg !344
  %16 = add nuw nsw i32 %14, %15, !dbg !345
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !333
  %18 = load i32, i32* %17, align 4, !dbg !333, !tbaa !138
  %19 = and i32 %18, 65535, !dbg !338
  %20 = add nuw nsw i32 %19, %16, !dbg !346
  %21 = lshr i32 %18, 16, !dbg !339
  %22 = add nuw nsw i32 %20, %21, !dbg !340
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 1, !dbg !341
  %24 = load i32, i32* %23, align 4, !dbg !341, !tbaa !138
  %25 = and i32 %24, 65535, !dbg !342
  %26 = add nuw nsw i32 %22, %25, !dbg !343
  %27 = lshr i32 %24, 16, !dbg !344
  %28 = add i32 %26, %27, !dbg !345
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !333
  %30 = load i32, i32* %29, align 4, !dbg !333, !tbaa !138
  %31 = and i32 %30, 65535, !dbg !338
  %32 = add i32 %31, %28, !dbg !346
  %33 = lshr i32 %30, 16, !dbg !339
  %34 = add i32 %32, %33, !dbg !340
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 2, !dbg !341
  %36 = load i32, i32* %35, align 4, !dbg !341, !tbaa !138
  %37 = and i32 %36, 65535, !dbg !342
  %38 = add i32 %34, %37, !dbg !343
  %39 = lshr i32 %36, 16, !dbg !344
  %40 = add i32 %38, %39, !dbg !345
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !333
  %42 = load i32, i32* %41, align 4, !dbg !333, !tbaa !138
  %43 = and i32 %42, 65535, !dbg !338
  %44 = add i32 %43, %40, !dbg !346
  %45 = lshr i32 %42, 16, !dbg !339
  %46 = add i32 %44, %45, !dbg !340
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 3, !dbg !341
  %48 = load i32, i32* %47, align 4, !dbg !341, !tbaa !138
  %49 = and i32 %48, 65535, !dbg !342
  %50 = add i32 %46, %49, !dbg !343
  %51 = lshr i32 %48, 16, !dbg !344
  %52 = add i32 %50, %51, !dbg !345
  %53 = lshr i32 %52, 16, !dbg !347
  %54 = and i32 %52, 65535, !dbg !347
  %55 = add nuw nsw i32 %53, %54, !dbg !347
  %56 = lshr i32 %55, 16, !dbg !348
  %57 = and i32 %55, 65535, !dbg !348
  %58 = add nuw nsw i32 %56, %57, !dbg !348
  %59 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %58) #8, !dbg !349
  ret i16 %59, !dbg !350
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip_addr* nocapture readonly, %struct.ip_addr* readonly) local_unnamed_addr #3 !dbg !351 {
  %6 = icmp eq %struct.ip_addr* %4, null, !dbg !376
  br i1 %6, label %54, label %7, !dbg !376

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !376
  %9 = load i8, i8* %8, align 4, !dbg !376, !tbaa !378
  %10 = icmp eq i8 %9, 6, !dbg !376
  br i1 %10, label %11, label %54, !dbg !380

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !390
  %13 = load i32, i32* %12, align 4, !dbg !390, !tbaa !138
  %14 = and i32 %13, 65535, !dbg !392
  %15 = lshr i32 %13, 16, !dbg !393
  %16 = add nuw nsw i32 %14, %15, !dbg !394
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !395
  %18 = load i32, i32* %17, align 4, !dbg !395, !tbaa !138
  %19 = and i32 %18, 65535, !dbg !396
  %20 = add nuw nsw i32 %16, %19, !dbg !397
  %21 = lshr i32 %18, 16, !dbg !398
  %22 = add nuw nsw i32 %20, %21, !dbg !399
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !390
  %24 = load i32, i32* %23, align 4, !dbg !390, !tbaa !138
  %25 = and i32 %24, 65535, !dbg !392
  %26 = add nuw nsw i32 %22, %25, !dbg !400
  %27 = lshr i32 %24, 16, !dbg !393
  %28 = add nuw nsw i32 %26, %27, !dbg !394
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !395
  %30 = load i32, i32* %29, align 4, !dbg !395, !tbaa !138
  %31 = and i32 %30, 65535, !dbg !396
  %32 = add nuw nsw i32 %28, %31, !dbg !397
  %33 = lshr i32 %30, 16, !dbg !398
  %34 = add i32 %32, %33, !dbg !399
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !390
  %36 = load i32, i32* %35, align 4, !dbg !390, !tbaa !138
  %37 = and i32 %36, 65535, !dbg !392
  %38 = add i32 %34, %37, !dbg !400
  %39 = lshr i32 %36, 16, !dbg !393
  %40 = add i32 %38, %39, !dbg !394
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !395
  %42 = load i32, i32* %41, align 4, !dbg !395, !tbaa !138
  %43 = and i32 %42, 65535, !dbg !396
  %44 = add i32 %40, %43, !dbg !397
  %45 = lshr i32 %42, 16, !dbg !398
  %46 = add i32 %44, %45, !dbg !399
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !390
  %48 = load i32, i32* %47, align 4, !dbg !390, !tbaa !138
  %49 = and i32 %48, 65535, !dbg !392
  %50 = add i32 %46, %49, !dbg !400
  %51 = lshr i32 %48, 16, !dbg !393
  %52 = add i32 %50, %51, !dbg !394
  %53 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !395
  br label %61, !dbg !401

; <label>:54:                                     ; preds = %5, %7
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !409
  %56 = load i32, i32* %55, align 4, !dbg !409, !tbaa !224
  %57 = and i32 %56, 65535, !dbg !411
  %58 = lshr i32 %56, 16, !dbg !413
  %59 = add nuw nsw i32 %57, %58, !dbg !414
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !415
  br label %61, !dbg !416

; <label>:61:                                     ; preds = %54, %11
  %62 = phi i32* [ %60, %54 ], [ %53, %11 ]
  %63 = phi i32 [ %59, %54 ], [ %52, %11 ]
  %64 = load i32, i32* %62, align 4, !dbg !417, !tbaa !138
  %65 = and i32 %64, 65535, !dbg !417
  %66 = add i32 %63, %65, !dbg !417
  %67 = lshr i32 %64, 16, !dbg !417
  %68 = add i32 %66, %67, !dbg !417
  %69 = lshr i32 %68, 16, !dbg !417
  %70 = and i32 %68, 65535, !dbg !417
  %71 = add nuw nsw i32 %69, %70, !dbg !417
  %72 = lshr i32 %71, 16, !dbg !417
  %73 = and i32 %71, 65535, !dbg !417
  %74 = add nuw nsw i32 %72, %73, !dbg !417
  %75 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %74) #9, !dbg !417
  ret i16 %75, !dbg !418
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip4_addr* nocapture readonly, %struct.ip4_addr* nocapture readonly) local_unnamed_addr #3 !dbg !419 {
  %7 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !437
  %8 = load i32, i32* %7, align 4, !dbg !437, !tbaa !224
  %9 = and i32 %8, 65535, !dbg !439
  %10 = lshr i32 %8, 16, !dbg !441
  %11 = add nuw nsw i32 %9, %10, !dbg !442
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %5, i64 0, i32 0, !dbg !443
  %13 = load i32, i32* %12, align 4, !dbg !443, !tbaa !224
  %14 = and i32 %13, 65535, !dbg !444
  %15 = add nuw nsw i32 %11, %14, !dbg !445
  %16 = lshr i32 %13, 16, !dbg !446
  %17 = add nuw nsw i32 %15, %16, !dbg !447
  %18 = lshr i32 %17, 16, !dbg !448
  %19 = and i32 %17, 65535, !dbg !448
  %20 = add nuw nsw i32 %18, %19, !dbg !448
  %21 = lshr i32 %20, 16, !dbg !449
  %22 = and i32 %20, 65535, !dbg !449
  %23 = add nuw nsw i32 %21, %22, !dbg !449
  %24 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %23) #8, !dbg !450
  ret i16 %24, !dbg !451
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, i32) unnamed_addr #3 !dbg !452 {
  %6 = icmp ne %struct.pbuf* %0, null, !dbg !471
  %7 = icmp ne i16 %3, 0, !dbg !474
  %8 = and i1 %7, %6, !dbg !475
  br i1 %8, label %9, label %57, !dbg !476

; <label>:9:                                      ; preds = %5, %41
  %10 = phi i32 [ %43, %41 ], [ 0, %5 ]
  %11 = phi %struct.pbuf* [ %45, %41 ], [ %0, %5 ]
  %12 = phi i32 [ %42, %41 ], [ %4, %5 ]
  %13 = phi i16 [ %24, %41 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 3, !dbg !477
  %15 = load i16, i16* %14, align 2, !dbg !477, !tbaa !266
  %16 = icmp ugt i16 %15, %13, !dbg !480
  %17 = select i1 %16, i16 %13, i16 %15, !dbg !482
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 1, !dbg !483
  %19 = load i8*, i8** %18, align 8, !dbg !483, !tbaa !262
  %20 = zext i16 %17 to i32, !dbg !484
  %21 = tail call zeroext i16 @lwip_standard_chksum(i8* %19, i32 %20) #8, !dbg !485
  %22 = zext i16 %21 to i32, !dbg !485
  %23 = add i32 %12, %22, !dbg !486
  %24 = sub i16 %13, %17, !dbg !487
  %25 = icmp ult i16 %24, 32767, !dbg !488
  br i1 %25, label %27, label %26, !dbg !491

; <label>:26:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !492
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !495
  tail call void @ukplat_terminate(i32 3) #10, !dbg !495
  unreachable, !dbg !495

; <label>:27:                                     ; preds = %9
  %28 = lshr i32 %23, 16, !dbg !499
  %29 = and i32 %23, 65535, !dbg !499
  %30 = add nuw nsw i32 %28, %29, !dbg !499
  %31 = and i16 %15, 1, !dbg !500
  %32 = icmp eq i16 %31, 0, !dbg !502
  br i1 %32, label %41, label %33, !dbg !503

; <label>:33:                                     ; preds = %27
  %34 = icmp eq i32 %10, 0, !dbg !504
  %35 = zext i1 %34 to i32, !dbg !504
  %36 = shl nuw nsw i32 %30, 8, !dbg !506
  %37 = and i32 %36, 65280, !dbg !506
  %38 = lshr i32 %30, 8, !dbg !506
  %39 = and i32 %38, 255, !dbg !506
  %40 = or i32 %37, %39, !dbg !506
  br label %41, !dbg !507

; <label>:41:                                     ; preds = %27, %33
  %42 = phi i32 [ %40, %33 ], [ %30, %27 ], !dbg !508
  %43 = phi i32 [ %35, %33 ], [ %10, %27 ], !dbg !509
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 0, !dbg !510
  %45 = load %struct.pbuf*, %struct.pbuf** %44, align 8, !dbg !510, !tbaa !282
  %46 = icmp ne %struct.pbuf* %45, null, !dbg !471
  %47 = icmp ne i16 %24, 0, !dbg !474
  %48 = and i1 %47, %46, !dbg !475
  br i1 %48, label %9, label %49, !dbg !476, !llvm.loop !511

; <label>:49:                                     ; preds = %41
  %50 = icmp eq i32 %43, 0, !dbg !513
  br i1 %50, label %57, label %51, !dbg !515

; <label>:51:                                     ; preds = %49
  %52 = shl nsw i32 %42, 8, !dbg !516
  %53 = and i32 %52, 65280, !dbg !516
  %54 = lshr i32 %42, 8, !dbg !516
  %55 = and i32 %54, 255, !dbg !516
  %56 = or i32 %53, %55, !dbg !516
  br label %57, !dbg !518

; <label>:57:                                     ; preds = %5, %49, %51
  %58 = phi i32 [ %56, %51 ], [ %42, %49 ], [ %4, %5 ]
  %59 = zext i8 %1 to i16, !dbg !519
  %60 = tail call zeroext i16 @lwip_htons(i16 zeroext %59) #9, !dbg !520
  %61 = zext i16 %60 to i32, !dbg !521
  %62 = add i32 %58, %61, !dbg !522
  %63 = tail call zeroext i16 @lwip_htons(i16 zeroext %2) #9, !dbg !523
  %64 = zext i16 %63 to i32, !dbg !524
  %65 = add i32 %62, %64, !dbg !525
  %66 = lshr i32 %65, 16, !dbg !526
  %67 = and i32 %65, 65535, !dbg !526
  %68 = add nuw nsw i32 %66, %67, !dbg !526
  %69 = lshr i32 %68, 16, !dbg !527
  %70 = add nuw nsw i32 %69, %68, !dbg !527
  %71 = trunc i32 %70 to i16, !dbg !528
  %72 = xor i16 %71, -1, !dbg !529
  ret i16 %72, !dbg !530
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip6_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip6_addr* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #3 !dbg !531 {
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 0, !dbg !552
  %8 = load i32, i32* %7, align 4, !dbg !552, !tbaa !138
  %9 = and i32 %8, 65535, !dbg !557
  %10 = lshr i32 %8, 16, !dbg !558
  %11 = add nuw nsw i32 %9, %10, !dbg !559
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 0, !dbg !560
  %13 = load i32, i32* %12, align 4, !dbg !560, !tbaa !138
  %14 = and i32 %13, 65535, !dbg !561
  %15 = add nuw nsw i32 %11, %14, !dbg !562
  %16 = lshr i32 %13, 16, !dbg !563
  %17 = add nuw nsw i32 %15, %16, !dbg !564
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 1, !dbg !552
  %19 = load i32, i32* %18, align 4, !dbg !552, !tbaa !138
  %20 = and i32 %19, 65535, !dbg !557
  %21 = add nuw nsw i32 %20, %17, !dbg !565
  %22 = lshr i32 %19, 16, !dbg !558
  %23 = add nuw nsw i32 %21, %22, !dbg !559
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 1, !dbg !560
  %25 = load i32, i32* %24, align 4, !dbg !560, !tbaa !138
  %26 = and i32 %25, 65535, !dbg !561
  %27 = add nuw nsw i32 %23, %26, !dbg !562
  %28 = lshr i32 %25, 16, !dbg !563
  %29 = add i32 %27, %28, !dbg !564
  %30 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 2, !dbg !552
  %31 = load i32, i32* %30, align 4, !dbg !552, !tbaa !138
  %32 = and i32 %31, 65535, !dbg !557
  %33 = add i32 %32, %29, !dbg !565
  %34 = lshr i32 %31, 16, !dbg !558
  %35 = add i32 %33, %34, !dbg !559
  %36 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 2, !dbg !560
  %37 = load i32, i32* %36, align 4, !dbg !560, !tbaa !138
  %38 = and i32 %37, 65535, !dbg !561
  %39 = add i32 %35, %38, !dbg !562
  %40 = lshr i32 %37, 16, !dbg !563
  %41 = add i32 %39, %40, !dbg !564
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 3, !dbg !552
  %43 = load i32, i32* %42, align 4, !dbg !552, !tbaa !138
  %44 = and i32 %43, 65535, !dbg !557
  %45 = add i32 %44, %41, !dbg !565
  %46 = lshr i32 %43, 16, !dbg !558
  %47 = add i32 %45, %46, !dbg !559
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 3, !dbg !560
  %49 = load i32, i32* %48, align 4, !dbg !560, !tbaa !138
  %50 = and i32 %49, 65535, !dbg !561
  %51 = add i32 %47, %50, !dbg !562
  %52 = lshr i32 %49, 16, !dbg !563
  %53 = add i32 %51, %52, !dbg !564
  %54 = lshr i32 %53, 16, !dbg !566
  %55 = and i32 %53, 65535, !dbg !566
  %56 = add nuw nsw i32 %54, %55, !dbg !566
  %57 = lshr i32 %56, 16, !dbg !567
  %58 = and i32 %56, 65535, !dbg !567
  %59 = add nuw nsw i32 %57, %58, !dbg !567
  %60 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %59) #8, !dbg !568
  ret i16 %60, !dbg !569
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip_addr* nocapture readonly, %struct.ip_addr* readonly) local_unnamed_addr #3 !dbg !570 {
  %7 = icmp eq %struct.ip_addr* %5, null, !dbg !586
  br i1 %7, label %55, label %8, !dbg !586

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !586
  %10 = load i8, i8* %9, align 4, !dbg !586, !tbaa !378
  %11 = icmp eq i8 %10, 6, !dbg !586
  br i1 %11, label %12, label %55, !dbg !588

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !599
  %14 = load i32, i32* %13, align 4, !dbg !599, !tbaa !138
  %15 = and i32 %14, 65535, !dbg !601
  %16 = lshr i32 %14, 16, !dbg !602
  %17 = add nuw nsw i32 %15, %16, !dbg !603
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !604
  %19 = load i32, i32* %18, align 4, !dbg !604, !tbaa !138
  %20 = and i32 %19, 65535, !dbg !605
  %21 = add nuw nsw i32 %17, %20, !dbg !606
  %22 = lshr i32 %19, 16, !dbg !607
  %23 = add nuw nsw i32 %21, %22, !dbg !608
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !599
  %25 = load i32, i32* %24, align 4, !dbg !599, !tbaa !138
  %26 = and i32 %25, 65535, !dbg !601
  %27 = add nuw nsw i32 %23, %26, !dbg !609
  %28 = lshr i32 %25, 16, !dbg !602
  %29 = add nuw nsw i32 %27, %28, !dbg !603
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !604
  %31 = load i32, i32* %30, align 4, !dbg !604, !tbaa !138
  %32 = and i32 %31, 65535, !dbg !605
  %33 = add nuw nsw i32 %29, %32, !dbg !606
  %34 = lshr i32 %31, 16, !dbg !607
  %35 = add i32 %33, %34, !dbg !608
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !599
  %37 = load i32, i32* %36, align 4, !dbg !599, !tbaa !138
  %38 = and i32 %37, 65535, !dbg !601
  %39 = add i32 %35, %38, !dbg !609
  %40 = lshr i32 %37, 16, !dbg !602
  %41 = add i32 %39, %40, !dbg !603
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !604
  %43 = load i32, i32* %42, align 4, !dbg !604, !tbaa !138
  %44 = and i32 %43, 65535, !dbg !605
  %45 = add i32 %41, %44, !dbg !606
  %46 = lshr i32 %43, 16, !dbg !607
  %47 = add i32 %45, %46, !dbg !608
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !599
  %49 = load i32, i32* %48, align 4, !dbg !599, !tbaa !138
  %50 = and i32 %49, 65535, !dbg !601
  %51 = add i32 %47, %50, !dbg !609
  %52 = lshr i32 %49, 16, !dbg !602
  %53 = add i32 %51, %52, !dbg !603
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !604
  br label %62, !dbg !610

; <label>:55:                                     ; preds = %6, %8
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !619
  %57 = load i32, i32* %56, align 4, !dbg !619, !tbaa !224
  %58 = and i32 %57, 65535, !dbg !621
  %59 = lshr i32 %57, 16, !dbg !623
  %60 = add nuw nsw i32 %58, %59, !dbg !624
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !625
  br label %62, !dbg !626

; <label>:62:                                     ; preds = %55, %12
  %63 = phi i32* [ %61, %55 ], [ %54, %12 ]
  %64 = phi i32 [ %60, %55 ], [ %53, %12 ]
  %65 = load i32, i32* %63, align 4, !dbg !627, !tbaa !138
  %66 = and i32 %65, 65535, !dbg !627
  %67 = add i32 %64, %66, !dbg !627
  %68 = lshr i32 %65, 16, !dbg !627
  %69 = add i32 %67, %68, !dbg !627
  %70 = lshr i32 %69, 16, !dbg !627
  %71 = and i32 %69, 65535, !dbg !627
  %72 = add nuw nsw i32 %70, %71, !dbg !627
  %73 = lshr i32 %72, 16, !dbg !627
  %74 = and i32 %72, 65535, !dbg !627
  %75 = add nuw nsw i32 %73, %74, !dbg !627
  %76 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %75) #9, !dbg !627
  ret i16 %76, !dbg !628
}

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @inet_chksum(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !629 {
  %3 = zext i16 %1 to i32, !dbg !637
  %4 = tail call zeroext i16 @lwip_standard_chksum(i8* %0, i32 %3) #8, !dbg !638
  %5 = xor i16 %4, -1, !dbg !639
  ret i16 %5, !dbg !640
}

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @inet_chksum_pbuf(%struct.pbuf* readonly) local_unnamed_addr #0 !dbg !641 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !653
  br i1 %2, label %42, label %3, !dbg !656

; <label>:3:                                      ; preds = %1, %28
  %4 = phi i32 [ %30, %28 ], [ 0, %1 ]
  %5 = phi %struct.pbuf* [ %32, %28 ], [ %0, %1 ]
  %6 = phi i32 [ %29, %28 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !657
  %8 = load i8*, i8** %7, align 8, !dbg !657, !tbaa !262
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !659
  %10 = load i16, i16* %9, align 2, !dbg !659, !tbaa !266
  %11 = zext i16 %10 to i32, !dbg !660
  %12 = tail call zeroext i16 @lwip_standard_chksum(i8* %8, i32 %11) #8, !dbg !661
  %13 = zext i16 %12 to i32, !dbg !661
  %14 = add nsw i32 %6, %13, !dbg !662
  %15 = lshr i32 %14, 16, !dbg !663
  %16 = and i32 %14, 65535, !dbg !663
  %17 = add nuw nsw i32 %15, %16, !dbg !663
  %18 = and i16 %10, 1, !dbg !664
  %19 = icmp eq i16 %18, 0, !dbg !666
  br i1 %19, label %28, label %20, !dbg !667

; <label>:20:                                     ; preds = %3
  %21 = icmp eq i32 %4, 0, !dbg !668
  %22 = zext i1 %21 to i32, !dbg !668
  %23 = shl nuw nsw i32 %17, 8, !dbg !670
  %24 = and i32 %23, 65280, !dbg !670
  %25 = lshr i32 %17, 8, !dbg !670
  %26 = and i32 %25, 255, !dbg !670
  %27 = or i32 %24, %26, !dbg !670
  br label %28, !dbg !671

; <label>:28:                                     ; preds = %3, %20
  %29 = phi i32 [ %27, %20 ], [ %17, %3 ], !dbg !672
  %30 = phi i32 [ %22, %20 ], [ %4, %3 ], !dbg !673
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !674
  %32 = load %struct.pbuf*, %struct.pbuf** %31, align 8, !dbg !674, !tbaa !282
  %33 = icmp eq %struct.pbuf* %32, null, !dbg !653
  br i1 %33, label %34, label %3, !dbg !656, !llvm.loop !675

; <label>:34:                                     ; preds = %28
  %35 = icmp eq i32 %30, 0, !dbg !677
  br i1 %35, label %42, label %36, !dbg !679

; <label>:36:                                     ; preds = %34
  %37 = shl nsw i32 %29, 8, !dbg !680
  %38 = and i32 %37, 65280, !dbg !680
  %39 = lshr i32 %29, 8, !dbg !680
  %40 = and i32 %39, 255, !dbg !680
  %41 = or i32 %38, %40, !dbg !680
  br label %42, !dbg !682

; <label>:42:                                     ; preds = %1, %34, %36
  %43 = phi i32 [ %41, %36 ], [ %29, %34 ], [ 0, %1 ], !dbg !673
  %44 = trunc i32 %43 to i16, !dbg !683
  %45 = xor i16 %44, -1, !dbg !684
  ret i16 %45, !dbg !685
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #5 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !687
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !687
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !689
  call void @llvm.va_start(i8* nonnull %3), !dbg !689
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !690
  call void @llvm.va_end(i8* nonnull %3), !dbg !693
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !694
  ret void, !dbg !694
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

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
!271 = !DILocation(line: 274, column: 16, scope: !272)
!272 = distinct !DILexicalBlock(scope: !261, file: !10, line: 274, column: 9)
!273 = !DILocation(line: 274, column: 20, scope: !272)
!274 = !DILocation(line: 274, column: 9, scope: !261)
!275 = !DILocation(line: 275, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !10, line: 274, column: 26)
!277 = !DILocation(line: 276, column: 13, scope: !276)
!278 = !DILocation(line: 277, column: 5, scope: !276)
!279 = !DILocation(line: 0, scope: !261)
!280 = !DILocation(line: 0, scope: !240)
!281 = !DILocation(line: 266, column: 33, scope: !257)
!282 = !{!263, !264, i64 0}
!283 = distinct !{!283, !259, !284}
!284 = !DILocation(line: 279, column: 3, scope: !258)
!285 = !DILocation(line: 281, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !240, file: !10, line: 281, column: 7)
!287 = !DILocation(line: 281, column: 7, scope: !240)
!288 = !DILocation(line: 282, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !10, line: 281, column: 16)
!290 = !DILocation(line: 283, column: 3, scope: !289)
!291 = !DILocation(line: 285, column: 28, scope: !240)
!292 = !DILocation(line: 285, column: 17, scope: !240)
!293 = !DILocation(line: 285, column: 10, scope: !240)
!294 = !DILocation(line: 285, column: 7, scope: !240)
!295 = !DILocation(line: 286, column: 17, scope: !240)
!296 = !DILocation(line: 286, column: 10, scope: !240)
!297 = !DILocation(line: 286, column: 7, scope: !240)
!298 = !DILocation(line: 290, column: 9, scope: !240)
!299 = !DILocation(line: 291, column: 9, scope: !240)
!300 = !DILocation(line: 293, column: 23, scope: !240)
!301 = !DILocation(line: 293, column: 17, scope: !240)
!302 = !DILocation(line: 293, column: 3, scope: !240)
!303 = distinct !DISubprogram(name: "ip6_chksum_pseudo", scope: !10, file: !10, line: 343, type: !304, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !317)
!304 = !DISubroutineType(types: !305)
!305 = !{!43, !191, !29, !43, !306, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !309, line: 67, baseType: !310)
!309 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !309, line: 59, size: 160, elements: !311)
!311 = !{!312, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !310, file: !309, line: 60, baseType: !313, size: 128)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !310, file: !309, line: 62, baseType: !29, size: 8, offset: 128)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325}
!318 = !DILocalVariable(name: "p", arg: 1, scope: !303, file: !10, line: 343, type: !191)
!319 = !DILocalVariable(name: "proto", arg: 2, scope: !303, file: !10, line: 343, type: !29)
!320 = !DILocalVariable(name: "proto_len", arg: 3, scope: !303, file: !10, line: 343, type: !43)
!321 = !DILocalVariable(name: "src", arg: 4, scope: !303, file: !10, line: 344, type: !306)
!322 = !DILocalVariable(name: "dest", arg: 5, scope: !303, file: !10, line: 344, type: !306)
!323 = !DILocalVariable(name: "acc", scope: !303, file: !10, line: 346, type: !51)
!324 = !DILocalVariable(name: "addr", scope: !303, file: !10, line: 347, type: !51)
!325 = !DILocalVariable(name: "addr_part", scope: !303, file: !10, line: 348, type: !29)
!326 = !DILocation(line: 343, column: 32, scope: !303)
!327 = !DILocation(line: 343, column: 40, scope: !303)
!328 = !DILocation(line: 343, column: 53, scope: !303)
!329 = !DILocation(line: 344, column: 37, scope: !303)
!330 = !DILocation(line: 344, column: 60, scope: !303)
!331 = !DILocation(line: 346, column: 9, scope: !303)
!332 = !DILocation(line: 348, column: 8, scope: !303)
!333 = !DILocation(line: 351, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !10, line: 350, column: 51)
!335 = distinct !DILexicalBlock(scope: !336, file: !10, line: 350, column: 3)
!336 = distinct !DILexicalBlock(scope: !303, file: !10, line: 350, column: 3)
!337 = !DILocation(line: 347, column: 9, scope: !303)
!338 = !DILocation(line: 352, column: 31, scope: !334)
!339 = !DILocation(line: 353, column: 32, scope: !334)
!340 = !DILocation(line: 353, column: 23, scope: !334)
!341 = !DILocation(line: 354, column: 12, scope: !334)
!342 = !DILocation(line: 355, column: 31, scope: !334)
!343 = !DILocation(line: 355, column: 23, scope: !334)
!344 = !DILocation(line: 356, column: 32, scope: !334)
!345 = !DILocation(line: 356, column: 23, scope: !334)
!346 = !DILocation(line: 352, column: 23, scope: !334)
!347 = !DILocation(line: 359, column: 9, scope: !303)
!348 = !DILocation(line: 360, column: 9, scope: !303)
!349 = !DILocation(line: 362, column: 10, scope: !303)
!350 = !DILocation(line: 362, column: 3, scope: !303)
!351 = distinct !DISubprogram(name: "ip_chksum_pseudo", scope: !10, file: !10, line: 379, type: !352, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !365)
!352 = !DISubroutineType(types: !353)
!353 = !{!43, !191, !29, !43, !354, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !13, line: 76, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !13, line: 69, size: 192, elements: !358)
!358 = !{!359, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !357, file: !13, line: 73, baseType: !360, size: 160)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !13, line: 70, size: 160, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !360, file: !13, line: 71, baseType: !308, size: 160)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !360, file: !13, line: 72, baseType: !205, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !357, file: !13, line: 75, baseType: !29, size: 8, offset: 160)
!365 = !{!366, !367, !368, !369, !370}
!366 = !DILocalVariable(name: "p", arg: 1, scope: !351, file: !10, line: 379, type: !191)
!367 = !DILocalVariable(name: "proto", arg: 2, scope: !351, file: !10, line: 379, type: !29)
!368 = !DILocalVariable(name: "proto_len", arg: 3, scope: !351, file: !10, line: 379, type: !43)
!369 = !DILocalVariable(name: "src", arg: 4, scope: !351, file: !10, line: 380, type: !354)
!370 = !DILocalVariable(name: "dest", arg: 5, scope: !351, file: !10, line: 380, type: !354)
!371 = !DILocation(line: 379, column: 31, scope: !351)
!372 = !DILocation(line: 379, column: 39, scope: !351)
!373 = !DILocation(line: 379, column: 52, scope: !351)
!374 = !DILocation(line: 380, column: 35, scope: !351)
!375 = !DILocation(line: 380, column: 57, scope: !351)
!376 = !DILocation(line: 383, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !351, file: !10, line: 383, column: 7)
!378 = !{!379, !111, i64 20}
!379 = !{!"ip_addr", !111, i64 0, !111, i64 20}
!380 = !DILocation(line: 383, column: 7, scope: !351)
!381 = !DILocation(line: 343, column: 32, scope: !303, inlinedAt: !382)
!382 = distinct !DILocation(line: 384, column: 12, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !10, line: 383, column: 23)
!384 = !DILocation(line: 343, column: 40, scope: !303, inlinedAt: !382)
!385 = !DILocation(line: 343, column: 53, scope: !303, inlinedAt: !382)
!386 = !DILocation(line: 344, column: 37, scope: !303, inlinedAt: !382)
!387 = !DILocation(line: 344, column: 60, scope: !303, inlinedAt: !382)
!388 = !DILocation(line: 346, column: 9, scope: !303, inlinedAt: !382)
!389 = !DILocation(line: 348, column: 8, scope: !303, inlinedAt: !382)
!390 = !DILocation(line: 351, column: 12, scope: !334, inlinedAt: !382)
!391 = !DILocation(line: 347, column: 9, scope: !303, inlinedAt: !382)
!392 = !DILocation(line: 352, column: 31, scope: !334, inlinedAt: !382)
!393 = !DILocation(line: 353, column: 32, scope: !334, inlinedAt: !382)
!394 = !DILocation(line: 353, column: 23, scope: !334, inlinedAt: !382)
!395 = !DILocation(line: 354, column: 12, scope: !334, inlinedAt: !382)
!396 = !DILocation(line: 355, column: 31, scope: !334, inlinedAt: !382)
!397 = !DILocation(line: 355, column: 23, scope: !334, inlinedAt: !382)
!398 = !DILocation(line: 356, column: 32, scope: !334, inlinedAt: !382)
!399 = !DILocation(line: 356, column: 23, scope: !334, inlinedAt: !382)
!400 = !DILocation(line: 352, column: 23, scope: !334, inlinedAt: !382)
!401 = !DILocation(line: 384, column: 5, scope: !383)
!402 = !DILocation(line: 310, column: 33, scope: !188, inlinedAt: !403)
!403 = distinct !DILocation(line: 392, column: 12, scope: !404)
!404 = distinct !DILexicalBlock(scope: !377, file: !10, line: 391, column: 3)
!405 = !DILocation(line: 310, column: 41, scope: !188, inlinedAt: !403)
!406 = !DILocation(line: 310, column: 54, scope: !188, inlinedAt: !403)
!407 = !DILocation(line: 311, column: 38, scope: !188, inlinedAt: !403)
!408 = !DILocation(line: 311, column: 61, scope: !188, inlinedAt: !403)
!409 = !DILocation(line: 316, column: 10, scope: !188, inlinedAt: !403)
!410 = !DILocation(line: 314, column: 9, scope: !188, inlinedAt: !403)
!411 = !DILocation(line: 317, column: 15, scope: !188, inlinedAt: !403)
!412 = !DILocation(line: 313, column: 9, scope: !188, inlinedAt: !403)
!413 = !DILocation(line: 318, column: 30, scope: !188, inlinedAt: !403)
!414 = !DILocation(line: 318, column: 21, scope: !188, inlinedAt: !403)
!415 = !DILocation(line: 319, column: 10, scope: !188, inlinedAt: !403)
!416 = !DILocation(line: 392, column: 5, scope: !404)
!417 = !DILocation(line: 0, scope: !383)
!418 = !DILocation(line: 395, column: 1, scope: !351)
!419 = distinct !DISubprogram(name: "inet_chksum_pseudo_partial", scope: !10, file: !10, line: 456, type: !420, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!43, !191, !29, !43, !43, !203, !203}
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430}
!423 = !DILocalVariable(name: "p", arg: 1, scope: !419, file: !10, line: 456, type: !191)
!424 = !DILocalVariable(name: "proto", arg: 2, scope: !419, file: !10, line: 456, type: !29)
!425 = !DILocalVariable(name: "proto_len", arg: 3, scope: !419, file: !10, line: 456, type: !43)
!426 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !419, file: !10, line: 457, type: !43)
!427 = !DILocalVariable(name: "src", arg: 5, scope: !419, file: !10, line: 457, type: !203)
!428 = !DILocalVariable(name: "dest", arg: 6, scope: !419, file: !10, line: 457, type: !203)
!429 = !DILocalVariable(name: "acc", scope: !419, file: !10, line: 459, type: !51)
!430 = !DILocalVariable(name: "addr", scope: !419, file: !10, line: 460, type: !51)
!431 = !DILocation(line: 456, column: 41, scope: !419)
!432 = !DILocation(line: 456, column: 49, scope: !419)
!433 = !DILocation(line: 456, column: 62, scope: !419)
!434 = !DILocation(line: 457, column: 34, scope: !419)
!435 = !DILocation(line: 457, column: 64, scope: !419)
!436 = !DILocation(line: 457, column: 87, scope: !419)
!437 = !DILocation(line: 462, column: 10, scope: !419)
!438 = !DILocation(line: 460, column: 9, scope: !419)
!439 = !DILocation(line: 463, column: 15, scope: !419)
!440 = !DILocation(line: 459, column: 9, scope: !419)
!441 = !DILocation(line: 464, column: 30, scope: !419)
!442 = !DILocation(line: 464, column: 21, scope: !419)
!443 = !DILocation(line: 465, column: 10, scope: !419)
!444 = !DILocation(line: 466, column: 29, scope: !419)
!445 = !DILocation(line: 466, column: 21, scope: !419)
!446 = !DILocation(line: 467, column: 30, scope: !419)
!447 = !DILocation(line: 467, column: 21, scope: !419)
!448 = !DILocation(line: 469, column: 9, scope: !419)
!449 = !DILocation(line: 470, column: 9, scope: !419)
!450 = !DILocation(line: 472, column: 10, scope: !419)
!451 = !DILocation(line: 472, column: 3, scope: !419)
!452 = distinct !DISubprogram(name: "inet_cksum_pseudo_partial_base", scope: !10, file: !10, line: 399, type: !453, isLocal: true, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!43, !191, !29, !43, !43, !51}
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463}
!456 = !DILocalVariable(name: "p", arg: 1, scope: !452, file: !10, line: 399, type: !191)
!457 = !DILocalVariable(name: "proto", arg: 2, scope: !452, file: !10, line: 399, type: !29)
!458 = !DILocalVariable(name: "proto_len", arg: 3, scope: !452, file: !10, line: 399, type: !43)
!459 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !452, file: !10, line: 400, type: !43)
!460 = !DILocalVariable(name: "acc", arg: 5, scope: !452, file: !10, line: 400, type: !51)
!461 = !DILocalVariable(name: "q", scope: !452, file: !10, line: 402, type: !191)
!462 = !DILocalVariable(name: "swapped", scope: !452, file: !10, line: 403, type: !86)
!463 = !DILocalVariable(name: "chklen", scope: !452, file: !10, line: 404, type: !43)
!464 = !DILocation(line: 399, column: 45, scope: !452)
!465 = !DILocation(line: 399, column: 53, scope: !452)
!466 = !DILocation(line: 399, column: 66, scope: !452)
!467 = !DILocation(line: 400, column: 38, scope: !452)
!468 = !DILocation(line: 400, column: 56, scope: !452)
!469 = !DILocation(line: 403, column: 7, scope: !452)
!470 = !DILocation(line: 402, column: 16, scope: !452)
!471 = !DILocation(line: 407, column: 18, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !10, line: 407, column: 3)
!473 = distinct !DILexicalBlock(scope: !452, file: !10, line: 407, column: 3)
!474 = !DILocation(line: 407, column: 42, scope: !472)
!475 = !DILocation(line: 407, column: 27, scope: !472)
!476 = !DILocation(line: 407, column: 3, scope: !473)
!477 = !DILocation(line: 410, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !472, file: !10, line: 407, column: 61)
!479 = !DILocation(line: 404, column: 9, scope: !452)
!480 = !DILocation(line: 411, column: 16, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !10, line: 411, column: 9)
!482 = !DILocation(line: 411, column: 9, scope: !478)
!483 = !DILocation(line: 414, column: 27, scope: !478)
!484 = !DILocation(line: 414, column: 36, scope: !478)
!485 = !DILocation(line: 414, column: 12, scope: !478)
!486 = !DILocation(line: 414, column: 9, scope: !478)
!487 = !DILocation(line: 415, column: 37, scope: !478)
!488 = !DILocation(line: 416, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !10, line: 416, column: 5)
!490 = distinct !DILexicalBlock(scope: !478, file: !10, line: 416, column: 5)
!491 = !DILocation(line: 416, column: 5, scope: !490)
!492 = !DILocation(line: 416, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !10, line: 416, column: 5)
!494 = distinct !DILexicalBlock(scope: !489, file: !10, line: 416, column: 5)
!495 = !DILocation(line: 416, column: 5, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !10, line: 416, column: 5)
!497 = distinct !DILexicalBlock(scope: !498, file: !10, line: 416, column: 5)
!498 = distinct !DILexicalBlock(scope: !493, file: !10, line: 416, column: 5)
!499 = !DILocation(line: 419, column: 11, scope: !478)
!500 = !DILocation(line: 420, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !478, file: !10, line: 420, column: 9)
!502 = !DILocation(line: 420, column: 20, scope: !501)
!503 = !DILocation(line: 420, column: 9, scope: !478)
!504 = !DILocation(line: 421, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !10, line: 420, column: 26)
!506 = !DILocation(line: 422, column: 13, scope: !505)
!507 = !DILocation(line: 423, column: 5, scope: !505)
!508 = !DILocation(line: 0, scope: !478)
!509 = !DILocation(line: 0, scope: !452)
!510 = !DILocation(line: 407, column: 55, scope: !472)
!511 = distinct !{!511, !476, !512}
!512 = !DILocation(line: 425, column: 3, scope: !473)
!513 = !DILocation(line: 427, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !452, file: !10, line: 427, column: 7)
!515 = !DILocation(line: 427, column: 7, scope: !452)
!516 = !DILocation(line: 428, column: 11, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !10, line: 427, column: 16)
!518 = !DILocation(line: 429, column: 3, scope: !517)
!519 = !DILocation(line: 431, column: 28, scope: !452)
!520 = !DILocation(line: 431, column: 17, scope: !452)
!521 = !DILocation(line: 431, column: 10, scope: !452)
!522 = !DILocation(line: 431, column: 7, scope: !452)
!523 = !DILocation(line: 432, column: 17, scope: !452)
!524 = !DILocation(line: 432, column: 10, scope: !452)
!525 = !DILocation(line: 432, column: 7, scope: !452)
!526 = !DILocation(line: 436, column: 9, scope: !452)
!527 = !DILocation(line: 437, column: 9, scope: !452)
!528 = !DILocation(line: 439, column: 23, scope: !452)
!529 = !DILocation(line: 439, column: 17, scope: !452)
!530 = !DILocation(line: 439, column: 3, scope: !452)
!531 = distinct !DISubprogram(name: "ip6_chksum_pseudo_partial", scope: !10, file: !10, line: 491, type: !532, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!43, !191, !29, !43, !43, !306, !306}
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543}
!535 = !DILocalVariable(name: "p", arg: 1, scope: !531, file: !10, line: 491, type: !191)
!536 = !DILocalVariable(name: "proto", arg: 2, scope: !531, file: !10, line: 491, type: !29)
!537 = !DILocalVariable(name: "proto_len", arg: 3, scope: !531, file: !10, line: 491, type: !43)
!538 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !531, file: !10, line: 492, type: !43)
!539 = !DILocalVariable(name: "src", arg: 5, scope: !531, file: !10, line: 492, type: !306)
!540 = !DILocalVariable(name: "dest", arg: 6, scope: !531, file: !10, line: 492, type: !306)
!541 = !DILocalVariable(name: "acc", scope: !531, file: !10, line: 494, type: !51)
!542 = !DILocalVariable(name: "addr", scope: !531, file: !10, line: 495, type: !51)
!543 = !DILocalVariable(name: "addr_part", scope: !531, file: !10, line: 496, type: !29)
!544 = !DILocation(line: 491, column: 40, scope: !531)
!545 = !DILocation(line: 491, column: 48, scope: !531)
!546 = !DILocation(line: 491, column: 61, scope: !531)
!547 = !DILocation(line: 492, column: 33, scope: !531)
!548 = !DILocation(line: 492, column: 63, scope: !531)
!549 = !DILocation(line: 492, column: 86, scope: !531)
!550 = !DILocation(line: 494, column: 9, scope: !531)
!551 = !DILocation(line: 496, column: 8, scope: !531)
!552 = !DILocation(line: 499, column: 12, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !10, line: 498, column: 51)
!554 = distinct !DILexicalBlock(scope: !555, file: !10, line: 498, column: 3)
!555 = distinct !DILexicalBlock(scope: !531, file: !10, line: 498, column: 3)
!556 = !DILocation(line: 495, column: 9, scope: !531)
!557 = !DILocation(line: 500, column: 31, scope: !553)
!558 = !DILocation(line: 501, column: 32, scope: !553)
!559 = !DILocation(line: 501, column: 23, scope: !553)
!560 = !DILocation(line: 502, column: 12, scope: !553)
!561 = !DILocation(line: 503, column: 31, scope: !553)
!562 = !DILocation(line: 503, column: 23, scope: !553)
!563 = !DILocation(line: 504, column: 32, scope: !553)
!564 = !DILocation(line: 504, column: 23, scope: !553)
!565 = !DILocation(line: 500, column: 23, scope: !553)
!566 = !DILocation(line: 507, column: 9, scope: !531)
!567 = !DILocation(line: 508, column: 9, scope: !531)
!568 = !DILocation(line: 510, column: 10, scope: !531)
!569 = !DILocation(line: 510, column: 3, scope: !531)
!570 = distinct !DISubprogram(name: "ip_chksum_pseudo_partial", scope: !10, file: !10, line: 526, type: !571, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!43, !191, !29, !43, !43, !354, !354}
!573 = !{!574, !575, !576, !577, !578, !579}
!574 = !DILocalVariable(name: "p", arg: 1, scope: !570, file: !10, line: 526, type: !191)
!575 = !DILocalVariable(name: "proto", arg: 2, scope: !570, file: !10, line: 526, type: !29)
!576 = !DILocalVariable(name: "proto_len", arg: 3, scope: !570, file: !10, line: 526, type: !43)
!577 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !570, file: !10, line: 527, type: !43)
!578 = !DILocalVariable(name: "src", arg: 5, scope: !570, file: !10, line: 527, type: !354)
!579 = !DILocalVariable(name: "dest", arg: 6, scope: !570, file: !10, line: 527, type: !354)
!580 = !DILocation(line: 526, column: 39, scope: !570)
!581 = !DILocation(line: 526, column: 47, scope: !570)
!582 = !DILocation(line: 526, column: 60, scope: !570)
!583 = !DILocation(line: 527, column: 32, scope: !570)
!584 = !DILocation(line: 527, column: 61, scope: !570)
!585 = !DILocation(line: 527, column: 83, scope: !570)
!586 = !DILocation(line: 530, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !570, file: !10, line: 530, column: 7)
!588 = !DILocation(line: 530, column: 7, scope: !570)
!589 = !DILocation(line: 491, column: 40, scope: !531, inlinedAt: !590)
!590 = distinct !DILocation(line: 531, column: 12, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !10, line: 530, column: 23)
!592 = !DILocation(line: 491, column: 48, scope: !531, inlinedAt: !590)
!593 = !DILocation(line: 491, column: 61, scope: !531, inlinedAt: !590)
!594 = !DILocation(line: 492, column: 33, scope: !531, inlinedAt: !590)
!595 = !DILocation(line: 492, column: 63, scope: !531, inlinedAt: !590)
!596 = !DILocation(line: 492, column: 86, scope: !531, inlinedAt: !590)
!597 = !DILocation(line: 494, column: 9, scope: !531, inlinedAt: !590)
!598 = !DILocation(line: 496, column: 8, scope: !531, inlinedAt: !590)
!599 = !DILocation(line: 499, column: 12, scope: !553, inlinedAt: !590)
!600 = !DILocation(line: 495, column: 9, scope: !531, inlinedAt: !590)
!601 = !DILocation(line: 500, column: 31, scope: !553, inlinedAt: !590)
!602 = !DILocation(line: 501, column: 32, scope: !553, inlinedAt: !590)
!603 = !DILocation(line: 501, column: 23, scope: !553, inlinedAt: !590)
!604 = !DILocation(line: 502, column: 12, scope: !553, inlinedAt: !590)
!605 = !DILocation(line: 503, column: 31, scope: !553, inlinedAt: !590)
!606 = !DILocation(line: 503, column: 23, scope: !553, inlinedAt: !590)
!607 = !DILocation(line: 504, column: 32, scope: !553, inlinedAt: !590)
!608 = !DILocation(line: 504, column: 23, scope: !553, inlinedAt: !590)
!609 = !DILocation(line: 500, column: 23, scope: !553, inlinedAt: !590)
!610 = !DILocation(line: 531, column: 5, scope: !591)
!611 = !DILocation(line: 456, column: 41, scope: !419, inlinedAt: !612)
!612 = distinct !DILocation(line: 539, column: 12, scope: !613)
!613 = distinct !DILexicalBlock(scope: !587, file: !10, line: 538, column: 3)
!614 = !DILocation(line: 456, column: 49, scope: !419, inlinedAt: !612)
!615 = !DILocation(line: 456, column: 62, scope: !419, inlinedAt: !612)
!616 = !DILocation(line: 457, column: 34, scope: !419, inlinedAt: !612)
!617 = !DILocation(line: 457, column: 64, scope: !419, inlinedAt: !612)
!618 = !DILocation(line: 457, column: 87, scope: !419, inlinedAt: !612)
!619 = !DILocation(line: 462, column: 10, scope: !419, inlinedAt: !612)
!620 = !DILocation(line: 460, column: 9, scope: !419, inlinedAt: !612)
!621 = !DILocation(line: 463, column: 15, scope: !419, inlinedAt: !612)
!622 = !DILocation(line: 459, column: 9, scope: !419, inlinedAt: !612)
!623 = !DILocation(line: 464, column: 30, scope: !419, inlinedAt: !612)
!624 = !DILocation(line: 464, column: 21, scope: !419, inlinedAt: !612)
!625 = !DILocation(line: 465, column: 10, scope: !419, inlinedAt: !612)
!626 = !DILocation(line: 539, column: 5, scope: !613)
!627 = !DILocation(line: 0, scope: !591)
!628 = !DILocation(line: 542, column: 1, scope: !570)
!629 = distinct !DISubprogram(name: "inet_chksum", scope: !10, file: !10, line: 555, type: !630, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{!43, !47, !43}
!632 = !{!633, !634}
!633 = !DILocalVariable(name: "dataptr", arg: 1, scope: !629, file: !10, line: 555, type: !47)
!634 = !DILocalVariable(name: "len", arg: 2, scope: !629, file: !10, line: 555, type: !43)
!635 = !DILocation(line: 555, column: 25, scope: !629)
!636 = !DILocation(line: 555, column: 40, scope: !629)
!637 = !DILocation(line: 557, column: 53, scope: !629)
!638 = !DILocation(line: 557, column: 32, scope: !629)
!639 = !DILocation(line: 557, column: 17, scope: !629)
!640 = !DILocation(line: 557, column: 3, scope: !629)
!641 = distinct !DISubprogram(name: "inet_chksum_pbuf", scope: !10, file: !10, line: 568, type: !642, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!43, !191}
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "p", arg: 1, scope: !641, file: !10, line: 568, type: !191)
!646 = !DILocalVariable(name: "acc", scope: !641, file: !10, line: 570, type: !51)
!647 = !DILocalVariable(name: "q", scope: !641, file: !10, line: 571, type: !191)
!648 = !DILocalVariable(name: "swapped", scope: !641, file: !10, line: 572, type: !86)
!649 = !DILocation(line: 568, column: 31, scope: !641)
!650 = !DILocation(line: 572, column: 7, scope: !641)
!651 = !DILocation(line: 570, column: 9, scope: !641)
!652 = !DILocation(line: 571, column: 16, scope: !641)
!653 = !DILocation(line: 575, column: 17, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !10, line: 575, column: 3)
!655 = distinct !DILexicalBlock(scope: !641, file: !10, line: 575, column: 3)
!656 = !DILocation(line: 575, column: 3, scope: !655)
!657 = !DILocation(line: 576, column: 27, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !10, line: 575, column: 39)
!659 = !DILocation(line: 576, column: 39, scope: !658)
!660 = !DILocation(line: 576, column: 36, scope: !658)
!661 = !DILocation(line: 576, column: 12, scope: !658)
!662 = !DILocation(line: 576, column: 9, scope: !658)
!663 = !DILocation(line: 577, column: 11, scope: !658)
!664 = !DILocation(line: 578, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !658, file: !10, line: 578, column: 9)
!666 = !DILocation(line: 578, column: 20, scope: !665)
!667 = !DILocation(line: 578, column: 9, scope: !658)
!668 = !DILocation(line: 579, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !10, line: 578, column: 26)
!670 = !DILocation(line: 580, column: 13, scope: !669)
!671 = !DILocation(line: 581, column: 5, scope: !669)
!672 = !DILocation(line: 0, scope: !658)
!673 = !DILocation(line: 0, scope: !641)
!674 = !DILocation(line: 575, column: 33, scope: !654)
!675 = distinct !{!675, !656, !676}
!676 = !DILocation(line: 582, column: 3, scope: !655)
!677 = !DILocation(line: 584, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !641, file: !10, line: 584, column: 7)
!679 = !DILocation(line: 584, column: 7, scope: !641)
!680 = !DILocation(line: 585, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !10, line: 584, column: 16)
!682 = !DILocation(line: 586, column: 3, scope: !681)
!683 = !DILocation(line: 587, column: 23, scope: !641)
!684 = !DILocation(line: 587, column: 17, scope: !641)
!685 = !DILocation(line: 587, column: 3, scope: !641)
!686 = !DILocation(line: 194, column: 43, scope: !2)
!687 = !DILocation(line: 196, column: 2, scope: !2)
!688 = !DILocation(line: 196, column: 10, scope: !2)
!689 = !DILocation(line: 197, column: 2, scope: !2)
!690 = !DILocation(line: 198, column: 2, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 198, column: 2)
!692 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!693 = !DILocation(line: 199, column: 2, scope: !2)
!694 = !DILocation(line: 200, column: 1, scope: !2)
