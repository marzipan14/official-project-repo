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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  %15 = load i8, i8* %11, align 1, !dbg !139, !tbaa !140
  %16 = icmp eq i8 %15, 0, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %16, label %246, label %17, !dbg !138

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 3, i64 1024
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %21 = bitcast float* %6 to i8*
  %22 = bitcast double* %7 to i8*
  %23 = bitcast i64* %8 to i8*
  br label %24, !dbg !138

; <label>:24:                                     ; preds = %243, %17
  %25 = phi i8 [ %15, %17 ], [ %245, %243 ], !dbg !142
  %26 = phi i8* [ %11, %17 ], [ %240, %243 ]
  %27 = phi i32 [ 2, %17 ], [ %239, %243 ]
  %28 = phi i64 [ 0, %17 ], [ %244, %243 ]
  %29 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !143
  store i8* %29, i8** %4, align 8, !dbg !143, !tbaa !123
  %30 = sext i8 %25 to i32, !dbg !142
  %31 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %25, i8** nonnull %4) #6, !dbg !145
  %32 = icmp eq i64 %31, 0, !dbg !162
  %33 = icmp eq i8 %25, 99, !dbg !164
  %34 = or i1 %33, %32, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %34, label %35, label %36, !dbg !165

; <label>:35:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br label %64, !dbg !169

; <label>:36:                                     ; preds = %24
  %37 = load i32, i32* %14, align 4, !dbg !170, !tbaa !134
  %38 = sext i32 %37 to i64, !dbg !172
  %39 = icmp ugt i64 %31, %38, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br i1 %39, label %40, label %41, !dbg !174

; <label>:40:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br label %41, !dbg !175

; <label>:41:                                     ; preds = %36, %40
  %42 = phi i64 [ %38, %40 ], [ %31, %36 ]
  %43 = add i64 %42, -1, !dbg !176
  %44 = and i64 %43, %28, !dbg !177
  %45 = sub i64 %42, %44, !dbg !178
  %46 = and i64 %45, %43, !dbg !179
  %47 = trunc i64 %46 to i32, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  %48 = shl i64 %46, 32, !dbg !182
  %49 = ashr exact i64 %48, 32, !dbg !182
  %50 = add i64 %28, %49, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %51 = icmp sgt i32 %47, 0, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %51, label %52, label %64, !dbg !169

; <label>:52:                                     ; preds = %41, %60
  %53 = phi i32 [ %54, %60 ], [ %47, %41 ]
  %54 = add nsw i32 %53, -1, !dbg !185
  %55 = load i8*, i8** %18, align 8, !dbg !186, !tbaa !187
  %56 = icmp ult i8* %55, %19, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br i1 %56, label %60, label %57, !dbg !186

; <label>:57:                                     ; preds = %52
  %58 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  %59 = load i8*, i8** %18, align 8, !dbg !186, !tbaa !187
  br label %60, !dbg !186

; <label>:60:                                     ; preds = %57, %52
  %61 = phi i8* [ %59, %57 ], [ %55, %52 ], !dbg !186
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !186
  store i8* %62, i8** %18, align 8, !dbg !186, !tbaa !187
  store i8 0, i8* %61, align 1, !dbg !186, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %63 = icmp sgt i32 %53, 1, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %63, label %52, label %64, !dbg !169, !llvm.loop !189

; <label>:64:                                     ; preds = %60, %35, %41
  %65 = phi i64 [ %28, %35 ], [ %50, %41 ], [ %50, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  switch i32 %30, label %236 [
    i32 98, label %66
    i32 66, label %66
    i32 104, label %66
    i32 72, label %66
    i32 108, label %66
    i32 76, label %66
    i32 84, label %66
    i32 105, label %66
    i32 73, label %66
    i32 120, label %136
    i32 102, label %145
    i32 100, label %178
    i32 99, label %210
    i32 115, label %210
  ], !dbg !190

; <label>:66:                                     ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64
  %67 = add nsw i32 %27, 1, !dbg !191
  %68 = load i32, i32* %13, align 4, !dbg !192, !tbaa !131
  %69 = trunc i64 %31 to i32, !dbg !193
  %70 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !199
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #5, !dbg !201
  %71 = fcmp olt double %70, 0.000000e+00, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  %72 = fptosi double %70 to i64, !dbg !205
  %73 = fptoui double %70 to i64, !dbg !207
  %74 = select i1 %71, i64 %72, i64 %73, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %75 = icmp eq i32 %68, 1, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  %76 = icmp sgt i32 %69, 0, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br i1 %75, label %81, label %77, !dbg !209

; <label>:77:                                     ; preds = %66
  br i1 %76, label %78, label %133, !dbg !215

; <label>:78:                                     ; preds = %77
  %79 = shl i64 %31, 32, !dbg !212
  %80 = ashr exact i64 %79, 32, !dbg !212
  br label %111, !dbg !212

; <label>:81:                                     ; preds = %66
  br i1 %76, label %82, label %133, !dbg !217

; <label>:82:                                     ; preds = %81
  %83 = and i64 %31, 4294967295
  %84 = add nsw i64 %83, -1, !dbg !219
  %85 = and i64 %31, 3, !dbg !219
  %86 = icmp ult i64 %84, 3, !dbg !219
  br i1 %86, label %119, label %87, !dbg !219

; <label>:87:                                     ; preds = %82
  %88 = sub nsw i64 %83, %85, !dbg !219
  br label %89, !dbg !219

; <label>:89:                                     ; preds = %89, %87
  %90 = phi i64 [ 0, %87 ], [ %108, %89 ]
  %91 = phi i64 [ %74, %87 ], [ %107, %89 ]
  %92 = phi i64 [ %88, %87 ], [ %109, %89 ]
  %93 = trunc i64 %91 to i8, !dbg !219
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %90, !dbg !222
  store i8 %93, i8* %94, align 4, !dbg !223, !tbaa !140
  %95 = lshr i64 %91, 8, !dbg !224
  %96 = or i64 %90, 1, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %97 = trunc i64 %95 to i8, !dbg !219
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %96, !dbg !222
  store i8 %97, i8* %98, align 1, !dbg !223, !tbaa !140
  %99 = lshr i64 %91, 16, !dbg !224
  %100 = or i64 %90, 2, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %101 = trunc i64 %99 to i8, !dbg !219
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %100, !dbg !222
  store i8 %101, i8* %102, align 2, !dbg !223, !tbaa !140
  %103 = lshr i64 %91, 24, !dbg !224
  %104 = or i64 %90, 3, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %105 = trunc i64 %103 to i8, !dbg !219
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %104, !dbg !222
  store i8 %105, i8* %106, align 1, !dbg !223, !tbaa !140
  %107 = lshr i64 %91, 32, !dbg !224
  %108 = add nuw nsw i64 %90, 4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %109 = add i64 %92, -4, !dbg !217
  %110 = icmp eq i64 %109, 0, !dbg !217
  br i1 %110, label %119, label %89, !dbg !217, !llvm.loop !227

; <label>:111:                                    ; preds = %111, %78
  %112 = phi i64 [ %80, %78 ], [ %114, %111 ]
  %113 = phi i64 [ %74, %78 ], [ %117, %111 ]
  %114 = add nsw i64 %112, -1, !dbg !212
  %115 = trunc i64 %113 to i8, !dbg !230
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %114, !dbg !232
  store i8 %115, i8* %116, align 1, !dbg !233, !tbaa !140
  %117 = lshr i64 %113, 8, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  %118 = icmp sgt i64 %112, 1, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %118, label %111, label %133, !dbg !215, !llvm.loop !237

; <label>:119:                                    ; preds = %89, %82
  %120 = phi i64 [ 0, %82 ], [ %108, %89 ]
  %121 = phi i64 [ %74, %82 ], [ %107, %89 ]
  %122 = icmp eq i64 %85, 0, !dbg !217
  br i1 %122, label %133, label %123, !dbg !217

; <label>:123:                                    ; preds = %119, %123
  %124 = phi i64 [ %130, %123 ], [ %120, %119 ]
  %125 = phi i64 [ %129, %123 ], [ %121, %119 ]
  %126 = phi i64 [ %131, %123 ], [ %85, %119 ]
  %127 = trunc i64 %125 to i8, !dbg !219
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %124, !dbg !222
  store i8 %127, i8* %128, align 1, !dbg !223, !tbaa !140
  %129 = lshr i64 %125, 8, !dbg !224
  %130 = add nuw nsw i64 %124, 1, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %131 = add i64 %126, -1, !dbg !217
  %132 = icmp eq i64 %131, 0, !dbg !217
  br i1 %132, label %133, label %123, !dbg !217, !llvm.loop !240

; <label>:133:                                    ; preds = %111, %119, %123, %77, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %134 = shl i64 %31, 32, !dbg !242
  %135 = ashr exact i64 %134, 32, !dbg !242
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %20, i64 %135) #4, !dbg !243
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #5, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br label %237, !dbg !245

; <label>:136:                                    ; preds = %64
  %137 = load i8*, i8** %18, align 8, !dbg !246, !tbaa !187
  %138 = icmp ult i8* %137, %19, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %138, label %142, label %139, !dbg !246

; <label>:139:                                    ; preds = %136
  %140 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  %141 = load i8*, i8** %18, align 8, !dbg !246, !tbaa !187
  br label %142, !dbg !246

; <label>:142:                                    ; preds = %139, %136
  %143 = phi i8* [ %141, %139 ], [ %137, %136 ], !dbg !246
  %144 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !246
  store i8* %144, i8** %18, align 8, !dbg !246, !tbaa !187
  store i8 0, i8* %143, align 1, !dbg !246, !tbaa !140
  br label %237, !dbg !248

; <label>:145:                                    ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5, !dbg !249
  %146 = add nsw i32 %27, 1, !dbg !250
  %147 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !251
  %148 = fptrunc double %147 to float, !dbg !252
  store float %148, float* %6, align 4, !dbg !253, !tbaa !254
  %149 = load i32, i32* %13, align 4, !dbg !256, !tbaa !131
  %150 = icmp eq i32 %149, 1, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %151 = bitcast float %148 to i32, !dbg !273
  %152 = trunc i32 %151 to i8, !dbg !273
  br i1 %150, label %177, label %153, !dbg !273

; <label>:153:                                    ; preds = %145
  %154 = trunc i64 %31 to i32, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %155 = icmp sgt i32 %154, 1, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %155, label %156, label %176, !dbg !277

; <label>:156:                                    ; preds = %153
  %157 = shl i64 %31, 32, !dbg !279
  %158 = ashr exact i64 %157, 32, !dbg !279
  %159 = add nsw i64 %158, -1, !dbg !279
  %160 = getelementptr inbounds i8, i8* %21, i64 %159, !dbg !281
  %161 = load i8, i8* %160, align 1, !dbg !281, !tbaa !140
  store i8 %161, i8* %21, align 4, !dbg !282, !tbaa !140
  store i8 %152, i8* %160, align 1, !dbg !283, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %162 = icmp sgt i64 %157, 12884901888, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %162, label %163, label %176, !dbg !277, !llvm.loop !284

; <label>:163:                                    ; preds = %156
  %164 = add nsw i64 %158, -2, !dbg !287
  br label %165, !dbg !277

; <label>:165:                                    ; preds = %163, %165
  %166 = phi i64 [ %164, %163 ], [ %174, %165 ]
  %167 = phi i64 [ 1, %163 ], [ %173, %165 ]
  %168 = getelementptr inbounds i8, i8* %21, i64 %167
  %169 = load i8, i8* %168, align 1, !dbg !279, !tbaa !140
  %170 = getelementptr inbounds i8, i8* %21, i64 %167, !dbg !279
  %171 = getelementptr inbounds i8, i8* %21, i64 %166, !dbg !281
  %172 = load i8, i8* %171, align 1, !dbg !281, !tbaa !140
  %173 = add nuw nsw i64 %167, 1, !dbg !288
  store i8 %172, i8* %170, align 1, !dbg !282, !tbaa !140
  store i8 %169, i8* %171, align 1, !dbg !283, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %174 = add i64 %166, -1, !dbg !287
  %175 = icmp slt i64 %173, %174, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %175, label %165, label %176, !dbg !277, !llvm.loop !284

; <label>:176:                                    ; preds = %165, %156, %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br label %177, !dbg !289

; <label>:177:                                    ; preds = %145, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %21, i64 %31) #4, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5, !dbg !292
  br label %237

; <label>:178:                                    ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5, !dbg !293
  %179 = add nsw i32 %27, 1, !dbg !294
  %180 = call double @luaL_checknumber(%struct.lua_State* %0, i32 %27) #4, !dbg !295
  store double %180, double* %7, align 8, !dbg !296, !tbaa !297
  %181 = load i32, i32* %13, align 4, !dbg !299, !tbaa !131
  %182 = icmp eq i32 %181, 1, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  %183 = bitcast double %180 to i64, !dbg !304
  %184 = trunc i64 %183 to i8, !dbg !304
  br i1 %182, label %209, label %185, !dbg !304

; <label>:185:                                    ; preds = %178
  %186 = trunc i64 %31 to i32, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  %187 = icmp sgt i32 %186, 1, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %187, label %188, label %208, !dbg !308

; <label>:188:                                    ; preds = %185
  %189 = shl i64 %31, 32, !dbg !310
  %190 = ashr exact i64 %189, 32, !dbg !310
  %191 = add nsw i64 %190, -1, !dbg !310
  %192 = getelementptr inbounds i8, i8* %22, i64 %191, !dbg !312
  %193 = load i8, i8* %192, align 1, !dbg !312, !tbaa !140
  store i8 %193, i8* %22, align 8, !dbg !313, !tbaa !140
  store i8 %184, i8* %192, align 1, !dbg !314, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  %194 = icmp sgt i64 %189, 12884901888, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %194, label %195, label %208, !dbg !308, !llvm.loop !284

; <label>:195:                                    ; preds = %188
  %196 = add nsw i64 %190, -2, !dbg !315
  br label %197, !dbg !308

; <label>:197:                                    ; preds = %195, %197
  %198 = phi i64 [ %196, %195 ], [ %206, %197 ]
  %199 = phi i64 [ 1, %195 ], [ %205, %197 ]
  %200 = getelementptr inbounds i8, i8* %22, i64 %199
  %201 = load i8, i8* %200, align 1, !dbg !310, !tbaa !140
  %202 = getelementptr inbounds i8, i8* %22, i64 %199, !dbg !310
  %203 = getelementptr inbounds i8, i8* %22, i64 %198, !dbg !312
  %204 = load i8, i8* %203, align 1, !dbg !312, !tbaa !140
  %205 = add nuw nsw i64 %199, 1, !dbg !316
  store i8 %204, i8* %202, align 1, !dbg !313, !tbaa !140
  store i8 %201, i8* %203, align 1, !dbg !314, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  %206 = add i64 %198, -1, !dbg !315
  %207 = icmp slt i64 %205, %206, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %207, label %197, label %208, !dbg !308, !llvm.loop !284

; <label>:208:                                    ; preds = %197, %188, %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br label %209, !dbg !317

; <label>:209:                                    ; preds = %178, %208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* nonnull %22, i64 %31) #4, !dbg !319
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5, !dbg !320
  br label %237

; <label>:210:                                    ; preds = %64, %64
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !321
  %211 = add nsw i32 %27, 1, !dbg !322
  %212 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 %27, i64* nonnull %8) #4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  %213 = load i64, i64* %8, align 8, !dbg !327, !tbaa !328
  br i1 %32, label %214, label %215, !dbg !326

; <label>:214:                                    ; preds = %210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br label %219, !dbg !332

; <label>:215:                                    ; preds = %210
  %216 = icmp ult i64 %213, %31, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %216, label %217, label %221, !dbg !332

; <label>:217:                                    ; preds = %215
  %218 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !332
  br label %219, !dbg !332

; <label>:219:                                    ; preds = %217, %214
  %220 = phi i64 [ %31, %217 ], [ %213, %214 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %221, !dbg !333

; <label>:221:                                    ; preds = %219, %215
  %222 = phi i64 [ %31, %215 ], [ %220, %219 ]
  call void @luaL_addlstring(%struct.luaL_Buffer* nonnull %3, i8* %212, i64 %222) #4, !dbg !333
  %223 = icmp eq i8 %25, 115, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %223, label %224, label %234, !dbg !336

; <label>:224:                                    ; preds = %221
  %225 = load i8*, i8** %18, align 8, !dbg !337, !tbaa !187
  %226 = icmp ult i8* %225, %19, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %226, label %230, label %227, !dbg !337

; <label>:227:                                    ; preds = %224
  %228 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* nonnull %3) #4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %229 = load i8*, i8** %18, align 8, !dbg !337, !tbaa !187
  br label %230, !dbg !337

; <label>:230:                                    ; preds = %227, %224
  %231 = phi i8* [ %229, %227 ], [ %225, %224 ], !dbg !337
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !337
  store i8* %232, i8** %18, align 8, !dbg !337, !tbaa !187
  store i8 0, i8* %231, align 1, !dbg !337, !tbaa !140
  %233 = add i64 %222, 1, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br label %234, !dbg !340

; <label>:234:                                    ; preds = %230, %221
  %235 = phi i64 [ %233, %230 ], [ %222, %221 ], !dbg !341
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !342
  br label %237

; <label>:236:                                    ; preds = %64
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %30, i8** nonnull %4, %struct.Header* nonnull %5) #6, !dbg !343
  br label %237, !dbg !344

; <label>:237:                                    ; preds = %236, %234, %209, %177, %142, %133
  %238 = phi i64 [ %31, %236 ], [ %235, %234 ], [ %31, %209 ], [ %31, %177 ], [ %31, %142 ], [ %31, %133 ], !dbg !345
  %239 = phi i32 [ %27, %236 ], [ %211, %234 ], [ %179, %209 ], [ %146, %177 ], [ %27, %142 ], [ %67, %133 ], !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  %240 = load i8*, i8** %4, align 8, !dbg !347, !tbaa !123
  %241 = load i8, i8* %240, align 1, !dbg !139, !tbaa !140
  %242 = icmp eq i8 %241, 0, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %242, label %246, label %243, !dbg !138, !llvm.loop !348

; <label>:243:                                    ; preds = %237
  %244 = add i64 %65, %238, !dbg !350
  %245 = load i8, i8* %240, align 1, !dbg !142, !tbaa !140
  br label %24, !dbg !138

; <label>:246:                                    ; preds = %237, %1
  call void @luaL_pushresult(%struct.luaL_Buffer* nonnull %3) #4, !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !352
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !352
  call void @llvm.lifetime.end.p0i8(i64 1048, i8* nonnull %9) #5, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  ret i32 1, !dbg !353
}

; Function Attrs: noredzone nounwind
define internal i32 @b_unpack(%struct.lua_State*) #0 !dbg !354 {
  %2 = alloca %struct.Header, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = bitcast %struct.Header* %2 to i8*, !dbg !377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !377
  %8 = bitcast i8** %3 to i8*, !dbg !378
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !378
  %9 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !379
  store i8* %9, i8** %3, align 8, !dbg !380, !tbaa !123
  %10 = bitcast i64* %4 to i8*, !dbg !381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !381
  %11 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 2, i64* nonnull %4) #4, !dbg !383
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 1) #4, !dbg !385
  %13 = icmp eq i64 %12, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %13, label %14, label %16, !dbg !387

; <label>:14:                                     ; preds = %1
  %15 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %16, !dbg !387

; <label>:16:                                     ; preds = %1, %14
  %17 = add i64 %12, -1, !dbg !388
  %18 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0, !dbg !390
  store i32 1, i32* %18, align 4, !dbg !390, !tbaa !131
  %19 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1, !dbg !390
  store i32 1, i32* %19, align 4, !dbg !390, !tbaa !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %20 = load i8, i8* %9, align 1, !dbg !392, !tbaa !140
  %21 = icmp eq i8 %20, 0, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %21, label %254, label %22, !dbg !391

; <label>:22:                                     ; preds = %16
  %23 = bitcast float* %5 to i8*
  %24 = bitcast double* %6 to i8*
  br label %25, !dbg !391

; <label>:25:                                     ; preds = %252, %22
  %26 = phi i8 [ %20, %22 ], [ %253, %252 ], !dbg !393
  %27 = phi i8* [ %9, %22 ], [ %249, %252 ]
  %28 = phi i64 [ %17, %22 ], [ %248, %252 ]
  %29 = phi i32 [ 0, %22 ], [ %247, %252 ]
  %30 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !394
  store i8* %30, i8** %3, align 8, !dbg !394, !tbaa !123
  %31 = sext i8 %26 to i32, !dbg !393
  %32 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %26, i8** nonnull %3) #6, !dbg !396
  %33 = icmp eq i64 %32, 0, !dbg !404
  %34 = icmp eq i8 %26, 99, !dbg !405
  %35 = or i1 %34, %33, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %35, label %47, label %36, !dbg !406

; <label>:36:                                     ; preds = %25
  %37 = load i32, i32* %19, align 4, !dbg !407, !tbaa !134
  %38 = sext i32 %37 to i64, !dbg !408
  %39 = icmp ugt i64 %32, %38, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %39, label %40, label %41, !dbg !410

; <label>:40:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br label %41, !dbg !411

; <label>:41:                                     ; preds = %40, %36
  %42 = phi i64 [ %38, %40 ], [ %32, %36 ]
  %43 = add i64 %42, -1, !dbg !412
  %44 = and i64 %43, %28, !dbg !413
  %45 = sub i64 %42, %44, !dbg !414
  %46 = and i64 %45, %43, !dbg !415
  br label %47, !dbg !416

; <label>:47:                                     ; preds = %25, %41
  %48 = phi i64 [ %46, %41 ], [ 0, %25 ], !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %49 = shl i64 %48, 32, !dbg !420
  %50 = ashr exact i64 %49, 32, !dbg !420
  %51 = add i64 %50, %28, !dbg !421
  %52 = load i64, i64* %4, align 8, !dbg !422, !tbaa !328
  %53 = icmp ult i64 %52, %32, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %53, label %57, label %54, !dbg !422

; <label>:54:                                     ; preds = %47
  %55 = sub i64 %52, %32, !dbg !422
  %56 = icmp ugt i64 %51, %55, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %56, label %57, label %59, !dbg !422

; <label>:57:                                     ; preds = %54, %47
  %58 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br label %59, !dbg !422

; <label>:59:                                     ; preds = %54, %57
  call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  switch i32 %31, label %241 [
    i32 98, label %60
    i32 66, label %60
    i32 104, label %60
    i32 72, label %60
    i32 108, label %60
    i32 76, label %60
    i32 84, label %60
    i32 105, label %60
    i32 73, label %60
    i32 120, label %245
    i32 102, label %161
    i32 100, label %182
    i32 99, label %202
    i32 115, label %227
  ], !dbg !424

; <label>:60:                                     ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59
  %61 = call i8* @__locale_ctype_ptr() #4, !dbg !425
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !425
  %63 = sext i8 %26 to i64, !dbg !425
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !425
  %65 = load i8, i8* %64, align 1, !dbg !425, !tbaa !140
  %66 = and i8 %65, 3, !dbg !425
  %67 = icmp eq i8 %66, 2, !dbg !425
  %68 = getelementptr inbounds i8, i8* %11, i64 %51, !dbg !426
  %69 = load i32, i32* %18, align 4, !dbg !427, !tbaa !131
  %70 = trunc i64 %32 to i32, !dbg !428
  %71 = icmp eq i32 %69, 0, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %72 = icmp sgt i32 %70, 0, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %71, label %77, label %73, !dbg !449

; <label>:73:                                     ; preds = %60
  br i1 %72, label %74, label %142, !dbg !456

; <label>:74:                                     ; preds = %73
  %75 = shl i64 %32, 32, !dbg !453
  %76 = ashr exact i64 %75, 32, !dbg !453
  br label %115, !dbg !453

; <label>:77:                                     ; preds = %60
  br i1 %72, label %78, label %142, !dbg !457

; <label>:78:                                     ; preds = %77
  %79 = and i64 %32, 4294967295
  %80 = add nsw i64 %79, -1, !dbg !460
  %81 = and i64 %32, 3, !dbg !460
  %82 = icmp ult i64 %80, 3, !dbg !460
  br i1 %82, label %125, label %83, !dbg !460

; <label>:83:                                     ; preds = %78
  %84 = sub nsw i64 %79, %81, !dbg !460
  br label %85, !dbg !460

; <label>:85:                                     ; preds = %85, %83
  %86 = phi i64 [ 0, %83 ], [ %112, %85 ]
  %87 = phi i64 [ 0, %83 ], [ %111, %85 ]
  %88 = phi i64 [ %84, %83 ], [ %113, %85 ]
  %89 = shl i64 %87, 8, !dbg !460
  %90 = getelementptr inbounds i8, i8* %68, i64 %86, !dbg !463
  %91 = load i8, i8* %90, align 1, !dbg !463, !tbaa !140
  %92 = zext i8 %91 to i64, !dbg !464
  %93 = or i64 %89, %92, !dbg !465
  %94 = or i64 %86, 1, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %95 = shl i64 %93, 8, !dbg !460
  %96 = getelementptr inbounds i8, i8* %68, i64 %94, !dbg !463
  %97 = load i8, i8* %96, align 1, !dbg !463, !tbaa !140
  %98 = zext i8 %97 to i64, !dbg !464
  %99 = or i64 %95, %98, !dbg !465
  %100 = or i64 %86, 2, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %101 = shl i64 %99, 8, !dbg !460
  %102 = getelementptr inbounds i8, i8* %68, i64 %100, !dbg !463
  %103 = load i8, i8* %102, align 1, !dbg !463, !tbaa !140
  %104 = zext i8 %103 to i64, !dbg !464
  %105 = or i64 %101, %104, !dbg !465
  %106 = or i64 %86, 3, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %107 = shl i64 %105, 8, !dbg !460
  %108 = getelementptr inbounds i8, i8* %68, i64 %106, !dbg !463
  %109 = load i8, i8* %108, align 1, !dbg !463, !tbaa !140
  %110 = zext i8 %109 to i64, !dbg !464
  %111 = or i64 %107, %110, !dbg !465
  %112 = add nuw nsw i64 %86, 4, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %113 = add i64 %88, -4, !dbg !457
  %114 = icmp eq i64 %113, 0, !dbg !457
  br i1 %114, label %125, label %85, !dbg !457, !llvm.loop !468

; <label>:115:                                    ; preds = %115, %74
  %116 = phi i64 [ %76, %74 ], [ %118, %115 ]
  %117 = phi i64 [ 0, %74 ], [ %123, %115 ]
  %118 = add nsw i64 %116, -1, !dbg !453
  %119 = shl i64 %117, 8, !dbg !471
  %120 = getelementptr inbounds i8, i8* %68, i64 %118, !dbg !473
  %121 = load i8, i8* %120, align 1, !dbg !473, !tbaa !140
  %122 = zext i8 %121 to i64, !dbg !474
  %123 = or i64 %119, %122, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  %124 = icmp sgt i64 %116, 1, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br i1 %124, label %115, label %142, !dbg !456, !llvm.loop !478

; <label>:125:                                    ; preds = %85, %78
  %126 = phi i64 [ undef, %78 ], [ %111, %85 ]
  %127 = phi i64 [ 0, %78 ], [ %112, %85 ]
  %128 = phi i64 [ 0, %78 ], [ %111, %85 ]
  %129 = icmp eq i64 %81, 0, !dbg !457
  br i1 %129, label %142, label %130, !dbg !457

; <label>:130:                                    ; preds = %125, %130
  %131 = phi i64 [ %139, %130 ], [ %127, %125 ]
  %132 = phi i64 [ %138, %130 ], [ %128, %125 ]
  %133 = phi i64 [ %140, %130 ], [ %81, %125 ]
  %134 = shl i64 %132, 8, !dbg !460
  %135 = getelementptr inbounds i8, i8* %68, i64 %131, !dbg !463
  %136 = load i8, i8* %135, align 1, !dbg !463, !tbaa !140
  %137 = zext i8 %136 to i64, !dbg !464
  %138 = or i64 %134, %137, !dbg !465
  %139 = add nuw nsw i64 %131, 1, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %140 = add i64 %133, -1, !dbg !457
  %141 = icmp eq i64 %140, 0, !dbg !457
  br i1 %141, label %142, label %130, !dbg !457, !llvm.loop !481

; <label>:142:                                    ; preds = %115, %125, %130, %77, %73
  %143 = phi i64 [ 0, %77 ], [ 0, %73 ], [ %126, %125 ], [ %138, %130 ], [ %123, %115 ], !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %67, label %146, label %144, !dbg !482

; <label>:144:                                    ; preds = %142
  %145 = uitofp i64 %143 to double, !dbg !483
  br label %158, !dbg !484

; <label>:146:                                    ; preds = %142
  %147 = shl i64 %32, 3, !dbg !485
  %148 = add i64 %147, 4294967295, !dbg !486
  %149 = and i64 %148, 4294967295, !dbg !487
  %150 = shl i64 -1, %149, !dbg !487
  %151 = and i64 %143, %150, !dbg !489
  %152 = icmp eq i64 %151, 0, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %152, label %155, label %153, !dbg !491

; <label>:153:                                    ; preds = %146
  %154 = or i64 %143, %150, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br label %155, !dbg !493

; <label>:155:                                    ; preds = %153, %146
  %156 = phi i64 [ %154, %153 ], [ %143, %146 ], !dbg !494
  %157 = sitofp i64 %156 to double, !dbg !495
  br label %158

; <label>:158:                                    ; preds = %144, %155
  %159 = phi double [ %157, %155 ], [ %145, %144 ], !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  call void @lua_pushnumber(%struct.lua_State* %0, double %159) #4, !dbg !499
  %160 = add nsw i32 %29, 1, !dbg !500
  br label %242

; <label>:161:                                    ; preds = %59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5, !dbg !501
  %162 = getelementptr inbounds i8, i8* %11, i64 %51, !dbg !502
  %163 = call i8* @memcpy(i8* nonnull %23, i8* %162, i64 %32) #4, !dbg !503
  %164 = load i32, i32* %18, align 4, !dbg !504, !tbaa !131
  %165 = icmp eq i32 %164, 1, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %165, label %178, label %166, !dbg !510

; <label>:166:                                    ; preds = %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br label %167, !dbg !513

; <label>:167:                                    ; preds = %167, %166
  %168 = phi i64 [ 0, %166 ], [ %174, %167 ]
  %169 = phi i64 [ 3, %166 ], [ %175, %167 ]
  %170 = getelementptr inbounds i8, i8* %23, i64 %168, !dbg !513
  %171 = load i8, i8* %170, align 1, !dbg !513, !tbaa !140
  %172 = getelementptr inbounds i8, i8* %23, i64 %169, !dbg !515
  %173 = load i8, i8* %172, align 1, !dbg !515, !tbaa !140
  %174 = add nuw nsw i64 %168, 1, !dbg !516
  store i8 %173, i8* %170, align 1, !dbg !517, !tbaa !140
  store i8 %171, i8* %172, align 1, !dbg !518, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  %175 = add nsw i64 %169, -1, !dbg !519
  %176 = icmp slt i64 %174, %175, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %176, label %167, label %177, !dbg !512, !llvm.loop !284

; <label>:177:                                    ; preds = %167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br label %178, !dbg !521

; <label>:178:                                    ; preds = %161, %177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  %179 = load float, float* %5, align 4, !dbg !523, !tbaa !254
  %180 = fpext float %179 to double, !dbg !523
  call void @lua_pushnumber(%struct.lua_State* %0, double %180) #4, !dbg !525
  %181 = add nsw i32 %29, 1, !dbg !526
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5, !dbg !527
  br label %242

; <label>:182:                                    ; preds = %59
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #5, !dbg !528
  %183 = getelementptr inbounds i8, i8* %11, i64 %51, !dbg !529
  %184 = call i8* @memcpy(i8* nonnull %24, i8* %183, i64 %32) #4, !dbg !530
  %185 = load i32, i32* %18, align 4, !dbg !531, !tbaa !131
  %186 = icmp eq i32 %185, 1, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %186, label %199, label %187, !dbg !537

; <label>:187:                                    ; preds = %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %188, !dbg !540

; <label>:188:                                    ; preds = %188, %187
  %189 = phi i64 [ 0, %187 ], [ %195, %188 ]
  %190 = phi i64 [ 7, %187 ], [ %196, %188 ]
  %191 = getelementptr inbounds i8, i8* %24, i64 %189, !dbg !540
  %192 = load i8, i8* %191, align 1, !dbg !540, !tbaa !140
  %193 = getelementptr inbounds i8, i8* %24, i64 %190, !dbg !542
  %194 = load i8, i8* %193, align 1, !dbg !542, !tbaa !140
  %195 = add nuw nsw i64 %189, 1, !dbg !543
  store i8 %194, i8* %191, align 1, !dbg !544, !tbaa !140
  store i8 %192, i8* %193, align 1, !dbg !545, !tbaa !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %196 = add nsw i64 %190, -1, !dbg !546
  %197 = icmp slt i64 %195, %196, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %197, label %188, label %198, !dbg !539, !llvm.loop !284

; <label>:198:                                    ; preds = %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br label %199, !dbg !548

; <label>:199:                                    ; preds = %182, %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %200 = load double, double* %6, align 8, !dbg !550, !tbaa !297
  call void @lua_pushnumber(%struct.lua_State* %0, double %200) #4, !dbg !552
  %201 = add nsw i32 %29, 1, !dbg !553
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #5, !dbg !554
  br label %242

; <label>:202:                                    ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %33, label %203, label %222, !dbg !555

; <label>:203:                                    ; preds = %202
  %204 = icmp eq i32 %29, 0, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %204, label %208, label %205, !dbg !561

; <label>:205:                                    ; preds = %203
  %206 = call i32 @lua_isnumber(%struct.lua_State* %0, i32 -1) #4, !dbg !562
  %207 = icmp eq i32 %206, 0, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br i1 %207, label %208, label %210, !dbg !563

; <label>:208:                                    ; preds = %205, %203
  %209 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br label %210, !dbg !564

; <label>:210:                                    ; preds = %205, %208
  %211 = call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #4, !dbg !565
  %212 = fptoui double %211 to i64, !dbg !565
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #4, !dbg !566
  %213 = add nsw i32 %29, -1, !dbg !567
  %214 = load i64, i64* %4, align 8, !dbg !568, !tbaa !328
  %215 = icmp ult i64 %214, %212, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br i1 %215, label %219, label %216, !dbg !568

; <label>:216:                                    ; preds = %210
  %217 = sub i64 %214, %212, !dbg !568
  %218 = icmp ugt i64 %51, %217, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br i1 %218, label %219, label %221, !dbg !568

; <label>:219:                                    ; preds = %216, %210
  %220 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br label %221, !dbg !568

; <label>:221:                                    ; preds = %216, %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br label %222, !dbg !569

; <label>:222:                                    ; preds = %221, %202
  %223 = phi i64 [ %212, %221 ], [ %32, %202 ], !dbg !418
  %224 = phi i32 [ %213, %221 ], [ %29, %202 ], !dbg !570
  %225 = getelementptr inbounds i8, i8* %11, i64 %51, !dbg !571
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %225, i64 %223) #4, !dbg !572
  %226 = add nsw i32 %224, 1, !dbg !573
  br label %242, !dbg !574

; <label>:227:                                    ; preds = %59
  %228 = getelementptr inbounds i8, i8* %11, i64 %51, !dbg !575
  %229 = load i64, i64* %4, align 8, !dbg !576, !tbaa !328
  %230 = sub i64 %229, %51, !dbg !577
  %231 = call i8* @memchr(i8* %228, i32 0, i64 %230) #4, !dbg !578
  %232 = icmp eq i8* %231, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %232, label %233, label %235, !dbg !582

; <label>:233:                                    ; preds = %227
  %234 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br label %235, !dbg !583

; <label>:235:                                    ; preds = %233, %227
  %236 = ptrtoint i8* %231 to i64, !dbg !584
  %237 = ptrtoint i8* %228 to i64, !dbg !584
  %238 = sub i64 %236, %237, !dbg !584
  %239 = add nsw i64 %238, 1, !dbg !585
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %228, i64 %238) #4, !dbg !586
  %240 = add nsw i32 %29, 1, !dbg !587
  br label %242

; <label>:241:                                    ; preds = %59
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %31, i8** nonnull %3, %struct.Header* nonnull %2) #6, !dbg !588
  br label %242, !dbg !589

; <label>:242:                                    ; preds = %158, %178, %199, %222, %235, %241
  %243 = phi i64 [ %32, %158 ], [ %32, %178 ], [ %32, %199 ], [ %223, %222 ], [ %239, %235 ], [ %32, %241 ]
  %244 = phi i32 [ %160, %158 ], [ %181, %178 ], [ %201, %199 ], [ %226, %222 ], [ %240, %235 ], [ %29, %241 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %245, !dbg !590

; <label>:245:                                    ; preds = %242, %59
  %246 = phi i64 [ %32, %59 ], [ %243, %242 ], !dbg !418
  %247 = phi i32 [ %29, %59 ], [ %244, %242 ], !dbg !591
  %248 = add i64 %246, %51, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %249 = load i8*, i8** %3, align 8, !dbg !592, !tbaa !123
  %250 = load i8, i8* %249, align 1, !dbg !392, !tbaa !140
  %251 = icmp eq i8 %250, 0, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %251, label %254, label %252, !dbg !391, !llvm.loop !593

; <label>:252:                                    ; preds = %245
  %253 = load i8, i8* %249, align 1, !dbg !393, !tbaa !140
  br label %25, !dbg !391

; <label>:254:                                    ; preds = %245, %16
  %255 = phi i32 [ 0, %16 ], [ %247, %245 ], !dbg !389
  %256 = phi i64 [ %17, %16 ], [ %248, %245 ], !dbg !418
  %257 = add i64 %256, 1, !dbg !595
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %257) #4, !dbg !596
  %258 = add nsw i32 %255, 1, !dbg !597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  ret i32 %258, !dbg !599
}

; Function Attrs: noredzone nounwind
define internal i32 @b_size(%struct.lua_State*) #0 !dbg !600 {
  %2 = alloca %struct.Header, align 4
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.Header* %2 to i8*, !dbg !610
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !610
  %5 = bitcast i8** %3 to i8*, !dbg !611
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !611
  %6 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #4, !dbg !612
  store i8* %6, i8** %3, align 8, !dbg !613, !tbaa !123
  %7 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 0, !dbg !615
  store i32 1, i32* %7, align 4, !dbg !615, !tbaa !131
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %2, i64 0, i32 1, !dbg !615
  store i32 1, i32* %8, align 4, !dbg !615, !tbaa !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %9 = load i8, i8* %6, align 1, !dbg !617, !tbaa !140
  %10 = icmp eq i8 %9, 0, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %10, label %61, label %11, !dbg !616

; <label>:11:                                     ; preds = %1, %59
  %12 = phi i8 [ %60, %59 ], [ %9, %1 ], !dbg !618
  %13 = phi i8* [ %56, %59 ], [ %6, %1 ]
  %14 = phi i64 [ %55, %59 ], [ 0, %1 ]
  %15 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !619
  store i8* %15, i8** %3, align 8, !dbg !619, !tbaa !123
  %16 = sext i8 %12 to i32, !dbg !618
  %17 = call fastcc i64 @optsize(%struct.lua_State* %0, i8 signext %12, i8** nonnull %3) #6, !dbg !621
  %18 = icmp eq i64 %17, 0, !dbg !629
  %19 = icmp eq i8 %12, 99, !dbg !630
  %20 = or i1 %19, %18, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %20, label %32, label %21, !dbg !631

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %8, align 4, !dbg !632, !tbaa !134
  %23 = sext i32 %22 to i64, !dbg !633
  %24 = icmp ugt i64 %17, %23, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %24, label %25, label %26, !dbg !635

; <label>:25:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %26, !dbg !636

; <label>:26:                                     ; preds = %25, %21
  %27 = phi i64 [ %23, %25 ], [ %17, %21 ]
  %28 = add i64 %27, -1, !dbg !637
  %29 = and i64 %28, %14, !dbg !638
  %30 = sub i64 %27, %29, !dbg !639
  %31 = and i64 %30, %28, !dbg !640
  br label %32, !dbg !641

; <label>:32:                                     ; preds = %11, %26
  %33 = phi i64 [ %31, %26 ], [ 0, %11 ], !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %34 = shl i64 %33, 32, !dbg !645
  %35 = ashr exact i64 %34, 32, !dbg !645
  %36 = icmp eq i8 %12, 115, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %36, label %37, label %39, !dbg !648

; <label>:37:                                     ; preds = %32
  %38 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !649
  br label %43, !dbg !649

; <label>:39:                                     ; preds = %32
  %40 = and i1 %19, %18, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %40, label %41, label %44, !dbg !650

; <label>:41:                                     ; preds = %39
  %42 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !652
  br label %43, !dbg !652

; <label>:43:                                     ; preds = %37, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br label %44, !dbg !654

; <label>:44:                                     ; preds = %43, %39
  %45 = tail call i8* @__locale_ctype_ptr() #4, !dbg !654
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !654
  %47 = sext i8 %12 to i64, !dbg !654
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !654
  %49 = load i8, i8* %48, align 1, !dbg !654, !tbaa !140
  %50 = and i8 %49, 7, !dbg !654
  %51 = icmp eq i8 %50, 0, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %51, label %52, label %53, !dbg !656

; <label>:52:                                     ; preds = %44
  call fastcc void @controloptions(%struct.lua_State* %0, i32 %16, i8** nonnull %3, %struct.Header* nonnull %2) #6, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br label %53, !dbg !657

; <label>:53:                                     ; preds = %44, %52
  %54 = add i64 %17, %14, !dbg !658
  %55 = add i64 %54, %35, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %56 = load i8*, i8** %3, align 8, !dbg !660, !tbaa !123
  %57 = load i8, i8* %56, align 1, !dbg !617, !tbaa !140
  %58 = icmp eq i8 %57, 0, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %58, label %61, label %59, !dbg !616, !llvm.loop !661

; <label>:59:                                     ; preds = %53
  %60 = load i8, i8* %56, align 1, !dbg !618, !tbaa !140
  br label %11, !dbg !616

; <label>:61:                                     ; preds = %53, %1
  %62 = phi i64 [ 0, %1 ], [ %55, %53 ], !dbg !643
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %62) #4, !dbg !663
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  ret i32 1, !dbg !665
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
define internal fastcc i64 @optsize(%struct.lua_State*, i8 signext, i8** nocapture) unnamed_addr #0 !dbg !666 {
  %4 = sext i8 %1 to i32, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  switch i32 %4, label %80 [
    i32 66, label %81
    i32 98, label %81
    i32 72, label %5
    i32 104, label %5
    i32 76, label %6
    i32 108, label %6
    i32 84, label %7
    i32 102, label %8
    i32 100, label %9
    i32 120, label %81
    i32 99, label %10
    i32 105, label %42
    i32 73, label %42
  ], !dbg !681

; <label>:5:                                      ; preds = %3, %3
  br label %81, !dbg !682

; <label>:6:                                      ; preds = %3, %3
  br label %81, !dbg !683

; <label>:7:                                      ; preds = %3
  br label %81, !dbg !684

; <label>:8:                                      ; preds = %3
  br label %81, !dbg !685

; <label>:9:                                      ; preds = %3
  br label %81, !dbg !686

; <label>:10:                                     ; preds = %3
  %11 = tail call i8* @__locale_ctype_ptr() #4, !dbg !699
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !699
  %13 = load i8*, i8** %2, align 8, !dbg !699, !tbaa !123
  %14 = load i8, i8* %13, align 1, !dbg !699, !tbaa !140
  %15 = sext i8 %14 to i64, !dbg !699
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !699
  %17 = load i8, i8* %16, align 1, !dbg !699, !tbaa !140
  %18 = and i8 %17, 4, !dbg !699
  %19 = icmp eq i8 %18, 0, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %19, label %40, label %20, !dbg !700

; <label>:20:                                     ; preds = %10, %20
  %21 = phi i8* [ %31, %20 ], [ %13, %10 ], !dbg !702
  %22 = phi i32 [ %28, %20 ], [ 0, %10 ], !dbg !704
  %23 = mul nsw i32 %22, 10, !dbg !706
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !702
  store i8* %24, i8** %2, align 8, !dbg !702, !tbaa !123
  %25 = load i8, i8* %21, align 1, !dbg !707, !tbaa !140
  %26 = sext i8 %25 to i32, !dbg !707
  %27 = add i32 %23, -48, !dbg !708
  %28 = add i32 %27, %26, !dbg !709
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !710
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !710
  %31 = load i8*, i8** %2, align 8, !dbg !710, !tbaa !123
  %32 = load i8, i8* %31, align 1, !dbg !710, !tbaa !140
  %33 = sext i8 %32 to i64, !dbg !710
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !710
  %35 = load i8, i8* %34, align 1, !dbg !710, !tbaa !140
  %36 = and i8 %35, 4, !dbg !710
  %37 = icmp eq i8 %36, 0, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %37, label %38, label %20, !dbg !711, !llvm.loop !712

; <label>:38:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = sext i32 %28 to i64
  br label %40

; <label>:40:                                     ; preds = %10, %38
  %41 = phi i64 [ %39, %38 ], [ 1, %10 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br label %81, !dbg !716

; <label>:42:                                     ; preds = %3, %3
  %43 = tail call i8* @__locale_ctype_ptr() #4, !dbg !720
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !720
  %45 = load i8*, i8** %2, align 8, !dbg !720, !tbaa !123
  %46 = load i8, i8* %45, align 1, !dbg !720, !tbaa !140
  %47 = sext i8 %46 to i64, !dbg !720
  %48 = getelementptr inbounds i8, i8* %44, i64 %47, !dbg !720
  %49 = load i8, i8* %48, align 1, !dbg !720, !tbaa !140
  %50 = and i8 %49, 4, !dbg !720
  %51 = icmp eq i8 %50, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %51, label %52, label %53, !dbg !721

; <label>:52:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br label %75, !dbg !725

; <label>:53:                                     ; preds = %42, %53
  %54 = phi i8* [ %64, %53 ], [ %45, %42 ], !dbg !726
  %55 = phi i32 [ %61, %53 ], [ 0, %42 ], !dbg !727
  %56 = mul nsw i32 %55, 10, !dbg !729
  %57 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !726
  store i8* %57, i8** %2, align 8, !dbg !726, !tbaa !123
  %58 = load i8, i8* %54, align 1, !dbg !730, !tbaa !140
  %59 = sext i8 %58 to i32, !dbg !730
  %60 = add i32 %56, -48, !dbg !731
  %61 = add i32 %60, %59, !dbg !732
  %62 = tail call i8* @__locale_ctype_ptr() #4, !dbg !733
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !733
  %64 = load i8*, i8** %2, align 8, !dbg !733, !tbaa !123
  %65 = load i8, i8* %64, align 1, !dbg !733, !tbaa !140
  %66 = sext i8 %65 to i64, !dbg !733
  %67 = getelementptr inbounds i8, i8* %63, i64 %66, !dbg !733
  %68 = load i8, i8* %67, align 1, !dbg !733, !tbaa !140
  %69 = and i8 %68, 4, !dbg !733
  %70 = icmp eq i8 %69, 0, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br i1 %70, label %71, label %53, !dbg !734, !llvm.loop !712

; <label>:71:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %72 = icmp sgt i32 %61, 32, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %72, label %73, label %77, !dbg !725

; <label>:73:                                     ; preds = %71
  %74 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 32) #4, !dbg !737
  br label %75, !dbg !737

; <label>:75:                                     ; preds = %73, %52
  %76 = phi i32 [ %61, %73 ], [ 4, %52 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %77, !dbg !739

; <label>:77:                                     ; preds = %75, %71
  %78 = phi i32 [ %61, %71 ], [ %76, %75 ]
  %79 = sext i32 %78 to i64, !dbg !739
  br label %81

; <label>:80:                                     ; preds = %3
  br label %81, !dbg !740

; <label>:81:                                     ; preds = %3, %3, %3, %80, %77, %40, %9, %8, %7, %6, %5
  %82 = phi i64 [ 0, %80 ], [ %79, %77 ], [ %41, %40 ], [ 8, %9 ], [ 4, %8 ], [ 8, %7 ], [ 8, %6 ], [ 2, %5 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  ret i64 %82, !dbg !742
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
define internal fastcc void @controloptions(%struct.lua_State*, i32, i8** nocapture, %struct.Header* nocapture) unnamed_addr #0 !dbg !743 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  switch i32 %1, label %51 [
    i32 32, label %55
    i32 62, label %5
    i32 60, label %7
    i32 33, label %9
  ], !dbg !760

; <label>:5:                                      ; preds = %4
  %6 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0, !dbg !761
  store i32 0, i32* %6, align 4, !dbg !762, !tbaa !131
  br label %54, !dbg !763

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 0, !dbg !764
  store i32 1, i32* %8, align 4, !dbg !765, !tbaa !131
  br label %54, !dbg !766

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @__locale_ctype_ptr() #4, !dbg !770
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !770
  %12 = load i8*, i8** %2, align 8, !dbg !770, !tbaa !123
  %13 = load i8, i8* %12, align 1, !dbg !770, !tbaa !140
  %14 = sext i8 %13 to i64, !dbg !770
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !770
  %16 = load i8, i8* %15, align 1, !dbg !770, !tbaa !140
  %17 = and i8 %16, 4, !dbg !770
  %18 = icmp eq i8 %17, 0, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %18, label %19, label %20, !dbg !771

; <label>:19:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br label %40, !dbg !775

; <label>:20:                                     ; preds = %9, %20
  %21 = phi i8* [ %31, %20 ], [ %12, %9 ], !dbg !777
  %22 = phi i32 [ %28, %20 ], [ 0, %9 ], !dbg !778
  %23 = mul nsw i32 %22, 10, !dbg !780
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !777
  store i8* %24, i8** %2, align 8, !dbg !777, !tbaa !123
  %25 = load i8, i8* %21, align 1, !dbg !781, !tbaa !140
  %26 = sext i8 %25 to i32, !dbg !781
  %27 = add i32 %23, -48, !dbg !782
  %28 = add i32 %27, %26, !dbg !783
  %29 = tail call i8* @__locale_ctype_ptr() #4, !dbg !784
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !784
  %31 = load i8*, i8** %2, align 8, !dbg !784, !tbaa !123
  %32 = load i8, i8* %31, align 1, !dbg !784, !tbaa !140
  %33 = sext i8 %32 to i64, !dbg !784
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !784
  %35 = load i8, i8* %34, align 1, !dbg !784, !tbaa !140
  %36 = and i8 %35, 4, !dbg !784
  %37 = icmp eq i8 %36, 0, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %37, label %38, label %20, !dbg !785, !llvm.loop !712

; <label>:38:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %39 = icmp sgt i32 %28, 0, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %39, label %40, label %45, !dbg !775

; <label>:40:                                     ; preds = %19, %38
  %41 = phi i32 [ 8, %19 ], [ %28, %38 ]
  %42 = add nsw i32 %41, -1, !dbg !775
  %43 = and i32 %42, %41, !dbg !775
  %44 = icmp eq i32 %43, 0, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br i1 %44, label %48, label %45, !dbg !786

; <label>:45:                                     ; preds = %40, %38
  %46 = phi i32 [ %41, %40 ], [ %28, %38 ]
  %47 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %46) #4, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br label %48, !dbg !787

; <label>:48:                                     ; preds = %45, %40
  %49 = phi i32 [ %46, %45 ], [ %41, %40 ]
  %50 = getelementptr inbounds %struct.Header, %struct.Header* %3, i64 0, i32 1, !dbg !788
  store i32 %49, i32* %50, align 4, !dbg !789, !tbaa !134
  br label %54

; <label>:51:                                     ; preds = %4
  %52 = tail call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %1) #4, !dbg !790
  %53 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* %52) #4, !dbg !792
  br label %54, !dbg !793

; <label>:54:                                     ; preds = %51, %48, %7, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %55, !dbg !794

; <label>:55:                                     ; preds = %54, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  ret void, !dbg !794
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
!138 = !DILocation(line: 215, column: 3, scope: !59)
!139 = !DILocation(line: 215, column: 10, scope: !59)
!140 = !{!125, !125, i64 0}
!141 = !DILocation(line: 215, column: 15, scope: !59)
!142 = !DILocation(line: 216, column: 15, scope: !83)
!143 = !DILocation(line: 216, column: 19, scope: !83)
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
!166 = !DILocation(line: 136, column: 32, scope: !163, inlinedAt: !158)
!167 = !DILocation(line: 140, column: 1, scope: !149, inlinedAt: !158)
!168 = !DILocation(line: 218, column: 9, scope: !83)
!169 = !DILocation(line: 220, column: 5, scope: !83)
!170 = !DILocation(line: 137, column: 25, scope: !171, inlinedAt: !158)
!171 = distinct !DILexicalBlock(scope: !149, file: !3, line: 137, column: 7)
!172 = !DILocation(line: 137, column: 14, scope: !171, inlinedAt: !158)
!173 = !DILocation(line: 137, column: 12, scope: !171, inlinedAt: !158)
!174 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !158)
!175 = !DILocation(line: 138, column: 5, scope: !171, inlinedAt: !158)
!176 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !158)
!177 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !158)
!178 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !158)
!179 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !158)
!180 = !DILocation(line: 139, column: 10, scope: !149, inlinedAt: !158)
!181 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !158)
!182 = !DILocation(line: 219, column: 18, scope: !83)
!183 = !DILocation(line: 219, column: 15, scope: !83)
!184 = !DILocation(line: 220, column: 22, scope: !83)
!185 = !DILocation(line: 220, column: 19, scope: !83)
!186 = !DILocation(line: 220, column: 27, scope: !83)
!187 = !{!188, !124, i64 0}
!188 = !{!"luaL_Buffer", !124, i64 0, !133, i64 8, !124, i64 16, !125, i64 24}
!189 = distinct !{!189, !169, !186}
!190 = !DILocation(line: 221, column: 5, scope: !83)
!191 = !DILocation(line: 224, column: 30, scope: !117)
!192 = !DILocation(line: 224, column: 36, scope: !117)
!193 = !DILocation(line: 224, column: 44, scope: !117)
!194 = !DILocation(line: 167, column: 36, scope: !95, inlinedAt: !116)
!195 = !DILocation(line: 167, column: 52, scope: !95, inlinedAt: !116)
!196 = !DILocation(line: 167, column: 59, scope: !95, inlinedAt: !116)
!197 = !DILocation(line: 167, column: 68, scope: !95, inlinedAt: !116)
!198 = !DILocation(line: 168, column: 29, scope: !95, inlinedAt: !116)
!199 = !DILocation(line: 169, column: 18, scope: !95, inlinedAt: !116)
!200 = !DILocation(line: 169, column: 14, scope: !95, inlinedAt: !116)
!201 = !DILocation(line: 171, column: 3, scope: !95, inlinedAt: !116)
!202 = !DILocation(line: 172, column: 9, scope: !203, inlinedAt: !116)
!203 = distinct !DILexicalBlock(scope: !95, file: !3, line: 172, column: 7)
!204 = !DILocation(line: 172, column: 7, scope: !95, inlinedAt: !116)
!205 = !DILocation(line: 173, column: 23, scope: !203, inlinedAt: !116)
!206 = !DILocation(line: 170, column: 12, scope: !95, inlinedAt: !116)
!207 = !DILocation(line: 175, column: 13, scope: !203, inlinedAt: !116)
!208 = !DILocation(line: 176, column: 14, scope: !109, inlinedAt: !116)
!209 = !DILocation(line: 176, column: 7, scope: !95, inlinedAt: !116)
!210 = !DILocation(line: 0, scope: !211, inlinedAt: !116)
!211 = distinct !DILexicalBlock(scope: !111, file: !3, line: 185, column: 5)
!212 = !DILocation(line: 0, scope: !213, inlinedAt: !116)
!213 = distinct !DILexicalBlock(scope: !211, file: !3, line: 185, column: 5)
!214 = !DILocation(line: 184, column: 9, scope: !111, inlinedAt: !116)
!215 = !DILocation(line: 185, column: 5, scope: !211, inlinedAt: !116)
!216 = !DILocation(line: 177, column: 9, scope: !108, inlinedAt: !116)
!217 = !DILocation(line: 178, column: 5, scope: !218, inlinedAt: !116)
!218 = distinct !DILexicalBlock(scope: !108, file: !3, line: 178, column: 5)
!219 = !DILocation(line: 179, column: 17, scope: !220, inlinedAt: !116)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 178, column: 32)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 178, column: 5)
!222 = !DILocation(line: 179, column: 7, scope: !220, inlinedAt: !116)
!223 = !DILocation(line: 179, column: 15, scope: !220, inlinedAt: !116)
!224 = !DILocation(line: 180, column: 13, scope: !220, inlinedAt: !116)
!225 = !DILocation(line: 178, column: 28, scope: !221, inlinedAt: !116)
!226 = !DILocation(line: 178, column: 5, scope: !221, inlinedAt: !116)
!227 = distinct !{!227, !228, !229}
!228 = !DILocation(line: 178, column: 5, scope: !218)
!229 = !DILocation(line: 181, column: 5, scope: !218)
!230 = !DILocation(line: 186, column: 17, scope: !231, inlinedAt: !116)
!231 = distinct !DILexicalBlock(scope: !213, file: !3, line: 185, column: 37)
!232 = !DILocation(line: 186, column: 7, scope: !231, inlinedAt: !116)
!233 = !DILocation(line: 186, column: 15, scope: !231, inlinedAt: !116)
!234 = !DILocation(line: 187, column: 13, scope: !231, inlinedAt: !116)
!235 = !DILocation(line: 185, column: 5, scope: !213, inlinedAt: !116)
!236 = !DILocation(line: 185, column: 26, scope: !213, inlinedAt: !116)
!237 = distinct !{!237, !238, !239}
!238 = !DILocation(line: 185, column: 5, scope: !211)
!239 = !DILocation(line: 188, column: 5, scope: !211)
!240 = distinct !{!240, !241}
!241 = !{!"llvm.loop.unroll.disable"}
!242 = !DILocation(line: 190, column: 28, scope: !95, inlinedAt: !116)
!243 = !DILocation(line: 190, column: 3, scope: !95, inlinedAt: !116)
!244 = !DILocation(line: 191, column: 1, scope: !95, inlinedAt: !116)
!245 = !DILocation(line: 225, column: 9, scope: !117)
!246 = !DILocation(line: 228, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !88, file: !3, line: 227, column: 17)
!248 = !DILocation(line: 229, column: 9, scope: !247)
!249 = !DILocation(line: 232, column: 9, scope: !87)
!250 = !DILocation(line: 232, column: 49, scope: !87)
!251 = !DILocation(line: 232, column: 26, scope: !87)
!252 = !DILocation(line: 232, column: 19, scope: !87)
!253 = !DILocation(line: 232, column: 15, scope: !87)
!254 = !{!255, !255, i64 0}
!255 = !{!"float", !125, i64 0}
!256 = !DILocation(line: 233, column: 42, scope: !87)
!257 = !DILocalVariable(name: "b", arg: 1, scope: !258, file: !3, line: 194, type: !8)
!258 = distinct !DISubprogram(name: "correctbytes", scope: !3, file: !3, line: 194, type: !259, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !8, !14, !14}
!261 = !{!257, !262, !263, !264, !267}
!262 = !DILocalVariable(name: "size", arg: 2, scope: !258, file: !3, line: 194, type: !14)
!263 = !DILocalVariable(name: "endian", arg: 3, scope: !258, file: !3, line: 194, type: !14)
!264 = !DILocalVariable(name: "i", scope: !265, file: !3, line: 196, type: !14)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 195, column: 32)
!266 = distinct !DILexicalBlock(scope: !258, file: !3, line: 195, column: 7)
!267 = !DILocalVariable(name: "temp", scope: !268, file: !3, line: 198, type: !6)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 197, column: 24)
!269 = !DILocation(line: 194, column: 33, scope: !258, inlinedAt: !270)
!270 = distinct !DILocation(line: 233, column: 9, scope: !87)
!271 = !DILocation(line: 194, column: 50, scope: !258, inlinedAt: !270)
!272 = !DILocation(line: 195, column: 14, scope: !266, inlinedAt: !270)
!273 = !DILocation(line: 195, column: 7, scope: !258, inlinedAt: !270)
!274 = !DILocation(line: 233, column: 34, scope: !87)
!275 = !DILocation(line: 194, column: 40, scope: !258, inlinedAt: !270)
!276 = !DILocation(line: 196, column: 9, scope: !265, inlinedAt: !270)
!277 = !DILocation(line: 197, column: 5, scope: !265, inlinedAt: !270)
!278 = !DILocation(line: 197, column: 14, scope: !265, inlinedAt: !270)
!279 = !DILocation(line: 198, column: 19, scope: !268, inlinedAt: !270)
!280 = !DILocation(line: 198, column: 12, scope: !268, inlinedAt: !270)
!281 = !DILocation(line: 199, column: 16, scope: !268, inlinedAt: !270)
!282 = !DILocation(line: 199, column: 14, scope: !268, inlinedAt: !270)
!283 = !DILocation(line: 200, column: 15, scope: !268, inlinedAt: !270)
!284 = distinct !{!284, !285, !286}
!285 = !DILocation(line: 197, column: 5, scope: !265)
!286 = !DILocation(line: 201, column: 5, scope: !265)
!287 = !DILocation(line: 197, column: 16, scope: !265, inlinedAt: !270)
!288 = !DILocation(line: 199, column: 10, scope: !268, inlinedAt: !270)
!289 = !DILocation(line: 202, column: 3, scope: !265, inlinedAt: !270)
!290 = !DILocation(line: 203, column: 1, scope: !258, inlinedAt: !270)
!291 = !DILocation(line: 234, column: 9, scope: !87)
!292 = !DILocation(line: 236, column: 7, scope: !88)
!293 = !DILocation(line: 238, column: 9, scope: !90)
!294 = !DILocation(line: 238, column: 43, scope: !90)
!295 = !DILocation(line: 238, column: 20, scope: !90)
!296 = !DILocation(line: 238, column: 16, scope: !90)
!297 = !{!298, !298, i64 0}
!298 = !{!"double", !125, i64 0}
!299 = !DILocation(line: 239, column: 42, scope: !90)
!300 = !DILocation(line: 194, column: 33, scope: !258, inlinedAt: !301)
!301 = distinct !DILocation(line: 239, column: 9, scope: !90)
!302 = !DILocation(line: 194, column: 50, scope: !258, inlinedAt: !301)
!303 = !DILocation(line: 195, column: 14, scope: !266, inlinedAt: !301)
!304 = !DILocation(line: 195, column: 7, scope: !258, inlinedAt: !301)
!305 = !DILocation(line: 239, column: 34, scope: !90)
!306 = !DILocation(line: 194, column: 40, scope: !258, inlinedAt: !301)
!307 = !DILocation(line: 196, column: 9, scope: !265, inlinedAt: !301)
!308 = !DILocation(line: 197, column: 5, scope: !265, inlinedAt: !301)
!309 = !DILocation(line: 197, column: 14, scope: !265, inlinedAt: !301)
!310 = !DILocation(line: 198, column: 19, scope: !268, inlinedAt: !301)
!311 = !DILocation(line: 198, column: 12, scope: !268, inlinedAt: !301)
!312 = !DILocation(line: 199, column: 16, scope: !268, inlinedAt: !301)
!313 = !DILocation(line: 199, column: 14, scope: !268, inlinedAt: !301)
!314 = !DILocation(line: 200, column: 15, scope: !268, inlinedAt: !301)
!315 = !DILocation(line: 197, column: 16, scope: !265, inlinedAt: !301)
!316 = !DILocation(line: 199, column: 10, scope: !268, inlinedAt: !301)
!317 = !DILocation(line: 202, column: 3, scope: !265, inlinedAt: !301)
!318 = !DILocation(line: 203, column: 1, scope: !258, inlinedAt: !301)
!319 = !DILocation(line: 240, column: 9, scope: !90)
!320 = !DILocation(line: 242, column: 7, scope: !88)
!321 = !DILocation(line: 244, column: 9, scope: !92)
!322 = !DILocation(line: 245, column: 49, scope: !92)
!323 = !DILocation(line: 244, column: 16, scope: !92)
!324 = !DILocation(line: 245, column: 25, scope: !92)
!325 = !DILocation(line: 245, column: 21, scope: !92)
!326 = !DILocation(line: 246, column: 13, scope: !92)
!327 = !DILocation(line: 0, scope: !92)
!328 = !{!329, !329, i64 0}
!329 = !{!"long", !125, i64 0}
!330 = !DILocation(line: 246, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !92, file: !3, line: 246, column: 13)
!332 = !DILocation(line: 247, column: 9, scope: !92)
!333 = !DILocation(line: 248, column: 9, scope: !92)
!334 = !DILocation(line: 249, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !92, file: !3, line: 249, column: 13)
!336 = !DILocation(line: 249, column: 13, scope: !92)
!337 = !DILocation(line: 250, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 249, column: 25)
!339 = !DILocation(line: 251, column: 15, scope: !338)
!340 = !DILocation(line: 252, column: 9, scope: !338)
!341 = !DILocation(line: 0, scope: !331)
!342 = !DILocation(line: 254, column: 7, scope: !88)
!343 = !DILocation(line: 255, column: 16, scope: !88)
!344 = !DILocation(line: 256, column: 5, scope: !88)
!345 = !DILocation(line: 0, scope: !83)
!346 = !DILocation(line: 0, scope: !117)
!347 = !DILocation(line: 215, column: 11, scope: !59)
!348 = distinct !{!348, !138, !349}
!349 = !DILocation(line: 258, column: 3, scope: !59)
!350 = !DILocation(line: 257, column: 15, scope: !83)
!351 = !DILocation(line: 259, column: 3, scope: !59)
!352 = !DILocation(line: 261, column: 1, scope: !59)
!353 = !DILocation(line: 260, column: 3, scope: !59)
!354 = distinct !DISubprogram(name: "b_unpack", scope: !3, file: !3, line: 291, type: !42, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !365, !366, !369, !370, !372, !374}
!356 = !DILocalVariable(name: "L", arg: 1, scope: !354, file: !3, line: 291, type: !44)
!357 = !DILocalVariable(name: "h", scope: !354, file: !3, line: 292, type: !75)
!358 = !DILocalVariable(name: "fmt", scope: !354, file: !3, line: 293, type: !18)
!359 = !DILocalVariable(name: "ld", scope: !354, file: !3, line: 294, type: !9)
!360 = !DILocalVariable(name: "data", scope: !354, file: !3, line: 295, type: !18)
!361 = !DILocalVariable(name: "pos", scope: !354, file: !3, line: 296, type: !9)
!362 = !DILocalVariable(name: "n", scope: !354, file: !3, line: 300, type: !14)
!363 = !DILocalVariable(name: "opt", scope: !364, file: !3, line: 303, type: !14)
!364 = distinct !DILexicalBlock(scope: !354, file: !3, line: 302, column: 16)
!365 = !DILocalVariable(name: "size", scope: !364, file: !3, line: 304, type: !9)
!366 = !DILocalVariable(name: "issigned", scope: !367, file: !3, line: 313, type: !14)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 312, column: 58)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 310, column: 18)
!369 = !DILocalVariable(name: "res", scope: !367, file: !3, line: 314, type: !22)
!370 = !DILocalVariable(name: "f", scope: !371, file: !3, line: 322, type: !7)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 321, column: 17)
!372 = !DILocalVariable(name: "d", scope: !373, file: !3, line: 329, type: !24)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 328, column: 17)
!374 = !DILocalVariable(name: "e", scope: !375, file: !3, line: 348, type: !18)
!375 = distinct !DILexicalBlock(scope: !368, file: !3, line: 347, column: 17)
!376 = !DILocation(line: 291, column: 33, scope: !354)
!377 = !DILocation(line: 292, column: 3, scope: !354)
!378 = !DILocation(line: 293, column: 3, scope: !354)
!379 = !DILocation(line: 293, column: 21, scope: !354)
!380 = !DILocation(line: 293, column: 15, scope: !354)
!381 = !DILocation(line: 294, column: 3, scope: !354)
!382 = !DILocation(line: 294, column: 10, scope: !354)
!383 = !DILocation(line: 295, column: 22, scope: !354)
!384 = !DILocation(line: 295, column: 15, scope: !354)
!385 = !DILocation(line: 296, column: 16, scope: !354)
!386 = !DILocation(line: 296, column: 10, scope: !354)
!387 = !DILocation(line: 297, column: 3, scope: !354)
!388 = !DILocation(line: 298, column: 6, scope: !354)
!389 = !DILocation(line: 300, column: 7, scope: !354)
!390 = !DILocation(line: 301, column: 3, scope: !354)
!391 = !DILocation(line: 302, column: 3, scope: !354)
!392 = !DILocation(line: 302, column: 10, scope: !354)
!393 = !DILocation(line: 303, column: 15, scope: !364)
!394 = !DILocation(line: 303, column: 19, scope: !364)
!395 = !DILocation(line: 303, column: 9, scope: !364)
!396 = !DILocation(line: 304, column: 19, scope: !364)
!397 = !DILocation(line: 304, column: 12, scope: !364)
!398 = !DILocation(line: 292, column: 10, scope: !354)
!399 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !400)
!400 = distinct !DILocation(line: 305, column: 12, scope: !364)
!401 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !400)
!402 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !400)
!403 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !400)
!404 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !400)
!405 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !400)
!406 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !400)
!407 = !DILocation(line: 137, column: 25, scope: !171, inlinedAt: !400)
!408 = !DILocation(line: 137, column: 14, scope: !171, inlinedAt: !400)
!409 = !DILocation(line: 137, column: 12, scope: !171, inlinedAt: !400)
!410 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !400)
!411 = !DILocation(line: 138, column: 5, scope: !171, inlinedAt: !400)
!412 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !400)
!413 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !400)
!414 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !400)
!415 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !400)
!416 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !400)
!417 = !DILocation(line: 0, scope: !149, inlinedAt: !400)
!418 = !DILocation(line: 0, scope: !364)
!419 = !DILocation(line: 140, column: 1, scope: !149, inlinedAt: !400)
!420 = !DILocation(line: 305, column: 12, scope: !364)
!421 = !DILocation(line: 305, column: 9, scope: !364)
!422 = !DILocation(line: 306, column: 5, scope: !364)
!423 = !DILocation(line: 309, column: 5, scope: !364)
!424 = !DILocation(line: 310, column: 5, scope: !364)
!425 = !DILocation(line: 313, column: 24, scope: !367)
!426 = !DILocation(line: 314, column: 41, scope: !367)
!427 = !DILocation(line: 314, column: 49, scope: !367)
!428 = !DILocation(line: 314, column: 67, scope: !367)
!429 = !DILocalVariable(name: "buff", arg: 1, scope: !430, file: !3, line: 264, type: !18)
!430 = distinct !DISubprogram(name: "getinteger", scope: !3, file: !3, line: 264, type: !431, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!22, !18, !14, !14, !14}
!433 = !{!429, !434, !435, !436, !437, !438, !439}
!434 = !DILocalVariable(name: "endian", arg: 2, scope: !430, file: !3, line: 264, type: !14)
!435 = !DILocalVariable(name: "issigned", arg: 3, scope: !430, file: !3, line: 265, type: !14)
!436 = !DILocalVariable(name: "size", arg: 4, scope: !430, file: !3, line: 265, type: !14)
!437 = !DILocalVariable(name: "l", scope: !430, file: !3, line: 266, type: !15)
!438 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 267, type: !14)
!439 = !DILocalVariable(name: "mask", scope: !440, file: !3, line: 283, type: !15)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 282, column: 8)
!441 = distinct !DILexicalBlock(scope: !430, file: !3, line: 280, column: 7)
!442 = !DILocation(line: 264, column: 43, scope: !430, inlinedAt: !443)
!443 = distinct !DILocation(line: 314, column: 26, scope: !367)
!444 = !DILocation(line: 264, column: 53, scope: !430, inlinedAt: !443)
!445 = !DILocation(line: 265, column: 43, scope: !430, inlinedAt: !443)
!446 = !DILocation(line: 266, column: 12, scope: !430, inlinedAt: !443)
!447 = !DILocation(line: 268, column: 14, scope: !448, inlinedAt: !443)
!448 = distinct !DILexicalBlock(scope: !430, file: !3, line: 268, column: 7)
!449 = !DILocation(line: 268, column: 7, scope: !430, inlinedAt: !443)
!450 = !DILocation(line: 0, scope: !451, inlinedAt: !443)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 275, column: 5)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 274, column: 8)
!453 = !DILocation(line: 0, scope: !454, inlinedAt: !443)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 275, column: 5)
!455 = !DILocation(line: 267, column: 7, scope: !430, inlinedAt: !443)
!456 = !DILocation(line: 275, column: 5, scope: !451, inlinedAt: !443)
!457 = !DILocation(line: 269, column: 5, scope: !458, inlinedAt: !443)
!458 = distinct !DILexicalBlock(scope: !459, file: !3, line: 269, column: 5)
!459 = distinct !DILexicalBlock(scope: !448, file: !3, line: 268, column: 22)
!460 = !DILocation(line: 270, column: 9, scope: !461, inlinedAt: !443)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 269, column: 32)
!462 = distinct !DILexicalBlock(scope: !458, file: !3, line: 269, column: 5)
!463 = !DILocation(line: 271, column: 37, scope: !461, inlinedAt: !443)
!464 = !DILocation(line: 271, column: 12, scope: !461, inlinedAt: !443)
!465 = !DILocation(line: 271, column: 9, scope: !461, inlinedAt: !443)
!466 = !DILocation(line: 269, column: 28, scope: !462, inlinedAt: !443)
!467 = !DILocation(line: 269, column: 5, scope: !462, inlinedAt: !443)
!468 = distinct !{!468, !469, !470}
!469 = !DILocation(line: 269, column: 5, scope: !458)
!470 = !DILocation(line: 272, column: 5, scope: !458)
!471 = !DILocation(line: 276, column: 9, scope: !472, inlinedAt: !443)
!472 = distinct !DILexicalBlock(scope: !454, file: !3, line: 275, column: 37)
!473 = !DILocation(line: 277, column: 37, scope: !472, inlinedAt: !443)
!474 = !DILocation(line: 277, column: 12, scope: !472, inlinedAt: !443)
!475 = !DILocation(line: 277, column: 9, scope: !472, inlinedAt: !443)
!476 = !DILocation(line: 275, column: 5, scope: !454, inlinedAt: !443)
!477 = !DILocation(line: 275, column: 26, scope: !454, inlinedAt: !443)
!478 = distinct !{!478, !479, !480}
!479 = !DILocation(line: 275, column: 5, scope: !451)
!480 = !DILocation(line: 278, column: 5, scope: !451)
!481 = distinct !{!481, !241}
!482 = !DILocation(line: 280, column: 7, scope: !430, inlinedAt: !443)
!483 = !DILocation(line: 281, column: 12, scope: !441, inlinedAt: !443)
!484 = !DILocation(line: 281, column: 5, scope: !441, inlinedAt: !443)
!485 = !DILocation(line: 283, column: 56, scope: !440, inlinedAt: !443)
!486 = !DILocation(line: 283, column: 59, scope: !440, inlinedAt: !443)
!487 = !DILocation(line: 283, column: 48, scope: !440, inlinedAt: !443)
!488 = !DILocation(line: 283, column: 14, scope: !440, inlinedAt: !443)
!489 = !DILocation(line: 284, column: 11, scope: !490, inlinedAt: !443)
!490 = distinct !DILexicalBlock(scope: !440, file: !3, line: 284, column: 9)
!491 = !DILocation(line: 284, column: 9, scope: !440, inlinedAt: !443)
!492 = !DILocation(line: 285, column: 9, scope: !490, inlinedAt: !443)
!493 = !DILocation(line: 285, column: 7, scope: !490, inlinedAt: !443)
!494 = !DILocation(line: 0, scope: !430, inlinedAt: !443)
!495 = !DILocation(line: 286, column: 12, scope: !440, inlinedAt: !443)
!496 = !DILocation(line: 0, scope: !441, inlinedAt: !443)
!497 = !DILocation(line: 288, column: 1, scope: !430, inlinedAt: !443)
!498 = !DILocation(line: 314, column: 20, scope: !367)
!499 = !DILocation(line: 315, column: 9, scope: !367)
!500 = !DILocation(line: 315, column: 34, scope: !367)
!501 = !DILocation(line: 322, column: 9, scope: !371)
!502 = !DILocation(line: 323, column: 24, scope: !371)
!503 = !DILocation(line: 323, column: 9, scope: !371)
!504 = !DILocation(line: 324, column: 47, scope: !371)
!505 = !DILocation(line: 194, column: 33, scope: !258, inlinedAt: !506)
!506 = distinct !DILocation(line: 324, column: 9, scope: !371)
!507 = !DILocation(line: 194, column: 40, scope: !258, inlinedAt: !506)
!508 = !DILocation(line: 194, column: 50, scope: !258, inlinedAt: !506)
!509 = !DILocation(line: 195, column: 14, scope: !266, inlinedAt: !506)
!510 = !DILocation(line: 195, column: 7, scope: !258, inlinedAt: !506)
!511 = !DILocation(line: 196, column: 9, scope: !265, inlinedAt: !506)
!512 = !DILocation(line: 197, column: 5, scope: !265, inlinedAt: !506)
!513 = !DILocation(line: 198, column: 19, scope: !268, inlinedAt: !506)
!514 = !DILocation(line: 198, column: 12, scope: !268, inlinedAt: !506)
!515 = !DILocation(line: 199, column: 16, scope: !268, inlinedAt: !506)
!516 = !DILocation(line: 199, column: 10, scope: !268, inlinedAt: !506)
!517 = !DILocation(line: 199, column: 14, scope: !268, inlinedAt: !506)
!518 = !DILocation(line: 200, column: 15, scope: !268, inlinedAt: !506)
!519 = !DILocation(line: 197, column: 16, scope: !265, inlinedAt: !506)
!520 = !DILocation(line: 197, column: 14, scope: !265, inlinedAt: !506)
!521 = !DILocation(line: 202, column: 3, scope: !265, inlinedAt: !506)
!522 = !DILocation(line: 203, column: 1, scope: !258, inlinedAt: !506)
!523 = !DILocation(line: 325, column: 27, scope: !371)
!524 = !DILocation(line: 322, column: 15, scope: !371)
!525 = !DILocation(line: 325, column: 9, scope: !371)
!526 = !DILocation(line: 325, column: 32, scope: !371)
!527 = !DILocation(line: 327, column: 7, scope: !368)
!528 = !DILocation(line: 329, column: 9, scope: !373)
!529 = !DILocation(line: 330, column: 24, scope: !373)
!530 = !DILocation(line: 330, column: 9, scope: !373)
!531 = !DILocation(line: 331, column: 47, scope: !373)
!532 = !DILocation(line: 194, column: 33, scope: !258, inlinedAt: !533)
!533 = distinct !DILocation(line: 331, column: 9, scope: !373)
!534 = !DILocation(line: 194, column: 40, scope: !258, inlinedAt: !533)
!535 = !DILocation(line: 194, column: 50, scope: !258, inlinedAt: !533)
!536 = !DILocation(line: 195, column: 14, scope: !266, inlinedAt: !533)
!537 = !DILocation(line: 195, column: 7, scope: !258, inlinedAt: !533)
!538 = !DILocation(line: 196, column: 9, scope: !265, inlinedAt: !533)
!539 = !DILocation(line: 197, column: 5, scope: !265, inlinedAt: !533)
!540 = !DILocation(line: 198, column: 19, scope: !268, inlinedAt: !533)
!541 = !DILocation(line: 198, column: 12, scope: !268, inlinedAt: !533)
!542 = !DILocation(line: 199, column: 16, scope: !268, inlinedAt: !533)
!543 = !DILocation(line: 199, column: 10, scope: !268, inlinedAt: !533)
!544 = !DILocation(line: 199, column: 14, scope: !268, inlinedAt: !533)
!545 = !DILocation(line: 200, column: 15, scope: !268, inlinedAt: !533)
!546 = !DILocation(line: 197, column: 16, scope: !265, inlinedAt: !533)
!547 = !DILocation(line: 197, column: 14, scope: !265, inlinedAt: !533)
!548 = !DILocation(line: 202, column: 3, scope: !265, inlinedAt: !533)
!549 = !DILocation(line: 203, column: 1, scope: !258, inlinedAt: !533)
!550 = !DILocation(line: 332, column: 27, scope: !373)
!551 = !DILocation(line: 329, column: 16, scope: !373)
!552 = !DILocation(line: 332, column: 9, scope: !373)
!553 = !DILocation(line: 332, column: 32, scope: !373)
!554 = !DILocation(line: 334, column: 7, scope: !368)
!555 = !DILocation(line: 336, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !368, file: !3, line: 335, column: 17)
!557 = !DILocation(line: 337, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 337, column: 15)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 336, column: 24)
!560 = distinct !DILexicalBlock(scope: !556, file: !3, line: 336, column: 13)
!561 = !DILocation(line: 337, column: 22, scope: !558)
!562 = !DILocation(line: 337, column: 26, scope: !558)
!563 = !DILocation(line: 337, column: 15, scope: !559)
!564 = !DILocation(line: 338, column: 13, scope: !558)
!565 = !DILocation(line: 339, column: 18, scope: !559)
!566 = !DILocation(line: 340, column: 11, scope: !559)
!567 = !DILocation(line: 340, column: 27, scope: !559)
!568 = !DILocation(line: 341, column: 11, scope: !559)
!569 = !DILocation(line: 343, column: 9, scope: !559)
!570 = !DILocation(line: 0, scope: !354)
!571 = !DILocation(line: 344, column: 32, scope: !556)
!572 = !DILocation(line: 344, column: 9, scope: !556)
!573 = !DILocation(line: 344, column: 46, scope: !556)
!574 = !DILocation(line: 345, column: 9, scope: !556)
!575 = !DILocation(line: 348, column: 50, scope: !375)
!576 = !DILocation(line: 348, column: 62, scope: !375)
!577 = !DILocation(line: 348, column: 65, scope: !375)
!578 = !DILocation(line: 348, column: 39, scope: !375)
!579 = !DILocation(line: 348, column: 21, scope: !375)
!580 = !DILocation(line: 349, column: 15, scope: !581)
!581 = distinct !DILexicalBlock(scope: !375, file: !3, line: 349, column: 13)
!582 = !DILocation(line: 349, column: 13, scope: !375)
!583 = !DILocation(line: 350, column: 11, scope: !581)
!584 = !DILocation(line: 351, column: 19, scope: !375)
!585 = !DILocation(line: 351, column: 33, scope: !375)
!586 = !DILocation(line: 352, column: 9, scope: !375)
!587 = !DILocation(line: 352, column: 50, scope: !375)
!588 = !DILocation(line: 355, column: 16, scope: !368)
!589 = !DILocation(line: 356, column: 5, scope: !368)
!590 = !DILocation(line: 357, column: 9, scope: !364)
!591 = !DILocation(line: 0, scope: !367)
!592 = !DILocation(line: 302, column: 11, scope: !354)
!593 = distinct !{!593, !391, !594}
!594 = !DILocation(line: 358, column: 3, scope: !354)
!595 = !DILocation(line: 359, column: 26, scope: !354)
!596 = !DILocation(line: 359, column: 3, scope: !354)
!597 = !DILocation(line: 360, column: 12, scope: !354)
!598 = !DILocation(line: 361, column: 1, scope: !354)
!599 = !DILocation(line: 360, column: 3, scope: !354)
!600 = distinct !DISubprogram(name: "b_size", scope: !3, file: !3, line: 364, type: !42, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !601)
!601 = !{!602, !603, !604, !605, !606, !608}
!602 = !DILocalVariable(name: "L", arg: 1, scope: !600, file: !3, line: 364, type: !44)
!603 = !DILocalVariable(name: "h", scope: !600, file: !3, line: 365, type: !75)
!604 = !DILocalVariable(name: "fmt", scope: !600, file: !3, line: 366, type: !18)
!605 = !DILocalVariable(name: "pos", scope: !600, file: !3, line: 367, type: !9)
!606 = !DILocalVariable(name: "opt", scope: !607, file: !3, line: 370, type: !14)
!607 = distinct !DILexicalBlock(scope: !600, file: !3, line: 369, column: 16)
!608 = !DILocalVariable(name: "size", scope: !607, file: !3, line: 371, type: !9)
!609 = !DILocation(line: 364, column: 31, scope: !600)
!610 = !DILocation(line: 365, column: 3, scope: !600)
!611 = !DILocation(line: 366, column: 3, scope: !600)
!612 = !DILocation(line: 366, column: 21, scope: !600)
!613 = !DILocation(line: 366, column: 15, scope: !600)
!614 = !DILocation(line: 367, column: 10, scope: !600)
!615 = !DILocation(line: 368, column: 3, scope: !600)
!616 = !DILocation(line: 369, column: 3, scope: !600)
!617 = !DILocation(line: 369, column: 10, scope: !600)
!618 = !DILocation(line: 370, column: 15, scope: !607)
!619 = !DILocation(line: 370, column: 19, scope: !607)
!620 = !DILocation(line: 370, column: 9, scope: !607)
!621 = !DILocation(line: 371, column: 19, scope: !607)
!622 = !DILocation(line: 371, column: 12, scope: !607)
!623 = !DILocation(line: 365, column: 10, scope: !600)
!624 = !DILocation(line: 135, column: 31, scope: !149, inlinedAt: !625)
!625 = distinct !DILocation(line: 372, column: 12, scope: !607)
!626 = !DILocation(line: 135, column: 44, scope: !149, inlinedAt: !625)
!627 = !DILocation(line: 135, column: 51, scope: !149, inlinedAt: !625)
!628 = !DILocation(line: 135, column: 63, scope: !149, inlinedAt: !625)
!629 = !DILocation(line: 136, column: 12, scope: !163, inlinedAt: !625)
!630 = !DILocation(line: 136, column: 24, scope: !163, inlinedAt: !625)
!631 = !DILocation(line: 136, column: 17, scope: !163, inlinedAt: !625)
!632 = !DILocation(line: 137, column: 25, scope: !171, inlinedAt: !625)
!633 = !DILocation(line: 137, column: 14, scope: !171, inlinedAt: !625)
!634 = !DILocation(line: 137, column: 12, scope: !171, inlinedAt: !625)
!635 = !DILocation(line: 137, column: 7, scope: !149, inlinedAt: !625)
!636 = !DILocation(line: 138, column: 5, scope: !171, inlinedAt: !625)
!637 = !DILocation(line: 139, column: 31, scope: !149, inlinedAt: !625)
!638 = !DILocation(line: 139, column: 23, scope: !149, inlinedAt: !625)
!639 = !DILocation(line: 139, column: 16, scope: !149, inlinedAt: !625)
!640 = !DILocation(line: 139, column: 38, scope: !149, inlinedAt: !625)
!641 = !DILocation(line: 139, column: 3, scope: !149, inlinedAt: !625)
!642 = !DILocation(line: 0, scope: !149, inlinedAt: !625)
!643 = !DILocation(line: 0, scope: !607)
!644 = !DILocation(line: 140, column: 1, scope: !149, inlinedAt: !625)
!645 = !DILocation(line: 372, column: 12, scope: !607)
!646 = !DILocation(line: 373, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !607, file: !3, line: 373, column: 9)
!648 = !DILocation(line: 373, column: 9, scope: !607)
!649 = !DILocation(line: 374, column: 7, scope: !647)
!650 = !DILocation(line: 375, column: 25, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !3, line: 375, column: 14)
!652 = !DILocation(line: 376, column: 7, scope: !651)
!653 = !DILocation(line: 0, scope: !647)
!654 = !DILocation(line: 377, column: 10, scope: !655)
!655 = distinct !DILexicalBlock(scope: !607, file: !3, line: 377, column: 9)
!656 = !DILocation(line: 377, column: 9, scope: !607)
!657 = !DILocation(line: 378, column: 7, scope: !655)
!658 = !DILocation(line: 372, column: 9, scope: !607)
!659 = !DILocation(line: 379, column: 9, scope: !607)
!660 = !DILocation(line: 369, column: 11, scope: !600)
!661 = distinct !{!661, !616, !662}
!662 = !DILocation(line: 380, column: 3, scope: !600)
!663 = !DILocation(line: 381, column: 3, scope: !600)
!664 = !DILocation(line: 383, column: 1, scope: !600)
!665 = !DILocation(line: 382, column: 3, scope: !600)
!666 = distinct !DISubprogram(name: "optsize", scope: !3, file: !3, line: 109, type: !667, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!667 = !DISubroutineType(types: !668)
!668 = !{!9, !44, !6, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!670 = !{!671, !672, !673, !674}
!671 = !DILocalVariable(name: "L", arg: 1, scope: !666, file: !3, line: 109, type: !44)
!672 = !DILocalVariable(name: "opt", arg: 2, scope: !666, file: !3, line: 109, type: !6)
!673 = !DILocalVariable(name: "fmt", arg: 3, scope: !666, file: !3, line: 109, type: !669)
!674 = !DILocalVariable(name: "sz", scope: !675, file: !3, line: 120, type: !14)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 119, column: 25)
!676 = distinct !DILexicalBlock(scope: !666, file: !3, line: 110, column: 16)
!677 = !DILocation(line: 109, column: 35, scope: !666)
!678 = !DILocation(line: 109, column: 43, scope: !666)
!679 = !DILocation(line: 109, column: 61, scope: !666)
!680 = !DILocation(line: 110, column: 11, scope: !666)
!681 = !DILocation(line: 110, column: 3, scope: !666)
!682 = !DILocation(line: 112, column: 25, scope: !676)
!683 = !DILocation(line: 113, column: 25, scope: !676)
!684 = !DILocation(line: 114, column: 15, scope: !676)
!685 = !DILocation(line: 115, column: 16, scope: !676)
!686 = !DILocation(line: 116, column: 16, scope: !676)
!687 = !DILocalVariable(name: "fmt", arg: 1, scope: !688, file: !3, line: 92, type: !669)
!688 = distinct !DISubprogram(name: "getnum", scope: !3, file: !3, line: 92, type: !689, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!14, !669, !14}
!691 = !{!687, !692, !693}
!692 = !DILocalVariable(name: "df", arg: 2, scope: !688, file: !3, line: 92, type: !14)
!693 = !DILocalVariable(name: "a", scope: !694, file: !3, line: 96, type: !14)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 95, column: 8)
!695 = distinct !DILexicalBlock(scope: !688, file: !3, line: 93, column: 7)
!696 = !DILocation(line: 92, column: 33, scope: !688, inlinedAt: !697)
!697 = distinct !DILocation(line: 118, column: 22, scope: !676)
!698 = !DILocation(line: 92, column: 42, scope: !688, inlinedAt: !697)
!699 = !DILocation(line: 93, column: 8, scope: !695, inlinedAt: !697)
!700 = !DILocation(line: 93, column: 7, scope: !688, inlinedAt: !697)
!701 = !DILocation(line: 0, scope: !694, inlinedAt: !697)
!702 = !DILocation(line: 98, column: 26, scope: !703, inlinedAt: !697)
!703 = distinct !DILexicalBlock(scope: !694, file: !3, line: 97, column: 8)
!704 = !DILocation(line: 0, scope: !703, inlinedAt: !697)
!705 = !DILocation(line: 96, column: 9, scope: !694, inlinedAt: !697)
!706 = !DILocation(line: 98, column: 12, scope: !703, inlinedAt: !697)
!707 = !DILocation(line: 98, column: 18, scope: !703, inlinedAt: !697)
!708 = !DILocation(line: 98, column: 16, scope: !703, inlinedAt: !697)
!709 = !DILocation(line: 98, column: 30, scope: !703, inlinedAt: !697)
!710 = !DILocation(line: 99, column: 14, scope: !694, inlinedAt: !697)
!711 = !DILocation(line: 99, column: 5, scope: !703, inlinedAt: !697)
!712 = distinct !{!712, !713, !714}
!713 = !DILocation(line: 97, column: 5, scope: !694)
!714 = !DILocation(line: 99, column: 28, scope: !694)
!715 = !DILocation(line: 102, column: 1, scope: !688, inlinedAt: !697)
!716 = !DILocation(line: 118, column: 15, scope: !676)
!717 = !DILocation(line: 92, column: 33, scope: !688, inlinedAt: !718)
!718 = distinct !DILocation(line: 120, column: 16, scope: !675)
!719 = !DILocation(line: 92, column: 42, scope: !688, inlinedAt: !718)
!720 = !DILocation(line: 93, column: 8, scope: !695, inlinedAt: !718)
!721 = !DILocation(line: 93, column: 7, scope: !688, inlinedAt: !718)
!722 = !DILocation(line: 0, scope: !694, inlinedAt: !718)
!723 = !DILocation(line: 102, column: 1, scope: !688, inlinedAt: !718)
!724 = !DILocation(line: 120, column: 11, scope: !675)
!725 = !DILocation(line: 121, column: 11, scope: !675)
!726 = !DILocation(line: 98, column: 26, scope: !703, inlinedAt: !718)
!727 = !DILocation(line: 0, scope: !703, inlinedAt: !718)
!728 = !DILocation(line: 96, column: 9, scope: !694, inlinedAt: !718)
!729 = !DILocation(line: 98, column: 12, scope: !703, inlinedAt: !718)
!730 = !DILocation(line: 98, column: 18, scope: !703, inlinedAt: !718)
!731 = !DILocation(line: 98, column: 16, scope: !703, inlinedAt: !718)
!732 = !DILocation(line: 98, column: 30, scope: !703, inlinedAt: !718)
!733 = !DILocation(line: 99, column: 14, scope: !694, inlinedAt: !718)
!734 = !DILocation(line: 99, column: 5, scope: !703, inlinedAt: !718)
!735 = !DILocation(line: 121, column: 14, scope: !736)
!736 = distinct !DILexicalBlock(scope: !675, file: !3, line: 121, column: 11)
!737 = !DILocation(line: 122, column: 9, scope: !736)
!738 = !DILocation(line: 0, scope: !736)
!739 = !DILocation(line: 124, column: 14, scope: !675)
!740 = !DILocation(line: 126, column: 14, scope: !676)
!741 = !DILocation(line: 0, scope: !676)
!742 = !DILocation(line: 128, column: 1, scope: !666)
!743 = distinct !DISubprogram(name: "controloptions", scope: !3, file: !3, line: 146, type: !744, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !44, !14, !669, !152}
!746 = !{!747, !748, !749, !750, !751, !754}
!747 = !DILocalVariable(name: "L", arg: 1, scope: !743, file: !3, line: 146, type: !44)
!748 = !DILocalVariable(name: "opt", arg: 2, scope: !743, file: !3, line: 146, type: !14)
!749 = !DILocalVariable(name: "fmt", arg: 3, scope: !743, file: !3, line: 146, type: !669)
!750 = !DILocalVariable(name: "h", arg: 4, scope: !743, file: !3, line: 147, type: !152)
!751 = !DILocalVariable(name: "a", scope: !752, file: !3, line: 153, type: !14)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 152, column: 15)
!753 = distinct !DILexicalBlock(scope: !743, file: !3, line: 148, column: 16)
!754 = !DILocalVariable(name: "msg", scope: !755, file: !3, line: 160, type: !18)
!755 = distinct !DILexicalBlock(scope: !753, file: !3, line: 159, column: 14)
!756 = !DILocation(line: 146, column: 40, scope: !743)
!757 = !DILocation(line: 146, column: 47, scope: !743)
!758 = !DILocation(line: 146, column: 65, scope: !743)
!759 = !DILocation(line: 147, column: 37, scope: !743)
!760 = !DILocation(line: 148, column: 3, scope: !743)
!761 = !DILocation(line: 150, column: 18, scope: !753)
!762 = !DILocation(line: 150, column: 25, scope: !753)
!763 = !DILocation(line: 150, column: 32, scope: !753)
!764 = !DILocation(line: 151, column: 18, scope: !753)
!765 = !DILocation(line: 151, column: 25, scope: !753)
!766 = !DILocation(line: 151, column: 35, scope: !753)
!767 = !DILocation(line: 92, column: 33, scope: !688, inlinedAt: !768)
!768 = distinct !DILocation(line: 153, column: 15, scope: !752)
!769 = !DILocation(line: 92, column: 42, scope: !688, inlinedAt: !768)
!770 = !DILocation(line: 93, column: 8, scope: !695, inlinedAt: !768)
!771 = !DILocation(line: 93, column: 7, scope: !688, inlinedAt: !768)
!772 = !DILocation(line: 0, scope: !694, inlinedAt: !768)
!773 = !DILocation(line: 102, column: 1, scope: !688, inlinedAt: !768)
!774 = !DILocation(line: 153, column: 11, scope: !752)
!775 = !DILocation(line: 154, column: 12, scope: !776)
!776 = distinct !DILexicalBlock(scope: !752, file: !3, line: 154, column: 11)
!777 = !DILocation(line: 98, column: 26, scope: !703, inlinedAt: !768)
!778 = !DILocation(line: 0, scope: !703, inlinedAt: !768)
!779 = !DILocation(line: 96, column: 9, scope: !694, inlinedAt: !768)
!780 = !DILocation(line: 98, column: 12, scope: !703, inlinedAt: !768)
!781 = !DILocation(line: 98, column: 18, scope: !703, inlinedAt: !768)
!782 = !DILocation(line: 98, column: 16, scope: !703, inlinedAt: !768)
!783 = !DILocation(line: 98, column: 30, scope: !703, inlinedAt: !768)
!784 = !DILocation(line: 99, column: 14, scope: !694, inlinedAt: !768)
!785 = !DILocation(line: 99, column: 5, scope: !703, inlinedAt: !768)
!786 = !DILocation(line: 154, column: 11, scope: !752)
!787 = !DILocation(line: 155, column: 9, scope: !776)
!788 = !DILocation(line: 156, column: 10, scope: !752)
!789 = !DILocation(line: 156, column: 16, scope: !752)
!790 = !DILocation(line: 160, column: 25, scope: !755)
!791 = !DILocation(line: 160, column: 19, scope: !755)
!792 = !DILocation(line: 161, column: 7, scope: !755)
!793 = !DILocation(line: 163, column: 3, scope: !753)
!794 = !DILocation(line: 164, column: 1, scope: !743)
