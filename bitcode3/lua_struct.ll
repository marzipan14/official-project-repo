; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_struct.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_struct.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [1024 x i8] }
%struct.Header = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@thislib = internal constant [4 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @b_pack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @b_unpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @b_size }, %struct.luaL_Reg zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"string too short\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"integral size %d is larger than limit of %d\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"alignment %d is not a power of 2\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"offset must be 1 or greater\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"format 'c0' needs a previous size\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"unfinished string in data\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"option 's' has no fixed size\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"option 'c0' has no fixed size\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_struct(%struct.lua_State*) local_unnamed_addr #0 !dbg !53 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([4 x %struct.luaL_Reg], [4 x %struct.luaL_Reg]* @thislib, i64 0, i64 0)) #4, !dbg !57
  ret i32 1, !dbg !58
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @luaL_register(%struct.lua_State*, i8*, %struct.luaL_Reg*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @b_pack(%struct.lua_State*) #0 !dbg !59 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Header, align 4
  %6 = alloca float, align 4
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.luaL_Buffer* %3 to i8*, !dbg !119
  call void @llvm.lifetime.start.p0i8(i64 1048, i8* nonnull %9) #5, !dbg !119
  %10 = bitcast i8** %4 to i8*, !dbg !120
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !120
  %11 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !121
  store i8* %11, i8** %4, align 8, !dbg !122, !tbaa !123
  %12 = bitcast %struct.Header* %5 to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !127
  %13 = getelementptr inbounds %struct.Header, %struct.Header* %5, i64 0, i32 0, !dbg !130
  store i32 1, i32* %13, align 4, !dbg !130, !tbaa !131
  %14 = getelementptr inbounds %struct.Header, %struct.Header* %5, i64 0, i32 1, !dbg !130
  store i32 1, i32* %14, align 4, !dbg !130, !tbaa !134
  tail call void @lua_pushnil(%struct.lua_State* %0) #4, !dbg !135
  call void @luaL_buffinit(%struct.lua_State* %0, %struct.luaL_Buffer* nonnull %3) #4, !dbg !137
  %15 = load i8, i8* %11, align 1, !dbg !138, !tbaa !139
  %16 = icmp eq i8 %15, 0, !dbg !140
  br i1 %16, label %235, label %17, !dbg !141

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %21 = bitcast float* %6 to i8*
  %22 = bitcast double* %7 to i8*
  %23 = bitcast i64* %8 to i8*
  br label %24, !dbg !141

; <label>:24:                                     ; preds = %17, %228
  %25 = phi i8 [ %15, %17 ], [ %233, %228 ]
  %26 = phi i8* [ %11, %17 ], [ %232, %228 ]
  %27 = phi i32 [ 2, %17 ], [ %230, %228 ]
  %28 = phi i64 [ 0, %17 ], [ %231, %228 ]
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !142
  store i8* %29, i8** %4, align 8, !dbg !142, !tbaa !123
  %30 = sext i8 %25 to i32, !dbg !143
  %31 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %25, i8** nonnull %4) #6, !dbg !145
  %32 = icmp eq i64 %31, 0, !dbg !162
  %33 = icmp eq i8 %25, 99, !dbg !164
  %34 = or i1 %33, %32, !dbg !165
  br i1 %34, label %61, label %35, !dbg !165

; <label>:35:                                     ; preds = %24
  %36 = load i32, i32* %14, align 4, !dbg !166, !tbaa !134
  %37 = sext i32 %36 to i64, !dbg !168
  %38 = icmp ugt i64 %31, %37, !dbg !169
  %39 = select i1 %38, i64 %37, i64 %31, !dbg !170
  %40 = add i64 %39, -1, !dbg !171
  %41 = and i64 %40, %28, !dbg !172
  %42 = sub i64 %39, %41, !dbg !173
  %43 = and i64 %42, %40, !dbg !174
  %44 = trunc i64 %43 to i32, !dbg !175
  %45 = shl i64 %43, 32, !dbg !177
  %46 = ashr exact i64 %45, 32, !dbg !177
  %47 = add i64 %28, %46, !dbg !178
  %48 = icmp sgt i32 %44, 0, !dbg !179
  br i1 %48, label %49, label %61, !dbg !180

; <label>:49:                                     ; preds = %35, %57
  %50 = phi i32 [ %51, %57 ], [ %44, %35 ]
  %51 = add nsw i32 %50, -1, !dbg !181
  %52 = load i8*, i8** %18, align 8, !dbg !182, !tbaa !183
  %53 = icmp ult i8* %52, %19, !dbg !182
  br i1 %53, label %57, label %54, !dbg !182

; <label>:54:                                     ; preds = %49
  %55 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !182
  %56 = load i8*, i8** %18, align 8, !dbg !182, !tbaa !183
  br label %57, !dbg !182

; <label>:57:                                     ; preds = %54, %49
  %58 = phi i8* [ %56, %54 ], [ %52, %49 ], !dbg !182
  %59 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !182
  store i8* %59, i8** %18, align 8, !dbg !182, !tbaa !183
  store i8 0, i8* %58, align 1, !dbg !182, !tbaa !139
  %60 = icmp sgt i32 %50, 1, !dbg !179
  br i1 %60, label %49, label %61, !dbg !180, !llvm.loop !185

; <label>:61:                                     ; preds = %57, %24, %35
  %62 = phi i64 [ %47, %35 ], [ %28, %24 ], [ %47, %57 ]
  switch i32 %30, label %227 [
    i32 98, label %63
    i32 66, label %63
    i32 104, label %63
    i32 72, label %63
    i32 108, label %63
    i32 76, label %63
    i32 84, label %63
    i32 105, label %63
    i32 73, label %63
    i32 120, label %133
    i32 102, label %142
    i32 100, label %174
    i32 99, label %205
    i32 115, label %205
  ], !dbg !186

; <label>:63:                                     ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61
  %64 = add nsw i32 %27, 1, !dbg !187
  %65 = load i32, i32* %13, align 4, !dbg !188, !tbaa !131
  %66 = trunc i64 %31 to i32, !dbg !189
  %67 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !195
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #5, !dbg !197
  %68 = fcmp olt double %67, 0.000000e+00, !dbg !198
  %69 = fptosi double %67 to i64, !dbg !200
  %70 = fptoui double %67 to i64, !dbg !202
  %71 = select i1 %68, i64 %69, i64 %70, !dbg !203
  %72 = icmp eq i32 %65, 1, !dbg !204
  %73 = icmp sgt i32 %66, 0, !dbg !205
  br i1 %72, label %78, label %74, !dbg !208

; <label>:74:                                     ; preds = %63
  br i1 %73, label %75, label %130, !dbg !210

; <label>:75:                                     ; preds = %74
  %76 = shl i64 %31, 32, !dbg !205
  %77 = ashr exact i64 %76, 32, !dbg !205
  br label %108, !dbg !205

; <label>:78:                                     ; preds = %63
  br i1 %73, label %79, label %130, !dbg !212

; <label>:79:                                     ; preds = %78
  %80 = and i64 %31, 4294967295
  %81 = add nsw i64 %80, -1, !dbg !214
  %82 = and i64 %31, 3, !dbg !214
  %83 = icmp ult i64 %81, 3, !dbg !214
  br i1 %83, label %116, label %84, !dbg !214

; <label>:84:                                     ; preds = %79
  %85 = sub nsw i64 %80, %82, !dbg !214
  br label %86, !dbg !214

; <label>:86:                                     ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %105, %86 ]
  %88 = phi i64 [ %71, %84 ], [ %104, %86 ]
  %89 = phi i64 [ %85, %84 ], [ %106, %86 ]
  %90 = trunc i64 %88 to i8, !dbg !214
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %87, !dbg !217
  store i8 %90, i8* %91, align 4, !dbg !218, !tbaa !139
  %92 = lshr i64 %88, 8, !dbg !219
  %93 = or i64 %87, 1, !dbg !220
  %94 = trunc i64 %92 to i8, !dbg !214
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %93, !dbg !217
  store i8 %94, i8* %95, align 1, !dbg !218, !tbaa !139
  %96 = lshr i64 %88, 16, !dbg !219
  %97 = or i64 %87, 2, !dbg !220
  %98 = trunc i64 %96 to i8, !dbg !214
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %97, !dbg !217
  store i8 %98, i8* %99, align 2, !dbg !218, !tbaa !139
  %100 = lshr i64 %88, 24, !dbg !219
  %101 = or i64 %87, 3, !dbg !220
  %102 = trunc i64 %100 to i8, !dbg !214
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %101, !dbg !217
  store i8 %102, i8* %103, align 1, !dbg !218, !tbaa !139
  %104 = lshr i64 %88, 32, !dbg !219
  %105 = add nuw nsw i64 %87, 4, !dbg !220
  %106 = add i64 %89, -4, !dbg !212
  %107 = icmp eq i64 %106, 0, !dbg !212
  br i1 %107, label %116, label %86, !dbg !212, !llvm.loop !221

; <label>:108:                                    ; preds = %108, %75
  %109 = phi i64 [ %77, %75 ], [ %111, %108 ]
  %110 = phi i64 [ %71, %75 ], [ %114, %108 ]
  %111 = add nsw i64 %109, -1, !dbg !205
  %112 = trunc i64 %110 to i8, !dbg !224
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %111, !dbg !226
  store i8 %112, i8* %113, align 1, !dbg !227, !tbaa !139
  %114 = lshr i64 %110, 8, !dbg !228
  %115 = icmp sgt i64 %109, 1, !dbg !229
  br i1 %115, label %108, label %130, !dbg !210, !llvm.loop !230

; <label>:116:                                    ; preds = %86, %79
  %117 = phi i64 [ 0, %79 ], [ %105, %86 ]
  %118 = phi i64 [ %71, %79 ], [ %104, %86 ]
  %119 = icmp eq i64 %82, 0, !dbg !212
  br i1 %119, label %130, label %120, !dbg !212

; <label>:120:                                    ; preds = %116, %120
  %121 = phi i64 [ %127, %120 ], [ %117, %116 ]
  %122 = phi i64 [ %126, %120 ], [ %118, %116 ]
  %123 = phi i64 [ %128, %120 ], [ %82, %116 ]
  %124 = trunc i64 %122 to i8, !dbg !214
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %121, !dbg !217
  store i8 %124, i8* %125, align 1, !dbg !218, !tbaa !139
  %126 = lshr i64 %122, 8, !dbg !219
  %127 = add nuw nsw i64 %121, 1, !dbg !220
  %128 = add i64 %123, -1, !dbg !212
  %129 = icmp eq i64 %128, 0, !dbg !212
  br i1 %129, label %130, label %120, !dbg !212, !llvm.loop !233

; <label>:130:                                    ; preds = %108, %116, %120, %74, %78
  %131 = shl i64 %31, 32, !dbg !235
  %132 = ashr exact i64 %131, 32, !dbg !235
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %20, i64 %132) #4, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #5, !dbg !237
  br label %228, !dbg !238

; <label>:133:                                    ; preds = %61
  %134 = load i8*, i8** %18, align 8, !dbg !239, !tbaa !183
  %135 = icmp ult i8* %134, %19, !dbg !239
  br i1 %135, label %139, label %136, !dbg !239

; <label>:136:                                    ; preds = %133
  %137 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !239
  %138 = load i8*, i8** %18, align 8, !dbg !239, !tbaa !183
  br label %139, !dbg !239

; <label>:139:                                    ; preds = %136, %133
  %140 = phi i8* [ %138, %136 ], [ %134, %133 ], !dbg !239
  %141 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !239
  store i8* %141, i8** %18, align 8, !dbg !239, !tbaa !183
  store i8 0, i8* %140, align 1, !dbg !239, !tbaa !139
  br label %228, !dbg !241

; <label>:142:                                    ; preds = %61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5, !dbg !242
  %143 = add nsw i32 %27, 1, !dbg !243
  %144 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !244
  %145 = fptrunc double %144 to float, !dbg !245
  store float %145, float* %6, align 4, !dbg !246, !tbaa !247
  %146 = trunc i64 %31 to i32, !dbg !249
  %147 = load i32, i32* %13, align 4, !dbg !250, !tbaa !131
  %148 = icmp ne i32 %147, 1, !dbg !267
  %149 = icmp sgt i32 %146, 1, !dbg !268
  %150 = and i1 %149, %148, !dbg !269
  br i1 %150, label %151, label %173, !dbg !269

; <label>:151:                                    ; preds = %142
  %152 = bitcast float %145 to i32, !dbg !269
  %153 = trunc i32 %152 to i8, !dbg !269
  %154 = shl i64 %31, 32, !dbg !271
  %155 = ashr exact i64 %154, 32, !dbg !271
  %156 = add nsw i64 %155, -1, !dbg !271
  %157 = getelementptr inbounds i8, i8* %21, i64 %156, !dbg !273
  %158 = load i8, i8* %157, align 1, !dbg !273, !tbaa !139
  store i8 %158, i8* %21, align 4, !dbg !274, !tbaa !139
  store i8 %153, i8* %157, align 1, !dbg !275, !tbaa !139
  %159 = icmp sgt i64 %154, 12884901888, !dbg !268
  br i1 %159, label %160, label %173, !dbg !276, !llvm.loop !277

; <label>:160:                                    ; preds = %151
  %161 = add nsw i64 %155, -2, !dbg !280
  br label %162, !dbg !276

; <label>:162:                                    ; preds = %160, %162
  %163 = phi i64 [ %161, %160 ], [ %171, %162 ]
  %164 = phi i64 [ 1, %160 ], [ %170, %162 ]
  %165 = getelementptr inbounds i8, i8* %21, i64 %164
  %166 = load i8, i8* %165, align 1, !dbg !271, !tbaa !139
  %167 = getelementptr inbounds i8, i8* %21, i64 %164, !dbg !271
  %168 = getelementptr inbounds i8, i8* %21, i64 %163, !dbg !273
  %169 = load i8, i8* %168, align 1, !dbg !273, !tbaa !139
  %170 = add nuw nsw i64 %164, 1, !dbg !281
  store i8 %169, i8* %167, align 1, !dbg !274, !tbaa !139
  store i8 %166, i8* %168, align 1, !dbg !275, !tbaa !139
  %171 = add i64 %163, -1, !dbg !280
  %172 = icmp slt i64 %170, %171, !dbg !268
  br i1 %172, label %162, label %173, !dbg !276, !llvm.loop !277

; <label>:173:                                    ; preds = %162, %151, %142
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %21, i64 %31) #4, !dbg !282
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5, !dbg !283
  br label %228

; <label>:174:                                    ; preds = %61
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !284
  %175 = add nsw i32 %27, 1, !dbg !285
  %176 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !286
  store double %176, double* %7, align 8, !dbg !287, !tbaa !288
  %177 = trunc i64 %31 to i32, !dbg !290
  %178 = load i32, i32* %13, align 4, !dbg !291, !tbaa !131
  %179 = icmp ne i32 %178, 1, !dbg !296
  %180 = icmp sgt i32 %177, 1, !dbg !297
  %181 = and i1 %180, %179, !dbg !298
  br i1 %181, label %182, label %204, !dbg !298

; <label>:182:                                    ; preds = %174
  %183 = bitcast double %176 to i64, !dbg !298
  %184 = trunc i64 %183 to i8, !dbg !298
  %185 = shl i64 %31, 32, !dbg !300
  %186 = ashr exact i64 %185, 32, !dbg !300
  %187 = add nsw i64 %186, -1, !dbg !300
  %188 = getelementptr inbounds i8, i8* %22, i64 %187, !dbg !302
  %189 = load i8, i8* %188, align 1, !dbg !302, !tbaa !139
  store i8 %189, i8* %22, align 8, !dbg !303, !tbaa !139
  store i8 %184, i8* %188, align 1, !dbg !304, !tbaa !139
  %190 = icmp sgt i64 %185, 12884901888, !dbg !297
  br i1 %190, label %191, label %204, !dbg !305, !llvm.loop !277

; <label>:191:                                    ; preds = %182
  %192 = add nsw i64 %186, -2, !dbg !306
  br label %193, !dbg !305

; <label>:193:                                    ; preds = %191, %193
  %194 = phi i64 [ %192, %191 ], [ %202, %193 ]
  %195 = phi i64 [ 1, %191 ], [ %201, %193 ]
  %196 = getelementptr inbounds i8, i8* %22, i64 %195
  %197 = load i8, i8* %196, align 1, !dbg !300, !tbaa !139
  %198 = getelementptr inbounds i8, i8* %22, i64 %195, !dbg !300
  %199 = getelementptr inbounds i8, i8* %22, i64 %194, !dbg !302
  %200 = load i8, i8* %199, align 1, !dbg !302, !tbaa !139
  %201 = add nuw nsw i64 %195, 1, !dbg !307
  store i8 %200, i8* %198, align 1, !dbg !303, !tbaa !139
  store i8 %197, i8* %199, align 1, !dbg !304, !tbaa !139
  %202 = add i64 %194, -1, !dbg !306
  %203 = icmp slt i64 %201, %202, !dbg !297
  br i1 %203, label %193, label %204, !dbg !305, !llvm.loop !277

; <label>:204:                                    ; preds = %193, %182, %174
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %22, i64 %31) #4, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !309
  br label %228

; <label>:205:                                    ; preds = %61, %61
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !310
  %206 = add nsw i32 %27, 1, !dbg !311
  %207 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %27, i64* nonnull %8) #4, !dbg !313
  %208 = load i64, i64* %8, align 8, !dbg !315
  %209 = select i1 %32, i64 %208, i64 %31, !dbg !317
  %210 = icmp ult i64 %208, %209, !dbg !318
  br i1 %210, label %211, label %213, !dbg !318

; <label>:211:                                    ; preds = %205
  %212 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !318
  br label %213, !dbg !318

; <label>:213:                                    ; preds = %205, %211
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* %207, i64 %209) #4, !dbg !319
  %214 = icmp eq i8 %25, 115, !dbg !320
  br i1 %214, label %215, label %225, !dbg !322

; <label>:215:                                    ; preds = %213
  %216 = load i8*, i8** %18, align 8, !dbg !323, !tbaa !183
  %217 = icmp ult i8* %216, %19, !dbg !323
  br i1 %217, label %221, label %218, !dbg !323

; <label>:218:                                    ; preds = %215
  %219 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !323
  %220 = load i8*, i8** %18, align 8, !dbg !323, !tbaa !183
  br label %221, !dbg !323

; <label>:221:                                    ; preds = %218, %215
  %222 = phi i8* [ %220, %218 ], [ %216, %215 ], !dbg !323
  %223 = getelementptr inbounds i8, i8* %222, i64 1, !dbg !323
  store i8* %223, i8** %18, align 8, !dbg !323, !tbaa !183
  store i8 0, i8* %222, align 1, !dbg !323, !tbaa !139
  %224 = add i64 %209, 1, !dbg !325
  br label %225, !dbg !326

; <label>:225:                                    ; preds = %221, %213
  %226 = phi i64 [ %224, %221 ], [ %209, %213 ], !dbg !327
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !328
  br label %228

; <label>:227:                                    ; preds = %61
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %30, i8** nonnull %4, %struct.Header* nonnull %5) #6, !dbg !329
  br label %228, !dbg !330

; <label>:228:                                    ; preds = %227, %225, %204, %173, %139, %130
  %229 = phi i64 [ %31, %227 ], [ %226, %225 ], [ %31, %204 ], [ %31, %173 ], [ %31, %139 ], [ %31, %130 ], !dbg !331
  %230 = phi i32 [ %27, %227 ], [ %206, %225 ], [ %175, %204 ], [ %143, %173 ], [ %27, %139 ], [ %64, %130 ], !dbg !332
  %231 = add i64 %62, %229, !dbg !333
  %232 = load i8*, i8** %4, align 8, !dbg !334, !tbaa !123
  %233 = load i8, i8* %232, align 1, !dbg !138, !tbaa !139
  %234 = icmp eq i8 %233, 0, !dbg !140
  br i1 %234, label %235, label %24, !dbg !141, !llvm.loop !335

; <label>:235:                                    ; preds = %228, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !337
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !338
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !338
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %9) #5, !dbg !338
  ret i32 1, !dbg !339
}

; Function Attrs: noredzone nounwind
define internal i32 @b_unpack(%struct.lua_State*) #0 !dbg !340 {
  %2 = alloca %struct.Header, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = bitcast %struct.Header* %2 to i8*, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !363
  %8 = bitcast i8** %3 to i8*, !dbg !364
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !364
  %9 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !365
  store i8* %9, i8** %3, align 8, !dbg !366, !tbaa !123
  %10 = bitcast i64* %4 to i8*, !dbg !367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !367
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #4, !dbg !369
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !371
  %13 = icmp eq i64 %12, 0, !dbg !373
  br i1 %13, label %14, label %16, !dbg !373

; <label>:14:                                     ; preds = %1
  %15 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !373
  br label %16, !dbg !373

; <label>:16:                                     ; preds = %1, %14
  %17 = add i64 %12, -1, !dbg !374
  %18 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0, !dbg !376
  store i32 1, i32* %18, align 4, !dbg !376, !tbaa !131
  %19 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1, !dbg !376
  store i32 1, i32* %19, align 4, !dbg !376, !tbaa !134
  %20 = load i8, i8* %9, align 1, !dbg !377, !tbaa !139
  %21 = icmp eq i8 %20, 0, !dbg !378
  br i1 %21, label %240, label %22, !dbg !378

; <label>:22:                                     ; preds = %16
  %23 = bitcast float* %5 to i8*
  %24 = bitcast double* %6 to i8*
  br label %25, !dbg !378

; <label>:25:                                     ; preds = %22, %233
  %26 = phi i8 [ %20, %22 ], [ %238, %233 ]
  %27 = phi i8* [ %9, %22 ], [ %237, %233 ]
  %28 = phi i64 [ %17, %22 ], [ %236, %233 ]
  %29 = phi i32 [ 0, %22 ], [ %235, %233 ]
  %30 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !379
  store i8* %30, i8** %3, align 8, !dbg !379, !tbaa !123
  %31 = sext i8 %26 to i32, !dbg !380
  %32 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %26, i8** nonnull %3) #6, !dbg !382
  %33 = icmp eq i64 %32, 0, !dbg !390
  %34 = icmp eq i8 %26, 99, !dbg !391
  %35 = or i1 %34, %33, !dbg !392
  br i1 %35, label %45, label %36, !dbg !392

; <label>:36:                                     ; preds = %25
  %37 = load i32, i32* %19, align 4, !dbg !393, !tbaa !134
  %38 = sext i32 %37 to i64, !dbg !394
  %39 = icmp ugt i64 %32, %38, !dbg !395
  %40 = select i1 %39, i64 %38, i64 %32, !dbg !396
  %41 = add i64 %40, -1, !dbg !397
  %42 = and i64 %41, %28, !dbg !398
  %43 = sub i64 %40, %42, !dbg !399
  %44 = and i64 %43, %41, !dbg !400
  br label %45, !dbg !401

; <label>:45:                                     ; preds = %25, %36
  %46 = phi i64 [ %44, %36 ], [ 0, %25 ], !dbg !402
  %47 = shl i64 %46, 32, !dbg !403
  %48 = ashr exact i64 %47, 32, !dbg !403
  %49 = add i64 %48, %28, !dbg !404
  %50 = load i64, i64* %4, align 8, !dbg !405, !tbaa !406
  %51 = icmp ult i64 %50, %32, !dbg !405
  %52 = sub i64 %50, %32, !dbg !405
  %53 = icmp ugt i64 %49, %52, !dbg !405
  %54 = or i1 %51, %53, !dbg !405
  br i1 %54, label %55, label %57, !dbg !405

; <label>:55:                                     ; preds = %45
  %56 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !405
  br label %57, !dbg !405

; <label>:57:                                     ; preds = %45, %55
  call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !408
  switch i32 %31, label %232 [
    i32 98, label %58
    i32 66, label %58
    i32 104, label %58
    i32 72, label %58
    i32 108, label %58
    i32 76, label %58
    i32 84, label %58
    i32 105, label %58
    i32 73, label %58
    i32 120, label %233
    i32 102, label %157
    i32 100, label %176
    i32 99, label %194
    i32 115, label %218
  ], !dbg !409

; <label>:58:                                     ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57
  %59 = call i8* @__locale_ctype_ptr() #4, !dbg !410
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !410
  %61 = sext i8 %26 to i64, !dbg !410
  %62 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !410
  %63 = load i8, i8* %62, align 1, !dbg !410, !tbaa !139
  %64 = and i8 %63, 3, !dbg !410
  %65 = icmp eq i8 %64, 2, !dbg !410
  %66 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !411
  %67 = load i32, i32* %18, align 4, !dbg !412, !tbaa !131
  %68 = trunc i64 %32 to i32, !dbg !413
  %69 = icmp eq i32 %67, 0, !dbg !432
  %70 = icmp sgt i32 %68, 0, !dbg !434
  br i1 %69, label %75, label %71, !dbg !438

; <label>:71:                                     ; preds = %58
  br i1 %70, label %72, label %140, !dbg !440

; <label>:72:                                     ; preds = %71
  %73 = shl i64 %32, 32, !dbg !434
  %74 = ashr exact i64 %73, 32, !dbg !434
  br label %113, !dbg !434

; <label>:75:                                     ; preds = %58
  br i1 %70, label %76, label %140, !dbg !441

; <label>:76:                                     ; preds = %75
  %77 = and i64 %32, 4294967295
  %78 = add nsw i64 %77, -1, !dbg !444
  %79 = and i64 %32, 3, !dbg !444
  %80 = icmp ult i64 %78, 3, !dbg !444
  br i1 %80, label %123, label %81, !dbg !444

; <label>:81:                                     ; preds = %76
  %82 = sub nsw i64 %77, %79, !dbg !444
  br label %83, !dbg !444

; <label>:83:                                     ; preds = %83, %81
  %84 = phi i64 [ 0, %81 ], [ %110, %83 ]
  %85 = phi i64 [ 0, %81 ], [ %109, %83 ]
  %86 = phi i64 [ %82, %81 ], [ %111, %83 ]
  %87 = shl i64 %85, 8, !dbg !444
  %88 = getelementptr inbounds i8, i8* %66, i64 %84, !dbg !447
  %89 = load i8, i8* %88, align 1, !dbg !447, !tbaa !139
  %90 = zext i8 %89 to i64, !dbg !448
  %91 = or i64 %87, %90, !dbg !449
  %92 = or i64 %84, 1, !dbg !450
  %93 = shl i64 %91, 8, !dbg !444
  %94 = getelementptr inbounds i8, i8* %66, i64 %92, !dbg !447
  %95 = load i8, i8* %94, align 1, !dbg !447, !tbaa !139
  %96 = zext i8 %95 to i64, !dbg !448
  %97 = or i64 %93, %96, !dbg !449
  %98 = or i64 %84, 2, !dbg !450
  %99 = shl i64 %97, 8, !dbg !444
  %100 = getelementptr inbounds i8, i8* %66, i64 %98, !dbg !447
  %101 = load i8, i8* %100, align 1, !dbg !447, !tbaa !139
  %102 = zext i8 %101 to i64, !dbg !448
  %103 = or i64 %99, %102, !dbg !449
  %104 = or i64 %84, 3, !dbg !450
  %105 = shl i64 %103, 8, !dbg !444
  %106 = getelementptr inbounds i8, i8* %66, i64 %104, !dbg !447
  %107 = load i8, i8* %106, align 1, !dbg !447, !tbaa !139
  %108 = zext i8 %107 to i64, !dbg !448
  %109 = or i64 %105, %108, !dbg !449
  %110 = add nuw nsw i64 %84, 4, !dbg !450
  %111 = add i64 %86, -4, !dbg !441
  %112 = icmp eq i64 %111, 0, !dbg !441
  br i1 %112, label %123, label %83, !dbg !441, !llvm.loop !451

; <label>:113:                                    ; preds = %113, %72
  %114 = phi i64 [ %74, %72 ], [ %116, %113 ]
  %115 = phi i64 [ 0, %72 ], [ %121, %113 ]
  %116 = add nsw i64 %114, -1, !dbg !434
  %117 = shl i64 %115, 8, !dbg !454
  %118 = getelementptr inbounds i8, i8* %66, i64 %116, !dbg !456
  %119 = load i8, i8* %118, align 1, !dbg !456, !tbaa !139
  %120 = zext i8 %119 to i64, !dbg !457
  %121 = or i64 %117, %120, !dbg !458
  %122 = icmp sgt i64 %114, 1, !dbg !459
  br i1 %122, label %113, label %140, !dbg !440, !llvm.loop !460

; <label>:123:                                    ; preds = %83, %76
  %124 = phi i64 [ undef, %76 ], [ %109, %83 ]
  %125 = phi i64 [ 0, %76 ], [ %110, %83 ]
  %126 = phi i64 [ 0, %76 ], [ %109, %83 ]
  %127 = icmp eq i64 %79, 0, !dbg !441
  br i1 %127, label %140, label %128, !dbg !441

; <label>:128:                                    ; preds = %123, %128
  %129 = phi i64 [ %137, %128 ], [ %125, %123 ]
  %130 = phi i64 [ %136, %128 ], [ %126, %123 ]
  %131 = phi i64 [ %138, %128 ], [ %79, %123 ]
  %132 = shl i64 %130, 8, !dbg !444
  %133 = getelementptr inbounds i8, i8* %66, i64 %129, !dbg !447
  %134 = load i8, i8* %133, align 1, !dbg !447, !tbaa !139
  %135 = zext i8 %134 to i64, !dbg !448
  %136 = or i64 %132, %135, !dbg !449
  %137 = add nuw nsw i64 %129, 1, !dbg !450
  %138 = add i64 %131, -1, !dbg !441
  %139 = icmp eq i64 %138, 0, !dbg !441
  br i1 %139, label %140, label %128, !dbg !441, !llvm.loop !463

; <label>:140:                                    ; preds = %113, %123, %128, %75, %71
  %141 = phi i64 [ 0, %75 ], [ 0, %71 ], [ %124, %123 ], [ %136, %128 ], [ %121, %113 ], !dbg !431
  br i1 %65, label %144, label %142, !dbg !464

; <label>:142:                                    ; preds = %140
  %143 = uitofp i64 %141 to double, !dbg !465
  br label %154, !dbg !466

; <label>:144:                                    ; preds = %140
  %145 = shl i64 %32, 3, !dbg !467
  %146 = add i64 %145, 4294967295, !dbg !468
  %147 = and i64 %146, 4294967295, !dbg !469
  %148 = shl i64 -1, %147, !dbg !469
  %149 = and i64 %141, %148, !dbg !471
  %150 = icmp eq i64 %149, 0, !dbg !471
  %151 = select i1 %150, i64 0, i64 %148, !dbg !473
  %152 = or i64 %151, %141, !dbg !473
  %153 = sitofp i64 %152 to double, !dbg !474
  br label %154

; <label>:154:                                    ; preds = %142, %144
  %155 = phi double [ %153, %144 ], [ %143, %142 ], !dbg !475
  call void @lua_pushnumber(%struct.lua_State* %0, double %155) #4, !dbg !477
  %156 = add nsw i32 %29, 1, !dbg !478
  br label %233

; <label>:157:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5, !dbg !479
  %158 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !480
  %159 = call i8* @memcpy(i8* nonnull %23, i8* %158, i64 %32) #4, !dbg !481
  %160 = load i32, i32* %18, align 4, !dbg !482, !tbaa !131
  %161 = icmp eq i32 %160, 1, !dbg !487
  br i1 %161, label %172, label %162, !dbg !489

; <label>:162:                                    ; preds = %157, %162
  %163 = phi i64 [ %169, %162 ], [ 0, %157 ]
  %164 = phi i64 [ %170, %162 ], [ 3, %157 ]
  %165 = getelementptr inbounds i8, i8* %23, i64 %163, !dbg !490
  %166 = load i8, i8* %165, align 1, !dbg !490, !tbaa !139
  %167 = getelementptr inbounds i8, i8* %23, i64 %164, !dbg !492
  %168 = load i8, i8* %167, align 1, !dbg !492, !tbaa !139
  %169 = add nuw nsw i64 %163, 1, !dbg !493
  store i8 %168, i8* %165, align 1, !dbg !494, !tbaa !139
  store i8 %166, i8* %167, align 1, !dbg !495, !tbaa !139
  %170 = add nsw i64 %164, -1, !dbg !496
  %171 = icmp slt i64 %169, %170, !dbg !497
  br i1 %171, label %162, label %172, !dbg !498, !llvm.loop !277

; <label>:172:                                    ; preds = %162, %157
  %173 = load float, float* %5, align 4, !dbg !499, !tbaa !247
  %174 = fpext float %173 to double, !dbg !499
  call void @lua_pushnumber(%struct.lua_State* %0, double %174) #4, !dbg !501
  %175 = add nsw i32 %29, 1, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5, !dbg !503
  br label %233

; <label>:176:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #5, !dbg !504
  %177 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !505
  %178 = call i8* @memcpy(i8* nonnull %24, i8* %177, i64 %32) #4, !dbg !506
  %179 = load i32, i32* %18, align 4, !dbg !507, !tbaa !131
  %180 = icmp eq i32 %179, 1, !dbg !512
  br i1 %180, label %191, label %181, !dbg !514

; <label>:181:                                    ; preds = %176, %181
  %182 = phi i64 [ %188, %181 ], [ 0, %176 ]
  %183 = phi i64 [ %189, %181 ], [ 7, %176 ]
  %184 = getelementptr inbounds i8, i8* %24, i64 %182, !dbg !515
  %185 = load i8, i8* %184, align 1, !dbg !515, !tbaa !139
  %186 = getelementptr inbounds i8, i8* %24, i64 %183, !dbg !517
  %187 = load i8, i8* %186, align 1, !dbg !517, !tbaa !139
  %188 = add nuw nsw i64 %182, 1, !dbg !518
  store i8 %187, i8* %184, align 1, !dbg !519, !tbaa !139
  store i8 %185, i8* %186, align 1, !dbg !520, !tbaa !139
  %189 = add nsw i64 %183, -1, !dbg !521
  %190 = icmp slt i64 %188, %189, !dbg !522
  br i1 %190, label %181, label %191, !dbg !523, !llvm.loop !277

; <label>:191:                                    ; preds = %181, %176
  %192 = load double, double* %6, align 8, !dbg !524, !tbaa !288
  call void @lua_pushnumber(%struct.lua_State* %0, double %192) #4, !dbg !526
  %193 = add nsw i32 %29, 1, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #5, !dbg !528
  br label %233

; <label>:194:                                    ; preds = %57
  br i1 %33, label %195, label %213, !dbg !529

; <label>:195:                                    ; preds = %194
  %196 = icmp eq i32 %29, 0, !dbg !531
  br i1 %196, label %200, label %197, !dbg !535

; <label>:197:                                    ; preds = %195
  %198 = call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #4, !dbg !536
  %199 = icmp eq i32 %198, 0, !dbg !536
  br i1 %199, label %200, label %202, !dbg !537

; <label>:200:                                    ; preds = %197, %195
  %201 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !538
  br label %202, !dbg !538

; <label>:202:                                    ; preds = %197, %200
  %203 = call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !539
  %204 = fptoui double %203 to i64, !dbg !539
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !540
  %205 = add nsw i32 %29, -1, !dbg !541
  %206 = load i64, i64* %4, align 8, !dbg !542, !tbaa !406
  %207 = icmp ult i64 %206, %204, !dbg !542
  %208 = sub i64 %206, %204, !dbg !542
  %209 = icmp ugt i64 %49, %208, !dbg !542
  %210 = or i1 %207, %209, !dbg !542
  br i1 %210, label %211, label %213, !dbg !542

; <label>:211:                                    ; preds = %202
  %212 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !542
  br label %213, !dbg !542

; <label>:213:                                    ; preds = %211, %202, %194
  %214 = phi i64 [ %32, %194 ], [ %204, %202 ], [ %204, %211 ], !dbg !543
  %215 = phi i32 [ %29, %194 ], [ %205, %202 ], [ %205, %211 ], !dbg !544
  %216 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !545
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %216, i64 %214) #4, !dbg !546
  %217 = add nsw i32 %215, 1, !dbg !547
  br label %233, !dbg !548

; <label>:218:                                    ; preds = %57
  %219 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !549
  %220 = load i64, i64* %4, align 8, !dbg !550, !tbaa !406
  %221 = sub i64 %220, %49, !dbg !551
  %222 = call i8* @memchr(i8* %219, i32 0, i64 %221) #4, !dbg !552
  %223 = icmp eq i8* %222, null, !dbg !554
  br i1 %223, label %224, label %226, !dbg !556

; <label>:224:                                    ; preds = %218
  %225 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !557
  br label %226, !dbg !557

; <label>:226:                                    ; preds = %224, %218
  %227 = ptrtoint i8* %222 to i64, !dbg !558
  %228 = ptrtoint i8* %219 to i64, !dbg !558
  %229 = sub i64 %227, %228, !dbg !558
  %230 = add nsw i64 %229, 1, !dbg !559
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %219, i64 %229) #4, !dbg !560
  %231 = add nsw i32 %29, 1, !dbg !561
  br label %233

; <label>:232:                                    ; preds = %57
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %31, i8** nonnull %3, %struct.Header* nonnull %2) #6, !dbg !562
  br label %233, !dbg !563

; <label>:233:                                    ; preds = %57, %232, %226, %213, %191, %172, %154
  %234 = phi i64 [ %32, %232 ], [ %230, %226 ], [ %214, %213 ], [ %32, %191 ], [ %32, %172 ], [ %32, %57 ], [ %32, %154 ], !dbg !543
  %235 = phi i32 [ %29, %232 ], [ %231, %226 ], [ %217, %213 ], [ %193, %191 ], [ %175, %172 ], [ %29, %57 ], [ %156, %154 ], !dbg !564
  %236 = add i64 %234, %49, !dbg !565
  %237 = load i8*, i8** %3, align 8, !dbg !566, !tbaa !123
  %238 = load i8, i8* %237, align 1, !dbg !377, !tbaa !139
  %239 = icmp eq i8 %238, 0, !dbg !378
  br i1 %239, label %240, label %25, !dbg !378, !llvm.loop !567

; <label>:240:                                    ; preds = %233, %16
  %241 = phi i32 [ 0, %16 ], [ %235, %233 ], !dbg !375
  %242 = phi i64 [ %17, %16 ], [ %236, %233 ], !dbg !543
  %243 = add i64 %242, 1, !dbg !569
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %243) #4, !dbg !570
  %244 = add nsw i32 %241, 1, !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !572
  ret i32 %244, !dbg !573
}

; Function Attrs: noredzone nounwind
define internal i32 @b_size(%struct.lua_State*) #0 !dbg !574 {
  %2 = alloca %struct.Header, align 4
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.Header* %2 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !584
  %5 = bitcast i8** %3 to i8*, !dbg !585
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !585
  %6 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !586
  store i8* %6, i8** %3, align 8, !dbg !587, !tbaa !123
  %7 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0, !dbg !589
  store i32 1, i32* %7, align 4, !dbg !589, !tbaa !131
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1, !dbg !589
  store i32 1, i32* %8, align 4, !dbg !589, !tbaa !134
  %9 = load i8, i8* %6, align 1, !dbg !590, !tbaa !139
  %10 = icmp eq i8 %9, 0, !dbg !591
  br i1 %10, label %56, label %11, !dbg !591

; <label>:11:                                     ; preds = %1, %50
  %12 = phi i8 [ %54, %50 ], [ %9, %1 ]
  %13 = phi i8* [ %53, %50 ], [ %6, %1 ]
  %14 = phi i64 [ %52, %50 ], [ 0, %1 ]
  %15 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !592
  store i8* %15, i8** %3, align 8, !dbg !592, !tbaa !123
  %16 = sext i8 %12 to i32, !dbg !593
  %17 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %12, i8** nonnull %3) #6, !dbg !595
  %18 = icmp eq i64 %17, 0, !dbg !603
  %19 = icmp eq i8 %12, 99, !dbg !604
  %20 = or i1 %19, %18, !dbg !605
  br i1 %20, label %30, label %21, !dbg !605

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %8, align 4, !dbg !606, !tbaa !134
  %23 = sext i32 %22 to i64, !dbg !607
  %24 = icmp ugt i64 %17, %23, !dbg !608
  %25 = select i1 %24, i64 %23, i64 %17, !dbg !609
  %26 = add i64 %25, -1, !dbg !610
  %27 = and i64 %26, %14, !dbg !611
  %28 = sub i64 %25, %27, !dbg !612
  %29 = and i64 %28, %26, !dbg !613
  br label %30, !dbg !614

; <label>:30:                                     ; preds = %11, %21
  %31 = phi i64 [ %29, %21 ], [ 0, %11 ], !dbg !615
  %32 = shl i64 %31, 32, !dbg !616
  %33 = ashr exact i64 %32, 32, !dbg !616
  %34 = icmp eq i8 %12, 115, !dbg !617
  br i1 %34, label %35, label %37, !dbg !619

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !620
  br label %41, !dbg !620

; <label>:37:                                     ; preds = %30
  %38 = and i1 %19, %18, !dbg !621
  br i1 %38, label %39, label %41, !dbg !621

; <label>:39:                                     ; preds = %37
  %40 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !623
  br label %41, !dbg !623

; <label>:41:                                     ; preds = %37, %39, %35
  %42 = tail call i8* @__locale_ctype_ptr() #4, !dbg !624
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !624
  %44 = sext i8 %12 to i64, !dbg !624
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !624
  %46 = load i8, i8* %45, align 1, !dbg !624, !tbaa !139
  %47 = and i8 %46, 7, !dbg !624
  %48 = icmp eq i8 %47, 0, !dbg !624
  br i1 %48, label %49, label %50, !dbg !626

; <label>:49:                                     ; preds = %41
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %16, i8** nonnull %3, %struct.Header* nonnull %2) #6, !dbg !627
  br label %50, !dbg !627

; <label>:50:                                     ; preds = %41, %49
  %51 = add i64 %17, %14, !dbg !628
  %52 = add i64 %51, %33, !dbg !629
  %53 = load i8*, i8** %3, align 8, !dbg !630, !tbaa !123
  %54 = load i8, i8* %53, align 1, !dbg !590, !tbaa !139
  %55 = icmp eq i8 %54, 0, !dbg !591
  br i1 %55, label %56, label %11, !dbg !591, !llvm.loop !631

; <label>:56:                                     ; preds = %50, %1
  %57 = phi i64 [ 0, %1 ], [ %52, %50 ], !dbg !633
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %57) #4, !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !635
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !635
  ret i32 1, !dbg !636
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i64 @optsize(%struct.lua_State*, i8 signext, i8** nocapture) unnamed_addr #0 !dbg !637 {
  %4 = sext i8 %1 to i32, !dbg !651
  switch i32 %4, label %75 [
    i32 66, label %76
    i32 98, label %76
    i32 72, label %5
    i32 104, label %5
    i32 76, label %6
    i32 108, label %6
    i32 84, label %7
    i32 102, label %8
    i32 100, label %9
    i32 120, label %76
    i32 99, label %10
    i32 105, label %40
    i32 73, label %40
  ], !dbg !652

; <label>:5:                                      ; preds = %3, %3
  br label %76, !dbg !653

; <label>:6:                                      ; preds = %3, %3
  br label %76, !dbg !654

; <label>:7:                                      ; preds = %3
  br label %76, !dbg !655

; <label>:8:                                      ; preds = %3
  br label %76, !dbg !656

; <label>:9:                                      ; preds = %3
  br label %76, !dbg !657

; <label>:10:                                     ; preds = %3
  %11 = tail call i8* @__locale_ctype_ptr() #4, !dbg !670
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !670
  %13 = load i8*, i8** %2, align 8, !dbg !670, !tbaa !123
  %14 = load i8, i8* %13, align 1, !dbg !670, !tbaa !139
  %15 = sext i8 %14 to i64, !dbg !670
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !670
  %17 = load i8, i8* %16, align 1, !dbg !670, !tbaa !139
  %18 = and i8 %17, 4, !dbg !670
  %19 = icmp eq i8 %18, 0, !dbg !670
  br i1 %19, label %76, label %20, !dbg !671

; <label>:20:                                     ; preds = %10, %20
  %21 = phi i8* [ %31, %20 ], [ %13, %10 ], !dbg !672
  %22 = phi i32 [ %28, %20 ], [ 0, %10 ], !dbg !674
  %23 = mul nsw i32 %22, 10, !dbg !676
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !672
  store i8* %24, i8** %2, align 8, !dbg !672, !tbaa !123
  %25 = load i8, i8* %21, align 1, !dbg !677, !tbaa !139
  %26 = sext i8 %25 to i32, !dbg !677
  %27 = add i32 %23, -48, !dbg !678
  %28 = add i32 %27, %26, !dbg !679
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !680
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !680
  %31 = load i8*, i8** %2, align 8, !dbg !680, !tbaa !123
  %32 = load i8, i8* %31, align 1, !dbg !680, !tbaa !139
  %33 = sext i8 %32 to i64, !dbg !680
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !680
  %35 = load i8, i8* %34, align 1, !dbg !680, !tbaa !139
  %36 = and i8 %35, 4, !dbg !680
  %37 = icmp eq i8 %36, 0, !dbg !681
  br i1 %37, label %38, label %20, !dbg !681, !llvm.loop !682

; <label>:38:                                     ; preds = %20
  %39 = sext i32 %28 to i64, !dbg !685
  br label %76, !dbg !685

; <label>:40:                                     ; preds = %3, %3
  %41 = tail call i8* @__locale_ctype_ptr() #4, !dbg !689
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !689
  %43 = load i8*, i8** %2, align 8, !dbg !689, !tbaa !123
  %44 = load i8, i8* %43, align 1, !dbg !689, !tbaa !139
  %45 = sext i8 %44 to i64, !dbg !689
  %46 = getelementptr inbounds i8, i8* %42, i64 %45, !dbg !689
  %47 = load i8, i8* %46, align 1, !dbg !689, !tbaa !139
  %48 = and i8 %47, 4, !dbg !689
  %49 = icmp eq i8 %48, 0, !dbg !689
  br i1 %49, label %72, label %50, !dbg !690

; <label>:50:                                     ; preds = %40, %50
  %51 = phi i8* [ %61, %50 ], [ %43, %40 ], !dbg !691
  %52 = phi i32 [ %58, %50 ], [ 0, %40 ], !dbg !692
  %53 = mul nsw i32 %52, 10, !dbg !694
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !691
  store i8* %54, i8** %2, align 8, !dbg !691, !tbaa !123
  %55 = load i8, i8* %51, align 1, !dbg !695, !tbaa !139
  %56 = sext i8 %55 to i32, !dbg !695
  %57 = add i32 %53, -48, !dbg !696
  %58 = add i32 %57, %56, !dbg !697
  %59 = tail call i8* @__locale_ctype_ptr() #4, !dbg !698
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !698
  %61 = load i8*, i8** %2, align 8, !dbg !698, !tbaa !123
  %62 = load i8, i8* %61, align 1, !dbg !698, !tbaa !139
  %63 = sext i8 %62 to i64, !dbg !698
  %64 = getelementptr inbounds i8, i8* %60, i64 %63, !dbg !698
  %65 = load i8, i8* %64, align 1, !dbg !698, !tbaa !139
  %66 = and i8 %65, 4, !dbg !698
  %67 = icmp eq i8 %66, 0, !dbg !699
  br i1 %67, label %68, label %50, !dbg !699, !llvm.loop !682

; <label>:68:                                     ; preds = %50
  %69 = icmp sgt i32 %58, 32, !dbg !701
  br i1 %69, label %70, label %72, !dbg !703

; <label>:70:                                     ; preds = %68
  %71 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %58, i32 32) #4, !dbg !704
  br label %72, !dbg !704

; <label>:72:                                     ; preds = %40, %70, %68
  %73 = phi i32 [ %58, %70 ], [ %58, %68 ], [ 4, %40 ]
  %74 = sext i32 %73 to i64, !dbg !705
  br label %76

; <label>:75:                                     ; preds = %3
  br label %76, !dbg !706

; <label>:76:                                     ; preds = %10, %38, %3, %3, %3, %75, %72, %9, %8, %7, %6, %5
  %77 = phi i64 [ 0, %75 ], [ %74, %72 ], [ 8, %9 ], [ 4, %8 ], [ 8, %7 ], [ 8, %6 ], [ 2, %5 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %10 ], [ %39, %38 ], !dbg !707
  ret i64 %77, !dbg !708
}

; Function Attrs: noredzone
declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @controloptions(%struct.lua_State*, i32, i8** nocapture, %struct.Header* nocapture) unnamed_addr #0 !dbg !709 {
  switch i32 %1, label %50 [
    i32 32, label %53
    i32 62, label %5
    i32 60, label %7
    i32 33, label %9
  ], !dbg !726

; <label>:5:                                      ; preds = %4
  %6 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0, !dbg !727
  store i32 0, i32* %6, align 4, !dbg !728, !tbaa !131
  br label %53, !dbg !729

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0, !dbg !730
  store i32 1, i32* %8, align 4, !dbg !731, !tbaa !131
  br label %53, !dbg !732

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @__locale_ctype_ptr() #4, !dbg !736
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !736
  %12 = load i8*, i8** %2, align 8, !dbg !736, !tbaa !123
  %13 = load i8, i8* %12, align 1, !dbg !736, !tbaa !139
  %14 = sext i8 %13 to i64, !dbg !736
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !736
  %16 = load i8, i8* %15, align 1, !dbg !736, !tbaa !139
  %17 = and i8 %16, 4, !dbg !736
  %18 = icmp eq i8 %17, 0, !dbg !736
  br i1 %18, label %39, label %19, !dbg !737

; <label>:19:                                     ; preds = %9, %19
  %20 = phi i8* [ %30, %19 ], [ %12, %9 ], !dbg !738
  %21 = phi i32 [ %27, %19 ], [ 0, %9 ], !dbg !739
  %22 = mul nsw i32 %21, 10, !dbg !741
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !738
  store i8* %23, i8** %2, align 8, !dbg !738, !tbaa !123
  %24 = load i8, i8* %20, align 1, !dbg !742, !tbaa !139
  %25 = sext i8 %24 to i32, !dbg !742
  %26 = add i32 %22, -48, !dbg !743
  %27 = add i32 %26, %25, !dbg !744
  %28 = tail call i8* @__locale_ctype_ptr() #4, !dbg !745
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !745
  %30 = load i8*, i8** %2, align 8, !dbg !745, !tbaa !123
  %31 = load i8, i8* %30, align 1, !dbg !745, !tbaa !139
  %32 = sext i8 %31 to i64, !dbg !745
  %33 = getelementptr inbounds i8, i8* %29, i64 %32, !dbg !745
  %34 = load i8, i8* %33, align 1, !dbg !745, !tbaa !139
  %35 = and i8 %34, 4, !dbg !745
  %36 = icmp eq i8 %35, 0, !dbg !746
  br i1 %36, label %37, label %19, !dbg !746, !llvm.loop !682

; <label>:37:                                     ; preds = %19
  %38 = icmp sgt i32 %27, 0, !dbg !748
  br i1 %38, label %39, label %44, !dbg !748

; <label>:39:                                     ; preds = %9, %37
  %40 = phi i32 [ %27, %37 ], [ 8, %9 ]
  %41 = add nsw i32 %40, -1, !dbg !748
  %42 = and i32 %41, %40, !dbg !748
  %43 = icmp eq i32 %42, 0, !dbg !748
  br i1 %43, label %47, label %44, !dbg !750

; <label>:44:                                     ; preds = %39, %37
  %45 = phi i32 [ %40, %39 ], [ %27, %37 ]
  %46 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %45) #4, !dbg !751
  br label %47, !dbg !751

; <label>:47:                                     ; preds = %44, %39
  %48 = phi i32 [ %45, %44 ], [ %40, %39 ]
  %49 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1, !dbg !752
  store i32 %48, i32* %49, align 4, !dbg !753, !tbaa !134
  br label %53

; <label>:50:                                     ; preds = %4
  %51 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %1) #4, !dbg !754
  %52 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %51) #4, !dbg !756
  br label %53, !dbg !757

; <label>:53:                                     ; preds = %4, %5, %7, %47, %50
  ret void, !dbg !758
}

; Function Attrs: noredzone
declare dso_local void @luaL_pushresult(%struct.luaL_Buffer*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thislib", scope: !2, file: !3, line: 389, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !25)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_struct.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !9, !14, !15, !16, !18, !20, !21, !22}
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 40, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !12, line: 129, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uinttype", file: !3, line: 55, baseType: !13)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Inttype", file: !3, line: 52, baseType: !17)
!17 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !23, line: 99, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!25 = !{!0, !26}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "native", scope: !2, file: !3, line: 83, type: !28, isLocal: true, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3, line: 80, size: 32, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !29, file: !3, line: 81, baseType: !14, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !29, file: !3, line: 82, baseType: !6, size: 8)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !47)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !36, line: 35, size: 128, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !35, file: !36, line: 36, baseType: !18, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !35, file: !36, line: 37, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !23, line: 52, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!14, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !23, line: 50, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !23, line: 50, flags: DIFlagFwdDecl)
!47 = !{!48}
!48 = !DISubrange(count: 4)
!49 = !{i32 2, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!53 = distinct !DISubprogram(name: "luaopen_struct", scope: !3, file: !3, line: 399, type: !42, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!54 = !{!55}
!55 = !DILocalVariable(name: "L", arg: 1, scope: !53, file: !3, line: 399, type: !44)
!56 = !DILocation(line: 399, column: 43, scope: !53)
!57 = !DILocation(line: 400, column: 3, scope: !53)
!58 = !DILocation(line: 401, column: 3, scope: !53)
!59 = distinct !DISubprogram(name: "b_pack", scope: !3, file: !3, line: 206, type: !42, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !60)
!60 = !{!61, !62, !73, !74, !80, !81, !82, !84, !85, !86, !89, !91, !93}
!61 = !DILocalVariable(name: "L", arg: 1, scope: !59, file: !3, line: 206, type: !44)
!62 = !DILocalVariable(name: "b", scope: !59, file: !3, line: 207, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Buffer", file: !36, line: 134, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Buffer", file: !36, line: 129, size: 8384, elements: !65)
!65 = !{!66, !67, !68, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !64, file: !36, line: 130, baseType: !8, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !64, file: !36, line: 131, baseType: !14, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !64, file: !36, line: 132, baseType: !44, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !64, file: !36, line: 133, baseType: !70, size: 8192, offset: 192)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8192, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1024)
!73 = !DILocalVariable(name: "fmt", scope: !59, file: !3, line: 208, type: !18)
!74 = !DILocalVariable(name: "h", scope: !59, file: !3, line: 209, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "Header", file: !3, line: 89, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Header", file: !3, line: 86, size: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !76, file: !3, line: 87, baseType: !14, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !76, file: !3, line: 88, baseType: !14, size: 32, offset: 32)
!80 = !DILocalVariable(name: "arg", scope: !59, file: !3, line: 210, type: !14)
!81 = !DILocalVariable(name: "totalsize", scope: !59, file: !3, line: 211, type: !9)
!82 = !DILocalVariable(name: "opt", scope: !83, file: !3, line: 216, type: !14)
!83 = distinct !DILexicalBlock(scope: !59, file: !3, line: 215, column: 24)
!84 = !DILocalVariable(name: "size", scope: !83, file: !3, line: 217, type: !9)
!85 = !DILocalVariable(name: "toalign", scope: !83, file: !3, line: 218, type: !14)
!86 = !DILocalVariable(name: "f", scope: !87, file: !3, line: 232, type: !7)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 231, column: 17)
!88 = distinct !DILexicalBlock(scope: !83, file: !3, line: 221, column: 18)
!89 = !DILocalVariable(name: "d", scope: !90, file: !3, line: 238, type: !24)
!90 = distinct !DILexicalBlock(scope: !88, file: !3, line: 237, column: 17)
!91 = !DILocalVariable(name: "l", scope: !92, file: !3, line: 244, type: !9)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 243, column: 27)
!93 = !DILocalVariable(name: "s", scope: !92, file: !3, line: 245, type: !18)
!94 = !DILocalVariable(name: "buff", scope: !95, file: !3, line: 171, type: !112)
!95 = distinct !DISubprogram(name: "putinteger", scope: !3, file: !3, line: 167, type: !96, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !99)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !44, !98, !14, !14, !14}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !94, !107, !110}
!100 = !DILocalVariable(name: "L", arg: 1, scope: !95, file: !3, line: 167, type: !44)
!101 = !DILocalVariable(name: "b", arg: 2, scope: !95, file: !3, line: 167, type: !98)
!102 = !DILocalVariable(name: "arg", arg: 3, scope: !95, file: !3, line: 167, type: !14)
!103 = !DILocalVariable(name: "endian", arg: 4, scope: !95, file: !3, line: 167, type: !14)
!104 = !DILocalVariable(name: "size", arg: 5, scope: !95, file: !3, line: 168, type: !14)
!105 = !DILocalVariable(name: "n", scope: !95, file: !3, line: 169, type: !22)
!106 = !DILocalVariable(name: "value", scope: !95, file: !3, line: 170, type: !15)
!107 = !DILocalVariable(name: "i", scope: !108, file: !3, line: 177, type: !14)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 176, column: 25)
!109 = distinct !DILexicalBlock(scope: !95, file: !3, line: 176, column: 7)
!110 = !DILocalVariable(name: "i", scope: !111, file: !3, line: 184, type: !14)
!111 = distinct !DILexicalBlock(scope: !109, file: !3, line: 183, column: 8)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 32)
!115 = !DILocation(line: 171, column: 8, scope: !95, inlinedAt: !116)
!116 = distinct !DILocation(line: 224, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !88, file: !3, line: 223, column: 57)
!118 = !DILocation(line: 206, column: 31, scope: !59)
!119 = !DILocation(line: 207, column: 3, scope: !59)
!120 = !DILocation(line: 208, column: 3, scope: !59)
!121 = !DILocation(line: 208, column: 21, scope: !59)
!122 = !DILocation(line: 208, column: 15, scope: !59)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 209, column: 3, scope: !59)
!128 = !DILocation(line: 210, column: 7, scope: !59)
!129 = !DILocation(line: 211, column: 10, scope: !59)
!130 = !DILocation(line: 212, column: 3, scope: !59)
!131 = !{!132, !133, i64 0}
!132 = !{!"Header", !133, i64 0, !133, i64 4}
!133 = !{!"int", !125, i64 0}
!134 = !{!132, !133, i64 4}
!135 = !DILocation(line: 213, column: 3, scope: !59)
!136 = !DILocation(line: 207, column: 15, scope: !59)
!137 = !DILocation(line: 214, column: 3, scope: !59)
!138 = !DILocation(line: 215, column: 10, scope: !59)
!139 = !{!125, !125, i64 0}
!140 = !DILocation(line: 215, column: 15, scope: !59)
!141 = !DILocation(line: 215, column: 3, scope: !59)
!142 = !DILocation(line: 216, column: 19, scope: !83)
!143 = !DILocation(line: 216, column: 15, scope: !83)
!144 = !DILocation(line: 216, column: 9, scope: !83)
!145 = !DILocation(line: 217, column: 19, scope: !83)
!146 = !DILocation(line: 217, column: 12, scope: !83)
!147 = !DILocation(line: 209, column: 10, scope: !59)
!148 = !DILocalVariable(name: "len", arg: 1, scope: !149, file: !3, line: 135, type: !9)
!149 = distinct !DISubprogram(name: "gettoalign", scope: !3, file: !3, line: 135, type: !150, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !153)
!150 = !DISubroutineType(types: !151)
!151 = !{!14, !9, !152, !14, !9}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!153 = !{!148, !154, !155, !156}
!154 = !DILocalVariable(name: "h", arg: 2, scope: !149, file: !3, line: 135, type: !152)
!155 = !DILocalVariable(name: "opt", arg: 3, scope: !149, file: !3, line: 135, type: !14)
!156 = !DILocalVariable(name: "size", arg: 4, scope: !149, file: !3, line: 135, type: !9)
!157 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !158)
!158 = distinct !DILocation(line: 218, column: 19, scope: !83)
!159 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !158)
!160 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !158)
!161 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !158)
!162 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !158)
!163 = distinct !DILexicalBlock(scope: !149, file: !3, line: 136, column: 7)
!164 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !158)
!165 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !158)
!166 = !DILocation(line: 137, column: 25, scope: !167, inlinedAt: !158)
!167 = distinct !DILexicalBlock(scope: !149, file: !3, line: 137, column: 7)
!168 = !DILocation(line: 137, column: 14, scope: !167, inlinedAt: !158)
!169 = !DILocation(line: 137, column: 12, scope: !167, inlinedAt: !158)
!170 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !158)
!171 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !158)
!172 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !158)
!173 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !158)
!174 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !158)
!175 = !DILocation(line: 139, column: 10, scope: !149, inlinedAt: !158)
!176 = !DILocation(line: 218, column: 9, scope: !83)
!177 = !DILocation(line: 219, column: 18, scope: !83)
!178 = !DILocation(line: 219, column: 15, scope: !83)
!179 = !DILocation(line: 220, column: 22, scope: !83)
!180 = !DILocation(line: 220, column: 5, scope: !83)
!181 = !DILocation(line: 220, column: 19, scope: !83)
!182 = !DILocation(line: 220, column: 27, scope: !83)
!183 = !{!184, !124, i64 0}
!184 = !{!"luaL_Buffer", !124, i64 0, !133, i64 8, !124, i64 16, !125, i64 24}
!185 = distinct !{!185, !180, !182}
!186 = !DILocation(line: 221, column: 5, scope: !83)
!187 = !DILocation(line: 224, column: 30, scope: !117)
!188 = !DILocation(line: 224, column: 36, scope: !117)
!189 = !DILocation(line: 224, column: 44, scope: !117)
!190 = !DILocation(line: 167, column: 36, scope: !95, inlinedAt: !116)
!191 = !DILocation(line: 167, column: 52, scope: !95, inlinedAt: !116)
!192 = !DILocation(line: 167, column: 59, scope: !95, inlinedAt: !116)
!193 = !DILocation(line: 167, column: 68, scope: !95, inlinedAt: !116)
!194 = !DILocation(line: 168, column: 29, scope: !95, inlinedAt: !116)
!195 = !DILocation(line: 169, column: 18, scope: !95, inlinedAt: !116)
!196 = !DILocation(line: 169, column: 14, scope: !95, inlinedAt: !116)
!197 = !DILocation(line: 171, column: 3, scope: !95, inlinedAt: !116)
!198 = !DILocation(line: 172, column: 9, scope: !199, inlinedAt: !116)
!199 = distinct !DILexicalBlock(scope: !95, file: !3, line: 172, column: 7)
!200 = !DILocation(line: 173, column: 23, scope: !199, inlinedAt: !116)
!201 = !DILocation(line: 170, column: 12, scope: !95, inlinedAt: !116)
!202 = !DILocation(line: 175, column: 13, scope: !199, inlinedAt: !116)
!203 = !DILocation(line: 172, column: 7, scope: !95, inlinedAt: !116)
!204 = !DILocation(line: 176, column: 14, scope: !109, inlinedAt: !116)
!205 = !DILocation(line: 0, scope: !206, inlinedAt: !116)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 185, column: 5)
!207 = distinct !DILexicalBlock(scope: !111, file: !3, line: 185, column: 5)
!208 = !DILocation(line: 176, column: 7, scope: !95, inlinedAt: !116)
!209 = !DILocation(line: 184, column: 9, scope: !111, inlinedAt: !116)
!210 = !DILocation(line: 185, column: 5, scope: !207, inlinedAt: !116)
!211 = !DILocation(line: 177, column: 9, scope: !108, inlinedAt: !116)
!212 = !DILocation(line: 178, column: 5, scope: !213, inlinedAt: !116)
!213 = distinct !DILexicalBlock(scope: !108, file: !3, line: 178, column: 5)
!214 = !DILocation(line: 179, column: 17, scope: !215, inlinedAt: !116)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 178, column: 32)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 178, column: 5)
!217 = !DILocation(line: 179, column: 7, scope: !215, inlinedAt: !116)
!218 = !DILocation(line: 179, column: 15, scope: !215, inlinedAt: !116)
!219 = !DILocation(line: 180, column: 13, scope: !215, inlinedAt: !116)
!220 = !DILocation(line: 178, column: 28, scope: !216, inlinedAt: !116)
!221 = distinct !{!221, !222, !223}
!222 = !DILocation(line: 178, column: 5, scope: !213)
!223 = !DILocation(line: 181, column: 5, scope: !213)
!224 = !DILocation(line: 186, column: 17, scope: !225, inlinedAt: !116)
!225 = distinct !DILexicalBlock(scope: !206, file: !3, line: 185, column: 37)
!226 = !DILocation(line: 186, column: 7, scope: !225, inlinedAt: !116)
!227 = !DILocation(line: 186, column: 15, scope: !225, inlinedAt: !116)
!228 = !DILocation(line: 187, column: 13, scope: !225, inlinedAt: !116)
!229 = !DILocation(line: 185, column: 26, scope: !206, inlinedAt: !116)
!230 = distinct !{!230, !231, !232}
!231 = !DILocation(line: 185, column: 5, scope: !207)
!232 = !DILocation(line: 188, column: 5, scope: !207)
!233 = distinct !{!233, !234}
!234 = !{!"llvm.loop.unroll.disable"}
!235 = !DILocation(line: 190, column: 28, scope: !95, inlinedAt: !116)
!236 = !DILocation(line: 190, column: 3, scope: !95, inlinedAt: !116)
!237 = !DILocation(line: 191, column: 1, scope: !95, inlinedAt: !116)
!238 = !DILocation(line: 225, column: 9, scope: !117)
!239 = !DILocation(line: 228, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !88, file: !3, line: 227, column: 17)
!241 = !DILocation(line: 229, column: 9, scope: !240)
!242 = !DILocation(line: 232, column: 9, scope: !87)
!243 = !DILocation(line: 232, column: 49, scope: !87)
!244 = !DILocation(line: 232, column: 26, scope: !87)
!245 = !DILocation(line: 232, column: 19, scope: !87)
!246 = !DILocation(line: 232, column: 15, scope: !87)
!247 = !{!248, !248, i64 0}
!248 = !{!"float", !125, i64 0}
!249 = !DILocation(line: 233, column: 34, scope: !87)
!250 = !DILocation(line: 233, column: 42, scope: !87)
!251 = !DILocalVariable(name: "b", arg: 1, scope: !252, file: !3, line: 194, type: !8)
!252 = distinct !DISubprogram(name: "correctbytes", scope: !3, file: !3, line: 194, type: !253, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !8, !14, !14}
!255 = !{!251, !256, !257, !258, !261}
!256 = !DILocalVariable(name: "size", arg: 2, scope: !252, file: !3, line: 194, type: !14)
!257 = !DILocalVariable(name: "endian", arg: 3, scope: !252, file: !3, line: 194, type: !14)
!258 = !DILocalVariable(name: "i", scope: !259, file: !3, line: 196, type: !14)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 195, column: 32)
!260 = distinct !DILexicalBlock(scope: !252, file: !3, line: 195, column: 7)
!261 = !DILocalVariable(name: "temp", scope: !262, file: !3, line: 198, type: !6)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 197, column: 24)
!263 = !DILocation(line: 194, column: 33, scope: !252, inlinedAt: !264)
!264 = distinct !DILocation(line: 233, column: 9, scope: !87)
!265 = !DILocation(line: 194, column: 40, scope: !252, inlinedAt: !264)
!266 = !DILocation(line: 194, column: 50, scope: !252, inlinedAt: !264)
!267 = !DILocation(line: 195, column: 14, scope: !260, inlinedAt: !264)
!268 = !DILocation(line: 197, column: 14, scope: !259, inlinedAt: !264)
!269 = !DILocation(line: 195, column: 7, scope: !252, inlinedAt: !264)
!270 = !DILocation(line: 196, column: 9, scope: !259, inlinedAt: !264)
!271 = !DILocation(line: 198, column: 19, scope: !262, inlinedAt: !264)
!272 = !DILocation(line: 198, column: 12, scope: !262, inlinedAt: !264)
!273 = !DILocation(line: 199, column: 16, scope: !262, inlinedAt: !264)
!274 = !DILocation(line: 199, column: 14, scope: !262, inlinedAt: !264)
!275 = !DILocation(line: 200, column: 15, scope: !262, inlinedAt: !264)
!276 = !DILocation(line: 197, column: 5, scope: !259, inlinedAt: !264)
!277 = distinct !{!277, !278, !279}
!278 = !DILocation(line: 197, column: 5, scope: !259)
!279 = !DILocation(line: 201, column: 5, scope: !259)
!280 = !DILocation(line: 197, column: 16, scope: !259, inlinedAt: !264)
!281 = !DILocation(line: 199, column: 10, scope: !262, inlinedAt: !264)
!282 = !DILocation(line: 234, column: 9, scope: !87)
!283 = !DILocation(line: 236, column: 7, scope: !88)
!284 = !DILocation(line: 238, column: 9, scope: !90)
!285 = !DILocation(line: 238, column: 43, scope: !90)
!286 = !DILocation(line: 238, column: 20, scope: !90)
!287 = !DILocation(line: 238, column: 16, scope: !90)
!288 = !{!289, !289, i64 0}
!289 = !{!"double", !125, i64 0}
!290 = !DILocation(line: 239, column: 34, scope: !90)
!291 = !DILocation(line: 239, column: 42, scope: !90)
!292 = !DILocation(line: 194, column: 33, scope: !252, inlinedAt: !293)
!293 = distinct !DILocation(line: 239, column: 9, scope: !90)
!294 = !DILocation(line: 194, column: 40, scope: !252, inlinedAt: !293)
!295 = !DILocation(line: 194, column: 50, scope: !252, inlinedAt: !293)
!296 = !DILocation(line: 195, column: 14, scope: !260, inlinedAt: !293)
!297 = !DILocation(line: 197, column: 14, scope: !259, inlinedAt: !293)
!298 = !DILocation(line: 195, column: 7, scope: !252, inlinedAt: !293)
!299 = !DILocation(line: 196, column: 9, scope: !259, inlinedAt: !293)
!300 = !DILocation(line: 198, column: 19, scope: !262, inlinedAt: !293)
!301 = !DILocation(line: 198, column: 12, scope: !262, inlinedAt: !293)
!302 = !DILocation(line: 199, column: 16, scope: !262, inlinedAt: !293)
!303 = !DILocation(line: 199, column: 14, scope: !262, inlinedAt: !293)
!304 = !DILocation(line: 200, column: 15, scope: !262, inlinedAt: !293)
!305 = !DILocation(line: 197, column: 5, scope: !259, inlinedAt: !293)
!306 = !DILocation(line: 197, column: 16, scope: !259, inlinedAt: !293)
!307 = !DILocation(line: 199, column: 10, scope: !262, inlinedAt: !293)
!308 = !DILocation(line: 240, column: 9, scope: !90)
!309 = !DILocation(line: 242, column: 7, scope: !88)
!310 = !DILocation(line: 244, column: 9, scope: !92)
!311 = !DILocation(line: 245, column: 49, scope: !92)
!312 = !DILocation(line: 244, column: 16, scope: !92)
!313 = !DILocation(line: 245, column: 25, scope: !92)
!314 = !DILocation(line: 245, column: 21, scope: !92)
!315 = !DILocation(line: 246, column: 31, scope: !316)
!316 = distinct !DILexicalBlock(scope: !92, file: !3, line: 246, column: 13)
!317 = !DILocation(line: 246, column: 13, scope: !92)
!318 = !DILocation(line: 247, column: 9, scope: !92)
!319 = !DILocation(line: 248, column: 9, scope: !92)
!320 = !DILocation(line: 249, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !92, file: !3, line: 249, column: 13)
!322 = !DILocation(line: 249, column: 13, scope: !92)
!323 = !DILocation(line: 250, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 249, column: 25)
!325 = !DILocation(line: 251, column: 15, scope: !324)
!326 = !DILocation(line: 252, column: 9, scope: !324)
!327 = !DILocation(line: 0, scope: !316)
!328 = !DILocation(line: 254, column: 7, scope: !88)
!329 = !DILocation(line: 255, column: 16, scope: !88)
!330 = !DILocation(line: 256, column: 5, scope: !88)
!331 = !DILocation(line: 0, scope: !83)
!332 = !DILocation(line: 0, scope: !117)
!333 = !DILocation(line: 257, column: 15, scope: !83)
!334 = !DILocation(line: 215, column: 11, scope: !59)
!335 = distinct !{!335, !141, !336}
!336 = !DILocation(line: 258, column: 3, scope: !59)
!337 = !DILocation(line: 259, column: 3, scope: !59)
!338 = !DILocation(line: 261, column: 1, scope: !59)
!339 = !DILocation(line: 260, column: 3, scope: !59)
!340 = distinct !DISubprogram(name: "b_unpack", scope: !3, file: !3, line: 291, type: !42, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !351, !352, !355, !356, !358, !360}
!342 = !DILocalVariable(name: "L", arg: 1, scope: !340, file: !3, line: 291, type: !44)
!343 = !DILocalVariable(name: "h", scope: !340, file: !3, line: 292, type: !75)
!344 = !DILocalVariable(name: "fmt", scope: !340, file: !3, line: 293, type: !18)
!345 = !DILocalVariable(name: "ld", scope: !340, file: !3, line: 294, type: !9)
!346 = !DILocalVariable(name: "data", scope: !340, file: !3, line: 295, type: !18)
!347 = !DILocalVariable(name: "pos", scope: !340, file: !3, line: 296, type: !9)
!348 = !DILocalVariable(name: "n", scope: !340, file: !3, line: 300, type: !14)
!349 = !DILocalVariable(name: "opt", scope: !350, file: !3, line: 303, type: !14)
!350 = distinct !DILexicalBlock(scope: !340, file: !3, line: 302, column: 16)
!351 = !DILocalVariable(name: "size", scope: !350, file: !3, line: 304, type: !9)
!352 = !DILocalVariable(name: "issigned", scope: !353, file: !3, line: 313, type: !14)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 312, column: 58)
!354 = distinct !DILexicalBlock(scope: !350, file: !3, line: 310, column: 18)
!355 = !DILocalVariable(name: "res", scope: !353, file: !3, line: 314, type: !22)
!356 = !DILocalVariable(name: "f", scope: !357, file: !3, line: 322, type: !7)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 321, column: 17)
!358 = !DILocalVariable(name: "d", scope: !359, file: !3, line: 329, type: !24)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 328, column: 17)
!360 = !DILocalVariable(name: "e", scope: !361, file: !3, line: 348, type: !18)
!361 = distinct !DILexicalBlock(scope: !354, file: !3, line: 347, column: 17)
!362 = !DILocation(line: 291, column: 33, scope: !340)
!363 = !DILocation(line: 292, column: 3, scope: !340)
!364 = !DILocation(line: 293, column: 3, scope: !340)
!365 = !DILocation(line: 293, column: 21, scope: !340)
!366 = !DILocation(line: 293, column: 15, scope: !340)
!367 = !DILocation(line: 294, column: 3, scope: !340)
!368 = !DILocation(line: 294, column: 10, scope: !340)
!369 = !DILocation(line: 295, column: 22, scope: !340)
!370 = !DILocation(line: 295, column: 15, scope: !340)
!371 = !DILocation(line: 296, column: 16, scope: !340)
!372 = !DILocation(line: 296, column: 10, scope: !340)
!373 = !DILocation(line: 297, column: 3, scope: !340)
!374 = !DILocation(line: 298, column: 6, scope: !340)
!375 = !DILocation(line: 300, column: 7, scope: !340)
!376 = !DILocation(line: 301, column: 3, scope: !340)
!377 = !DILocation(line: 302, column: 10, scope: !340)
!378 = !DILocation(line: 302, column: 3, scope: !340)
!379 = !DILocation(line: 303, column: 19, scope: !350)
!380 = !DILocation(line: 303, column: 15, scope: !350)
!381 = !DILocation(line: 303, column: 9, scope: !350)
!382 = !DILocation(line: 304, column: 19, scope: !350)
!383 = !DILocation(line: 304, column: 12, scope: !350)
!384 = !DILocation(line: 292, column: 10, scope: !340)
!385 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !386)
!386 = distinct !DILocation(line: 305, column: 12, scope: !350)
!387 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !386)
!388 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !386)
!389 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !386)
!390 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !386)
!391 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !386)
!392 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !386)
!393 = !DILocation(line: 137, column: 25, scope: !167, inlinedAt: !386)
!394 = !DILocation(line: 137, column: 14, scope: !167, inlinedAt: !386)
!395 = !DILocation(line: 137, column: 12, scope: !167, inlinedAt: !386)
!396 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !386)
!397 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !386)
!398 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !386)
!399 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !386)
!400 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !386)
!401 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !386)
!402 = !DILocation(line: 0, scope: !149, inlinedAt: !386)
!403 = !DILocation(line: 305, column: 12, scope: !350)
!404 = !DILocation(line: 305, column: 9, scope: !350)
!405 = !DILocation(line: 306, column: 5, scope: !350)
!406 = !{!407, !407, i64 0}
!407 = !{!"long", !125, i64 0}
!408 = !DILocation(line: 309, column: 5, scope: !350)
!409 = !DILocation(line: 310, column: 5, scope: !350)
!410 = !DILocation(line: 313, column: 24, scope: !353)
!411 = !DILocation(line: 314, column: 41, scope: !353)
!412 = !DILocation(line: 314, column: 49, scope: !353)
!413 = !DILocation(line: 314, column: 67, scope: !353)
!414 = !DILocalVariable(name: "buff", arg: 1, scope: !415, file: !3, line: 264, type: !18)
!415 = distinct !DISubprogram(name: "getinteger", scope: !3, file: !3, line: 264, type: !416, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!22, !18, !14, !14, !14}
!418 = !{!414, !419, !420, !421, !422, !423, !424}
!419 = !DILocalVariable(name: "endian", arg: 2, scope: !415, file: !3, line: 264, type: !14)
!420 = !DILocalVariable(name: "issigned", arg: 3, scope: !415, file: !3, line: 265, type: !14)
!421 = !DILocalVariable(name: "size", arg: 4, scope: !415, file: !3, line: 265, type: !14)
!422 = !DILocalVariable(name: "l", scope: !415, file: !3, line: 266, type: !15)
!423 = !DILocalVariable(name: "i", scope: !415, file: !3, line: 267, type: !14)
!424 = !DILocalVariable(name: "mask", scope: !425, file: !3, line: 283, type: !15)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 282, column: 8)
!426 = distinct !DILexicalBlock(scope: !415, file: !3, line: 280, column: 7)
!427 = !DILocation(line: 264, column: 43, scope: !415, inlinedAt: !428)
!428 = distinct !DILocation(line: 314, column: 26, scope: !353)
!429 = !DILocation(line: 264, column: 53, scope: !415, inlinedAt: !428)
!430 = !DILocation(line: 265, column: 43, scope: !415, inlinedAt: !428)
!431 = !DILocation(line: 266, column: 12, scope: !415, inlinedAt: !428)
!432 = !DILocation(line: 268, column: 14, scope: !433, inlinedAt: !428)
!433 = distinct !DILexicalBlock(scope: !415, file: !3, line: 268, column: 7)
!434 = !DILocation(line: 0, scope: !435, inlinedAt: !428)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 275, column: 5)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 275, column: 5)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 274, column: 8)
!438 = !DILocation(line: 268, column: 7, scope: !415, inlinedAt: !428)
!439 = !DILocation(line: 267, column: 7, scope: !415, inlinedAt: !428)
!440 = !DILocation(line: 275, column: 5, scope: !436, inlinedAt: !428)
!441 = !DILocation(line: 269, column: 5, scope: !442, inlinedAt: !428)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 269, column: 5)
!443 = distinct !DILexicalBlock(scope: !433, file: !3, line: 268, column: 22)
!444 = !DILocation(line: 270, column: 9, scope: !445, inlinedAt: !428)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 269, column: 32)
!446 = distinct !DILexicalBlock(scope: !442, file: !3, line: 269, column: 5)
!447 = !DILocation(line: 271, column: 37, scope: !445, inlinedAt: !428)
!448 = !DILocation(line: 271, column: 12, scope: !445, inlinedAt: !428)
!449 = !DILocation(line: 271, column: 9, scope: !445, inlinedAt: !428)
!450 = !DILocation(line: 269, column: 28, scope: !446, inlinedAt: !428)
!451 = distinct !{!451, !452, !453}
!452 = !DILocation(line: 269, column: 5, scope: !442)
!453 = !DILocation(line: 272, column: 5, scope: !442)
!454 = !DILocation(line: 276, column: 9, scope: !455, inlinedAt: !428)
!455 = distinct !DILexicalBlock(scope: !435, file: !3, line: 275, column: 37)
!456 = !DILocation(line: 277, column: 37, scope: !455, inlinedAt: !428)
!457 = !DILocation(line: 277, column: 12, scope: !455, inlinedAt: !428)
!458 = !DILocation(line: 277, column: 9, scope: !455, inlinedAt: !428)
!459 = !DILocation(line: 275, column: 26, scope: !435, inlinedAt: !428)
!460 = distinct !{!460, !461, !462}
!461 = !DILocation(line: 275, column: 5, scope: !436)
!462 = !DILocation(line: 278, column: 5, scope: !436)
!463 = distinct !{!463, !234}
!464 = !DILocation(line: 280, column: 7, scope: !415, inlinedAt: !428)
!465 = !DILocation(line: 281, column: 12, scope: !426, inlinedAt: !428)
!466 = !DILocation(line: 281, column: 5, scope: !426, inlinedAt: !428)
!467 = !DILocation(line: 283, column: 56, scope: !425, inlinedAt: !428)
!468 = !DILocation(line: 283, column: 59, scope: !425, inlinedAt: !428)
!469 = !DILocation(line: 283, column: 48, scope: !425, inlinedAt: !428)
!470 = !DILocation(line: 283, column: 14, scope: !425, inlinedAt: !428)
!471 = !DILocation(line: 284, column: 11, scope: !472, inlinedAt: !428)
!472 = distinct !DILexicalBlock(scope: !425, file: !3, line: 284, column: 9)
!473 = !DILocation(line: 284, column: 9, scope: !425, inlinedAt: !428)
!474 = !DILocation(line: 286, column: 12, scope: !425, inlinedAt: !428)
!475 = !DILocation(line: 0, scope: !426, inlinedAt: !428)
!476 = !DILocation(line: 314, column: 20, scope: !353)
!477 = !DILocation(line: 315, column: 9, scope: !353)
!478 = !DILocation(line: 315, column: 34, scope: !353)
!479 = !DILocation(line: 322, column: 9, scope: !357)
!480 = !DILocation(line: 323, column: 24, scope: !357)
!481 = !DILocation(line: 323, column: 9, scope: !357)
!482 = !DILocation(line: 324, column: 47, scope: !357)
!483 = !DILocation(line: 194, column: 33, scope: !252, inlinedAt: !484)
!484 = distinct !DILocation(line: 324, column: 9, scope: !357)
!485 = !DILocation(line: 194, column: 40, scope: !252, inlinedAt: !484)
!486 = !DILocation(line: 194, column: 50, scope: !252, inlinedAt: !484)
!487 = !DILocation(line: 195, column: 14, scope: !260, inlinedAt: !484)
!488 = !DILocation(line: 196, column: 9, scope: !259, inlinedAt: !484)
!489 = !DILocation(line: 195, column: 7, scope: !252, inlinedAt: !484)
!490 = !DILocation(line: 198, column: 19, scope: !262, inlinedAt: !484)
!491 = !DILocation(line: 198, column: 12, scope: !262, inlinedAt: !484)
!492 = !DILocation(line: 199, column: 16, scope: !262, inlinedAt: !484)
!493 = !DILocation(line: 199, column: 10, scope: !262, inlinedAt: !484)
!494 = !DILocation(line: 199, column: 14, scope: !262, inlinedAt: !484)
!495 = !DILocation(line: 200, column: 15, scope: !262, inlinedAt: !484)
!496 = !DILocation(line: 197, column: 16, scope: !259, inlinedAt: !484)
!497 = !DILocation(line: 197, column: 14, scope: !259, inlinedAt: !484)
!498 = !DILocation(line: 197, column: 5, scope: !259, inlinedAt: !484)
!499 = !DILocation(line: 325, column: 27, scope: !357)
!500 = !DILocation(line: 322, column: 15, scope: !357)
!501 = !DILocation(line: 325, column: 9, scope: !357)
!502 = !DILocation(line: 325, column: 32, scope: !357)
!503 = !DILocation(line: 327, column: 7, scope: !354)
!504 = !DILocation(line: 329, column: 9, scope: !359)
!505 = !DILocation(line: 330, column: 24, scope: !359)
!506 = !DILocation(line: 330, column: 9, scope: !359)
!507 = !DILocation(line: 331, column: 47, scope: !359)
!508 = !DILocation(line: 194, column: 33, scope: !252, inlinedAt: !509)
!509 = distinct !DILocation(line: 331, column: 9, scope: !359)
!510 = !DILocation(line: 194, column: 40, scope: !252, inlinedAt: !509)
!511 = !DILocation(line: 194, column: 50, scope: !252, inlinedAt: !509)
!512 = !DILocation(line: 195, column: 14, scope: !260, inlinedAt: !509)
!513 = !DILocation(line: 196, column: 9, scope: !259, inlinedAt: !509)
!514 = !DILocation(line: 195, column: 7, scope: !252, inlinedAt: !509)
!515 = !DILocation(line: 198, column: 19, scope: !262, inlinedAt: !509)
!516 = !DILocation(line: 198, column: 12, scope: !262, inlinedAt: !509)
!517 = !DILocation(line: 199, column: 16, scope: !262, inlinedAt: !509)
!518 = !DILocation(line: 199, column: 10, scope: !262, inlinedAt: !509)
!519 = !DILocation(line: 199, column: 14, scope: !262, inlinedAt: !509)
!520 = !DILocation(line: 200, column: 15, scope: !262, inlinedAt: !509)
!521 = !DILocation(line: 197, column: 16, scope: !259, inlinedAt: !509)
!522 = !DILocation(line: 197, column: 14, scope: !259, inlinedAt: !509)
!523 = !DILocation(line: 197, column: 5, scope: !259, inlinedAt: !509)
!524 = !DILocation(line: 332, column: 27, scope: !359)
!525 = !DILocation(line: 329, column: 16, scope: !359)
!526 = !DILocation(line: 332, column: 9, scope: !359)
!527 = !DILocation(line: 332, column: 32, scope: !359)
!528 = !DILocation(line: 334, column: 7, scope: !354)
!529 = !DILocation(line: 336, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !354, file: !3, line: 335, column: 17)
!531 = !DILocation(line: 337, column: 17, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 337, column: 15)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 336, column: 24)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 336, column: 13)
!535 = !DILocation(line: 337, column: 22, scope: !532)
!536 = !DILocation(line: 337, column: 26, scope: !532)
!537 = !DILocation(line: 337, column: 15, scope: !533)
!538 = !DILocation(line: 338, column: 13, scope: !532)
!539 = !DILocation(line: 339, column: 18, scope: !533)
!540 = !DILocation(line: 340, column: 11, scope: !533)
!541 = !DILocation(line: 340, column: 27, scope: !533)
!542 = !DILocation(line: 341, column: 11, scope: !533)
!543 = !DILocation(line: 0, scope: !350)
!544 = !DILocation(line: 0, scope: !340)
!545 = !DILocation(line: 344, column: 32, scope: !530)
!546 = !DILocation(line: 344, column: 9, scope: !530)
!547 = !DILocation(line: 344, column: 46, scope: !530)
!548 = !DILocation(line: 345, column: 9, scope: !530)
!549 = !DILocation(line: 348, column: 50, scope: !361)
!550 = !DILocation(line: 348, column: 62, scope: !361)
!551 = !DILocation(line: 348, column: 65, scope: !361)
!552 = !DILocation(line: 348, column: 39, scope: !361)
!553 = !DILocation(line: 348, column: 21, scope: !361)
!554 = !DILocation(line: 349, column: 15, scope: !555)
!555 = distinct !DILexicalBlock(scope: !361, file: !3, line: 349, column: 13)
!556 = !DILocation(line: 349, column: 13, scope: !361)
!557 = !DILocation(line: 350, column: 11, scope: !555)
!558 = !DILocation(line: 351, column: 19, scope: !361)
!559 = !DILocation(line: 351, column: 33, scope: !361)
!560 = !DILocation(line: 352, column: 9, scope: !361)
!561 = !DILocation(line: 352, column: 50, scope: !361)
!562 = !DILocation(line: 355, column: 16, scope: !354)
!563 = !DILocation(line: 356, column: 5, scope: !354)
!564 = !DILocation(line: 0, scope: !353)
!565 = !DILocation(line: 357, column: 9, scope: !350)
!566 = !DILocation(line: 302, column: 11, scope: !340)
!567 = distinct !{!567, !378, !568}
!568 = !DILocation(line: 358, column: 3, scope: !340)
!569 = !DILocation(line: 359, column: 26, scope: !340)
!570 = !DILocation(line: 359, column: 3, scope: !340)
!571 = !DILocation(line: 360, column: 12, scope: !340)
!572 = !DILocation(line: 361, column: 1, scope: !340)
!573 = !DILocation(line: 360, column: 3, scope: !340)
!574 = distinct !DISubprogram(name: "b_size", scope: !3, file: !3, line: 364, type: !42, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !575)
!575 = !{!576, !577, !578, !579, !580, !582}
!576 = !DILocalVariable(name: "L", arg: 1, scope: !574, file: !3, line: 364, type: !44)
!577 = !DILocalVariable(name: "h", scope: !574, file: !3, line: 365, type: !75)
!578 = !DILocalVariable(name: "fmt", scope: !574, file: !3, line: 366, type: !18)
!579 = !DILocalVariable(name: "pos", scope: !574, file: !3, line: 367, type: !9)
!580 = !DILocalVariable(name: "opt", scope: !581, file: !3, line: 370, type: !14)
!581 = distinct !DILexicalBlock(scope: !574, file: !3, line: 369, column: 16)
!582 = !DILocalVariable(name: "size", scope: !581, file: !3, line: 371, type: !9)
!583 = !DILocation(line: 364, column: 31, scope: !574)
!584 = !DILocation(line: 365, column: 3, scope: !574)
!585 = !DILocation(line: 366, column: 3, scope: !574)
!586 = !DILocation(line: 366, column: 21, scope: !574)
!587 = !DILocation(line: 366, column: 15, scope: !574)
!588 = !DILocation(line: 367, column: 10, scope: !574)
!589 = !DILocation(line: 368, column: 3, scope: !574)
!590 = !DILocation(line: 369, column: 10, scope: !574)
!591 = !DILocation(line: 369, column: 3, scope: !574)
!592 = !DILocation(line: 370, column: 19, scope: !581)
!593 = !DILocation(line: 370, column: 15, scope: !581)
!594 = !DILocation(line: 370, column: 9, scope: !581)
!595 = !DILocation(line: 371, column: 19, scope: !581)
!596 = !DILocation(line: 371, column: 12, scope: !581)
!597 = !DILocation(line: 365, column: 10, scope: !574)
!598 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !599)
!599 = distinct !DILocation(line: 372, column: 12, scope: !581)
!600 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !599)
!601 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !599)
!602 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !599)
!603 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !599)
!604 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !599)
!605 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !599)
!606 = !DILocation(line: 137, column: 25, scope: !167, inlinedAt: !599)
!607 = !DILocation(line: 137, column: 14, scope: !167, inlinedAt: !599)
!608 = !DILocation(line: 137, column: 12, scope: !167, inlinedAt: !599)
!609 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !599)
!610 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !599)
!611 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !599)
!612 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !599)
!613 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !599)
!614 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !599)
!615 = !DILocation(line: 0, scope: !149, inlinedAt: !599)
!616 = !DILocation(line: 372, column: 12, scope: !581)
!617 = !DILocation(line: 373, column: 13, scope: !618)
!618 = distinct !DILexicalBlock(scope: !581, file: !3, line: 373, column: 9)
!619 = !DILocation(line: 373, column: 9, scope: !581)
!620 = !DILocation(line: 374, column: 7, scope: !618)
!621 = !DILocation(line: 375, column: 25, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 375, column: 14)
!623 = !DILocation(line: 376, column: 7, scope: !622)
!624 = !DILocation(line: 377, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !581, file: !3, line: 377, column: 9)
!626 = !DILocation(line: 377, column: 9, scope: !581)
!627 = !DILocation(line: 378, column: 7, scope: !625)
!628 = !DILocation(line: 372, column: 9, scope: !581)
!629 = !DILocation(line: 379, column: 9, scope: !581)
!630 = !DILocation(line: 369, column: 11, scope: !574)
!631 = distinct !{!631, !591, !632}
!632 = !DILocation(line: 380, column: 3, scope: !574)
!633 = !DILocation(line: 0, scope: !581)
!634 = !DILocation(line: 381, column: 3, scope: !574)
!635 = !DILocation(line: 383, column: 1, scope: !574)
!636 = !DILocation(line: 382, column: 3, scope: !574)
!637 = distinct !DISubprogram(name: "optsize", scope: !3, file: !3, line: 109, type: !638, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !641)
!638 = !DISubroutineType(types: !639)
!639 = !{!9, !44, !6, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!641 = !{!642, !643, !644, !645}
!642 = !DILocalVariable(name: "L", arg: 1, scope: !637, file: !3, line: 109, type: !44)
!643 = !DILocalVariable(name: "opt", arg: 2, scope: !637, file: !3, line: 109, type: !6)
!644 = !DILocalVariable(name: "fmt", arg: 3, scope: !637, file: !3, line: 109, type: !640)
!645 = !DILocalVariable(name: "sz", scope: !646, file: !3, line: 120, type: !14)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 119, column: 25)
!647 = distinct !DILexicalBlock(scope: !637, file: !3, line: 110, column: 16)
!648 = !DILocation(line: 109, column: 35, scope: !637)
!649 = !DILocation(line: 109, column: 43, scope: !637)
!650 = !DILocation(line: 109, column: 61, scope: !637)
!651 = !DILocation(line: 110, column: 11, scope: !637)
!652 = !DILocation(line: 110, column: 3, scope: !637)
!653 = !DILocation(line: 112, column: 25, scope: !647)
!654 = !DILocation(line: 113, column: 25, scope: !647)
!655 = !DILocation(line: 114, column: 15, scope: !647)
!656 = !DILocation(line: 115, column: 16, scope: !647)
!657 = !DILocation(line: 116, column: 16, scope: !647)
!658 = !DILocalVariable(name: "fmt", arg: 1, scope: !659, file: !3, line: 92, type: !640)
!659 = distinct !DISubprogram(name: "getnum", scope: !3, file: !3, line: 92, type: !660, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!14, !640, !14}
!662 = !{!658, !663, !664}
!663 = !DILocalVariable(name: "df", arg: 2, scope: !659, file: !3, line: 92, type: !14)
!664 = !DILocalVariable(name: "a", scope: !665, file: !3, line: 96, type: !14)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 95, column: 8)
!666 = distinct !DILexicalBlock(scope: !659, file: !3, line: 93, column: 7)
!667 = !DILocation(line: 92, column: 33, scope: !659, inlinedAt: !668)
!668 = distinct !DILocation(line: 118, column: 22, scope: !647)
!669 = !DILocation(line: 92, column: 42, scope: !659, inlinedAt: !668)
!670 = !DILocation(line: 93, column: 8, scope: !666, inlinedAt: !668)
!671 = !DILocation(line: 93, column: 7, scope: !659, inlinedAt: !668)
!672 = !DILocation(line: 98, column: 26, scope: !673, inlinedAt: !668)
!673 = distinct !DILexicalBlock(scope: !665, file: !3, line: 97, column: 8)
!674 = !DILocation(line: 0, scope: !673, inlinedAt: !668)
!675 = !DILocation(line: 96, column: 9, scope: !665, inlinedAt: !668)
!676 = !DILocation(line: 98, column: 12, scope: !673, inlinedAt: !668)
!677 = !DILocation(line: 98, column: 18, scope: !673, inlinedAt: !668)
!678 = !DILocation(line: 98, column: 16, scope: !673, inlinedAt: !668)
!679 = !DILocation(line: 98, column: 30, scope: !673, inlinedAt: !668)
!680 = !DILocation(line: 99, column: 14, scope: !665, inlinedAt: !668)
!681 = !DILocation(line: 99, column: 5, scope: !673, inlinedAt: !668)
!682 = distinct !{!682, !683, !684}
!683 = !DILocation(line: 97, column: 5, scope: !665)
!684 = !DILocation(line: 99, column: 28, scope: !665)
!685 = !DILocation(line: 118, column: 22, scope: !647)
!686 = !DILocation(line: 92, column: 33, scope: !659, inlinedAt: !687)
!687 = distinct !DILocation(line: 120, column: 16, scope: !646)
!688 = !DILocation(line: 92, column: 42, scope: !659, inlinedAt: !687)
!689 = !DILocation(line: 93, column: 8, scope: !666, inlinedAt: !687)
!690 = !DILocation(line: 93, column: 7, scope: !659, inlinedAt: !687)
!691 = !DILocation(line: 98, column: 26, scope: !673, inlinedAt: !687)
!692 = !DILocation(line: 0, scope: !673, inlinedAt: !687)
!693 = !DILocation(line: 96, column: 9, scope: !665, inlinedAt: !687)
!694 = !DILocation(line: 98, column: 12, scope: !673, inlinedAt: !687)
!695 = !DILocation(line: 98, column: 18, scope: !673, inlinedAt: !687)
!696 = !DILocation(line: 98, column: 16, scope: !673, inlinedAt: !687)
!697 = !DILocation(line: 98, column: 30, scope: !673, inlinedAt: !687)
!698 = !DILocation(line: 99, column: 14, scope: !665, inlinedAt: !687)
!699 = !DILocation(line: 99, column: 5, scope: !673, inlinedAt: !687)
!700 = !DILocation(line: 120, column: 11, scope: !646)
!701 = !DILocation(line: 121, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !646, file: !3, line: 121, column: 11)
!703 = !DILocation(line: 121, column: 11, scope: !646)
!704 = !DILocation(line: 122, column: 9, scope: !702)
!705 = !DILocation(line: 124, column: 14, scope: !646)
!706 = !DILocation(line: 126, column: 14, scope: !647)
!707 = !DILocation(line: 0, scope: !647)
!708 = !DILocation(line: 128, column: 1, scope: !637)
!709 = distinct !DISubprogram(name: "controloptions", scope: !3, file: !3, line: 146, type: !710, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !44, !14, !640, !152}
!712 = !{!713, !714, !715, !716, !717, !720}
!713 = !DILocalVariable(name: "L", arg: 1, scope: !709, file: !3, line: 146, type: !44)
!714 = !DILocalVariable(name: "opt", arg: 2, scope: !709, file: !3, line: 146, type: !14)
!715 = !DILocalVariable(name: "fmt", arg: 3, scope: !709, file: !3, line: 146, type: !640)
!716 = !DILocalVariable(name: "h", arg: 4, scope: !709, file: !3, line: 147, type: !152)
!717 = !DILocalVariable(name: "a", scope: !718, file: !3, line: 153, type: !14)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 152, column: 15)
!719 = distinct !DILexicalBlock(scope: !709, file: !3, line: 148, column: 16)
!720 = !DILocalVariable(name: "msg", scope: !721, file: !3, line: 160, type: !18)
!721 = distinct !DILexicalBlock(scope: !719, file: !3, line: 159, column: 14)
!722 = !DILocation(line: 146, column: 40, scope: !709)
!723 = !DILocation(line: 146, column: 47, scope: !709)
!724 = !DILocation(line: 146, column: 65, scope: !709)
!725 = !DILocation(line: 147, column: 37, scope: !709)
!726 = !DILocation(line: 148, column: 3, scope: !709)
!727 = !DILocation(line: 150, column: 18, scope: !719)
!728 = !DILocation(line: 150, column: 25, scope: !719)
!729 = !DILocation(line: 150, column: 32, scope: !719)
!730 = !DILocation(line: 151, column: 18, scope: !719)
!731 = !DILocation(line: 151, column: 25, scope: !719)
!732 = !DILocation(line: 151, column: 35, scope: !719)
!733 = !DILocation(line: 92, column: 33, scope: !659, inlinedAt: !734)
!734 = distinct !DILocation(line: 153, column: 15, scope: !718)
!735 = !DILocation(line: 92, column: 42, scope: !659, inlinedAt: !734)
!736 = !DILocation(line: 93, column: 8, scope: !666, inlinedAt: !734)
!737 = !DILocation(line: 93, column: 7, scope: !659, inlinedAt: !734)
!738 = !DILocation(line: 98, column: 26, scope: !673, inlinedAt: !734)
!739 = !DILocation(line: 0, scope: !673, inlinedAt: !734)
!740 = !DILocation(line: 96, column: 9, scope: !665, inlinedAt: !734)
!741 = !DILocation(line: 98, column: 12, scope: !673, inlinedAt: !734)
!742 = !DILocation(line: 98, column: 18, scope: !673, inlinedAt: !734)
!743 = !DILocation(line: 98, column: 16, scope: !673, inlinedAt: !734)
!744 = !DILocation(line: 98, column: 30, scope: !673, inlinedAt: !734)
!745 = !DILocation(line: 99, column: 14, scope: !665, inlinedAt: !734)
!746 = !DILocation(line: 99, column: 5, scope: !673, inlinedAt: !734)
!747 = !DILocation(line: 153, column: 11, scope: !718)
!748 = !DILocation(line: 154, column: 12, scope: !749)
!749 = distinct !DILexicalBlock(scope: !718, file: !3, line: 154, column: 11)
!750 = !DILocation(line: 154, column: 11, scope: !718)
!751 = !DILocation(line: 155, column: 9, scope: !749)
!752 = !DILocation(line: 156, column: 10, scope: !718)
!753 = !DILocation(line: 156, column: 16, scope: !718)
!754 = !DILocation(line: 160, column: 25, scope: !721)
!755 = !DILocation(line: 160, column: 19, scope: !721)
!756 = !DILocation(line: 161, column: 7, scope: !721)
!757 = !DILocation(line: 163, column: 3, scope: !719)
!758 = !DILocation(line: 164, column: 1, scope: !709)
