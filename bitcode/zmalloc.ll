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
  br i1 %4, label %5, label %7, !dbg !53

; <label>:5:                                      ; preds = %1
  %6 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !54, !tbaa !55
  tail call void %6(i64 %0) #6, !dbg !54
  br label %7, !dbg !54

; <label>:7:                                      ; preds = %1, %5
  %8 = bitcast i8* %3 to i64*, !dbg !59
  store i64 %0, i64* %8, align 8, !dbg !60, !tbaa !61
  %9 = atomicrmw add i64* @used_memory, i64 %2 monotonic, !dbg !63
  %10 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  ret i8* %10, !dbg !65
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zcalloc(i64) local_unnamed_addr #0 !dbg !66 {
  %2 = add i64 %0, 8, !dbg !73
  %3 = tail call i8* @calloc(i64 1, i64 %2) #6, !dbg !74
  %4 = icmp eq i8* %3, null, !dbg !76
  br i1 %4, label %5, label %7, !dbg !78

; <label>:5:                                      ; preds = %1
  %6 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !79, !tbaa !55
  tail call void %6(i64 %0) #6, !dbg !79
  br label %7, !dbg !79

; <label>:7:                                      ; preds = %1, %5
  %8 = bitcast i8* %3 to i64*, !dbg !80
  store i64 %0, i64* %8, align 8, !dbg !81, !tbaa !61
  %9 = atomicrmw add i64* @used_memory, i64 %2 monotonic, !dbg !82
  %10 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  ret i8* %10, !dbg !84
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zrealloc(i8*, i64) local_unnamed_addr #0 !dbg !85 {
  %3 = icmp eq i8* %0, null, !dbg !100
  br i1 %3, label %4, label %13, !dbg !102

; <label>:4:                                      ; preds = %2
  %5 = add i64 %1, 8, !dbg !105
  %6 = tail call i8* @malloc(i64 %5) #6, !dbg !106
  %7 = icmp eq i8* %6, null, !dbg !108
  br i1 %7, label %8, label %10, !dbg !109

; <label>:8:                                      ; preds = %4
  %9 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !110, !tbaa !55
  tail call void %9(i64 %1) #6, !dbg !110
  br label %10, !dbg !110

; <label>:10:                                     ; preds = %4, %8
  %11 = bitcast i8* %6 to i64*, !dbg !111
  store i64 %1, i64* %11, align 8, !dbg !112, !tbaa !61
  %12 = atomicrmw add i64* @used_memory, i64 %5 monotonic, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br label %27, !dbg !115

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !116
  %15 = bitcast i8* %14 to i64*, !dbg !118
  %16 = load i64, i64* %15, align 8, !dbg !119, !tbaa !61
  %17 = add i64 %1, 8, !dbg !121
  %18 = tail call i8* @realloc(i8* nonnull %14, i64 %17) #6, !dbg !122
  %19 = icmp eq i8* %18, null, !dbg !124
  br i1 %19, label %20, label %22, !dbg !126

; <label>:20:                                     ; preds = %13
  %21 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !127, !tbaa !55
  tail call void %21(i64 %1) #6, !dbg !127
  br label %22, !dbg !127

; <label>:22:                                     ; preds = %13, %20
  %23 = bitcast i8* %18 to i64*, !dbg !128
  store i64 %1, i64* %23, align 8, !dbg !129, !tbaa !61
  %24 = add i64 %16, 8, !dbg !130
  %25 = atomicrmw sub i64* @used_memory, i64 %24 monotonic, !dbg !130
  %26 = atomicrmw add i64* @used_memory, i64 %17 monotonic, !dbg !131
  br label %27, !dbg !132

; <label>:27:                                     ; preds = %22, %10
  %28 = phi i8* [ %6, %10 ], [ %18, %22 ]
  %29 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  ret i8* %29, !dbg !134
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_size(i8* nocapture readonly) local_unnamed_addr #0 !dbg !135 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !143
  %3 = bitcast i8* %2 to i64*, !dbg !145
  %4 = load i64, i64* %3, align 8, !dbg !146, !tbaa !61
  %5 = and i64 %4, 7, !dbg !148
  %6 = icmp eq i64 %5, 0, !dbg !148
  %7 = sub nsw i64 8, %5, !dbg !150
  %8 = select i1 %6, i64 0, i64 %7, !dbg !151
  %9 = add i64 %4, 8, !dbg !151
  %10 = add i64 %9, %8, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  ret i64 %10, !dbg !153
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_usable(i8* nocapture readonly) local_unnamed_addr #0 !dbg !154 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !160
  %3 = bitcast i8* %2 to i64*, !dbg !162
  %4 = load i64, i64* %3, align 8, !dbg !163, !tbaa !61
  %5 = and i64 %4, 7, !dbg !165
  %6 = icmp eq i64 %5, 0, !dbg !165
  %7 = sub nsw i64 8, %5, !dbg !166
  %8 = select i1 %6, i64 0, i64 %7, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  %9 = add i64 %8, %4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  ret i64 %9, !dbg !170
}

; Function Attrs: noredzone nounwind
define dso_local void @zfree(i8*) local_unnamed_addr #0 !dbg !171 {
  %2 = icmp eq i8* %0, null, !dbg !179
  br i1 %2, label %9, label %3, !dbg !181

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !182
  %5 = bitcast i8* %4 to i64*, !dbg !184
  %6 = load i64, i64* %5, align 8, !dbg !185, !tbaa !61
  %7 = add i64 %6, 8, !dbg !187
  %8 = atomicrmw sub i64* @used_memory, i64 %7 monotonic, !dbg !187
  tail call void @free(i8* nonnull %4) #6, !dbg !188
  br label %9, !dbg !189

; <label>:9:                                      ; preds = %1, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  ret void, !dbg !189
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zstrdup(i8*) local_unnamed_addr #0 !dbg !190 {
  %2 = tail call i64 @strlen(i8* %0) #6, !dbg !200
  %3 = add i64 %2, 1, !dbg !201
  %4 = add i64 %2, 9, !dbg !205
  %5 = tail call i8* @malloc(i64 %4) #6, !dbg !206
  %6 = icmp eq i8* %5, null, !dbg !208
  br i1 %6, label %7, label %9, !dbg !209

; <label>:7:                                      ; preds = %1
  %8 = load void (i64)*, void (i64)** @zmalloc_oom_handler, align 8, !dbg !210, !tbaa !55
  tail call void %8(i64 %3) #6, !dbg !210
  br label %9, !dbg !210

; <label>:9:                                      ; preds = %1, %7
  %10 = bitcast i8* %5 to i64*, !dbg !211
  store i64 %3, i64* %10, align 8, !dbg !212, !tbaa !61
  %11 = atomicrmw add i64* @used_memory, i64 %4 monotonic, !dbg !213
  %12 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %13 = tail call i8* @memcpy(i8* nonnull %12, i8* %0, i64 %3) #6, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  ret i8* %12, !dbg !218
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_used_memory() local_unnamed_addr #0 !dbg !219 {
  %1 = load atomic i64, i64* @used_memory monotonic, align 8, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  ret i64 %1, !dbg !227
}

; Function Attrs: noredzone nounwind
define dso_local void @zmalloc_set_oom_handler(void (i64)*) local_unnamed_addr #0 !dbg !228 {
  store void (i64)* %0, void (i64)** @zmalloc_oom_handler, align 8, !dbg !234, !tbaa !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  ret void, !dbg !235
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_get_rss() local_unnamed_addr #0 !dbg !236 {
  %1 = load atomic i64, i64* @used_memory monotonic, align 8, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  ret i64 %1, !dbg !241
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zmalloc_get_allocator_info(i64* nocapture, i64* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !242 {
  store i64 0, i64* %1, align 8, !dbg !253, !tbaa !61
  store i64 0, i64* %2, align 8, !dbg !254, !tbaa !61
  store i64 0, i64* %0, align 8, !dbg !255, !tbaa !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  ret i32 1, !dbg !256
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_get_smap_bytes_by_field(i8* nocapture readnone, i64) local_unnamed_addr #0 !dbg !257 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  ret i64 0, !dbg !266
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zmalloc_get_private_dirty(i64) local_unnamed_addr #0 !dbg !267 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  ret i64 0, !dbg !277
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i64 @zmalloc_get_memory_size() local_unnamed_addr #2 !dbg !278 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  ret i64 0, !dbg !279
}

; Function Attrs: noredzone noreturn nounwind
define internal void @zmalloc_default_oom(i64) #3 !dbg !280 {
  %2 = tail call %struct._reent* @__getreent() #6, !dbg !284
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 3, !dbg !284
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !284, !tbaa !285
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %0) #6, !dbg !291
  %6 = tail call %struct._reent* @__getreent() #6, !dbg !292
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 3, !dbg !292
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !292, !tbaa !285
  %9 = tail call i32 @fflush(%struct.__sFILE* %8) #6, !dbg !293
  tail call void @abort() #8, !dbg !294
  unreachable, !dbg !294
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
!64 = !DILocation(line: 108, column: 22, scope: !39)
!65 = !DILocation(line: 108, column: 5, scope: !39)
!66 = distinct !DISubprogram(name: "zcalloc", scope: !3, file: !3, line: 130, type: !40, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !67)
!67 = !{!68, !69, !70}
!68 = !DILocalVariable(name: "size", arg: 1, scope: !66, file: !3, line: 130, type: !7)
!69 = !DILocalVariable(name: "ptr", scope: !66, file: !3, line: 131, type: !14)
!70 = !DILocalVariable(name: "_n", scope: !71, file: !3, line: 139, type: !7)
!71 = distinct !DILexicalBlock(scope: !66, file: !3, line: 139, column: 5)
!72 = !DILocation(line: 130, column: 22, scope: !66)
!73 = !DILocation(line: 131, column: 31, scope: !66)
!74 = !DILocation(line: 131, column: 17, scope: !66)
!75 = !DILocation(line: 131, column: 11, scope: !66)
!76 = !DILocation(line: 133, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !66, file: !3, line: 133, column: 9)
!78 = !DILocation(line: 133, column: 9, scope: !66)
!79 = !DILocation(line: 133, column: 15, scope: !77)
!80 = !DILocation(line: 138, column: 7, scope: !66)
!81 = !DILocation(line: 138, column: 21, scope: !66)
!82 = !DILocation(line: 139, column: 5, scope: !71)
!83 = !DILocation(line: 140, column: 22, scope: !66)
!84 = !DILocation(line: 140, column: 5, scope: !66)
!85 = distinct !DISubprogram(name: "zrealloc", scope: !3, file: !3, line: 144, type: !86, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!14, !14, !7}
!88 = !{!89, !90, !91, !92, !93, !94, !96}
!89 = !DILocalVariable(name: "ptr", arg: 1, scope: !85, file: !3, line: 144, type: !14)
!90 = !DILocalVariable(name: "size", arg: 2, scope: !85, file: !3, line: 144, type: !7)
!91 = !DILocalVariable(name: "realptr", scope: !85, file: !3, line: 146, type: !14)
!92 = !DILocalVariable(name: "oldsize", scope: !85, file: !3, line: 148, type: !7)
!93 = !DILocalVariable(name: "newptr", scope: !85, file: !3, line: 149, type: !14)
!94 = !DILocalVariable(name: "_n", scope: !95, file: !3, line: 167, type: !7)
!95 = distinct !DILexicalBlock(scope: !85, file: !3, line: 167, column: 5)
!96 = !DILocalVariable(name: "_n", scope: !97, file: !3, line: 168, type: !7)
!97 = distinct !DILexicalBlock(scope: !85, file: !3, line: 168, column: 5)
!98 = !DILocation(line: 144, column: 22, scope: !85)
!99 = !DILocation(line: 144, column: 34, scope: !85)
!100 = !DILocation(line: 151, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !85, file: !3, line: 151, column: 9)
!102 = !DILocation(line: 151, column: 9, scope: !85)
!103 = !DILocation(line: 98, column: 22, scope: !39, inlinedAt: !104)
!104 = distinct !DILocation(line: 151, column: 29, scope: !101)
!105 = !DILocation(line: 99, column: 28, scope: !39, inlinedAt: !104)
!106 = !DILocation(line: 99, column: 17, scope: !39, inlinedAt: !104)
!107 = !DILocation(line: 99, column: 11, scope: !39, inlinedAt: !104)
!108 = !DILocation(line: 101, column: 10, scope: !52, inlinedAt: !104)
!109 = !DILocation(line: 101, column: 9, scope: !39, inlinedAt: !104)
!110 = !DILocation(line: 101, column: 15, scope: !52, inlinedAt: !104)
!111 = !DILocation(line: 106, column: 7, scope: !39, inlinedAt: !104)
!112 = !DILocation(line: 106, column: 21, scope: !39, inlinedAt: !104)
!113 = !DILocation(line: 107, column: 5, scope: !46, inlinedAt: !104)
!114 = !DILocation(line: 108, column: 5, scope: !39, inlinedAt: !104)
!115 = !DILocation(line: 151, column: 22, scope: !101)
!116 = !DILocation(line: 161, column: 25, scope: !85)
!117 = !DILocation(line: 146, column: 11, scope: !85)
!118 = !DILocation(line: 162, column: 17, scope: !85)
!119 = !DILocation(line: 162, column: 15, scope: !85)
!120 = !DILocation(line: 148, column: 12, scope: !85)
!121 = !DILocation(line: 163, column: 34, scope: !85)
!122 = !DILocation(line: 163, column: 14, scope: !85)
!123 = !DILocation(line: 149, column: 11, scope: !85)
!124 = !DILocation(line: 164, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !85, file: !3, line: 164, column: 9)
!126 = !DILocation(line: 164, column: 9, scope: !85)
!127 = !DILocation(line: 164, column: 18, scope: !125)
!128 = !DILocation(line: 166, column: 7, scope: !85)
!129 = !DILocation(line: 166, column: 24, scope: !85)
!130 = !DILocation(line: 167, column: 5, scope: !95)
!131 = !DILocation(line: 168, column: 5, scope: !97)
!132 = !DILocation(line: 169, column: 5, scope: !85)
!133 = !DILocation(line: 0, scope: !85)
!134 = !DILocation(line: 171, column: 1, scope: !85)
!135 = distinct !DISubprogram(name: "zmalloc_size", scope: !3, file: !3, line: 177, type: !136, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!7, !14}
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(name: "ptr", arg: 1, scope: !135, file: !3, line: 177, type: !14)
!140 = !DILocalVariable(name: "realptr", scope: !135, file: !3, line: 178, type: !14)
!141 = !DILocalVariable(name: "size", scope: !135, file: !3, line: 179, type: !7)
!142 = !DILocation(line: 177, column: 27, scope: !135)
!143 = !DILocation(line: 178, column: 31, scope: !135)
!144 = !DILocation(line: 178, column: 11, scope: !135)
!145 = !DILocation(line: 179, column: 21, scope: !135)
!146 = !DILocation(line: 179, column: 19, scope: !135)
!147 = !DILocation(line: 179, column: 12, scope: !135)
!148 = !DILocation(line: 182, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !135, file: !3, line: 182, column: 9)
!150 = !DILocation(line: 182, column: 52, scope: !149)
!151 = !DILocation(line: 182, column: 9, scope: !135)
!152 = !DILocation(line: 183, column: 16, scope: !135)
!153 = !DILocation(line: 183, column: 5, scope: !135)
!154 = distinct !DISubprogram(name: "zmalloc_usable", scope: !3, file: !3, line: 185, type: !136, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !155)
!155 = !{!156}
!156 = !DILocalVariable(name: "ptr", arg: 1, scope: !154, file: !3, line: 185, type: !14)
!157 = !DILocation(line: 185, column: 29, scope: !154)
!158 = !DILocation(line: 177, column: 27, scope: !135, inlinedAt: !159)
!159 = distinct !DILocation(line: 186, column: 12, scope: !154)
!160 = !DILocation(line: 178, column: 31, scope: !135, inlinedAt: !159)
!161 = !DILocation(line: 178, column: 11, scope: !135, inlinedAt: !159)
!162 = !DILocation(line: 179, column: 21, scope: !135, inlinedAt: !159)
!163 = !DILocation(line: 179, column: 19, scope: !135, inlinedAt: !159)
!164 = !DILocation(line: 179, column: 12, scope: !135, inlinedAt: !159)
!165 = !DILocation(line: 182, column: 13, scope: !149, inlinedAt: !159)
!166 = !DILocation(line: 182, column: 52, scope: !149, inlinedAt: !159)
!167 = !DILocation(line: 182, column: 9, scope: !135, inlinedAt: !159)
!168 = !DILocation(line: 183, column: 5, scope: !135, inlinedAt: !159)
!169 = !DILocation(line: 186, column: 29, scope: !154)
!170 = !DILocation(line: 186, column: 5, scope: !154)
!171 = distinct !DISubprogram(name: "zfree", scope: !3, file: !3, line: 190, type: !32, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !172)
!172 = !{!173, !174, !175, !176}
!173 = !DILocalVariable(name: "ptr", arg: 1, scope: !171, file: !3, line: 190, type: !14)
!174 = !DILocalVariable(name: "realptr", scope: !171, file: !3, line: 192, type: !14)
!175 = !DILocalVariable(name: "oldsize", scope: !171, file: !3, line: 193, type: !7)
!176 = !DILocalVariable(name: "_n", scope: !177, file: !3, line: 203, type: !7)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 203, column: 5)
!178 = !DILocation(line: 190, column: 18, scope: !171)
!179 = !DILocation(line: 196, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !3, line: 196, column: 9)
!181 = !DILocation(line: 196, column: 9, scope: !171)
!182 = !DILocation(line: 201, column: 25, scope: !171)
!183 = !DILocation(line: 192, column: 11, scope: !171)
!184 = !DILocation(line: 202, column: 17, scope: !171)
!185 = !DILocation(line: 202, column: 15, scope: !171)
!186 = !DILocation(line: 193, column: 12, scope: !171)
!187 = !DILocation(line: 203, column: 5, scope: !177)
!188 = !DILocation(line: 204, column: 5, scope: !171)
!189 = !DILocation(line: 206, column: 1, scope: !171)
!190 = distinct !DISubprogram(name: "zstrdup", scope: !3, file: !3, line: 208, type: !191, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !195)
!191 = !DISubroutineType(types: !192)
!192 = !{!12, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!195 = !{!196, !197, !198}
!196 = !DILocalVariable(name: "s", arg: 1, scope: !190, file: !3, line: 208, type: !193)
!197 = !DILocalVariable(name: "l", scope: !190, file: !3, line: 209, type: !7)
!198 = !DILocalVariable(name: "p", scope: !190, file: !3, line: 210, type: !12)
!199 = !DILocation(line: 208, column: 27, scope: !190)
!200 = !DILocation(line: 209, column: 16, scope: !190)
!201 = !DILocation(line: 209, column: 25, scope: !190)
!202 = !DILocation(line: 209, column: 12, scope: !190)
!203 = !DILocation(line: 98, column: 22, scope: !39, inlinedAt: !204)
!204 = distinct !DILocation(line: 210, column: 15, scope: !190)
!205 = !DILocation(line: 99, column: 28, scope: !39, inlinedAt: !204)
!206 = !DILocation(line: 99, column: 17, scope: !39, inlinedAt: !204)
!207 = !DILocation(line: 99, column: 11, scope: !39, inlinedAt: !204)
!208 = !DILocation(line: 101, column: 10, scope: !52, inlinedAt: !204)
!209 = !DILocation(line: 101, column: 9, scope: !39, inlinedAt: !204)
!210 = !DILocation(line: 101, column: 15, scope: !52, inlinedAt: !204)
!211 = !DILocation(line: 106, column: 7, scope: !39, inlinedAt: !204)
!212 = !DILocation(line: 106, column: 21, scope: !39, inlinedAt: !204)
!213 = !DILocation(line: 107, column: 5, scope: !46, inlinedAt: !204)
!214 = !DILocation(line: 108, column: 22, scope: !39, inlinedAt: !204)
!215 = !DILocation(line: 108, column: 5, scope: !39, inlinedAt: !204)
!216 = !DILocation(line: 210, column: 11, scope: !190)
!217 = !DILocation(line: 212, column: 5, scope: !190)
!218 = !DILocation(line: 213, column: 5, scope: !190)
!219 = distinct !DISubprogram(name: "zmalloc_used_memory", scope: !3, file: !3, line: 216, type: !220, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!7}
!222 = !{!223}
!223 = !DILocalVariable(name: "um", scope: !219, file: !3, line: 217, type: !7)
!224 = !DILocation(line: 218, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 218, column: 5)
!226 = !DILocation(line: 217, column: 12, scope: !219)
!227 = !DILocation(line: 219, column: 5, scope: !219)
!228 = distinct !DISubprogram(name: "zmalloc_set_oom_handler", scope: !3, file: !3, line: 222, type: !229, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !18}
!231 = !{!232}
!232 = !DILocalVariable(name: "oom_handler", arg: 1, scope: !228, file: !3, line: 222, type: !18)
!233 = !DILocation(line: 222, column: 37, scope: !228)
!234 = !DILocation(line: 223, column: 25, scope: !228)
!235 = !DILocation(line: 224, column: 1, scope: !228)
!236 = distinct !DISubprogram(name: "zmalloc_get_rss", scope: !3, file: !3, line: 294, type: !220, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!237 = !DILocation(line: 218, column: 5, scope: !225, inlinedAt: !238)
!238 = distinct !DILocation(line: 300, column: 12, scope: !236)
!239 = !DILocation(line: 217, column: 12, scope: !219, inlinedAt: !238)
!240 = !DILocation(line: 219, column: 5, scope: !219, inlinedAt: !238)
!241 = !DILocation(line: 300, column: 5, scope: !236)
!242 = distinct !DISubprogram(name: "zmalloc_get_allocator_info", scope: !3, file: !3, line: 327, type: !243, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !246)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !6, !6, !6}
!245 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!246 = !{!247, !248, !249}
!247 = !DILocalVariable(name: "allocated", arg: 1, scope: !242, file: !3, line: 327, type: !6)
!248 = !DILocalVariable(name: "active", arg: 2, scope: !242, file: !3, line: 328, type: !6)
!249 = !DILocalVariable(name: "resident", arg: 3, scope: !242, file: !3, line: 329, type: !6)
!250 = !DILocation(line: 327, column: 40, scope: !242)
!251 = !DILocation(line: 328, column: 40, scope: !242)
!252 = !DILocation(line: 329, column: 40, scope: !242)
!253 = !DILocation(line: 330, column: 38, scope: !242)
!254 = !DILocation(line: 330, column: 28, scope: !242)
!255 = !DILocation(line: 330, column: 16, scope: !242)
!256 = !DILocation(line: 331, column: 5, scope: !242)
!257 = distinct !DISubprogram(name: "zmalloc_get_smap_bytes_by_field", scope: !3, file: !3, line: 374, type: !258, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !261)
!258 = !DISubroutineType(types: !259)
!259 = !{!7, !12, !260}
!260 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "field", arg: 1, scope: !257, file: !3, line: 374, type: !12)
!263 = !DILocalVariable(name: "pid", arg: 2, scope: !257, file: !3, line: 374, type: !260)
!264 = !DILocation(line: 374, column: 46, scope: !257)
!265 = !DILocation(line: 374, column: 58, scope: !257)
!266 = !DILocation(line: 377, column: 5, scope: !257)
!267 = distinct !DISubprogram(name: "zmalloc_get_private_dirty", scope: !3, file: !3, line: 381, type: !268, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !270)
!268 = !DISubroutineType(types: !269)
!269 = !{!7, !260}
!270 = !{!271}
!271 = !DILocalVariable(name: "pid", arg: 1, scope: !267, file: !3, line: 381, type: !260)
!272 = !DILocation(line: 381, column: 39, scope: !267)
!273 = !DILocation(line: 374, column: 46, scope: !257, inlinedAt: !274)
!274 = distinct !DILocation(line: 382, column: 12, scope: !267)
!275 = !DILocation(line: 374, column: 58, scope: !257, inlinedAt: !274)
!276 = !DILocation(line: 377, column: 5, scope: !257, inlinedAt: !274)
!277 = !DILocation(line: 382, column: 5, scope: !267)
!278 = distinct !DISubprogram(name: "zmalloc_get_memory_size", scope: !3, file: !3, line: 398, type: !220, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!279 = !DILocation(line: 434, column: 5, scope: !278)
!280 = distinct !DISubprogram(name: "zmalloc_default_oom", scope: !3, file: !3, line: 89, type: !19, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !281)
!281 = !{!282}
!282 = !DILocalVariable(name: "size", arg: 1, scope: !280, file: !3, line: 89, type: !7)
!283 = !DILocation(line: 89, column: 40, scope: !280)
!284 = !DILocation(line: 90, column: 13, scope: !280)
!285 = !{!286, !56, i64 24}
!286 = !{!"_reent", !287, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !287, i64 32, !57, i64 36, !287, i64 64, !56, i64 72, !287, i64 80, !56, i64 88, !56, i64 96, !287, i64 104, !56, i64 112, !56, i64 120, !287, i64 128, !56, i64 136, !57, i64 144, !56, i64 504, !288, i64 512, !56, i64 1304, !290, i64 1312, !57, i64 1336}
!287 = !{!"int", !57, i64 0}
!288 = !{!"_atexit", !56, i64 0, !287, i64 8, !57, i64 16, !289, i64 272}
!289 = !{!"_on_exit_args", !57, i64 0, !57, i64 256, !287, i64 512, !287, i64 516}
!290 = !{!"_glue", !56, i64 0, !287, i64 8, !56, i64 16}
!291 = !DILocation(line: 90, column: 5, scope: !280)
!292 = !DILocation(line: 92, column: 12, scope: !280)
!293 = !DILocation(line: 92, column: 5, scope: !280)
!294 = !DILocation(line: 93, column: 5, scope: !280)
