; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/setenv_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/setenv_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@_setenv_r.alloced = internal unnamed_addr global i1 false, align 4, !dbg !0
@environ = external dso_local local_unnamed_addr global i8**, align 8

; Function Attrs: noredzone nounwind
define dso_local i32 @_setenv_r(%struct._reent*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !2 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !256
  %7 = tail call i8* @strchr(i8* %1, i32 61) #5, !dbg !257
  %8 = icmp eq i8* %7, null, !dbg !257
  br i1 %8, label %11, label %9, !dbg !259

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno() #5, !dbg !260
  store i32 22, i32* %10, align 4, !dbg !262, !tbaa !263
  br label %112, !dbg !267

; <label>:11:                                     ; preds = %4
  tail call void @__env_lock(%struct._reent* %0) #5, !dbg !268
  %12 = tail call i64 @strlen(i8* %2) #5, !dbg !269
  %13 = call i8* @_findenv_r(%struct._reent* %0, i8* %1, i32* nonnull %5) #5, !dbg !271
  %14 = icmp eq i8* %13, null, !dbg !273
  br i1 %14, label %31, label %15, !dbg !274

; <label>:15:                                     ; preds = %11
  %16 = icmp eq i32 %3, 0, !dbg !275
  br i1 %16, label %17, label %18, !dbg !278

; <label>:17:                                     ; preds = %15
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !279
  br label %112, !dbg !281

; <label>:18:                                     ; preds = %15
  %19 = call i64 @strlen(i8* nonnull %13) #5, !dbg !282
  %20 = shl i64 %12, 32, !dbg !284
  %21 = ashr exact i64 %20, 32, !dbg !284
  %22 = icmp ult i64 %19, %21, !dbg !285
  br i1 %22, label %71, label %23, !dbg !286

; <label>:23:                                     ; preds = %18, %23
  %24 = phi i8* [ %26, %23 ], [ %2, %18 ]
  %25 = phi i8* [ %28, %23 ], [ %13, %18 ], !dbg !287
  %26 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !289
  %27 = load i8, i8* %24, align 1, !dbg !290, !tbaa !291
  %28 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !292
  store i8 %27, i8* %25, align 1, !dbg !293, !tbaa !291
  %29 = icmp eq i8 %27, 0, !dbg !294
  br i1 %29, label %30, label %23, !dbg !295, !llvm.loop !296

; <label>:30:                                     ; preds = %23
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !298
  br label %112, !dbg !299

; <label>:31:                                     ; preds = %11
  %32 = load i8**, i8*** @environ, align 8, !dbg !300, !tbaa !302
  %33 = load i8*, i8** %32, align 8, !dbg !306, !tbaa !302
  %34 = icmp eq i8* %33, null, !dbg !308
  %35 = bitcast i8** %32 to i8*, !dbg !308
  br i1 %34, label %43, label %36, !dbg !308

; <label>:36:                                     ; preds = %31, %36
  %37 = phi i8** [ %39, %36 ], [ %32, %31 ]
  %38 = phi i32 [ %40, %36 ], [ 0, %31 ]
  %39 = getelementptr inbounds i8*, i8** %37, i64 1, !dbg !309
  %40 = add nuw nsw i32 %38, 1, !dbg !310
  %41 = load i8*, i8** %39, align 8, !dbg !306, !tbaa !302
  %42 = icmp eq i8* %41, null, !dbg !308
  br i1 %42, label %43, label %36, !dbg !308, !llvm.loop !311

; <label>:43:                                     ; preds = %36, %31
  %44 = phi i32 [ 0, %31 ], [ %40, %36 ], !dbg !313
  %45 = load i1, i1* @_setenv_r.alloced, align 4
  br i1 %45, label %46, label %53, !dbg !314

; <label>:46:                                     ; preds = %43
  %47 = add nuw nsw i32 %44, 2, !dbg !315
  %48 = zext i32 %47 to i64, !dbg !315
  %49 = shl nuw nsw i64 %48, 3, !dbg !315
  %50 = call i8* @realloc(i8* %35, i64 %49) #5, !dbg !315
  store i8* %50, i8** bitcast (i8*** @environ to i8**), align 8, !dbg !318, !tbaa !302
  %51 = icmp eq i8* %50, null, !dbg !319
  br i1 %51, label %52, label %65, !dbg !321

; <label>:52:                                     ; preds = %46
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !322
  br label %112, !dbg !324

; <label>:53:                                     ; preds = %43
  store i1 true, i1* @_setenv_r.alloced, align 4
  %54 = add nuw nsw i32 %44, 2, !dbg !325
  %55 = zext i32 %54 to i64, !dbg !325
  %56 = shl nuw nsw i64 %55, 3, !dbg !325
  %57 = call i8* @malloc(i64 %56) #5, !dbg !325
  %58 = icmp eq i8* %57, null, !dbg !327
  br i1 %58, label %59, label %60, !dbg !329

; <label>:59:                                     ; preds = %53
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !330
  br label %112, !dbg !332

; <label>:60:                                     ; preds = %53
  %61 = load i8*, i8** bitcast (i8*** @environ to i8**), align 8, !dbg !333, !tbaa !302
  %62 = zext i32 %44 to i64, !dbg !334
  %63 = shl nuw nsw i64 %62, 3, !dbg !335
  %64 = call i8* @memcpy(i8* nonnull %57, i8* %61, i64 %63) #5, !dbg !336
  store i8* %57, i8** bitcast (i8*** @environ to i8**), align 8, !dbg !337, !tbaa !302
  br label %65

; <label>:65:                                     ; preds = %46, %60
  %66 = phi i8* [ %50, %46 ], [ %57, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !338
  %68 = add nuw nsw i32 %44, 1, !dbg !339
  %69 = zext i32 %68 to i64, !dbg !340
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69, !dbg !340
  store i8* null, i8** %70, align 8, !dbg !341, !tbaa !302
  store i32 %44, i32* %5, align 4, !dbg !342, !tbaa !263
  br label %71

; <label>:71:                                     ; preds = %65, %18
  br label %72, !dbg !343

; <label>:72:                                     ; preds = %71, %75
  %73 = phi i8* [ %76, %75 ], [ %1, %71 ], !dbg !346
  %74 = load i8, i8* %73, align 1, !dbg !343, !tbaa !291
  switch i8 %74, label %75 [
    i8 0, label %77
    i8 61, label %77
  ], !dbg !347

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !348
  br label %72, !dbg !349, !llvm.loop !350

; <label>:77:                                     ; preds = %72, %72
  %78 = ptrtoint i8* %73 to i64, !dbg !353
  %79 = ptrtoint i8* %1 to i64, !dbg !353
  %80 = sub i64 %12, %79, !dbg !353
  %81 = add i64 %80, %78, !dbg !353
  %82 = shl i64 %81, 32, !dbg !353
  %83 = add i64 %82, 8589934592, !dbg !353
  %84 = ashr exact i64 %83, 32, !dbg !353
  %85 = call i8* @malloc(i64 %84) #5, !dbg !353
  %86 = load i8**, i8*** @environ, align 8, !dbg !355, !tbaa !302
  %87 = load i32, i32* %5, align 4, !dbg !356, !tbaa !263
  %88 = sext i32 %87 to i64, !dbg !357
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88, !dbg !357
  store i8* %85, i8** %89, align 8, !dbg !358, !tbaa !302
  %90 = icmp eq i8* %85, null, !dbg !358
  br i1 %90, label %91, label %92, !dbg !359

; <label>:91:                                     ; preds = %77
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !360
  br label %112, !dbg !362

; <label>:92:                                     ; preds = %77
  %93 = load i8**, i8*** @environ, align 8, !dbg !363, !tbaa !302
  %94 = getelementptr inbounds i8*, i8** %93, i64 %88, !dbg !365
  %95 = load i8*, i8** %94, align 8, !dbg !365, !tbaa !302
  br label %96, !dbg !366

; <label>:96:                                     ; preds = %100, %92
  %97 = phi i8* [ %1, %92 ], [ %101, %100 ]
  %98 = phi i8* [ %95, %92 ], [ %102, %100 ], !dbg !367
  %99 = load i8, i8* %97, align 1, !dbg !369, !tbaa !291
  store i8 %99, i8* %98, align 1, !dbg !370, !tbaa !291
  switch i8 %99, label %100 [
    i8 0, label %103
    i8 61, label %103
  ], !dbg !371

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !372
  %102 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !373
  br label %96, !dbg !374, !llvm.loop !375

; <label>:103:                                    ; preds = %96, %96
  store i8 61, i8* %98, align 1, !dbg !378, !tbaa !291
  br label %104, !dbg !380

; <label>:104:                                    ; preds = %104, %103
  %105 = phi i8* [ %2, %103 ], [ %108, %104 ]
  %106 = phi i8* [ %98, %103 ], [ %107, %104 ]
  %107 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !381
  %108 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !383
  %109 = load i8, i8* %105, align 1, !dbg !384, !tbaa !291
  store i8 %109, i8* %107, align 1, !dbg !385, !tbaa !291
  %110 = icmp eq i8 %109, 0, !dbg !386
  br i1 %110, label %111, label %104, !dbg !387, !llvm.loop !388

; <label>:111:                                    ; preds = %104
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !390
  br label %112, !dbg !391

; <label>:112:                                    ; preds = %52, %59, %111, %91, %30, %17, %9
  %113 = phi i32 [ -1, %9 ], [ 0, %30 ], [ 0, %111 ], [ -1, %91 ], [ 0, %17 ], [ -1, %59 ], [ -1, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !392
  ret i32 %113, !dbg !392
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__env_lock(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @_findenv_r(%struct._reent*, i8*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__env_unlock(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @_unsetenv_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !393 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !402
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !402
  %5 = icmp eq i8* %1, null, !dbg !403
  br i1 %5, label %12, label %6, !dbg !405

; <label>:6:                                      ; preds = %2
  %7 = load i8, i8* %1, align 1, !dbg !406, !tbaa !291
  %8 = icmp eq i8 %7, 0, !dbg !407
  br i1 %8, label %12, label %9, !dbg !408

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @strchr(i8* nonnull %1, i32 61) #5, !dbg !409
  %11 = icmp eq i8* %10, null, !dbg !409
  br i1 %11, label %14, label %12, !dbg !410

; <label>:12:                                     ; preds = %9, %6, %2
  %13 = tail call i32* @__errno() #5, !dbg !411
  store i32 22, i32* %13, align 4, !dbg !413, !tbaa !263
  br label %31, !dbg !414

; <label>:14:                                     ; preds = %9
  tail call void @__env_lock(%struct._reent* %0) #5, !dbg !415
  %15 = call i8* @_findenv_r(%struct._reent* %0, i8* nonnull %1, i32* nonnull %3) #5, !dbg !417
  %16 = icmp eq i8* %15, null, !dbg !418
  br i1 %16, label %30, label %20, !dbg !418

; <label>:17:                                     ; preds = %25
  %18 = call i8* @_findenv_r(%struct._reent* %0, i8* nonnull %1, i32* nonnull %3) #5, !dbg !417
  %19 = icmp eq i8* %18, null, !dbg !418
  br i1 %19, label %30, label %20, !dbg !418

; <label>:20:                                     ; preds = %14, %17
  %21 = load i8**, i8*** @environ, align 8, !dbg !419, !tbaa !302
  %22 = load i32, i32* %3, align 4, !dbg !422, !tbaa !263
  %23 = sext i32 %22 to i64, !dbg !423
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23, !dbg !423
  br label %25, !dbg !425

; <label>:25:                                     ; preds = %25, %20
  %26 = phi i8** [ %24, %20 ], [ %27, %25 ], !dbg !426
  %27 = getelementptr inbounds i8*, i8** %26, i64 1, !dbg !428
  %28 = load i8*, i8** %27, align 8, !dbg !430, !tbaa !302
  store i8* %28, i8** %26, align 8, !dbg !431, !tbaa !302
  %29 = icmp eq i8* %28, null, !dbg !431
  br i1 %29, label %17, label %25, !dbg !432, !llvm.loop !433

; <label>:30:                                     ; preds = %17, %14
  call void @__env_unlock(%struct._reent* %0) #5, !dbg !436
  br label %31, !dbg !437

; <label>:31:                                     ; preds = %30, %12
  %32 = phi i32 [ -1, %12 ], [ 0, %30 ], !dbg !438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !439
  ret i32 %32, !dbg !439
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!251, !252, !253}
!llvm.ident = !{!254}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "alloced", scope: !2, file: !3, line: 58, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_setenv_r", scope: !3, file: !3, line: 52, type: !4, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !239)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/setenv_r.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !46, !46, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !9, line: 569, size: 14912, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !12, !94, !95, !96, !97, !101, !102, !105, !106, !110, !122, !123, !124, !126, !127, !128, !190, !211, !212, !217, !224}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !8, file: !9, line: 571, baseType: !6, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !9, line: 287, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 181, size: 1408, elements: !16)
!16 = !{!17, !20, !21, !22, !24, !25, !30, !31, !33, !42, !48, !53, !57, !58, !59, !60, !64, !68, !69, !70, !72, !73, !77, !93}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !9, line: 182, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !9, line: 183, baseType: !6, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !9, line: 184, baseType: !6, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !9, line: 185, baseType: !23, size: 16, offset: 128)
!23 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !9, line: 186, baseType: !23, size: 16, offset: 144)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !9, line: 187, baseType: !26, size: 128, offset: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 117, size: 128, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !26, file: !9, line: 118, baseType: !18, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !26, file: !9, line: 119, baseType: !6, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !9, line: 188, baseType: !6, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !9, line: 195, baseType: !32, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !9, line: 197, baseType: !34, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !7, !32, !40, !6}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !38, line: 145, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !9, line: 199, baseType: !43, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!37, !7, !32, !46, !6}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !9, line: 202, baseType: !49, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !7, !32, !52, !6}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !38, line: 114, baseType: !39)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !9, line: 203, baseType: !54, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !7, !32}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !9, line: 206, baseType: !26, size: 128, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !15, file: !9, line: 207, baseType: !18, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !9, line: 208, baseType: !6, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !9, line: 211, baseType: !61, size: 24, offset: 928)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !9, line: 212, baseType: !65, size: 8, offset: 952)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !9, line: 215, baseType: !26, size: 128, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !9, line: 218, baseType: !6, size: 32, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !9, line: 219, baseType: !71, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !38, line: 44, baseType: !39)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !15, file: !9, line: 222, baseType: !7, size: 64, offset: 1216)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !9, line: 226, baseType: !74, size: 32, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !38, line: 175, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !76, line: 12, baseType: !6)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !15, file: !9, line: 228, baseType: !78, size: 64, offset: 1312)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !38, line: 171, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 163, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !79, file: !38, line: 165, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !79, file: !38, line: 170, baseType: !83, size: 32, offset: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !38, line: 166, size: 32, elements: !84)
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !83, file: !38, line: 168, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !87, line: 124, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !83, file: !38, line: 169, baseType: !90, size: 32)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !9, line: 229, baseType: !6, size: 32, offset: 1376)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !8, file: !9, line: 578, baseType: !6, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !8, file: !9, line: 579, baseType: !98, size: 200, offset: 288)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 200, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 25)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !8, file: !9, line: 582, baseType: !6, size: 32, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !8, file: !9, line: 583, baseType: !103, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !9, line: 40, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !8, file: !9, line: 585, baseType: !6, size: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !8, file: !9, line: 587, baseType: !107, size: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !7}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !8, file: !9, line: 590, baseType: !111, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !9, line: 47, size: 256, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !112, file: !9, line: 49, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !112, file: !9, line: 51, baseType: !120, size: 32, offset: 192)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !66)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !9, line: 25, baseType: !88)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !8, file: !9, line: 591, baseType: !6, size: 32, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !8, file: !9, line: 592, baseType: !111, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !8, file: !9, line: 593, baseType: !125, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !8, file: !9, line: 596, baseType: !6, size: 32, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !8, file: !9, line: 597, baseType: !40, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !8, file: !9, line: 632, baseType: !129, size: 2880, offset: 1152)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 599, size: 2880, elements: !130)
!130 = !{!131, !181}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !129, file: !9, line: 622, baseType: !132, size: 1728)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !9, line: 601, size: 1728, elements: !133)
!133 = !{!134, !135, !136, !140, !152, !153, !155, !163, !164, !165, !166, !170, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !132, file: !9, line: 603, baseType: !88, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !132, file: !9, line: 604, baseType: !40, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !132, file: !9, line: 605, baseType: !137, size: 208, offset: 128)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 208, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 26)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !132, file: !9, line: 606, baseType: !141, size: 288, offset: 352)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !9, line: 55, size: 288, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !141, file: !9, line: 57, baseType: !6, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !141, file: !9, line: 58, baseType: !6, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !141, file: !9, line: 59, baseType: !6, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !141, file: !9, line: 60, baseType: !6, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !141, file: !9, line: 61, baseType: !6, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !141, file: !9, line: 62, baseType: !6, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !141, file: !9, line: 63, baseType: !6, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !141, file: !9, line: 64, baseType: !6, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !141, file: !9, line: 65, baseType: !6, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !132, file: !9, line: 607, baseType: !6, size: 32, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !132, file: !9, line: 608, baseType: !154, size: 64, offset: 704)
!154 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !132, file: !9, line: 609, baseType: !156, size: 112, offset: 768)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !9, line: 319, size: 112, elements: !157)
!157 = !{!158, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !156, file: !9, line: 320, baseType: !159, size: 48)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 48, elements: !62)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !156, file: !9, line: 321, baseType: !159, size: 48, offset: 48)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !156, file: !9, line: 322, baseType: !160, size: 16, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !132, file: !9, line: 610, baseType: !78, size: 64, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !132, file: !9, line: 611, baseType: !78, size: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !132, file: !9, line: 612, baseType: !78, size: 64, offset: 1024)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !132, file: !9, line: 613, baseType: !167, size: 64, offset: 1088)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !132, file: !9, line: 614, baseType: !171, size: 192, offset: 1152)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 24)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !132, file: !9, line: 615, baseType: !6, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !132, file: !9, line: 616, baseType: !78, size: 64, offset: 1376)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !132, file: !9, line: 617, baseType: !78, size: 64, offset: 1440)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !132, file: !9, line: 618, baseType: !78, size: 64, offset: 1504)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !132, file: !9, line: 619, baseType: !78, size: 64, offset: 1568)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !132, file: !9, line: 620, baseType: !78, size: 64, offset: 1632)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !132, file: !9, line: 621, baseType: !6, size: 32, offset: 1696)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !129, file: !9, line: 631, baseType: !182, size: 2880)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !9, line: 626, size: 2880, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !182, file: !9, line: 629, baseType: !185, size: 1920)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 30)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !182, file: !9, line: 630, baseType: !189, size: 960, offset: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 960, elements: !186)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !8, file: !9, line: 636, baseType: !191, size: 64, offset: 4032)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !9, line: 93, size: 6336, elements: !193)
!193 = !{!194, !195, !196, !203}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !192, file: !9, line: 94, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !192, file: !9, line: 95, baseType: !6, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !192, file: !9, line: 97, baseType: !197, size: 2048, offset: 128)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 2048, elements: !201)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null}
!201 = !{!202}
!202 = !DISubrange(count: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !192, file: !9, line: 98, baseType: !204, size: 4160, offset: 2176)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !9, line: 74, size: 4160, elements: !205)
!205 = !{!206, !208, !209, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !204, file: !9, line: 75, baseType: !207, size: 2048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !201)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !204, file: !9, line: 76, baseType: !207, size: 2048, offset: 2048)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !204, file: !9, line: 78, baseType: !121, size: 32, offset: 4096)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !204, file: !9, line: 81, baseType: !121, size: 32, offset: 4128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !8, file: !9, line: 637, baseType: !192, size: 6336, offset: 4096)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !8, file: !9, line: 641, baseType: !213, size: 64, offset: 10432)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !6}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !8, file: !9, line: 646, baseType: !218, size: 192, offset: 10496)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !9, line: 291, size: 192, elements: !219)
!219 = !{!220, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !218, file: !9, line: 293, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !218, file: !9, line: 294, baseType: !6, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !218, file: !9, line: 295, baseType: !13, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !8, file: !9, line: 648, baseType: !225, size: 4224, offset: 10688)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4224, elements: !62)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !228, globals: !234)
!227 = !{}
!228 = !{!229, !40, !230, !6, !32}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 40, baseType: !232)
!231 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !38, line: 129, baseType: !233)
!233 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!235, !236}
!235 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "p_environ", scope: !226, file: !3, line: 38, type: !238, isLocal: true, isDefinition: true)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !250}
!240 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !2, file: !3, line: 52, type: !7)
!241 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 52, type: !46)
!242 = !DILocalVariable(name: "value", arg: 3, scope: !2, file: !3, line: 52, type: !46)
!243 = !DILocalVariable(name: "rewrite", arg: 4, scope: !2, file: !3, line: 52, type: !6)
!244 = !DILocalVariable(name: "C", scope: !2, file: !3, line: 59, type: !40)
!245 = !DILocalVariable(name: "l_value", scope: !2, file: !3, line: 60, type: !6)
!246 = !DILocalVariable(name: "offset", scope: !2, file: !3, line: 60, type: !6)
!247 = !DILocalVariable(name: "cnt", scope: !248, file: !3, line: 87, type: !6)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 86, column: 5)
!249 = distinct !DILexicalBlock(scope: !2, file: !3, line: 71, column: 7)
!250 = !DILocalVariable(name: "P", scope: !248, file: !3, line: 88, type: !229)
!251 = !{i32 2, !"Dwarf Version", i32 4}
!252 = !{i32 2, !"Debug Info Version", i32 3}
!253 = !{i32 1, !"wchar_size", i32 4}
!254 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!255 = !DILocation(line: 52, column: 1, scope: !2)
!256 = !DILocation(line: 60, column: 3, scope: !2)
!257 = !DILocation(line: 62, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !2, file: !3, line: 62, column: 7)
!259 = !DILocation(line: 62, column: 7, scope: !2)
!260 = !DILocation(line: 64, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 63, column: 5)
!262 = !DILocation(line: 64, column: 13, scope: !261)
!263 = !{!264, !264, i64 0}
!264 = !{!"int", !265, i64 0}
!265 = !{!"omnipotent char", !266, i64 0}
!266 = !{!"Simple C/C++ TBAA"}
!267 = !DILocation(line: 65, column: 7, scope: !261)
!268 = !DILocation(line: 68, column: 3, scope: !2)
!269 = !DILocation(line: 70, column: 13, scope: !2)
!270 = !DILocation(line: 60, column: 16, scope: !2)
!271 = !DILocation(line: 71, column: 12, scope: !249)
!272 = !DILocation(line: 59, column: 18, scope: !2)
!273 = !DILocation(line: 71, column: 10, scope: !249)
!274 = !DILocation(line: 71, column: 7, scope: !2)
!275 = !DILocation(line: 73, column: 12, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 73, column: 11)
!277 = distinct !DILexicalBlock(scope: !249, file: !3, line: 72, column: 5)
!278 = !DILocation(line: 73, column: 11, scope: !277)
!279 = !DILocation(line: 75, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 74, column: 9)
!281 = !DILocation(line: 76, column: 4, scope: !280)
!282 = !DILocation(line: 78, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !277, file: !3, line: 78, column: 11)
!284 = !DILocation(line: 78, column: 25, scope: !283)
!285 = !DILocation(line: 78, column: 22, scope: !283)
!286 = !DILocation(line: 78, column: 11, scope: !277)
!287 = !DILocation(line: 0, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 79, column: 2)
!289 = !DILocation(line: 80, column: 25, scope: !288)
!290 = !DILocation(line: 80, column: 19, scope: !288)
!291 = !{!265, !265, i64 0}
!292 = !DILocation(line: 80, column: 14, scope: !288)
!293 = !DILocation(line: 80, column: 17, scope: !288)
!294 = !DILocation(line: 80, column: 29, scope: !288)
!295 = !DILocation(line: 80, column: 4, scope: !288)
!296 = distinct !{!296, !295, !297}
!297 = !DILocation(line: 80, column: 34, scope: !288)
!298 = !DILocation(line: 81, column: 11, scope: !288)
!299 = !DILocation(line: 82, column: 4, scope: !288)
!300 = !DILocation(line: 90, column: 16, scope: !301)
!301 = distinct !DILexicalBlock(scope: !248, file: !3, line: 90, column: 7)
!302 = !{!303, !303, i64 0}
!303 = !{!"any pointer", !265, i64 0}
!304 = !DILocation(line: 88, column: 23, scope: !248)
!305 = !DILocation(line: 87, column: 20, scope: !248)
!306 = !DILocation(line: 90, column: 37, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !3, line: 90, column: 7)
!308 = !DILocation(line: 90, column: 7, scope: !301)
!309 = !DILocation(line: 90, column: 41, scope: !307)
!310 = !DILocation(line: 90, column: 46, scope: !307)
!311 = distinct !{!311, !308, !312}
!312 = !DILocation(line: 90, column: 52, scope: !301)
!313 = !DILocation(line: 0, scope: !307)
!314 = !DILocation(line: 91, column: 11, scope: !248)
!315 = !DILocation(line: 93, column: 27, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 92, column: 2)
!317 = distinct !DILexicalBlock(scope: !248, file: !3, line: 91, column: 11)
!318 = !DILocation(line: 93, column: 15, scope: !316)
!319 = !DILocation(line: 95, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 95, column: 8)
!321 = !DILocation(line: 95, column: 8, scope: !316)
!322 = !DILocation(line: 97, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !3, line: 96, column: 13)
!324 = !DILocation(line: 98, column: 8, scope: !323)
!325 = !DILocation(line: 104, column: 18, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !3, line: 102, column: 2)
!327 = !DILocation(line: 105, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !3, line: 105, column: 8)
!329 = !DILocation(line: 105, column: 8, scope: !326)
!330 = !DILocation(line: 107, column: 15, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 106, column: 13)
!332 = !DILocation(line: 108, column: 8, scope: !331)
!333 = !DILocation(line: 110, column: 31, scope: !326)
!334 = !DILocation(line: 110, column: 43, scope: !326)
!335 = !DILocation(line: 110, column: 47, scope: !326)
!336 = !DILocation(line: 110, column: 4, scope: !326)
!337 = !DILocation(line: 111, column: 15, scope: !326)
!338 = !DILocation(line: 113, column: 8, scope: !248)
!339 = !DILocation(line: 113, column: 24, scope: !248)
!340 = !DILocation(line: 113, column: 7, scope: !248)
!341 = !DILocation(line: 113, column: 29, scope: !248)
!342 = !DILocation(line: 114, column: 14, scope: !248)
!343 = !DILocation(line: 116, column: 27, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 116, column: 3)
!345 = distinct !DILexicalBlock(scope: !2, file: !3, line: 116, column: 3)
!346 = !DILocation(line: 0, scope: !344)
!347 = !DILocation(line: 116, column: 30, scope: !344)
!348 = !DILocation(line: 116, column: 44, scope: !344)
!349 = !DILocation(line: 116, column: 3, scope: !344)
!350 = distinct !{!350, !351, !352}
!351 = !DILocation(line: 116, column: 3, scope: !345)
!352 = !DILocation(line: 116, column: 48, scope: !345)
!353 = !DILocation(line: 118, column: 2, scope: !354)
!354 = distinct !DILexicalBlock(scope: !2, file: !3, line: 117, column: 7)
!355 = !DILocation(line: 117, column: 10, scope: !354)
!356 = !DILocation(line: 117, column: 22, scope: !354)
!357 = !DILocation(line: 117, column: 9, scope: !354)
!358 = !DILocation(line: 117, column: 30, scope: !354)
!359 = !DILocation(line: 117, column: 7, scope: !2)
!360 = !DILocation(line: 120, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !354, file: !3, line: 119, column: 5)
!362 = !DILocation(line: 121, column: 7, scope: !361)
!363 = !DILocation(line: 123, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !2, file: !3, line: 123, column: 3)
!365 = !DILocation(line: 123, column: 12, scope: !364)
!366 = !DILocation(line: 123, column: 8, scope: !364)
!367 = !DILocation(line: 0, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 123, column: 3)
!369 = !DILocation(line: 123, column: 40, scope: !368)
!370 = !DILocation(line: 123, column: 38, scope: !368)
!371 = !DILocation(line: 123, column: 49, scope: !368)
!372 = !DILocation(line: 123, column: 45, scope: !368)
!373 = !DILocation(line: 123, column: 63, scope: !368)
!374 = !DILocation(line: 123, column: 3, scope: !368)
!375 = distinct !{!375, !376, !377}
!376 = !DILocation(line: 123, column: 3, scope: !364)
!377 = !DILocation(line: 123, column: 67, scope: !364)
!378 = !DILocation(line: 124, column: 13, scope: !379)
!379 = distinct !DILexicalBlock(scope: !2, file: !3, line: 124, column: 3)
!380 = !DILocation(line: 124, column: 8, scope: !379)
!381 = !DILocation(line: 0, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !3, line: 124, column: 3)
!383 = !DILocation(line: 124, column: 34, scope: !382)
!384 = !DILocation(line: 124, column: 28, scope: !382)
!385 = !DILocation(line: 124, column: 26, scope: !382)
!386 = !DILocation(line: 124, column: 38, scope: !382)
!387 = !DILocation(line: 124, column: 3, scope: !379)
!388 = distinct !{!388, !387, !389}
!389 = !DILocation(line: 124, column: 44, scope: !379)
!390 = !DILocation(line: 126, column: 3, scope: !2)
!391 = !DILocation(line: 128, column: 3, scope: !2)
!392 = !DILocation(line: 129, column: 1, scope: !2)
!393 = distinct !DISubprogram(name: "_unsetenv_r", scope: !3, file: !3, line: 136, type: !394, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!6, !7, !46}
!396 = !{!397, !398, !399, !400}
!397 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !393, file: !3, line: 136, type: !7)
!398 = !DILocalVariable(name: "name", arg: 2, scope: !393, file: !3, line: 136, type: !46)
!399 = !DILocalVariable(name: "P", scope: !393, file: !3, line: 140, type: !229)
!400 = !DILocalVariable(name: "offset", scope: !393, file: !3, line: 141, type: !6)
!401 = !DILocation(line: 136, column: 1, scope: !393)
!402 = !DILocation(line: 141, column: 3, scope: !393)
!403 = !DILocation(line: 144, column: 12, scope: !404)
!404 = distinct !DILexicalBlock(scope: !393, file: !3, line: 144, column: 7)
!405 = !DILocation(line: 144, column: 20, scope: !404)
!406 = !DILocation(line: 144, column: 23, scope: !404)
!407 = !DILocation(line: 144, column: 31, scope: !404)
!408 = !DILocation(line: 144, column: 39, scope: !404)
!409 = !DILocation(line: 144, column: 42, scope: !404)
!410 = !DILocation(line: 144, column: 7, scope: !393)
!411 = !DILocation(line: 146, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !404, file: !3, line: 145, column: 5)
!413 = !DILocation(line: 146, column: 13, scope: !412)
!414 = !DILocation(line: 147, column: 7, scope: !412)
!415 = !DILocation(line: 150, column: 3, scope: !393)
!416 = !DILocation(line: 141, column: 7, scope: !393)
!417 = !DILocation(line: 152, column: 10, scope: !393)
!418 = !DILocation(line: 152, column: 3, scope: !393)
!419 = !DILocation(line: 154, column: 18, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 154, column: 7)
!421 = distinct !DILexicalBlock(scope: !393, file: !3, line: 153, column: 5)
!422 = !DILocation(line: 154, column: 30, scope: !420)
!423 = !DILocation(line: 154, column: 17, scope: !420)
!424 = !DILocation(line: 140, column: 19, scope: !393)
!425 = !DILocation(line: 154, column: 12, scope: !420)
!426 = !DILocation(line: 0, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !3, line: 154, column: 7)
!428 = !DILocation(line: 155, column: 24, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !3, line: 155, column: 13)
!430 = !DILocation(line: 155, column: 20, scope: !429)
!431 = !DILocation(line: 155, column: 18, scope: !429)
!432 = !DILocation(line: 155, column: 13, scope: !427)
!433 = distinct !{!433, !434, !435}
!434 = !DILocation(line: 154, column: 7, scope: !420)
!435 = !DILocation(line: 156, column: 4, scope: !420)
!436 = !DILocation(line: 159, column: 3, scope: !393)
!437 = !DILocation(line: 160, column: 3, scope: !393)
!438 = !DILocation(line: 0, scope: !393)
!439 = !DILocation(line: 161, column: 1, scope: !393)
