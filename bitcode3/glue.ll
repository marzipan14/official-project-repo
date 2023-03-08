; ModuleID = '/root/.unikraft/libs/tlsf/glue.c'
source_filename = "/root/.unikraft/libs/tlsf/glue.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [70 x i8] c"Not enough space for allocator: %lu B required but only %lx B usable\0A\00", align 1
@uk_pr_err.__str = internal global [8 x i8] c"libtlsf\00", section ".data_shared", align 1, !dbg !0
@uk_pr_err.__str.2 = internal global [7 x i8] c"glue.c\00", section ".data_shared", align 1, !dbg !81

; Function Attrs: noredzone nounwind
define dso_local %struct.uk_alloc* @uk_tlsf_init(i8*, i64) local_unnamed_addr #0 !dbg !109 {
  %3 = icmp ult i64 %1, 104, !dbg !119
  br i1 %3, label %4, label %5, !dbg !121

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_err(i8* undef, i64 104, i64 %1) #6, !dbg !122
  br label %32, !dbg !124

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %0 to %struct.uk_alloc*, !dbg !125
  %7 = getelementptr inbounds i8, i8* %0, i64 88, !dbg !127
  %8 = bitcast i8* %7 to i64*, !dbg !127
  store i64 %1, i64* %8, align 8, !dbg !128, !tbaa !129
  %9 = add i64 %1, -104, !dbg !133
  %10 = getelementptr i8, i8* %0, i64 104, !dbg !134
  %11 = tail call i64 @init_memory_pool(i64 %9, i8* %10) #7, !dbg !135
  %12 = icmp eq i64 %11, -1, !dbg !137
  br i1 %12, label %32, label %13, !dbg !139

; <label>:13:                                     ; preds = %5
  %14 = bitcast i8* %0 to i8* (%struct.uk_alloc*, i64)**, !dbg !140
  store i8* (%struct.uk_alloc*, i64)* @uk_malloc_ifmalloc, i8* (%struct.uk_alloc*, i64)** %14, align 8, !dbg !140, !tbaa !142
  %15 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !140
  %16 = bitcast i8* %15 to i8* (%struct.uk_alloc*, i64, i64)**, !dbg !140
  store i8* (%struct.uk_alloc*, i64, i64)* @uk_calloc_compat, i8* (%struct.uk_alloc*, i64, i64)** %16, align 8, !dbg !140, !tbaa !142
  %17 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !140
  %18 = bitcast i8* %17 to i8* (%struct.uk_alloc*, i8*, i64)**, !dbg !140
  store i8* (%struct.uk_alloc*, i8*, i64)* @uk_realloc_ifmalloc, i8* (%struct.uk_alloc*, i8*, i64)** %18, align 8, !dbg !140, !tbaa !142
  %19 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !140
  %20 = bitcast i8* %19 to i32 (%struct.uk_alloc*, i8**, i64, i64)**, !dbg !140
  store i32 (%struct.uk_alloc*, i8**, i64, i64)* @uk_posix_memalign_ifmalloc, i32 (%struct.uk_alloc*, i8**, i64, i64)** %20, align 8, !dbg !140, !tbaa !142
  %21 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !140
  %22 = bitcast i8* %21 to i8* (%struct.uk_alloc*, i64, i64)**, !dbg !140
  store i8* (%struct.uk_alloc*, i64, i64)* @uk_memalign_compat, i8* (%struct.uk_alloc*, i64, i64)** %22, align 8, !dbg !140, !tbaa !142
  %23 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !140
  %24 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !140
  %25 = bitcast i8* %24 to <2 x void (%struct.uk_alloc*, i8*)*>*, !dbg !140
  store <2 x void (%struct.uk_alloc*, i8*)*> <void (%struct.uk_alloc*, i8*)* @uk_free_ifmalloc, void (%struct.uk_alloc*, i8*)* @uk_tlsf_free>, <2 x void (%struct.uk_alloc*, i8*)*>* %25, align 8, !dbg !140, !tbaa !142
  %26 = bitcast i8* %23 to <2 x i8* (%struct.uk_alloc*, i64)*>*, !dbg !140
  store <2 x i8* (%struct.uk_alloc*, i64)*> <i8* (%struct.uk_alloc*, i64)* @uk_tlsf_malloc, i8* (%struct.uk_alloc*, i64)* @uk_palloc_compat>, <2 x i8* (%struct.uk_alloc*, i64)*>* %26, align 8, !dbg !140, !tbaa !142
  %27 = getelementptr inbounds i8, i8* %0, i64 72, !dbg !140
  %28 = bitcast i8* %27 to void (%struct.uk_alloc*, i8*, i64)**, !dbg !140
  store void (%struct.uk_alloc*, i8*, i64)* @uk_pfree_compat, void (%struct.uk_alloc*, i8*, i64)** %28, align 8, !dbg !140, !tbaa !142
  %29 = getelementptr inbounds i8, i8* %0, i64 80, !dbg !140
  %30 = bitcast i8* %29 to i32 (%struct.uk_alloc*, i8*, i64)**, !dbg !140
  store i32 (%struct.uk_alloc*, i8*, i64)* null, i32 (%struct.uk_alloc*, i8*, i64)** %30, align 8, !dbg !140, !tbaa !142
  %31 = tail call i32 @uk_alloc_register(%struct.uk_alloc* %6) #7, !dbg !140
  br label %32, !dbg !144

; <label>:32:                                     ; preds = %5, %13, %4
  %33 = phi %struct.uk_alloc* [ null, %4 ], [ %6, %13 ], [ null, %5 ], !dbg !145
  ret %struct.uk_alloc* %33, !dbg !146
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8* nocapture readnone, ...) unnamed_addr #3 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !147
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !149
  call void @llvm.va_start(i8* nonnull %3), !dbg !149
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_err.__str.2, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !150
  call void @llvm.va_end(i8* nonnull %3), !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !154
  ret void, !dbg !154
}

; Function Attrs: noredzone
declare dso_local i64 @init_memory_pool(i64, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @uk_malloc_ifmalloc(%struct.uk_alloc*, i64) #4

; Function Attrs: noredzone
declare dso_local i8* @uk_calloc_compat(%struct.uk_alloc*, i64, i64) #4

; Function Attrs: noredzone
declare dso_local i8* @uk_realloc_ifmalloc(%struct.uk_alloc*, i8*, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @uk_posix_memalign_ifmalloc(%struct.uk_alloc*, i8**, i64, i64) #4

; Function Attrs: noredzone
declare dso_local i8* @uk_memalign_compat(%struct.uk_alloc*, i64, i64) #4

; Function Attrs: noredzone nounwind
define internal i8* @uk_tlsf_malloc(%struct.uk_alloc*, i64) #0 !dbg !155 {
  %3 = ptrtoint %struct.uk_alloc* %0 to i64, !dbg !161
  %4 = add i64 %3, 104, !dbg !162
  %5 = inttoptr i64 %4 to i8*, !dbg !163
  %6 = tail call i8* @tlsf_malloc(i64 %1, i8* %5) #7, !dbg !164
  ret i8* %6, !dbg !165
}

; Function Attrs: noredzone nounwind
define internal void @uk_tlsf_free(%struct.uk_alloc*, i8*) #0 !dbg !166 {
  %3 = ptrtoint %struct.uk_alloc* %0 to i64, !dbg !172
  %4 = add i64 %3, 104, !dbg !173
  %5 = inttoptr i64 %4 to i8*, !dbg !174
  tail call void @tlsf_free(i8* %1, i8* %5) #7, !dbg !175
  ret void, !dbg !176
}

; Function Attrs: noredzone
declare dso_local void @uk_free_ifmalloc(%struct.uk_alloc*, i8*) #4

; Function Attrs: noredzone
declare dso_local i8* @uk_palloc_compat(%struct.uk_alloc*, i64) #4

; Function Attrs: noredzone
declare dso_local void @uk_pfree_compat(%struct.uk_alloc*, i8*, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @uk_alloc_register(%struct.uk_alloc*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone
declare dso_local i8* @tlsf_malloc(i64, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @tlsf_free(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 190, type: !102, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_err", scope: !3, file: !3, line: 186, type: !4, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !86)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !80)
!10 = !DIFile(filename: "/root/.unikraft/libs/tlsf/glue.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{}
!12 = !{!13, !78, !23, !22}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !15, line: 77, size: 832, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !26, !31, !36, !43, !45, !50, !51, !52, !57, !62, !67, !68, !69}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !14, file: !15, line: 79, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !15, line: 54, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !13, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 58, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !14, file: !15, line: 80, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !15, line: 56, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!22, !13, !23, !23}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !14, file: !15, line: 81, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !15, line: 62, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!22, !13, !22, !23}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !14, file: !15, line: 82, baseType: !37, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !15, line: 58, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !13, !42, !23, !23}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !14, file: !15, line: 83, baseType: !44, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !15, line: 60, baseType: !28)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !14, file: !15, line: 84, baseType: !46, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !15, line: 64, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !13, !22}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !14, file: !15, line: 87, baseType: !46, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !14, file: !15, line: 88, baseType: !18, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !14, file: !15, line: 92, baseType: !53, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !15, line: 66, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!22, !13, !25}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !14, file: !15, line: 93, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !15, line: 68, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !13, !22, !25}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !14, file: !15, line: 99, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !15, line: 70, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!41, !13, !22, !23}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !14, file: !15, line: 100, baseType: !23, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !14, file: !15, line: 103, baseType: !13, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !14, file: !15, line: 104, baseType: !70, offset: 832)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, elements: !76)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !72, line: 20, baseType: !73)
!72 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !74, line: 41, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !{!77}
!77 = !DISubrange(count: -1)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !72, line: 82, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !74, line: 232, baseType: !25)
!80 = !{!0, !81}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 190, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 56, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 7)
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 186, type: !6)
!88 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 188, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !90, line: 32, baseType: !91)
!90 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 188, baseType: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !100)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 188, size: 192, elements: !94)
!94 = !{!95, !97, !98, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !93, file: !10, line: 188, baseType: !96, size: 32)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !93, file: !10, line: 188, baseType: !96, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !93, file: !10, line: 188, baseType: !22, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !93, file: !10, line: 188, baseType: !22, size: 64, offset: 128)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !{i32 2, !"Dwarf Version", i32 4}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!109 = distinct !DISubprogram(name: "uk_tlsf_init", scope: !10, file: !10, line: 63, type: !110, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{!13, !22, !23}
!112 = !{!113, !114, !115, !116}
!113 = !DILocalVariable(name: "base", arg: 1, scope: !109, file: !10, line: 63, type: !22)
!114 = !DILocalVariable(name: "len", arg: 2, scope: !109, file: !10, line: 63, type: !23)
!115 = !DILocalVariable(name: "a", scope: !109, file: !10, line: 65, type: !13)
!116 = !DILocalVariable(name: "res", scope: !109, file: !10, line: 66, type: !23)
!117 = !DILocation(line: 63, column: 37, scope: !109)
!118 = !DILocation(line: 63, column: 50, scope: !109)
!119 = !DILocation(line: 69, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !109, file: !10, line: 69, column: 6)
!121 = !DILocation(line: 69, column: 6, scope: !109)
!122 = !DILocation(line: 70, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !10, line: 69, column: 24)
!124 = !DILocation(line: 73, column: 3, scope: !123)
!125 = !DILocation(line: 77, column: 6, scope: !109)
!126 = !DILocation(line: 65, column: 19, scope: !109)
!127 = !DILocation(line: 78, column: 5, scope: !109)
!128 = !DILocation(line: 78, column: 9, scope: !109)
!129 = !{!130, !130, i64 0}
!130 = !{!"long", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !DILocation(line: 82, column: 29, scope: !109)
!134 = !DILocation(line: 82, column: 48, scope: !109)
!135 = !DILocation(line: 82, column: 8, scope: !109)
!136 = !DILocation(line: 66, column: 9, scope: !109)
!137 = !DILocation(line: 83, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !109, file: !10, line: 83, column: 6)
!139 = !DILocation(line: 83, column: 6, scope: !109)
!140 = !DILocation(line: 86, column: 2, scope: !141)
!141 = distinct !DILexicalBlock(scope: !109, file: !10, line: 86, column: 2)
!142 = !{!143, !143, i64 0}
!143 = !{!"any pointer", !131, i64 0}
!144 = !DILocation(line: 88, column: 2, scope: !109)
!145 = !DILocation(line: 0, scope: !109)
!146 = !DILocation(line: 89, column: 1, scope: !109)
!147 = !DILocation(line: 188, column: 2, scope: !2)
!148 = !DILocation(line: 188, column: 10, scope: !2)
!149 = !DILocation(line: 189, column: 2, scope: !2)
!150 = !DILocation(line: 190, column: 2, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 190, column: 2)
!152 = distinct !DILexicalBlock(scope: !2, file: !3, line: 190, column: 2)
!153 = !DILocation(line: 191, column: 2, scope: !2)
!154 = !DILocation(line: 192, column: 1, scope: !2)
!155 = distinct !DISubprogram(name: "uk_tlsf_malloc", scope: !10, file: !10, line: 40, type: !20, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !156)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "a", arg: 1, scope: !155, file: !10, line: 40, type: !13)
!158 = !DILocalVariable(name: "size", arg: 2, scope: !155, file: !10, line: 40, type: !23)
!159 = !DILocation(line: 40, column: 46, scope: !155)
!160 = !DILocation(line: 40, column: 56, scope: !155)
!161 = !DILocation(line: 42, column: 36, scope: !155)
!162 = !DILocation(line: 42, column: 50, scope: !155)
!163 = !DILocation(line: 42, column: 27, scope: !155)
!164 = !DILocation(line: 42, column: 9, scope: !155)
!165 = !DILocation(line: 42, column: 2, scope: !155)
!166 = distinct !DISubprogram(name: "uk_tlsf_free", scope: !10, file: !10, line: 46, type: !48, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !167)
!167 = !{!168, !169}
!168 = !DILocalVariable(name: "a", arg: 1, scope: !166, file: !10, line: 46, type: !13)
!169 = !DILocalVariable(name: "ptr", arg: 2, scope: !166, file: !10, line: 46, type: !22)
!170 = !DILocation(line: 46, column: 43, scope: !166)
!171 = !DILocation(line: 46, column: 52, scope: !166)
!172 = !DILocation(line: 58, column: 26, scope: !166)
!173 = !DILocation(line: 58, column: 40, scope: !166)
!174 = !DILocation(line: 58, column: 17, scope: !166)
!175 = !DILocation(line: 58, column: 2, scope: !166)
!176 = !DILocation(line: 59, column: 1, scope: !166)
