; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zmalloc.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zmalloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutex_t_ = type opaque
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

@used_memory_mutex = dso_local local_unnamed_addr global %struct.pthread_mutex_t_* inttoptr (i64 -1 to %struct.pthread_mutex_t_*), align 8, !dbg !0
@zmalloc_oom_handler = internal unnamed_addr global void (i64)* @zmalloc_default_oom, align 8, !dbg !16
@used_memory = internal global i64 0, align 8, !dbg !21
@.str.1 = private unnamed_addr constant [53 x i8] c"zmalloc: Out of memory trying to allocate %zu bytes\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @zlibc_free(i8*) local_unnamed_addr #0 !dbg !31 {
  tail call void @free(i8* %0) #6, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  ret void, !dbg !38
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zmalloc(i64) local_unnamed_addr #0 !dbg !39 {
  %2 = add i64 %0, 8, !dbg !48
  %3 = tail call i8* @malloc(i64 %2) #6, !dbg !49
  %4 = icmp eq i8* %3, null, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %4, label %5, label %7, !dbg !53

; <label>:5:                                      ; preds = %1
  %6 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !54, !tbaa !55
  tail call void %6(i64 %0) #6, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br label %7, !dbg !54

; <label>:7:                                      ; preds = %1, %5
  %8 = bitcast i8* %3 to i64*, !dbg !59
  store i64 %0, i64* %8, align 8, !dbg !60, !tbaa !61
  %9 = and i64 %2, 7, !dbg !64
  %10 = icmp eq i64 %9, 0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %10, label %12, label %11, !dbg !63

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br label %12, !dbg !64

; <label>:12:                                     ; preds = %7, %11
  %13 = atomicrmw add i64* @used_memory, i64 %2 monotonic, !dbg !63
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  ret i8* %14, !dbg !67
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zcalloc(i64) local_unnamed_addr #0 !dbg !68 {
  %2 = add i64 %0, 8, !dbg !75
  %3 = tail call i8* @calloc(i64 1, i64 %2) #6, !dbg !76
  %4 = icmp eq i8* %3, null, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %4, label %5, label %7, !dbg !80

; <label>:5:                                      ; preds = %1
  %6 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !81, !tbaa !55
  tail call void %6(i64 %0) #6, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br label %7, !dbg !81

; <label>:7:                                      ; preds = %1, %5
  %8 = bitcast i8* %3 to i64*, !dbg !82
  store i64 %0, i64* %8, align 8, !dbg !83, !tbaa !61
  %9 = and i64 %2, 7, !dbg !85
  %10 = icmp eq i64 %9, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %10, label %12, label %11, !dbg !84

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br label %12, !dbg !85

; <label>:12:                                     ; preds = %7, %11
  %13 = atomicrmw add i64* @used_memory, i64 %2 monotonic, !dbg !84
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  ret i8* %14, !dbg !88
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zrealloc(i8*, i64) local_unnamed_addr #0 !dbg !89 {
  %3 = icmp eq i8* %0, null, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %3, label %4, label %17, !dbg !106

; <label>:4:                                      ; preds = %2
  %5 = add i64 %1, 8, !dbg !109
  %6 = tail call i8* @malloc(i64 %5) #6, !dbg !110
  %7 = icmp eq i8* %6, null, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %7, label %8, label %10, !dbg !113

; <label>:8:                                      ; preds = %4
  %9 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !114, !tbaa !55
  tail call void %9(i64 %1) #6, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br label %10, !dbg !114

; <label>:10:                                     ; preds = %8, %4
  %11 = bitcast i8* %6 to i64*, !dbg !115
  store i64 %1, i64* %11, align 8, !dbg !116, !tbaa !61
  %12 = and i64 %5, 7, !dbg !118
  %13 = icmp eq i64 %12, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %13, label %15, label %14, !dbg !117

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br label %15, !dbg !118

; <label>:15:                                     ; preds = %10, %14
  %16 = atomicrmw add i64* @used_memory, i64 %5 monotonic, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br label %39, !dbg !120

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !121
  %19 = bitcast i8* %18 to i64*, !dbg !123
  %20 = load i64, i64* %19, align 8, !dbg !124, !tbaa !61
  %21 = add i64 %1, 8, !dbg !126
  %22 = tail call i8* @realloc(i8* nonnull %18, i64 %21) #6, !dbg !127
  %23 = icmp eq i8* %22, null, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  br i1 %23, label %24, label %26, !dbg !131

; <label>:24:                                     ; preds = %17
  %25 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !132, !tbaa !55
  tail call void %25(i64 %1) #6, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br label %26, !dbg !132

; <label>:26:                                     ; preds = %17, %24
  %27 = bitcast i8* %22 to i64*, !dbg !133
  store i64 %1, i64* %27, align 8, !dbg !134, !tbaa !61
  %28 = add i64 %20, 8, !dbg !135
  %29 = and i64 %28, 7, !dbg !136
  %30 = icmp eq i64 %29, 0, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br i1 %30, label %32, label %31, !dbg !135

; <label>:31:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br label %32, !dbg !136

; <label>:32:                                     ; preds = %26, %31
  %33 = atomicrmw sub i64* @used_memory, i64 %28 monotonic, !dbg !135
  %34 = and i64 %21, 7, !dbg !139
  %35 = icmp eq i64 %34, 0, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %35, label %37, label %36, !dbg !138

; <label>:36:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %37, !dbg !139

; <label>:37:                                     ; preds = %32, %36
  %38 = atomicrmw add i64* @used_memory, i64 %21 monotonic, !dbg !138
  br label %39, !dbg !141

; <label>:39:                                     ; preds = %37, %15
  %40 = phi i8* [ %6, %15 ], [ %22, %37 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret i8* %41, !dbg !144
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_size(i8* nocapture readonly) local_unnamed_addr #0 !dbg !145 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !153
  %3 = bitcast i8* %2 to i64*, !dbg !155
  %4 = load i64, i64* %3, align 8, !dbg !156, !tbaa !61
  %5 = and i64 %4, 7, !dbg !158
  %6 = icmp eq i64 %5, 0, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %6, label %10, label %7, !dbg !160

; <label>:7:                                      ; preds = %1
  %8 = add i64 %4, 8, !dbg !161
  %9 = sub i64 %8, %5, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br label %10, !dbg !163

; <label>:10:                                     ; preds = %1, %7
  %11 = phi i64 [ %9, %7 ], [ %4, %1 ], !dbg !164
  %12 = add i64 %11, 8, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  ret i64 %12, !dbg !166
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_usable(i8* nocapture readonly) local_unnamed_addr #0 !dbg !167 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !173
  %3 = bitcast i8* %2 to i64*, !dbg !175
  %4 = load i64, i64* %3, align 8, !dbg !176, !tbaa !61
  %5 = and i64 %4, 7, !dbg !178
  %6 = icmp eq i64 %5, 0, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  br i1 %6, label %10, label %7, !dbg !179

; <label>:7:                                      ; preds = %1
  %8 = add i64 %4, 8, !dbg !180
  %9 = sub i64 %8, %5, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br label %10, !dbg !182

; <label>:10:                                     ; preds = %1, %7
  %11 = phi i64 [ %9, %7 ], [ %4, %1 ], !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  ret i64 %11, !dbg !185
}

; Function Attrs: noredzone nounwind
define dso_local void @zfree(i8*) local_unnamed_addr #0 !dbg !186 {
  %2 = icmp eq i8* %0, null, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %2, label %13, label %3, !dbg !196

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !197
  %5 = bitcast i8* %4 to i64*, !dbg !199
  %6 = load i64, i64* %5, align 8, !dbg !200, !tbaa !61
  %7 = add i64 %6, 8, !dbg !202
  %8 = and i64 %7, 7, !dbg !203
  %9 = icmp eq i64 %8, 0, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %9, label %11, label %10, !dbg !202

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br label %11, !dbg !203

; <label>:11:                                     ; preds = %3, %10
  %12 = atomicrmw sub i64* @used_memory, i64 %7 monotonic, !dbg !202
  tail call void @free(i8* nonnull %4) #6, !dbg !205
  br label %13, !dbg !206

; <label>:13:                                     ; preds = %1, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  ret void, !dbg !206
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zstrdup(i8*) local_unnamed_addr #0 !dbg !208 {
  %2 = tail call i64 @strlen(i8* %0) #6, !dbg !218
  %3 = add i64 %2, 1, !dbg !219
  %4 = add i64 %2, 9, !dbg !223
  %5 = tail call i8* @malloc(i64 %4) #6, !dbg !224
  %6 = icmp eq i8* %5, null, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %6, label %7, label %9, !dbg !227

; <label>:7:                                      ; preds = %1
  %8 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !228, !tbaa !55
  tail call void %8(i64 %3) #6, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br label %9, !dbg !228

; <label>:9:                                      ; preds = %7, %1
  %10 = bitcast i8* %5 to i64*, !dbg !229
  store i64 %3, i64* %10, align 8, !dbg !230, !tbaa !61
  %11 = and i64 %4, 7, !dbg !232
  %12 = icmp eq i64 %11, 0, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  br i1 %12, label %14, label %13, !dbg !231

; <label>:13:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br label %14, !dbg !232

; <label>:14:                                     ; preds = %9, %13
  %15 = atomicrmw add i64* @used_memory, i64 %4 monotonic, !dbg !231
  %16 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %17 = tail call i8* @memcpy(i8* nonnull %16, i8* %0, i64 %3) #6, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  ret i8* %16, !dbg !237
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_used_memory() local_unnamed_addr #0 !dbg !238 {
  %1 = load atomic i64, i64* @used_memory monotonic, align 8, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  ret i64 %1, !dbg !246
}

; Function Attrs: noredzone nounwind
define dso_local void @zmalloc_set_oom_handler(void (i64)*) local_unnamed_addr #0 !dbg !247 {
  store void (i64)* %0, void (i64)** @zmalloc_oom_handler, align 8, !dbg !253, !tbaa !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  ret void, !dbg !254
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_get_rss() local_unnamed_addr #0 !dbg !255 {
  %1 = load atomic i64, i64* @used_memory monotonic, align 8, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  ret i64 %1, !dbg !260
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zmalloc_get_allocator_info(i64* nocapture, i64* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !261 {
  store i64 0, i64* %1, align 8, !dbg !272, !tbaa !61
  store i64 0, i64* %2, align 8, !dbg !273, !tbaa !61
  store i64 0, i64* %0, align 8, !dbg !274, !tbaa !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  ret i32 1, !dbg !275
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_get_smap_bytes_by_field(i8* nocapture readnone, i64) local_unnamed_addr #0 !dbg !276 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  ret i64 0, !dbg !285
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_get_private_dirty(i64) local_unnamed_addr #0 !dbg !286 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  ret i64 0, !dbg !296
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i64 @zmalloc_get_memory_size() local_unnamed_addr #2 !dbg !297 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  ret i64 0, !dbg !298
}

; Function Attrs: noredzone noreturn nounwind
define internal void @zmalloc_default_oom(i64) #3 !dbg !299 {
  %2 = tail call %struct._reent* @__getreent() #6, !dbg !303
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 3, !dbg !303
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !303, !tbaa !304
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %0) #6, !dbg !310
  %6 = tail call %struct._reent* @__getreent() #6, !dbg !311
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 3, !dbg !311
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !311, !tbaa !304
  %9 = tail call i32 @fflush(%struct.__sFILE* %8) #6, !dbg !312
  tail call void @abort() #8, !dbg !313
  unreachable
}

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "used_memory_mutex", scope: !2, file: !3, line: 87, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zmalloc.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !12, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 40, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !10, line: 129, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!0, !16, !21}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "zmalloc_oom_handler", scope: !2, file: !3, line: 96, type: !18, isLocal: true, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !7}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "used_memory", scope: !2, file: !3, line: 86, type: !7, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !24, line: 417, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutex_t_", file: !24, line: 417, flags: DIFlagFwdDecl)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!31 = distinct !DISubprogram(name: "zlibc_free", scope: !3, file: !3, line: 39, type: !32, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !14}
!34 = !{!35}
!35 = !DILocalVariable(name: "ptr", arg: 1, scope: !31, file: !3, line: 39, type: !14)
!36 = !DILocation(line: 39, column: 23, scope: !31)
!37 = !DILocation(line: 40, column: 5, scope: !31)
!38 = !DILocation(line: 41, column: 1, scope: !31)
!39 = distinct !DISubprogram(name: "zmalloc", scope: !3, file: !3, line: 98, type: !40, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!14, !7}
!42 = !{!43, !44, !45}
!43 = !DILocalVariable(name: "size", arg: 1, scope: !39, file: !3, line: 98, type: !7)
!44 = !DILocalVariable(name: "ptr", scope: !39, file: !3, line: 99, type: !14)
!45 = !DILocalVariable(name: "_n", scope: !46, file: !3, line: 107, type: !7)
!46 = distinct !DILexicalBlock(scope: !39, file: !3, line: 107, column: 5)
!47 = !DILocation(line: 98, column: 22, scope: !39)
!48 = !DILocation(line: 99, column: 28, scope: !39)
!49 = !DILocation(line: 99, column: 17, scope: !39)
!50 = !DILocation(line: 99, column: 11, scope: !39)
!51 = !DILocation(line: 101, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !39, file: !3, line: 101, column: 9)
!53 = !DILocation(line: 101, column: 9, scope: !39)
!54 = !DILocation(line: 101, column: 15, scope: !52)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 106, column: 7, scope: !39)
!60 = !DILocation(line: 106, column: 21, scope: !39)
!61 = !{!62, !62, i64 0}
!62 = !{!"long", !57, i64 0}
!63 = !DILocation(line: 107, column: 5, scope: !46)
!64 = !DILocation(line: 107, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !46, file: !3, line: 107, column: 5)
!66 = !DILocation(line: 108, column: 22, scope: !39)
!67 = !DILocation(line: 108, column: 5, scope: !39)
!68 = distinct !DISubprogram(name: "zcalloc", scope: !3, file: !3, line: 130, type: !40, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !69)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(name: "size", arg: 1, scope: !68, file: !3, line: 130, type: !7)
!71 = !DILocalVariable(name: "ptr", scope: !68, file: !3, line: 131, type: !14)
!72 = !DILocalVariable(name: "_n", scope: !73, file: !3, line: 139, type: !7)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 139, column: 5)
!74 = !DILocation(line: 130, column: 22, scope: !68)
!75 = !DILocation(line: 131, column: 31, scope: !68)
!76 = !DILocation(line: 131, column: 17, scope: !68)
!77 = !DILocation(line: 131, column: 11, scope: !68)
!78 = !DILocation(line: 133, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !3, line: 133, column: 9)
!80 = !DILocation(line: 133, column: 9, scope: !68)
!81 = !DILocation(line: 133, column: 15, scope: !79)
!82 = !DILocation(line: 138, column: 7, scope: !68)
!83 = !DILocation(line: 138, column: 21, scope: !68)
!84 = !DILocation(line: 139, column: 5, scope: !73)
!85 = !DILocation(line: 139, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !73, file: !3, line: 139, column: 5)
!87 = !DILocation(line: 140, column: 22, scope: !68)
!88 = !DILocation(line: 140, column: 5, scope: !68)
!89 = distinct !DISubprogram(name: "zrealloc", scope: !3, file: !3, line: 144, type: !90, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !92)
!90 = !DISubroutineType(types: !91)
!91 = !{!14, !14, !7}
!92 = !{!93, !94, !95, !96, !97, !98, !100}
!93 = !DILocalVariable(name: "ptr", arg: 1, scope: !89, file: !3, line: 144, type: !14)
!94 = !DILocalVariable(name: "size", arg: 2, scope: !89, file: !3, line: 144, type: !7)
!95 = !DILocalVariable(name: "realptr", scope: !89, file: !3, line: 146, type: !14)
!96 = !DILocalVariable(name: "oldsize", scope: !89, file: !3, line: 148, type: !7)
!97 = !DILocalVariable(name: "newptr", scope: !89, file: !3, line: 149, type: !14)
!98 = !DILocalVariable(name: "_n", scope: !99, file: !3, line: 167, type: !7)
!99 = distinct !DILexicalBlock(scope: !89, file: !3, line: 167, column: 5)
!100 = !DILocalVariable(name: "_n", scope: !101, file: !3, line: 168, type: !7)
!101 = distinct !DILexicalBlock(scope: !89, file: !3, line: 168, column: 5)
!102 = !DILocation(line: 144, column: 22, scope: !89)
!103 = !DILocation(line: 144, column: 34, scope: !89)
!104 = !DILocation(line: 151, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !89, file: !3, line: 151, column: 9)
!106 = !DILocation(line: 151, column: 9, scope: !89)
!107 = !DILocation(line: 98, column: 22, scope: !39, inlinedAt: !108)
!108 = distinct !DILocation(line: 151, column: 29, scope: !105)
!109 = !DILocation(line: 99, column: 28, scope: !39, inlinedAt: !108)
!110 = !DILocation(line: 99, column: 17, scope: !39, inlinedAt: !108)
!111 = !DILocation(line: 99, column: 11, scope: !39, inlinedAt: !108)
!112 = !DILocation(line: 101, column: 10, scope: !52, inlinedAt: !108)
!113 = !DILocation(line: 101, column: 9, scope: !39, inlinedAt: !108)
!114 = !DILocation(line: 101, column: 15, scope: !52, inlinedAt: !108)
!115 = !DILocation(line: 106, column: 7, scope: !39, inlinedAt: !108)
!116 = !DILocation(line: 106, column: 21, scope: !39, inlinedAt: !108)
!117 = !DILocation(line: 107, column: 5, scope: !46, inlinedAt: !108)
!118 = !DILocation(line: 107, column: 5, scope: !65, inlinedAt: !108)
!119 = !DILocation(line: 108, column: 5, scope: !39, inlinedAt: !108)
!120 = !DILocation(line: 151, column: 22, scope: !105)
!121 = !DILocation(line: 161, column: 25, scope: !89)
!122 = !DILocation(line: 146, column: 11, scope: !89)
!123 = !DILocation(line: 162, column: 17, scope: !89)
!124 = !DILocation(line: 162, column: 15, scope: !89)
!125 = !DILocation(line: 148, column: 12, scope: !89)
!126 = !DILocation(line: 163, column: 34, scope: !89)
!127 = !DILocation(line: 163, column: 14, scope: !89)
!128 = !DILocation(line: 149, column: 11, scope: !89)
!129 = !DILocation(line: 164, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !89, file: !3, line: 164, column: 9)
!131 = !DILocation(line: 164, column: 9, scope: !89)
!132 = !DILocation(line: 164, column: 18, scope: !130)
!133 = !DILocation(line: 166, column: 7, scope: !89)
!134 = !DILocation(line: 166, column: 24, scope: !89)
!135 = !DILocation(line: 167, column: 5, scope: !99)
!136 = !DILocation(line: 167, column: 5, scope: !137)
!137 = distinct !DILexicalBlock(scope: !99, file: !3, line: 167, column: 5)
!138 = !DILocation(line: 168, column: 5, scope: !101)
!139 = !DILocation(line: 168, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !101, file: !3, line: 168, column: 5)
!141 = !DILocation(line: 169, column: 5, scope: !89)
!142 = !DILocation(line: 0, scope: !105)
!143 = !DILocation(line: 0, scope: !89)
!144 = !DILocation(line: 171, column: 1, scope: !89)
!145 = distinct !DISubprogram(name: "zmalloc_size", scope: !3, file: !3, line: 177, type: !146, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!7, !14}
!148 = !{!149, !150, !151}
!149 = !DILocalVariable(name: "ptr", arg: 1, scope: !145, file: !3, line: 177, type: !14)
!150 = !DILocalVariable(name: "realptr", scope: !145, file: !3, line: 178, type: !14)
!151 = !DILocalVariable(name: "size", scope: !145, file: !3, line: 179, type: !7)
!152 = !DILocation(line: 177, column: 27, scope: !145)
!153 = !DILocation(line: 178, column: 31, scope: !145)
!154 = !DILocation(line: 178, column: 11, scope: !145)
!155 = !DILocation(line: 179, column: 21, scope: !145)
!156 = !DILocation(line: 179, column: 19, scope: !145)
!157 = !DILocation(line: 179, column: 12, scope: !145)
!158 = !DILocation(line: 182, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !145, file: !3, line: 182, column: 9)
!160 = !DILocation(line: 182, column: 9, scope: !145)
!161 = !DILocation(line: 182, column: 52, scope: !159)
!162 = !DILocation(line: 182, column: 37, scope: !159)
!163 = !DILocation(line: 182, column: 32, scope: !159)
!164 = !DILocation(line: 0, scope: !145)
!165 = !DILocation(line: 183, column: 16, scope: !145)
!166 = !DILocation(line: 183, column: 5, scope: !145)
!167 = distinct !DISubprogram(name: "zmalloc_usable", scope: !3, file: !3, line: 185, type: !146, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !168)
!168 = !{!169}
!169 = !DILocalVariable(name: "ptr", arg: 1, scope: !167, file: !3, line: 185, type: !14)
!170 = !DILocation(line: 185, column: 29, scope: !167)
!171 = !DILocation(line: 177, column: 27, scope: !145, inlinedAt: !172)
!172 = distinct !DILocation(line: 186, column: 12, scope: !167)
!173 = !DILocation(line: 178, column: 31, scope: !145, inlinedAt: !172)
!174 = !DILocation(line: 178, column: 11, scope: !145, inlinedAt: !172)
!175 = !DILocation(line: 179, column: 21, scope: !145, inlinedAt: !172)
!176 = !DILocation(line: 179, column: 19, scope: !145, inlinedAt: !172)
!177 = !DILocation(line: 179, column: 12, scope: !145, inlinedAt: !172)
!178 = !DILocation(line: 182, column: 13, scope: !159, inlinedAt: !172)
!179 = !DILocation(line: 182, column: 9, scope: !145, inlinedAt: !172)
!180 = !DILocation(line: 182, column: 52, scope: !159, inlinedAt: !172)
!181 = !DILocation(line: 182, column: 37, scope: !159, inlinedAt: !172)
!182 = !DILocation(line: 182, column: 32, scope: !159, inlinedAt: !172)
!183 = !DILocation(line: 0, scope: !145, inlinedAt: !172)
!184 = !DILocation(line: 183, column: 5, scope: !145, inlinedAt: !172)
!185 = !DILocation(line: 186, column: 5, scope: !167)
!186 = distinct !DISubprogram(name: "zfree", scope: !3, file: !3, line: 190, type: !32, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !187)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(name: "ptr", arg: 1, scope: !186, file: !3, line: 190, type: !14)
!189 = !DILocalVariable(name: "realptr", scope: !186, file: !3, line: 192, type: !14)
!190 = !DILocalVariable(name: "oldsize", scope: !186, file: !3, line: 193, type: !7)
!191 = !DILocalVariable(name: "_n", scope: !192, file: !3, line: 203, type: !7)
!192 = distinct !DILexicalBlock(scope: !186, file: !3, line: 203, column: 5)
!193 = !DILocation(line: 190, column: 18, scope: !186)
!194 = !DILocation(line: 196, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !186, file: !3, line: 196, column: 9)
!196 = !DILocation(line: 196, column: 9, scope: !186)
!197 = !DILocation(line: 201, column: 25, scope: !186)
!198 = !DILocation(line: 192, column: 11, scope: !186)
!199 = !DILocation(line: 202, column: 17, scope: !186)
!200 = !DILocation(line: 202, column: 15, scope: !186)
!201 = !DILocation(line: 193, column: 12, scope: !186)
!202 = !DILocation(line: 203, column: 5, scope: !192)
!203 = !DILocation(line: 203, column: 5, scope: !204)
!204 = distinct !DILexicalBlock(scope: !192, file: !3, line: 203, column: 5)
!205 = !DILocation(line: 204, column: 5, scope: !186)
!206 = !DILocation(line: 206, column: 1, scope: !186)
!207 = !DILocation(line: 0, scope: !195)
!208 = distinct !DISubprogram(name: "zstrdup", scope: !3, file: !3, line: 208, type: !209, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !213)
!209 = !DISubroutineType(types: !210)
!210 = !{!12, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!213 = !{!214, !215, !216}
!214 = !DILocalVariable(name: "s", arg: 1, scope: !208, file: !3, line: 208, type: !211)
!215 = !DILocalVariable(name: "l", scope: !208, file: !3, line: 209, type: !7)
!216 = !DILocalVariable(name: "p", scope: !208, file: !3, line: 210, type: !12)
!217 = !DILocation(line: 208, column: 27, scope: !208)
!218 = !DILocation(line: 209, column: 16, scope: !208)
!219 = !DILocation(line: 209, column: 25, scope: !208)
!220 = !DILocation(line: 209, column: 12, scope: !208)
!221 = !DILocation(line: 98, column: 22, scope: !39, inlinedAt: !222)
!222 = distinct !DILocation(line: 210, column: 15, scope: !208)
!223 = !DILocation(line: 99, column: 28, scope: !39, inlinedAt: !222)
!224 = !DILocation(line: 99, column: 17, scope: !39, inlinedAt: !222)
!225 = !DILocation(line: 99, column: 11, scope: !39, inlinedAt: !222)
!226 = !DILocation(line: 101, column: 10, scope: !52, inlinedAt: !222)
!227 = !DILocation(line: 101, column: 9, scope: !39, inlinedAt: !222)
!228 = !DILocation(line: 101, column: 15, scope: !52, inlinedAt: !222)
!229 = !DILocation(line: 106, column: 7, scope: !39, inlinedAt: !222)
!230 = !DILocation(line: 106, column: 21, scope: !39, inlinedAt: !222)
!231 = !DILocation(line: 107, column: 5, scope: !46, inlinedAt: !222)
!232 = !DILocation(line: 107, column: 5, scope: !65, inlinedAt: !222)
!233 = !DILocation(line: 108, column: 22, scope: !39, inlinedAt: !222)
!234 = !DILocation(line: 108, column: 5, scope: !39, inlinedAt: !222)
!235 = !DILocation(line: 210, column: 11, scope: !208)
!236 = !DILocation(line: 212, column: 5, scope: !208)
!237 = !DILocation(line: 213, column: 5, scope: !208)
!238 = distinct !DISubprogram(name: "zmalloc_used_memory", scope: !3, file: !3, line: 216, type: !239, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!7}
!241 = !{!242}
!242 = !DILocalVariable(name: "um", scope: !238, file: !3, line: 217, type: !7)
!243 = !DILocation(line: 218, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !238, file: !3, line: 218, column: 5)
!245 = !DILocation(line: 217, column: 12, scope: !238)
!246 = !DILocation(line: 219, column: 5, scope: !238)
!247 = distinct !DISubprogram(name: "zmalloc_set_oom_handler", scope: !3, file: !3, line: 222, type: !248, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !18}
!250 = !{!251}
!251 = !DILocalVariable(name: "oom_handler", arg: 1, scope: !247, file: !3, line: 222, type: !18)
!252 = !DILocation(line: 222, column: 37, scope: !247)
!253 = !DILocation(line: 223, column: 25, scope: !247)
!254 = !DILocation(line: 224, column: 1, scope: !247)
!255 = distinct !DISubprogram(name: "zmalloc_get_rss", scope: !3, file: !3, line: 294, type: !239, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!256 = !DILocation(line: 218, column: 5, scope: !244, inlinedAt: !257)
!257 = distinct !DILocation(line: 300, column: 12, scope: !255)
!258 = !DILocation(line: 217, column: 12, scope: !238, inlinedAt: !257)
!259 = !DILocation(line: 219, column: 5, scope: !238, inlinedAt: !257)
!260 = !DILocation(line: 300, column: 5, scope: !255)
!261 = distinct !DISubprogram(name: "zmalloc_get_allocator_info", scope: !3, file: !3, line: 327, type: !262, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !265)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !6, !6, !6}
!264 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!265 = !{!266, !267, !268}
!266 = !DILocalVariable(name: "allocated", arg: 1, scope: !261, file: !3, line: 327, type: !6)
!267 = !DILocalVariable(name: "active", arg: 2, scope: !261, file: !3, line: 328, type: !6)
!268 = !DILocalVariable(name: "resident", arg: 3, scope: !261, file: !3, line: 329, type: !6)
!269 = !DILocation(line: 327, column: 40, scope: !261)
!270 = !DILocation(line: 328, column: 40, scope: !261)
!271 = !DILocation(line: 329, column: 40, scope: !261)
!272 = !DILocation(line: 330, column: 38, scope: !261)
!273 = !DILocation(line: 330, column: 28, scope: !261)
!274 = !DILocation(line: 330, column: 16, scope: !261)
!275 = !DILocation(line: 331, column: 5, scope: !261)
!276 = distinct !DISubprogram(name: "zmalloc_get_smap_bytes_by_field", scope: !3, file: !3, line: 374, type: !277, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !280)
!277 = !DISubroutineType(types: !278)
!278 = !{!7, !12, !279}
!279 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!280 = !{!281, !282}
!281 = !DILocalVariable(name: "field", arg: 1, scope: !276, file: !3, line: 374, type: !12)
!282 = !DILocalVariable(name: "pid", arg: 2, scope: !276, file: !3, line: 374, type: !279)
!283 = !DILocation(line: 374, column: 46, scope: !276)
!284 = !DILocation(line: 374, column: 58, scope: !276)
!285 = !DILocation(line: 377, column: 5, scope: !276)
!286 = distinct !DISubprogram(name: "zmalloc_get_private_dirty", scope: !3, file: !3, line: 381, type: !287, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{!7, !279}
!289 = !{!290}
!290 = !DILocalVariable(name: "pid", arg: 1, scope: !286, file: !3, line: 381, type: !279)
!291 = !DILocation(line: 381, column: 39, scope: !286)
!292 = !DILocation(line: 374, column: 46, scope: !276, inlinedAt: !293)
!293 = distinct !DILocation(line: 382, column: 12, scope: !286)
!294 = !DILocation(line: 374, column: 58, scope: !276, inlinedAt: !293)
!295 = !DILocation(line: 377, column: 5, scope: !276, inlinedAt: !293)
!296 = !DILocation(line: 382, column: 5, scope: !286)
!297 = distinct !DISubprogram(name: "zmalloc_get_memory_size", scope: !3, file: !3, line: 398, type: !239, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!298 = !DILocation(line: 434, column: 5, scope: !297)
!299 = distinct !DISubprogram(name: "zmalloc_default_oom", scope: !3, file: !3, line: 89, type: !19, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!300 = !{!301}
!301 = !DILocalVariable(name: "size", arg: 1, scope: !299, file: !3, line: 89, type: !7)
!302 = !DILocation(line: 89, column: 40, scope: !299)
!303 = !DILocation(line: 90, column: 13, scope: !299)
!304 = !{!305, !56, i64 24}
!305 = !{!"_reent", !306, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !306, i64 32, !57, i64 36, !306, i64 64, !56, i64 72, !306, i64 80, !56, i64 88, !56, i64 96, !306, i64 104, !56, i64 112, !56, i64 120, !306, i64 128, !56, i64 136, !57, i64 144, !56, i64 504, !307, i64 512, !56, i64 1304, !309, i64 1312, !57, i64 1336}
!306 = !{!"int", !57, i64 0}
!307 = !{!"_atexit", !56, i64 0, !306, i64 8, !57, i64 16, !308, i64 272}
!308 = !{!"_on_exit_args", !57, i64 0, !57, i64 256, !306, i64 512, !306, i64 516}
!309 = !{!"_glue", !56, i64 0, !306, i64 8, !56, i64 16}
!310 = !DILocation(line: 90, column: 5, scope: !299)
!311 = !DILocation(line: 92, column: 12, scope: !299)
!312 = !DILocation(line: 92, column: 5, scope: !299)
!313 = !DILocation(line: 93, column: 5, scope: !299)
