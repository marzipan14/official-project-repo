; ModuleID = '/root/.unikraft/libs/lwip/alloc.c'
source_filename = "/root/.unikraft/libs/lwip/alloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { {}*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, {}*, {}*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.2 = internal global [8 x i8] c"alloc.c\00", section ".data_shared", align 1, !dbg !23
@_uk_alloc_head = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@flexos_comp1_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8

; Function Attrs: noredzone nounwind
define dso_local i8* @sys_malloc(i64) local_unnamed_addr #0 !dbg !47 {
  %2 = tail call fastcc %struct.uk_alloc* @uk_alloc_get_default() #8, !dbg !56
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !125
  br i1 %3, label %4, label %6, !dbg !127, !prof !128

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno() #9, !dbg !129
  store i32 12, i32* %5, align 4, !dbg !131, !tbaa !132
  br label %10, !dbg !136

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.uk_alloc* %2 to i8* (%struct.uk_alloc*, i64)**, !dbg !144
  %8 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %7, align 8, !dbg !144, !tbaa !145
  %9 = tail call i8* %8(%struct.uk_alloc* nonnull %2, i64 %0) #9, !dbg !147
  br label %10, !dbg !148

; <label>:10:                                     ; preds = %4, %6
  %11 = phi i8* [ null, %4 ], [ %9, %6 ], !dbg !149
  ret i8* %11, !dbg !150
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noinline noredzone nounwind optnone
define internal fastcc %struct.uk_alloc* @uk_alloc_get_default() unnamed_addr #2 !dbg !151 {
  %1 = alloca %struct.uk_alloc*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %2 to i8*, !dbg !158
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #7, !dbg !158
  %5 = call i32 asm sideeffect "xor %ecx, %ecx;rdpkru;movl %eax, $0", "=r,~{rax},~{rdx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !160, !srcloc !168
  store i32 %5, i32* %2, align 4, !dbg !159, !tbaa !132
  %6 = load i32, i32* %2, align 4, !dbg !170, !tbaa !132
  switch i32 %6, label %12 [
    i32 1073741820, label %7
    i32 1073741811, label %9
    i32 1073741823, label %11
  ], !dbg !171

; <label>:7:                                      ; preds = %0
  %8 = load %struct.uk_alloc*, %struct.uk_alloc** @_uk_alloc_head, align 8, !dbg !172, !tbaa !145
  store %struct.uk_alloc* %8, %struct.uk_alloc** %1, align 8, !dbg !174
  store i32 1, i32* %3, align 4
  br label %14, !dbg !174

; <label>:9:                                      ; preds = %0
  %10 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_comp1_alloc, align 8, !dbg !175, !tbaa !145
  store %struct.uk_alloc* %10, %struct.uk_alloc** %1, align 8, !dbg !176
  store i32 1, i32* %3, align 4
  br label %14, !dbg !176

; <label>:11:                                     ; preds = %0
  br label %12, !dbg !176

; <label>:12:                                     ; preds = %0, %11
  call void (i8*, ...) @uk_pr_debug(i8* undef) #8, !dbg !177
  %13 = load %struct.uk_alloc*, %struct.uk_alloc** @_uk_alloc_head, align 8, !dbg !178, !tbaa !145
  store %struct.uk_alloc* %13, %struct.uk_alloc** %1, align 8, !dbg !179
  store i32 1, i32* %3, align 4
  br label %14, !dbg !179

; <label>:14:                                     ; preds = %12, %9, %7
  %15 = bitcast i32* %2 to i8*, !dbg !180
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #7, !dbg !180
  %16 = load %struct.uk_alloc*, %struct.uk_alloc** %1, align 8, !dbg !180
  ret %struct.uk_alloc* %16, !dbg !180
}

; Function Attrs: noredzone nounwind
define dso_local i8* @sys_calloc(i32, i64) local_unnamed_addr #0 !dbg !181 {
  %3 = tail call fastcc %struct.uk_alloc* @uk_alloc_get_default() #8, !dbg !189
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !198
  br i1 %4, label %5, label %7, !dbg !200, !prof !128

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno() #9, !dbg !201
  store i32 12, i32* %6, align 4, !dbg !203, !tbaa !132
  br label %12, !dbg !204

; <label>:7:                                      ; preds = %2
  %8 = sext i32 %0 to i64, !dbg !205
  %9 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %3, i64 0, i32 1, !dbg !216
  %10 = load i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)** %9, align 8, !dbg !216, !tbaa !145
  %11 = tail call i8* %10(%struct.uk_alloc* nonnull %3, i64 %8, i64 %1) #9, !dbg !217
  br label %12, !dbg !218

; <label>:12:                                     ; preds = %5, %7
  %13 = phi i8* [ null, %5 ], [ %11, %7 ], !dbg !219
  ret i8* %13, !dbg !220
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_free(i8*) local_unnamed_addr #0 !dbg !221 {
  %2 = tail call fastcc %struct.uk_alloc* @uk_alloc_get_default() #8, !dbg !227
  %3 = icmp eq %struct.uk_alloc* %2, null, !dbg !242
  br i1 %3, label %4, label %5, !dbg !245, !prof !128

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !246
  tail call void @ukplat_terminate(i32 3) #10, !dbg !246
  unreachable, !dbg !246

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %2, i64 0, i32 5, !dbg !248
  %7 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %6, align 8, !dbg !248, !tbaa !145
  tail call void %7(%struct.uk_alloc* nonnull %2, i8* %0) #9, !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !251
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !251
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !253
  call void @llvm.va_start(i8* nonnull %3), !dbg !253
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.2, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !254
  call void @llvm.va_end(i8* nonnull %3), !dbg !257
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !258
  ret void, !dbg !258
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #6

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !259 {
  ret void, !dbg !263
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline noredzone nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !28)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !20, globals: !22)
!10 = !DIFile(filename: "/root/.unikraft/libs/lwip/alloc.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !13, line: 68, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!0, !23}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 8)
!28 = !{!29, !30}
!29 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!30 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 32, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !41)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !36)
!36 = !{!37, !38, !39, !40}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !35, file: !10, line: 196, baseType: !14, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !35, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !35, file: !10, line: 196, baseType: !21, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !35, file: !10, line: 196, baseType: !21, size: 64, offset: 128)
!41 = !{!42}
!42 = !DISubrange(count: 1)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!47 = distinct !DISubprogram(name: "sys_malloc", scope: !10, file: !10, line: 40, type: !48, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !53)
!48 = !DISubroutineType(types: !49)
!49 = !{!21, !50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 58, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !{!54}
!54 = !DILocalVariable(name: "size", arg: 1, scope: !47, file: !10, line: 40, type: !50)
!55 = !DILocation(line: 40, column: 25, scope: !47)
!56 = !DILocation(line: 42, column: 19, scope: !47)
!57 = !DILocalVariable(name: "a", arg: 1, scope: !58, file: !59, line: 157, type: !62)
!58 = distinct !DISubprogram(name: "uk_malloc", scope: !59, file: !59, line: 157, type: !60, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !120)
!59 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DISubroutineType(types: !61)
!61 = !{!21, !62, !50}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !59, line: 77, size: 832, elements: !64)
!64 = !{!65, !68, !73, !78, !85, !87, !92, !93, !94, !99, !104, !109, !110, !111}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !63, file: !59, line: 79, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !59, line: 54, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !63, file: !59, line: 80, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !59, line: 56, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!21, !62, !50, !50}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !63, file: !59, line: 81, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !59, line: 62, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!21, !62, !21, !50}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !63, file: !59, line: 82, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !59, line: 58, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !62, !84, !50, !50}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !63, file: !59, line: 83, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !59, line: 60, baseType: !70)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !63, file: !59, line: 84, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !59, line: 64, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !62, !21}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !63, file: !59, line: 87, baseType: !88, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !63, file: !59, line: 88, baseType: !66, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !63, file: !59, line: 92, baseType: !95, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !59, line: 66, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!21, !62, !52}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !63, file: !59, line: 93, baseType: !100, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !59, line: 68, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !62, !21, !52}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !63, file: !59, line: 99, baseType: !105, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !59, line: 70, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!83, !62, !21, !50}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !59, line: 100, baseType: !50, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !59, line: 103, baseType: !62, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !63, file: !59, line: 104, baseType: !112, offset: 832)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !118)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !114, line: 20, baseType: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !116, line: 41, baseType: !117)
!116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!117 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!118 = !{!119}
!119 = !DISubrange(count: -1)
!120 = !{!57, !121}
!121 = !DILocalVariable(name: "size", arg: 2, scope: !58, file: !59, line: 157, type: !50)
!122 = !DILocation(line: 157, column: 48, scope: !58, inlinedAt: !123)
!123 = distinct !DILocation(line: 42, column: 9, scope: !47)
!124 = !DILocation(line: 157, column: 58, scope: !58, inlinedAt: !123)
!125 = !DILocation(line: 159, column: 6, scope: !126, inlinedAt: !123)
!126 = distinct !DILexicalBlock(scope: !58, file: !59, line: 159, column: 6)
!127 = !DILocation(line: 159, column: 6, scope: !58, inlinedAt: !123)
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !DILocation(line: 160, column: 3, scope: !130, inlinedAt: !123)
!130 = distinct !DILexicalBlock(scope: !126, file: !59, line: 159, column: 20)
!131 = !DILocation(line: 160, column: 9, scope: !130, inlinedAt: !123)
!132 = !{!133, !133, i64 0}
!133 = !{!"int", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 161, column: 3, scope: !130, inlinedAt: !123)
!137 = !DILocalVariable(name: "a", arg: 1, scope: !138, file: !59, line: 151, type: !62)
!138 = distinct !DISubprogram(name: "uk_do_malloc", scope: !59, file: !59, line: 151, type: !60, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !139)
!139 = !{!137, !140}
!140 = !DILocalVariable(name: "size", arg: 2, scope: !138, file: !59, line: 151, type: !50)
!141 = !DILocation(line: 151, column: 51, scope: !138, inlinedAt: !142)
!142 = distinct !DILocation(line: 163, column: 9, scope: !58, inlinedAt: !123)
!143 = !DILocation(line: 151, column: 61, scope: !138, inlinedAt: !142)
!144 = !DILocation(line: 154, column: 12, scope: !138, inlinedAt: !142)
!145 = !{!146, !146, i64 0}
!146 = !{!"any pointer", !134, i64 0}
!147 = !DILocation(line: 154, column: 9, scope: !138, inlinedAt: !142)
!148 = !DILocation(line: 163, column: 2, scope: !58, inlinedAt: !123)
!149 = !DILocation(line: 0, scope: !58, inlinedAt: !123)
!150 = !DILocation(line: 42, column: 2, scope: !47)
!151 = distinct !DISubprogram(name: "uk_alloc_get_default", scope: !59, file: !59, line: 121, type: !152, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!62}
!154 = !{!155}
!155 = !DILocalVariable(name: "pkru", scope: !151, file: !59, line: 124, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 48, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !116, line: 79, baseType: !14)
!158 = !DILocation(line: 124, column: 2, scope: !151)
!159 = !DILocation(line: 124, column: 11, scope: !151)
!160 = !DILocation(line: 79, column: 2, scope: !161, inlinedAt: !167)
!161 = distinct !DISubprogram(name: "rdpkru", scope: !162, file: !162, line: 76, type: !163, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !165)
!162 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku.h", directory: "/root/.unikraft/apps/redis/build")
!163 = !DISubroutineType(types: !164)
!164 = !{!156}
!165 = !{!166}
!166 = !DILocalVariable(name: "res", scope: !161, file: !162, line: 78, type: !156)
!167 = distinct !DILocation(line: 124, column: 18, scope: !151)
!168 = !{i32 361354}
!169 = !DILocation(line: 78, column: 11, scope: !161, inlinedAt: !167)
!170 = !DILocation(line: 129, column: 10, scope: !151)
!171 = !DILocation(line: 129, column: 2, scope: !151)
!172 = !DILocation(line: 131, column: 10, scope: !173)
!173 = distinct !DILexicalBlock(scope: !151, file: !59, line: 129, column: 16)
!174 = !DILocation(line: 131, column: 3, scope: !173)
!175 = !DILocation(line: 133, column: 10, scope: !173)
!176 = !DILocation(line: 133, column: 3, scope: !173)
!177 = !DILocation(line: 138, column: 3, scope: !173)
!178 = !DILocation(line: 140, column: 10, scope: !173)
!179 = !DILocation(line: 140, column: 3, scope: !173)
!180 = !DILocation(line: 145, column: 1, scope: !151)
!181 = distinct !DISubprogram(name: "sys_calloc", scope: !10, file: !10, line: 45, type: !182, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!21, !83, !50}
!184 = !{!185, !186}
!185 = !DILocalVariable(name: "num", arg: 1, scope: !181, file: !10, line: 45, type: !83)
!186 = !DILocalVariable(name: "size", arg: 2, scope: !181, file: !10, line: 45, type: !50)
!187 = !DILocation(line: 45, column: 22, scope: !181)
!188 = !DILocation(line: 45, column: 34, scope: !181)
!189 = !DILocation(line: 47, column: 19, scope: !181)
!190 = !DILocalVariable(name: "a", arg: 1, scope: !191, file: !59, line: 173, type: !62)
!191 = distinct !DISubprogram(name: "uk_calloc", scope: !59, file: !59, line: 173, type: !71, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !192)
!192 = !{!190, !193, !194}
!193 = !DILocalVariable(name: "nmemb", arg: 2, scope: !191, file: !59, line: 174, type: !50)
!194 = !DILocalVariable(name: "size", arg: 3, scope: !191, file: !59, line: 174, type: !50)
!195 = !DILocation(line: 173, column: 48, scope: !191, inlinedAt: !196)
!196 = distinct !DILocation(line: 47, column: 9, scope: !181)
!197 = !DILocation(line: 174, column: 31, scope: !191, inlinedAt: !196)
!198 = !DILocation(line: 176, column: 6, scope: !199, inlinedAt: !196)
!199 = distinct !DILexicalBlock(scope: !191, file: !59, line: 176, column: 6)
!200 = !DILocation(line: 176, column: 6, scope: !191, inlinedAt: !196)
!201 = !DILocation(line: 177, column: 3, scope: !202, inlinedAt: !196)
!202 = distinct !DILexicalBlock(scope: !199, file: !59, line: 176, column: 20)
!203 = !DILocation(line: 177, column: 9, scope: !202, inlinedAt: !196)
!204 = !DILocation(line: 178, column: 3, scope: !202, inlinedAt: !196)
!205 = !DILocation(line: 47, column: 43, scope: !181)
!206 = !DILocation(line: 174, column: 17, scope: !191, inlinedAt: !196)
!207 = !DILocalVariable(name: "a", arg: 1, scope: !208, file: !59, line: 166, type: !62)
!208 = distinct !DISubprogram(name: "uk_do_calloc", scope: !59, file: !59, line: 166, type: !71, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !209)
!209 = !{!207, !210, !211}
!210 = !DILocalVariable(name: "nmemb", arg: 2, scope: !208, file: !59, line: 167, type: !50)
!211 = !DILocalVariable(name: "size", arg: 3, scope: !208, file: !59, line: 167, type: !50)
!212 = !DILocation(line: 166, column: 51, scope: !208, inlinedAt: !213)
!213 = distinct !DILocation(line: 180, column: 9, scope: !191, inlinedAt: !196)
!214 = !DILocation(line: 167, column: 13, scope: !208, inlinedAt: !213)
!215 = !DILocation(line: 167, column: 27, scope: !208, inlinedAt: !213)
!216 = !DILocation(line: 170, column: 12, scope: !208, inlinedAt: !213)
!217 = !DILocation(line: 170, column: 9, scope: !208, inlinedAt: !213)
!218 = !DILocation(line: 180, column: 2, scope: !191, inlinedAt: !196)
!219 = !DILocation(line: 0, scope: !191, inlinedAt: !196)
!220 = !DILocation(line: 47, column: 2, scope: !181)
!221 = distinct !DISubprogram(name: "sys_free", scope: !10, file: !10, line: 50, type: !222, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !21}
!224 = !{!225}
!225 = !DILocalVariable(name: "ptr", arg: 1, scope: !221, file: !10, line: 50, type: !21)
!226 = !DILocation(line: 50, column: 21, scope: !221)
!227 = !DILocation(line: 52, column: 10, scope: !221)
!228 = !DILocalVariable(name: "a", arg: 1, scope: !229, file: !59, line: 237, type: !62)
!229 = distinct !DISubprogram(name: "uk_free", scope: !59, file: !59, line: 237, type: !90, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !230)
!230 = !{!228, !231}
!231 = !DILocalVariable(name: "ptr", arg: 2, scope: !229, file: !59, line: 237, type: !21)
!232 = !DILocation(line: 237, column: 45, scope: !229, inlinedAt: !233)
!233 = distinct !DILocation(line: 52, column: 2, scope: !221)
!234 = !DILocation(line: 237, column: 54, scope: !229, inlinedAt: !233)
!235 = !DILocalVariable(name: "a", arg: 1, scope: !236, file: !59, line: 231, type: !62)
!236 = distinct !DISubprogram(name: "uk_do_free", scope: !59, file: !59, line: 231, type: !90, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !237)
!237 = !{!235, !238}
!238 = !DILocalVariable(name: "ptr", arg: 2, scope: !236, file: !59, line: 231, type: !21)
!239 = !DILocation(line: 231, column: 48, scope: !236, inlinedAt: !240)
!240 = distinct !DILocation(line: 239, column: 2, scope: !229, inlinedAt: !233)
!241 = !DILocation(line: 231, column: 57, scope: !236, inlinedAt: !240)
!242 = !DILocation(line: 233, column: 2, scope: !243, inlinedAt: !240)
!243 = distinct !DILexicalBlock(scope: !244, file: !59, line: 233, column: 2)
!244 = distinct !DILexicalBlock(scope: !236, file: !59, line: 233, column: 2)
!245 = !DILocation(line: 233, column: 2, scope: !244, inlinedAt: !240)
!246 = !DILocation(line: 233, column: 2, scope: !247, inlinedAt: !240)
!247 = distinct !DILexicalBlock(scope: !243, file: !59, line: 233, column: 2)
!248 = !DILocation(line: 234, column: 5, scope: !236, inlinedAt: !240)
!249 = !DILocation(line: 234, column: 2, scope: !236, inlinedAt: !240)
!250 = !DILocation(line: 53, column: 1, scope: !221)
!251 = !DILocation(line: 196, column: 2, scope: !2)
!252 = !DILocation(line: 196, column: 10, scope: !2)
!253 = !DILocation(line: 197, column: 2, scope: !2)
!254 = !DILocation(line: 198, column: 2, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 198, column: 2)
!256 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!257 = !DILocation(line: 199, column: 2, scope: !2)
!258 = !DILocation(line: 200, column: 1, scope: !2)
!259 = distinct !DISubprogram(name: "uk_pr_debug", scope: !3, file: !3, line: 162, type: !4, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !260)
!260 = !{!261, !262}
!261 = !DILocalVariable(name: "fmt", arg: 1, scope: !259, file: !3, line: 162, type: !6)
!262 = !DILocalVariable(name: "argp", scope: !259, file: !3, line: 164, type: !31)
!263 = !DILocation(line: 168, column: 1, scope: !259)
