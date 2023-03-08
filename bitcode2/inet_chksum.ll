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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %7, label %8, label %15, !dbg !106

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !107
  %10 = load i8, i8* %0, align 1, !dbg !109, !tbaa !110
  %11 = add nsw i32 %1, -1, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %24, label %25, label %31, !dbg !122

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !123
  %27 = bitcast i8* %26 to i16*, !dbg !123
  %28 = load i16, i16* %20, align 2, !dbg !125, !tbaa !126
  %29 = zext i16 %28 to i32, !dbg !125
  %30 = add nsw i32 %19, -2, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br label %31, !dbg !129

; <label>:31:                                     ; preds = %25, %15
  %32 = phi i16* [ %27, %25 ], [ %20, %15 ], !dbg !117
  %33 = phi i32 [ %29, %25 ], [ 0, %15 ], !dbg !117
  %34 = phi i32 [ %30, %25 ], [ %19, %15 ], !dbg !130
  %35 = bitcast i16* %32 to i32*, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  %36 = icmp sgt i32 %34, 7, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br i1 %36, label %37, label %75, !dbg !133

; <label>:37:                                     ; preds = %31
  %38 = xor i32 %34, -1, !dbg !135
  %39 = icmp sgt i32 %38, -16, !dbg !135
  %40 = select i1 %39, i32 %38, i32 -16, !dbg !135
  %41 = add i32 %34, %40, !dbg !135
  %42 = add i32 %41, 8, !dbg !135
  %43 = and i32 %42, -8, !dbg !135
  %44 = lshr i32 %42, 3, !dbg !135
  %45 = shl nuw nsw i32 %44, 2, !dbg !135
  %46 = add nuw i32 %45, 4, !dbg !135
  %47 = zext i32 %46 to i64, !dbg !135
  %48 = getelementptr i16, i16* %32, i64 %47, !dbg !135
  br label %49, !dbg !135

; <label>:49:                                     ; preds = %37, %67
  %50 = phi i32 [ %69, %67 ], [ %34, %37 ]
  %51 = phi i32 [ %68, %67 ], [ %33, %37 ]
  %52 = phi i32* [ %61, %67 ], [ %35, %37 ]
  %53 = getelementptr inbounds i32, i32* %52, i64 1, !dbg !135
  %54 = load i32, i32* %52, align 4, !dbg !137, !tbaa !138
  %55 = add i32 %54, %51, !dbg !140
  %56 = icmp ult i32 %55, %51, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %56, label %57, label %59, !dbg !144

; <label>:57:                                     ; preds = %49
  %58 = add i32 %55, 1, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br label %59, !dbg !147

; <label>:59:                                     ; preds = %57, %49
  %60 = phi i32 [ %58, %57 ], [ %55, %49 ], !dbg !148
  %61 = getelementptr inbounds i32, i32* %52, i64 2, !dbg !149
  %62 = load i32, i32* %53, align 4, !dbg !150, !tbaa !138
  %63 = add i32 %62, %60, !dbg !151
  %64 = icmp ult i32 %63, %60, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %64, label %65, label %67, !dbg !154

; <label>:65:                                     ; preds = %59
  %66 = add i32 %63, 1, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br label %67, !dbg !157

; <label>:67:                                     ; preds = %65, %59
  %68 = phi i32 [ %66, %65 ], [ %63, %59 ], !dbg !148
  %69 = add nsw i32 %50, -8, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  %70 = icmp sgt i32 %50, 15, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br i1 %70, label %49, label %71, !dbg !133, !llvm.loop !159

; <label>:71:                                     ; preds = %67
  %72 = add i32 %34, -8, !dbg !135
  %73 = sub i32 %72, %43, !dbg !135
  %74 = bitcast i16* %48 to i32*
  br label %75, !dbg !161

; <label>:75:                                     ; preds = %71, %31
  %76 = phi i16* [ %32, %31 ], [ %48, %71 ], !dbg !148
  %77 = phi i32* [ %35, %31 ], [ %74, %71 ], !dbg !148
  %78 = phi i32 [ %33, %31 ], [ %68, %71 ], !dbg !162
  %79 = phi i32 [ %34, %31 ], [ %73, %71 ], !dbg !148
  %80 = lshr i32 %78, 16, !dbg !161
  %81 = and i32 %78, 65535, !dbg !161
  %82 = add nuw nsw i32 %80, %81, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %83 = icmp sgt i32 %79, 1, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br i1 %83, label %84, label %150, !dbg !163

; <label>:84:                                     ; preds = %75
  %85 = bitcast i32* %77 to i8*
  %86 = xor i32 %79, -1, !dbg !165
  %87 = icmp sgt i32 %86, -4, !dbg !165
  %88 = select i1 %87, i32 %86, i32 -4, !dbg !165
  %89 = add i32 %79, %88, !dbg !165
  %90 = add i32 %89, 2, !dbg !165
  %91 = and i32 %90, -2, !dbg !165
  %92 = zext i32 %91 to i64, !dbg !165
  %93 = add nuw nsw i64 %92, 2, !dbg !165
  %94 = getelementptr i8, i8* %85, i64 %93, !dbg !165
  %95 = bitcast i8* %94 to i16*
  %96 = and i32 %90, -2, !dbg !165
  %97 = xor i32 %79, -1, !dbg !165
  %98 = icmp sgt i32 %97, -4, !dbg !165
  %99 = select i1 %98, i32 %97, i32 -4, !dbg !165
  %100 = add i32 %79, %99, !dbg !165
  %101 = add i32 %100, 2, !dbg !165
  %102 = lshr i32 %101, 1, !dbg !165
  %103 = add nuw i32 %102, 1, !dbg !165
  %104 = and i32 %103, 3, !dbg !165
  %105 = icmp eq i32 %104, 0, !dbg !165
  br i1 %105, label %118, label %106, !dbg !165

; <label>:106:                                    ; preds = %84, %106
  %107 = phi i32 [ %115, %106 ], [ %79, %84 ]
  %108 = phi i32 [ %114, %106 ], [ %82, %84 ]
  %109 = phi i16* [ %111, %106 ], [ %76, %84 ]
  %110 = phi i32 [ %116, %106 ], [ %104, %84 ]
  %111 = getelementptr inbounds i16, i16* %109, i64 1, !dbg !165
  %112 = load i16, i16* %109, align 2, !dbg !167, !tbaa !126
  %113 = zext i16 %112 to i32, !dbg !167
  %114 = add i32 %108, %113, !dbg !168
  %115 = add nsw i32 %107, -2, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %116 = add i32 %110, -1, !dbg !163
  %117 = icmp eq i32 %116, 0, !dbg !163
  br i1 %117, label %118, label %106, !dbg !163, !llvm.loop !170

; <label>:118:                                    ; preds = %106, %84
  %119 = phi i32 [ %79, %84 ], [ %115, %106 ]
  %120 = phi i32 [ %82, %84 ], [ %114, %106 ]
  %121 = phi i16* [ %76, %84 ], [ %111, %106 ]
  %122 = phi i32 [ undef, %84 ], [ %114, %106 ]
  %123 = icmp ult i32 %101, 6, !dbg !165
  br i1 %123, label %146, label %124, !dbg !165

; <label>:124:                                    ; preds = %118, %124
  %125 = phi i32 [ %144, %124 ], [ %119, %118 ]
  %126 = phi i32 [ %143, %124 ], [ %120, %118 ]
  %127 = phi i16* [ %140, %124 ], [ %121, %118 ]
  %128 = getelementptr inbounds i16, i16* %127, i64 1, !dbg !165
  %129 = load i16, i16* %127, align 2, !dbg !167, !tbaa !126
  %130 = zext i16 %129 to i32, !dbg !167
  %131 = add i32 %126, %130, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %132 = getelementptr inbounds i16, i16* %127, i64 2, !dbg !165
  %133 = load i16, i16* %128, align 2, !dbg !167, !tbaa !126
  %134 = zext i16 %133 to i32, !dbg !167
  %135 = add i32 %131, %134, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %136 = getelementptr inbounds i16, i16* %127, i64 3, !dbg !165
  %137 = load i16, i16* %132, align 2, !dbg !167, !tbaa !126
  %138 = zext i16 %137 to i32, !dbg !167
  %139 = add i32 %135, %138, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %140 = getelementptr inbounds i16, i16* %127, i64 4, !dbg !165
  %141 = load i16, i16* %136, align 2, !dbg !167, !tbaa !126
  %142 = zext i16 %141 to i32, !dbg !167
  %143 = add i32 %139, %142, !dbg !168
  %144 = add nsw i32 %125, -8, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  %145 = icmp sgt i32 %125, 9, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br i1 %145, label %124, label %146, !dbg !163, !llvm.loop !172

; <label>:146:                                    ; preds = %124, %118
  %147 = phi i32 [ %122, %118 ], [ %143, %124 ], !dbg !168
  %148 = add i32 %79, -2, !dbg !165
  %149 = sub i32 %148, %96, !dbg !165
  br label %150, !dbg !174

; <label>:150:                                    ; preds = %146, %75
  %151 = phi i16* [ %76, %75 ], [ %95, %146 ], !dbg !176
  %152 = phi i32 [ %82, %75 ], [ %147, %146 ], !dbg !176
  %153 = phi i32 [ %79, %75 ], [ %149, %146 ], !dbg !176
  %154 = icmp eq i32 %153, 1, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %154, label %155, label %159, !dbg !177

; <label>:155:                                    ; preds = %150
  %156 = bitcast i16* %151 to i8*, !dbg !178
  %157 = load i8, i8* %156, align 1, !dbg !178, !tbaa !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  %158 = zext i8 %157 to i32, !dbg !180
  br label %159, !dbg !180

; <label>:159:                                    ; preds = %155, %150
  %160 = phi i32 [ %158, %155 ], [ 0, %150 ]
  %161 = or i32 %160, %18, !dbg !181
  %162 = add i32 %161, %152, !dbg !182
  %163 = lshr i32 %162, 16, !dbg !183
  %164 = and i32 %162, 65535, !dbg !183
  %165 = add nuw nsw i32 %163, %164, !dbg !183
  %166 = lshr i32 %165, 16, !dbg !184
  %167 = and i32 %165, 65535, !dbg !184
  %168 = add nuw nsw i32 %166, %167, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br i1 %5, label %169, label %175, !dbg !185

; <label>:169:                                    ; preds = %159
  %170 = shl nuw nsw i32 %168, 8, !dbg !186
  %171 = and i32 %170, 65280, !dbg !186
  %172 = lshr i32 %168, 8, !dbg !186
  %173 = and i32 %172, 255, !dbg !186
  %174 = or i32 %171, %173, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br label %175, !dbg !189

; <label>:175:                                    ; preds = %169, %159
  %176 = phi i32 [ %174, %169 ], [ %168, %159 ], !dbg !117
  %177 = trunc i32 %176 to i16, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  ret i16 %177, !dbg !191
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip4_addr* nocapture readonly, %struct.ip4_addr* nocapture readonly) local_unnamed_addr #0 !dbg !192 {
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %3, i64 0, i32 0, !dbg !227
  %7 = load i32, i32* %6, align 4, !dbg !227, !tbaa !228
  %8 = and i32 %7, 65535, !dbg !231
  %9 = lshr i32 %7, 16, !dbg !233
  %10 = add nuw nsw i32 %8, %9, !dbg !234
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !235
  %12 = load i32, i32* %11, align 4, !dbg !235, !tbaa !228
  %13 = and i32 %12, 65535, !dbg !236
  %14 = add nuw nsw i32 %10, %13, !dbg !237
  %15 = lshr i32 %12, 16, !dbg !238
  %16 = add nuw nsw i32 %14, %15, !dbg !239
  %17 = lshr i32 %16, 16, !dbg !240
  %18 = and i32 %16, 65535, !dbg !240
  %19 = add nuw nsw i32 %17, %18, !dbg !240
  %20 = lshr i32 %19, 16, !dbg !241
  %21 = and i32 %19, 65535, !dbg !241
  %22 = add nuw nsw i32 %20, %21, !dbg !241
  %23 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %22) #7, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  ret i16 %23, !dbg !243
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i32) unnamed_addr #0 !dbg !244 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %5, label %46, label %6, !dbg !264

; <label>:6:                                      ; preds = %4, %32
  %7 = phi i32 [ %34, %32 ], [ 0, %4 ]
  %8 = phi %struct.pbuf* [ %36, %32 ], [ %0, %4 ]
  %9 = phi i32 [ %33, %32 ], [ %3, %4 ]
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 1, !dbg !265
  %11 = load i8*, i8** %10, align 8, !dbg !265, !tbaa !267
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 3, !dbg !270
  %13 = load i16, i16* %12, align 2, !dbg !270, !tbaa !271
  %14 = zext i16 %13 to i32, !dbg !272
  %15 = tail call zeroext i16 @lwip_standard_chksum(i8* %11, i32 %14) #7, !dbg !273
  %16 = zext i16 %15 to i32, !dbg !273
  %17 = add i32 %9, %16, !dbg !274
  %18 = lshr i32 %17, 16, !dbg !275
  %19 = and i32 %17, 65535, !dbg !275
  %20 = add nuw nsw i32 %18, %19, !dbg !275
  %21 = load i16, i16* %12, align 2, !dbg !276, !tbaa !271
  %22 = and i16 %21, 1, !dbg !278
  %23 = icmp eq i16 %22, 0, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %23, label %32, label %24, !dbg !280

; <label>:24:                                     ; preds = %6
  %25 = icmp eq i32 %7, 0, !dbg !281
  %26 = zext i1 %25 to i32, !dbg !281
  %27 = shl nuw nsw i32 %20, 8, !dbg !283
  %28 = and i32 %27, 65280, !dbg !283
  %29 = lshr i32 %20, 8, !dbg !283
  %30 = and i32 %29, 255, !dbg !283
  %31 = or i32 %28, %30, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br label %32, !dbg !284

; <label>:32:                                     ; preds = %6, %24
  %33 = phi i32 [ %31, %24 ], [ %20, %6 ], !dbg !285
  %34 = phi i32 [ %26, %24 ], [ %7, %6 ], !dbg !286
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 0, !dbg !287
  %36 = load %struct.pbuf*, %struct.pbuf** %35, align 8, !dbg !287, !tbaa !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  %37 = icmp eq %struct.pbuf* %36, null, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %37, label %38, label %6, !dbg !264, !llvm.loop !290

; <label>:38:                                     ; preds = %32
  %39 = icmp eq i32 %34, 0, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %39, label %48, label %40, !dbg !294

; <label>:40:                                     ; preds = %38
  %41 = shl nsw i32 %33, 8, !dbg !295
  %42 = and i32 %41, 65280, !dbg !295
  %43 = lshr i32 %33, 8, !dbg !295
  %44 = and i32 %43, 255, !dbg !295
  %45 = or i32 %42, %44, !dbg !295
  br label %46, !dbg !297

; <label>:46:                                     ; preds = %4, %40
  %47 = phi i32 [ %45, %40 ], [ %3, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br label %48, !dbg !299

; <label>:48:                                     ; preds = %46, %38
  %49 = phi i32 [ %33, %38 ], [ %47, %46 ]
  %50 = zext i8 %1 to i16, !dbg !299
  %51 = tail call zeroext i16 @lwip_htons(i16 zeroext %50) #8, !dbg !300
  %52 = zext i16 %51 to i32, !dbg !301
  %53 = add i32 %49, %52, !dbg !302
  %54 = tail call zeroext i16 @lwip_htons(i16 zeroext %2) #8, !dbg !303
  %55 = zext i16 %54 to i32, !dbg !304
  %56 = add i32 %53, %55, !dbg !305
  %57 = lshr i32 %56, 16, !dbg !306
  %58 = and i32 %56, 65535, !dbg !306
  %59 = add nuw nsw i32 %57, %58, !dbg !306
  %60 = lshr i32 %59, 16, !dbg !307
  %61 = add nuw nsw i32 %60, %59, !dbg !307
  %62 = trunc i32 %61 to i16, !dbg !308
  %63 = xor i16 %62, -1, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  ret i16 %63, !dbg !310
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip6_addr* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !311 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %6 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !344
  %7 = load i32, i32* %6, align 4, !dbg !344, !tbaa !138
  %8 = and i32 %7, 65535, !dbg !348
  %9 = lshr i32 %7, 16, !dbg !349
  %10 = add nuw nsw i32 %8, %9, !dbg !350
  %11 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 0, !dbg !351
  %12 = load i32, i32* %11, align 4, !dbg !351, !tbaa !138
  %13 = and i32 %12, 65535, !dbg !352
  %14 = add nuw nsw i32 %10, %13, !dbg !353
  %15 = lshr i32 %12, 16, !dbg !354
  %16 = add nuw nsw i32 %14, %15, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !344
  %18 = load i32, i32* %17, align 4, !dbg !344, !tbaa !138
  %19 = and i32 %18, 65535, !dbg !348
  %20 = add nuw nsw i32 %19, %16, !dbg !357
  %21 = lshr i32 %18, 16, !dbg !349
  %22 = add nuw nsw i32 %20, %21, !dbg !350
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 1, !dbg !351
  %24 = load i32, i32* %23, align 4, !dbg !351, !tbaa !138
  %25 = and i32 %24, 65535, !dbg !352
  %26 = add nuw nsw i32 %22, %25, !dbg !353
  %27 = lshr i32 %24, 16, !dbg !354
  %28 = add i32 %26, %27, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !344
  %30 = load i32, i32* %29, align 4, !dbg !344, !tbaa !138
  %31 = and i32 %30, 65535, !dbg !348
  %32 = add i32 %31, %28, !dbg !357
  %33 = lshr i32 %30, 16, !dbg !349
  %34 = add i32 %32, %33, !dbg !350
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 2, !dbg !351
  %36 = load i32, i32* %35, align 4, !dbg !351, !tbaa !138
  %37 = and i32 %36, 65535, !dbg !352
  %38 = add i32 %34, %37, !dbg !353
  %39 = lshr i32 %36, 16, !dbg !354
  %40 = add i32 %38, %39, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !344
  %42 = load i32, i32* %41, align 4, !dbg !344, !tbaa !138
  %43 = and i32 %42, 65535, !dbg !348
  %44 = add i32 %43, %40, !dbg !357
  %45 = lshr i32 %42, 16, !dbg !349
  %46 = add i32 %44, %45, !dbg !350
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 3, !dbg !351
  %48 = load i32, i32* %47, align 4, !dbg !351, !tbaa !138
  %49 = and i32 %48, 65535, !dbg !352
  %50 = add i32 %46, %49, !dbg !353
  %51 = lshr i32 %48, 16, !dbg !354
  %52 = add i32 %50, %51, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %53 = lshr i32 %52, 16, !dbg !358
  %54 = and i32 %52, 65535, !dbg !358
  %55 = add nuw nsw i32 %53, %54, !dbg !358
  %56 = lshr i32 %55, 16, !dbg !359
  %57 = and i32 %55, 65535, !dbg !359
  %58 = add nuw nsw i32 %56, %57, !dbg !359
  %59 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %58) #7, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  ret i16 %59, !dbg !361
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip_chksum_pseudo(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, %struct.ip_addr* nocapture readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !362 {
  %6 = icmp eq %struct.ip_addr* %4, null, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %6, label %59, label %7, !dbg !387

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !387
  %9 = load i8, i8* %8, align 4, !dbg !387, !tbaa !389
  %10 = icmp eq i8 %9, 6, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %10, label %11, label %59, !dbg !391

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %12 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !403
  %13 = load i32, i32* %12, align 4, !dbg !403, !tbaa !138
  %14 = and i32 %13, 65535, !dbg !405
  %15 = lshr i32 %13, 16, !dbg !406
  %16 = add nuw nsw i32 %14, %15, !dbg !407
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !408
  %18 = load i32, i32* %17, align 4, !dbg !408, !tbaa !138
  %19 = and i32 %18, 65535, !dbg !409
  %20 = add nuw nsw i32 %16, %19, !dbg !410
  %21 = lshr i32 %18, 16, !dbg !411
  %22 = add nuw nsw i32 %20, %21, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !403
  %24 = load i32, i32* %23, align 4, !dbg !403, !tbaa !138
  %25 = and i32 %24, 65535, !dbg !405
  %26 = add nuw nsw i32 %22, %25, !dbg !414
  %27 = lshr i32 %24, 16, !dbg !406
  %28 = add nuw nsw i32 %26, %27, !dbg !407
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !408
  %30 = load i32, i32* %29, align 4, !dbg !408, !tbaa !138
  %31 = and i32 %30, 65535, !dbg !409
  %32 = add nuw nsw i32 %28, %31, !dbg !410
  %33 = lshr i32 %30, 16, !dbg !411
  %34 = add i32 %32, %33, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !403
  %36 = load i32, i32* %35, align 4, !dbg !403, !tbaa !138
  %37 = and i32 %36, 65535, !dbg !405
  %38 = add i32 %34, %37, !dbg !414
  %39 = lshr i32 %36, 16, !dbg !406
  %40 = add i32 %38, %39, !dbg !407
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !408
  %42 = load i32, i32* %41, align 4, !dbg !408, !tbaa !138
  %43 = and i32 %42, 65535, !dbg !409
  %44 = add i32 %40, %43, !dbg !410
  %45 = lshr i32 %42, 16, !dbg !411
  %46 = add i32 %44, %45, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !403
  %48 = load i32, i32* %47, align 4, !dbg !403, !tbaa !138
  %49 = and i32 %48, 65535, !dbg !405
  %50 = add i32 %46, %49, !dbg !414
  %51 = lshr i32 %48, 16, !dbg !406
  %52 = add i32 %50, %51, !dbg !407
  %53 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !408
  %54 = load i32, i32* %53, align 4, !dbg !408, !tbaa !138
  %55 = and i32 %54, 65535, !dbg !409
  %56 = add i32 %52, %55, !dbg !410
  %57 = lshr i32 %54, 16, !dbg !411
  %58 = add i32 %56, %57, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br label %71, !dbg !415

; <label>:59:                                     ; preds = %5, %7
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !423
  %61 = load i32, i32* %60, align 4, !dbg !423, !tbaa !228
  %62 = and i32 %61, 65535, !dbg !425
  %63 = lshr i32 %61, 16, !dbg !427
  %64 = add nuw nsw i32 %62, %63, !dbg !428
  %65 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !429
  %66 = load i32, i32* %65, align 4, !dbg !429, !tbaa !228
  %67 = and i32 %66, 65535, !dbg !430
  %68 = add nuw nsw i32 %64, %67, !dbg !431
  %69 = lshr i32 %66, 16, !dbg !432
  %70 = add nuw nsw i32 %68, %69, !dbg !433
  br label %71, !dbg !434

; <label>:71:                                     ; preds = %59, %11
  %72 = phi i32 [ %70, %59 ], [ %58, %11 ]
  %73 = lshr i32 %72, 16, !dbg !435
  %74 = and i32 %72, 65535, !dbg !435
  %75 = add nuw nsw i32 %73, %74, !dbg !435
  %76 = lshr i32 %75, 16, !dbg !435
  %77 = and i32 %75, 65535, !dbg !435
  %78 = add nuw nsw i32 %76, %77, !dbg !435
  %79 = tail call fastcc zeroext i16 @inet_cksum_pseudo_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i32 %78) #8, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  ret i16 %79, !dbg !436
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip4_addr* nocapture readonly, %struct.ip4_addr* nocapture readonly) local_unnamed_addr #0 !dbg !437 {
  %7 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !455
  %8 = load i32, i32* %7, align 4, !dbg !455, !tbaa !228
  %9 = and i32 %8, 65535, !dbg !457
  %10 = lshr i32 %8, 16, !dbg !459
  %11 = add nuw nsw i32 %9, %10, !dbg !460
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %5, i64 0, i32 0, !dbg !461
  %13 = load i32, i32* %12, align 4, !dbg !461, !tbaa !228
  %14 = and i32 %13, 65535, !dbg !462
  %15 = add nuw nsw i32 %11, %14, !dbg !463
  %16 = lshr i32 %13, 16, !dbg !464
  %17 = add nuw nsw i32 %15, %16, !dbg !465
  %18 = lshr i32 %17, 16, !dbg !466
  %19 = and i32 %17, 65535, !dbg !466
  %20 = add nuw nsw i32 %18, %19, !dbg !466
  %21 = lshr i32 %20, 16, !dbg !467
  %22 = and i32 %20, 65535, !dbg !467
  %23 = add nuw nsw i32 %21, %22, !dbg !467
  %24 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %23) #7, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  ret i16 %24, !dbg !469
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, i32) unnamed_addr #0 !dbg !470 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %6 = icmp ne %struct.pbuf* %0, null, !dbg !491
  %7 = icmp ne i16 %3, 0, !dbg !493
  %8 = and i1 %7, %6, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %8, label %9, label %60, !dbg !495

; <label>:9:                                      ; preds = %5, %44
  %10 = phi i32 [ %46, %44 ], [ 0, %5 ]
  %11 = phi %struct.pbuf* [ %48, %44 ], [ %0, %5 ]
  %12 = phi i32 [ %45, %44 ], [ %4, %5 ]
  %13 = phi i16 [ %26, %44 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 3, !dbg !496
  %15 = load i16, i16* %14, align 2, !dbg !496, !tbaa !271
  %16 = icmp ugt i16 %15, %13, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %16, label %17, label %18, !dbg !501

; <label>:17:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br label %18, !dbg !502

; <label>:18:                                     ; preds = %17, %9
  %19 = phi i16 [ %13, %17 ], [ %15, %9 ], !dbg !504
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 1, !dbg !505
  %21 = load i8*, i8** %20, align 8, !dbg !505, !tbaa !267
  %22 = zext i16 %19 to i32, !dbg !506
  %23 = tail call zeroext i16 @lwip_standard_chksum(i8* %21, i32 %22) #7, !dbg !507
  %24 = zext i16 %23 to i32, !dbg !507
  %25 = add i32 %12, %24, !dbg !508
  %26 = sub i16 %13, %19, !dbg !509
  %27 = icmp ult i16 %26, 32767, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %27, label %29, label %28, !dbg !513

; <label>:28:                                     ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !514
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !517
  tail call void @ukplat_terminate(i32 3) #9, !dbg !517
  unreachable

; <label>:29:                                     ; preds = %18
  %30 = lshr i32 %25, 16, !dbg !521
  %31 = and i32 %25, 65535, !dbg !521
  %32 = add nuw nsw i32 %30, %31, !dbg !521
  %33 = load i16, i16* %14, align 2, !dbg !522, !tbaa !271
  %34 = and i16 %33, 1, !dbg !524
  %35 = icmp eq i16 %34, 0, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %35, label %44, label %36, !dbg !526

; <label>:36:                                     ; preds = %29
  %37 = icmp eq i32 %10, 0, !dbg !527
  %38 = zext i1 %37 to i32, !dbg !527
  %39 = shl nuw nsw i32 %32, 8, !dbg !529
  %40 = and i32 %39, 65280, !dbg !529
  %41 = lshr i32 %32, 8, !dbg !529
  %42 = and i32 %41, 255, !dbg !529
  %43 = or i32 %40, %42, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %44, !dbg !530

; <label>:44:                                     ; preds = %29, %36
  %45 = phi i32 [ %43, %36 ], [ %32, %29 ], !dbg !504
  %46 = phi i32 [ %38, %36 ], [ %10, %29 ], !dbg !531
  %47 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i64 0, i32 0, !dbg !532
  %48 = load %struct.pbuf*, %struct.pbuf** %47, align 8, !dbg !532, !tbaa !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  %49 = icmp ne %struct.pbuf* %48, null, !dbg !491
  %50 = icmp ne i16 %26, 0, !dbg !493
  %51 = and i1 %50, %49, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %51, label %9, label %52, !dbg !495, !llvm.loop !534

; <label>:52:                                     ; preds = %44
  %53 = icmp eq i32 %46, 0, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %53, label %62, label %54, !dbg !538

; <label>:54:                                     ; preds = %52
  %55 = shl nsw i32 %45, 8, !dbg !539
  %56 = and i32 %55, 65280, !dbg !539
  %57 = lshr i32 %45, 8, !dbg !539
  %58 = and i32 %57, 255, !dbg !539
  %59 = or i32 %56, %58, !dbg !539
  br label %60, !dbg !541

; <label>:60:                                     ; preds = %5, %54
  %61 = phi i32 [ %59, %54 ], [ %4, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %62, !dbg !543

; <label>:62:                                     ; preds = %60, %52
  %63 = phi i32 [ %45, %52 ], [ %61, %60 ]
  %64 = zext i8 %1 to i16, !dbg !543
  %65 = tail call zeroext i16 @lwip_htons(i16 zeroext %64) #8, !dbg !544
  %66 = zext i16 %65 to i32, !dbg !545
  %67 = add i32 %63, %66, !dbg !546
  %68 = tail call zeroext i16 @lwip_htons(i16 zeroext %2) #8, !dbg !547
  %69 = zext i16 %68 to i32, !dbg !548
  %70 = add i32 %67, %69, !dbg !549
  %71 = lshr i32 %70, 16, !dbg !550
  %72 = and i32 %70, 65535, !dbg !550
  %73 = add nuw nsw i32 %71, %72, !dbg !550
  %74 = lshr i32 %73, 16, !dbg !551
  %75 = add nuw nsw i32 %74, %73, !dbg !551
  %76 = trunc i32 %75 to i16, !dbg !552
  %77 = xor i16 %76, -1, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  ret i16 %77, !dbg !554
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip6_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip6_addr* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !555 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 0, !dbg !579
  %8 = load i32, i32* %7, align 4, !dbg !579, !tbaa !138
  %9 = and i32 %8, 65535, !dbg !583
  %10 = lshr i32 %8, 16, !dbg !584
  %11 = add nuw nsw i32 %9, %10, !dbg !585
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 0, !dbg !586
  %13 = load i32, i32* %12, align 4, !dbg !586, !tbaa !138
  %14 = and i32 %13, 65535, !dbg !587
  %15 = add nuw nsw i32 %11, %14, !dbg !588
  %16 = lshr i32 %13, 16, !dbg !589
  %17 = add nuw nsw i32 %15, %16, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 1, !dbg !579
  %19 = load i32, i32* %18, align 4, !dbg !579, !tbaa !138
  %20 = and i32 %19, 65535, !dbg !583
  %21 = add nuw nsw i32 %20, %17, !dbg !592
  %22 = lshr i32 %19, 16, !dbg !584
  %23 = add nuw nsw i32 %21, %22, !dbg !585
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 1, !dbg !586
  %25 = load i32, i32* %24, align 4, !dbg !586, !tbaa !138
  %26 = and i32 %25, 65535, !dbg !587
  %27 = add nuw nsw i32 %23, %26, !dbg !588
  %28 = lshr i32 %25, 16, !dbg !589
  %29 = add i32 %27, %28, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %30 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 2, !dbg !579
  %31 = load i32, i32* %30, align 4, !dbg !579, !tbaa !138
  %32 = and i32 %31, 65535, !dbg !583
  %33 = add i32 %32, %29, !dbg !592
  %34 = lshr i32 %31, 16, !dbg !584
  %35 = add i32 %33, %34, !dbg !585
  %36 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 2, !dbg !586
  %37 = load i32, i32* %36, align 4, !dbg !586, !tbaa !138
  %38 = and i32 %37, 65535, !dbg !587
  %39 = add i32 %35, %38, !dbg !588
  %40 = lshr i32 %37, 16, !dbg !589
  %41 = add i32 %39, %40, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %4, i64 0, i32 0, i64 3, !dbg !579
  %43 = load i32, i32* %42, align 4, !dbg !579, !tbaa !138
  %44 = and i32 %43, 65535, !dbg !583
  %45 = add i32 %44, %41, !dbg !592
  %46 = lshr i32 %43, 16, !dbg !584
  %47 = add i32 %45, %46, !dbg !585
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %5, i64 0, i32 0, i64 3, !dbg !586
  %49 = load i32, i32* %48, align 4, !dbg !586, !tbaa !138
  %50 = and i32 %49, 65535, !dbg !587
  %51 = add i32 %47, %50, !dbg !588
  %52 = lshr i32 %49, 16, !dbg !589
  %53 = add i32 %51, %52, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %54 = lshr i32 %53, 16, !dbg !593
  %55 = and i32 %53, 65535, !dbg !593
  %56 = add nuw nsw i32 %54, %55, !dbg !593
  %57 = lshr i32 %56, 16, !dbg !594
  %58 = and i32 %56, 65535, !dbg !594
  %59 = add nuw nsw i32 %57, %58, !dbg !594
  %60 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %59) #7, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  ret i16 %60, !dbg !596
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @ip_chksum_pseudo_partial(%struct.pbuf* readonly, i8 zeroext, i16 zeroext, i16 zeroext, %struct.ip_addr* nocapture readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !597 {
  %7 = icmp eq %struct.ip_addr* %5, null, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %7, label %60, label %8, !dbg !613

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !613
  %10 = load i8, i8* %9, align 4, !dbg !613, !tbaa !389
  %11 = icmp eq i8 %10, 6, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %11, label %12, label %60, !dbg !615

; <label>:12:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !628
  %14 = load i32, i32* %13, align 4, !dbg !628, !tbaa !138
  %15 = and i32 %14, 65535, !dbg !630
  %16 = lshr i32 %14, 16, !dbg !631
  %17 = add nuw nsw i32 %15, %16, !dbg !632
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !633
  %19 = load i32, i32* %18, align 4, !dbg !633, !tbaa !138
  %20 = and i32 %19, 65535, !dbg !634
  %21 = add nuw nsw i32 %17, %20, !dbg !635
  %22 = lshr i32 %19, 16, !dbg !636
  %23 = add nuw nsw i32 %21, %22, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !628
  %25 = load i32, i32* %24, align 4, !dbg !628, !tbaa !138
  %26 = and i32 %25, 65535, !dbg !630
  %27 = add nuw nsw i32 %23, %26, !dbg !639
  %28 = lshr i32 %25, 16, !dbg !631
  %29 = add nuw nsw i32 %27, %28, !dbg !632
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !633
  %31 = load i32, i32* %30, align 4, !dbg !633, !tbaa !138
  %32 = and i32 %31, 65535, !dbg !634
  %33 = add nuw nsw i32 %29, %32, !dbg !635
  %34 = lshr i32 %31, 16, !dbg !636
  %35 = add i32 %33, %34, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !628
  %37 = load i32, i32* %36, align 4, !dbg !628, !tbaa !138
  %38 = and i32 %37, 65535, !dbg !630
  %39 = add i32 %35, %38, !dbg !639
  %40 = lshr i32 %37, 16, !dbg !631
  %41 = add i32 %39, %40, !dbg !632
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !633
  %43 = load i32, i32* %42, align 4, !dbg !633, !tbaa !138
  %44 = and i32 %43, 65535, !dbg !634
  %45 = add i32 %41, %44, !dbg !635
  %46 = lshr i32 %43, 16, !dbg !636
  %47 = add i32 %45, %46, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !628
  %49 = load i32, i32* %48, align 4, !dbg !628, !tbaa !138
  %50 = and i32 %49, 65535, !dbg !630
  %51 = add i32 %47, %50, !dbg !639
  %52 = lshr i32 %49, 16, !dbg !631
  %53 = add i32 %51, %52, !dbg !632
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !633
  %55 = load i32, i32* %54, align 4, !dbg !633, !tbaa !138
  %56 = and i32 %55, 65535, !dbg !634
  %57 = add i32 %53, %56, !dbg !635
  %58 = lshr i32 %55, 16, !dbg !636
  %59 = add i32 %57, %58, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br label %72, !dbg !640

; <label>:60:                                     ; preds = %6, %8
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !649
  %62 = load i32, i32* %61, align 4, !dbg !649, !tbaa !228
  %63 = and i32 %62, 65535, !dbg !651
  %64 = lshr i32 %62, 16, !dbg !653
  %65 = add nuw nsw i32 %63, %64, !dbg !654
  %66 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !655
  %67 = load i32, i32* %66, align 4, !dbg !655, !tbaa !228
  %68 = and i32 %67, 65535, !dbg !656
  %69 = add nuw nsw i32 %65, %68, !dbg !657
  %70 = lshr i32 %67, 16, !dbg !658
  %71 = add nuw nsw i32 %69, %70, !dbg !659
  br label %72, !dbg !660

; <label>:72:                                     ; preds = %60, %12
  %73 = phi i32 [ %71, %60 ], [ %59, %12 ]
  %74 = lshr i32 %73, 16, !dbg !661
  %75 = and i32 %73, 65535, !dbg !661
  %76 = add nuw nsw i32 %74, %75, !dbg !661
  %77 = lshr i32 %76, 16, !dbg !661
  %78 = and i32 %76, 65535, !dbg !661
  %79 = add nuw nsw i32 %77, %78, !dbg !661
  %80 = tail call fastcc zeroext i16 @inet_cksum_pseudo_partial_base(%struct.pbuf* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %79) #8, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  ret i16 %80, !dbg !662
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !663 {
  %3 = zext i16 %1 to i32, !dbg !671
  %4 = tail call zeroext i16 @lwip_standard_chksum(i8* %0, i32 %3) #7, !dbg !672
  %5 = xor i16 %4, -1, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  ret i16 %5, !dbg !674
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @inet_chksum_pbuf(%struct.pbuf* readonly) local_unnamed_addr #0 !dbg !675 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %2, label %43, label %3, !dbg !691

; <label>:3:                                      ; preds = %1, %29
  %4 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %5 = phi %struct.pbuf* [ %33, %29 ], [ %0, %1 ]
  %6 = phi i32 [ %30, %29 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !692
  %8 = load i8*, i8** %7, align 8, !dbg !692, !tbaa !267
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !694
  %10 = load i16, i16* %9, align 2, !dbg !694, !tbaa !271
  %11 = zext i16 %10 to i32, !dbg !695
  %12 = tail call zeroext i16 @lwip_standard_chksum(i8* %8, i32 %11) #7, !dbg !696
  %13 = zext i16 %12 to i32, !dbg !696
  %14 = add nsw i32 %6, %13, !dbg !697
  %15 = lshr i32 %14, 16, !dbg !698
  %16 = and i32 %14, 65535, !dbg !698
  %17 = add nuw nsw i32 %15, %16, !dbg !698
  %18 = load i16, i16* %9, align 2, !dbg !699, !tbaa !271
  %19 = and i16 %18, 1, !dbg !701
  %20 = icmp eq i16 %19, 0, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %20, label %29, label %21, !dbg !703

; <label>:21:                                     ; preds = %3
  %22 = icmp eq i32 %4, 0, !dbg !704
  %23 = zext i1 %22 to i32, !dbg !704
  %24 = shl nuw nsw i32 %17, 8, !dbg !706
  %25 = and i32 %24, 65280, !dbg !706
  %26 = lshr i32 %17, 8, !dbg !706
  %27 = and i32 %26, 255, !dbg !706
  %28 = or i32 %25, %27, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br label %29, !dbg !707

; <label>:29:                                     ; preds = %3, %21
  %30 = phi i32 [ %28, %21 ], [ %17, %3 ], !dbg !708
  %31 = phi i32 [ %23, %21 ], [ %4, %3 ], !dbg !709
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !710
  %33 = load %struct.pbuf*, %struct.pbuf** %32, align 8, !dbg !710, !tbaa !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %34 = icmp eq %struct.pbuf* %33, null, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %34, label %35, label %3, !dbg !691, !llvm.loop !712

; <label>:35:                                     ; preds = %29
  %36 = icmp eq i32 %31, 0, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %36, label %45, label %37, !dbg !716

; <label>:37:                                     ; preds = %35
  %38 = shl nsw i32 %30, 8, !dbg !717
  %39 = and i32 %38, 65280, !dbg !717
  %40 = lshr i32 %30, 8, !dbg !717
  %41 = and i32 %40, 255, !dbg !717
  %42 = or i32 %39, %41, !dbg !717
  br label %43, !dbg !719

; <label>:43:                                     ; preds = %1, %37
  %44 = phi i32 [ %42, %37 ], [ 0, %1 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br label %45, !dbg !721

; <label>:45:                                     ; preds = %43, %35
  %46 = phi i32 [ %30, %35 ], [ %44, %43 ], !dbg !709
  %47 = trunc i32 %46 to i16, !dbg !721
  %48 = xor i16 %47, -1, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  ret i16 %48, !dbg !723
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !725
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !727
  call void @llvm.va_start(i8* nonnull %3), !dbg !727
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !728
  call void @llvm.va_end(i8* nonnull %3), !dbg !731
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  ret void, !dbg !732
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
!133 = !DILocation(line: 213, column: 3, scope: !83)
!134 = !DILocation(line: 213, column: 14, scope: !83)
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
!145 = !DILocation(line: 216, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !10, line: 215, column: 20)
!147 = !DILocation(line: 217, column: 5, scope: !146)
!148 = !DILocation(line: 0, scope: !136)
!149 = !DILocation(line: 219, column: 20, scope: !136)
!150 = !DILocation(line: 219, column: 17, scope: !136)
!151 = !DILocation(line: 219, column: 15, scope: !136)
!152 = !DILocation(line: 220, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !136, file: !10, line: 220, column: 9)
!154 = !DILocation(line: 220, column: 9, scope: !136)
!155 = !DILocation(line: 221, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !10, line: 220, column: 20)
!157 = !DILocation(line: 222, column: 5, scope: !156)
!158 = !DILocation(line: 224, column: 9, scope: !136)
!159 = distinct !{!159, !133, !160}
!160 = !DILocation(line: 225, column: 3, scope: !83)
!161 = !DILocation(line: 228, column: 9, scope: !83)
!162 = !DILocation(line: 0, scope: !156)
!163 = !DILocation(line: 233, column: 3, scope: !83)
!164 = !DILocation(line: 233, column: 14, scope: !83)
!165 = !DILocation(line: 234, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !83, file: !10, line: 233, column: 19)
!167 = !DILocation(line: 234, column: 12, scope: !166)
!168 = !DILocation(line: 234, column: 9, scope: !166)
!169 = !DILocation(line: 235, column: 9, scope: !166)
!170 = distinct !{!170, !171}
!171 = !{!"llvm.loop.unroll.disable"}
!172 = distinct !{!172, !163, !173}
!173 = !DILocation(line: 236, column: 3, scope: !83)
!174 = !DILocation(line: 239, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !83, file: !10, line: 239, column: 7)
!176 = !DILocation(line: 0, scope: !166)
!177 = !DILocation(line: 239, column: 7, scope: !83)
!178 = !DILocation(line: 240, column: 23, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !10, line: 239, column: 16)
!180 = !DILocation(line: 241, column: 3, scope: !179)
!181 = !DILocation(line: 243, column: 10, scope: !83)
!182 = !DILocation(line: 243, column: 7, scope: !83)
!183 = !DILocation(line: 247, column: 9, scope: !83)
!184 = !DILocation(line: 248, column: 9, scope: !83)
!185 = !DILocation(line: 250, column: 7, scope: !83)
!186 = !DILocation(line: 251, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !10, line: 250, column: 12)
!188 = distinct !DILexicalBlock(scope: !83, file: !10, line: 250, column: 7)
!189 = !DILocation(line: 252, column: 3, scope: !187)
!190 = !DILocation(line: 254, column: 10, scope: !83)
!191 = !DILocation(line: 254, column: 3, scope: !83)
!192 = distinct !DISubprogram(name: "inet_chksum_pseudo", scope: !10, file: !10, line: 310, type: !193, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !214)
!193 = !DISubroutineType(types: !194)
!194 = !{!43, !195, !29, !43, !207, !207}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !197, line: 186, size: 192, elements: !198)
!197 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !197, line: 188, baseType: !195, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !196, file: !197, line: 191, baseType: !54, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !196, file: !197, line: 200, baseType: !43, size: 16, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !196, file: !197, line: 203, baseType: !43, size: 16, offset: 144)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !196, file: !197, line: 208, baseType: !29, size: 8, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !197, line: 211, baseType: !29, size: 8, offset: 168)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !196, file: !197, line: 218, baseType: !29, size: 8, offset: 176)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !196, file: !197, line: 221, baseType: !29, size: 8, offset: 184)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !210, line: 57, baseType: !211)
!210 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !210, line: 51, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !211, file: !210, line: 52, baseType: !51, size: 32)
!214 = !{!215, !216, !217, !218, !219, !220, !221}
!215 = !DILocalVariable(name: "p", arg: 1, scope: !192, file: !10, line: 310, type: !195)
!216 = !DILocalVariable(name: "proto", arg: 2, scope: !192, file: !10, line: 310, type: !29)
!217 = !DILocalVariable(name: "proto_len", arg: 3, scope: !192, file: !10, line: 310, type: !43)
!218 = !DILocalVariable(name: "src", arg: 4, scope: !192, file: !10, line: 311, type: !207)
!219 = !DILocalVariable(name: "dest", arg: 5, scope: !192, file: !10, line: 311, type: !207)
!220 = !DILocalVariable(name: "acc", scope: !192, file: !10, line: 313, type: !51)
!221 = !DILocalVariable(name: "addr", scope: !192, file: !10, line: 314, type: !51)
!222 = !DILocation(line: 310, column: 33, scope: !192)
!223 = !DILocation(line: 310, column: 41, scope: !192)
!224 = !DILocation(line: 310, column: 54, scope: !192)
!225 = !DILocation(line: 311, column: 38, scope: !192)
!226 = !DILocation(line: 311, column: 61, scope: !192)
!227 = !DILocation(line: 316, column: 10, scope: !192)
!228 = !{!229, !139, i64 0}
!229 = !{!"ip4_addr", !139, i64 0}
!230 = !DILocation(line: 314, column: 9, scope: !192)
!231 = !DILocation(line: 317, column: 15, scope: !192)
!232 = !DILocation(line: 313, column: 9, scope: !192)
!233 = !DILocation(line: 318, column: 30, scope: !192)
!234 = !DILocation(line: 318, column: 21, scope: !192)
!235 = !DILocation(line: 319, column: 10, scope: !192)
!236 = !DILocation(line: 320, column: 29, scope: !192)
!237 = !DILocation(line: 320, column: 21, scope: !192)
!238 = !DILocation(line: 321, column: 30, scope: !192)
!239 = !DILocation(line: 321, column: 21, scope: !192)
!240 = !DILocation(line: 323, column: 9, scope: !192)
!241 = !DILocation(line: 324, column: 9, scope: !192)
!242 = !DILocation(line: 326, column: 10, scope: !192)
!243 = !DILocation(line: 326, column: 3, scope: !192)
!244 = distinct !DISubprogram(name: "inet_cksum_pseudo_base", scope: !10, file: !10, line: 260, type: !245, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!43, !195, !29, !43, !51}
!247 = !{!248, !249, !250, !251, !252, !253}
!248 = !DILocalVariable(name: "p", arg: 1, scope: !244, file: !10, line: 260, type: !195)
!249 = !DILocalVariable(name: "proto", arg: 2, scope: !244, file: !10, line: 260, type: !29)
!250 = !DILocalVariable(name: "proto_len", arg: 3, scope: !244, file: !10, line: 260, type: !43)
!251 = !DILocalVariable(name: "acc", arg: 4, scope: !244, file: !10, line: 260, type: !51)
!252 = !DILocalVariable(name: "q", scope: !244, file: !10, line: 262, type: !195)
!253 = !DILocalVariable(name: "swapped", scope: !244, file: !10, line: 263, type: !86)
!254 = !DILocation(line: 260, column: 37, scope: !244)
!255 = !DILocation(line: 260, column: 45, scope: !244)
!256 = !DILocation(line: 260, column: 58, scope: !244)
!257 = !DILocation(line: 260, column: 75, scope: !244)
!258 = !DILocation(line: 263, column: 7, scope: !244)
!259 = !DILocation(line: 262, column: 16, scope: !244)
!260 = !DILocation(line: 266, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !244, file: !10, line: 266, column: 3)
!262 = !DILocation(line: 266, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !10, line: 266, column: 3)
!264 = !DILocation(line: 266, column: 3, scope: !261)
!265 = !DILocation(line: 269, column: 27, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !10, line: 266, column: 39)
!267 = !{!268, !269, i64 8}
!268 = !{!"pbuf", !269, i64 0, !269, i64 8, !127, i64 16, !127, i64 18, !111, i64 20, !111, i64 21, !111, i64 22, !111, i64 23}
!269 = !{!"any pointer", !111, i64 0}
!270 = !DILocation(line: 269, column: 39, scope: !266)
!271 = !{!268, !127, i64 18}
!272 = !DILocation(line: 269, column: 36, scope: !266)
!273 = !DILocation(line: 269, column: 12, scope: !266)
!274 = !DILocation(line: 269, column: 9, scope: !266)
!275 = !DILocation(line: 273, column: 11, scope: !266)
!276 = !DILocation(line: 274, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !266, file: !10, line: 274, column: 9)
!278 = !DILocation(line: 274, column: 16, scope: !277)
!279 = !DILocation(line: 274, column: 20, scope: !277)
!280 = !DILocation(line: 274, column: 9, scope: !266)
!281 = !DILocation(line: 275, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !10, line: 274, column: 26)
!283 = !DILocation(line: 276, column: 13, scope: !282)
!284 = !DILocation(line: 277, column: 5, scope: !282)
!285 = !DILocation(line: 0, scope: !266)
!286 = !DILocation(line: 0, scope: !244)
!287 = !DILocation(line: 266, column: 33, scope: !263)
!288 = !{!268, !269, i64 0}
!289 = !DILocation(line: 266, column: 3, scope: !263)
!290 = distinct !{!290, !264, !291}
!291 = !DILocation(line: 279, column: 3, scope: !261)
!292 = !DILocation(line: 281, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !244, file: !10, line: 281, column: 7)
!294 = !DILocation(line: 281, column: 7, scope: !244)
!295 = !DILocation(line: 282, column: 11, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !10, line: 281, column: 16)
!297 = !DILocation(line: 283, column: 3, scope: !296)
!298 = !DILocation(line: 0, scope: !296)
!299 = !DILocation(line: 285, column: 28, scope: !244)
!300 = !DILocation(line: 285, column: 17, scope: !244)
!301 = !DILocation(line: 285, column: 10, scope: !244)
!302 = !DILocation(line: 285, column: 7, scope: !244)
!303 = !DILocation(line: 286, column: 17, scope: !244)
!304 = !DILocation(line: 286, column: 10, scope: !244)
!305 = !DILocation(line: 286, column: 7, scope: !244)
!306 = !DILocation(line: 290, column: 9, scope: !244)
!307 = !DILocation(line: 291, column: 9, scope: !244)
!308 = !DILocation(line: 293, column: 23, scope: !244)
!309 = !DILocation(line: 293, column: 17, scope: !244)
!310 = !DILocation(line: 293, column: 3, scope: !244)
!311 = distinct !DISubprogram(name: "ip6_chksum_pseudo", scope: !10, file: !10, line: 343, type: !312, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !325)
!312 = !DISubroutineType(types: !313)
!313 = !{!43, !195, !29, !43, !314, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !317, line: 67, baseType: !318)
!317 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !317, line: 59, size: 160, elements: !319)
!319 = !{!320, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !318, file: !317, line: 60, baseType: !321, size: 128)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 4)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !318, file: !317, line: 62, baseType: !29, size: 8, offset: 128)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333}
!326 = !DILocalVariable(name: "p", arg: 1, scope: !311, file: !10, line: 343, type: !195)
!327 = !DILocalVariable(name: "proto", arg: 2, scope: !311, file: !10, line: 343, type: !29)
!328 = !DILocalVariable(name: "proto_len", arg: 3, scope: !311, file: !10, line: 343, type: !43)
!329 = !DILocalVariable(name: "src", arg: 4, scope: !311, file: !10, line: 344, type: !314)
!330 = !DILocalVariable(name: "dest", arg: 5, scope: !311, file: !10, line: 344, type: !314)
!331 = !DILocalVariable(name: "acc", scope: !311, file: !10, line: 346, type: !51)
!332 = !DILocalVariable(name: "addr", scope: !311, file: !10, line: 347, type: !51)
!333 = !DILocalVariable(name: "addr_part", scope: !311, file: !10, line: 348, type: !29)
!334 = !DILocation(line: 343, column: 32, scope: !311)
!335 = !DILocation(line: 343, column: 40, scope: !311)
!336 = !DILocation(line: 343, column: 53, scope: !311)
!337 = !DILocation(line: 344, column: 37, scope: !311)
!338 = !DILocation(line: 344, column: 60, scope: !311)
!339 = !DILocation(line: 346, column: 9, scope: !311)
!340 = !DILocation(line: 348, column: 8, scope: !311)
!341 = !DILocation(line: 350, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !311, file: !10, line: 350, column: 3)
!343 = !DILocation(line: 350, column: 3, scope: !342)
!344 = !DILocation(line: 351, column: 12, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !10, line: 350, column: 51)
!346 = distinct !DILexicalBlock(scope: !342, file: !10, line: 350, column: 3)
!347 = !DILocation(line: 347, column: 9, scope: !311)
!348 = !DILocation(line: 352, column: 31, scope: !345)
!349 = !DILocation(line: 353, column: 32, scope: !345)
!350 = !DILocation(line: 353, column: 23, scope: !345)
!351 = !DILocation(line: 354, column: 12, scope: !345)
!352 = !DILocation(line: 355, column: 31, scope: !345)
!353 = !DILocation(line: 355, column: 23, scope: !345)
!354 = !DILocation(line: 356, column: 32, scope: !345)
!355 = !DILocation(line: 356, column: 23, scope: !345)
!356 = !DILocation(line: 350, column: 3, scope: !346)
!357 = !DILocation(line: 352, column: 23, scope: !345)
!358 = !DILocation(line: 359, column: 9, scope: !311)
!359 = !DILocation(line: 360, column: 9, scope: !311)
!360 = !DILocation(line: 362, column: 10, scope: !311)
!361 = !DILocation(line: 362, column: 3, scope: !311)
!362 = distinct !DISubprogram(name: "ip_chksum_pseudo", scope: !10, file: !10, line: 379, type: !363, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !376)
!363 = !DISubroutineType(types: !364)
!364 = !{!43, !195, !29, !43, !365, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !13, line: 76, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !13, line: 69, size: 192, elements: !369)
!369 = !{!370, !375}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !368, file: !13, line: 73, baseType: !371, size: 160)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !13, line: 70, size: 160, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !371, file: !13, line: 71, baseType: !316, size: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !371, file: !13, line: 72, baseType: !209, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !13, line: 75, baseType: !29, size: 8, offset: 160)
!376 = !{!377, !378, !379, !380, !381}
!377 = !DILocalVariable(name: "p", arg: 1, scope: !362, file: !10, line: 379, type: !195)
!378 = !DILocalVariable(name: "proto", arg: 2, scope: !362, file: !10, line: 379, type: !29)
!379 = !DILocalVariable(name: "proto_len", arg: 3, scope: !362, file: !10, line: 379, type: !43)
!380 = !DILocalVariable(name: "src", arg: 4, scope: !362, file: !10, line: 380, type: !365)
!381 = !DILocalVariable(name: "dest", arg: 5, scope: !362, file: !10, line: 380, type: !365)
!382 = !DILocation(line: 379, column: 31, scope: !362)
!383 = !DILocation(line: 379, column: 39, scope: !362)
!384 = !DILocation(line: 379, column: 52, scope: !362)
!385 = !DILocation(line: 380, column: 35, scope: !362)
!386 = !DILocation(line: 380, column: 57, scope: !362)
!387 = !DILocation(line: 383, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !362, file: !10, line: 383, column: 7)
!389 = !{!390, !111, i64 20}
!390 = !{!"ip_addr", !111, i64 0, !111, i64 20}
!391 = !DILocation(line: 383, column: 7, scope: !362)
!392 = !DILocation(line: 343, column: 32, scope: !311, inlinedAt: !393)
!393 = distinct !DILocation(line: 384, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !388, file: !10, line: 383, column: 23)
!395 = !DILocation(line: 343, column: 40, scope: !311, inlinedAt: !393)
!396 = !DILocation(line: 343, column: 53, scope: !311, inlinedAt: !393)
!397 = !DILocation(line: 344, column: 37, scope: !311, inlinedAt: !393)
!398 = !DILocation(line: 344, column: 60, scope: !311, inlinedAt: !393)
!399 = !DILocation(line: 346, column: 9, scope: !311, inlinedAt: !393)
!400 = !DILocation(line: 348, column: 8, scope: !311, inlinedAt: !393)
!401 = !DILocation(line: 350, column: 8, scope: !342, inlinedAt: !393)
!402 = !DILocation(line: 350, column: 3, scope: !342, inlinedAt: !393)
!403 = !DILocation(line: 351, column: 12, scope: !345, inlinedAt: !393)
!404 = !DILocation(line: 347, column: 9, scope: !311, inlinedAt: !393)
!405 = !DILocation(line: 352, column: 31, scope: !345, inlinedAt: !393)
!406 = !DILocation(line: 353, column: 32, scope: !345, inlinedAt: !393)
!407 = !DILocation(line: 353, column: 23, scope: !345, inlinedAt: !393)
!408 = !DILocation(line: 354, column: 12, scope: !345, inlinedAt: !393)
!409 = !DILocation(line: 355, column: 31, scope: !345, inlinedAt: !393)
!410 = !DILocation(line: 355, column: 23, scope: !345, inlinedAt: !393)
!411 = !DILocation(line: 356, column: 32, scope: !345, inlinedAt: !393)
!412 = !DILocation(line: 356, column: 23, scope: !345, inlinedAt: !393)
!413 = !DILocation(line: 350, column: 3, scope: !346, inlinedAt: !393)
!414 = !DILocation(line: 352, column: 23, scope: !345, inlinedAt: !393)
!415 = !DILocation(line: 384, column: 5, scope: !394)
!416 = !DILocation(line: 310, column: 33, scope: !192, inlinedAt: !417)
!417 = distinct !DILocation(line: 392, column: 12, scope: !418)
!418 = distinct !DILexicalBlock(scope: !388, file: !10, line: 391, column: 3)
!419 = !DILocation(line: 310, column: 41, scope: !192, inlinedAt: !417)
!420 = !DILocation(line: 310, column: 54, scope: !192, inlinedAt: !417)
!421 = !DILocation(line: 311, column: 38, scope: !192, inlinedAt: !417)
!422 = !DILocation(line: 311, column: 61, scope: !192, inlinedAt: !417)
!423 = !DILocation(line: 316, column: 10, scope: !192, inlinedAt: !417)
!424 = !DILocation(line: 314, column: 9, scope: !192, inlinedAt: !417)
!425 = !DILocation(line: 317, column: 15, scope: !192, inlinedAt: !417)
!426 = !DILocation(line: 313, column: 9, scope: !192, inlinedAt: !417)
!427 = !DILocation(line: 318, column: 30, scope: !192, inlinedAt: !417)
!428 = !DILocation(line: 318, column: 21, scope: !192, inlinedAt: !417)
!429 = !DILocation(line: 319, column: 10, scope: !192, inlinedAt: !417)
!430 = !DILocation(line: 320, column: 29, scope: !192, inlinedAt: !417)
!431 = !DILocation(line: 320, column: 21, scope: !192, inlinedAt: !417)
!432 = !DILocation(line: 321, column: 30, scope: !192, inlinedAt: !417)
!433 = !DILocation(line: 321, column: 21, scope: !192, inlinedAt: !417)
!434 = !DILocation(line: 392, column: 5, scope: !418)
!435 = !DILocation(line: 0, scope: !394)
!436 = !DILocation(line: 395, column: 1, scope: !362)
!437 = distinct !DISubprogram(name: "inet_chksum_pseudo_partial", scope: !10, file: !10, line: 456, type: !438, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!43, !195, !29, !43, !43, !207, !207}
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448}
!441 = !DILocalVariable(name: "p", arg: 1, scope: !437, file: !10, line: 456, type: !195)
!442 = !DILocalVariable(name: "proto", arg: 2, scope: !437, file: !10, line: 456, type: !29)
!443 = !DILocalVariable(name: "proto_len", arg: 3, scope: !437, file: !10, line: 456, type: !43)
!444 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !437, file: !10, line: 457, type: !43)
!445 = !DILocalVariable(name: "src", arg: 5, scope: !437, file: !10, line: 457, type: !207)
!446 = !DILocalVariable(name: "dest", arg: 6, scope: !437, file: !10, line: 457, type: !207)
!447 = !DILocalVariable(name: "acc", scope: !437, file: !10, line: 459, type: !51)
!448 = !DILocalVariable(name: "addr", scope: !437, file: !10, line: 460, type: !51)
!449 = !DILocation(line: 456, column: 41, scope: !437)
!450 = !DILocation(line: 456, column: 49, scope: !437)
!451 = !DILocation(line: 456, column: 62, scope: !437)
!452 = !DILocation(line: 457, column: 34, scope: !437)
!453 = !DILocation(line: 457, column: 64, scope: !437)
!454 = !DILocation(line: 457, column: 87, scope: !437)
!455 = !DILocation(line: 462, column: 10, scope: !437)
!456 = !DILocation(line: 460, column: 9, scope: !437)
!457 = !DILocation(line: 463, column: 15, scope: !437)
!458 = !DILocation(line: 459, column: 9, scope: !437)
!459 = !DILocation(line: 464, column: 30, scope: !437)
!460 = !DILocation(line: 464, column: 21, scope: !437)
!461 = !DILocation(line: 465, column: 10, scope: !437)
!462 = !DILocation(line: 466, column: 29, scope: !437)
!463 = !DILocation(line: 466, column: 21, scope: !437)
!464 = !DILocation(line: 467, column: 30, scope: !437)
!465 = !DILocation(line: 467, column: 21, scope: !437)
!466 = !DILocation(line: 469, column: 9, scope: !437)
!467 = !DILocation(line: 470, column: 9, scope: !437)
!468 = !DILocation(line: 472, column: 10, scope: !437)
!469 = !DILocation(line: 472, column: 3, scope: !437)
!470 = distinct !DISubprogram(name: "inet_cksum_pseudo_partial_base", scope: !10, file: !10, line: 399, type: !471, isLocal: true, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!43, !195, !29, !43, !43, !51}
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481}
!474 = !DILocalVariable(name: "p", arg: 1, scope: !470, file: !10, line: 399, type: !195)
!475 = !DILocalVariable(name: "proto", arg: 2, scope: !470, file: !10, line: 399, type: !29)
!476 = !DILocalVariable(name: "proto_len", arg: 3, scope: !470, file: !10, line: 399, type: !43)
!477 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !470, file: !10, line: 400, type: !43)
!478 = !DILocalVariable(name: "acc", arg: 5, scope: !470, file: !10, line: 400, type: !51)
!479 = !DILocalVariable(name: "q", scope: !470, file: !10, line: 402, type: !195)
!480 = !DILocalVariable(name: "swapped", scope: !470, file: !10, line: 403, type: !86)
!481 = !DILocalVariable(name: "chklen", scope: !470, file: !10, line: 404, type: !43)
!482 = !DILocation(line: 399, column: 45, scope: !470)
!483 = !DILocation(line: 399, column: 53, scope: !470)
!484 = !DILocation(line: 399, column: 66, scope: !470)
!485 = !DILocation(line: 400, column: 38, scope: !470)
!486 = !DILocation(line: 400, column: 56, scope: !470)
!487 = !DILocation(line: 403, column: 7, scope: !470)
!488 = !DILocation(line: 402, column: 16, scope: !470)
!489 = !DILocation(line: 407, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !470, file: !10, line: 407, column: 3)
!491 = !DILocation(line: 407, column: 18, scope: !492)
!492 = distinct !DILexicalBlock(scope: !490, file: !10, line: 407, column: 3)
!493 = !DILocation(line: 407, column: 42, scope: !492)
!494 = !DILocation(line: 407, column: 27, scope: !492)
!495 = !DILocation(line: 407, column: 3, scope: !490)
!496 = !DILocation(line: 410, column: 17, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !10, line: 407, column: 61)
!498 = !DILocation(line: 404, column: 9, scope: !470)
!499 = !DILocation(line: 411, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !10, line: 411, column: 9)
!501 = !DILocation(line: 411, column: 9, scope: !497)
!502 = !DILocation(line: 413, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !10, line: 411, column: 30)
!504 = !DILocation(line: 0, scope: !497)
!505 = !DILocation(line: 414, column: 27, scope: !497)
!506 = !DILocation(line: 414, column: 36, scope: !497)
!507 = !DILocation(line: 414, column: 12, scope: !497)
!508 = !DILocation(line: 414, column: 9, scope: !497)
!509 = !DILocation(line: 415, column: 37, scope: !497)
!510 = !DILocation(line: 416, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !10, line: 416, column: 5)
!512 = distinct !DILexicalBlock(scope: !497, file: !10, line: 416, column: 5)
!513 = !DILocation(line: 416, column: 5, scope: !512)
!514 = !DILocation(line: 416, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !10, line: 416, column: 5)
!516 = distinct !DILexicalBlock(scope: !511, file: !10, line: 416, column: 5)
!517 = !DILocation(line: 416, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !10, line: 416, column: 5)
!519 = distinct !DILexicalBlock(scope: !520, file: !10, line: 416, column: 5)
!520 = distinct !DILexicalBlock(scope: !515, file: !10, line: 416, column: 5)
!521 = !DILocation(line: 419, column: 11, scope: !497)
!522 = !DILocation(line: 420, column: 12, scope: !523)
!523 = distinct !DILexicalBlock(scope: !497, file: !10, line: 420, column: 9)
!524 = !DILocation(line: 420, column: 16, scope: !523)
!525 = !DILocation(line: 420, column: 20, scope: !523)
!526 = !DILocation(line: 420, column: 9, scope: !497)
!527 = !DILocation(line: 421, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !10, line: 420, column: 26)
!529 = !DILocation(line: 422, column: 13, scope: !528)
!530 = !DILocation(line: 423, column: 5, scope: !528)
!531 = !DILocation(line: 0, scope: !470)
!532 = !DILocation(line: 407, column: 55, scope: !492)
!533 = !DILocation(line: 407, column: 3, scope: !492)
!534 = distinct !{!534, !495, !535}
!535 = !DILocation(line: 425, column: 3, scope: !490)
!536 = !DILocation(line: 427, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !470, file: !10, line: 427, column: 7)
!538 = !DILocation(line: 427, column: 7, scope: !470)
!539 = !DILocation(line: 428, column: 11, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !10, line: 427, column: 16)
!541 = !DILocation(line: 429, column: 3, scope: !540)
!542 = !DILocation(line: 0, scope: !540)
!543 = !DILocation(line: 431, column: 28, scope: !470)
!544 = !DILocation(line: 431, column: 17, scope: !470)
!545 = !DILocation(line: 431, column: 10, scope: !470)
!546 = !DILocation(line: 431, column: 7, scope: !470)
!547 = !DILocation(line: 432, column: 17, scope: !470)
!548 = !DILocation(line: 432, column: 10, scope: !470)
!549 = !DILocation(line: 432, column: 7, scope: !470)
!550 = !DILocation(line: 436, column: 9, scope: !470)
!551 = !DILocation(line: 437, column: 9, scope: !470)
!552 = !DILocation(line: 439, column: 23, scope: !470)
!553 = !DILocation(line: 439, column: 17, scope: !470)
!554 = !DILocation(line: 439, column: 3, scope: !470)
!555 = distinct !DISubprogram(name: "ip6_chksum_pseudo_partial", scope: !10, file: !10, line: 491, type: !556, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!43, !195, !29, !43, !43, !314, !314}
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567}
!559 = !DILocalVariable(name: "p", arg: 1, scope: !555, file: !10, line: 491, type: !195)
!560 = !DILocalVariable(name: "proto", arg: 2, scope: !555, file: !10, line: 491, type: !29)
!561 = !DILocalVariable(name: "proto_len", arg: 3, scope: !555, file: !10, line: 491, type: !43)
!562 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !555, file: !10, line: 492, type: !43)
!563 = !DILocalVariable(name: "src", arg: 5, scope: !555, file: !10, line: 492, type: !314)
!564 = !DILocalVariable(name: "dest", arg: 6, scope: !555, file: !10, line: 492, type: !314)
!565 = !DILocalVariable(name: "acc", scope: !555, file: !10, line: 494, type: !51)
!566 = !DILocalVariable(name: "addr", scope: !555, file: !10, line: 495, type: !51)
!567 = !DILocalVariable(name: "addr_part", scope: !555, file: !10, line: 496, type: !29)
!568 = !DILocation(line: 491, column: 40, scope: !555)
!569 = !DILocation(line: 491, column: 48, scope: !555)
!570 = !DILocation(line: 491, column: 61, scope: !555)
!571 = !DILocation(line: 492, column: 33, scope: !555)
!572 = !DILocation(line: 492, column: 63, scope: !555)
!573 = !DILocation(line: 492, column: 86, scope: !555)
!574 = !DILocation(line: 494, column: 9, scope: !555)
!575 = !DILocation(line: 496, column: 8, scope: !555)
!576 = !DILocation(line: 498, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !555, file: !10, line: 498, column: 3)
!578 = !DILocation(line: 498, column: 3, scope: !577)
!579 = !DILocation(line: 499, column: 12, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !10, line: 498, column: 51)
!581 = distinct !DILexicalBlock(scope: !577, file: !10, line: 498, column: 3)
!582 = !DILocation(line: 495, column: 9, scope: !555)
!583 = !DILocation(line: 500, column: 31, scope: !580)
!584 = !DILocation(line: 501, column: 32, scope: !580)
!585 = !DILocation(line: 501, column: 23, scope: !580)
!586 = !DILocation(line: 502, column: 12, scope: !580)
!587 = !DILocation(line: 503, column: 31, scope: !580)
!588 = !DILocation(line: 503, column: 23, scope: !580)
!589 = !DILocation(line: 504, column: 32, scope: !580)
!590 = !DILocation(line: 504, column: 23, scope: !580)
!591 = !DILocation(line: 498, column: 3, scope: !581)
!592 = !DILocation(line: 500, column: 23, scope: !580)
!593 = !DILocation(line: 507, column: 9, scope: !555)
!594 = !DILocation(line: 508, column: 9, scope: !555)
!595 = !DILocation(line: 510, column: 10, scope: !555)
!596 = !DILocation(line: 510, column: 3, scope: !555)
!597 = distinct !DISubprogram(name: "ip_chksum_pseudo_partial", scope: !10, file: !10, line: 526, type: !598, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!43, !195, !29, !43, !43, !365, !365}
!600 = !{!601, !602, !603, !604, !605, !606}
!601 = !DILocalVariable(name: "p", arg: 1, scope: !597, file: !10, line: 526, type: !195)
!602 = !DILocalVariable(name: "proto", arg: 2, scope: !597, file: !10, line: 526, type: !29)
!603 = !DILocalVariable(name: "proto_len", arg: 3, scope: !597, file: !10, line: 526, type: !43)
!604 = !DILocalVariable(name: "chksum_len", arg: 4, scope: !597, file: !10, line: 527, type: !43)
!605 = !DILocalVariable(name: "src", arg: 5, scope: !597, file: !10, line: 527, type: !365)
!606 = !DILocalVariable(name: "dest", arg: 6, scope: !597, file: !10, line: 527, type: !365)
!607 = !DILocation(line: 526, column: 39, scope: !597)
!608 = !DILocation(line: 526, column: 47, scope: !597)
!609 = !DILocation(line: 526, column: 60, scope: !597)
!610 = !DILocation(line: 527, column: 32, scope: !597)
!611 = !DILocation(line: 527, column: 61, scope: !597)
!612 = !DILocation(line: 527, column: 83, scope: !597)
!613 = !DILocation(line: 530, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !597, file: !10, line: 530, column: 7)
!615 = !DILocation(line: 530, column: 7, scope: !597)
!616 = !DILocation(line: 491, column: 40, scope: !555, inlinedAt: !617)
!617 = distinct !DILocation(line: 531, column: 12, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !10, line: 530, column: 23)
!619 = !DILocation(line: 491, column: 48, scope: !555, inlinedAt: !617)
!620 = !DILocation(line: 491, column: 61, scope: !555, inlinedAt: !617)
!621 = !DILocation(line: 492, column: 33, scope: !555, inlinedAt: !617)
!622 = !DILocation(line: 492, column: 63, scope: !555, inlinedAt: !617)
!623 = !DILocation(line: 492, column: 86, scope: !555, inlinedAt: !617)
!624 = !DILocation(line: 494, column: 9, scope: !555, inlinedAt: !617)
!625 = !DILocation(line: 496, column: 8, scope: !555, inlinedAt: !617)
!626 = !DILocation(line: 498, column: 8, scope: !577, inlinedAt: !617)
!627 = !DILocation(line: 498, column: 3, scope: !577, inlinedAt: !617)
!628 = !DILocation(line: 499, column: 12, scope: !580, inlinedAt: !617)
!629 = !DILocation(line: 495, column: 9, scope: !555, inlinedAt: !617)
!630 = !DILocation(line: 500, column: 31, scope: !580, inlinedAt: !617)
!631 = !DILocation(line: 501, column: 32, scope: !580, inlinedAt: !617)
!632 = !DILocation(line: 501, column: 23, scope: !580, inlinedAt: !617)
!633 = !DILocation(line: 502, column: 12, scope: !580, inlinedAt: !617)
!634 = !DILocation(line: 503, column: 31, scope: !580, inlinedAt: !617)
!635 = !DILocation(line: 503, column: 23, scope: !580, inlinedAt: !617)
!636 = !DILocation(line: 504, column: 32, scope: !580, inlinedAt: !617)
!637 = !DILocation(line: 504, column: 23, scope: !580, inlinedAt: !617)
!638 = !DILocation(line: 498, column: 3, scope: !581, inlinedAt: !617)
!639 = !DILocation(line: 500, column: 23, scope: !580, inlinedAt: !617)
!640 = !DILocation(line: 531, column: 5, scope: !618)
!641 = !DILocation(line: 456, column: 41, scope: !437, inlinedAt: !642)
!642 = distinct !DILocation(line: 539, column: 12, scope: !643)
!643 = distinct !DILexicalBlock(scope: !614, file: !10, line: 538, column: 3)
!644 = !DILocation(line: 456, column: 49, scope: !437, inlinedAt: !642)
!645 = !DILocation(line: 456, column: 62, scope: !437, inlinedAt: !642)
!646 = !DILocation(line: 457, column: 34, scope: !437, inlinedAt: !642)
!647 = !DILocation(line: 457, column: 64, scope: !437, inlinedAt: !642)
!648 = !DILocation(line: 457, column: 87, scope: !437, inlinedAt: !642)
!649 = !DILocation(line: 462, column: 10, scope: !437, inlinedAt: !642)
!650 = !DILocation(line: 460, column: 9, scope: !437, inlinedAt: !642)
!651 = !DILocation(line: 463, column: 15, scope: !437, inlinedAt: !642)
!652 = !DILocation(line: 459, column: 9, scope: !437, inlinedAt: !642)
!653 = !DILocation(line: 464, column: 30, scope: !437, inlinedAt: !642)
!654 = !DILocation(line: 464, column: 21, scope: !437, inlinedAt: !642)
!655 = !DILocation(line: 465, column: 10, scope: !437, inlinedAt: !642)
!656 = !DILocation(line: 466, column: 29, scope: !437, inlinedAt: !642)
!657 = !DILocation(line: 466, column: 21, scope: !437, inlinedAt: !642)
!658 = !DILocation(line: 467, column: 30, scope: !437, inlinedAt: !642)
!659 = !DILocation(line: 467, column: 21, scope: !437, inlinedAt: !642)
!660 = !DILocation(line: 539, column: 5, scope: !643)
!661 = !DILocation(line: 0, scope: !618)
!662 = !DILocation(line: 542, column: 1, scope: !597)
!663 = distinct !DISubprogram(name: "inet_chksum", scope: !10, file: !10, line: 555, type: !664, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!43, !47, !43}
!666 = !{!667, !668}
!667 = !DILocalVariable(name: "dataptr", arg: 1, scope: !663, file: !10, line: 555, type: !47)
!668 = !DILocalVariable(name: "len", arg: 2, scope: !663, file: !10, line: 555, type: !43)
!669 = !DILocation(line: 555, column: 25, scope: !663)
!670 = !DILocation(line: 555, column: 40, scope: !663)
!671 = !DILocation(line: 557, column: 53, scope: !663)
!672 = !DILocation(line: 557, column: 32, scope: !663)
!673 = !DILocation(line: 557, column: 17, scope: !663)
!674 = !DILocation(line: 557, column: 3, scope: !663)
!675 = distinct !DISubprogram(name: "inet_chksum_pbuf", scope: !10, file: !10, line: 568, type: !676, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{!43, !195}
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(name: "p", arg: 1, scope: !675, file: !10, line: 568, type: !195)
!680 = !DILocalVariable(name: "acc", scope: !675, file: !10, line: 570, type: !51)
!681 = !DILocalVariable(name: "q", scope: !675, file: !10, line: 571, type: !195)
!682 = !DILocalVariable(name: "swapped", scope: !675, file: !10, line: 572, type: !86)
!683 = !DILocation(line: 568, column: 31, scope: !675)
!684 = !DILocation(line: 572, column: 7, scope: !675)
!685 = !DILocation(line: 570, column: 9, scope: !675)
!686 = !DILocation(line: 571, column: 16, scope: !675)
!687 = !DILocation(line: 575, column: 8, scope: !688)
!688 = distinct !DILexicalBlock(scope: !675, file: !10, line: 575, column: 3)
!689 = !DILocation(line: 575, column: 17, scope: !690)
!690 = distinct !DILexicalBlock(scope: !688, file: !10, line: 575, column: 3)
!691 = !DILocation(line: 575, column: 3, scope: !688)
!692 = !DILocation(line: 576, column: 27, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !10, line: 575, column: 39)
!694 = !DILocation(line: 576, column: 39, scope: !693)
!695 = !DILocation(line: 576, column: 36, scope: !693)
!696 = !DILocation(line: 576, column: 12, scope: !693)
!697 = !DILocation(line: 576, column: 9, scope: !693)
!698 = !DILocation(line: 577, column: 11, scope: !693)
!699 = !DILocation(line: 578, column: 12, scope: !700)
!700 = distinct !DILexicalBlock(scope: !693, file: !10, line: 578, column: 9)
!701 = !DILocation(line: 578, column: 16, scope: !700)
!702 = !DILocation(line: 578, column: 20, scope: !700)
!703 = !DILocation(line: 578, column: 9, scope: !693)
!704 = !DILocation(line: 579, column: 17, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !10, line: 578, column: 26)
!706 = !DILocation(line: 580, column: 13, scope: !705)
!707 = !DILocation(line: 581, column: 5, scope: !705)
!708 = !DILocation(line: 0, scope: !693)
!709 = !DILocation(line: 0, scope: !675)
!710 = !DILocation(line: 575, column: 33, scope: !690)
!711 = !DILocation(line: 575, column: 3, scope: !690)
!712 = distinct !{!712, !691, !713}
!713 = !DILocation(line: 582, column: 3, scope: !688)
!714 = !DILocation(line: 584, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !675, file: !10, line: 584, column: 7)
!716 = !DILocation(line: 584, column: 7, scope: !675)
!717 = !DILocation(line: 585, column: 11, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !10, line: 584, column: 16)
!719 = !DILocation(line: 586, column: 3, scope: !718)
!720 = !DILocation(line: 0, scope: !718)
!721 = !DILocation(line: 587, column: 23, scope: !675)
!722 = !DILocation(line: 587, column: 17, scope: !675)
!723 = !DILocation(line: 587, column: 3, scope: !675)
!724 = !DILocation(line: 194, column: 43, scope: !2)
!725 = !DILocation(line: 196, column: 2, scope: !2)
!726 = !DILocation(line: 196, column: 10, scope: !2)
!727 = !DILocation(line: 197, column: 2, scope: !2)
!728 = !DILocation(line: 198, column: 2, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 198, column: 2)
!730 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!731 = !DILocation(line: 199, column: 2, scope: !2)
!732 = !DILocation(line: 200, column: 1, scope: !2)
