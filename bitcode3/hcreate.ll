; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hsearch_data = type { %struct.internal_head*, i64 }
%struct.internal_head = type opaque
%struct.entry = type { i8*, i8* }

@htab = internal global %struct.hsearch_data zeroinitializer, align 8, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local i32 @hcreate(i64) local_unnamed_addr #0 !dbg !25 {
  %2 = tail call i32 @hcreate_r(i64 %0, %struct.hsearch_data* nonnull @htab) #4, !dbg !36
  ret i32 %2, !dbg !37
}

; Function Attrs: noredzone
declare dso_local i32 @hcreate_r(i64, %struct.hsearch_data*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @hdestroy() local_unnamed_addr #0 !dbg !38 {
  tail call void @hdestroy_r(%struct.hsearch_data* nonnull @htab) #4, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: noredzone
declare dso_local void @hdestroy_r(%struct.hsearch_data*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local %struct.entry* @hsearch(i8*, i8*, i32) local_unnamed_addr #0 !dbg !44 {
  %4 = alloca %struct.entry*, align 8
  %5 = bitcast %struct.entry** %4 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !62
  %6 = call i32 @hsearch_r(i8* %0, i8* %1, i32 %2, %struct.entry** nonnull %4, %struct.hsearch_data* nonnull @htab) #4, !dbg !64
  %7 = load %struct.entry*, %struct.entry** %4, align 8, !dbg !65, !tbaa !66
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !70
  ret %struct.entry* %7, !dbg !71
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @hsearch_r(i8*, i8*, i32, %struct.entry**, %struct.hsearch_data*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "htab", scope: !2, file: !3, line: 57, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 21, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/search.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "FIND", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ENTER", value: 1, isUnsigned: true)
!11 = !{!0}
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsearch_data", file: !6, line: 39, size: 128, elements: !13)
!13 = !{!14, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !12, file: !6, line: 41, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_head", file: !6, line: 41, flags: DIFlagFwdDecl)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "htablesize", scope: !12, file: !6, line: 42, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 58, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = distinct !DISubprogram(name: "hcreate", scope: !3, file: !3, line: 60, type: !26, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !33)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 40, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !32, line: 129, baseType: !20)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34}
!34 = !DILocalVariable(name: "nel", arg: 1, scope: !25, file: !3, line: 60, type: !29)
!35 = !DILocation(line: 60, column: 1, scope: !25)
!36 = !DILocation(line: 62, column: 10, scope: !25)
!37 = !DILocation(line: 62, column: 3, scope: !25)
!38 = distinct !DISubprogram(name: "hdestroy", scope: !3, file: !3, line: 66, type: !39, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null}
!41 = !{}
!42 = !DILocation(line: 68, column: 3, scope: !38)
!43 = !DILocation(line: 69, column: 1, scope: !38)
!44 = distinct !DISubprogram(name: "hsearch", scope: !3, file: !3, line: 72, type: !45, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !57)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !48, !56}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENTRY", file: !6, line: 19, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry", file: !6, line: 16, size: 128, elements: !50)
!50 = !{!51, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !49, file: !6, line: 17, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !6, line: 18, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACTION", file: !6, line: 23, baseType: !5)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: "item", arg: 1, scope: !44, file: !3, line: 72, type: !48)
!59 = !DILocalVariable(name: "action", arg: 2, scope: !44, file: !3, line: 72, type: !56)
!60 = !DILocalVariable(name: "retval", scope: !44, file: !3, line: 76, type: !47)
!61 = !DILocation(line: 72, column: 1, scope: !44)
!62 = !DILocation(line: 76, column: 3, scope: !44)
!63 = !DILocation(line: 76, column: 10, scope: !44)
!64 = !DILocation(line: 78, column: 3, scope: !44)
!65 = !DILocation(line: 80, column: 10, scope: !44)
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 81, column: 1, scope: !44)
!71 = !DILocation(line: 80, column: 3, scope: !44)
