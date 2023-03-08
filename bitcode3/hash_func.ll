; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_func.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_func.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__default_hash = dso_local local_unnamed_addr global i32 (i8*, i64)* @hash4, align 8, !dbg !0

; Function Attrs: noredzone nounwind readonly
define internal i32 @hash4(i8* nocapture readonly, i64) #0 !dbg !21 {
  %3 = icmp eq i64 %1, 0, !dbg !37
  br i1 %3, label %83, label %4, !dbg !39

; <label>:4:                                      ; preds = %2
  %5 = add i64 %1, 7, !dbg !40
  %6 = lshr i64 %5, 3, !dbg !42
  %7 = trunc i64 %1 to i3, !dbg !44
  switch i3 %7, label %82 [
    i3 0, label %8
    i3 -1, label %17
    i3 -2, label %26
    i3 -3, label %35
    i3 -4, label %44
    i3 3, label %53
    i3 2, label %62
    i3 1, label %71
  ], !dbg !44

; <label>:8:                                      ; preds = %71, %4
  %9 = phi i8* [ %76, %71 ], [ %0, %4 ], !dbg !45
  %10 = phi i64 [ %80, %71 ], [ %6, %4 ], !dbg !46
  %11 = phi i32 [ %79, %71 ], [ 0, %4 ], !dbg !45
  %12 = mul i32 %11, 33, !dbg !47
  %13 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !47
  %14 = load i8, i8* %9, align 1, !dbg !47, !tbaa !50
  %15 = zext i8 %14 to i32, !dbg !47
  %16 = add i32 %12, %15, !dbg !47
  br label %17, !dbg !47

; <label>:17:                                     ; preds = %4, %8
  %18 = phi i8* [ %13, %8 ], [ %0, %4 ], !dbg !45
  %19 = phi i64 [ %10, %8 ], [ %6, %4 ], !dbg !46
  %20 = phi i32 [ %16, %8 ], [ 0, %4 ], !dbg !45
  %21 = mul i32 %20, 33, !dbg !53
  %22 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !53
  %23 = load i8, i8* %18, align 1, !dbg !53, !tbaa !50
  %24 = zext i8 %23 to i32, !dbg !53
  %25 = add i32 %21, %24, !dbg !53
  br label %26, !dbg !53

; <label>:26:                                     ; preds = %4, %17
  %27 = phi i8* [ %22, %17 ], [ %0, %4 ], !dbg !45
  %28 = phi i64 [ %19, %17 ], [ %6, %4 ], !dbg !46
  %29 = phi i32 [ %25, %17 ], [ 0, %4 ], !dbg !45
  %30 = mul i32 %29, 33, !dbg !54
  %31 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !54
  %32 = load i8, i8* %27, align 1, !dbg !54, !tbaa !50
  %33 = zext i8 %32 to i32, !dbg !54
  %34 = add i32 %30, %33, !dbg !54
  br label %35, !dbg !54

; <label>:35:                                     ; preds = %4, %26
  %36 = phi i8* [ %31, %26 ], [ %0, %4 ], !dbg !45
  %37 = phi i64 [ %28, %26 ], [ %6, %4 ], !dbg !46
  %38 = phi i32 [ %34, %26 ], [ 0, %4 ], !dbg !45
  %39 = mul i32 %38, 33, !dbg !55
  %40 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !55
  %41 = load i8, i8* %36, align 1, !dbg !55, !tbaa !50
  %42 = zext i8 %41 to i32, !dbg !55
  %43 = add i32 %39, %42, !dbg !55
  br label %44, !dbg !55

; <label>:44:                                     ; preds = %4, %35
  %45 = phi i8* [ %40, %35 ], [ %0, %4 ], !dbg !45
  %46 = phi i64 [ %37, %35 ], [ %6, %4 ], !dbg !46
  %47 = phi i32 [ %43, %35 ], [ 0, %4 ], !dbg !45
  %48 = mul i32 %47, 33, !dbg !56
  %49 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !56
  %50 = load i8, i8* %45, align 1, !dbg !56, !tbaa !50
  %51 = zext i8 %50 to i32, !dbg !56
  %52 = add i32 %48, %51, !dbg !56
  br label %53, !dbg !56

; <label>:53:                                     ; preds = %4, %44
  %54 = phi i8* [ %49, %44 ], [ %0, %4 ], !dbg !45
  %55 = phi i64 [ %46, %44 ], [ %6, %4 ], !dbg !46
  %56 = phi i32 [ %52, %44 ], [ 0, %4 ], !dbg !45
  %57 = mul i32 %56, 33, !dbg !57
  %58 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !57
  %59 = load i8, i8* %54, align 1, !dbg !57, !tbaa !50
  %60 = zext i8 %59 to i32, !dbg !57
  %61 = add i32 %57, %60, !dbg !57
  br label %62, !dbg !57

; <label>:62:                                     ; preds = %4, %53
  %63 = phi i8* [ %58, %53 ], [ %0, %4 ], !dbg !45
  %64 = phi i64 [ %55, %53 ], [ %6, %4 ], !dbg !46
  %65 = phi i32 [ %61, %53 ], [ 0, %4 ], !dbg !45
  %66 = mul i32 %65, 33, !dbg !58
  %67 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !58
  %68 = load i8, i8* %63, align 1, !dbg !58, !tbaa !50
  %69 = zext i8 %68 to i32, !dbg !58
  %70 = add i32 %66, %69, !dbg !58
  br label %71, !dbg !58

; <label>:71:                                     ; preds = %4, %62
  %72 = phi i8* [ %0, %4 ], [ %67, %62 ], !dbg !59
  %73 = phi i64 [ %6, %4 ], [ %64, %62 ], !dbg !60
  %74 = phi i32 [ 0, %4 ], [ %70, %62 ], !dbg !59
  %75 = mul i32 %74, 33, !dbg !61
  %76 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !61
  %77 = load i8, i8* %72, align 1, !dbg !61, !tbaa !50
  %78 = zext i8 %77 to i32, !dbg !61
  %79 = add i32 %75, %78, !dbg !61
  %80 = add i64 %73, -1, !dbg !62
  %81 = icmp eq i64 %80, 0, !dbg !63
  br i1 %81, label %83, label %8, !dbg !63, !llvm.loop !64

; <label>:82:                                     ; preds = %4
  unreachable

; <label>:83:                                     ; preds = %71, %2
  %84 = phi i32 [ %79, %71 ], [ 0, %2 ], !dbg !45
  ret i32 %84, !dbg !67
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__default_hash", scope: !2, file: !3, line: 56, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_func.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !12, !14}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 79, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 58, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "hash4", scope: !3, file: !3, line: 174, type: !7, isLocal: true, isDefinition: true, scopeLine: 177, isOptimized: true, unit: !2, retainedNodes: !22)
!22 = !{!23, !24, !25, !31, !32}
!23 = !DILocalVariable(name: "keyarg", arg: 1, scope: !21, file: !3, line: 175, type: !12)
!24 = !DILocalVariable(name: "len", arg: 2, scope: !21, file: !3, line: 176, type: !14)
!25 = !DILocalVariable(name: "key", scope: !21, file: !3, line: 178, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !29, line: 87, baseType: !30)
!29 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DILocalVariable(name: "loop", scope: !21, file: !3, line: 179, type: !14)
!32 = !DILocalVariable(name: "h", scope: !21, file: !3, line: 180, type: !9)
!33 = !DILocation(line: 175, column: 14, scope: !21)
!34 = !DILocation(line: 176, column: 9, scope: !21)
!35 = !DILocation(line: 180, column: 13, scope: !21)
!36 = !DILocation(line: 178, column: 16, scope: !21)
!37 = !DILocation(line: 188, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !21, file: !3, line: 188, column: 6)
!39 = !DILocation(line: 188, column: 6, scope: !21)
!40 = !DILocation(line: 189, column: 19, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !3, line: 188, column: 15)
!42 = !DILocation(line: 189, column: 24, scope: !41)
!43 = !DILocation(line: 179, column: 9, scope: !21)
!44 = !DILocation(line: 191, column: 3, scope: !41)
!45 = !DILocation(line: 0, scope: !21)
!46 = !DILocation(line: 0, scope: !41)
!47 = !DILocation(line: 194, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 193, column: 7)
!49 = distinct !DILexicalBlock(scope: !41, file: !3, line: 191, column: 26)
!50 = !{!51, !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 197, column: 5, scope: !48)
!54 = !DILocation(line: 200, column: 5, scope: !48)
!55 = !DILocation(line: 203, column: 5, scope: !48)
!56 = !DILocation(line: 206, column: 5, scope: !48)
!57 = !DILocation(line: 209, column: 5, scope: !48)
!58 = !DILocation(line: 212, column: 5, scope: !48)
!59 = !DILocation(line: 0, scope: !48)
!60 = !DILocation(line: 0, scope: !49)
!61 = !DILocation(line: 215, column: 5, scope: !48)
!62 = !DILocation(line: 216, column: 13, scope: !49)
!63 = !DILocation(line: 216, column: 4, scope: !48)
!64 = distinct !{!64, !65, !66}
!65 = !DILocation(line: 193, column: 4, scope: !49)
!66 = !DILocation(line: 216, column: 19, scope: !49)
!67 = !DILocation(line: 219, column: 2, scope: !21)
