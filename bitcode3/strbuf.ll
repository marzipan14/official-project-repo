; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/strbuf.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/strbuf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf_t = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"BUG: Invalid string increment\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"strbuf(%lx) resize: %d => %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"BUG: Unable to convert number\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"BUG: length of formatted string changed\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"strbuf(%lx) reallocs: %d, length: %d, size: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"BUG: Invalid strbuf length requested\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_init(%struct.strbuf_t* nocapture, i32) local_unnamed_addr #0 !dbg !9 {
  %3 = icmp slt i32 %1, 1, !dbg !33
  %4 = add nsw i32 %1, 1, !dbg !35
  %5 = select i1 %3, i32 1023, i32 %4, !dbg !37
  %6 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !38
  store i8* null, i8** %6, align 8, !dbg !39, !tbaa !40
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !46
  store i32 %5, i32* %7, align 8, !dbg !47, !tbaa !48
  %8 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !49
  %9 = bitcast i32* %8 to <4 x i32>*, !dbg !50
  store <4 x i32> <i32 0, i32 -2, i32 0, i32 0>, <4 x i32>* %9, align 4, !dbg !50, !tbaa !51
  %10 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !52
  store i32 0, i32* %10, align 4, !dbg !53, !tbaa !54
  %11 = sext i32 %5 to i64, !dbg !55
  %12 = tail call i8* @malloc(i64 %11) #7, !dbg !56
  store i8* %12, i8** %6, align 8, !dbg !57, !tbaa !40
  %13 = icmp eq i8* %12, null, !dbg !58
  br i1 %13, label %14, label %15, !dbg !60

; <label>:14:                                     ; preds = %2
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !61
  unreachable

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %8, align 4, !dbg !69, !tbaa !70
  %17 = sext i32 %16 to i64, !dbg !71
  %18 = getelementptr inbounds i8, i8* %12, i64 %17, !dbg !71
  store i8 0, i8* %18, align 1, !dbg !72, !tbaa !73
  ret void, !dbg !74
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone noreturn nounwind
define internal void @die(i8*, ...) unnamed_addr #4 !dbg !75 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !100
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !102
  call void @llvm.va_start(i8* nonnull %3), !dbg !102
  %5 = call %struct._reent* @__getreent() #7, !dbg !103
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 3, !dbg !103
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !103, !tbaa !104
  %8 = call i32 @vfprintf(%struct.__sFILE* %7, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !109
  call void @llvm.va_end(i8* nonnull %3), !dbg !110
  %9 = call %struct._reent* @__getreent() #7, !dbg !111
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 3, !dbg !111
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !111, !tbaa !104
  %12 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !112
  call void @exit(i32 -1) #9, !dbg !113
  unreachable, !dbg !113
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.strbuf_t* @strbuf_new(i32) local_unnamed_addr #0 !dbg !114 {
  %2 = tail call i8* @malloc(i64 32) #7, !dbg !121
  %3 = bitcast i8* %2 to %struct.strbuf_t*, !dbg !121
  %4 = icmp eq i8* %2, null, !dbg !123
  br i1 %4, label %5, label %6, !dbg !125

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !126
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = icmp slt i32 %0, 1, !dbg !130
  %8 = add nsw i32 %0, 1, !dbg !131
  %9 = select i1 %7, i32 1023, i32 %8, !dbg !133
  %10 = bitcast i8* %2 to i8**, !dbg !134
  store i8* null, i8** %10, align 8, !dbg !135, !tbaa !40
  %11 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !136
  %12 = bitcast i8* %11 to i32*, !dbg !136
  store i32 %9, i32* %12, align 8, !dbg !137, !tbaa !48
  %13 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !138
  %14 = bitcast i8* %13 to <4 x i32>*, !dbg !139
  store <4 x i32> <i32 0, i32 -2, i32 0, i32 0>, <4 x i32>* %14, align 4, !dbg !139, !tbaa !51
  %15 = getelementptr inbounds i8, i8* %2, i64 28, !dbg !140
  %16 = bitcast i8* %15 to i32*, !dbg !140
  store i32 0, i32* %16, align 4, !dbg !141, !tbaa !54
  %17 = sext i32 %9 to i64, !dbg !142
  %18 = tail call i8* @malloc(i64 %17) #7, !dbg !143
  store i8* %18, i8** %10, align 8, !dbg !144, !tbaa !40
  %19 = icmp eq i8* %18, null, !dbg !145
  br i1 %19, label %20, label %21, !dbg !146

; <label>:20:                                     ; preds = %6
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #7, !dbg !147
  unreachable

; <label>:21:                                     ; preds = %6
  %22 = bitcast i8* %13 to i32*, !dbg !138
  %23 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !148
  %24 = bitcast i8* %23 to i32*, !dbg !148
  %25 = load i32, i32* %22, align 4, !dbg !151, !tbaa !70
  %26 = sext i32 %25 to i64, !dbg !152
  %27 = getelementptr inbounds i8, i8* %18, i64 %26, !dbg !152
  store i8 0, i8* %27, align 1, !dbg !153, !tbaa !73
  store i32 1, i32* %24, align 4, !dbg !154, !tbaa !155
  ret %struct.strbuf_t* %3, !dbg !156
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_set_increment(%struct.strbuf_t* nocapture, i32) local_unnamed_addr #0 !dbg !157 {
  %3 = add i32 %1, 1, !dbg !163
  %4 = icmp ult i32 %3, 2, !dbg !163
  br i1 %4, label %5, label %6, !dbg !163

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !165
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 3, !dbg !166
  store i32 %1, i32* %7, align 8, !dbg !167, !tbaa !168
  ret void, !dbg !169
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_free(%struct.strbuf_t*) local_unnamed_addr #0 !dbg !170 {
  %2 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !179
  %3 = load i32, i32* %2, align 4, !dbg !179, !tbaa !54
  %4 = icmp eq i32 %3, 0, !dbg !181
  br i1 %4, label %17, label %5, !dbg !182

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct._reent* @__getreent() #7, !dbg !183
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 3, !dbg !183
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !183, !tbaa !104
  %9 = ptrtoint %struct.strbuf_t* %0 to i64, !dbg !185
  %10 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 5, !dbg !186
  %11 = load i32, i32* %10, align 8, !dbg !186, !tbaa !187
  %12 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !188
  %13 = load i32, i32* %12, align 4, !dbg !188, !tbaa !70
  %14 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !189
  %15 = load i32, i32* %14, align 8, !dbg !189, !tbaa !48
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %9, i32 %11, i32 %13, i32 %15) #7, !dbg !190
  br label %17, !dbg !191

; <label>:17:                                     ; preds = %1, %5
  %18 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !192
  %19 = load i8*, i8** %18, align 8, !dbg !192, !tbaa !40
  %20 = icmp eq i8* %19, null, !dbg !194
  br i1 %20, label %22, label %21, !dbg !195

; <label>:21:                                     ; preds = %17
  tail call void @free(i8* nonnull %19) #7, !dbg !196
  store i8* null, i8** %18, align 8, !dbg !198, !tbaa !40
  br label %22, !dbg !199

; <label>:22:                                     ; preds = %17, %21
  %23 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 4, !dbg !200
  %24 = load i32, i32* %23, align 4, !dbg !200, !tbaa !155
  %25 = icmp eq i32 %24, 0, !dbg !202
  br i1 %25, label %28, label %26, !dbg !203

; <label>:26:                                     ; preds = %22
  %27 = bitcast %struct.strbuf_t* %0 to i8*, !dbg !204
  tail call void @free(i8* %27) #7, !dbg !205
  br label %28, !dbg !205

; <label>:28:                                     ; preds = %22, %26
  ret void, !dbg !206
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @strbuf_free_to_string(%struct.strbuf_t*, i32*) local_unnamed_addr #0 !dbg !207 {
  %3 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !219
  %4 = load i32, i32* %3, align 4, !dbg !219, !tbaa !54
  %5 = icmp eq i32 %4, 0, !dbg !220
  br i1 %5, label %6, label %8, !dbg !221

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !222
  br label %20, !dbg !221

; <label>:8:                                      ; preds = %2
  %9 = tail call %struct._reent* @__getreent() #7, !dbg !224
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 3, !dbg !224
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !224, !tbaa !104
  %12 = ptrtoint %struct.strbuf_t* %0 to i64, !dbg !225
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 5, !dbg !226
  %14 = load i32, i32* %13, align 8, !dbg !226, !tbaa !187
  %15 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !227
  %16 = load i32, i32* %15, align 4, !dbg !227, !tbaa !70
  %17 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !228
  %18 = load i32, i32* %17, align 8, !dbg !228, !tbaa !48
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %12, i32 %14, i32 %16, i32 %18) #7, !dbg !229
  br label %20, !dbg !230

; <label>:20:                                     ; preds = %6, %8
  %21 = phi i32* [ %7, %6 ], [ %15, %8 ], !dbg !222
  %22 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !232
  %23 = load i8*, i8** %22, align 8, !dbg !232, !tbaa !40
  %24 = load i32, i32* %21, align 4, !dbg !222, !tbaa !70
  %25 = sext i32 %24 to i64, !dbg !233
  %26 = getelementptr inbounds i8, i8* %23, i64 %25, !dbg !233
  store i8 0, i8* %26, align 1, !dbg !234, !tbaa !73
  %27 = load i8*, i8** %22, align 8, !dbg !235, !tbaa !40
  %28 = icmp eq i32* %1, null, !dbg !237
  br i1 %28, label %31, label %29, !dbg !239

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %21, align 4, !dbg !240, !tbaa !70
  store i32 %30, i32* %1, align 4, !dbg !241, !tbaa !51
  br label %31, !dbg !242

; <label>:31:                                     ; preds = %20, %29
  %32 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 4, !dbg !243
  %33 = load i32, i32* %32, align 4, !dbg !243, !tbaa !155
  %34 = icmp eq i32 %33, 0, !dbg !245
  br i1 %34, label %37, label %35, !dbg !246

; <label>:35:                                     ; preds = %31
  %36 = bitcast %struct.strbuf_t* %0 to i8*, !dbg !247
  tail call void @free(i8* %36) #7, !dbg !248
  br label %37, !dbg !248

; <label>:37:                                     ; preds = %31, %35
  ret i8* %27, !dbg !249
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_resize(%struct.strbuf_t*, i32) local_unnamed_addr #0 !dbg !250 {
  %3 = icmp slt i32 %1, 1, !dbg !268
  br i1 %3, label %4, label %5, !dbg !270

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !271
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = add nsw i32 %1, 1, !dbg !272
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !274
  %8 = load i32, i32* %7, align 8, !dbg !274, !tbaa !48
  %9 = icmp sgt i32 %8, %6, !dbg !276
  br i1 %9, label %27, label %10, !dbg !277

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 3, !dbg !279
  %12 = load i32, i32* %11, align 8, !dbg !279, !tbaa !168
  %13 = icmp slt i32 %12, 0, !dbg !281
  br i1 %13, label %14, label %22, !dbg !282

; <label>:14:                                     ; preds = %10
  %15 = icmp sgt i32 %8, %1, !dbg !283
  br i1 %15, label %27, label %16, !dbg !285

; <label>:16:                                     ; preds = %14
  %17 = sub i32 0, %12
  br label %18, !dbg !285

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i32 [ %8, %16 ], [ %20, %18 ]
  %20 = mul nsw i32 %19, %17, !dbg !286
  %21 = icmp sgt i32 %20, %1, !dbg !283
  br i1 %21, label %27, label %18, !dbg !285, !llvm.loop !287

; <label>:22:                                     ; preds = %10
  %23 = add i32 %8, -1, !dbg !290
  %24 = add i32 %23, %12, !dbg !292
  %25 = srem i32 %24, %12, !dbg !293
  %26 = sub i32 %24, %25, !dbg !293
  br label %27

; <label>:27:                                     ; preds = %18, %5, %14, %22
  %28 = phi i32 [ %6, %5 ], [ %26, %22 ], [ %8, %14 ], [ %20, %18 ], !dbg !294
  %29 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !296
  %30 = load i32, i32* %29, align 4, !dbg !296, !tbaa !54
  %31 = icmp sgt i32 %30, 1, !dbg !298
  br i1 %31, label %32, label %39, !dbg !299

; <label>:32:                                     ; preds = %27
  %33 = tail call %struct._reent* @__getreent() #7, !dbg !300
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i64 0, i32 3, !dbg !300
  %35 = load %struct.__sFILE*, %struct.__sFILE** %34, align 8, !dbg !300, !tbaa !104
  %36 = ptrtoint %struct.strbuf_t* %0 to i64, !dbg !302
  %37 = load i32, i32* %7, align 8, !dbg !303, !tbaa !48
  %38 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %36, i32 %37, i32 %28) #7, !dbg !304
  br label %39, !dbg !305

; <label>:39:                                     ; preds = %32, %27
  store i32 %28, i32* %7, align 8, !dbg !306, !tbaa !48
  %40 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !307
  %41 = load i8*, i8** %40, align 8, !dbg !307, !tbaa !40
  %42 = sext i32 %28 to i64, !dbg !308
  %43 = tail call i8* @realloc(i8* %41, i64 %42) #7, !dbg !309
  store i8* %43, i8** %40, align 8, !dbg !310, !tbaa !40
  %44 = icmp eq i8* %43, null, !dbg !311
  br i1 %44, label %45, label %46, !dbg !313

; <label>:45:                                     ; preds = %39
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !314
  unreachable

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 5, !dbg !315
  %48 = load i32, i32* %47, align 8, !dbg !316, !tbaa !187
  %49 = add nsw i32 %48, 1, !dbg !316
  store i32 %49, i32* %47, align 8, !dbg !316, !tbaa !187
  ret void, !dbg !317
}

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_append_string(%struct.strbuf_t*, i8* nocapture readonly) local_unnamed_addr #0 !dbg !318 {
  %3 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !335
  %4 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !336
  %5 = load i8, i8* %1, align 1, !dbg !338, !tbaa !73
  %6 = icmp eq i8 %5, 0, !dbg !341
  br i1 %6, label %41, label %7, !dbg !341

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %4, align 4, !dbg !336, !tbaa !70
  %9 = xor i32 %8, -1, !dbg !342
  %10 = load i32, i32* %3, align 8, !dbg !335, !tbaa !48
  %11 = add i32 %10, %9, !dbg !342
  %12 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0
  br label %13, !dbg !341

; <label>:13:                                     ; preds = %7, %27
  %14 = phi i8 [ %5, %7 ], [ %39, %27 ]
  %15 = phi i32 [ %8, %7 ], [ %35, %27 ]
  %16 = phi i64 [ 0, %7 ], [ %37, %27 ]
  %17 = phi i8* [ %1, %7 ], [ %38, %27 ]
  %18 = phi i32 [ %11, %7 ], [ %36, %27 ]
  %19 = icmp slt i32 %18, 1, !dbg !344
  br i1 %19, label %20, label %27, !dbg !347

; <label>:20:                                     ; preds = %13
  %21 = add nsw i32 %15, 1, !dbg !348
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %0, i32 %21) #8, !dbg !350
  %22 = load i32, i32* %3, align 8, !dbg !353, !tbaa !48
  %23 = load i32, i32* %4, align 4, !dbg !354, !tbaa !70
  %24 = xor i32 %23, -1, !dbg !355
  %25 = add i32 %22, %24, !dbg !355
  %26 = load i8, i8* %17, align 1, !dbg !356, !tbaa !73
  br label %27, !dbg !357

; <label>:27:                                     ; preds = %20, %13
  %28 = phi i32 [ %23, %20 ], [ %15, %13 ], !dbg !358
  %29 = phi i8 [ %26, %20 ], [ %14, %13 ], !dbg !356
  %30 = phi i32 [ %25, %20 ], [ %18, %13 ], !dbg !359
  %31 = load i8*, i8** %12, align 8, !dbg !360, !tbaa !40
  %32 = sext i32 %28 to i64, !dbg !361
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !361
  store i8 %29, i8* %33, align 1, !dbg !362, !tbaa !73
  %34 = load i32, i32* %4, align 4, !dbg !363, !tbaa !70
  %35 = add nsw i32 %34, 1, !dbg !363
  store i32 %35, i32* %4, align 4, !dbg !363, !tbaa !70
  %36 = add nsw i32 %30, -1, !dbg !364
  %37 = add nuw i64 %16, 1, !dbg !365
  %38 = getelementptr inbounds i8, i8* %1, i64 %37, !dbg !338
  %39 = load i8, i8* %38, align 1, !dbg !338, !tbaa !73
  %40 = icmp eq i8 %39, 0, !dbg !341
  br i1 %40, label %41, label %13, !dbg !341, !llvm.loop !366

; <label>:41:                                     ; preds = %27, %2
  ret void, !dbg !368
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_append_fmt(%struct.strbuf_t*, i32, i8*, ...) local_unnamed_addr #0 !dbg !369 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !381
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #5, !dbg !381
  %6 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !393
  %7 = load i32, i32* %6, align 8, !dbg !393, !tbaa !48
  %8 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !394
  %9 = load i32, i32* %8, align 4, !dbg !394, !tbaa !70
  %10 = xor i32 %9, -1, !dbg !395
  %11 = add i32 %7, %10, !dbg !395
  %12 = icmp slt i32 %11, %1, !dbg !396
  br i1 %12, label %13, label %15, !dbg !397

; <label>:13:                                     ; preds = %3
  %14 = add nsw i32 %9, %1, !dbg !398
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %0, i32 %14) #7, !dbg !399
  br label %15, !dbg !399

; <label>:15:                                     ; preds = %3, %13
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !400
  call void @llvm.va_start(i8* nonnull %5), !dbg !400
  %17 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !401
  %18 = load i8*, i8** %17, align 8, !dbg !401, !tbaa !40
  %19 = load i32, i32* %8, align 4, !dbg !402, !tbaa !70
  %20 = sext i32 %19 to i64, !dbg !403
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !403
  %22 = sext i32 %1 to i64, !dbg !404
  %23 = call i32 @vsnprintf(i8* %21, i64 %22, i8* %2, %struct.__va_list_tag* nonnull %16) #7, !dbg !405
  call void @llvm.va_end(i8* nonnull %5), !dbg !407
  %24 = icmp slt i32 %23, 0, !dbg !408
  br i1 %24, label %25, label %26, !dbg !410

; <label>:25:                                     ; preds = %15
  call void (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !411
  unreachable

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %8, align 4, !dbg !412, !tbaa !70
  %28 = add nsw i32 %27, %23, !dbg !412
  store i32 %28, i32* %8, align 4, !dbg !412, !tbaa !70
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #5, !dbg !413
  ret void, !dbg !413
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_append_fmt_retry(%struct.strbuf_t*, i8*, ...) local_unnamed_addr #0 !dbg !414 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !426
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !426
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !429
  call void @llvm.va_start(i8* nonnull %4), !dbg !429
  %6 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !435
  %7 = load i32, i32* %6, align 8, !dbg !435, !tbaa !48
  %8 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !436
  %9 = load i32, i32* %8, align 4, !dbg !436, !tbaa !70
  %10 = xor i32 %9, -1, !dbg !437
  %11 = add i32 %7, %10, !dbg !437
  %12 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !439
  %13 = load i8*, i8** %12, align 8, !dbg !439, !tbaa !40
  %14 = sext i32 %9 to i64, !dbg !440
  %15 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !440
  %16 = add nsw i32 %11, 1, !dbg !441
  %17 = sext i32 %16 to i64, !dbg !442
  %18 = call i32 @vsnprintf(i8* %15, i64 %17, i8* %1, %struct.__va_list_tag* nonnull %5) #7, !dbg !443
  call void @llvm.va_end(i8* nonnull %4), !dbg !445
  %19 = icmp sgt i32 %18, %11, !dbg !446
  br i1 %19, label %20, label %38, !dbg !448

; <label>:20:                                     ; preds = %2, %24
  %21 = phi i32 [ %36, %24 ], [ %18, %2 ]
  %22 = phi i1 [ false, %24 ], [ true, %2 ]
  br i1 %22, label %24, label %23, !dbg !449

; <label>:23:                                     ; preds = %20
  call void (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !450
  unreachable

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %8, align 4, !dbg !452, !tbaa !70
  %26 = add nsw i32 %25, %21, !dbg !453
  call void @strbuf_resize(%struct.strbuf_t* nonnull %0, i32 %26) #8, !dbg !454
  call void @llvm.va_start(i8* nonnull %4), !dbg !429
  %27 = load i32, i32* %6, align 8, !dbg !435, !tbaa !48
  %28 = load i32, i32* %8, align 4, !dbg !436, !tbaa !70
  %29 = xor i32 %28, -1, !dbg !437
  %30 = add i32 %27, %29, !dbg !437
  %31 = load i8*, i8** %12, align 8, !dbg !439, !tbaa !40
  %32 = sext i32 %28 to i64, !dbg !440
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !440
  %34 = add nsw i32 %30, 1, !dbg !441
  %35 = sext i32 %34 to i64, !dbg !442
  %36 = call i32 @vsnprintf(i8* %33, i64 %35, i8* %1, %struct.__va_list_tag* nonnull %5) #7, !dbg !443
  call void @llvm.va_end(i8* nonnull %4), !dbg !445
  %37 = icmp sgt i32 %36, %30, !dbg !446
  br i1 %37, label %20, label %38, !dbg !448, !llvm.loop !455

; <label>:38:                                     ; preds = %24, %2
  %39 = phi i32 [ %18, %2 ], [ %36, %24 ], !dbg !443
  %40 = load i32, i32* %8, align 4, !dbg !458, !tbaa !70
  %41 = add nsw i32 %40, %39, !dbg !458
  store i32 %41, i32* %8, align 4, !dbg !458, !tbaa !70
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !459
  ret void, !dbg !459
}

; Function Attrs: noredzone
declare dso_local i32 @vfprintf(%struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/strbuf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "strbuf_init", scope: !1, file: !1, line: 44, type: !10, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !21}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/strbuf.h", directory: "/root/.unikraft/apps/redis/build")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 34, size: 256, elements: !16)
!16 = !{!17, !20, !22, !23, !24, !25, !26}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !15, file: !14, line: 35, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !14, line: 36, baseType: !21, size: 32, offset: 64)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !15, file: !14, line: 37, baseType: !21, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "increment", scope: !15, file: !14, line: 38, baseType: !21, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic", scope: !15, file: !14, line: 39, baseType: !21, size: 32, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reallocs", scope: !15, file: !14, line: 40, baseType: !21, size: 32, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !15, file: !14, line: 41, baseType: !21, size: 32, offset: 224)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !1, line: 44, type: !12)
!29 = !DILocalVariable(name: "len", arg: 2, scope: !9, file: !1, line: 44, type: !21)
!30 = !DILocalVariable(name: "size", scope: !9, file: !1, line: 46, type: !21)
!31 = !DILocation(line: 44, column: 28, scope: !9)
!32 = !DILocation(line: 44, column: 35, scope: !9)
!33 = !DILocation(line: 48, column: 13, scope: !34)
!34 = distinct !DILexicalBlock(scope: !9, file: !1, line: 48, column: 9)
!35 = !DILocation(line: 51, column: 20, scope: !34)
!36 = !DILocation(line: 46, column: 9, scope: !9)
!37 = !DILocation(line: 48, column: 9, scope: !9)
!38 = !DILocation(line: 53, column: 8, scope: !9)
!39 = !DILocation(line: 53, column: 12, scope: !9)
!40 = !{!41, !42, i64 0}
!41 = !{!"", !42, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"int", !43, i64 0}
!46 = !DILocation(line: 54, column: 8, scope: !9)
!47 = !DILocation(line: 54, column: 13, scope: !9)
!48 = !{!41, !45, i64 8}
!49 = !DILocation(line: 55, column: 8, scope: !9)
!50 = !DILocation(line: 55, column: 15, scope: !9)
!51 = !{!45, !45, i64 0}
!52 = !DILocation(line: 59, column: 8, scope: !9)
!53 = !DILocation(line: 59, column: 14, scope: !9)
!54 = !{!41, !45, i64 28}
!55 = !DILocation(line: 61, column: 21, scope: !9)
!56 = !DILocation(line: 61, column: 14, scope: !9)
!57 = !DILocation(line: 61, column: 12, scope: !9)
!58 = !DILocation(line: 62, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !9, file: !1, line: 62, column: 9)
!60 = !DILocation(line: 62, column: 9, scope: !9)
!61 = !DILocation(line: 63, column: 9, scope: !59)
!62 = !DILocalVariable(name: "s", arg: 1, scope: !63, file: !14, line: 140, type: !12)
!63 = distinct !DISubprogram(name: "strbuf_ensure_null", scope: !14, file: !14, line: 140, type: !64, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !12}
!66 = !{!62}
!67 = !DILocation(line: 140, column: 49, scope: !63, inlinedAt: !68)
!68 = distinct !DILocation(line: 65, column: 5, scope: !9)
!69 = !DILocation(line: 142, column: 15, scope: !63, inlinedAt: !68)
!70 = !{!41, !45, i64 12}
!71 = !DILocation(line: 142, column: 5, scope: !63, inlinedAt: !68)
!72 = !DILocation(line: 142, column: 23, scope: !63, inlinedAt: !68)
!73 = !{!43, !43, i64 0}
!74 = !DILocation(line: 66, column: 1, scope: !9)
!75 = distinct !DISubprogram(name: "die", scope: !1, file: !1, line: 32, type: !76, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !80)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, null}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!80 = !{!81, !82}
!81 = !DILocalVariable(name: "fmt", arg: 1, scope: !75, file: !1, line: 32, type: !78)
!82 = !DILocalVariable(name: "arg", scope: !75, file: !1, line: 34, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !86, line: 51, baseType: !87)
!86 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 204, baseType: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !97)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 204, size: 192, elements: !90)
!90 = !{!91, !93, !94, !96}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !89, file: !1, line: 204, baseType: !92, size: 32)
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !89, file: !1, line: 204, baseType: !92, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !89, file: !1, line: 204, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !89, file: !1, line: 204, baseType: !95, size: 64, offset: 128)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DILocation(line: 32, column: 29, scope: !75)
!100 = !DILocation(line: 34, column: 5, scope: !75)
!101 = !DILocation(line: 34, column: 13, scope: !75)
!102 = !DILocation(line: 36, column: 5, scope: !75)
!103 = !DILocation(line: 37, column: 14, scope: !75)
!104 = !{!105, !42, i64 24}
!105 = !{!"_reent", !45, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !45, i64 32, !43, i64 36, !45, i64 64, !42, i64 72, !45, i64 80, !42, i64 88, !42, i64 96, !45, i64 104, !42, i64 112, !42, i64 120, !45, i64 128, !42, i64 136, !43, i64 144, !42, i64 504, !106, i64 512, !42, i64 1304, !108, i64 1312, !43, i64 1336}
!106 = !{!"_atexit", !42, i64 0, !45, i64 8, !43, i64 16, !107, i64 272}
!107 = !{!"_on_exit_args", !43, i64 0, !43, i64 256, !45, i64 512, !45, i64 516}
!108 = !{!"_glue", !42, i64 0, !45, i64 8, !42, i64 16}
!109 = !DILocation(line: 37, column: 5, scope: !75)
!110 = !DILocation(line: 38, column: 5, scope: !75)
!111 = !DILocation(line: 39, column: 13, scope: !75)
!112 = !DILocation(line: 39, column: 5, scope: !75)
!113 = !DILocation(line: 41, column: 5, scope: !75)
!114 = distinct !DISubprogram(name: "strbuf_new", scope: !1, file: !1, line: 68, type: !115, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!12, !21}
!117 = !{!118, !119}
!118 = !DILocalVariable(name: "len", arg: 1, scope: !114, file: !1, line: 68, type: !21)
!119 = !DILocalVariable(name: "s", scope: !114, file: !1, line: 70, type: !12)
!120 = !DILocation(line: 68, column: 26, scope: !114)
!121 = !DILocation(line: 72, column: 9, scope: !114)
!122 = !DILocation(line: 70, column: 15, scope: !114)
!123 = !DILocation(line: 73, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !114, file: !1, line: 73, column: 9)
!125 = !DILocation(line: 73, column: 9, scope: !114)
!126 = !DILocation(line: 74, column: 9, scope: !124)
!127 = !DILocation(line: 44, column: 28, scope: !9, inlinedAt: !128)
!128 = distinct !DILocation(line: 76, column: 5, scope: !114)
!129 = !DILocation(line: 44, column: 35, scope: !9, inlinedAt: !128)
!130 = !DILocation(line: 48, column: 13, scope: !34, inlinedAt: !128)
!131 = !DILocation(line: 51, column: 20, scope: !34, inlinedAt: !128)
!132 = !DILocation(line: 46, column: 9, scope: !9, inlinedAt: !128)
!133 = !DILocation(line: 48, column: 9, scope: !9, inlinedAt: !128)
!134 = !DILocation(line: 53, column: 8, scope: !9, inlinedAt: !128)
!135 = !DILocation(line: 53, column: 12, scope: !9, inlinedAt: !128)
!136 = !DILocation(line: 54, column: 8, scope: !9, inlinedAt: !128)
!137 = !DILocation(line: 54, column: 13, scope: !9, inlinedAt: !128)
!138 = !DILocation(line: 55, column: 8, scope: !9, inlinedAt: !128)
!139 = !DILocation(line: 55, column: 15, scope: !9, inlinedAt: !128)
!140 = !DILocation(line: 59, column: 8, scope: !9, inlinedAt: !128)
!141 = !DILocation(line: 59, column: 14, scope: !9, inlinedAt: !128)
!142 = !DILocation(line: 61, column: 21, scope: !9, inlinedAt: !128)
!143 = !DILocation(line: 61, column: 14, scope: !9, inlinedAt: !128)
!144 = !DILocation(line: 61, column: 12, scope: !9, inlinedAt: !128)
!145 = !DILocation(line: 62, column: 10, scope: !59, inlinedAt: !128)
!146 = !DILocation(line: 62, column: 9, scope: !9, inlinedAt: !128)
!147 = !DILocation(line: 63, column: 9, scope: !59, inlinedAt: !128)
!148 = !DILocation(line: 57, column: 8, scope: !9, inlinedAt: !128)
!149 = !DILocation(line: 140, column: 49, scope: !63, inlinedAt: !150)
!150 = distinct !DILocation(line: 65, column: 5, scope: !9, inlinedAt: !128)
!151 = !DILocation(line: 142, column: 15, scope: !63, inlinedAt: !150)
!152 = !DILocation(line: 142, column: 5, scope: !63, inlinedAt: !150)
!153 = !DILocation(line: 142, column: 23, scope: !63, inlinedAt: !150)
!154 = !DILocation(line: 79, column: 16, scope: !114)
!155 = !{!41, !45, i64 20}
!156 = !DILocation(line: 81, column: 5, scope: !114)
!157 = distinct !DISubprogram(name: "strbuf_set_increment", scope: !1, file: !1, line: 84, type: !10, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !158)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "s", arg: 1, scope: !157, file: !1, line: 84, type: !12)
!160 = !DILocalVariable(name: "increment", arg: 2, scope: !157, file: !1, line: 84, type: !21)
!161 = !DILocation(line: 84, column: 37, scope: !157)
!162 = !DILocation(line: 84, column: 44, scope: !157)
!163 = !DILocation(line: 88, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !1, line: 88, column: 9)
!165 = !DILocation(line: 89, column: 9, scope: !164)
!166 = !DILocation(line: 91, column: 8, scope: !157)
!167 = !DILocation(line: 91, column: 18, scope: !157)
!168 = !{!41, !45, i64 16}
!169 = !DILocation(line: 92, column: 1, scope: !157)
!170 = distinct !DISubprogram(name: "strbuf_free", scope: !1, file: !1, line: 104, type: !64, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !171)
!171 = !{!172}
!172 = !DILocalVariable(name: "s", arg: 1, scope: !170, file: !1, line: 104, type: !12)
!173 = !DILocation(line: 104, column: 28, scope: !170)
!174 = !DILocalVariable(name: "s", arg: 1, scope: !175, file: !1, line: 94, type: !12)
!175 = distinct !DISubprogram(name: "debug_stats", scope: !1, file: !1, line: 94, type: !64, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !176)
!176 = !{!174}
!177 = !DILocation(line: 94, column: 42, scope: !175, inlinedAt: !178)
!178 = distinct !DILocation(line: 106, column: 5, scope: !170)
!179 = !DILocation(line: 96, column: 12, scope: !180, inlinedAt: !178)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 96, column: 9)
!181 = !DILocation(line: 96, column: 9, scope: !180, inlinedAt: !178)
!182 = !DILocation(line: 96, column: 9, scope: !175, inlinedAt: !178)
!183 = !DILocation(line: 97, column: 17, scope: !184, inlinedAt: !178)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 96, column: 19)
!185 = !DILocation(line: 98, column: 17, scope: !184, inlinedAt: !178)
!186 = !DILocation(line: 98, column: 29, scope: !184, inlinedAt: !178)
!187 = !{!41, !45, i64 24}
!188 = !DILocation(line: 98, column: 42, scope: !184, inlinedAt: !178)
!189 = !DILocation(line: 98, column: 53, scope: !184, inlinedAt: !178)
!190 = !DILocation(line: 97, column: 9, scope: !184, inlinedAt: !178)
!191 = !DILocation(line: 99, column: 5, scope: !184, inlinedAt: !178)
!192 = !DILocation(line: 108, column: 12, scope: !193)
!193 = distinct !DILexicalBlock(scope: !170, file: !1, line: 108, column: 9)
!194 = !DILocation(line: 108, column: 9, scope: !193)
!195 = !DILocation(line: 108, column: 9, scope: !170)
!196 = !DILocation(line: 109, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 108, column: 17)
!198 = !DILocation(line: 110, column: 16, scope: !197)
!199 = !DILocation(line: 111, column: 5, scope: !197)
!200 = !DILocation(line: 112, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !170, file: !1, line: 112, column: 9)
!202 = !DILocation(line: 112, column: 9, scope: !201)
!203 = !DILocation(line: 112, column: 9, scope: !170)
!204 = !DILocation(line: 113, column: 14, scope: !201)
!205 = !DILocation(line: 113, column: 9, scope: !201)
!206 = !DILocation(line: 114, column: 1, scope: !170)
!207 = distinct !DISubprogram(name: "strbuf_free_to_string", scope: !1, file: !1, line: 116, type: !208, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !211)
!208 = !DISubroutineType(types: !209)
!209 = !{!18, !12, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!211 = !{!212, !213, !214}
!212 = !DILocalVariable(name: "s", arg: 1, scope: !207, file: !1, line: 116, type: !12)
!213 = !DILocalVariable(name: "len", arg: 2, scope: !207, file: !1, line: 116, type: !210)
!214 = !DILocalVariable(name: "buf", scope: !207, file: !1, line: 118, type: !18)
!215 = !DILocation(line: 116, column: 39, scope: !207)
!216 = !DILocation(line: 116, column: 47, scope: !207)
!217 = !DILocation(line: 94, column: 42, scope: !175, inlinedAt: !218)
!218 = distinct !DILocation(line: 120, column: 5, scope: !207)
!219 = !DILocation(line: 96, column: 12, scope: !180, inlinedAt: !218)
!220 = !DILocation(line: 96, column: 9, scope: !180, inlinedAt: !218)
!221 = !DILocation(line: 96, column: 9, scope: !175, inlinedAt: !218)
!222 = !DILocation(line: 142, column: 15, scope: !63, inlinedAt: !223)
!223 = distinct !DILocation(line: 122, column: 5, scope: !207)
!224 = !DILocation(line: 97, column: 17, scope: !184, inlinedAt: !218)
!225 = !DILocation(line: 98, column: 17, scope: !184, inlinedAt: !218)
!226 = !DILocation(line: 98, column: 29, scope: !184, inlinedAt: !218)
!227 = !DILocation(line: 98, column: 42, scope: !184, inlinedAt: !218)
!228 = !DILocation(line: 98, column: 53, scope: !184, inlinedAt: !218)
!229 = !DILocation(line: 97, column: 9, scope: !184, inlinedAt: !218)
!230 = !DILocation(line: 99, column: 5, scope: !184, inlinedAt: !218)
!231 = !DILocation(line: 140, column: 49, scope: !63, inlinedAt: !223)
!232 = !DILocation(line: 142, column: 8, scope: !63, inlinedAt: !223)
!233 = !DILocation(line: 142, column: 5, scope: !63, inlinedAt: !223)
!234 = !DILocation(line: 142, column: 23, scope: !63, inlinedAt: !223)
!235 = !DILocation(line: 124, column: 14, scope: !207)
!236 = !DILocation(line: 118, column: 11, scope: !207)
!237 = !DILocation(line: 125, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !207, file: !1, line: 125, column: 9)
!239 = !DILocation(line: 125, column: 9, scope: !207)
!240 = !DILocation(line: 126, column: 19, scope: !238)
!241 = !DILocation(line: 126, column: 14, scope: !238)
!242 = !DILocation(line: 126, column: 9, scope: !238)
!243 = !DILocation(line: 128, column: 12, scope: !244)
!244 = distinct !DILexicalBlock(scope: !207, file: !1, line: 128, column: 9)
!245 = !DILocation(line: 128, column: 9, scope: !244)
!246 = !DILocation(line: 128, column: 9, scope: !207)
!247 = !DILocation(line: 129, column: 14, scope: !244)
!248 = !DILocation(line: 129, column: 9, scope: !244)
!249 = !DILocation(line: 131, column: 5, scope: !207)
!250 = distinct !DISubprogram(name: "strbuf_resize", scope: !1, file: !1, line: 164, type: !10, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!251 = !{!252, !253, !254}
!252 = !DILocalVariable(name: "s", arg: 1, scope: !250, file: !1, line: 164, type: !12)
!253 = !DILocalVariable(name: "len", arg: 2, scope: !250, file: !1, line: 164, type: !21)
!254 = !DILocalVariable(name: "newsize", scope: !250, file: !1, line: 166, type: !21)
!255 = !DILocation(line: 164, column: 30, scope: !250)
!256 = !DILocation(line: 164, column: 37, scope: !250)
!257 = !DILocalVariable(name: "s", arg: 1, scope: !258, file: !1, line: 134, type: !12)
!258 = distinct !DISubprogram(name: "calculate_new_size", scope: !1, file: !1, line: 134, type: !259, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!21, !12, !21}
!261 = !{!257, !262, !263, !264}
!262 = !DILocalVariable(name: "len", arg: 2, scope: !258, file: !1, line: 134, type: !21)
!263 = !DILocalVariable(name: "reqsize", scope: !258, file: !1, line: 136, type: !21)
!264 = !DILocalVariable(name: "newsize", scope: !258, file: !1, line: 136, type: !21)
!265 = !DILocation(line: 134, column: 41, scope: !258, inlinedAt: !266)
!266 = distinct !DILocation(line: 168, column: 15, scope: !250)
!267 = !DILocation(line: 134, column: 48, scope: !258, inlinedAt: !266)
!268 = !DILocation(line: 138, column: 13, scope: !269, inlinedAt: !266)
!269 = distinct !DILexicalBlock(scope: !258, file: !1, line: 138, column: 9)
!270 = !DILocation(line: 138, column: 9, scope: !258, inlinedAt: !266)
!271 = !DILocation(line: 139, column: 9, scope: !269, inlinedAt: !266)
!272 = !DILocation(line: 142, column: 19, scope: !258, inlinedAt: !266)
!273 = !DILocation(line: 136, column: 9, scope: !258, inlinedAt: !266)
!274 = !DILocation(line: 145, column: 12, scope: !275, inlinedAt: !266)
!275 = distinct !DILexicalBlock(scope: !258, file: !1, line: 145, column: 9)
!276 = !DILocation(line: 145, column: 17, scope: !275, inlinedAt: !266)
!277 = !DILocation(line: 145, column: 9, scope: !258, inlinedAt: !266)
!278 = !DILocation(line: 136, column: 18, scope: !258, inlinedAt: !266)
!279 = !DILocation(line: 149, column: 12, scope: !280, inlinedAt: !266)
!280 = distinct !DILexicalBlock(scope: !258, file: !1, line: 149, column: 9)
!281 = !DILocation(line: 149, column: 22, scope: !280, inlinedAt: !266)
!282 = !DILocation(line: 149, column: 9, scope: !258, inlinedAt: !266)
!283 = !DILocation(line: 151, column: 24, scope: !284, inlinedAt: !266)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 149, column: 27)
!285 = !DILocation(line: 151, column: 9, scope: !284, inlinedAt: !266)
!286 = !DILocation(line: 152, column: 21, scope: !284, inlinedAt: !266)
!287 = distinct !{!287, !288, !289}
!288 = !DILocation(line: 151, column: 9, scope: !284)
!289 = !DILocation(line: 152, column: 28, scope: !284)
!290 = !DILocation(line: 155, column: 29, scope: !291, inlinedAt: !266)
!291 = distinct !DILexicalBlock(scope: !280, file: !1, line: 153, column: 12)
!292 = !DILocation(line: 155, column: 44, scope: !291, inlinedAt: !266)
!293 = !DILocation(line: 155, column: 65, scope: !291, inlinedAt: !266)
!294 = !DILocation(line: 0, scope: !258, inlinedAt: !266)
!295 = !DILocation(line: 166, column: 9, scope: !250)
!296 = !DILocation(line: 170, column: 12, scope: !297)
!297 = distinct !DILexicalBlock(scope: !250, file: !1, line: 170, column: 9)
!298 = !DILocation(line: 170, column: 18, scope: !297)
!299 = !DILocation(line: 170, column: 9, scope: !250)
!300 = !DILocation(line: 171, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 170, column: 23)
!302 = !DILocation(line: 172, column: 17, scope: !301)
!303 = !DILocation(line: 172, column: 29, scope: !301)
!304 = !DILocation(line: 171, column: 9, scope: !301)
!305 = !DILocation(line: 173, column: 5, scope: !301)
!306 = !DILocation(line: 175, column: 13, scope: !250)
!307 = !DILocation(line: 176, column: 25, scope: !250)
!308 = !DILocation(line: 176, column: 30, scope: !250)
!309 = !DILocation(line: 176, column: 14, scope: !250)
!310 = !DILocation(line: 176, column: 12, scope: !250)
!311 = !DILocation(line: 177, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !250, file: !1, line: 177, column: 9)
!313 = !DILocation(line: 177, column: 9, scope: !250)
!314 = !DILocation(line: 178, column: 9, scope: !312)
!315 = !DILocation(line: 179, column: 8, scope: !250)
!316 = !DILocation(line: 179, column: 16, scope: !250)
!317 = !DILocation(line: 180, column: 1, scope: !250)
!318 = distinct !DISubprogram(name: "strbuf_append_string", scope: !1, file: !1, line: 182, type: !319, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !12, !78}
!321 = !{!322, !323, !324, !325}
!322 = !DILocalVariable(name: "s", arg: 1, scope: !318, file: !1, line: 182, type: !12)
!323 = !DILocalVariable(name: "str", arg: 2, scope: !318, file: !1, line: 182, type: !78)
!324 = !DILocalVariable(name: "space", scope: !318, file: !1, line: 184, type: !21)
!325 = !DILocalVariable(name: "i", scope: !318, file: !1, line: 184, type: !21)
!326 = !DILocation(line: 182, column: 37, scope: !318)
!327 = !DILocation(line: 182, column: 52, scope: !318)
!328 = !DILocalVariable(name: "s", arg: 1, scope: !329, file: !14, line: 90, type: !12)
!329 = distinct !DISubprogram(name: "strbuf_empty_length", scope: !14, file: !14, line: 90, type: !330, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!21, !12}
!332 = !{!328}
!333 = !DILocation(line: 90, column: 49, scope: !329, inlinedAt: !334)
!334 = distinct !DILocation(line: 186, column: 13, scope: !318)
!335 = !DILocation(line: 92, column: 15, scope: !329, inlinedAt: !334)
!336 = !DILocation(line: 92, column: 25, scope: !329, inlinedAt: !334)
!337 = !DILocation(line: 184, column: 16, scope: !318)
!338 = !DILocation(line: 188, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 188, column: 5)
!340 = distinct !DILexicalBlock(scope: !318, file: !1, line: 188, column: 5)
!341 = !DILocation(line: 188, column: 5, scope: !340)
!342 = !DILocation(line: 92, column: 32, scope: !329, inlinedAt: !334)
!343 = !DILocation(line: 184, column: 9, scope: !318)
!344 = !DILocation(line: 189, column: 19, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 189, column: 13)
!346 = distinct !DILexicalBlock(scope: !339, file: !1, line: 188, column: 30)
!347 = !DILocation(line: 189, column: 13, scope: !346)
!348 = !DILocation(line: 190, column: 40, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 189, column: 24)
!350 = !DILocation(line: 190, column: 13, scope: !349)
!351 = !DILocation(line: 90, column: 49, scope: !329, inlinedAt: !352)
!352 = distinct !DILocation(line: 191, column: 21, scope: !349)
!353 = !DILocation(line: 92, column: 15, scope: !329, inlinedAt: !352)
!354 = !DILocation(line: 92, column: 25, scope: !329, inlinedAt: !352)
!355 = !DILocation(line: 92, column: 32, scope: !329, inlinedAt: !352)
!356 = !DILocation(line: 194, column: 29, scope: !346)
!357 = !DILocation(line: 192, column: 9, scope: !349)
!358 = !DILocation(line: 194, column: 19, scope: !346)
!359 = !DILocation(line: 0, scope: !318)
!360 = !DILocation(line: 194, column: 12, scope: !346)
!361 = !DILocation(line: 194, column: 9, scope: !346)
!362 = !DILocation(line: 194, column: 27, scope: !346)
!363 = !DILocation(line: 195, column: 18, scope: !346)
!364 = !DILocation(line: 196, column: 14, scope: !346)
!365 = !DILocation(line: 188, column: 26, scope: !339)
!366 = distinct !{!366, !341, !367}
!367 = !DILocation(line: 197, column: 5, scope: !340)
!368 = !DILocation(line: 198, column: 1, scope: !318)
!369 = distinct !DISubprogram(name: "strbuf_append_fmt", scope: !1, file: !1, line: 202, type: !370, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !12, !21, !78, null}
!372 = !{!373, !374, !375, !376, !377}
!373 = !DILocalVariable(name: "s", arg: 1, scope: !369, file: !1, line: 202, type: !12)
!374 = !DILocalVariable(name: "len", arg: 2, scope: !369, file: !1, line: 202, type: !21)
!375 = !DILocalVariable(name: "fmt", arg: 3, scope: !369, file: !1, line: 202, type: !78)
!376 = !DILocalVariable(name: "arg", scope: !369, file: !1, line: 204, type: !83)
!377 = !DILocalVariable(name: "fmt_len", scope: !369, file: !1, line: 205, type: !21)
!378 = !DILocation(line: 202, column: 34, scope: !369)
!379 = !DILocation(line: 202, column: 41, scope: !369)
!380 = !DILocation(line: 202, column: 58, scope: !369)
!381 = !DILocation(line: 204, column: 5, scope: !369)
!382 = !DILocation(line: 204, column: 13, scope: !369)
!383 = !DILocalVariable(name: "s", arg: 1, scope: !384, file: !14, line: 95, type: !12)
!384 = distinct !DISubprogram(name: "strbuf_ensure_empty_length", scope: !14, file: !14, line: 95, type: !10, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !385)
!385 = !{!383, !386}
!386 = !DILocalVariable(name: "len", arg: 2, scope: !384, file: !14, line: 95, type: !21)
!387 = !DILocation(line: 95, column: 57, scope: !384, inlinedAt: !388)
!388 = distinct !DILocation(line: 207, column: 5, scope: !369)
!389 = !DILocation(line: 95, column: 64, scope: !384, inlinedAt: !388)
!390 = !DILocation(line: 90, column: 49, scope: !329, inlinedAt: !391)
!391 = distinct !DILocation(line: 97, column: 15, scope: !392, inlinedAt: !388)
!392 = distinct !DILexicalBlock(scope: !384, file: !14, line: 97, column: 9)
!393 = !DILocation(line: 92, column: 15, scope: !329, inlinedAt: !391)
!394 = !DILocation(line: 92, column: 25, scope: !329, inlinedAt: !391)
!395 = !DILocation(line: 92, column: 32, scope: !329, inlinedAt: !391)
!396 = !DILocation(line: 97, column: 13, scope: !392, inlinedAt: !388)
!397 = !DILocation(line: 97, column: 9, scope: !384, inlinedAt: !388)
!398 = !DILocation(line: 98, column: 36, scope: !392, inlinedAt: !388)
!399 = !DILocation(line: 98, column: 9, scope: !392, inlinedAt: !388)
!400 = !DILocation(line: 209, column: 5, scope: !369)
!401 = !DILocation(line: 210, column: 28, scope: !369)
!402 = !DILocation(line: 210, column: 37, scope: !369)
!403 = !DILocation(line: 210, column: 32, scope: !369)
!404 = !DILocation(line: 210, column: 45, scope: !369)
!405 = !DILocation(line: 210, column: 15, scope: !369)
!406 = !DILocation(line: 205, column: 9, scope: !369)
!407 = !DILocation(line: 211, column: 5, scope: !369)
!408 = !DILocation(line: 213, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !369, file: !1, line: 213, column: 9)
!410 = !DILocation(line: 213, column: 9, scope: !369)
!411 = !DILocation(line: 214, column: 9, scope: !409)
!412 = !DILocation(line: 216, column: 15, scope: !369)
!413 = !DILocation(line: 217, column: 1, scope: !369)
!414 = distinct !DISubprogram(name: "strbuf_append_fmt_retry", scope: !1, file: !1, line: 221, type: !415, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !12, !78, null}
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DILocalVariable(name: "s", arg: 1, scope: !414, file: !1, line: 221, type: !12)
!419 = !DILocalVariable(name: "fmt", arg: 2, scope: !414, file: !1, line: 221, type: !78)
!420 = !DILocalVariable(name: "arg", scope: !414, file: !1, line: 223, type: !83)
!421 = !DILocalVariable(name: "fmt_len", scope: !414, file: !1, line: 224, type: !21)
!422 = !DILocalVariable(name: "try", scope: !414, file: !1, line: 224, type: !21)
!423 = !DILocalVariable(name: "empty_len", scope: !414, file: !1, line: 225, type: !21)
!424 = !DILocation(line: 221, column: 40, scope: !414)
!425 = !DILocation(line: 221, column: 55, scope: !414)
!426 = !DILocation(line: 223, column: 5, scope: !414)
!427 = !DILocation(line: 223, column: 13, scope: !414)
!428 = !DILocation(line: 224, column: 18, scope: !414)
!429 = !DILocation(line: 230, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 229, column: 28)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 229, column: 5)
!432 = distinct !DILexicalBlock(scope: !414, file: !1, line: 229, column: 5)
!433 = !DILocation(line: 90, column: 49, scope: !329, inlinedAt: !434)
!434 = distinct !DILocation(line: 234, column: 21, scope: !430)
!435 = !DILocation(line: 92, column: 15, scope: !329, inlinedAt: !434)
!436 = !DILocation(line: 92, column: 25, scope: !329, inlinedAt: !434)
!437 = !DILocation(line: 92, column: 32, scope: !329, inlinedAt: !434)
!438 = !DILocation(line: 225, column: 9, scope: !414)
!439 = !DILocation(line: 236, column: 32, scope: !430)
!440 = !DILocation(line: 236, column: 36, scope: !430)
!441 = !DILocation(line: 236, column: 59, scope: !430)
!442 = !DILocation(line: 236, column: 49, scope: !430)
!443 = !DILocation(line: 236, column: 19, scope: !430)
!444 = !DILocation(line: 224, column: 9, scope: !414)
!445 = !DILocation(line: 237, column: 9, scope: !430)
!446 = !DILocation(line: 239, column: 21, scope: !447)
!447 = distinct !DILexicalBlock(scope: !430, file: !1, line: 239, column: 13)
!448 = !DILocation(line: 239, column: 13, scope: !430)
!449 = !DILocation(line: 241, column: 13, scope: !430)
!450 = !DILocation(line: 242, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !430, file: !1, line: 241, column: 13)
!452 = !DILocation(line: 244, column: 29, scope: !430)
!453 = !DILocation(line: 244, column: 36, scope: !430)
!454 = !DILocation(line: 244, column: 9, scope: !430)
!455 = distinct !{!455, !456, !457}
!456 = !DILocation(line: 229, column: 5, scope: !432)
!457 = !DILocation(line: 245, column: 5, scope: !432)
!458 = !DILocation(line: 247, column: 15, scope: !414)
!459 = !DILocation(line: 248, column: 1, scope: !414)
