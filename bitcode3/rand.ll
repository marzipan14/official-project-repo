; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rand.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rand.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x.0 = internal unnamed_addr global i32 13070, align 4, !dbg !0
@x.1 = internal unnamed_addr global i32 43981, align 4, !dbg !24
@x.2 = internal unnamed_addr global i32 4660, align 4, !dbg !25

; Function Attrs: noredzone nounwind
define dso_local i32 @redisLrand48() local_unnamed_addr #0 !dbg !30 {
  %1 = load i32, i32* @x.0, align 4, !dbg !33, !tbaa !53
  %2 = mul i32 %1, 58989, !dbg !33
  %3 = and i32 %2, 65535, !dbg !33
  %4 = lshr i32 %2, 16, !dbg !33
  %5 = add nuw nsw i32 %3, 11, !dbg !58
  %6 = icmp ugt i32 %5, 65535, !dbg !58
  %7 = zext i1 %6 to i32, !dbg !58
  %8 = add i32 %2, 11, !dbg !58
  %9 = and i32 %8, 65535, !dbg !58
  %10 = zext i32 %4 to i64, !dbg !60
  %11 = zext i1 %6 to i64, !dbg !60
  %12 = add nuw nsw i64 %11, %10, !dbg !60
  %13 = icmp ugt i64 %12, 65535, !dbg !60
  %14 = zext i1 %13 to i32, !dbg !60
  %15 = add nuw nsw i32 %4, %7, !dbg !60
  %16 = and i32 %15, 65535, !dbg !60
  %17 = load i32, i32* @x.1, align 4, !dbg !62, !tbaa !53
  %18 = mul i32 %17, 58989, !dbg !62
  %19 = and i32 %18, 65535, !dbg !62
  %20 = lshr i32 %18, 16, !dbg !62
  %21 = add nuw nsw i32 %16, %19, !dbg !64
  %22 = icmp ugt i32 %21, 65535, !dbg !64
  %23 = zext i1 %22 to i32, !dbg !64
  %24 = add i32 %15, %18, !dbg !64
  %25 = and i32 %24, 65535, !dbg !64
  %26 = mul i32 %1, 57068, !dbg !65
  %27 = and i32 %26, 65532, !dbg !65
  %28 = lshr i32 %26, 16, !dbg !65
  %29 = add nuw nsw i32 %25, %27, !dbg !67
  %30 = icmp ugt i32 %29, 65535, !dbg !67
  %31 = zext i1 %30 to i32, !dbg !67
  %32 = load i32, i32* @x.2, align 4, !dbg !67, !tbaa !53
  %33 = mul i32 %32, 58989, !dbg !67
  %34 = mul i32 %17, 57068, !dbg !67
  %35 = mul i32 %1, 5, !dbg !67
  %36 = add i32 %28, %35, !dbg !67
  %37 = add i32 %36, %34, !dbg !67
  %38 = add i32 %37, %20, !dbg !67
  %39 = add i32 %38, %33, !dbg !67
  %40 = add i32 %39, %14, !dbg !67
  %41 = add i32 %40, %23, !dbg !67
  %42 = add i32 %41, %31, !dbg !67
  %43 = and i32 %42, 65535, !dbg !67
  store i32 %43, i32* @x.2, align 4, !dbg !68, !tbaa !53
  %44 = add i32 %24, %26, !dbg !69
  %45 = and i32 %44, 65535, !dbg !69
  store i32 %45, i32* @x.1, align 4, !dbg !70, !tbaa !53
  store i32 %9, i32* @x.0, align 4, !dbg !71, !tbaa !53
  %46 = shl nuw nsw i32 %43, 15, !dbg !72
  %47 = lshr i32 %45, 1, !dbg !73
  %48 = or i32 %46, %47, !dbg !74
  ret i32 %48, !dbg !75
}

; Function Attrs: noredzone nounwind
define dso_local void @redisSrand48(i32) local_unnamed_addr #0 !dbg !76 {
  store i32 13070, i32* @x.0, align 4, !dbg !82, !tbaa !53
  %2 = and i32 %0, 65535, !dbg !82
  store i32 %2, i32* @x.1, align 4, !dbg !82, !tbaa !53
  %3 = lshr i32 %0, 16, !dbg !82
  store i32 %3, i32* @x.2, align 4, !dbg !82, !tbaa !53
  ret void, !dbg !83
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 68, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rand.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 44, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 77, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!13 = !{!14, !15, !22}
!14 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 68, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !20)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !11)
!20 = !{!21}
!21 = !DISubrange(count: 3)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 68, type: !18, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!25 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 32))
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!30 = distinct !DISubprogram(name: "redisLrand48", scope: !3, file: !3, line: 71, type: !31, isLocal: false, isDefinition: true, scopeLine: 71, isOptimized: true, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{!6}
!33 = !DILocation(line: 83, column: 5, scope: !34, inlinedAt: !52)
!34 = distinct !DILexicalBlock(scope: !35, file: !3, line: 83, column: 5)
!35 = distinct !DISubprogram(name: "next", scope: !3, file: !3, line: 80, type: !36, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null}
!38 = !{!39, !43, !44, !45, !46, !47, !48, !50}
!39 = !DILocalVariable(name: "p", scope: !35, file: !3, line: 81, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 2)
!43 = !DILocalVariable(name: "q", scope: !35, file: !3, line: 81, type: !40)
!44 = !DILocalVariable(name: "r", scope: !35, file: !3, line: 81, type: !40)
!45 = !DILocalVariable(name: "carry0", scope: !35, file: !3, line: 81, type: !18)
!46 = !DILocalVariable(name: "carry1", scope: !35, file: !3, line: 81, type: !18)
!47 = !DILocalVariable(name: "l", scope: !34, file: !3, line: 83, type: !6)
!48 = !DILocalVariable(name: "l", scope: !49, file: !3, line: 86, type: !6)
!49 = distinct !DILexicalBlock(scope: !35, file: !3, line: 86, column: 5)
!50 = !DILocalVariable(name: "l", scope: !51, file: !3, line: 88, type: !6)
!51 = distinct !DILexicalBlock(scope: !35, file: !3, line: 88, column: 5)
!52 = distinct !DILocation(line: 72, column: 5, scope: !30)
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 81, column: 14, scope: !35, inlinedAt: !52)
!58 = !DILocation(line: 84, column: 5, scope: !35, inlinedAt: !52)
!59 = !DILocation(line: 81, column: 32, scope: !35, inlinedAt: !52)
!60 = !DILocation(line: 85, column: 5, scope: !35, inlinedAt: !52)
!61 = !DILocation(line: 81, column: 40, scope: !35, inlinedAt: !52)
!62 = !DILocation(line: 86, column: 5, scope: !49, inlinedAt: !52)
!63 = !DILocation(line: 81, column: 20, scope: !35, inlinedAt: !52)
!64 = !DILocation(line: 87, column: 5, scope: !35, inlinedAt: !52)
!65 = !DILocation(line: 88, column: 5, scope: !51, inlinedAt: !52)
!66 = !DILocation(line: 81, column: 26, scope: !35, inlinedAt: !52)
!67 = !DILocation(line: 89, column: 12, scope: !35, inlinedAt: !52)
!68 = !DILocation(line: 89, column: 10, scope: !35, inlinedAt: !52)
!69 = !DILocation(line: 91, column: 12, scope: !35, inlinedAt: !52)
!70 = !DILocation(line: 91, column: 10, scope: !35, inlinedAt: !52)
!71 = !DILocation(line: 92, column: 10, scope: !35, inlinedAt: !52)
!72 = !DILocation(line: 73, column: 28, scope: !30)
!73 = !DILocation(line: 73, column: 48, scope: !30)
!74 = !DILocation(line: 73, column: 40, scope: !30)
!75 = !DILocation(line: 73, column: 5, scope: !30)
!76 = distinct !DISubprogram(name: "redisSrand48", scope: !3, file: !3, line: 76, type: !77, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !6}
!79 = !{!80}
!80 = !DILocalVariable(name: "seedval", arg: 1, scope: !76, file: !3, line: 76, type: !6)
!81 = !DILocation(line: 76, column: 27, scope: !76)
!82 = !DILocation(line: 77, column: 5, scope: !76)
!83 = !DILocation(line: 78, column: 1, scope: !76)
