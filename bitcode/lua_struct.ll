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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_struct(%struct.lua_State*) local_unnamed_addr #0 !dbg !53 {
  tail call void @luaL_register(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* getelementptr inbounds ([4 x %struct.luaL_Reg], [4 x %struct.luaL_Reg]* @thislib, i64 0, i64 0)) #4, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
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
  br i1 %16, label %236, label %17, !dbg !141

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %21 = bitcast float* %6 to i8*
  %22 = bitcast double* %7 to i8*
  %23 = bitcast i64* %8 to i8*
  br label %24, !dbg !141

; <label>:24:                                     ; preds = %17, %229
  %25 = phi i8 [ %15, %17 ], [ %234, %229 ]
  %26 = phi i8* [ %11, %17 ], [ %233, %229 ]
  %27 = phi i32 [ 2, %17 ], [ %231, %229 ]
  %28 = phi i64 [ 0, %17 ], [ %232, %229 ]
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !142
  store i8* %29, i8** %4, align 8, !dbg !142, !tbaa !123
  %30 = sext i8 %25 to i32, !dbg !143
  %31 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %25, i8** nonnull %4) #6, !dbg !145
  %32 = icmp eq i64 %31, 0, !dbg !162
  %33 = icmp eq i8 %25, 99, !dbg !164
  %34 = or i1 %33, %32, !dbg !165
  br i1 %34, label %35, label %36, !dbg !165

; <label>:35:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  br label %62, !dbg !168

; <label>:36:                                     ; preds = %24
  %37 = load i32, i32* %14, align 4, !dbg !169, !tbaa !134
  %38 = sext i32 %37 to i64, !dbg !171
  %39 = icmp ugt i64 %31, %38, !dbg !172
  %40 = select i1 %39, i64 %38, i64 %31, !dbg !173
  %41 = add i64 %40, -1, !dbg !174
  %42 = and i64 %41, %28, !dbg !175
  %43 = sub i64 %40, %42, !dbg !176
  %44 = and i64 %43, %41, !dbg !177
  %45 = trunc i64 %44 to i32, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  %46 = shl i64 %44, 32, !dbg !179
  %47 = ashr exact i64 %46, 32, !dbg !179
  %48 = add i64 %28, %47, !dbg !180
  %49 = icmp sgt i32 %45, 0, !dbg !181
  br i1 %49, label %50, label %62, !dbg !168

; <label>:50:                                     ; preds = %36, %58
  %51 = phi i32 [ %52, %58 ], [ %45, %36 ]
  %52 = add nsw i32 %51, -1, !dbg !182
  %53 = load i8*, i8** %18, align 8, !dbg !183, !tbaa !184
  %54 = icmp ult i8* %53, %19, !dbg !183
  br i1 %54, label %58, label %55, !dbg !183

; <label>:55:                                     ; preds = %50
  %56 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !183
  %57 = load i8*, i8** %18, align 8, !dbg !183, !tbaa !184
  br label %58, !dbg !183

; <label>:58:                                     ; preds = %55, %50
  %59 = phi i8* [ %57, %55 ], [ %53, %50 ], !dbg !183
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !183
  store i8* %60, i8** %18, align 8, !dbg !183, !tbaa !184
  store i8 0, i8* %59, align 1, !dbg !183, !tbaa !139
  %61 = icmp sgt i32 %51, 1, !dbg !181
  br i1 %61, label %50, label %62, !dbg !168, !llvm.loop !186

; <label>:62:                                     ; preds = %58, %35, %36
  %63 = phi i64 [ %28, %35 ], [ %48, %36 ], [ %48, %58 ]
  switch i32 %30, label %228 [
    i32 98, label %64
    i32 66, label %64
    i32 104, label %64
    i32 72, label %64
    i32 108, label %64
    i32 76, label %64
    i32 84, label %64
    i32 105, label %64
    i32 73, label %64
    i32 120, label %134
    i32 102, label %143
    i32 100, label %175
    i32 99, label %206
    i32 115, label %206
  ], !dbg !187

; <label>:64:                                     ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62
  %65 = add nsw i32 %27, 1, !dbg !188
  %66 = load i32, i32* %13, align 4, !dbg !189, !tbaa !131
  %67 = trunc i64 %31 to i32, !dbg !190
  %68 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !196
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #5, !dbg !198
  %69 = fcmp olt double %68, 0.000000e+00, !dbg !199
  %70 = fptosi double %68 to i64, !dbg !201
  %71 = fptoui double %68 to i64, !dbg !203
  %72 = select i1 %69, i64 %70, i64 %71, !dbg !204
  %73 = icmp eq i32 %66, 1, !dbg !205
  %74 = icmp sgt i32 %67, 0, !dbg !206
  br i1 %73, label %79, label %75, !dbg !209

; <label>:75:                                     ; preds = %64
  br i1 %74, label %76, label %131, !dbg !211

; <label>:76:                                     ; preds = %75
  %77 = shl i64 %31, 32, !dbg !206
  %78 = ashr exact i64 %77, 32, !dbg !206
  br label %109, !dbg !206

; <label>:79:                                     ; preds = %64
  br i1 %74, label %80, label %131, !dbg !213

; <label>:80:                                     ; preds = %79
  %81 = and i64 %31, 4294967295
  %82 = add nsw i64 %81, -1, !dbg !215
  %83 = and i64 %31, 3, !dbg !215
  %84 = icmp ult i64 %82, 3, !dbg !215
  br i1 %84, label %117, label %85, !dbg !215

; <label>:85:                                     ; preds = %80
  %86 = sub nsw i64 %81, %83, !dbg !215
  br label %87, !dbg !215

; <label>:87:                                     ; preds = %87, %85
  %88 = phi i64 [ 0, %85 ], [ %106, %87 ]
  %89 = phi i64 [ %72, %85 ], [ %105, %87 ]
  %90 = phi i64 [ %86, %85 ], [ %107, %87 ]
  %91 = trunc i64 %89 to i8, !dbg !215
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %88, !dbg !218
  store i8 %91, i8* %92, align 4, !dbg !219, !tbaa !139
  %93 = lshr i64 %89, 8, !dbg !220
  %94 = or i64 %88, 1, !dbg !221
  %95 = trunc i64 %93 to i8, !dbg !215
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %94, !dbg !218
  store i8 %95, i8* %96, align 1, !dbg !219, !tbaa !139
  %97 = lshr i64 %89, 16, !dbg !220
  %98 = or i64 %88, 2, !dbg !221
  %99 = trunc i64 %97 to i8, !dbg !215
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %98, !dbg !218
  store i8 %99, i8* %100, align 2, !dbg !219, !tbaa !139
  %101 = lshr i64 %89, 24, !dbg !220
  %102 = or i64 %88, 3, !dbg !221
  %103 = trunc i64 %101 to i8, !dbg !215
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %102, !dbg !218
  store i8 %103, i8* %104, align 1, !dbg !219, !tbaa !139
  %105 = lshr i64 %89, 32, !dbg !220
  %106 = add nuw nsw i64 %88, 4, !dbg !221
  %107 = add i64 %90, -4, !dbg !213
  %108 = icmp eq i64 %107, 0, !dbg !213
  br i1 %108, label %117, label %87, !dbg !213, !llvm.loop !222

; <label>:109:                                    ; preds = %109, %76
  %110 = phi i64 [ %78, %76 ], [ %112, %109 ]
  %111 = phi i64 [ %72, %76 ], [ %115, %109 ]
  %112 = add nsw i64 %110, -1, !dbg !206
  %113 = trunc i64 %111 to i8, !dbg !225
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %112, !dbg !227
  store i8 %113, i8* %114, align 1, !dbg !228, !tbaa !139
  %115 = lshr i64 %111, 8, !dbg !229
  %116 = icmp sgt i64 %110, 1, !dbg !230
  br i1 %116, label %109, label %131, !dbg !211, !llvm.loop !231

; <label>:117:                                    ; preds = %87, %80
  %118 = phi i64 [ 0, %80 ], [ %106, %87 ]
  %119 = phi i64 [ %72, %80 ], [ %105, %87 ]
  %120 = icmp eq i64 %83, 0, !dbg !213
  br i1 %120, label %131, label %121, !dbg !213

; <label>:121:                                    ; preds = %117, %121
  %122 = phi i64 [ %128, %121 ], [ %118, %117 ]
  %123 = phi i64 [ %127, %121 ], [ %119, %117 ]
  %124 = phi i64 [ %129, %121 ], [ %83, %117 ]
  %125 = trunc i64 %123 to i8, !dbg !215
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %122, !dbg !218
  store i8 %125, i8* %126, align 1, !dbg !219, !tbaa !139
  %127 = lshr i64 %123, 8, !dbg !220
  %128 = add nuw nsw i64 %122, 1, !dbg !221
  %129 = add i64 %124, -1, !dbg !213
  %130 = icmp eq i64 %129, 0, !dbg !213
  br i1 %130, label %131, label %121, !dbg !213, !llvm.loop !234

; <label>:131:                                    ; preds = %109, %117, %121, %75, %79
  %132 = shl i64 %31, 32, !dbg !236
  %133 = ashr exact i64 %132, 32, !dbg !236
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %20, i64 %133) #4, !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #5, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  br label %229, !dbg !239

; <label>:134:                                    ; preds = %62
  %135 = load i8*, i8** %18, align 8, !dbg !240, !tbaa !184
  %136 = icmp ult i8* %135, %19, !dbg !240
  br i1 %136, label %140, label %137, !dbg !240

; <label>:137:                                    ; preds = %134
  %138 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !240
  %139 = load i8*, i8** %18, align 8, !dbg !240, !tbaa !184
  br label %140, !dbg !240

; <label>:140:                                    ; preds = %137, %134
  %141 = phi i8* [ %139, %137 ], [ %135, %134 ], !dbg !240
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !240
  store i8* %142, i8** %18, align 8, !dbg !240, !tbaa !184
  store i8 0, i8* %141, align 1, !dbg !240, !tbaa !139
  br label %229, !dbg !242

; <label>:143:                                    ; preds = %62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5, !dbg !243
  %144 = add nsw i32 %27, 1, !dbg !244
  %145 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !245
  %146 = fptrunc double %145 to float, !dbg !246
  store float %146, float* %6, align 4, !dbg !247, !tbaa !248
  %147 = trunc i64 %31 to i32, !dbg !250
  %148 = load i32, i32* %13, align 4, !dbg !251, !tbaa !131
  %149 = icmp ne i32 %148, 1, !dbg !268
  %150 = icmp sgt i32 %147, 1, !dbg !269
  %151 = and i1 %150, %149, !dbg !270
  br i1 %151, label %152, label %174, !dbg !270

; <label>:152:                                    ; preds = %143
  %153 = bitcast float %146 to i32, !dbg !270
  %154 = trunc i32 %153 to i8, !dbg !270
  %155 = shl i64 %31, 32, !dbg !272
  %156 = ashr exact i64 %155, 32, !dbg !272
  %157 = add nsw i64 %156, -1, !dbg !272
  %158 = getelementptr inbounds i8, i8* %21, i64 %157, !dbg !274
  %159 = load i8, i8* %158, align 1, !dbg !274, !tbaa !139
  store i8 %159, i8* %21, align 4, !dbg !275, !tbaa !139
  store i8 %154, i8* %158, align 1, !dbg !276, !tbaa !139
  %160 = icmp sgt i64 %155, 12884901888, !dbg !269
  br i1 %160, label %161, label %174, !dbg !277, !llvm.loop !278

; <label>:161:                                    ; preds = %152
  %162 = add nsw i64 %156, -2, !dbg !281
  br label %163, !dbg !277

; <label>:163:                                    ; preds = %161, %163
  %164 = phi i64 [ %162, %161 ], [ %172, %163 ]
  %165 = phi i64 [ 1, %161 ], [ %171, %163 ]
  %166 = getelementptr inbounds i8, i8* %21, i64 %165
  %167 = load i8, i8* %166, align 1, !dbg !272, !tbaa !139
  %168 = getelementptr inbounds i8, i8* %21, i64 %165, !dbg !272
  %169 = getelementptr inbounds i8, i8* %21, i64 %164, !dbg !274
  %170 = load i8, i8* %169, align 1, !dbg !274, !tbaa !139
  %171 = add nuw nsw i64 %165, 1, !dbg !282
  store i8 %170, i8* %168, align 1, !dbg !275, !tbaa !139
  store i8 %167, i8* %169, align 1, !dbg !276, !tbaa !139
  %172 = add i64 %164, -1, !dbg !281
  %173 = icmp slt i64 %171, %172, !dbg !269
  br i1 %173, label %163, label %174, !dbg !277, !llvm.loop !278

; <label>:174:                                    ; preds = %163, %152, %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %21, i64 %31) #4, !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5, !dbg !285
  br label %229

; <label>:175:                                    ; preds = %62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !286
  %176 = add nsw i32 %27, 1, !dbg !287
  %177 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !288
  store double %177, double* %7, align 8, !dbg !289, !tbaa !290
  %178 = trunc i64 %31 to i32, !dbg !292
  %179 = load i32, i32* %13, align 4, !dbg !293, !tbaa !131
  %180 = icmp ne i32 %179, 1, !dbg !298
  %181 = icmp sgt i32 %178, 1, !dbg !299
  %182 = and i1 %181, %180, !dbg !300
  br i1 %182, label %183, label %205, !dbg !300

; <label>:183:                                    ; preds = %175
  %184 = bitcast double %177 to i64, !dbg !300
  %185 = trunc i64 %184 to i8, !dbg !300
  %186 = shl i64 %31, 32, !dbg !302
  %187 = ashr exact i64 %186, 32, !dbg !302
  %188 = add nsw i64 %187, -1, !dbg !302
  %189 = getelementptr inbounds i8, i8* %22, i64 %188, !dbg !304
  %190 = load i8, i8* %189, align 1, !dbg !304, !tbaa !139
  store i8 %190, i8* %22, align 8, !dbg !305, !tbaa !139
  store i8 %185, i8* %189, align 1, !dbg !306, !tbaa !139
  %191 = icmp sgt i64 %186, 12884901888, !dbg !299
  br i1 %191, label %192, label %205, !dbg !307, !llvm.loop !278

; <label>:192:                                    ; preds = %183
  %193 = add nsw i64 %187, -2, !dbg !308
  br label %194, !dbg !307

; <label>:194:                                    ; preds = %192, %194
  %195 = phi i64 [ %193, %192 ], [ %203, %194 ]
  %196 = phi i64 [ 1, %192 ], [ %202, %194 ]
  %197 = getelementptr inbounds i8, i8* %22, i64 %196
  %198 = load i8, i8* %197, align 1, !dbg !302, !tbaa !139
  %199 = getelementptr inbounds i8, i8* %22, i64 %196, !dbg !302
  %200 = getelementptr inbounds i8, i8* %22, i64 %195, !dbg !304
  %201 = load i8, i8* %200, align 1, !dbg !304, !tbaa !139
  %202 = add nuw nsw i64 %196, 1, !dbg !309
  store i8 %201, i8* %199, align 1, !dbg !305, !tbaa !139
  store i8 %198, i8* %200, align 1, !dbg !306, !tbaa !139
  %203 = add i64 %195, -1, !dbg !308
  %204 = icmp slt i64 %202, %203, !dbg !299
  br i1 %204, label %194, label %205, !dbg !307, !llvm.loop !278

; <label>:205:                                    ; preds = %194, %183, %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %22, i64 %31) #4, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !312
  br label %229

; <label>:206:                                    ; preds = %62, %62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !313
  %207 = add nsw i32 %27, 1, !dbg !314
  %208 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %27, i64* nonnull %8) #4, !dbg !316
  %209 = load i64, i64* %8, align 8, !dbg !318
  %210 = select i1 %32, i64 %209, i64 %31, !dbg !320
  %211 = icmp ult i64 %209, %210, !dbg !321
  br i1 %211, label %212, label %214, !dbg !321

; <label>:212:                                    ; preds = %206
  %213 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !321
  br label %214, !dbg !321

; <label>:214:                                    ; preds = %206, %212
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* %208, i64 %210) #4, !dbg !322
  %215 = icmp eq i8 %25, 115, !dbg !323
  br i1 %215, label %216, label %226, !dbg !325

; <label>:216:                                    ; preds = %214
  %217 = load i8*, i8** %18, align 8, !dbg !326, !tbaa !184
  %218 = icmp ult i8* %217, %19, !dbg !326
  br i1 %218, label %222, label %219, !dbg !326

; <label>:219:                                    ; preds = %216
  %220 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !326
  %221 = load i8*, i8** %18, align 8, !dbg !326, !tbaa !184
  br label %222, !dbg !326

; <label>:222:                                    ; preds = %219, %216
  %223 = phi i8* [ %221, %219 ], [ %217, %216 ], !dbg !326
  %224 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !326
  store i8* %224, i8** %18, align 8, !dbg !326, !tbaa !184
  store i8 0, i8* %223, align 1, !dbg !326, !tbaa !139
  %225 = add i64 %210, 1, !dbg !328
  br label %226, !dbg !329

; <label>:226:                                    ; preds = %222, %214
  %227 = phi i64 [ %225, %222 ], [ %210, %214 ], !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !331
  br label %229

; <label>:228:                                    ; preds = %62
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %30, i8** nonnull %4, %struct.Header* nonnull %5) #6, !dbg !332
  br label %229, !dbg !333

; <label>:229:                                    ; preds = %228, %226, %205, %174, %140, %131
  %230 = phi i64 [ %31, %228 ], [ %227, %226 ], [ %31, %205 ], [ %31, %174 ], [ %31, %140 ], [ %31, %131 ], !dbg !334
  %231 = phi i32 [ %27, %228 ], [ %207, %226 ], [ %176, %205 ], [ %144, %174 ], [ %27, %140 ], [ %65, %131 ], !dbg !335
  %232 = add i64 %63, %230, !dbg !336
  %233 = load i8*, i8** %4, align 8, !dbg !337, !tbaa !123
  %234 = load i8, i8* %233, align 1, !dbg !138, !tbaa !139
  %235 = icmp eq i8 %234, 0, !dbg !140
  br i1 %235, label %236, label %24, !dbg !141, !llvm.loop !338

; <label>:236:                                    ; preds = %229, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !340
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !341
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !341
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %9) #5, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  ret i32 1, !dbg !342
}

; Function Attrs: noredzone nounwind
define internal i32 @b_unpack(%struct.lua_State*) #0 !dbg !343 {
  %2 = alloca %struct.Header, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = bitcast %struct.Header* %2 to i8*, !dbg !366
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !366
  %8 = bitcast i8** %3 to i8*, !dbg !367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !367
  %9 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !368
  store i8* %9, i8** %3, align 8, !dbg !369, !tbaa !123
  %10 = bitcast i64* %4 to i8*, !dbg !370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !370
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #4, !dbg !372
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !374
  %13 = icmp eq i64 %12, 0, !dbg !376
  br i1 %13, label %14, label %16, !dbg !376

; <label>:14:                                     ; preds = %1
  %15 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !376
  br label %16, !dbg !376

; <label>:16:                                     ; preds = %1, %14
  %17 = add i64 %12, -1, !dbg !377
  %18 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0, !dbg !379
  store i32 1, i32* %18, align 4, !dbg !379, !tbaa !131
  %19 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1, !dbg !379
  store i32 1, i32* %19, align 4, !dbg !379, !tbaa !134
  %20 = load i8, i8* %9, align 1, !dbg !380, !tbaa !139
  %21 = icmp eq i8 %20, 0, !dbg !381
  br i1 %21, label %240, label %22, !dbg !381

; <label>:22:                                     ; preds = %16
  %23 = bitcast float* %5 to i8*
  %24 = bitcast double* %6 to i8*
  br label %25, !dbg !381

; <label>:25:                                     ; preds = %22, %233
  %26 = phi i8 [ %20, %22 ], [ %238, %233 ]
  %27 = phi i8* [ %9, %22 ], [ %237, %233 ]
  %28 = phi i64 [ %17, %22 ], [ %236, %233 ]
  %29 = phi i32 [ 0, %22 ], [ %235, %233 ]
  %30 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !382
  store i8* %30, i8** %3, align 8, !dbg !382, !tbaa !123
  %31 = sext i8 %26 to i32, !dbg !383
  %32 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %26, i8** nonnull %3) #6, !dbg !385
  %33 = icmp eq i64 %32, 0, !dbg !393
  %34 = icmp eq i8 %26, 99, !dbg !394
  %35 = or i1 %34, %33, !dbg !395
  br i1 %35, label %45, label %36, !dbg !395

; <label>:36:                                     ; preds = %25
  %37 = load i32, i32* %19, align 4, !dbg !396, !tbaa !134
  %38 = sext i32 %37 to i64, !dbg !397
  %39 = icmp ugt i64 %32, %38, !dbg !398
  %40 = select i1 %39, i64 %38, i64 %32, !dbg !399
  %41 = add i64 %40, -1, !dbg !400
  %42 = and i64 %41, %28, !dbg !401
  %43 = sub i64 %40, %42, !dbg !402
  %44 = and i64 %43, %41, !dbg !403
  br label %45, !dbg !404

; <label>:45:                                     ; preds = %25, %36
  %46 = phi i64 [ %44, %36 ], [ 0, %25 ], !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %47 = shl i64 %46, 32, !dbg !407
  %48 = ashr exact i64 %47, 32, !dbg !407
  %49 = add i64 %48, %28, !dbg !408
  %50 = load i64, i64* %4, align 8, !dbg !409, !tbaa !410
  %51 = icmp ult i64 %50, %32, !dbg !409
  %52 = sub i64 %50, %32, !dbg !409
  %53 = icmp ugt i64 %49, %52, !dbg !409
  %54 = or i1 %51, %53, !dbg !409
  br i1 %54, label %55, label %57, !dbg !409

; <label>:55:                                     ; preds = %45
  %56 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !409
  br label %57, !dbg !409

; <label>:57:                                     ; preds = %45, %55
  call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !412
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
  ], !dbg !413

; <label>:58:                                     ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57
  %59 = call i8* @__locale_ctype_ptr() #4, !dbg !414
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !414
  %61 = sext i8 %26 to i64, !dbg !414
  %62 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !414
  %63 = load i8, i8* %62, align 1, !dbg !414, !tbaa !139
  %64 = and i8 %63, 3, !dbg !414
  %65 = icmp eq i8 %64, 2, !dbg !414
  %66 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !415
  %67 = load i32, i32* %18, align 4, !dbg !416, !tbaa !131
  %68 = trunc i64 %32 to i32, !dbg !417
  %69 = icmp eq i32 %67, 0, !dbg !436
  %70 = icmp sgt i32 %68, 0, !dbg !438
  br i1 %69, label %75, label %71, !dbg !442

; <label>:71:                                     ; preds = %58
  br i1 %70, label %72, label %140, !dbg !444

; <label>:72:                                     ; preds = %71
  %73 = shl i64 %32, 32, !dbg !438
  %74 = ashr exact i64 %73, 32, !dbg !438
  br label %113, !dbg !438

; <label>:75:                                     ; preds = %58
  br i1 %70, label %76, label %140, !dbg !445

; <label>:76:                                     ; preds = %75
  %77 = and i64 %32, 4294967295
  %78 = add nsw i64 %77, -1, !dbg !448
  %79 = and i64 %32, 3, !dbg !448
  %80 = icmp ult i64 %78, 3, !dbg !448
  br i1 %80, label %123, label %81, !dbg !448

; <label>:81:                                     ; preds = %76
  %82 = sub nsw i64 %77, %79, !dbg !448
  br label %83, !dbg !448

; <label>:83:                                     ; preds = %83, %81
  %84 = phi i64 [ 0, %81 ], [ %110, %83 ]
  %85 = phi i64 [ 0, %81 ], [ %109, %83 ]
  %86 = phi i64 [ %82, %81 ], [ %111, %83 ]
  %87 = shl i64 %85, 8, !dbg !448
  %88 = getelementptr inbounds i8, i8* %66, i64 %84, !dbg !451
  %89 = load i8, i8* %88, align 1, !dbg !451, !tbaa !139
  %90 = zext i8 %89 to i64, !dbg !452
  %91 = or i64 %87, %90, !dbg !453
  %92 = or i64 %84, 1, !dbg !454
  %93 = shl i64 %91, 8, !dbg !448
  %94 = getelementptr inbounds i8, i8* %66, i64 %92, !dbg !451
  %95 = load i8, i8* %94, align 1, !dbg !451, !tbaa !139
  %96 = zext i8 %95 to i64, !dbg !452
  %97 = or i64 %93, %96, !dbg !453
  %98 = or i64 %84, 2, !dbg !454
  %99 = shl i64 %97, 8, !dbg !448
  %100 = getelementptr inbounds i8, i8* %66, i64 %98, !dbg !451
  %101 = load i8, i8* %100, align 1, !dbg !451, !tbaa !139
  %102 = zext i8 %101 to i64, !dbg !452
  %103 = or i64 %99, %102, !dbg !453
  %104 = or i64 %84, 3, !dbg !454
  %105 = shl i64 %103, 8, !dbg !448
  %106 = getelementptr inbounds i8, i8* %66, i64 %104, !dbg !451
  %107 = load i8, i8* %106, align 1, !dbg !451, !tbaa !139
  %108 = zext i8 %107 to i64, !dbg !452
  %109 = or i64 %105, %108, !dbg !453
  %110 = add nuw nsw i64 %84, 4, !dbg !454
  %111 = add i64 %86, -4, !dbg !445
  %112 = icmp eq i64 %111, 0, !dbg !445
  br i1 %112, label %123, label %83, !dbg !445, !llvm.loop !455

; <label>:113:                                    ; preds = %113, %72
  %114 = phi i64 [ %74, %72 ], [ %116, %113 ]
  %115 = phi i64 [ 0, %72 ], [ %121, %113 ]
  %116 = add nsw i64 %114, -1, !dbg !438
  %117 = shl i64 %115, 8, !dbg !458
  %118 = getelementptr inbounds i8, i8* %66, i64 %116, !dbg !460
  %119 = load i8, i8* %118, align 1, !dbg !460, !tbaa !139
  %120 = zext i8 %119 to i64, !dbg !461
  %121 = or i64 %117, %120, !dbg !462
  %122 = icmp sgt i64 %114, 1, !dbg !463
  br i1 %122, label %113, label %140, !dbg !444, !llvm.loop !464

; <label>:123:                                    ; preds = %83, %76
  %124 = phi i64 [ undef, %76 ], [ %109, %83 ]
  %125 = phi i64 [ 0, %76 ], [ %110, %83 ]
  %126 = phi i64 [ 0, %76 ], [ %109, %83 ]
  %127 = icmp eq i64 %79, 0, !dbg !445
  br i1 %127, label %140, label %128, !dbg !445

; <label>:128:                                    ; preds = %123, %128
  %129 = phi i64 [ %137, %128 ], [ %125, %123 ]
  %130 = phi i64 [ %136, %128 ], [ %126, %123 ]
  %131 = phi i64 [ %138, %128 ], [ %79, %123 ]
  %132 = shl i64 %130, 8, !dbg !448
  %133 = getelementptr inbounds i8, i8* %66, i64 %129, !dbg !451
  %134 = load i8, i8* %133, align 1, !dbg !451, !tbaa !139
  %135 = zext i8 %134 to i64, !dbg !452
  %136 = or i64 %132, %135, !dbg !453
  %137 = add nuw nsw i64 %129, 1, !dbg !454
  %138 = add i64 %131, -1, !dbg !445
  %139 = icmp eq i64 %138, 0, !dbg !445
  br i1 %139, label %140, label %128, !dbg !445, !llvm.loop !467

; <label>:140:                                    ; preds = %113, %123, %128, %75, %71
  %141 = phi i64 [ 0, %75 ], [ 0, %71 ], [ %124, %123 ], [ %136, %128 ], [ %121, %113 ], !dbg !435
  br i1 %65, label %144, label %142, !dbg !468

; <label>:142:                                    ; preds = %140
  %143 = uitofp i64 %141 to double, !dbg !469
  br label %154, !dbg !470

; <label>:144:                                    ; preds = %140
  %145 = shl i64 %32, 3, !dbg !471
  %146 = add i64 %145, 4294967295, !dbg !472
  %147 = and i64 %146, 4294967295, !dbg !473
  %148 = shl i64 -1, %147, !dbg !473
  %149 = and i64 %141, %148, !dbg !475
  %150 = icmp eq i64 %149, 0, !dbg !475
  %151 = select i1 %150, i64 0, i64 %148, !dbg !477
  %152 = or i64 %151, %141, !dbg !477
  %153 = sitofp i64 %152 to double, !dbg !478
  br label %154

; <label>:154:                                    ; preds = %142, %144
  %155 = phi double [ %153, %144 ], [ %143, %142 ], !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  call void @lua_pushnumber(%struct.lua_State* %0, double %155) #4, !dbg !482
  %156 = add nsw i32 %29, 1, !dbg !483
  br label %233

; <label>:157:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5, !dbg !484
  %158 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !485
  %159 = call i8* @memcpy(i8* nonnull %23, i8* %158, i64 %32) #4, !dbg !486
  %160 = load i32, i32* %18, align 4, !dbg !487, !tbaa !131
  %161 = icmp eq i32 %160, 1, !dbg !492
  br i1 %161, label %172, label %162, !dbg !494

; <label>:162:                                    ; preds = %157, %162
  %163 = phi i64 [ %169, %162 ], [ 0, %157 ]
  %164 = phi i64 [ %170, %162 ], [ 3, %157 ]
  %165 = getelementptr inbounds i8, i8* %23, i64 %163, !dbg !495
  %166 = load i8, i8* %165, align 1, !dbg !495, !tbaa !139
  %167 = getelementptr inbounds i8, i8* %23, i64 %164, !dbg !497
  %168 = load i8, i8* %167, align 1, !dbg !497, !tbaa !139
  %169 = add nuw nsw i64 %163, 1, !dbg !498
  store i8 %168, i8* %165, align 1, !dbg !499, !tbaa !139
  store i8 %166, i8* %167, align 1, !dbg !500, !tbaa !139
  %170 = add nsw i64 %164, -1, !dbg !501
  %171 = icmp slt i64 %169, %170, !dbg !502
  br i1 %171, label %162, label %172, !dbg !503, !llvm.loop !278

; <label>:172:                                    ; preds = %162, %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  %173 = load float, float* %5, align 4, !dbg !505, !tbaa !248
  %174 = fpext float %173 to double, !dbg !505
  call void @lua_pushnumber(%struct.lua_State* %0, double %174) #4, !dbg !507
  %175 = add nsw i32 %29, 1, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5, !dbg !509
  br label %233

; <label>:176:                                    ; preds = %57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #5, !dbg !510
  %177 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !511
  %178 = call i8* @memcpy(i8* nonnull %24, i8* %177, i64 %32) #4, !dbg !512
  %179 = load i32, i32* %18, align 4, !dbg !513, !tbaa !131
  %180 = icmp eq i32 %179, 1, !dbg !518
  br i1 %180, label %191, label %181, !dbg !520

; <label>:181:                                    ; preds = %176, %181
  %182 = phi i64 [ %188, %181 ], [ 0, %176 ]
  %183 = phi i64 [ %189, %181 ], [ 7, %176 ]
  %184 = getelementptr inbounds i8, i8* %24, i64 %182, !dbg !521
  %185 = load i8, i8* %184, align 1, !dbg !521, !tbaa !139
  %186 = getelementptr inbounds i8, i8* %24, i64 %183, !dbg !523
  %187 = load i8, i8* %186, align 1, !dbg !523, !tbaa !139
  %188 = add nuw nsw i64 %182, 1, !dbg !524
  store i8 %187, i8* %184, align 1, !dbg !525, !tbaa !139
  store i8 %185, i8* %186, align 1, !dbg !526, !tbaa !139
  %189 = add nsw i64 %183, -1, !dbg !527
  %190 = icmp slt i64 %188, %189, !dbg !528
  br i1 %190, label %181, label %191, !dbg !529, !llvm.loop !278

; <label>:191:                                    ; preds = %181, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  %192 = load double, double* %6, align 8, !dbg !531, !tbaa !290
  call void @lua_pushnumber(%struct.lua_State* %0, double %192) #4, !dbg !533
  %193 = add nsw i32 %29, 1, !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #5, !dbg !535
  br label %233

; <label>:194:                                    ; preds = %57
  br i1 %33, label %195, label %213, !dbg !536

; <label>:195:                                    ; preds = %194
  %196 = icmp eq i32 %29, 0, !dbg !538
  br i1 %196, label %200, label %197, !dbg !542

; <label>:197:                                    ; preds = %195
  %198 = call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #4, !dbg !543
  %199 = icmp eq i32 %198, 0, !dbg !543
  br i1 %199, label %200, label %202, !dbg !544

; <label>:200:                                    ; preds = %197, %195
  %201 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !545
  br label %202, !dbg !545

; <label>:202:                                    ; preds = %197, %200
  %203 = call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !546
  %204 = fptoui double %203 to i64, !dbg !546
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !547
  %205 = add nsw i32 %29, -1, !dbg !548
  %206 = load i64, i64* %4, align 8, !dbg !549, !tbaa !410
  %207 = icmp ult i64 %206, %204, !dbg !549
  %208 = sub i64 %206, %204, !dbg !549
  %209 = icmp ugt i64 %49, %208, !dbg !549
  %210 = or i1 %207, %209, !dbg !549
  br i1 %210, label %211, label %213, !dbg !549

; <label>:211:                                    ; preds = %202
  %212 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !549
  br label %213, !dbg !549

; <label>:213:                                    ; preds = %211, %202, %194
  %214 = phi i64 [ %32, %194 ], [ %204, %202 ], [ %204, %211 ], !dbg !550
  %215 = phi i32 [ %29, %194 ], [ %205, %202 ], [ %205, %211 ], !dbg !551
  %216 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !552
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %216, i64 %214) #4, !dbg !553
  %217 = add nsw i32 %215, 1, !dbg !554
  br label %233, !dbg !555

; <label>:218:                                    ; preds = %57
  %219 = getelementptr inbounds i8, i8* %11, i64 %49, !dbg !556
  %220 = load i64, i64* %4, align 8, !dbg !557, !tbaa !410
  %221 = sub i64 %220, %49, !dbg !558
  %222 = call i8* @memchr(i8* %219, i32 0, i64 %221) #4, !dbg !559
  %223 = icmp eq i8* %222, null, !dbg !561
  br i1 %223, label %224, label %226, !dbg !563

; <label>:224:                                    ; preds = %218
  %225 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !564
  br label %226, !dbg !564

; <label>:226:                                    ; preds = %224, %218
  %227 = ptrtoint i8* %222 to i64, !dbg !565
  %228 = ptrtoint i8* %219 to i64, !dbg !565
  %229 = sub i64 %227, %228, !dbg !565
  %230 = add nsw i64 %229, 1, !dbg !566
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %219, i64 %229) #4, !dbg !567
  %231 = add nsw i32 %29, 1, !dbg !568
  br label %233

; <label>:232:                                    ; preds = %57
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %31, i8** nonnull %3, %struct.Header* nonnull %2) #6, !dbg !569
  br label %233, !dbg !570

; <label>:233:                                    ; preds = %57, %232, %226, %213, %191, %172, %154
  %234 = phi i64 [ %32, %232 ], [ %230, %226 ], [ %214, %213 ], [ %32, %191 ], [ %32, %172 ], [ %32, %57 ], [ %32, %154 ], !dbg !550
  %235 = phi i32 [ %29, %232 ], [ %231, %226 ], [ %217, %213 ], [ %193, %191 ], [ %175, %172 ], [ %29, %57 ], [ %156, %154 ], !dbg !571
  %236 = add i64 %234, %49, !dbg !572
  %237 = load i8*, i8** %3, align 8, !dbg !573, !tbaa !123
  %238 = load i8, i8* %237, align 1, !dbg !380, !tbaa !139
  %239 = icmp eq i8 %238, 0, !dbg !381
  br i1 %239, label %240, label %25, !dbg !381, !llvm.loop !574

; <label>:240:                                    ; preds = %233, %16
  %241 = phi i32 [ 0, %16 ], [ %235, %233 ], !dbg !378
  %242 = phi i64 [ %17, %16 ], [ %236, %233 ], !dbg !550
  %243 = add i64 %242, 1, !dbg !576
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %243) #4, !dbg !577
  %244 = add nsw i32 %241, 1, !dbg !578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !579
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !579
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  ret i32 %244, !dbg !580
}

; Function Attrs: noredzone nounwind
define internal i32 @b_size(%struct.lua_State*) #0 !dbg !581 {
  %2 = alloca %struct.Header, align 4
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.Header* %2 to i8*, !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !591
  %5 = bitcast i8** %3 to i8*, !dbg !592
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !592
  %6 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !593
  store i8* %6, i8** %3, align 8, !dbg !594, !tbaa !123
  %7 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0, !dbg !596
  store i32 1, i32* %7, align 4, !dbg !596, !tbaa !131
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1, !dbg !596
  store i32 1, i32* %8, align 4, !dbg !596, !tbaa !134
  %9 = load i8, i8* %6, align 1, !dbg !597, !tbaa !139
  %10 = icmp eq i8 %9, 0, !dbg !598
  br i1 %10, label %56, label %11, !dbg !598

; <label>:11:                                     ; preds = %1, %50
  %12 = phi i8 [ %54, %50 ], [ %9, %1 ]
  %13 = phi i8* [ %53, %50 ], [ %6, %1 ]
  %14 = phi i64 [ %52, %50 ], [ 0, %1 ]
  %15 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !599
  store i8* %15, i8** %3, align 8, !dbg !599, !tbaa !123
  %16 = sext i8 %12 to i32, !dbg !600
  %17 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %12, i8** nonnull %3) #6, !dbg !602
  %18 = icmp eq i64 %17, 0, !dbg !610
  %19 = icmp eq i8 %12, 99, !dbg !611
  %20 = or i1 %19, %18, !dbg !612
  br i1 %20, label %30, label %21, !dbg !612

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %8, align 4, !dbg !613, !tbaa !134
  %23 = sext i32 %22 to i64, !dbg !614
  %24 = icmp ugt i64 %17, %23, !dbg !615
  %25 = select i1 %24, i64 %23, i64 %17, !dbg !616
  %26 = add i64 %25, -1, !dbg !617
  %27 = and i64 %26, %14, !dbg !618
  %28 = sub i64 %25, %27, !dbg !619
  %29 = and i64 %28, %26, !dbg !620
  br label %30, !dbg !621

; <label>:30:                                     ; preds = %11, %21
  %31 = phi i64 [ %29, %21 ], [ 0, %11 ], !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %32 = shl i64 %31, 32, !dbg !624
  %33 = ashr exact i64 %32, 32, !dbg !624
  %34 = icmp eq i8 %12, 115, !dbg !625
  br i1 %34, label %35, label %37, !dbg !627

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !628
  br label %41, !dbg !628

; <label>:37:                                     ; preds = %30
  %38 = and i1 %19, %18, !dbg !629
  br i1 %38, label %39, label %41, !dbg !629

; <label>:39:                                     ; preds = %37
  %40 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !631
  br label %41, !dbg !631

; <label>:41:                                     ; preds = %37, %39, %35
  %42 = tail call i8* @__locale_ctype_ptr() #4, !dbg !632
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !632
  %44 = sext i8 %12 to i64, !dbg !632
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !632
  %46 = load i8, i8* %45, align 1, !dbg !632, !tbaa !139
  %47 = and i8 %46, 7, !dbg !632
  %48 = icmp eq i8 %47, 0, !dbg !632
  br i1 %48, label %49, label %50, !dbg !634

; <label>:49:                                     ; preds = %41
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %16, i8** nonnull %3, %struct.Header* nonnull %2) #6, !dbg !635
  br label %50, !dbg !635

; <label>:50:                                     ; preds = %41, %49
  %51 = add i64 %17, %14, !dbg !636
  %52 = add i64 %51, %33, !dbg !637
  %53 = load i8*, i8** %3, align 8, !dbg !638, !tbaa !123
  %54 = load i8, i8* %53, align 1, !dbg !597, !tbaa !139
  %55 = icmp eq i8 %54, 0, !dbg !598
  br i1 %55, label %56, label %11, !dbg !598, !llvm.loop !639

; <label>:56:                                     ; preds = %50, %1
  %57 = phi i64 [ 0, %1 ], [ %52, %50 ], !dbg !641
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %57) #4, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  ret i32 1, !dbg !644
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
define internal fastcc i64 @optsize(%struct.lua_State*, i8 signext, i8** nocapture) unnamed_addr #0 !dbg !645 {
  %4 = sext i8 %1 to i32, !dbg !659
  switch i32 %4, label %78 [
    i32 66, label %79
    i32 98, label %79
    i32 72, label %5
    i32 104, label %5
    i32 76, label %6
    i32 108, label %6
    i32 84, label %7
    i32 102, label %8
    i32 100, label %9
    i32 120, label %79
    i32 99, label %10
    i32 105, label %42
    i32 73, label %42
  ], !dbg !660

; <label>:5:                                      ; preds = %3, %3
  br label %79, !dbg !661

; <label>:6:                                      ; preds = %3, %3
  br label %79, !dbg !662

; <label>:7:                                      ; preds = %3
  br label %79, !dbg !663

; <label>:8:                                      ; preds = %3
  br label %79, !dbg !664

; <label>:9:                                      ; preds = %3
  br label %79, !dbg !665

; <label>:10:                                     ; preds = %3
  %11 = tail call i8* @__locale_ctype_ptr() #4, !dbg !678
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !678
  %13 = load i8*, i8** %2, align 8, !dbg !678, !tbaa !123
  %14 = load i8, i8* %13, align 1, !dbg !678, !tbaa !139
  %15 = sext i8 %14 to i64, !dbg !678
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !678
  %17 = load i8, i8* %16, align 1, !dbg !678, !tbaa !139
  %18 = and i8 %17, 4, !dbg !678
  %19 = icmp eq i8 %18, 0, !dbg !678
  br i1 %19, label %40, label %20, !dbg !679

; <label>:20:                                     ; preds = %10, %20
  %21 = phi i8* [ %31, %20 ], [ %13, %10 ], !dbg !680
  %22 = phi i32 [ %28, %20 ], [ 0, %10 ], !dbg !682
  %23 = mul nsw i32 %22, 10, !dbg !684
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !680
  store i8* %24, i8** %2, align 8, !dbg !680, !tbaa !123
  %25 = load i8, i8* %21, align 1, !dbg !685, !tbaa !139
  %26 = sext i8 %25 to i32, !dbg !685
  %27 = add i32 %23, -48, !dbg !686
  %28 = add i32 %27, %26, !dbg !687
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !688
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !688
  %31 = load i8*, i8** %2, align 8, !dbg !688, !tbaa !123
  %32 = load i8, i8* %31, align 1, !dbg !688, !tbaa !139
  %33 = sext i8 %32 to i64, !dbg !688
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !688
  %35 = load i8, i8* %34, align 1, !dbg !688, !tbaa !139
  %36 = and i8 %35, 4, !dbg !688
  %37 = icmp eq i8 %36, 0, !dbg !689
  br i1 %37, label %38, label %20, !dbg !689, !llvm.loop !690

; <label>:38:                                     ; preds = %20
  %39 = sext i32 %28 to i64, !dbg !693
  br label %40, !dbg !693

; <label>:40:                                     ; preds = %38, %10
  %41 = phi i64 [ 1, %10 ], [ %39, %38 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %79, !dbg !694

; <label>:42:                                     ; preds = %3, %3
  %43 = tail call i8* @__locale_ctype_ptr() #4, !dbg !698
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !698
  %45 = load i8*, i8** %2, align 8, !dbg !698, !tbaa !123
  %46 = load i8, i8* %45, align 1, !dbg !698, !tbaa !139
  %47 = sext i8 %46 to i64, !dbg !698
  %48 = getelementptr inbounds i8, i8* %44, i64 %47, !dbg !698
  %49 = load i8, i8* %48, align 1, !dbg !698, !tbaa !139
  %50 = and i8 %49, 4, !dbg !698
  %51 = icmp eq i8 %50, 0, !dbg !698
  br i1 %51, label %52, label %53, !dbg !699

; <label>:52:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br label %75, !dbg !702

; <label>:53:                                     ; preds = %42, %53
  %54 = phi i8* [ %64, %53 ], [ %45, %42 ], !dbg !703
  %55 = phi i32 [ %61, %53 ], [ 0, %42 ], !dbg !704
  %56 = mul nsw i32 %55, 10, !dbg !706
  %57 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !703
  store i8* %57, i8** %2, align 8, !dbg !703, !tbaa !123
  %58 = load i8, i8* %54, align 1, !dbg !707, !tbaa !139
  %59 = sext i8 %58 to i32, !dbg !707
  %60 = add i32 %56, -48, !dbg !708
  %61 = add i32 %60, %59, !dbg !709
  %62 = tail call i8* @__locale_ctype_ptr() #4, !dbg !710
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !710
  %64 = load i8*, i8** %2, align 8, !dbg !710, !tbaa !123
  %65 = load i8, i8* %64, align 1, !dbg !710, !tbaa !139
  %66 = sext i8 %65 to i64, !dbg !710
  %67 = getelementptr inbounds i8, i8* %63, i64 %66, !dbg !710
  %68 = load i8, i8* %67, align 1, !dbg !710, !tbaa !139
  %69 = and i8 %68, 4, !dbg !710
  %70 = icmp eq i8 %69, 0, !dbg !711
  br i1 %70, label %71, label %53, !dbg !711, !llvm.loop !690

; <label>:71:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  %72 = icmp sgt i32 %61, 32, !dbg !712
  br i1 %72, label %73, label %75, !dbg !702

; <label>:73:                                     ; preds = %71
  %74 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 32) #4, !dbg !714
  br label %75, !dbg !714

; <label>:75:                                     ; preds = %52, %73, %71
  %76 = phi i32 [ 4, %52 ], [ %61, %73 ], [ %61, %71 ]
  %77 = sext i32 %76 to i64, !dbg !715
  br label %79

; <label>:78:                                     ; preds = %3
  br label %79, !dbg !716

; <label>:79:                                     ; preds = %3, %3, %3, %78, %75, %40, %9, %8, %7, %6, %5
  %80 = phi i64 [ 0, %78 ], [ %77, %75 ], [ %41, %40 ], [ 8, %9 ], [ 4, %8 ], [ 8, %7 ], [ 8, %6 ], [ 2, %5 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  ret i64 %80, !dbg !718
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
define internal fastcc void @controloptions(%struct.lua_State*, i32, i8** nocapture, %struct.Header* nocapture) unnamed_addr #0 !dbg !719 {
  switch i32 %1, label %51 [
    i32 32, label %54
    i32 62, label %5
    i32 60, label %7
    i32 33, label %9
  ], !dbg !736

; <label>:5:                                      ; preds = %4
  %6 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0, !dbg !737
  store i32 0, i32* %6, align 4, !dbg !738, !tbaa !131
  br label %54, !dbg !739

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0, !dbg !740
  store i32 1, i32* %8, align 4, !dbg !741, !tbaa !131
  br label %54, !dbg !742

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @__locale_ctype_ptr() #4, !dbg !746
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !746
  %12 = load i8*, i8** %2, align 8, !dbg !746, !tbaa !123
  %13 = load i8, i8* %12, align 1, !dbg !746, !tbaa !139
  %14 = sext i8 %13 to i64, !dbg !746
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !746
  %16 = load i8, i8* %15, align 1, !dbg !746, !tbaa !139
  %17 = and i8 %16, 4, !dbg !746
  %18 = icmp eq i8 %17, 0, !dbg !746
  br i1 %18, label %19, label %20, !dbg !747

; <label>:19:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br label %40, !dbg !750

; <label>:20:                                     ; preds = %9, %20
  %21 = phi i8* [ %31, %20 ], [ %12, %9 ], !dbg !752
  %22 = phi i32 [ %28, %20 ], [ 0, %9 ], !dbg !753
  %23 = mul nsw i32 %22, 10, !dbg !755
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !752
  store i8* %24, i8** %2, align 8, !dbg !752, !tbaa !123
  %25 = load i8, i8* %21, align 1, !dbg !756, !tbaa !139
  %26 = sext i8 %25 to i32, !dbg !756
  %27 = add i32 %23, -48, !dbg !757
  %28 = add i32 %27, %26, !dbg !758
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !759
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !759
  %31 = load i8*, i8** %2, align 8, !dbg !759, !tbaa !123
  %32 = load i8, i8* %31, align 1, !dbg !759, !tbaa !139
  %33 = sext i8 %32 to i64, !dbg !759
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !759
  %35 = load i8, i8* %34, align 1, !dbg !759, !tbaa !139
  %36 = and i8 %35, 4, !dbg !759
  %37 = icmp eq i8 %36, 0, !dbg !760
  br i1 %37, label %38, label %20, !dbg !760, !llvm.loop !690

; <label>:38:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  %39 = icmp sgt i32 %28, 0, !dbg !750
  br i1 %39, label %40, label %45, !dbg !750

; <label>:40:                                     ; preds = %19, %38
  %41 = phi i32 [ 8, %19 ], [ %28, %38 ]
  %42 = add nsw i32 %41, -1, !dbg !750
  %43 = and i32 %42, %41, !dbg !750
  %44 = icmp eq i32 %43, 0, !dbg !750
  br i1 %44, label %48, label %45, !dbg !761

; <label>:45:                                     ; preds = %40, %38
  %46 = phi i32 [ %41, %40 ], [ %28, %38 ]
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %46) #4, !dbg !762
  br label %48, !dbg !762

; <label>:48:                                     ; preds = %45, %40
  %49 = phi i32 [ %46, %45 ], [ %41, %40 ]
  %50 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1, !dbg !763
  store i32 %49, i32* %50, align 4, !dbg !764, !tbaa !134
  br label %54

; <label>:51:                                     ; preds = %4
  %52 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %1) #4, !dbg !765
  %53 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %52) #4, !dbg !767
  br label %54, !dbg !768

; <label>:54:                                     ; preds = %4, %5, %7, %48, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  ret void, !dbg !769
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
!166 = !DILocation(line: 140, column: 1, scope: !149, inlinedAt: !158)
!167 = !DILocation(line: 218, column: 9, scope: !83)
!168 = !DILocation(line: 220, column: 5, scope: !83)
!169 = !DILocation(line: 137, column: 25, scope: !170, inlinedAt: !158)
!170 = distinct !DILexicalBlock(scope: !149, file: !3, line: 137, column: 7)
!171 = !DILocation(line: 137, column: 14, scope: !170, inlinedAt: !158)
!172 = !DILocation(line: 137, column: 12, scope: !170, inlinedAt: !158)
!173 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !158)
!174 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !158)
!175 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !158)
!176 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !158)
!177 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !158)
!178 = !DILocation(line: 139, column: 10, scope: !149, inlinedAt: !158)
!179 = !DILocation(line: 219, column: 18, scope: !83)
!180 = !DILocation(line: 219, column: 15, scope: !83)
!181 = !DILocation(line: 220, column: 22, scope: !83)
!182 = !DILocation(line: 220, column: 19, scope: !83)
!183 = !DILocation(line: 220, column: 27, scope: !83)
!184 = !{!185, !124, i64 0}
!185 = !{!"luaL_Buffer", !124, i64 0, !133, i64 8, !124, i64 16, !125, i64 24}
!186 = distinct !{!186, !168, !183}
!187 = !DILocation(line: 221, column: 5, scope: !83)
!188 = !DILocation(line: 224, column: 30, scope: !117)
!189 = !DILocation(line: 224, column: 36, scope: !117)
!190 = !DILocation(line: 224, column: 44, scope: !117)
!191 = !DILocation(line: 167, column: 36, scope: !95, inlinedAt: !116)
!192 = !DILocation(line: 167, column: 52, scope: !95, inlinedAt: !116)
!193 = !DILocation(line: 167, column: 59, scope: !95, inlinedAt: !116)
!194 = !DILocation(line: 167, column: 68, scope: !95, inlinedAt: !116)
!195 = !DILocation(line: 168, column: 29, scope: !95, inlinedAt: !116)
!196 = !DILocation(line: 169, column: 18, scope: !95, inlinedAt: !116)
!197 = !DILocation(line: 169, column: 14, scope: !95, inlinedAt: !116)
!198 = !DILocation(line: 171, column: 3, scope: !95, inlinedAt: !116)
!199 = !DILocation(line: 172, column: 9, scope: !200, inlinedAt: !116)
!200 = distinct !DILexicalBlock(scope: !95, file: !3, line: 172, column: 7)
!201 = !DILocation(line: 173, column: 23, scope: !200, inlinedAt: !116)
!202 = !DILocation(line: 170, column: 12, scope: !95, inlinedAt: !116)
!203 = !DILocation(line: 175, column: 13, scope: !200, inlinedAt: !116)
!204 = !DILocation(line: 172, column: 7, scope: !95, inlinedAt: !116)
!205 = !DILocation(line: 176, column: 14, scope: !109, inlinedAt: !116)
!206 = !DILocation(line: 0, scope: !207, inlinedAt: !116)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 185, column: 5)
!208 = distinct !DILexicalBlock(scope: !111, file: !3, line: 185, column: 5)
!209 = !DILocation(line: 176, column: 7, scope: !95, inlinedAt: !116)
!210 = !DILocation(line: 184, column: 9, scope: !111, inlinedAt: !116)
!211 = !DILocation(line: 185, column: 5, scope: !208, inlinedAt: !116)
!212 = !DILocation(line: 177, column: 9, scope: !108, inlinedAt: !116)
!213 = !DILocation(line: 178, column: 5, scope: !214, inlinedAt: !116)
!214 = distinct !DILexicalBlock(scope: !108, file: !3, line: 178, column: 5)
!215 = !DILocation(line: 179, column: 17, scope: !216, inlinedAt: !116)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 178, column: 32)
!217 = distinct !DILexicalBlock(scope: !214, file: !3, line: 178, column: 5)
!218 = !DILocation(line: 179, column: 7, scope: !216, inlinedAt: !116)
!219 = !DILocation(line: 179, column: 15, scope: !216, inlinedAt: !116)
!220 = !DILocation(line: 180, column: 13, scope: !216, inlinedAt: !116)
!221 = !DILocation(line: 178, column: 28, scope: !217, inlinedAt: !116)
!222 = distinct !{!222, !223, !224}
!223 = !DILocation(line: 178, column: 5, scope: !214)
!224 = !DILocation(line: 181, column: 5, scope: !214)
!225 = !DILocation(line: 186, column: 17, scope: !226, inlinedAt: !116)
!226 = distinct !DILexicalBlock(scope: !207, file: !3, line: 185, column: 37)
!227 = !DILocation(line: 186, column: 7, scope: !226, inlinedAt: !116)
!228 = !DILocation(line: 186, column: 15, scope: !226, inlinedAt: !116)
!229 = !DILocation(line: 187, column: 13, scope: !226, inlinedAt: !116)
!230 = !DILocation(line: 185, column: 26, scope: !207, inlinedAt: !116)
!231 = distinct !{!231, !232, !233}
!232 = !DILocation(line: 185, column: 5, scope: !208)
!233 = !DILocation(line: 188, column: 5, scope: !208)
!234 = distinct !{!234, !235}
!235 = !{!"llvm.loop.unroll.disable"}
!236 = !DILocation(line: 190, column: 28, scope: !95, inlinedAt: !116)
!237 = !DILocation(line: 190, column: 3, scope: !95, inlinedAt: !116)
!238 = !DILocation(line: 191, column: 1, scope: !95, inlinedAt: !116)
!239 = !DILocation(line: 225, column: 9, scope: !117)
!240 = !DILocation(line: 228, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !88, file: !3, line: 227, column: 17)
!242 = !DILocation(line: 229, column: 9, scope: !241)
!243 = !DILocation(line: 232, column: 9, scope: !87)
!244 = !DILocation(line: 232, column: 49, scope: !87)
!245 = !DILocation(line: 232, column: 26, scope: !87)
!246 = !DILocation(line: 232, column: 19, scope: !87)
!247 = !DILocation(line: 232, column: 15, scope: !87)
!248 = !{!249, !249, i64 0}
!249 = !{!"float", !125, i64 0}
!250 = !DILocation(line: 233, column: 34, scope: !87)
!251 = !DILocation(line: 233, column: 42, scope: !87)
!252 = !DILocalVariable(name: "b", arg: 1, scope: !253, file: !3, line: 194, type: !8)
!253 = distinct !DISubprogram(name: "correctbytes", scope: !3, file: !3, line: 194, type: !254, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !8, !14, !14}
!256 = !{!252, !257, !258, !259, !262}
!257 = !DILocalVariable(name: "size", arg: 2, scope: !253, file: !3, line: 194, type: !14)
!258 = !DILocalVariable(name: "endian", arg: 3, scope: !253, file: !3, line: 194, type: !14)
!259 = !DILocalVariable(name: "i", scope: !260, file: !3, line: 196, type: !14)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 195, column: 32)
!261 = distinct !DILexicalBlock(scope: !253, file: !3, line: 195, column: 7)
!262 = !DILocalVariable(name: "temp", scope: !263, file: !3, line: 198, type: !6)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 197, column: 24)
!264 = !DILocation(line: 194, column: 33, scope: !253, inlinedAt: !265)
!265 = distinct !DILocation(line: 233, column: 9, scope: !87)
!266 = !DILocation(line: 194, column: 40, scope: !253, inlinedAt: !265)
!267 = !DILocation(line: 194, column: 50, scope: !253, inlinedAt: !265)
!268 = !DILocation(line: 195, column: 14, scope: !261, inlinedAt: !265)
!269 = !DILocation(line: 197, column: 14, scope: !260, inlinedAt: !265)
!270 = !DILocation(line: 195, column: 7, scope: !253, inlinedAt: !265)
!271 = !DILocation(line: 196, column: 9, scope: !260, inlinedAt: !265)
!272 = !DILocation(line: 198, column: 19, scope: !263, inlinedAt: !265)
!273 = !DILocation(line: 198, column: 12, scope: !263, inlinedAt: !265)
!274 = !DILocation(line: 199, column: 16, scope: !263, inlinedAt: !265)
!275 = !DILocation(line: 199, column: 14, scope: !263, inlinedAt: !265)
!276 = !DILocation(line: 200, column: 15, scope: !263, inlinedAt: !265)
!277 = !DILocation(line: 197, column: 5, scope: !260, inlinedAt: !265)
!278 = distinct !{!278, !279, !280}
!279 = !DILocation(line: 197, column: 5, scope: !260)
!280 = !DILocation(line: 201, column: 5, scope: !260)
!281 = !DILocation(line: 197, column: 16, scope: !260, inlinedAt: !265)
!282 = !DILocation(line: 199, column: 10, scope: !263, inlinedAt: !265)
!283 = !DILocation(line: 203, column: 1, scope: !253, inlinedAt: !265)
!284 = !DILocation(line: 234, column: 9, scope: !87)
!285 = !DILocation(line: 236, column: 7, scope: !88)
!286 = !DILocation(line: 238, column: 9, scope: !90)
!287 = !DILocation(line: 238, column: 43, scope: !90)
!288 = !DILocation(line: 238, column: 20, scope: !90)
!289 = !DILocation(line: 238, column: 16, scope: !90)
!290 = !{!291, !291, i64 0}
!291 = !{!"double", !125, i64 0}
!292 = !DILocation(line: 239, column: 34, scope: !90)
!293 = !DILocation(line: 239, column: 42, scope: !90)
!294 = !DILocation(line: 194, column: 33, scope: !253, inlinedAt: !295)
!295 = distinct !DILocation(line: 239, column: 9, scope: !90)
!296 = !DILocation(line: 194, column: 40, scope: !253, inlinedAt: !295)
!297 = !DILocation(line: 194, column: 50, scope: !253, inlinedAt: !295)
!298 = !DILocation(line: 195, column: 14, scope: !261, inlinedAt: !295)
!299 = !DILocation(line: 197, column: 14, scope: !260, inlinedAt: !295)
!300 = !DILocation(line: 195, column: 7, scope: !253, inlinedAt: !295)
!301 = !DILocation(line: 196, column: 9, scope: !260, inlinedAt: !295)
!302 = !DILocation(line: 198, column: 19, scope: !263, inlinedAt: !295)
!303 = !DILocation(line: 198, column: 12, scope: !263, inlinedAt: !295)
!304 = !DILocation(line: 199, column: 16, scope: !263, inlinedAt: !295)
!305 = !DILocation(line: 199, column: 14, scope: !263, inlinedAt: !295)
!306 = !DILocation(line: 200, column: 15, scope: !263, inlinedAt: !295)
!307 = !DILocation(line: 197, column: 5, scope: !260, inlinedAt: !295)
!308 = !DILocation(line: 197, column: 16, scope: !260, inlinedAt: !295)
!309 = !DILocation(line: 199, column: 10, scope: !263, inlinedAt: !295)
!310 = !DILocation(line: 203, column: 1, scope: !253, inlinedAt: !295)
!311 = !DILocation(line: 240, column: 9, scope: !90)
!312 = !DILocation(line: 242, column: 7, scope: !88)
!313 = !DILocation(line: 244, column: 9, scope: !92)
!314 = !DILocation(line: 245, column: 49, scope: !92)
!315 = !DILocation(line: 244, column: 16, scope: !92)
!316 = !DILocation(line: 245, column: 25, scope: !92)
!317 = !DILocation(line: 245, column: 21, scope: !92)
!318 = !DILocation(line: 246, column: 31, scope: !319)
!319 = distinct !DILexicalBlock(scope: !92, file: !3, line: 246, column: 13)
!320 = !DILocation(line: 246, column: 13, scope: !92)
!321 = !DILocation(line: 247, column: 9, scope: !92)
!322 = !DILocation(line: 248, column: 9, scope: !92)
!323 = !DILocation(line: 249, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !92, file: !3, line: 249, column: 13)
!325 = !DILocation(line: 249, column: 13, scope: !92)
!326 = !DILocation(line: 250, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !3, line: 249, column: 25)
!328 = !DILocation(line: 251, column: 15, scope: !327)
!329 = !DILocation(line: 252, column: 9, scope: !327)
!330 = !DILocation(line: 0, scope: !319)
!331 = !DILocation(line: 254, column: 7, scope: !88)
!332 = !DILocation(line: 255, column: 16, scope: !88)
!333 = !DILocation(line: 256, column: 5, scope: !88)
!334 = !DILocation(line: 0, scope: !83)
!335 = !DILocation(line: 0, scope: !117)
!336 = !DILocation(line: 257, column: 15, scope: !83)
!337 = !DILocation(line: 215, column: 11, scope: !59)
!338 = distinct !{!338, !141, !339}
!339 = !DILocation(line: 258, column: 3, scope: !59)
!340 = !DILocation(line: 259, column: 3, scope: !59)
!341 = !DILocation(line: 261, column: 1, scope: !59)
!342 = !DILocation(line: 260, column: 3, scope: !59)
!343 = distinct !DISubprogram(name: "b_unpack", scope: !3, file: !3, line: 291, type: !42, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !354, !355, !358, !359, !361, !363}
!345 = !DILocalVariable(name: "L", arg: 1, scope: !343, file: !3, line: 291, type: !44)
!346 = !DILocalVariable(name: "h", scope: !343, file: !3, line: 292, type: !75)
!347 = !DILocalVariable(name: "fmt", scope: !343, file: !3, line: 293, type: !18)
!348 = !DILocalVariable(name: "ld", scope: !343, file: !3, line: 294, type: !9)
!349 = !DILocalVariable(name: "data", scope: !343, file: !3, line: 295, type: !18)
!350 = !DILocalVariable(name: "pos", scope: !343, file: !3, line: 296, type: !9)
!351 = !DILocalVariable(name: "n", scope: !343, file: !3, line: 300, type: !14)
!352 = !DILocalVariable(name: "opt", scope: !353, file: !3, line: 303, type: !14)
!353 = distinct !DILexicalBlock(scope: !343, file: !3, line: 302, column: 16)
!354 = !DILocalVariable(name: "size", scope: !353, file: !3, line: 304, type: !9)
!355 = !DILocalVariable(name: "issigned", scope: !356, file: !3, line: 313, type: !14)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 312, column: 58)
!357 = distinct !DILexicalBlock(scope: !353, file: !3, line: 310, column: 18)
!358 = !DILocalVariable(name: "res", scope: !356, file: !3, line: 314, type: !22)
!359 = !DILocalVariable(name: "f", scope: !360, file: !3, line: 322, type: !7)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 321, column: 17)
!361 = !DILocalVariable(name: "d", scope: !362, file: !3, line: 329, type: !24)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 328, column: 17)
!363 = !DILocalVariable(name: "e", scope: !364, file: !3, line: 348, type: !18)
!364 = distinct !DILexicalBlock(scope: !357, file: !3, line: 347, column: 17)
!365 = !DILocation(line: 291, column: 33, scope: !343)
!366 = !DILocation(line: 292, column: 3, scope: !343)
!367 = !DILocation(line: 293, column: 3, scope: !343)
!368 = !DILocation(line: 293, column: 21, scope: !343)
!369 = !DILocation(line: 293, column: 15, scope: !343)
!370 = !DILocation(line: 294, column: 3, scope: !343)
!371 = !DILocation(line: 294, column: 10, scope: !343)
!372 = !DILocation(line: 295, column: 22, scope: !343)
!373 = !DILocation(line: 295, column: 15, scope: !343)
!374 = !DILocation(line: 296, column: 16, scope: !343)
!375 = !DILocation(line: 296, column: 10, scope: !343)
!376 = !DILocation(line: 297, column: 3, scope: !343)
!377 = !DILocation(line: 298, column: 6, scope: !343)
!378 = !DILocation(line: 300, column: 7, scope: !343)
!379 = !DILocation(line: 301, column: 3, scope: !343)
!380 = !DILocation(line: 302, column: 10, scope: !343)
!381 = !DILocation(line: 302, column: 3, scope: !343)
!382 = !DILocation(line: 303, column: 19, scope: !353)
!383 = !DILocation(line: 303, column: 15, scope: !353)
!384 = !DILocation(line: 303, column: 9, scope: !353)
!385 = !DILocation(line: 304, column: 19, scope: !353)
!386 = !DILocation(line: 304, column: 12, scope: !353)
!387 = !DILocation(line: 292, column: 10, scope: !343)
!388 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !389)
!389 = distinct !DILocation(line: 305, column: 12, scope: !353)
!390 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !389)
!391 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !389)
!392 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !389)
!393 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !389)
!394 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !389)
!395 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !389)
!396 = !DILocation(line: 137, column: 25, scope: !170, inlinedAt: !389)
!397 = !DILocation(line: 137, column: 14, scope: !170, inlinedAt: !389)
!398 = !DILocation(line: 137, column: 12, scope: !170, inlinedAt: !389)
!399 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !389)
!400 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !389)
!401 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !389)
!402 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !389)
!403 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !389)
!404 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !389)
!405 = !DILocation(line: 0, scope: !149, inlinedAt: !389)
!406 = !DILocation(line: 140, column: 1, scope: !149, inlinedAt: !389)
!407 = !DILocation(line: 305, column: 12, scope: !353)
!408 = !DILocation(line: 305, column: 9, scope: !353)
!409 = !DILocation(line: 306, column: 5, scope: !353)
!410 = !{!411, !411, i64 0}
!411 = !{!"long", !125, i64 0}
!412 = !DILocation(line: 309, column: 5, scope: !353)
!413 = !DILocation(line: 310, column: 5, scope: !353)
!414 = !DILocation(line: 313, column: 24, scope: !356)
!415 = !DILocation(line: 314, column: 41, scope: !356)
!416 = !DILocation(line: 314, column: 49, scope: !356)
!417 = !DILocation(line: 314, column: 67, scope: !356)
!418 = !DILocalVariable(name: "buff", arg: 1, scope: !419, file: !3, line: 264, type: !18)
!419 = distinct !DISubprogram(name: "getinteger", scope: !3, file: !3, line: 264, type: !420, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!22, !18, !14, !14, !14}
!422 = !{!418, !423, !424, !425, !426, !427, !428}
!423 = !DILocalVariable(name: "endian", arg: 2, scope: !419, file: !3, line: 264, type: !14)
!424 = !DILocalVariable(name: "issigned", arg: 3, scope: !419, file: !3, line: 265, type: !14)
!425 = !DILocalVariable(name: "size", arg: 4, scope: !419, file: !3, line: 265, type: !14)
!426 = !DILocalVariable(name: "l", scope: !419, file: !3, line: 266, type: !15)
!427 = !DILocalVariable(name: "i", scope: !419, file: !3, line: 267, type: !14)
!428 = !DILocalVariable(name: "mask", scope: !429, file: !3, line: 283, type: !15)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 282, column: 8)
!430 = distinct !DILexicalBlock(scope: !419, file: !3, line: 280, column: 7)
!431 = !DILocation(line: 264, column: 43, scope: !419, inlinedAt: !432)
!432 = distinct !DILocation(line: 314, column: 26, scope: !356)
!433 = !DILocation(line: 264, column: 53, scope: !419, inlinedAt: !432)
!434 = !DILocation(line: 265, column: 43, scope: !419, inlinedAt: !432)
!435 = !DILocation(line: 266, column: 12, scope: !419, inlinedAt: !432)
!436 = !DILocation(line: 268, column: 14, scope: !437, inlinedAt: !432)
!437 = distinct !DILexicalBlock(scope: !419, file: !3, line: 268, column: 7)
!438 = !DILocation(line: 0, scope: !439, inlinedAt: !432)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 275, column: 5)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 275, column: 5)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 274, column: 8)
!442 = !DILocation(line: 268, column: 7, scope: !419, inlinedAt: !432)
!443 = !DILocation(line: 267, column: 7, scope: !419, inlinedAt: !432)
!444 = !DILocation(line: 275, column: 5, scope: !440, inlinedAt: !432)
!445 = !DILocation(line: 269, column: 5, scope: !446, inlinedAt: !432)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 269, column: 5)
!447 = distinct !DILexicalBlock(scope: !437, file: !3, line: 268, column: 22)
!448 = !DILocation(line: 270, column: 9, scope: !449, inlinedAt: !432)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 269, column: 32)
!450 = distinct !DILexicalBlock(scope: !446, file: !3, line: 269, column: 5)
!451 = !DILocation(line: 271, column: 37, scope: !449, inlinedAt: !432)
!452 = !DILocation(line: 271, column: 12, scope: !449, inlinedAt: !432)
!453 = !DILocation(line: 271, column: 9, scope: !449, inlinedAt: !432)
!454 = !DILocation(line: 269, column: 28, scope: !450, inlinedAt: !432)
!455 = distinct !{!455, !456, !457}
!456 = !DILocation(line: 269, column: 5, scope: !446)
!457 = !DILocation(line: 272, column: 5, scope: !446)
!458 = !DILocation(line: 276, column: 9, scope: !459, inlinedAt: !432)
!459 = distinct !DILexicalBlock(scope: !439, file: !3, line: 275, column: 37)
!460 = !DILocation(line: 277, column: 37, scope: !459, inlinedAt: !432)
!461 = !DILocation(line: 277, column: 12, scope: !459, inlinedAt: !432)
!462 = !DILocation(line: 277, column: 9, scope: !459, inlinedAt: !432)
!463 = !DILocation(line: 275, column: 26, scope: !439, inlinedAt: !432)
!464 = distinct !{!464, !465, !466}
!465 = !DILocation(line: 275, column: 5, scope: !440)
!466 = !DILocation(line: 278, column: 5, scope: !440)
!467 = distinct !{!467, !235}
!468 = !DILocation(line: 280, column: 7, scope: !419, inlinedAt: !432)
!469 = !DILocation(line: 281, column: 12, scope: !430, inlinedAt: !432)
!470 = !DILocation(line: 281, column: 5, scope: !430, inlinedAt: !432)
!471 = !DILocation(line: 283, column: 56, scope: !429, inlinedAt: !432)
!472 = !DILocation(line: 283, column: 59, scope: !429, inlinedAt: !432)
!473 = !DILocation(line: 283, column: 48, scope: !429, inlinedAt: !432)
!474 = !DILocation(line: 283, column: 14, scope: !429, inlinedAt: !432)
!475 = !DILocation(line: 284, column: 11, scope: !476, inlinedAt: !432)
!476 = distinct !DILexicalBlock(scope: !429, file: !3, line: 284, column: 9)
!477 = !DILocation(line: 284, column: 9, scope: !429, inlinedAt: !432)
!478 = !DILocation(line: 286, column: 12, scope: !429, inlinedAt: !432)
!479 = !DILocation(line: 0, scope: !430, inlinedAt: !432)
!480 = !DILocation(line: 288, column: 1, scope: !419, inlinedAt: !432)
!481 = !DILocation(line: 314, column: 20, scope: !356)
!482 = !DILocation(line: 315, column: 9, scope: !356)
!483 = !DILocation(line: 315, column: 34, scope: !356)
!484 = !DILocation(line: 322, column: 9, scope: !360)
!485 = !DILocation(line: 323, column: 24, scope: !360)
!486 = !DILocation(line: 323, column: 9, scope: !360)
!487 = !DILocation(line: 324, column: 47, scope: !360)
!488 = !DILocation(line: 194, column: 33, scope: !253, inlinedAt: !489)
!489 = distinct !DILocation(line: 324, column: 9, scope: !360)
!490 = !DILocation(line: 194, column: 40, scope: !253, inlinedAt: !489)
!491 = !DILocation(line: 194, column: 50, scope: !253, inlinedAt: !489)
!492 = !DILocation(line: 195, column: 14, scope: !261, inlinedAt: !489)
!493 = !DILocation(line: 196, column: 9, scope: !260, inlinedAt: !489)
!494 = !DILocation(line: 195, column: 7, scope: !253, inlinedAt: !489)
!495 = !DILocation(line: 198, column: 19, scope: !263, inlinedAt: !489)
!496 = !DILocation(line: 198, column: 12, scope: !263, inlinedAt: !489)
!497 = !DILocation(line: 199, column: 16, scope: !263, inlinedAt: !489)
!498 = !DILocation(line: 199, column: 10, scope: !263, inlinedAt: !489)
!499 = !DILocation(line: 199, column: 14, scope: !263, inlinedAt: !489)
!500 = !DILocation(line: 200, column: 15, scope: !263, inlinedAt: !489)
!501 = !DILocation(line: 197, column: 16, scope: !260, inlinedAt: !489)
!502 = !DILocation(line: 197, column: 14, scope: !260, inlinedAt: !489)
!503 = !DILocation(line: 197, column: 5, scope: !260, inlinedAt: !489)
!504 = !DILocation(line: 203, column: 1, scope: !253, inlinedAt: !489)
!505 = !DILocation(line: 325, column: 27, scope: !360)
!506 = !DILocation(line: 322, column: 15, scope: !360)
!507 = !DILocation(line: 325, column: 9, scope: !360)
!508 = !DILocation(line: 325, column: 32, scope: !360)
!509 = !DILocation(line: 327, column: 7, scope: !357)
!510 = !DILocation(line: 329, column: 9, scope: !362)
!511 = !DILocation(line: 330, column: 24, scope: !362)
!512 = !DILocation(line: 330, column: 9, scope: !362)
!513 = !DILocation(line: 331, column: 47, scope: !362)
!514 = !DILocation(line: 194, column: 33, scope: !253, inlinedAt: !515)
!515 = distinct !DILocation(line: 331, column: 9, scope: !362)
!516 = !DILocation(line: 194, column: 40, scope: !253, inlinedAt: !515)
!517 = !DILocation(line: 194, column: 50, scope: !253, inlinedAt: !515)
!518 = !DILocation(line: 195, column: 14, scope: !261, inlinedAt: !515)
!519 = !DILocation(line: 196, column: 9, scope: !260, inlinedAt: !515)
!520 = !DILocation(line: 195, column: 7, scope: !253, inlinedAt: !515)
!521 = !DILocation(line: 198, column: 19, scope: !263, inlinedAt: !515)
!522 = !DILocation(line: 198, column: 12, scope: !263, inlinedAt: !515)
!523 = !DILocation(line: 199, column: 16, scope: !263, inlinedAt: !515)
!524 = !DILocation(line: 199, column: 10, scope: !263, inlinedAt: !515)
!525 = !DILocation(line: 199, column: 14, scope: !263, inlinedAt: !515)
!526 = !DILocation(line: 200, column: 15, scope: !263, inlinedAt: !515)
!527 = !DILocation(line: 197, column: 16, scope: !260, inlinedAt: !515)
!528 = !DILocation(line: 197, column: 14, scope: !260, inlinedAt: !515)
!529 = !DILocation(line: 197, column: 5, scope: !260, inlinedAt: !515)
!530 = !DILocation(line: 203, column: 1, scope: !253, inlinedAt: !515)
!531 = !DILocation(line: 332, column: 27, scope: !362)
!532 = !DILocation(line: 329, column: 16, scope: !362)
!533 = !DILocation(line: 332, column: 9, scope: !362)
!534 = !DILocation(line: 332, column: 32, scope: !362)
!535 = !DILocation(line: 334, column: 7, scope: !357)
!536 = !DILocation(line: 336, column: 13, scope: !537)
!537 = distinct !DILexicalBlock(scope: !357, file: !3, line: 335, column: 17)
!538 = !DILocation(line: 337, column: 17, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 337, column: 15)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 336, column: 24)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 336, column: 13)
!542 = !DILocation(line: 337, column: 22, scope: !539)
!543 = !DILocation(line: 337, column: 26, scope: !539)
!544 = !DILocation(line: 337, column: 15, scope: !540)
!545 = !DILocation(line: 338, column: 13, scope: !539)
!546 = !DILocation(line: 339, column: 18, scope: !540)
!547 = !DILocation(line: 340, column: 11, scope: !540)
!548 = !DILocation(line: 340, column: 27, scope: !540)
!549 = !DILocation(line: 341, column: 11, scope: !540)
!550 = !DILocation(line: 0, scope: !353)
!551 = !DILocation(line: 0, scope: !343)
!552 = !DILocation(line: 344, column: 32, scope: !537)
!553 = !DILocation(line: 344, column: 9, scope: !537)
!554 = !DILocation(line: 344, column: 46, scope: !537)
!555 = !DILocation(line: 345, column: 9, scope: !537)
!556 = !DILocation(line: 348, column: 50, scope: !364)
!557 = !DILocation(line: 348, column: 62, scope: !364)
!558 = !DILocation(line: 348, column: 65, scope: !364)
!559 = !DILocation(line: 348, column: 39, scope: !364)
!560 = !DILocation(line: 348, column: 21, scope: !364)
!561 = !DILocation(line: 349, column: 15, scope: !562)
!562 = distinct !DILexicalBlock(scope: !364, file: !3, line: 349, column: 13)
!563 = !DILocation(line: 349, column: 13, scope: !364)
!564 = !DILocation(line: 350, column: 11, scope: !562)
!565 = !DILocation(line: 351, column: 19, scope: !364)
!566 = !DILocation(line: 351, column: 33, scope: !364)
!567 = !DILocation(line: 352, column: 9, scope: !364)
!568 = !DILocation(line: 352, column: 50, scope: !364)
!569 = !DILocation(line: 355, column: 16, scope: !357)
!570 = !DILocation(line: 356, column: 5, scope: !357)
!571 = !DILocation(line: 0, scope: !356)
!572 = !DILocation(line: 357, column: 9, scope: !353)
!573 = !DILocation(line: 302, column: 11, scope: !343)
!574 = distinct !{!574, !381, !575}
!575 = !DILocation(line: 358, column: 3, scope: !343)
!576 = !DILocation(line: 359, column: 26, scope: !343)
!577 = !DILocation(line: 359, column: 3, scope: !343)
!578 = !DILocation(line: 360, column: 12, scope: !343)
!579 = !DILocation(line: 361, column: 1, scope: !343)
!580 = !DILocation(line: 360, column: 3, scope: !343)
!581 = distinct !DISubprogram(name: "b_size", scope: !3, file: !3, line: 364, type: !42, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !582)
!582 = !{!583, !584, !585, !586, !587, !589}
!583 = !DILocalVariable(name: "L", arg: 1, scope: !581, file: !3, line: 364, type: !44)
!584 = !DILocalVariable(name: "h", scope: !581, file: !3, line: 365, type: !75)
!585 = !DILocalVariable(name: "fmt", scope: !581, file: !3, line: 366, type: !18)
!586 = !DILocalVariable(name: "pos", scope: !581, file: !3, line: 367, type: !9)
!587 = !DILocalVariable(name: "opt", scope: !588, file: !3, line: 370, type: !14)
!588 = distinct !DILexicalBlock(scope: !581, file: !3, line: 369, column: 16)
!589 = !DILocalVariable(name: "size", scope: !588, file: !3, line: 371, type: !9)
!590 = !DILocation(line: 364, column: 31, scope: !581)
!591 = !DILocation(line: 365, column: 3, scope: !581)
!592 = !DILocation(line: 366, column: 3, scope: !581)
!593 = !DILocation(line: 366, column: 21, scope: !581)
!594 = !DILocation(line: 366, column: 15, scope: !581)
!595 = !DILocation(line: 367, column: 10, scope: !581)
!596 = !DILocation(line: 368, column: 3, scope: !581)
!597 = !DILocation(line: 369, column: 10, scope: !581)
!598 = !DILocation(line: 369, column: 3, scope: !581)
!599 = !DILocation(line: 370, column: 19, scope: !588)
!600 = !DILocation(line: 370, column: 15, scope: !588)
!601 = !DILocation(line: 370, column: 9, scope: !588)
!602 = !DILocation(line: 371, column: 19, scope: !588)
!603 = !DILocation(line: 371, column: 12, scope: !588)
!604 = !DILocation(line: 365, column: 10, scope: !581)
!605 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !606)
!606 = distinct !DILocation(line: 372, column: 12, scope: !588)
!607 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !606)
!608 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !606)
!609 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !606)
!610 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !606)
!611 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !606)
!612 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !606)
!613 = !DILocation(line: 137, column: 25, scope: !170, inlinedAt: !606)
!614 = !DILocation(line: 137, column: 14, scope: !170, inlinedAt: !606)
!615 = !DILocation(line: 137, column: 12, scope: !170, inlinedAt: !606)
!616 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !606)
!617 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !606)
!618 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !606)
!619 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !606)
!620 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !606)
!621 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !606)
!622 = !DILocation(line: 0, scope: !149, inlinedAt: !606)
!623 = !DILocation(line: 140, column: 1, scope: !149, inlinedAt: !606)
!624 = !DILocation(line: 372, column: 12, scope: !588)
!625 = !DILocation(line: 373, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !588, file: !3, line: 373, column: 9)
!627 = !DILocation(line: 373, column: 9, scope: !588)
!628 = !DILocation(line: 374, column: 7, scope: !626)
!629 = !DILocation(line: 375, column: 25, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 375, column: 14)
!631 = !DILocation(line: 376, column: 7, scope: !630)
!632 = !DILocation(line: 377, column: 10, scope: !633)
!633 = distinct !DILexicalBlock(scope: !588, file: !3, line: 377, column: 9)
!634 = !DILocation(line: 377, column: 9, scope: !588)
!635 = !DILocation(line: 378, column: 7, scope: !633)
!636 = !DILocation(line: 372, column: 9, scope: !588)
!637 = !DILocation(line: 379, column: 9, scope: !588)
!638 = !DILocation(line: 369, column: 11, scope: !581)
!639 = distinct !{!639, !598, !640}
!640 = !DILocation(line: 380, column: 3, scope: !581)
!641 = !DILocation(line: 0, scope: !588)
!642 = !DILocation(line: 381, column: 3, scope: !581)
!643 = !DILocation(line: 383, column: 1, scope: !581)
!644 = !DILocation(line: 382, column: 3, scope: !581)
!645 = distinct !DISubprogram(name: "optsize", scope: !3, file: !3, line: 109, type: !646, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !649)
!646 = !DISubroutineType(types: !647)
!647 = !{!9, !44, !6, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!649 = !{!650, !651, !652, !653}
!650 = !DILocalVariable(name: "L", arg: 1, scope: !645, file: !3, line: 109, type: !44)
!651 = !DILocalVariable(name: "opt", arg: 2, scope: !645, file: !3, line: 109, type: !6)
!652 = !DILocalVariable(name: "fmt", arg: 3, scope: !645, file: !3, line: 109, type: !648)
!653 = !DILocalVariable(name: "sz", scope: !654, file: !3, line: 120, type: !14)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 119, column: 25)
!655 = distinct !DILexicalBlock(scope: !645, file: !3, line: 110, column: 16)
!656 = !DILocation(line: 109, column: 35, scope: !645)
!657 = !DILocation(line: 109, column: 43, scope: !645)
!658 = !DILocation(line: 109, column: 61, scope: !645)
!659 = !DILocation(line: 110, column: 11, scope: !645)
!660 = !DILocation(line: 110, column: 3, scope: !645)
!661 = !DILocation(line: 112, column: 25, scope: !655)
!662 = !DILocation(line: 113, column: 25, scope: !655)
!663 = !DILocation(line: 114, column: 15, scope: !655)
!664 = !DILocation(line: 115, column: 16, scope: !655)
!665 = !DILocation(line: 116, column: 16, scope: !655)
!666 = !DILocalVariable(name: "fmt", arg: 1, scope: !667, file: !3, line: 92, type: !648)
!667 = distinct !DISubprogram(name: "getnum", scope: !3, file: !3, line: 92, type: !668, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!14, !648, !14}
!670 = !{!666, !671, !672}
!671 = !DILocalVariable(name: "df", arg: 2, scope: !667, file: !3, line: 92, type: !14)
!672 = !DILocalVariable(name: "a", scope: !673, file: !3, line: 96, type: !14)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 95, column: 8)
!674 = distinct !DILexicalBlock(scope: !667, file: !3, line: 93, column: 7)
!675 = !DILocation(line: 92, column: 33, scope: !667, inlinedAt: !676)
!676 = distinct !DILocation(line: 118, column: 22, scope: !655)
!677 = !DILocation(line: 92, column: 42, scope: !667, inlinedAt: !676)
!678 = !DILocation(line: 93, column: 8, scope: !674, inlinedAt: !676)
!679 = !DILocation(line: 93, column: 7, scope: !667, inlinedAt: !676)
!680 = !DILocation(line: 98, column: 26, scope: !681, inlinedAt: !676)
!681 = distinct !DILexicalBlock(scope: !673, file: !3, line: 97, column: 8)
!682 = !DILocation(line: 0, scope: !681, inlinedAt: !676)
!683 = !DILocation(line: 96, column: 9, scope: !673, inlinedAt: !676)
!684 = !DILocation(line: 98, column: 12, scope: !681, inlinedAt: !676)
!685 = !DILocation(line: 98, column: 18, scope: !681, inlinedAt: !676)
!686 = !DILocation(line: 98, column: 16, scope: !681, inlinedAt: !676)
!687 = !DILocation(line: 98, column: 30, scope: !681, inlinedAt: !676)
!688 = !DILocation(line: 99, column: 14, scope: !673, inlinedAt: !676)
!689 = !DILocation(line: 99, column: 5, scope: !681, inlinedAt: !676)
!690 = distinct !{!690, !691, !692}
!691 = !DILocation(line: 97, column: 5, scope: !673)
!692 = !DILocation(line: 99, column: 28, scope: !673)
!693 = !DILocation(line: 102, column: 1, scope: !667, inlinedAt: !676)
!694 = !DILocation(line: 118, column: 15, scope: !655)
!695 = !DILocation(line: 92, column: 33, scope: !667, inlinedAt: !696)
!696 = distinct !DILocation(line: 120, column: 16, scope: !654)
!697 = !DILocation(line: 92, column: 42, scope: !667, inlinedAt: !696)
!698 = !DILocation(line: 93, column: 8, scope: !674, inlinedAt: !696)
!699 = !DILocation(line: 93, column: 7, scope: !667, inlinedAt: !696)
!700 = !DILocation(line: 102, column: 1, scope: !667, inlinedAt: !696)
!701 = !DILocation(line: 120, column: 11, scope: !654)
!702 = !DILocation(line: 121, column: 11, scope: !654)
!703 = !DILocation(line: 98, column: 26, scope: !681, inlinedAt: !696)
!704 = !DILocation(line: 0, scope: !681, inlinedAt: !696)
!705 = !DILocation(line: 96, column: 9, scope: !673, inlinedAt: !696)
!706 = !DILocation(line: 98, column: 12, scope: !681, inlinedAt: !696)
!707 = !DILocation(line: 98, column: 18, scope: !681, inlinedAt: !696)
!708 = !DILocation(line: 98, column: 16, scope: !681, inlinedAt: !696)
!709 = !DILocation(line: 98, column: 30, scope: !681, inlinedAt: !696)
!710 = !DILocation(line: 99, column: 14, scope: !673, inlinedAt: !696)
!711 = !DILocation(line: 99, column: 5, scope: !681, inlinedAt: !696)
!712 = !DILocation(line: 121, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !654, file: !3, line: 121, column: 11)
!714 = !DILocation(line: 122, column: 9, scope: !713)
!715 = !DILocation(line: 124, column: 14, scope: !654)
!716 = !DILocation(line: 126, column: 14, scope: !655)
!717 = !DILocation(line: 0, scope: !655)
!718 = !DILocation(line: 128, column: 1, scope: !645)
!719 = distinct !DISubprogram(name: "controloptions", scope: !3, file: !3, line: 146, type: !720, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !44, !14, !648, !152}
!722 = !{!723, !724, !725, !726, !727, !730}
!723 = !DILocalVariable(name: "L", arg: 1, scope: !719, file: !3, line: 146, type: !44)
!724 = !DILocalVariable(name: "opt", arg: 2, scope: !719, file: !3, line: 146, type: !14)
!725 = !DILocalVariable(name: "fmt", arg: 3, scope: !719, file: !3, line: 146, type: !648)
!726 = !DILocalVariable(name: "h", arg: 4, scope: !719, file: !3, line: 147, type: !152)
!727 = !DILocalVariable(name: "a", scope: !728, file: !3, line: 153, type: !14)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 152, column: 15)
!729 = distinct !DILexicalBlock(scope: !719, file: !3, line: 148, column: 16)
!730 = !DILocalVariable(name: "msg", scope: !731, file: !3, line: 160, type: !18)
!731 = distinct !DILexicalBlock(scope: !729, file: !3, line: 159, column: 14)
!732 = !DILocation(line: 146, column: 40, scope: !719)
!733 = !DILocation(line: 146, column: 47, scope: !719)
!734 = !DILocation(line: 146, column: 65, scope: !719)
!735 = !DILocation(line: 147, column: 37, scope: !719)
!736 = !DILocation(line: 148, column: 3, scope: !719)
!737 = !DILocation(line: 150, column: 18, scope: !729)
!738 = !DILocation(line: 150, column: 25, scope: !729)
!739 = !DILocation(line: 150, column: 32, scope: !729)
!740 = !DILocation(line: 151, column: 18, scope: !729)
!741 = !DILocation(line: 151, column: 25, scope: !729)
!742 = !DILocation(line: 151, column: 35, scope: !729)
!743 = !DILocation(line: 92, column: 33, scope: !667, inlinedAt: !744)
!744 = distinct !DILocation(line: 153, column: 15, scope: !728)
!745 = !DILocation(line: 92, column: 42, scope: !667, inlinedAt: !744)
!746 = !DILocation(line: 93, column: 8, scope: !674, inlinedAt: !744)
!747 = !DILocation(line: 93, column: 7, scope: !667, inlinedAt: !744)
!748 = !DILocation(line: 102, column: 1, scope: !667, inlinedAt: !744)
!749 = !DILocation(line: 153, column: 11, scope: !728)
!750 = !DILocation(line: 154, column: 12, scope: !751)
!751 = distinct !DILexicalBlock(scope: !728, file: !3, line: 154, column: 11)
!752 = !DILocation(line: 98, column: 26, scope: !681, inlinedAt: !744)
!753 = !DILocation(line: 0, scope: !681, inlinedAt: !744)
!754 = !DILocation(line: 96, column: 9, scope: !673, inlinedAt: !744)
!755 = !DILocation(line: 98, column: 12, scope: !681, inlinedAt: !744)
!756 = !DILocation(line: 98, column: 18, scope: !681, inlinedAt: !744)
!757 = !DILocation(line: 98, column: 16, scope: !681, inlinedAt: !744)
!758 = !DILocation(line: 98, column: 30, scope: !681, inlinedAt: !744)
!759 = !DILocation(line: 99, column: 14, scope: !673, inlinedAt: !744)
!760 = !DILocation(line: 99, column: 5, scope: !681, inlinedAt: !744)
!761 = !DILocation(line: 154, column: 11, scope: !728)
!762 = !DILocation(line: 155, column: 9, scope: !751)
!763 = !DILocation(line: 156, column: 10, scope: !728)
!764 = !DILocation(line: 156, column: 16, scope: !728)
!765 = !DILocation(line: 160, column: 25, scope: !731)
!766 = !DILocation(line: 160, column: 19, scope: !731)
!767 = !DILocation(line: 161, column: 7, scope: !731)
!768 = !DILocation(line: 163, column: 3, scope: !729)
!769 = !DILocation(line: 164, column: 1, scope: !719)
