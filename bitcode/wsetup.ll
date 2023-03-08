; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wsetup.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wsetup.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !11 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !240
  %4 = icmp eq %struct._reent* %3, null, !dbg !241
  br i1 %4, label %10, label %5, !dbg !241

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !241
  %7 = load i32, i32* %6, align 8, !dbg !241, !tbaa !243
  %8 = icmp eq i32 %7, 0, !dbg !241
  br i1 %8, label %9, label %10, !dbg !240

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #3, !dbg !241
  br label %10, !dbg !241

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !252
  %12 = load i16, i16* %11, align 8, !dbg !252, !tbaa !254
  %13 = sext i16 %12 to i32, !dbg !260
  %14 = and i32 %13, 8, !dbg !261
  %15 = icmp eq i32 %14, 0, !dbg !262
  br i1 %15, label %16, label %46, !dbg !263

; <label>:16:                                     ; preds = %10
  %17 = and i32 %13, 16, !dbg !264
  %18 = icmp eq i32 %17, 0, !dbg !267
  br i1 %18, label %19, label %21, !dbg !268

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !269
  store i32 9, i32* %20, align 8, !dbg !271, !tbaa !272
  br label %82, !dbg !273

; <label>:21:                                     ; preds = %16
  %22 = and i32 %13, 4, !dbg !274
  %23 = icmp eq i32 %22, 0, !dbg !274
  br i1 %23, label %43, label %24, !dbg !276

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !277
  %26 = load i8*, i8** %25, align 8, !dbg !277, !tbaa !280
  %27 = icmp eq i8* %26, null, !dbg !277
  br i1 %27, label %35, label %28, !dbg !281

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !282
  %30 = icmp eq i8* %26, %29, !dbg !282
  br i1 %30, label %33, label %31, !dbg !285

; <label>:31:                                     ; preds = %28
  tail call void @free(i8* nonnull %26) #3, !dbg !282
  %32 = load i16, i16* %11, align 8, !dbg !286, !tbaa !254
  br label %33, !dbg !282

; <label>:33:                                     ; preds = %28, %31
  %34 = phi i16 [ %12, %28 ], [ %32, %31 ], !dbg !286
  store i8* null, i8** %25, align 8, !dbg !285, !tbaa !280
  br label %35, !dbg !285

; <label>:35:                                     ; preds = %24, %33
  %36 = phi i16 [ %12, %24 ], [ %34, %33 ], !dbg !286
  %37 = and i16 %36, -37, !dbg !286
  store i16 %37, i16* %11, align 8, !dbg !286, !tbaa !254
  %38 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !287
  store i32 0, i32* %38, align 8, !dbg !288, !tbaa !289
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !290
  %40 = bitcast i8** %39 to i64*, !dbg !290
  %41 = load i64, i64* %40, align 8, !dbg !290, !tbaa !291
  %42 = bitcast %struct.__sFILE* %1 to i64*, !dbg !292
  store i64 %41, i64* %42, align 8, !dbg !292, !tbaa !293
  br label %43, !dbg !294

; <label>:43:                                     ; preds = %21, %35
  %44 = phi i16 [ %12, %21 ], [ %37, %35 ], !dbg !295
  %45 = or i16 %44, 8, !dbg !295
  store i16 %45, i16* %11, align 8, !dbg !295, !tbaa !254
  br label %46, !dbg !296

; <label>:46:                                     ; preds = %43, %10
  %47 = phi i16 [ %45, %43 ], [ %12, %10 ]
  %48 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !297
  %49 = load i8*, i8** %48, align 8, !dbg !297, !tbaa !291
  %50 = icmp ne i8* %49, null, !dbg !299
  %51 = and i16 %47, 640, !dbg !300
  %52 = icmp eq i16 %51, 512, !dbg !300
  %53 = or i1 %50, %52, !dbg !301
  br i1 %53, label %56, label %54, !dbg !301

; <label>:54:                                     ; preds = %46
  tail call void @__smakebuf_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !302
  %55 = load i16, i16* %11, align 8, !dbg !303, !tbaa !254
  br label %56, !dbg !302

; <label>:56:                                     ; preds = %46, %54
  %57 = phi i16 [ %55, %54 ], [ %47, %46 ], !dbg !303
  %58 = sext i16 %57 to i32, !dbg !305
  %59 = and i32 %58, 1, !dbg !306
  %60 = icmp eq i32 %59, 0, !dbg !306
  br i1 %60, label %67, label %61, !dbg !307

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !308
  store i32 0, i32* %62, align 4, !dbg !310, !tbaa !311
  %63 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !312
  %64 = load i32, i32* %63, align 8, !dbg !312, !tbaa !313
  %65 = sub nsw i32 0, %64, !dbg !314
  %66 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 6, !dbg !315
  store i32 %65, i32* %66, align 8, !dbg !316, !tbaa !317
  br label %76, !dbg !318

; <label>:67:                                     ; preds = %56
  %68 = and i32 %58, 2, !dbg !319
  %69 = icmp eq i32 %68, 0, !dbg !319
  br i1 %69, label %70, label %73, !dbg !320

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !321
  %72 = load i32, i32* %71, align 8, !dbg !321, !tbaa !313
  br label %73, !dbg !320

; <label>:73:                                     ; preds = %67, %70
  %74 = phi i32 [ %72, %70 ], [ 0, %67 ], !dbg !320
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !322
  store i32 %74, i32* %75, align 4, !dbg !323, !tbaa !311
  br label %76

; <label>:76:                                     ; preds = %73, %61
  %77 = load i8*, i8** %48, align 8, !dbg !324, !tbaa !291
  %78 = icmp eq i8* %77, null, !dbg !326
  %79 = trunc i16 %57 to i8, !dbg !327
  %80 = icmp slt i8 %79, 0, !dbg !327
  %81 = and i1 %80, %78, !dbg !328
  br i1 %81, label %82, label %85, !dbg !328

; <label>:82:                                     ; preds = %76, %19
  %83 = phi i16 [ %12, %19 ], [ %57, %76 ]
  %84 = or i16 %83, 64, !dbg !329
  store i16 %84, i16* %11, align 8, !dbg !329, !tbaa !254
  br label %85, !dbg !330

; <label>:85:                                     ; preds = %82, %76
  %86 = phi i32 [ 0, %76 ], [ -1, %82 ], !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  ret i32 %86, !dbg !330
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__smakebuf_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wsetup.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "__swsetup_r", scope: !1, file: !1, line: 33, type: !12, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !231}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !17, line: 569, size: 14912, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !20, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !16, file: !17, line: 571, baseType: !14, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !17, line: 287, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !17, line: 181, size: 1408, elements: !24)
!24 = !{!25, !28, !29, !30, !32, !33, !38, !39, !40, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !23, file: !17, line: 182, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !23, file: !17, line: 183, baseType: !14, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !23, file: !17, line: 184, baseType: !14, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !23, file: !17, line: 185, baseType: !31, size: 16, offset: 128)
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !23, file: !17, line: 186, baseType: !31, size: 16, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !23, file: !17, line: 187, baseType: !34, size: 128, offset: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !17, line: 117, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !34, file: !17, line: 118, baseType: !26, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !34, file: !17, line: 119, baseType: !14, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !23, file: !17, line: 188, baseType: !14, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !23, file: !17, line: 195, baseType: !4, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !23, file: !17, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !15, !4, !5, !14}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !23, file: !17, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!44, !15, !4, !51, !14}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !23, file: !17, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !15, !4, !57, !14}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !23, file: !17, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!14, !15, !4}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !23, file: !17, line: 206, baseType: !34, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !23, file: !17, line: 207, baseType: !26, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !23, file: !17, line: 208, baseType: !14, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !23, file: !17, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !23, file: !17, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !23, file: !17, line: 215, baseType: !34, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !23, file: !17, line: 218, baseType: !14, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !23, file: !17, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !23, file: !17, line: 222, baseType: !15, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !23, file: !17, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !14)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !23, file: !17, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !45, line: 165, baseType: !14, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !45, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !45, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !45, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !45, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !23, file: !17, line: 229, baseType: !14, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !16, file: !17, line: 578, baseType: !14, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !16, file: !17, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !16, file: !17, line: 582, baseType: !14, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !16, file: !17, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !17, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !16, file: !17, line: 585, baseType: !14, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !16, file: !17, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !15}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !16, file: !17, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !17, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !17, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !17, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !17, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !16, file: !17, line: 591, baseType: !14, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !16, file: !17, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !16, file: !17, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !16, file: !17, line: 596, baseType: !14, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !16, file: !17, line: 597, baseType: !5, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !16, file: !17, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !17, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !17, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !17, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !17, line: 604, baseType: !5, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !17, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !17, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !17, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !17, line: 57, baseType: !14, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !17, line: 58, baseType: !14, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !17, line: 59, baseType: !14, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !17, line: 60, baseType: !14, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !17, line: 61, baseType: !14, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !17, line: 62, baseType: !14, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !17, line: 63, baseType: !14, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !17, line: 64, baseType: !14, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !17, line: 65, baseType: !14, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !17, line: 607, baseType: !14, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !137, file: !17, line: 608, baseType: !159, size: 64, offset: 704)
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !137, file: !17, line: 609, baseType: !161, size: 112, offset: 768)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !17, line: 319, size: 112, elements: !162)
!162 = !{!163, !166, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !161, file: !17, line: 320, baseType: !164, size: 48)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !67)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !161, file: !17, line: 321, baseType: !164, size: 48, offset: 48)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !161, file: !17, line: 322, baseType: !165, size: 16, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !137, file: !17, line: 610, baseType: !83, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !137, file: !17, line: 611, baseType: !83, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !137, file: !17, line: 612, baseType: !83, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !137, file: !17, line: 613, baseType: !172, size: 64, offset: 1088)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !17, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !17, line: 615, baseType: !14, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !17, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !17, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !17, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !17, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !17, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !17, line: 621, baseType: !14, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !17, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !17, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !17, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !17, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !16, file: !17, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !17, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !17, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !17, line: 95, baseType: !14, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !197, file: !17, line: 97, baseType: !202, size: 2048, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2048, elements: !206)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !{!207}
!207 = !DISubrange(count: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !197, file: !17, line: 98, baseType: !209, size: 4160, offset: 2176)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !17, line: 74, size: 4160, elements: !210)
!210 = !{!211, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !209, file: !17, line: 75, baseType: !212, size: 2048)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !17, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !17, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !17, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !16, file: !17, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !16, file: !17, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !14}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !16, file: !17, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !17, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !17, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !17, line: 294, baseType: !14, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !17, line: 295, baseType: !21, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !16, file: !17, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 66, baseType: !22)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !{!235, !236, !237}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !11, file: !1, line: 33, type: !15)
!236 = !DILocalVariable(name: "fp", arg: 2, scope: !11, file: !1, line: 33, type: !231)
!237 = !DILocalVariable(name: "_check_init_ptr", scope: !238, file: !1, line: 39, type: !15)
!238 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 3)
!239 = !DILocation(line: 33, column: 1, scope: !11)
!240 = !DILocation(line: 39, column: 3, scope: !238)
!241 = !DILocation(line: 39, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 39, column: 3)
!243 = !{!244, !245, i64 80}
!244 = !{!"_reent", !245, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !245, i64 32, !246, i64 36, !245, i64 64, !248, i64 72, !245, i64 80, !248, i64 88, !248, i64 96, !245, i64 104, !248, i64 112, !248, i64 120, !245, i64 128, !248, i64 136, !246, i64 144, !248, i64 504, !249, i64 512, !248, i64 1304, !251, i64 1312, !246, i64 1336}
!245 = !{!"int", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"any pointer", !246, i64 0}
!249 = !{!"_atexit", !248, i64 0, !245, i64 8, !246, i64 16, !250, i64 272}
!250 = !{!"_on_exit_args", !246, i64 0, !246, i64 256, !245, i64 512, !245, i64 516}
!251 = !{!"_glue", !248, i64 0, !245, i64 8, !248, i64 16}
!252 = !DILocation(line: 45, column: 12, scope: !253)
!253 = distinct !DILexicalBlock(scope: !11, file: !1, line: 45, column: 7)
!254 = !{!255, !256, i64 16}
!255 = !{!"__sFILE", !248, i64 0, !245, i64 8, !245, i64 12, !256, i64 16, !256, i64 18, !257, i64 24, !245, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !257, i64 88, !248, i64 104, !245, i64 112, !246, i64 116, !246, i64 119, !257, i64 120, !245, i64 136, !258, i64 144, !248, i64 152, !245, i64 160, !259, i64 164, !245, i64 172}
!256 = !{!"short", !246, i64 0}
!257 = !{!"__sbuf", !248, i64 0, !245, i64 8}
!258 = !{!"long", !246, i64 0}
!259 = !{!"", !245, i64 0, !246, i64 4}
!260 = !DILocation(line: 45, column: 8, scope: !253)
!261 = !DILocation(line: 45, column: 19, scope: !253)
!262 = !DILocation(line: 45, column: 28, scope: !253)
!263 = !DILocation(line: 45, column: 7, scope: !11)
!264 = !DILocation(line: 47, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 47, column: 11)
!266 = distinct !DILexicalBlock(scope: !253, file: !1, line: 46, column: 5)
!267 = !DILocation(line: 47, column: 32, scope: !265)
!268 = !DILocation(line: 47, column: 11, scope: !266)
!269 = !DILocation(line: 49, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !1, line: 48, column: 9)
!271 = !DILocation(line: 49, column: 16, scope: !270)
!272 = !{!244, !245, i64 0}
!273 = !DILocation(line: 51, column: 4, scope: !270)
!274 = !DILocation(line: 53, column: 22, scope: !275)
!275 = distinct !DILexicalBlock(scope: !266, file: !1, line: 53, column: 11)
!276 = !DILocation(line: 53, column: 11, scope: !266)
!277 = !DILocation(line: 56, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 56, column: 8)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 54, column: 2)
!280 = !{!255, !248, i64 88}
!281 = !DILocation(line: 56, column: 8, scope: !279)
!282 = !DILocation(line: 57, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 57, column: 6)
!284 = distinct !DILexicalBlock(scope: !278, file: !1, line: 57, column: 6)
!285 = !DILocation(line: 57, column: 6, scope: !284)
!286 = !DILocation(line: 58, column: 15, scope: !279)
!287 = !DILocation(line: 59, column: 8, scope: !279)
!288 = !DILocation(line: 59, column: 11, scope: !279)
!289 = !{!255, !245, i64 8}
!290 = !DILocation(line: 60, column: 21, scope: !279)
!291 = !{!255, !248, i64 24}
!292 = !DILocation(line: 60, column: 11, scope: !279)
!293 = !{!255, !248, i64 0}
!294 = !DILocation(line: 61, column: 2, scope: !279)
!295 = !DILocation(line: 62, column: 18, scope: !266)
!296 = !DILocation(line: 63, column: 5, scope: !266)
!297 = !DILocation(line: 70, column: 15, scope: !298)
!298 = distinct !DILexicalBlock(scope: !11, file: !1, line: 70, column: 7)
!299 = !DILocation(line: 70, column: 21, scope: !298)
!300 = !DILocation(line: 71, column: 36, scope: !298)
!301 = !DILocation(line: 71, column: 9, scope: !298)
!302 = !DILocation(line: 72, column: 5, scope: !298)
!303 = !DILocation(line: 74, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !11, file: !1, line: 74, column: 7)
!305 = !DILocation(line: 74, column: 7, scope: !304)
!306 = !DILocation(line: 74, column: 18, scope: !304)
!307 = !DILocation(line: 74, column: 7, scope: !11)
!308 = !DILocation(line: 81, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !1, line: 75, column: 5)
!310 = !DILocation(line: 81, column: 14, scope: !309)
!311 = !{!255, !245, i64 12}
!312 = !DILocation(line: 82, column: 31, scope: !309)
!313 = !{!255, !245, i64 32}
!314 = !DILocation(line: 82, column: 22, scope: !309)
!315 = !DILocation(line: 82, column: 11, scope: !309)
!316 = !DILocation(line: 82, column: 20, scope: !309)
!317 = !{!255, !245, i64 40}
!318 = !DILocation(line: 83, column: 5, scope: !309)
!319 = !DILocation(line: 85, column: 25, scope: !304)
!320 = !DILocation(line: 85, column: 14, scope: !304)
!321 = !DILocation(line: 85, column: 48, scope: !304)
!322 = !DILocation(line: 85, column: 9, scope: !304)
!323 = !DILocation(line: 85, column: 12, scope: !304)
!324 = !DILocation(line: 87, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !11, file: !1, line: 87, column: 7)
!326 = !DILocation(line: 87, column: 8, scope: !325)
!327 = !DILocation(line: 87, column: 37, scope: !325)
!328 = !DILocation(line: 87, column: 22, scope: !325)
!329 = !DILocation(line: 0, scope: !270)
!330 = !DILocation(line: 94, column: 1, scope: !11)
!331 = !DILocation(line: 0, scope: !332)
!332 = distinct !DILexicalBlock(scope: !325, file: !1, line: 88, column: 5)
