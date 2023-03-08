; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtold.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtold.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@map = internal unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 2, i32 0], align 16, !dbg !0
@__global_locale = external dso_local global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__flt_rounds() local_unnamed_addr #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4, !dbg !20
  call void asm "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1) #4, !dbg !22, !srcloc !23
  %3 = load i32, i32* %1, align 4, !dbg !24, !tbaa !25
  %4 = lshr i32 %3, 10, !dbg !29
  %5 = and i32 %4, 3, !dbg !30
  %6 = zext i32 %5 to i64, !dbg !31
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* @map, i64 0, i64 %6, !dbg !31
  %8 = load i32, i32* %7, align 4, !dbg !31, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  ret i32 %8, !dbg !33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local x86_fp80 @_strtold_r(%struct._reent*, i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !34 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !325
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !330
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !330, !tbaa !331
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !325
  br i1 %7, label %8, label %9, !dbg !325

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br label %9, !dbg !325

; <label>:9:                                      ; preds = %3, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %3 ], !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  %11 = tail call double @_strtod_l(%struct._reent* %0, i8* %1, i8** %2, %struct.__locale_t* nonnull %10) #5, !dbg !341
  %12 = fpext double %11 to x86_fp80, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  ret x86_fp80 %12, !dbg !342
}

; Function Attrs: noredzone
declare dso_local double @_strtod_l(%struct._reent*, i8*, i8**, %struct.__locale_t*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local x86_fp80 @strtold_l(i8* noalias, i8** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !343 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !355
  %5 = tail call double @_strtod_l(%struct._reent* %4, i8* %0, i8** %1, %struct.__locale_t* %2) #5, !dbg !356
  %6 = fpext double %5 to x86_fp80, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  ret x86_fp80 %6, !dbg !357
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local x86_fp80 @strtold(i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !358 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !366
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !367
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !369
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !369, !tbaa !331
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !367
  br i1 %7, label %8, label %9, !dbg !367

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %9, !dbg !367

; <label>:9:                                      ; preds = %2, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %2 ], !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %11 = tail call double @_strtod_l(%struct._reent* %3, i8* %0, i8** %1, %struct.__locale_t* nonnull %10) #5, !dbg !373
  %12 = fpext double %11 to x86_fp80, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  ret x86_fp80 %12, !dbg !374
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "map", scope: !2, file: !3, line: 40, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtold.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DISubrange(count: 4)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "__flt_rounds", scope: !3, file: !3, line: 48, type: !16, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!8}
!18 = !{!19}
!19 = !DILocalVariable(name: "x", scope: !15, file: !3, line: 50, type: !8)
!20 = !DILocation(line: 50, column: 9, scope: !15)
!21 = !DILocation(line: 50, column: 13, scope: !15)
!22 = !DILocation(line: 53, column: 9, scope: !15)
!23 = !{i32 2027}
!24 = !DILocation(line: 54, column: 22, scope: !15)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 54, column: 24, scope: !15)
!30 = !DILocation(line: 54, column: 31, scope: !15)
!31 = !DILocation(line: 54, column: 17, scope: !15)
!32 = !DILocation(line: 55, column: 1, scope: !15)
!33 = !DILocation(line: 54, column: 9, scope: !15)
!34 = distinct !DISubprogram(name: "_strtold_r", scope: !3, file: !3, line: 62, type: !35, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !318)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !38, !315, !316}
!37 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !40, line: 569, size: 14912, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !43, !123, !124, !125, !126, !130, !131, !196, !197, !201, !213, !214, !215, !217, !218, !219, !281, !300, !301, !306, !313}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !39, file: !40, line: 571, baseType: !8, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !39, file: !40, line: 576, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !40, line: 287, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !40, line: 181, size: 1408, elements: !47)
!47 = !{!48, !51, !52, !53, !55, !56, !61, !62, !64, !73, !79, !84, !88, !89, !90, !91, !95, !99, !100, !101, !103, !104, !108, !122}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !46, file: !40, line: 182, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !46, file: !40, line: 183, baseType: !8, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !46, file: !40, line: 184, baseType: !8, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !40, line: 185, baseType: !54, size: 16, offset: 128)
!54 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !46, file: !40, line: 186, baseType: !54, size: 16, offset: 144)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !46, file: !40, line: 187, baseType: !57, size: 128, offset: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !40, line: 117, size: 128, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !57, file: !40, line: 118, baseType: !49, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !57, file: !40, line: 119, baseType: !8, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !46, file: !40, line: 188, baseType: !8, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !46, file: !40, line: 195, baseType: !63, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !46, file: !40, line: 197, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !38, !63, !71, !8}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !69, line: 145, baseType: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !46, file: !40, line: 199, baseType: !74, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!68, !38, !63, !77, !8}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !46, file: !40, line: 202, baseType: !80, size: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !38, !63, !83, !8}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !69, line: 114, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !46, file: !40, line: 203, baseType: !85, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!8, !38, !63}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !46, file: !40, line: 206, baseType: !57, size: 128, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !46, file: !40, line: 207, baseType: !49, size: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !46, file: !40, line: 208, baseType: !8, size: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !46, file: !40, line: 211, baseType: !92, size: 24, offset: 928)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 24, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !46, file: !40, line: 212, baseType: !96, size: 8, offset: 952)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !46, file: !40, line: 215, baseType: !57, size: 128, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !46, file: !40, line: 218, baseType: !8, size: 32, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !40, line: 219, baseType: !102, size: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !69, line: 44, baseType: !70)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !46, file: !40, line: 222, baseType: !38, size: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !40, line: 226, baseType: !105, size: 32, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !69, line: 175, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !107, line: 12, baseType: !8)
!107 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !46, file: !40, line: 228, baseType: !109, size: 64, offset: 1312)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !69, line: 171, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 163, size: 64, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !110, file: !69, line: 165, baseType: !8, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !110, file: !69, line: 170, baseType: !114, size: 32, offset: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !69, line: 166, size: 32, elements: !115)
!115 = !{!116, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !114, file: !69, line: 168, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !118, line: 124, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!119 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !114, file: !69, line: 169, baseType: !121, size: 32)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !9)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !40, line: 229, baseType: !8, size: 32, offset: 1376)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !39, file: !40, line: 576, baseType: !44, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !39, file: !40, line: 576, baseType: !44, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !39, file: !40, line: 578, baseType: !8, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !39, file: !40, line: 579, baseType: !127, size: 200, offset: 288)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 200, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 25)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !39, file: !40, line: 582, baseType: !8, size: 32, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !39, file: !40, line: 583, baseType: !132, size: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !134, line: 178, size: 3392, elements: !135)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !{!136, !141, !149, !158, !159, !160, !188, !192, !195}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !133, file: !134, line: 180, baseType: !137, size: 1792)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1792, elements: !138)
!138 = !{!139, !140}
!139 = !DISubrange(count: 7)
!140 = !DISubrange(count: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !133, file: !134, line: 181, baseType: !142, size: 64, offset: 1792)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!8, !38, !71, !145, !146}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !118, line: 83, baseType: !8)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !148, line: 86, baseType: !109)
!148 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !133, file: !134, line: 183, baseType: !150, size: 64, offset: 1856)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!8, !38, !153, !77, !154, !146}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 40, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !69, line: 129, baseType: !157)
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !133, file: !134, line: 185, baseType: !8, size: 32, offset: 1920)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !133, file: !134, line: 186, baseType: !71, size: 64, offset: 1984)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !133, file: !134, line: 187, baseType: !161, size: 768, offset: 2048)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !162, line: 42, size: 768, elements: !163)
!162 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !161, file: !162, line: 44, baseType: !71, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !161, file: !162, line: 45, baseType: !71, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !161, file: !162, line: 46, baseType: !71, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !161, file: !162, line: 47, baseType: !71, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !161, file: !162, line: 48, baseType: !71, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !161, file: !162, line: 49, baseType: !71, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !161, file: !162, line: 50, baseType: !71, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !161, file: !162, line: 51, baseType: !71, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !161, file: !162, line: 52, baseType: !71, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !161, file: !162, line: 53, baseType: !71, size: 64, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !161, file: !162, line: 54, baseType: !72, size: 8, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !161, file: !162, line: 55, baseType: !72, size: 8, offset: 648)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !161, file: !162, line: 56, baseType: !72, size: 8, offset: 656)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !161, file: !162, line: 57, baseType: !72, size: 8, offset: 664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !161, file: !162, line: 58, baseType: !72, size: 8, offset: 672)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !161, file: !162, line: 59, baseType: !72, size: 8, offset: 680)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !161, file: !162, line: 60, baseType: !72, size: 8, offset: 688)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !161, file: !162, line: 61, baseType: !72, size: 8, offset: 696)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !161, file: !162, line: 62, baseType: !72, size: 8, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !161, file: !162, line: 63, baseType: !72, size: 8, offset: 712)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !161, file: !162, line: 64, baseType: !72, size: 8, offset: 720)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !161, file: !162, line: 65, baseType: !72, size: 8, offset: 728)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !161, file: !162, line: 66, baseType: !72, size: 8, offset: 736)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !161, file: !162, line: 67, baseType: !72, size: 8, offset: 744)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !133, file: !134, line: 189, baseType: !189, size: 16, offset: 2816)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 16, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !133, file: !134, line: 190, baseType: !193, size: 256, offset: 2832)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !194)
!194 = !{!140}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !133, file: !134, line: 191, baseType: !193, size: 256, offset: 3088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !39, file: !40, line: 585, baseType: !8, size: 32, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !39, file: !40, line: 587, baseType: !198, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !38}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !39, file: !40, line: 590, baseType: !202, size: 64, offset: 768)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !40, line: 47, size: 256, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !203, file: !40, line: 49, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !203, file: !40, line: 50, baseType: !8, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !203, file: !40, line: 50, baseType: !8, size: 32, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !203, file: !40, line: 50, baseType: !8, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !203, file: !40, line: 50, baseType: !8, size: 32, offset: 160)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !203, file: !40, line: 51, baseType: !211, size: 32, offset: 192)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 32, elements: !97)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !40, line: 25, baseType: !119)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !39, file: !40, line: 591, baseType: !8, size: 32, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !39, file: !40, line: 592, baseType: !202, size: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !39, file: !40, line: 593, baseType: !216, size: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !39, file: !40, line: 596, baseType: !8, size: 32, offset: 1024)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !39, file: !40, line: 597, baseType: !71, size: 64, offset: 1088)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !39, file: !40, line: 632, baseType: !220, size: 2880, offset: 1152)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !40, line: 599, size: 2880, elements: !221)
!221 = !{!222, !272}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !220, file: !40, line: 622, baseType: !223, size: 1728)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !40, line: 601, size: 1728, elements: !224)
!224 = !{!225, !226, !227, !231, !243, !244, !246, !254, !255, !256, !257, !261, !265, !266, !267, !268, !269, !270, !271}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !223, file: !40, line: 603, baseType: !119, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !223, file: !40, line: 604, baseType: !71, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !223, file: !40, line: 605, baseType: !228, size: 208, offset: 128)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 208, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 26)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !223, file: !40, line: 606, baseType: !232, size: 288, offset: 352)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !40, line: 55, size: 288, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !232, file: !40, line: 57, baseType: !8, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !232, file: !40, line: 58, baseType: !8, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !232, file: !40, line: 59, baseType: !8, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !232, file: !40, line: 60, baseType: !8, size: 32, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !232, file: !40, line: 61, baseType: !8, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !232, file: !40, line: 62, baseType: !8, size: 32, offset: 160)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !232, file: !40, line: 63, baseType: !8, size: 32, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !232, file: !40, line: 64, baseType: !8, size: 32, offset: 224)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !232, file: !40, line: 65, baseType: !8, size: 32, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !223, file: !40, line: 607, baseType: !8, size: 32, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !223, file: !40, line: 608, baseType: !245, size: 64, offset: 704)
!245 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !223, file: !40, line: 609, baseType: !247, size: 112, offset: 768)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !40, line: 319, size: 112, elements: !248)
!248 = !{!249, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !247, file: !40, line: 320, baseType: !250, size: 48)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 48, elements: !93)
!251 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !247, file: !40, line: 321, baseType: !250, size: 48, offset: 48)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !247, file: !40, line: 322, baseType: !251, size: 16, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !223, file: !40, line: 610, baseType: !109, size: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !223, file: !40, line: 611, baseType: !109, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !223, file: !40, line: 612, baseType: !109, size: 64, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !223, file: !40, line: 613, baseType: !258, size: 64, offset: 1088)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !223, file: !40, line: 614, baseType: !262, size: 192, offset: 1152)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 24)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !223, file: !40, line: 615, baseType: !8, size: 32, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !223, file: !40, line: 616, baseType: !109, size: 64, offset: 1376)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !223, file: !40, line: 617, baseType: !109, size: 64, offset: 1440)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !223, file: !40, line: 618, baseType: !109, size: 64, offset: 1504)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !223, file: !40, line: 619, baseType: !109, size: 64, offset: 1568)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !223, file: !40, line: 620, baseType: !109, size: 64, offset: 1632)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !223, file: !40, line: 621, baseType: !8, size: 32, offset: 1696)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !220, file: !40, line: 631, baseType: !273, size: 2880)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !40, line: 626, size: 2880, elements: !274)
!274 = !{!275, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !273, file: !40, line: 629, baseType: !276, size: 1920)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1920, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 30)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !273, file: !40, line: 630, baseType: !280, size: 960, offset: 1920)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 960, elements: !277)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !39, file: !40, line: 636, baseType: !282, size: 64, offset: 4032)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !40, line: 93, size: 6336, elements: !284)
!284 = !{!285, !286, !287, !292}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !283, file: !40, line: 94, baseType: !282, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !283, file: !40, line: 95, baseType: !8, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !283, file: !40, line: 97, baseType: !288, size: 2048, offset: 128)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 2048, elements: !194)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !283, file: !40, line: 98, baseType: !293, size: 4160, offset: 2176)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !40, line: 74, size: 4160, elements: !294)
!294 = !{!295, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !293, file: !40, line: 75, baseType: !296, size: 2048)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2048, elements: !194)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !293, file: !40, line: 76, baseType: !296, size: 2048, offset: 2048)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !293, file: !40, line: 78, baseType: !212, size: 32, offset: 4096)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !293, file: !40, line: 81, baseType: !212, size: 32, offset: 4128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !39, file: !40, line: 637, baseType: !283, size: 6336, offset: 4096)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !39, file: !40, line: 641, baseType: !302, size: 64, offset: 10432)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !8}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !39, file: !40, line: 646, baseType: !307, size: 192, offset: 10496)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !40, line: 291, size: 192, elements: !308)
!308 = !{!309, !311, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !307, file: !40, line: 293, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !307, file: !40, line: 294, baseType: !8, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !307, file: !40, line: 295, baseType: !44, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !39, file: !40, line: 648, baseType: !314, size: 4224, offset: 10688)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 4224, elements: !93)
!315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !3, line: 62, type: !38)
!320 = !DILocalVariable(name: "s00", arg: 2, scope: !34, file: !3, line: 62, type: !315)
!321 = !DILocalVariable(name: "se", arg: 3, scope: !34, file: !3, line: 63, type: !316)
!322 = !DILocation(line: 62, column: 28, scope: !34)
!323 = !DILocation(line: 62, column: 56, scope: !34)
!324 = !DILocation(line: 63, column: 24, scope: !34)
!325 = !DILocation(line: 230, column: 10, scope: !326, inlinedAt: !329)
!326 = distinct !DISubprogram(name: "__get_current_locale", scope: !134, file: !134, line: 228, type: !327, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{!132}
!329 = distinct !DILocation(line: 67, column: 35, scope: !34)
!330 = !DILocation(line: 230, column: 18, scope: !326, inlinedAt: !329)
!331 = !{!332, !333, i64 72}
!332 = !{!"_reent", !26, i64 0, !333, i64 8, !333, i64 16, !333, i64 24, !26, i64 32, !27, i64 36, !26, i64 64, !333, i64 72, !26, i64 80, !333, i64 88, !333, i64 96, !26, i64 104, !333, i64 112, !333, i64 120, !26, i64 128, !333, i64 136, !27, i64 144, !333, i64 504, !334, i64 512, !333, i64 1304, !336, i64 1312, !27, i64 1336}
!333 = !{!"any pointer", !27, i64 0}
!334 = !{!"_atexit", !333, i64 0, !26, i64 8, !27, i64 16, !335, i64 272}
!335 = !{!"_on_exit_args", !27, i64 0, !27, i64 256, !26, i64 512, !26, i64 516}
!336 = !{!"_glue", !333, i64 0, !26, i64 8, !333, i64 16}
!337 = !DILocation(line: 213, column: 3, scope: !338, inlinedAt: !339)
!338 = distinct !DISubprogram(name: "__get_global_locale", scope: !134, file: !134, line: 210, type: !327, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !2, retainedNodes: !4)
!339 = distinct !DILocation(line: 230, column: 29, scope: !326, inlinedAt: !329)
!340 = !DILocation(line: 230, column: 3, scope: !326, inlinedAt: !329)
!341 = !DILocation(line: 67, column: 10, scope: !34)
!342 = !DILocation(line: 67, column: 3, scope: !34)
!343 = distinct !DISubprogram(name: "strtold_l", scope: !3, file: !3, line: 77, type: !344, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !348)
!344 = !DISubroutineType(types: !345)
!345 = !{!37, !315, !316, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !347, line: 10, baseType: !132)
!347 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!348 = !{!349, !350, !351}
!349 = !DILocalVariable(name: "s00", arg: 1, scope: !343, file: !3, line: 77, type: !315)
!350 = !DILocalVariable(name: "se", arg: 2, scope: !343, file: !3, line: 77, type: !316)
!351 = !DILocalVariable(name: "loc", arg: 3, scope: !343, file: !3, line: 77, type: !346)
!352 = !DILocation(line: 77, column: 35, scope: !343)
!353 = !DILocation(line: 77, column: 58, scope: !343)
!354 = !DILocation(line: 77, column: 71, scope: !343)
!355 = !DILocation(line: 81, column: 21, scope: !343)
!356 = !DILocation(line: 81, column: 10, scope: !343)
!357 = !DILocation(line: 81, column: 3, scope: !343)
!358 = distinct !DISubprogram(name: "strtold", scope: !3, file: !3, line: 91, type: !359, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!37, !315, !316}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "s00", arg: 1, scope: !358, file: !3, line: 91, type: !315)
!363 = !DILocalVariable(name: "se", arg: 2, scope: !358, file: !3, line: 91, type: !316)
!364 = !DILocation(line: 91, column: 33, scope: !358)
!365 = !DILocation(line: 91, column: 56, scope: !358)
!366 = !DILocation(line: 95, column: 21, scope: !358)
!367 = !DILocation(line: 230, column: 10, scope: !326, inlinedAt: !368)
!368 = distinct !DILocation(line: 95, column: 38, scope: !358)
!369 = !DILocation(line: 230, column: 18, scope: !326, inlinedAt: !368)
!370 = !DILocation(line: 213, column: 3, scope: !338, inlinedAt: !371)
!371 = distinct !DILocation(line: 230, column: 29, scope: !326, inlinedAt: !368)
!372 = !DILocation(line: 230, column: 3, scope: !326, inlinedAt: !368)
!373 = !DILocation(line: 95, column: 10, scope: !358)
!374 = !DILocation(line: 95, column: 3, scope: !358)
