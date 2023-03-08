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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  ret void, !dbg !75
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone noreturn nounwind
define internal void @die(i8*, ...) unnamed_addr #4 !dbg !76 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !101
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !103
  call void @llvm.va_start(i8* nonnull %3), !dbg !103
  %5 = call %struct._reent* @__getreent() #7, !dbg !104
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 3, !dbg !104
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !104, !tbaa !105
  %8 = call i32 @vfprintf(%struct.__sFILE* %7, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !110
  call void @llvm.va_end(i8* nonnull %3), !dbg !111
  %9 = call %struct._reent* @__getreent() #7, !dbg !112
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 3, !dbg !112
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !112, !tbaa !105
  %12 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !113
  call void @exit(i32 -1) #9, !dbg !114
  unreachable, !dbg !114
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.strbuf_t* @strbuf_new(i32) local_unnamed_addr #0 !dbg !115 {
  %2 = tail call i8* @malloc(i64 32) #7, !dbg !122
  %3 = bitcast i8* %2 to %struct.strbuf_t*, !dbg !122
  %4 = icmp eq i8* %2, null, !dbg !124
  br i1 %4, label %5, label %6, !dbg !126

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !127
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = icmp slt i32 %0, 1, !dbg !131
  %8 = add nsw i32 %0, 1, !dbg !132
  %9 = select i1 %7, i32 1023, i32 %8, !dbg !134
  %10 = bitcast i8* %2 to i8**, !dbg !135
  store i8* null, i8** %10, align 8, !dbg !136, !tbaa !40
  %11 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !137
  %12 = bitcast i8* %11 to i32*, !dbg !137
  store i32 %9, i32* %12, align 8, !dbg !138, !tbaa !48
  %13 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !139
  %14 = bitcast i8* %13 to <4 x i32>*, !dbg !140
  store <4 x i32> <i32 0, i32 -2, i32 0, i32 0>, <4 x i32>* %14, align 4, !dbg !140, !tbaa !51
  %15 = getelementptr inbounds i8, i8* %2, i64 28, !dbg !141
  %16 = bitcast i8* %15 to i32*, !dbg !141
  store i32 0, i32* %16, align 4, !dbg !142, !tbaa !54
  %17 = sext i32 %9 to i64, !dbg !143
  %18 = tail call i8* @malloc(i64 %17) #7, !dbg !144
  store i8* %18, i8** %10, align 8, !dbg !145, !tbaa !40
  %19 = icmp eq i8* %18, null, !dbg !146
  br i1 %19, label %20, label %21, !dbg !147

; <label>:20:                                     ; preds = %6
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #7, !dbg !148
  unreachable

; <label>:21:                                     ; preds = %6
  %22 = bitcast i8* %13 to i32*, !dbg !139
  %23 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !149
  %24 = bitcast i8* %23 to i32*, !dbg !149
  %25 = load i32, i32* %22, align 4, !dbg !152, !tbaa !70
  %26 = sext i32 %25 to i64, !dbg !153
  %27 = getelementptr inbounds i8, i8* %18, i64 %26, !dbg !153
  store i8 0, i8* %27, align 1, !dbg !154, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  store i32 1, i32* %24, align 4, !dbg !157, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  ret %struct.strbuf_t* %3, !dbg !159
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_set_increment(%struct.strbuf_t* nocapture, i32) local_unnamed_addr #0 !dbg !160 {
  %3 = add i32 %1, 1, !dbg !166
  %4 = icmp ult i32 %3, 2, !dbg !166
  br i1 %4, label %5, label %6, !dbg !166

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !168
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 3, !dbg !169
  store i32 %1, i32* %7, align 8, !dbg !170, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  ret void, !dbg !172
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_free(%struct.strbuf_t*) local_unnamed_addr #0 !dbg !173 {
  %2 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !182
  %3 = load i32, i32* %2, align 4, !dbg !182, !tbaa !54
  %4 = icmp eq i32 %3, 0, !dbg !184
  br i1 %4, label %17, label %5, !dbg !185

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct._reent* @__getreent() #7, !dbg !186
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 3, !dbg !186
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !186, !tbaa !105
  %9 = ptrtoint %struct.strbuf_t* %0 to i64, !dbg !188
  %10 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 5, !dbg !189
  %11 = load i32, i32* %10, align 8, !dbg !189, !tbaa !190
  %12 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !191
  %13 = load i32, i32* %12, align 4, !dbg !191, !tbaa !70
  %14 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !192
  %15 = load i32, i32* %14, align 8, !dbg !192, !tbaa !48
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %9, i32 %11, i32 %13, i32 %15) #7, !dbg !193
  br label %17, !dbg !194

; <label>:17:                                     ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  %18 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !196
  %19 = load i8*, i8** %18, align 8, !dbg !196, !tbaa !40
  %20 = icmp eq i8* %19, null, !dbg !198
  br i1 %20, label %22, label %21, !dbg !199

; <label>:21:                                     ; preds = %17
  tail call void @free(i8* nonnull %19) #7, !dbg !200
  store i8* null, i8** %18, align 8, !dbg !202, !tbaa !40
  br label %22, !dbg !203

; <label>:22:                                     ; preds = %17, %21
  %23 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 4, !dbg !204
  %24 = load i32, i32* %23, align 4, !dbg !204, !tbaa !158
  %25 = icmp eq i32 %24, 0, !dbg !206
  br i1 %25, label %28, label %26, !dbg !207

; <label>:26:                                     ; preds = %22
  %27 = bitcast %struct.strbuf_t* %0 to i8*, !dbg !208
  tail call void @free(i8* %27) #7, !dbg !209
  br label %28, !dbg !209

; <label>:28:                                     ; preds = %22, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  ret void, !dbg !210
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @strbuf_free_to_string(%struct.strbuf_t*, i32*) local_unnamed_addr #0 !dbg !211 {
  %3 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !223
  %4 = load i32, i32* %3, align 4, !dbg !223, !tbaa !54
  %5 = icmp eq i32 %4, 0, !dbg !224
  br i1 %5, label %6, label %8, !dbg !225

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !226
  br label %20, !dbg !225

; <label>:8:                                      ; preds = %2
  %9 = tail call %struct._reent* @__getreent() #7, !dbg !228
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 3, !dbg !228
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 8, !dbg !228, !tbaa !105
  %12 = ptrtoint %struct.strbuf_t* %0 to i64, !dbg !229
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 5, !dbg !230
  %14 = load i32, i32* %13, align 8, !dbg !230, !tbaa !190
  %15 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !231
  %16 = load i32, i32* %15, align 4, !dbg !231, !tbaa !70
  %17 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !232
  %18 = load i32, i32* %17, align 8, !dbg !232, !tbaa !48
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %12, i32 %14, i32 %16, i32 %18) #7, !dbg !233
  br label %20, !dbg !234

; <label>:20:                                     ; preds = %6, %8
  %21 = phi i32* [ %7, %6 ], [ %15, %8 ], !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  %22 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !237
  %23 = load i8*, i8** %22, align 8, !dbg !237, !tbaa !40
  %24 = load i32, i32* %21, align 4, !dbg !226, !tbaa !70
  %25 = sext i32 %24 to i64, !dbg !238
  %26 = getelementptr inbounds i8, i8* %23, i64 %25, !dbg !238
  store i8 0, i8* %26, align 1, !dbg !239, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  %27 = load i8*, i8** %22, align 8, !dbg !241, !tbaa !40
  %28 = icmp eq i32* %1, null, !dbg !243
  br i1 %28, label %31, label %29, !dbg !245

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %21, align 4, !dbg !246, !tbaa !70
  store i32 %30, i32* %1, align 4, !dbg !247, !tbaa !51
  br label %31, !dbg !248

; <label>:31:                                     ; preds = %20, %29
  %32 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 4, !dbg !249
  %33 = load i32, i32* %32, align 4, !dbg !249, !tbaa !158
  %34 = icmp eq i32 %33, 0, !dbg !251
  br i1 %34, label %37, label %35, !dbg !252

; <label>:35:                                     ; preds = %31
  %36 = bitcast %struct.strbuf_t* %0 to i8*, !dbg !253
  tail call void @free(i8* %36) #7, !dbg !254
  br label %37, !dbg !254

; <label>:37:                                     ; preds = %31, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  ret i8* %27, !dbg !255
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_resize(%struct.strbuf_t*, i32) local_unnamed_addr #0 !dbg !256 {
  %3 = icmp slt i32 %1, 1, !dbg !274
  br i1 %3, label %4, label %5, !dbg !276

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !277
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = add nsw i32 %1, 1, !dbg !278
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !280
  %8 = load i32, i32* %7, align 8, !dbg !280, !tbaa !48
  %9 = icmp sgt i32 %8, %6, !dbg !282
  br i1 %9, label %27, label %10, !dbg !283

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 3, !dbg !285
  %12 = load i32, i32* %11, align 8, !dbg !285, !tbaa !171
  %13 = icmp slt i32 %12, 0, !dbg !287
  br i1 %13, label %14, label %22, !dbg !288

; <label>:14:                                     ; preds = %10
  %15 = icmp sgt i32 %8, %1, !dbg !289
  br i1 %15, label %27, label %16, !dbg !291

; <label>:16:                                     ; preds = %14
  %17 = sub i32 0, %12
  br label %18, !dbg !291

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i32 [ %8, %16 ], [ %20, %18 ]
  %20 = mul nsw i32 %19, %17, !dbg !292
  %21 = icmp sgt i32 %20, %1, !dbg !289
  br i1 %21, label %27, label %18, !dbg !291, !llvm.loop !293

; <label>:22:                                     ; preds = %10
  %23 = add i32 %8, -1, !dbg !296
  %24 = add i32 %23, %12, !dbg !298
  %25 = srem i32 %24, %12, !dbg !299
  %26 = sub i32 %24, %25, !dbg !299
  br label %27

; <label>:27:                                     ; preds = %18, %5, %14, %22
  %28 = phi i32 [ %6, %5 ], [ %26, %22 ], [ %8, %14 ], [ %20, %18 ], !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %29 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 6, !dbg !303
  %30 = load i32, i32* %29, align 4, !dbg !303, !tbaa !54
  %31 = icmp sgt i32 %30, 1, !dbg !305
  br i1 %31, label %32, label %39, !dbg !306

; <label>:32:                                     ; preds = %27
  %33 = tail call %struct._reent* @__getreent() #7, !dbg !307
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i64 0, i32 3, !dbg !307
  %35 = load %struct.__sFILE*, %struct.__sFILE** %34, align 8, !dbg !307, !tbaa !105
  %36 = ptrtoint %struct.strbuf_t* %0 to i64, !dbg !309
  %37 = load i32, i32* %7, align 8, !dbg !310, !tbaa !48
  %38 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %36, i32 %37, i32 %28) #7, !dbg !311
  br label %39, !dbg !312

; <label>:39:                                     ; preds = %32, %27
  store i32 %28, i32* %7, align 8, !dbg !313, !tbaa !48
  %40 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !314
  %41 = load i8*, i8** %40, align 8, !dbg !314, !tbaa !40
  %42 = sext i32 %28 to i64, !dbg !315
  %43 = tail call i8* @realloc(i8* %41, i64 %42) #7, !dbg !316
  store i8* %43, i8** %40, align 8, !dbg !317, !tbaa !40
  %44 = icmp eq i8* %43, null, !dbg !318
  br i1 %44, label %45, label %46, !dbg !320

; <label>:45:                                     ; preds = %39
  tail call void (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !321
  unreachable

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 5, !dbg !322
  %48 = load i32, i32* %47, align 8, !dbg !323, !tbaa !190
  %49 = add nsw i32 %48, 1, !dbg !323
  store i32 %49, i32* %47, align 8, !dbg !323, !tbaa !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  ret void, !dbg !324
}

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_append_string(%struct.strbuf_t*, i8* nocapture readonly) local_unnamed_addr #0 !dbg !325 {
  %3 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !342
  %4 = load i32, i32* %3, align 8, !dbg !342, !tbaa !48
  %5 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !343
  %6 = load i32, i32* %5, align 4, !dbg !343, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  %7 = load i8, i8* %1, align 1, !dbg !346, !tbaa !73
  %8 = icmp eq i8 %7, 0, !dbg !349
  br i1 %8, label %41, label %9, !dbg !349

; <label>:9:                                      ; preds = %2
  %10 = xor i32 %6, -1, !dbg !350
  %11 = add i32 %4, %10, !dbg !350
  %12 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0
  br label %13, !dbg !349

; <label>:13:                                     ; preds = %9, %27
  %14 = phi i8 [ %7, %9 ], [ %39, %27 ]
  %15 = phi i32 [ %6, %9 ], [ %35, %27 ]
  %16 = phi i64 [ 0, %9 ], [ %37, %27 ]
  %17 = phi i8* [ %1, %9 ], [ %38, %27 ]
  %18 = phi i32 [ %11, %9 ], [ %36, %27 ]
  %19 = icmp slt i32 %18, 1, !dbg !352
  br i1 %19, label %20, label %27, !dbg !355

; <label>:20:                                     ; preds = %13
  %21 = add nsw i32 %15, 1, !dbg !356
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %0, i32 %21) #8, !dbg !358
  %22 = load i32, i32* %3, align 8, !dbg !361, !tbaa !48
  %23 = load i32, i32* %5, align 4, !dbg !362, !tbaa !70
  %24 = xor i32 %23, -1, !dbg !363
  %25 = add i32 %22, %24, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %26 = load i8, i8* %17, align 1, !dbg !365, !tbaa !73
  br label %27, !dbg !366

; <label>:27:                                     ; preds = %20, %13
  %28 = phi i32 [ %23, %20 ], [ %15, %13 ], !dbg !367
  %29 = phi i8 [ %26, %20 ], [ %14, %13 ], !dbg !365
  %30 = phi i32 [ %25, %20 ], [ %18, %13 ], !dbg !368
  %31 = load i8*, i8** %12, align 8, !dbg !369, !tbaa !40
  %32 = sext i32 %28 to i64, !dbg !370
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !370
  store i8 %29, i8* %33, align 1, !dbg !371, !tbaa !73
  %34 = load i32, i32* %5, align 4, !dbg !372, !tbaa !70
  %35 = add nsw i32 %34, 1, !dbg !372
  store i32 %35, i32* %5, align 4, !dbg !372, !tbaa !70
  %36 = add nsw i32 %30, -1, !dbg !373
  %37 = add nuw i64 %16, 1, !dbg !374
  %38 = getelementptr inbounds i8, i8* %1, i64 %37, !dbg !346
  %39 = load i8, i8* %38, align 1, !dbg !346, !tbaa !73
  %40 = icmp eq i8 %39, 0, !dbg !349
  br i1 %40, label %41, label %13, !dbg !349, !llvm.loop !375

; <label>:41:                                     ; preds = %27, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  ret void, !dbg !377
}

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_append_fmt(%struct.strbuf_t*, i32, i8*, ...) local_unnamed_addr #0 !dbg !378 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !390
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #5, !dbg !390
  %6 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1, !dbg !402
  %7 = load i32, i32* %6, align 8, !dbg !402, !tbaa !48
  %8 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2, !dbg !403
  %9 = load i32, i32* %8, align 4, !dbg !403, !tbaa !70
  %10 = xor i32 %9, -1, !dbg !404
  %11 = add i32 %7, %10, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %12 = icmp slt i32 %11, %1, !dbg !406
  br i1 %12, label %13, label %15, !dbg !407

; <label>:13:                                     ; preds = %3
  %14 = add nsw i32 %9, %1, !dbg !408
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %0, i32 %14) #7, !dbg !409
  br label %15, !dbg !409

; <label>:15:                                     ; preds = %3, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !411
  call void @llvm.va_start(i8* nonnull %5), !dbg !411
  %17 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0, !dbg !412
  %18 = load i8*, i8** %17, align 8, !dbg !412, !tbaa !40
  %19 = load i32, i32* %8, align 4, !dbg !413, !tbaa !70
  %20 = sext i32 %19 to i64, !dbg !414
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !414
  %22 = sext i32 %1 to i64, !dbg !415
  %23 = call i32 @vsnprintf(i8* %21, i64 %22, i8* %2, %struct.__va_list_tag* nonnull %16) #7, !dbg !416
  call void @llvm.va_end(i8* nonnull %5), !dbg !418
  %24 = icmp slt i32 %23, 0, !dbg !419
  br i1 %24, label %25, label %26, !dbg !421

; <label>:25:                                     ; preds = %15
  call void (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !422
  unreachable

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %8, align 4, !dbg !423, !tbaa !70
  %28 = add nsw i32 %27, %23, !dbg !423
  store i32 %28, i32* %8, align 4, !dbg !423, !tbaa !70
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #5, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  ret void, !dbg !424
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local void @strbuf_append_fmt_retry(%struct.strbuf_t*, i8*, ...) local_unnamed_addr #0 !dbg !425 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !437
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %0, i64 0, i32 0
  br label %9, !dbg !440

; <label>:9:                                      ; preds = %25, %2
  %10 = phi i32 [ 0, %2 ], [ 1, %25 ], !dbg !442
  call void @llvm.va_start(i8* nonnull %4), !dbg !444
  %11 = load i32, i32* %6, align 8, !dbg !448, !tbaa !48
  %12 = load i32, i32* %7, align 4, !dbg !449, !tbaa !70
  %13 = xor i32 %12, -1, !dbg !450
  %14 = add i32 %11, %13, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %15 = load i8*, i8** %8, align 8, !dbg !453, !tbaa !40
  %16 = sext i32 %12 to i64, !dbg !454
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !454
  %18 = add nsw i32 %14, 1, !dbg !455
  %19 = sext i32 %18 to i64, !dbg !456
  %20 = call i32 @vsnprintf(i8* %17, i64 %19, i8* %1, %struct.__va_list_tag* nonnull %5) #7, !dbg !457
  call void @llvm.va_end(i8* nonnull %4), !dbg !459
  %21 = icmp sgt i32 %20, %14, !dbg !460
  br i1 %21, label %22, label %28, !dbg !462

; <label>:22:                                     ; preds = %9
  %23 = icmp eq i32 %10, 0, !dbg !463
  br i1 %23, label %25, label %24, !dbg !465

; <label>:24:                                     ; preds = %22
  call void (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !466
  unreachable

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %7, align 4, !dbg !467, !tbaa !70
  %27 = add nsw i32 %26, %20, !dbg !468
  call void @strbuf_resize(%struct.strbuf_t* nonnull %0, i32 %27) #8, !dbg !469
  br label %9, !dbg !470, !llvm.loop !471

; <label>:28:                                     ; preds = %9
  %29 = load i32, i32* %7, align 4, !dbg !474, !tbaa !70
  %30 = add nsw i32 %29, %20, !dbg !474
  store i32 %30, i32* %7, align 4, !dbg !474, !tbaa !70
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  ret void, !dbg !475
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
!74 = !DILocation(line: 143, column: 1, scope: !63, inlinedAt: !68)
!75 = !DILocation(line: 66, column: 1, scope: !9)
!76 = distinct !DISubprogram(name: "die", scope: !1, file: !1, line: 32, type: !77, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !81)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !79, null}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "fmt", arg: 1, scope: !76, file: !1, line: 32, type: !79)
!83 = !DILocalVariable(name: "arg", scope: !76, file: !1, line: 34, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !87, line: 51, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 204, baseType: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 192, elements: !98)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 204, size: 192, elements: !91)
!91 = !{!92, !94, !95, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !90, file: !1, line: 204, baseType: !93, size: 32)
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !90, file: !1, line: 204, baseType: !93, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !90, file: !1, line: 204, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !90, file: !1, line: 204, baseType: !96, size: 64, offset: 128)
!98 = !{!99}
!99 = !DISubrange(count: 1)
!100 = !DILocation(line: 32, column: 29, scope: !76)
!101 = !DILocation(line: 34, column: 5, scope: !76)
!102 = !DILocation(line: 34, column: 13, scope: !76)
!103 = !DILocation(line: 36, column: 5, scope: !76)
!104 = !DILocation(line: 37, column: 14, scope: !76)
!105 = !{!106, !42, i64 24}
!106 = !{!"_reent", !45, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !45, i64 32, !43, i64 36, !45, i64 64, !42, i64 72, !45, i64 80, !42, i64 88, !42, i64 96, !45, i64 104, !42, i64 112, !42, i64 120, !45, i64 128, !42, i64 136, !43, i64 144, !42, i64 504, !107, i64 512, !42, i64 1304, !109, i64 1312, !43, i64 1336}
!107 = !{!"_atexit", !42, i64 0, !45, i64 8, !43, i64 16, !108, i64 272}
!108 = !{!"_on_exit_args", !43, i64 0, !43, i64 256, !45, i64 512, !45, i64 516}
!109 = !{!"_glue", !42, i64 0, !45, i64 8, !42, i64 16}
!110 = !DILocation(line: 37, column: 5, scope: !76)
!111 = !DILocation(line: 38, column: 5, scope: !76)
!112 = !DILocation(line: 39, column: 13, scope: !76)
!113 = !DILocation(line: 39, column: 5, scope: !76)
!114 = !DILocation(line: 41, column: 5, scope: !76)
!115 = distinct !DISubprogram(name: "strbuf_new", scope: !1, file: !1, line: 68, type: !116, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!12, !21}
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "len", arg: 1, scope: !115, file: !1, line: 68, type: !21)
!120 = !DILocalVariable(name: "s", scope: !115, file: !1, line: 70, type: !12)
!121 = !DILocation(line: 68, column: 26, scope: !115)
!122 = !DILocation(line: 72, column: 9, scope: !115)
!123 = !DILocation(line: 70, column: 15, scope: !115)
!124 = !DILocation(line: 73, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !115, file: !1, line: 73, column: 9)
!126 = !DILocation(line: 73, column: 9, scope: !115)
!127 = !DILocation(line: 74, column: 9, scope: !125)
!128 = !DILocation(line: 44, column: 28, scope: !9, inlinedAt: !129)
!129 = distinct !DILocation(line: 76, column: 5, scope: !115)
!130 = !DILocation(line: 44, column: 35, scope: !9, inlinedAt: !129)
!131 = !DILocation(line: 48, column: 13, scope: !34, inlinedAt: !129)
!132 = !DILocation(line: 51, column: 20, scope: !34, inlinedAt: !129)
!133 = !DILocation(line: 46, column: 9, scope: !9, inlinedAt: !129)
!134 = !DILocation(line: 48, column: 9, scope: !9, inlinedAt: !129)
!135 = !DILocation(line: 53, column: 8, scope: !9, inlinedAt: !129)
!136 = !DILocation(line: 53, column: 12, scope: !9, inlinedAt: !129)
!137 = !DILocation(line: 54, column: 8, scope: !9, inlinedAt: !129)
!138 = !DILocation(line: 54, column: 13, scope: !9, inlinedAt: !129)
!139 = !DILocation(line: 55, column: 8, scope: !9, inlinedAt: !129)
!140 = !DILocation(line: 55, column: 15, scope: !9, inlinedAt: !129)
!141 = !DILocation(line: 59, column: 8, scope: !9, inlinedAt: !129)
!142 = !DILocation(line: 59, column: 14, scope: !9, inlinedAt: !129)
!143 = !DILocation(line: 61, column: 21, scope: !9, inlinedAt: !129)
!144 = !DILocation(line: 61, column: 14, scope: !9, inlinedAt: !129)
!145 = !DILocation(line: 61, column: 12, scope: !9, inlinedAt: !129)
!146 = !DILocation(line: 62, column: 10, scope: !59, inlinedAt: !129)
!147 = !DILocation(line: 62, column: 9, scope: !9, inlinedAt: !129)
!148 = !DILocation(line: 63, column: 9, scope: !59, inlinedAt: !129)
!149 = !DILocation(line: 57, column: 8, scope: !9, inlinedAt: !129)
!150 = !DILocation(line: 140, column: 49, scope: !63, inlinedAt: !151)
!151 = distinct !DILocation(line: 65, column: 5, scope: !9, inlinedAt: !129)
!152 = !DILocation(line: 142, column: 15, scope: !63, inlinedAt: !151)
!153 = !DILocation(line: 142, column: 5, scope: !63, inlinedAt: !151)
!154 = !DILocation(line: 142, column: 23, scope: !63, inlinedAt: !151)
!155 = !DILocation(line: 143, column: 1, scope: !63, inlinedAt: !151)
!156 = !DILocation(line: 66, column: 1, scope: !9, inlinedAt: !129)
!157 = !DILocation(line: 79, column: 16, scope: !115)
!158 = !{!41, !45, i64 20}
!159 = !DILocation(line: 81, column: 5, scope: !115)
!160 = distinct !DISubprogram(name: "strbuf_set_increment", scope: !1, file: !1, line: 84, type: !10, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !161)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "s", arg: 1, scope: !160, file: !1, line: 84, type: !12)
!163 = !DILocalVariable(name: "increment", arg: 2, scope: !160, file: !1, line: 84, type: !21)
!164 = !DILocation(line: 84, column: 37, scope: !160)
!165 = !DILocation(line: 84, column: 44, scope: !160)
!166 = !DILocation(line: 88, column: 24, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 88, column: 9)
!168 = !DILocation(line: 89, column: 9, scope: !167)
!169 = !DILocation(line: 91, column: 8, scope: !160)
!170 = !DILocation(line: 91, column: 18, scope: !160)
!171 = !{!41, !45, i64 16}
!172 = !DILocation(line: 92, column: 1, scope: !160)
!173 = distinct !DISubprogram(name: "strbuf_free", scope: !1, file: !1, line: 104, type: !64, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !174)
!174 = !{!175}
!175 = !DILocalVariable(name: "s", arg: 1, scope: !173, file: !1, line: 104, type: !12)
!176 = !DILocation(line: 104, column: 28, scope: !173)
!177 = !DILocalVariable(name: "s", arg: 1, scope: !178, file: !1, line: 94, type: !12)
!178 = distinct !DISubprogram(name: "debug_stats", scope: !1, file: !1, line: 94, type: !64, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !179)
!179 = !{!177}
!180 = !DILocation(line: 94, column: 42, scope: !178, inlinedAt: !181)
!181 = distinct !DILocation(line: 106, column: 5, scope: !173)
!182 = !DILocation(line: 96, column: 12, scope: !183, inlinedAt: !181)
!183 = distinct !DILexicalBlock(scope: !178, file: !1, line: 96, column: 9)
!184 = !DILocation(line: 96, column: 9, scope: !183, inlinedAt: !181)
!185 = !DILocation(line: 96, column: 9, scope: !178, inlinedAt: !181)
!186 = !DILocation(line: 97, column: 17, scope: !187, inlinedAt: !181)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 96, column: 19)
!188 = !DILocation(line: 98, column: 17, scope: !187, inlinedAt: !181)
!189 = !DILocation(line: 98, column: 29, scope: !187, inlinedAt: !181)
!190 = !{!41, !45, i64 24}
!191 = !DILocation(line: 98, column: 42, scope: !187, inlinedAt: !181)
!192 = !DILocation(line: 98, column: 53, scope: !187, inlinedAt: !181)
!193 = !DILocation(line: 97, column: 9, scope: !187, inlinedAt: !181)
!194 = !DILocation(line: 99, column: 5, scope: !187, inlinedAt: !181)
!195 = !DILocation(line: 100, column: 1, scope: !178, inlinedAt: !181)
!196 = !DILocation(line: 108, column: 12, scope: !197)
!197 = distinct !DILexicalBlock(scope: !173, file: !1, line: 108, column: 9)
!198 = !DILocation(line: 108, column: 9, scope: !197)
!199 = !DILocation(line: 108, column: 9, scope: !173)
!200 = !DILocation(line: 109, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 108, column: 17)
!202 = !DILocation(line: 110, column: 16, scope: !201)
!203 = !DILocation(line: 111, column: 5, scope: !201)
!204 = !DILocation(line: 112, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !173, file: !1, line: 112, column: 9)
!206 = !DILocation(line: 112, column: 9, scope: !205)
!207 = !DILocation(line: 112, column: 9, scope: !173)
!208 = !DILocation(line: 113, column: 14, scope: !205)
!209 = !DILocation(line: 113, column: 9, scope: !205)
!210 = !DILocation(line: 114, column: 1, scope: !173)
!211 = distinct !DISubprogram(name: "strbuf_free_to_string", scope: !1, file: !1, line: 116, type: !212, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !215)
!212 = !DISubroutineType(types: !213)
!213 = !{!18, !12, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!215 = !{!216, !217, !218}
!216 = !DILocalVariable(name: "s", arg: 1, scope: !211, file: !1, line: 116, type: !12)
!217 = !DILocalVariable(name: "len", arg: 2, scope: !211, file: !1, line: 116, type: !214)
!218 = !DILocalVariable(name: "buf", scope: !211, file: !1, line: 118, type: !18)
!219 = !DILocation(line: 116, column: 39, scope: !211)
!220 = !DILocation(line: 116, column: 47, scope: !211)
!221 = !DILocation(line: 94, column: 42, scope: !178, inlinedAt: !222)
!222 = distinct !DILocation(line: 120, column: 5, scope: !211)
!223 = !DILocation(line: 96, column: 12, scope: !183, inlinedAt: !222)
!224 = !DILocation(line: 96, column: 9, scope: !183, inlinedAt: !222)
!225 = !DILocation(line: 96, column: 9, scope: !178, inlinedAt: !222)
!226 = !DILocation(line: 142, column: 15, scope: !63, inlinedAt: !227)
!227 = distinct !DILocation(line: 122, column: 5, scope: !211)
!228 = !DILocation(line: 97, column: 17, scope: !187, inlinedAt: !222)
!229 = !DILocation(line: 98, column: 17, scope: !187, inlinedAt: !222)
!230 = !DILocation(line: 98, column: 29, scope: !187, inlinedAt: !222)
!231 = !DILocation(line: 98, column: 42, scope: !187, inlinedAt: !222)
!232 = !DILocation(line: 98, column: 53, scope: !187, inlinedAt: !222)
!233 = !DILocation(line: 97, column: 9, scope: !187, inlinedAt: !222)
!234 = !DILocation(line: 99, column: 5, scope: !187, inlinedAt: !222)
!235 = !DILocation(line: 100, column: 1, scope: !178, inlinedAt: !222)
!236 = !DILocation(line: 140, column: 49, scope: !63, inlinedAt: !227)
!237 = !DILocation(line: 142, column: 8, scope: !63, inlinedAt: !227)
!238 = !DILocation(line: 142, column: 5, scope: !63, inlinedAt: !227)
!239 = !DILocation(line: 142, column: 23, scope: !63, inlinedAt: !227)
!240 = !DILocation(line: 143, column: 1, scope: !63, inlinedAt: !227)
!241 = !DILocation(line: 124, column: 14, scope: !211)
!242 = !DILocation(line: 118, column: 11, scope: !211)
!243 = !DILocation(line: 125, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !211, file: !1, line: 125, column: 9)
!245 = !DILocation(line: 125, column: 9, scope: !211)
!246 = !DILocation(line: 126, column: 19, scope: !244)
!247 = !DILocation(line: 126, column: 14, scope: !244)
!248 = !DILocation(line: 126, column: 9, scope: !244)
!249 = !DILocation(line: 128, column: 12, scope: !250)
!250 = distinct !DILexicalBlock(scope: !211, file: !1, line: 128, column: 9)
!251 = !DILocation(line: 128, column: 9, scope: !250)
!252 = !DILocation(line: 128, column: 9, scope: !211)
!253 = !DILocation(line: 129, column: 14, scope: !250)
!254 = !DILocation(line: 129, column: 9, scope: !250)
!255 = !DILocation(line: 131, column: 5, scope: !211)
!256 = distinct !DISubprogram(name: "strbuf_resize", scope: !1, file: !1, line: 164, type: !10, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !257)
!257 = !{!258, !259, !260}
!258 = !DILocalVariable(name: "s", arg: 1, scope: !256, file: !1, line: 164, type: !12)
!259 = !DILocalVariable(name: "len", arg: 2, scope: !256, file: !1, line: 164, type: !21)
!260 = !DILocalVariable(name: "newsize", scope: !256, file: !1, line: 166, type: !21)
!261 = !DILocation(line: 164, column: 30, scope: !256)
!262 = !DILocation(line: 164, column: 37, scope: !256)
!263 = !DILocalVariable(name: "s", arg: 1, scope: !264, file: !1, line: 134, type: !12)
!264 = distinct !DISubprogram(name: "calculate_new_size", scope: !1, file: !1, line: 134, type: !265, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!21, !12, !21}
!267 = !{!263, !268, !269, !270}
!268 = !DILocalVariable(name: "len", arg: 2, scope: !264, file: !1, line: 134, type: !21)
!269 = !DILocalVariable(name: "reqsize", scope: !264, file: !1, line: 136, type: !21)
!270 = !DILocalVariable(name: "newsize", scope: !264, file: !1, line: 136, type: !21)
!271 = !DILocation(line: 134, column: 41, scope: !264, inlinedAt: !272)
!272 = distinct !DILocation(line: 168, column: 15, scope: !256)
!273 = !DILocation(line: 134, column: 48, scope: !264, inlinedAt: !272)
!274 = !DILocation(line: 138, column: 13, scope: !275, inlinedAt: !272)
!275 = distinct !DILexicalBlock(scope: !264, file: !1, line: 138, column: 9)
!276 = !DILocation(line: 138, column: 9, scope: !264, inlinedAt: !272)
!277 = !DILocation(line: 139, column: 9, scope: !275, inlinedAt: !272)
!278 = !DILocation(line: 142, column: 19, scope: !264, inlinedAt: !272)
!279 = !DILocation(line: 136, column: 9, scope: !264, inlinedAt: !272)
!280 = !DILocation(line: 145, column: 12, scope: !281, inlinedAt: !272)
!281 = distinct !DILexicalBlock(scope: !264, file: !1, line: 145, column: 9)
!282 = !DILocation(line: 145, column: 17, scope: !281, inlinedAt: !272)
!283 = !DILocation(line: 145, column: 9, scope: !264, inlinedAt: !272)
!284 = !DILocation(line: 136, column: 18, scope: !264, inlinedAt: !272)
!285 = !DILocation(line: 149, column: 12, scope: !286, inlinedAt: !272)
!286 = distinct !DILexicalBlock(scope: !264, file: !1, line: 149, column: 9)
!287 = !DILocation(line: 149, column: 22, scope: !286, inlinedAt: !272)
!288 = !DILocation(line: 149, column: 9, scope: !264, inlinedAt: !272)
!289 = !DILocation(line: 151, column: 24, scope: !290, inlinedAt: !272)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 149, column: 27)
!291 = !DILocation(line: 151, column: 9, scope: !290, inlinedAt: !272)
!292 = !DILocation(line: 152, column: 21, scope: !290, inlinedAt: !272)
!293 = distinct !{!293, !294, !295}
!294 = !DILocation(line: 151, column: 9, scope: !290)
!295 = !DILocation(line: 152, column: 28, scope: !290)
!296 = !DILocation(line: 155, column: 29, scope: !297, inlinedAt: !272)
!297 = distinct !DILexicalBlock(scope: !286, file: !1, line: 153, column: 12)
!298 = !DILocation(line: 155, column: 44, scope: !297, inlinedAt: !272)
!299 = !DILocation(line: 155, column: 65, scope: !297, inlinedAt: !272)
!300 = !DILocation(line: 0, scope: !264, inlinedAt: !272)
!301 = !DILocation(line: 159, column: 1, scope: !264, inlinedAt: !272)
!302 = !DILocation(line: 166, column: 9, scope: !256)
!303 = !DILocation(line: 170, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !256, file: !1, line: 170, column: 9)
!305 = !DILocation(line: 170, column: 18, scope: !304)
!306 = !DILocation(line: 170, column: 9, scope: !256)
!307 = !DILocation(line: 171, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !1, line: 170, column: 23)
!309 = !DILocation(line: 172, column: 17, scope: !308)
!310 = !DILocation(line: 172, column: 29, scope: !308)
!311 = !DILocation(line: 171, column: 9, scope: !308)
!312 = !DILocation(line: 173, column: 5, scope: !308)
!313 = !DILocation(line: 175, column: 13, scope: !256)
!314 = !DILocation(line: 176, column: 25, scope: !256)
!315 = !DILocation(line: 176, column: 30, scope: !256)
!316 = !DILocation(line: 176, column: 14, scope: !256)
!317 = !DILocation(line: 176, column: 12, scope: !256)
!318 = !DILocation(line: 177, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !256, file: !1, line: 177, column: 9)
!320 = !DILocation(line: 177, column: 9, scope: !256)
!321 = !DILocation(line: 178, column: 9, scope: !319)
!322 = !DILocation(line: 179, column: 8, scope: !256)
!323 = !DILocation(line: 179, column: 16, scope: !256)
!324 = !DILocation(line: 180, column: 1, scope: !256)
!325 = distinct !DISubprogram(name: "strbuf_append_string", scope: !1, file: !1, line: 182, type: !326, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !12, !79}
!328 = !{!329, !330, !331, !332}
!329 = !DILocalVariable(name: "s", arg: 1, scope: !325, file: !1, line: 182, type: !12)
!330 = !DILocalVariable(name: "str", arg: 2, scope: !325, file: !1, line: 182, type: !79)
!331 = !DILocalVariable(name: "space", scope: !325, file: !1, line: 184, type: !21)
!332 = !DILocalVariable(name: "i", scope: !325, file: !1, line: 184, type: !21)
!333 = !DILocation(line: 182, column: 37, scope: !325)
!334 = !DILocation(line: 182, column: 52, scope: !325)
!335 = !DILocalVariable(name: "s", arg: 1, scope: !336, file: !14, line: 90, type: !12)
!336 = distinct !DISubprogram(name: "strbuf_empty_length", scope: !14, file: !14, line: 90, type: !337, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!21, !12}
!339 = !{!335}
!340 = !DILocation(line: 90, column: 49, scope: !336, inlinedAt: !341)
!341 = distinct !DILocation(line: 186, column: 13, scope: !325)
!342 = !DILocation(line: 92, column: 15, scope: !336, inlinedAt: !341)
!343 = !DILocation(line: 92, column: 25, scope: !336, inlinedAt: !341)
!344 = !DILocation(line: 92, column: 5, scope: !336, inlinedAt: !341)
!345 = !DILocation(line: 184, column: 16, scope: !325)
!346 = !DILocation(line: 188, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 188, column: 5)
!348 = distinct !DILexicalBlock(scope: !325, file: !1, line: 188, column: 5)
!349 = !DILocation(line: 188, column: 5, scope: !348)
!350 = !DILocation(line: 92, column: 32, scope: !336, inlinedAt: !341)
!351 = !DILocation(line: 184, column: 9, scope: !325)
!352 = !DILocation(line: 189, column: 19, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 189, column: 13)
!354 = distinct !DILexicalBlock(scope: !347, file: !1, line: 188, column: 30)
!355 = !DILocation(line: 189, column: 13, scope: !354)
!356 = !DILocation(line: 190, column: 40, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !1, line: 189, column: 24)
!358 = !DILocation(line: 190, column: 13, scope: !357)
!359 = !DILocation(line: 90, column: 49, scope: !336, inlinedAt: !360)
!360 = distinct !DILocation(line: 191, column: 21, scope: !357)
!361 = !DILocation(line: 92, column: 15, scope: !336, inlinedAt: !360)
!362 = !DILocation(line: 92, column: 25, scope: !336, inlinedAt: !360)
!363 = !DILocation(line: 92, column: 32, scope: !336, inlinedAt: !360)
!364 = !DILocation(line: 92, column: 5, scope: !336, inlinedAt: !360)
!365 = !DILocation(line: 194, column: 29, scope: !354)
!366 = !DILocation(line: 192, column: 9, scope: !357)
!367 = !DILocation(line: 194, column: 19, scope: !354)
!368 = !DILocation(line: 0, scope: !325)
!369 = !DILocation(line: 194, column: 12, scope: !354)
!370 = !DILocation(line: 194, column: 9, scope: !354)
!371 = !DILocation(line: 194, column: 27, scope: !354)
!372 = !DILocation(line: 195, column: 18, scope: !354)
!373 = !DILocation(line: 196, column: 14, scope: !354)
!374 = !DILocation(line: 188, column: 26, scope: !347)
!375 = distinct !{!375, !349, !376}
!376 = !DILocation(line: 197, column: 5, scope: !348)
!377 = !DILocation(line: 198, column: 1, scope: !325)
!378 = distinct !DISubprogram(name: "strbuf_append_fmt", scope: !1, file: !1, line: 202, type: !379, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !12, !21, !79, null}
!381 = !{!382, !383, !384, !385, !386}
!382 = !DILocalVariable(name: "s", arg: 1, scope: !378, file: !1, line: 202, type: !12)
!383 = !DILocalVariable(name: "len", arg: 2, scope: !378, file: !1, line: 202, type: !21)
!384 = !DILocalVariable(name: "fmt", arg: 3, scope: !378, file: !1, line: 202, type: !79)
!385 = !DILocalVariable(name: "arg", scope: !378, file: !1, line: 204, type: !84)
!386 = !DILocalVariable(name: "fmt_len", scope: !378, file: !1, line: 205, type: !21)
!387 = !DILocation(line: 202, column: 34, scope: !378)
!388 = !DILocation(line: 202, column: 41, scope: !378)
!389 = !DILocation(line: 202, column: 58, scope: !378)
!390 = !DILocation(line: 204, column: 5, scope: !378)
!391 = !DILocation(line: 204, column: 13, scope: !378)
!392 = !DILocalVariable(name: "s", arg: 1, scope: !393, file: !14, line: 95, type: !12)
!393 = distinct !DISubprogram(name: "strbuf_ensure_empty_length", scope: !14, file: !14, line: 95, type: !10, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !394)
!394 = !{!392, !395}
!395 = !DILocalVariable(name: "len", arg: 2, scope: !393, file: !14, line: 95, type: !21)
!396 = !DILocation(line: 95, column: 57, scope: !393, inlinedAt: !397)
!397 = distinct !DILocation(line: 207, column: 5, scope: !378)
!398 = !DILocation(line: 95, column: 64, scope: !393, inlinedAt: !397)
!399 = !DILocation(line: 90, column: 49, scope: !336, inlinedAt: !400)
!400 = distinct !DILocation(line: 97, column: 15, scope: !401, inlinedAt: !397)
!401 = distinct !DILexicalBlock(scope: !393, file: !14, line: 97, column: 9)
!402 = !DILocation(line: 92, column: 15, scope: !336, inlinedAt: !400)
!403 = !DILocation(line: 92, column: 25, scope: !336, inlinedAt: !400)
!404 = !DILocation(line: 92, column: 32, scope: !336, inlinedAt: !400)
!405 = !DILocation(line: 92, column: 5, scope: !336, inlinedAt: !400)
!406 = !DILocation(line: 97, column: 13, scope: !401, inlinedAt: !397)
!407 = !DILocation(line: 97, column: 9, scope: !393, inlinedAt: !397)
!408 = !DILocation(line: 98, column: 36, scope: !401, inlinedAt: !397)
!409 = !DILocation(line: 98, column: 9, scope: !401, inlinedAt: !397)
!410 = !DILocation(line: 99, column: 1, scope: !393, inlinedAt: !397)
!411 = !DILocation(line: 209, column: 5, scope: !378)
!412 = !DILocation(line: 210, column: 28, scope: !378)
!413 = !DILocation(line: 210, column: 37, scope: !378)
!414 = !DILocation(line: 210, column: 32, scope: !378)
!415 = !DILocation(line: 210, column: 45, scope: !378)
!416 = !DILocation(line: 210, column: 15, scope: !378)
!417 = !DILocation(line: 205, column: 9, scope: !378)
!418 = !DILocation(line: 211, column: 5, scope: !378)
!419 = !DILocation(line: 213, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !378, file: !1, line: 213, column: 9)
!421 = !DILocation(line: 213, column: 9, scope: !378)
!422 = !DILocation(line: 214, column: 9, scope: !420)
!423 = !DILocation(line: 216, column: 15, scope: !378)
!424 = !DILocation(line: 217, column: 1, scope: !378)
!425 = distinct !DISubprogram(name: "strbuf_append_fmt_retry", scope: !1, file: !1, line: 221, type: !426, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !12, !79, null}
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DILocalVariable(name: "s", arg: 1, scope: !425, file: !1, line: 221, type: !12)
!430 = !DILocalVariable(name: "fmt", arg: 2, scope: !425, file: !1, line: 221, type: !79)
!431 = !DILocalVariable(name: "arg", scope: !425, file: !1, line: 223, type: !84)
!432 = !DILocalVariable(name: "fmt_len", scope: !425, file: !1, line: 224, type: !21)
!433 = !DILocalVariable(name: "try", scope: !425, file: !1, line: 224, type: !21)
!434 = !DILocalVariable(name: "empty_len", scope: !425, file: !1, line: 225, type: !21)
!435 = !DILocation(line: 221, column: 40, scope: !425)
!436 = !DILocation(line: 221, column: 55, scope: !425)
!437 = !DILocation(line: 223, column: 5, scope: !425)
!438 = !DILocation(line: 223, column: 13, scope: !425)
!439 = !DILocation(line: 224, column: 18, scope: !425)
!440 = !DILocation(line: 229, column: 10, scope: !441)
!441 = distinct !DILexicalBlock(scope: !425, file: !1, line: 229, column: 5)
!442 = !DILocation(line: 0, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !1, line: 229, column: 5)
!444 = !DILocation(line: 230, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !1, line: 229, column: 28)
!446 = !DILocation(line: 90, column: 49, scope: !336, inlinedAt: !447)
!447 = distinct !DILocation(line: 234, column: 21, scope: !445)
!448 = !DILocation(line: 92, column: 15, scope: !336, inlinedAt: !447)
!449 = !DILocation(line: 92, column: 25, scope: !336, inlinedAt: !447)
!450 = !DILocation(line: 92, column: 32, scope: !336, inlinedAt: !447)
!451 = !DILocation(line: 92, column: 5, scope: !336, inlinedAt: !447)
!452 = !DILocation(line: 225, column: 9, scope: !425)
!453 = !DILocation(line: 236, column: 32, scope: !445)
!454 = !DILocation(line: 236, column: 36, scope: !445)
!455 = !DILocation(line: 236, column: 59, scope: !445)
!456 = !DILocation(line: 236, column: 49, scope: !445)
!457 = !DILocation(line: 236, column: 19, scope: !445)
!458 = !DILocation(line: 224, column: 9, scope: !425)
!459 = !DILocation(line: 237, column: 9, scope: !445)
!460 = !DILocation(line: 239, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !445, file: !1, line: 239, column: 13)
!462 = !DILocation(line: 239, column: 13, scope: !445)
!463 = !DILocation(line: 241, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !445, file: !1, line: 241, column: 13)
!465 = !DILocation(line: 241, column: 13, scope: !445)
!466 = !DILocation(line: 242, column: 13, scope: !464)
!467 = !DILocation(line: 244, column: 29, scope: !445)
!468 = !DILocation(line: 244, column: 36, scope: !445)
!469 = !DILocation(line: 244, column: 9, scope: !445)
!470 = !DILocation(line: 229, column: 5, scope: !443)
!471 = distinct !{!471, !472, !473}
!472 = !DILocation(line: 229, column: 5, scope: !441)
!473 = !DILocation(line: 245, column: 5, scope: !441)
!474 = !DILocation(line: 247, column: 15, scope: !425)
!475 = !DILocation(line: 248, column: 1, scope: !425)
