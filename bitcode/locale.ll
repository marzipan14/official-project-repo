; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/locale.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/locale.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type { [7 x [32 x i8]], {}*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@_PathLocale = dso_local local_unnamed_addr global i8* null, align 8, !dbg !0
@_ctype_b = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__global_locale = dso_local local_unnamed_addr global { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] } { [7 x [32 x i8]] [[32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)* @__ascii_wctomb, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)* @__ascii_mbtowc, i32 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype_b, i32 0, i64 127), %struct.lconv { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127 }, [2 x i8] c"\01\00", [32 x i8] c"ASCII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ASCII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8, !dbg !6
@.str.2 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone
declare dso_local i32 @__ascii_wctomb(%struct._reent*, i8*, i32, %struct._mbstate_t*) #0

; Function Attrs: noredzone
declare dso_local i32 @__ascii_mbtowc(%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*) #0

; Function Attrs: noredzone nounwind
define dso_local i8* @_setlocale_r(%struct._reent* nocapture readnone, i32, i8*) local_unnamed_addr #1 !dbg !292 {
  %4 = icmp eq i8* %2, null, !dbg !300
  br i1 %4, label %14, label %5, !dbg !302

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !303
  %7 = icmp eq i32 %6, 0, !dbg !303
  br i1 %7, label %14, label %8, !dbg !306

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !307
  %10 = icmp eq i32 %9, 0, !dbg !307
  br i1 %10, label %14, label %11, !dbg !308

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !309
  %13 = icmp eq i32 %12, 0, !dbg !309
  br i1 %13, label %14, label %15, !dbg !310

; <label>:14:                                     ; preds = %11, %8, %5, %3
  br label %15, !dbg !311

; <label>:15:                                     ; preds = %11, %14
  %16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %14 ], [ null, %11 ], !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  ret i8* %16, !dbg !313
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #0

; Function Attrs: noredzone nounwind
define dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #1 !dbg !314 {
  %1 = tail call %struct._reent* @__getreent() #3, !dbg !317
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i64 0, i32 7, !dbg !322
  %3 = load %struct.__locale_t*, %struct.__locale_t** %2, align 8, !dbg !322, !tbaa !323
  %4 = icmp eq %struct.__locale_t* %3, null, !dbg !317
  br i1 %4, label %5, label %6, !dbg !317

; <label>:5:                                      ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %6, !dbg !317

; <label>:6:                                      ; preds = %0, %5
  %7 = phi %struct.__locale_t* [ bitcast ({ [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }* @__global_locale to %struct.__locale_t*), %5 ], [ %3, %0 ], !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  %8 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %7, i64 0, i32 6, i64 0, !dbg !336
  %9 = load i8, i8* %8, align 8, !dbg !336, !tbaa !337
  %10 = sext i8 %9 to i32, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  ret i32 %10, !dbg !338
}

; Function Attrs: noredzone nounwind
define dso_local i8* @__locale_ctype_ptr_l(%struct.__locale_t* nocapture readonly) local_unnamed_addr #1 !dbg !339 {
  %2 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %0, i64 0, i32 4, !dbg !345
  %3 = load i8*, i8** %2, align 8, !dbg !345, !tbaa !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  ret i8* %3, !dbg !349
}

; Function Attrs: noredzone nounwind
define dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1 !dbg !350 {
  %1 = tail call %struct._reent* @__getreent() #3, !dbg !353
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i64 0, i32 7, !dbg !355
  %3 = load %struct.__locale_t*, %struct.__locale_t** %2, align 8, !dbg !355, !tbaa !323
  %4 = icmp eq %struct.__locale_t* %3, null, !dbg !353
  br i1 %4, label %5, label %6, !dbg !353

; <label>:5:                                      ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br label %6, !dbg !353

; <label>:6:                                      ; preds = %0, %5
  %7 = phi %struct.__locale_t* [ bitcast ({ [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }* @__global_locale to %struct.__locale_t*), %5 ], [ %3, %0 ], !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %8 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %7, i64 0, i32 4, !dbg !359
  %9 = load i8*, i8** %8, align 8, !dbg !359, !tbaa !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  ret i8* %9, !dbg !360
}

; Function Attrs: noredzone nounwind
define dso_local i8* @setlocale(i32, i8*) local_unnamed_addr #1 !dbg !361 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !368
  %4 = icmp eq i8* %1, null, !dbg !371
  br i1 %4, label %14, label %5, !dbg !372

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !373
  %7 = icmp eq i32 %6, 0, !dbg !373
  br i1 %7, label %14, label %8, !dbg !374

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @strcmp(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !375
  %10 = icmp eq i32 %9, 0, !dbg !375
  br i1 %10, label %14, label %11, !dbg !376

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @strcmp(i8* nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !377
  %13 = icmp eq i32 %12, 0, !dbg !377
  br i1 %13, label %14, label %15, !dbg !378

; <label>:14:                                     ; preds = %11, %8, %5, %2
  br label %15, !dbg !379

; <label>:15:                                     ; preds = %11, %14
  %16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %14 ], [ null, %11 ], !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  ret i8* %16, !dbg !382
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #0

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!288, !289, !290}
!llvm.ident = !{!291}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_PathLocale", scope: !2, file: !3, line: 191, type: !55, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/locale.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "__global_locale", scope: !2, file: !3, line: 258, type: !8, isLocal: false, isDefinition: true)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !9, line: 178, size: 3392, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/../stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !17, !242, !251, !252, !253, !281, !285, !287}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !8, file: !9, line: 180, baseType: !12, size: 1792)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1792, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16}
!15 = !DISubrange(count: 7)
!16 = !DISubrange(count: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !8, file: !9, line: 181, baseType: !18, size: 64, offset: 1792)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !55, !238, !239}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !24, line: 569, size: 14912, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27, !108, !109, !110, !111, !115, !116, !118, !119, !123, !135, !136, !137, !139, !140, !141, !203, !223, !224, !229, !236}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !23, file: !24, line: 571, baseType: !21, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !24, line: 287, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !24, line: 181, size: 1408, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !48, !56, !62, !67, !71, !72, !73, !74, !78, !82, !83, !84, !86, !87, !91, !107}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !24, line: 182, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !24, line: 183, baseType: !21, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !24, line: 184, baseType: !21, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !24, line: 185, baseType: !38, size: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !24, line: 186, baseType: !38, size: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !24, line: 187, baseType: !41, size: 128, offset: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !24, line: 117, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !24, line: 118, baseType: !33, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !24, line: 119, baseType: !21, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !24, line: 188, baseType: !21, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !24, line: 195, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !24, line: 197, baseType: !49, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !22, !47, !55, !21}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !53, line: 145, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !24, line: 199, baseType: !57, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!52, !22, !47, !60, !21}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !24, line: 202, baseType: !63, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !22, !47, !66, !21}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !53, line: 114, baseType: !54)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !24, line: 203, baseType: !68, size: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!21, !22, !47}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !24, line: 206, baseType: !41, size: 128, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !30, file: !24, line: 207, baseType: !33, size: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !24, line: 208, baseType: !21, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !24, line: 211, baseType: !75, size: 24, offset: 928)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !24, line: 212, baseType: !79, size: 8, offset: 952)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !24, line: 215, baseType: !41, size: 128, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !24, line: 218, baseType: !21, size: 32, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !24, line: 219, baseType: !85, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !53, line: 44, baseType: !54)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !30, file: !24, line: 222, baseType: !22, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !24, line: 226, baseType: !88, size: 32, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !53, line: 175, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !90, line: 12, baseType: !21)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !30, file: !24, line: 228, baseType: !92, size: 64, offset: 1312)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !53, line: 171, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 163, size: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !93, file: !53, line: 165, baseType: !21, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !93, file: !53, line: 170, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !53, line: 166, size: 32, elements: !98)
!98 = !{!99, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !97, file: !53, line: 168, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !101, line: 124, baseType: !102)
!101 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !97, file: !53, line: 169, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !24, line: 229, baseType: !21, size: 32, offset: 1376)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !23, file: !24, line: 578, baseType: !21, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !23, file: !24, line: 579, baseType: !112, size: 200, offset: 288)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 200, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 25)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !23, file: !24, line: 582, baseType: !21, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !23, file: !24, line: 583, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !23, file: !24, line: 585, baseType: !21, size: 32, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !23, file: !24, line: 587, baseType: !120, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !22}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !23, file: !24, line: 590, baseType: !124, size: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !24, line: 47, size: 256, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !125, file: !24, line: 49, baseType: !124, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !125, file: !24, line: 50, baseType: !21, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !125, file: !24, line: 50, baseType: !21, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !125, file: !24, line: 50, baseType: !21, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !125, file: !24, line: 50, baseType: !21, size: 32, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !125, file: !24, line: 51, baseType: !133, size: 32, offset: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !80)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !24, line: 25, baseType: !102)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !23, file: !24, line: 591, baseType: !21, size: 32, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !23, file: !24, line: 592, baseType: !124, size: 64, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !23, file: !24, line: 593, baseType: !138, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !23, file: !24, line: 596, baseType: !21, size: 32, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !23, file: !24, line: 597, baseType: !55, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !23, file: !24, line: 632, baseType: !142, size: 2880, offset: 1152)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !24, line: 599, size: 2880, elements: !143)
!143 = !{!144, !194}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !142, file: !24, line: 622, baseType: !145, size: 1728)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !24, line: 601, size: 1728, elements: !146)
!146 = !{!147, !148, !149, !153, !165, !166, !168, !176, !177, !178, !179, !183, !187, !188, !189, !190, !191, !192, !193}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !145, file: !24, line: 603, baseType: !102, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !145, file: !24, line: 604, baseType: !55, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !145, file: !24, line: 605, baseType: !150, size: 208, offset: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 208, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 26)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !145, file: !24, line: 606, baseType: !154, size: 288, offset: 352)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !24, line: 55, size: 288, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !154, file: !24, line: 57, baseType: !21, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !154, file: !24, line: 58, baseType: !21, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !154, file: !24, line: 59, baseType: !21, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !154, file: !24, line: 60, baseType: !21, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !154, file: !24, line: 61, baseType: !21, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !154, file: !24, line: 62, baseType: !21, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !154, file: !24, line: 63, baseType: !21, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !154, file: !24, line: 64, baseType: !21, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !154, file: !24, line: 65, baseType: !21, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !145, file: !24, line: 607, baseType: !21, size: 32, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !145, file: !24, line: 608, baseType: !167, size: 64, offset: 704)
!167 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !145, file: !24, line: 609, baseType: !169, size: 112, offset: 768)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !24, line: 319, size: 112, elements: !170)
!170 = !{!171, !174, !175}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !169, file: !24, line: 320, baseType: !172, size: 48)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 48, elements: !76)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !169, file: !24, line: 321, baseType: !172, size: 48, offset: 48)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !169, file: !24, line: 322, baseType: !173, size: 16, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !145, file: !24, line: 610, baseType: !92, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !145, file: !24, line: 611, baseType: !92, size: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !145, file: !24, line: 612, baseType: !92, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !145, file: !24, line: 613, baseType: !180, size: 64, offset: 1088)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !145, file: !24, line: 614, baseType: !184, size: 192, offset: 1152)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !145, file: !24, line: 615, baseType: !21, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !145, file: !24, line: 616, baseType: !92, size: 64, offset: 1376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !145, file: !24, line: 617, baseType: !92, size: 64, offset: 1440)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !145, file: !24, line: 618, baseType: !92, size: 64, offset: 1504)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !145, file: !24, line: 619, baseType: !92, size: 64, offset: 1568)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !145, file: !24, line: 620, baseType: !92, size: 64, offset: 1632)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !145, file: !24, line: 621, baseType: !21, size: 32, offset: 1696)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !142, file: !24, line: 631, baseType: !195, size: 2880)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !24, line: 626, size: 2880, elements: !196)
!196 = !{!197, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !195, file: !24, line: 629, baseType: !198, size: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1920, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 30)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !195, file: !24, line: 630, baseType: !202, size: 960, offset: 1920)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 960, elements: !199)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !23, file: !24, line: 636, baseType: !204, size: 64, offset: 4032)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !24, line: 93, size: 6336, elements: !206)
!206 = !{!207, !208, !209, !215}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !205, file: !24, line: 94, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !205, file: !24, line: 95, baseType: !21, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !205, file: !24, line: 97, baseType: !210, size: 2048, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2048, elements: !214)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = !{!16}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !205, file: !24, line: 98, baseType: !216, size: 4160, offset: 2176)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !24, line: 74, size: 4160, elements: !217)
!217 = !{!218, !220, !221, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !216, file: !24, line: 75, baseType: !219, size: 2048)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2048, elements: !214)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !216, file: !24, line: 76, baseType: !219, size: 2048, offset: 2048)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !216, file: !24, line: 78, baseType: !134, size: 32, offset: 4096)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !216, file: !24, line: 81, baseType: !134, size: 32, offset: 4128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !23, file: !24, line: 637, baseType: !205, size: 6336, offset: 4096)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !23, file: !24, line: 641, baseType: !225, size: 64, offset: 10432)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !21}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !23, file: !24, line: 646, baseType: !230, size: 192, offset: 10496)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !24, line: 291, size: 192, elements: !231)
!231 = !{!232, !234, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !230, file: !24, line: 293, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !230, file: !24, line: 294, baseType: !21, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !230, file: !24, line: 295, baseType: !28, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !23, file: !24, line: 648, baseType: !237, size: 4224, offset: 10688)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4224, elements: !76)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 83, baseType: !21)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !241, line: 86, baseType: !92)
!241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !8, file: !9, line: 183, baseType: !243, size: 64, offset: 1856)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!21, !22, !246, !60, !247, !239}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 40, baseType: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !53, line: 129, baseType: !250)
!250 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !8, file: !9, line: 185, baseType: !21, size: 32, offset: 1920)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !8, file: !9, line: 186, baseType: !55, size: 64, offset: 1984)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !8, file: !9, line: 187, baseType: !254, size: 768, offset: 2048)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !255, line: 42, size: 768, elements: !256)
!255 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !254, file: !255, line: 44, baseType: !55, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !254, file: !255, line: 45, baseType: !55, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !254, file: !255, line: 46, baseType: !55, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !254, file: !255, line: 47, baseType: !55, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !254, file: !255, line: 48, baseType: !55, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !254, file: !255, line: 49, baseType: !55, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !254, file: !255, line: 50, baseType: !55, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !254, file: !255, line: 51, baseType: !55, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !254, file: !255, line: 52, baseType: !55, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !254, file: !255, line: 53, baseType: !55, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !254, file: !255, line: 54, baseType: !13, size: 8, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !254, file: !255, line: 55, baseType: !13, size: 8, offset: 648)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !254, file: !255, line: 56, baseType: !13, size: 8, offset: 656)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !254, file: !255, line: 57, baseType: !13, size: 8, offset: 664)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !254, file: !255, line: 58, baseType: !13, size: 8, offset: 672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !254, file: !255, line: 59, baseType: !13, size: 8, offset: 680)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !254, file: !255, line: 60, baseType: !13, size: 8, offset: 688)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !254, file: !255, line: 61, baseType: !13, size: 8, offset: 696)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !254, file: !255, line: 62, baseType: !13, size: 8, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !254, file: !255, line: 63, baseType: !13, size: 8, offset: 712)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !254, file: !255, line: 64, baseType: !13, size: 8, offset: 720)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !254, file: !255, line: 65, baseType: !13, size: 8, offset: 728)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !254, file: !255, line: 66, baseType: !13, size: 8, offset: 736)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !254, file: !255, line: 67, baseType: !13, size: 8, offset: 744)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !8, file: !9, line: 189, baseType: !282, size: 16, offset: 2816)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 16, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 2)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !8, file: !9, line: 190, baseType: !286, size: 256, offset: 2832)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !214)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !8, file: !9, line: 191, baseType: !286, size: 256, offset: 3088)
!288 = !{i32 2, !"Dwarf Version", i32 4}
!289 = !{i32 2, !"Debug Info Version", i32 3}
!290 = !{i32 1, !"wchar_size", i32 4}
!291 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!292 = distinct !DISubprogram(name: "_setlocale_r", scope: !3, file: !3, line: 308, type: !293, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!55, !22, !21, !60}
!295 = !{!296, !297, !298}
!296 = !DILocalVariable(name: "p", arg: 1, scope: !292, file: !3, line: 308, type: !22)
!297 = !DILocalVariable(name: "category", arg: 2, scope: !292, file: !3, line: 308, type: !21)
!298 = !DILocalVariable(name: "locale", arg: 3, scope: !292, file: !3, line: 308, type: !60)
!299 = !DILocation(line: 308, column: 1, scope: !292)
!300 = !DILocation(line: 314, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !3, line: 314, column: 7)
!302 = !DILocation(line: 314, column: 7, scope: !292)
!303 = !DILocation(line: 316, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 316, column: 11)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 315, column: 5)
!306 = !DILocation(line: 316, column: 36, scope: !304)
!307 = !DILocation(line: 316, column: 39, scope: !304)
!308 = !DILocation(line: 317, column: 4, scope: !304)
!309 = !DILocation(line: 317, column: 7, scope: !304)
!310 = !DILocation(line: 316, column: 11, scope: !305)
!311 = !DILocation(line: 320, column: 3, scope: !292)
!312 = !DILocation(line: 0, scope: !292)
!313 = !DILocation(line: 454, column: 1, scope: !292)
!314 = distinct !DISubprogram(name: "__locale_mb_cur_max", scope: !3, file: !3, line: 985, type: !315, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{!21}
!317 = !DILocation(line: 230, column: 10, scope: !318, inlinedAt: !321)
!318 = distinct !DISubprogram(name: "__get_current_locale", scope: !9, file: !9, line: 228, type: !319, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!319 = !DISubroutineType(types: !320)
!320 = !{!117}
!321 = distinct !DILocation(line: 990, column: 10, scope: !314)
!322 = !DILocation(line: 230, column: 18, scope: !318, inlinedAt: !321)
!323 = !{!324, !328, i64 72}
!324 = !{!"_reent", !325, i64 0, !328, i64 8, !328, i64 16, !328, i64 24, !325, i64 32, !326, i64 36, !325, i64 64, !328, i64 72, !325, i64 80, !328, i64 88, !328, i64 96, !325, i64 104, !328, i64 112, !328, i64 120, !325, i64 128, !328, i64 136, !326, i64 144, !328, i64 504, !329, i64 512, !328, i64 1304, !331, i64 1312, !326, i64 1336}
!325 = !{!"int", !326, i64 0}
!326 = !{!"omnipotent char", !327, i64 0}
!327 = !{!"Simple C/C++ TBAA"}
!328 = !{!"any pointer", !326, i64 0}
!329 = !{!"_atexit", !328, i64 0, !325, i64 8, !326, i64 16, !330, i64 272}
!330 = !{!"_on_exit_args", !326, i64 0, !326, i64 256, !325, i64 512, !325, i64 516}
!331 = !{!"_glue", !328, i64 0, !325, i64 8, !328, i64 16}
!332 = !DILocation(line: 213, column: 3, scope: !333, inlinedAt: !334)
!333 = distinct !DISubprogram(name: "__get_global_locale", scope: !9, file: !9, line: 210, type: !319, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !2, retainedNodes: !4)
!334 = distinct !DILocation(line: 230, column: 29, scope: !318, inlinedAt: !321)
!335 = !DILocation(line: 230, column: 3, scope: !318, inlinedAt: !321)
!336 = !DILocation(line: 990, column: 10, scope: !314)
!337 = !{!326, !326, i64 0}
!338 = !DILocation(line: 990, column: 3, scope: !314)
!339 = distinct !DISubprogram(name: "__locale_ctype_ptr_l", scope: !3, file: !3, line: 995, type: !340, isLocal: false, isDefinition: true, scopeLine: 996, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!60, !117}
!342 = !{!343}
!343 = !DILocalVariable(name: "locale", arg: 1, scope: !339, file: !3, line: 995, type: !117)
!344 = !DILocation(line: 995, column: 42, scope: !339)
!345 = !DILocation(line: 997, column: 18, scope: !339)
!346 = !{!347, !328, i64 248}
!347 = !{!"__locale_t", !326, i64 0, !328, i64 224, !328, i64 232, !325, i64 240, !328, i64 248, !348, i64 256, !326, i64 352, !326, i64 354, !326, i64 386}
!348 = !{!"lconv", !328, i64 0, !328, i64 8, !328, i64 16, !328, i64 24, !328, i64 32, !328, i64 40, !328, i64 48, !328, i64 56, !328, i64 64, !328, i64 72, !326, i64 80, !326, i64 81, !326, i64 82, !326, i64 83, !326, i64 84, !326, i64 85, !326, i64 86, !326, i64 87, !326, i64 88, !326, i64 89, !326, i64 90, !326, i64 91, !326, i64 92, !326, i64 93}
!349 = !DILocation(line: 997, column: 3, scope: !339)
!350 = distinct !DISubprogram(name: "__locale_ctype_ptr", scope: !3, file: !3, line: 1001, type: !351, isLocal: false, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!351 = !DISubroutineType(types: !352)
!352 = !{!60}
!353 = !DILocation(line: 230, column: 10, scope: !318, inlinedAt: !354)
!354 = distinct !DILocation(line: 1003, column: 10, scope: !350)
!355 = !DILocation(line: 230, column: 18, scope: !318, inlinedAt: !354)
!356 = !DILocation(line: 213, column: 3, scope: !333, inlinedAt: !357)
!357 = distinct !DILocation(line: 230, column: 29, scope: !318, inlinedAt: !354)
!358 = !DILocation(line: 230, column: 3, scope: !318, inlinedAt: !354)
!359 = !DILocation(line: 1003, column: 35, scope: !350)
!360 = !DILocation(line: 1003, column: 3, scope: !350)
!361 = distinct !DISubprogram(name: "setlocale", scope: !3, file: !3, line: 1009, type: !362, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!55, !21, !60}
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "category", arg: 1, scope: !361, file: !3, line: 1009, type: !21)
!366 = !DILocalVariable(name: "locale", arg: 2, scope: !361, file: !3, line: 1009, type: !60)
!367 = !DILocation(line: 1009, column: 1, scope: !361)
!368 = !DILocation(line: 1013, column: 24, scope: !361)
!369 = !DILocation(line: 308, column: 1, scope: !292, inlinedAt: !370)
!370 = distinct !DILocation(line: 1013, column: 10, scope: !361)
!371 = !DILocation(line: 314, column: 7, scope: !301, inlinedAt: !370)
!372 = !DILocation(line: 314, column: 7, scope: !292, inlinedAt: !370)
!373 = !DILocation(line: 316, column: 11, scope: !304, inlinedAt: !370)
!374 = !DILocation(line: 316, column: 36, scope: !304, inlinedAt: !370)
!375 = !DILocation(line: 316, column: 39, scope: !304, inlinedAt: !370)
!376 = !DILocation(line: 317, column: 4, scope: !304, inlinedAt: !370)
!377 = !DILocation(line: 317, column: 7, scope: !304, inlinedAt: !370)
!378 = !DILocation(line: 316, column: 11, scope: !305, inlinedAt: !370)
!379 = !DILocation(line: 320, column: 3, scope: !292, inlinedAt: !370)
!380 = !DILocation(line: 0, scope: !292, inlinedAt: !370)
!381 = !DILocation(line: 454, column: 1, scope: !292, inlinedAt: !370)
!382 = !DILocation(line: 1013, column: 3, scope: !361)
