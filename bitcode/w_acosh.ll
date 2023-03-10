; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @acosh(double) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !34
  %4 = tail call double @__ieee754_acosh(double %0) #5, !dbg !35
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !37, !tbaa !39
  %6 = icmp eq i32 %5, -1, !dbg !42
  br i1 %6, label %37, label %7, !dbg !43

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !44
  %9 = icmp ne i32 %8, 0, !dbg !44
  %10 = fcmp olt double %0, 1.000000e+00, !dbg !45
  %11 = and i1 %10, %9, !dbg !47
  br i1 %11, label %12, label %37, !dbg !47

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !48
  store i32 1, i32* %13, align 8, !dbg !50, !tbaa !51
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !56
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !57, !tbaa !58
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !59
  store i32 0, i32* %15, align 8, !dbg !60, !tbaa !61
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !62
  store double %0, double* %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !65
  store double %0, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !68
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !69, !tbaa !70
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !71, !tbaa !39
  %20 = icmp eq i32 %19, 2, !dbg !73
  br i1 %20, label %21, label %23, !dbg !74

; <label>:21:                                     ; preds = %12
  %22 = tail call i32* @__errno() #5, !dbg !75
  br label %28, !dbg !75

; <label>:23:                                     ; preds = %12
  %24 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !77
  %25 = icmp eq i32 %24, 0, !dbg !77
  br i1 %25, label %26, label %30, !dbg !79

; <label>:26:                                     ; preds = %23
  %27 = call i32* @__errno() #5, !dbg !80
  br label %28, !dbg !82

; <label>:28:                                     ; preds = %21, %26
  %29 = phi i32* [ %27, %26 ], [ %22, %21 ]
  store i32 33, i32* %29, align 4, !dbg !83, !tbaa !84
  br label %30, !dbg !85

; <label>:30:                                     ; preds = %28, %23
  %31 = load i32, i32* %15, align 8, !dbg !85, !tbaa !61
  %32 = icmp eq i32 %31, 0, !dbg !87
  br i1 %32, label %35, label %33, !dbg !88

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno() #5, !dbg !89
  store i32 %31, i32* %34, align 4, !dbg !90, !tbaa !84
  br label %35, !dbg !89

; <label>:35:                                     ; preds = %30, %33
  %36 = load double, double* %18, align 8, !dbg !91, !tbaa !70
  br label %37, !dbg !92

; <label>:37:                                     ; preds = %7, %1, %35
  %38 = phi double [ %36, %35 ], [ %4, %7 ], [ %4, %1 ], !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  ret double %38, !dbg !94
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_acosh(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_acosh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "acosh", scope: !1, file: !1, line: 90, type: !16, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 90, type: !18)
!21 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 99, type: !18)
!22 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 100, type: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !24)
!24 = !{!25, !26, !29, !30, !31, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !4, line: 581, baseType: !5, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !4, line: 582, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !23, file: !4, line: 583, baseType: !18, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !23, file: !4, line: 584, baseType: !18, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !23, file: !4, line: 585, baseType: !18, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !23, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!33 = !DILocation(line: 90, column: 22, scope: !15)
!34 = !DILocation(line: 100, column: 2, scope: !15)
!35 = !DILocation(line: 101, column: 6, scope: !15)
!36 = !DILocation(line: 99, column: 9, scope: !15)
!37 = !DILocation(line: 102, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !1, line: 102, column: 5)
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 102, column: 18, scope: !38)
!43 = !DILocation(line: 102, column: 28, scope: !38)
!44 = !DILocation(line: 102, column: 31, scope: !38)
!45 = !DILocation(line: 103, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !15, file: !1, line: 103, column: 5)
!47 = !DILocation(line: 102, column: 5, scope: !15)
!48 = !DILocation(line: 105, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 103, column: 12)
!50 = !DILocation(line: 105, column: 22, scope: !49)
!51 = !{!52, !53, i64 0}
!52 = !{!"exception", !53, i64 0, !54, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !53, i64 40}
!53 = !{!"int", !40, i64 0}
!54 = !{!"any pointer", !40, i64 0}
!55 = !{!"double", !40, i64 0}
!56 = !DILocation(line: 106, column: 17, scope: !49)
!57 = !DILocation(line: 106, column: 22, scope: !49)
!58 = !{!52, !54, i64 8}
!59 = !DILocation(line: 107, column: 10, scope: !49)
!60 = !DILocation(line: 107, column: 14, scope: !49)
!61 = !{!52, !53, i64 40}
!62 = !DILocation(line: 108, column: 21, scope: !49)
!63 = !DILocation(line: 108, column: 26, scope: !49)
!64 = !{!52, !55, i64 24}
!65 = !DILocation(line: 108, column: 10, scope: !49)
!66 = !DILocation(line: 108, column: 15, scope: !49)
!67 = !{!52, !55, i64 16}
!68 = !DILocation(line: 109, column: 17, scope: !49)
!69 = !DILocation(line: 109, column: 24, scope: !49)
!70 = !{!52, !55, i64 32}
!71 = !DILocation(line: 110, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !49, file: !1, line: 110, column: 17)
!73 = !DILocation(line: 110, column: 30, scope: !72)
!74 = !DILocation(line: 110, column: 17, scope: !49)
!75 = !DILocation(line: 111, column: 16, scope: !72)
!76 = !DILocation(line: 100, column: 19, scope: !15)
!77 = !DILocation(line: 112, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 112, column: 22)
!79 = !DILocation(line: 112, column: 22, scope: !72)
!80 = !DILocation(line: 113, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 112, column: 38)
!82 = !DILocation(line: 114, column: 13, scope: !81)
!83 = !DILocation(line: 0, scope: !72)
!84 = !{!53, !53, i64 0}
!85 = !DILocation(line: 115, column: 14, scope: !86)
!86 = distinct !DILexicalBlock(scope: !49, file: !1, line: 115, column: 10)
!87 = !DILocation(line: 115, column: 18, scope: !86)
!88 = !DILocation(line: 115, column: 10, scope: !49)
!89 = !DILocation(line: 116, column: 9, scope: !86)
!90 = !DILocation(line: 116, column: 15, scope: !86)
!91 = !DILocation(line: 117, column: 17, scope: !49)
!92 = !DILocation(line: 117, column: 6, scope: !49)
!93 = !DILocation(line: 0, scope: !46)
!94 = !DILocation(line: 121, column: 1, scope: !15)
