; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/ctype_.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/ctype_.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ctype_b = dso_local local_unnamed_addr constant <{ [256 x i8], [128 x i8] }> <{ [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00         (((((                  \88\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\04\04\04\04\04\04\04\04\04\04\10\10\10\10\10\10\10AAAAAA\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\10\10\10\10\10\10BBBBBB\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\10\10\10\10 ", [128 x i8] zeroinitializer }>, align 16, !dbg !0
@_ctype_ = dso_local local_unnamed_addr constant <{ [129 x i8], [128 x i8] }> <{ [129 x i8] c"\00         (((((                  \88\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\04\04\04\04\04\04\04\04\04\04\10\10\10\10\10\10\10AAAAAA\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\10\10\10\10\10\10BBBBBB\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\10\10\10\10 ", [128 x i8] zeroinitializer }>, align 16, !dbg !6

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_ctype_b", scope: !2, file: !3, line: 92, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/ctype_.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "_ctype_", scope: !2, file: !3, line: 119, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 257)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3072, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 384)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
