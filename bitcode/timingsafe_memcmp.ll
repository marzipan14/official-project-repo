; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_memcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_memcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @timingsafe_memcmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !44
  br i1 %4, label %73, label %5, !dbg !45

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !46
  %7 = icmp eq i64 %2, 1, !dbg !46
  br i1 %7, label %53, label %8, !dbg !46

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !46
  br label %10, !dbg !46

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %48, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %45, %10 ]
  %13 = phi i32 [ 0, %8 ], [ %47, %10 ]
  %14 = phi i64 [ %9, %8 ], [ %49, %10 ]
  %15 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !46
  %16 = load i8, i8* %15, align 1, !dbg !46, !tbaa !47
  %17 = zext i8 %16 to i32, !dbg !46
  %18 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !50
  %19 = load i8, i8* %18, align 1, !dbg !50, !tbaa !47
  %20 = zext i8 %19 to i32, !dbg !50
  %21 = sub nsw i32 %17, %20, !dbg !51
  %22 = ashr i32 %21, 8, !dbg !52
  %23 = sub nsw i32 %20, %17, !dbg !54
  %24 = ashr i32 %23, 8, !dbg !55
  %25 = sub nsw i32 %22, %24, !dbg !57
  %26 = xor i32 %13, -1, !dbg !59
  %27 = and i32 %25, %26, !dbg !60
  %28 = or i32 %27, %12, !dbg !61
  %29 = or i32 %24, %13, !dbg !62
  %30 = or i32 %29, %22, !dbg !63
  %31 = or i64 %11, 1, !dbg !64
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !46
  %33 = load i8, i8* %32, align 1, !dbg !46, !tbaa !47
  %34 = zext i8 %33 to i32, !dbg !46
  %35 = getelementptr inbounds i8, i8* %1, i64 %31, !dbg !50
  %36 = load i8, i8* %35, align 1, !dbg !50, !tbaa !47
  %37 = zext i8 %36 to i32, !dbg !50
  %38 = sub nsw i32 %34, %37, !dbg !51
  %39 = ashr i32 %38, 8, !dbg !52
  %40 = sub nsw i32 %37, %34, !dbg !54
  %41 = ashr i32 %40, 8, !dbg !55
  %42 = sub nsw i32 %39, %41, !dbg !57
  %43 = xor i32 %30, -1, !dbg !59
  %44 = and i32 %42, %43, !dbg !60
  %45 = or i32 %44, %28, !dbg !61
  %46 = or i32 %41, %30, !dbg !62
  %47 = or i32 %46, %39, !dbg !63
  %48 = add i64 %11, 2, !dbg !64
  %49 = add i64 %14, -2, !dbg !45
  %50 = icmp eq i64 %49, 0, !dbg !45
  br i1 %50, label %51, label %10, !dbg !45, !llvm.loop !65

; <label>:51:                                     ; preds = %10
  %52 = xor i32 %47, -1, !dbg !45
  br label %53, !dbg !45

; <label>:53:                                     ; preds = %51, %5
  %54 = phi i32 [ undef, %5 ], [ %45, %51 ]
  %55 = phi i64 [ 0, %5 ], [ %48, %51 ]
  %56 = phi i32 [ 0, %5 ], [ %45, %51 ]
  %57 = phi i32 [ -1, %5 ], [ %52, %51 ]
  %58 = icmp eq i64 %6, 0, !dbg !45
  br i1 %58, label %73, label %59, !dbg !45

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %0, i64 %55, !dbg !46
  %61 = load i8, i8* %60, align 1, !dbg !46, !tbaa !47
  %62 = zext i8 %61 to i32, !dbg !46
  %63 = getelementptr inbounds i8, i8* %1, i64 %55, !dbg !50
  %64 = load i8, i8* %63, align 1, !dbg !50, !tbaa !47
  %65 = zext i8 %64 to i32, !dbg !50
  %66 = sub nsw i32 %65, %62, !dbg !54
  %67 = ashr i32 %66, 8, !dbg !55
  %68 = sub nsw i32 %62, %65, !dbg !51
  %69 = ashr i32 %68, 8, !dbg !52
  %70 = sub nsw i32 %69, %67, !dbg !57
  %71 = and i32 %70, %57, !dbg !60
  %72 = or i32 %71, %56, !dbg !61
  br label %73, !dbg !67

; <label>:73:                                     ; preds = %59, %53, %3
  %74 = phi i32 [ 0, %3 ], [ %54, %53 ], [ %72, %59 ], !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  ret i32 %74, !dbg !67
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/timingsafe_memcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "timingsafe_memcmp", scope: !1, file: !1, line: 22, type: !8, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !13}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !26, !27, !28, !29, !30, !34, !35}
!19 = !DILocalVariable(name: "b1", arg: 1, scope: !7, file: !1, line: 22, type: !11)
!20 = !DILocalVariable(name: "b2", arg: 2, scope: !7, file: !1, line: 22, type: !11)
!21 = !DILocalVariable(name: "len", arg: 3, scope: !7, file: !1, line: 22, type: !13)
!22 = !DILocalVariable(name: "p1", scope: !7, file: !1, line: 24, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DILocalVariable(name: "p2", scope: !7, file: !1, line: 24, type: !23)
!27 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 25, type: !13)
!28 = !DILocalVariable(name: "res", scope: !7, file: !1, line: 26, type: !10)
!29 = !DILocalVariable(name: "done", scope: !7, file: !1, line: 26, type: !10)
!30 = !DILocalVariable(name: "lt", scope: !31, file: !1, line: 30, type: !10)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 28, column: 35)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 28, column: 9)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 9)
!34 = !DILocalVariable(name: "gt", scope: !31, file: !1, line: 33, type: !10)
!35 = !DILocalVariable(name: "cmp", scope: !31, file: !1, line: 36, type: !10)
!36 = !DILocation(line: 22, column: 31, scope: !7)
!37 = !DILocation(line: 22, column: 47, scope: !7)
!38 = !DILocation(line: 22, column: 58, scope: !7)
!39 = !DILocation(line: 24, column: 30, scope: !7)
!40 = !DILocation(line: 24, column: 40, scope: !7)
!41 = !DILocation(line: 26, column: 13, scope: !7)
!42 = !DILocation(line: 26, column: 22, scope: !7)
!43 = !DILocation(line: 25, column: 16, scope: !7)
!44 = !DILocation(line: 28, column: 23, scope: !32)
!45 = !DILocation(line: 28, column: 9, scope: !33)
!46 = !DILocation(line: 30, column: 27, scope: !31)
!47 = !{!48, !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 30, column: 35, scope: !31)
!51 = !DILocation(line: 30, column: 33, scope: !31)
!52 = !DILocation(line: 30, column: 42, scope: !31)
!53 = !DILocation(line: 30, column: 21, scope: !31)
!54 = !DILocation(line: 33, column: 33, scope: !31)
!55 = !DILocation(line: 33, column: 42, scope: !31)
!56 = !DILocation(line: 33, column: 21, scope: !31)
!57 = !DILocation(line: 36, column: 30, scope: !31)
!58 = !DILocation(line: 36, column: 21, scope: !31)
!59 = !DILocation(line: 39, column: 30, scope: !31)
!60 = !DILocation(line: 39, column: 28, scope: !31)
!61 = !DILocation(line: 39, column: 21, scope: !31)
!62 = !DILocation(line: 42, column: 28, scope: !31)
!63 = !DILocation(line: 42, column: 22, scope: !31)
!64 = !DILocation(line: 28, column: 31, scope: !32)
!65 = distinct !{!65, !45, !66}
!66 = !DILocation(line: 43, column: 9, scope: !33)
!67 = !DILocation(line: 45, column: 9, scope: !7)
!68 = !DILocation(line: 0, scope: !31)
