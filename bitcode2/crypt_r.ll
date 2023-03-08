; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_r.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypt_data = type { i32, [256 x i8] }

@__A_VARIABLE = internal global i32 0

@crypt_r = weak dso_local alias i8* (i8*, i8*, %struct.crypt_data*), i8* (i8*, i8*, %struct.crypt_data*)* @__crypt_r

; Function Attrs: noredzone nounwind
define dso_local i8* @__crypt_r(i8*, i8*, %struct.crypt_data*) #0 !dbg !10 {
  %4 = bitcast %struct.crypt_data* %2 to i8*, !dbg !33
  %5 = load i8, i8* %1, align 1, !dbg !35, !tbaa !37
  %6 = icmp eq i8 %5, 36, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %6, label %7, label %44, !dbg !41

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !42
  %9 = load i8, i8* %8, align 1, !dbg !42, !tbaa !37
  %10 = icmp eq i8 %9, 0, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %10, label %44, label %11, !dbg !43

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !44
  %13 = load i8, i8* %12, align 1, !dbg !44, !tbaa !37
  %14 = icmp eq i8 %13, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %14, label %44, label %15, !dbg !45

; <label>:15:                                     ; preds = %11
  %16 = icmp eq i8 %9, 49, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %16, label %17, label %22, !dbg !49

; <label>:17:                                     ; preds = %15
  %18 = icmp eq i8 %13, 36, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %18, label %20, label %19, !dbg !51

; <label>:19:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br label %30, !dbg !52

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @__crypt_md5(i8* %0, i8* nonnull %1, i8* %4) #3, !dbg !54
  br label %46, !dbg !55

; <label>:22:                                     ; preds = %15
  %23 = icmp eq i8 %9, 50, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %23, label %24, label %31, !dbg !52

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !57
  %26 = load i8, i8* %25, align 1, !dbg !57, !tbaa !37
  %27 = icmp eq i8 %26, 36, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %27, label %28, label %30, !dbg !59

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @__crypt_blowfish(i8* %0, i8* nonnull %1, i8* %4) #3, !dbg !60
  br label %46, !dbg !61

; <label>:30:                                     ; preds = %19, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br label %37, !dbg !62

; <label>:31:                                     ; preds = %22
  %32 = icmp eq i8 %9, 53, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %32, label %33, label %38, !dbg !62

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i8 %13, 36, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %34, label %35, label %37, !dbg !66

; <label>:35:                                     ; preds = %33
  %36 = tail call i8* @__crypt_sha256(i8* %0, i8* nonnull %1, i8* %4) #3, !dbg !67
  br label %46, !dbg !68

; <label>:37:                                     ; preds = %30, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br label %44, !dbg !69

; <label>:38:                                     ; preds = %31
  %39 = icmp eq i8 %9, 54, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %39, label %40, label %44, !dbg !69

; <label>:40:                                     ; preds = %38
  %41 = icmp eq i8 %13, 36, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %41, label %42, label %44, !dbg !73

; <label>:42:                                     ; preds = %40
  %43 = tail call i8* @__crypt_sha512(i8* %0, i8* nonnull %1, i8* %4) #3, !dbg !74
  br label %46, !dbg !75

; <label>:44:                                     ; preds = %37, %11, %7, %38, %40, %3
  %45 = tail call i8* @__crypt_des(i8* %0, i8* nonnull %1, i8* %4) #3, !dbg !76
  br label %46, !dbg !77

; <label>:46:                                     ; preds = %44, %42, %35, %28, %20
  %47 = phi i8* [ %21, %20 ], [ %29, %28 ], [ %36, %35 ], [ %43, %42 ], [ %45, %44 ], !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  ret i8* %47, !dbg !80
}

; Function Attrs: noredzone
declare dso_local i8* @__crypt_md5(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__crypt_blowfish(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__crypt_sha256(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__crypt_sha512(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__crypt_des(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "__crypt_r", scope: !1, file: !1, line: 3, type: !11, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypt_data", file: !17, line: 8, size: 2080, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/include/../../include/crypt.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !16, file: !17, line: 9, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__buf", scope: !16, file: !17, line: 10, baseType: !22, size: 2048, offset: 32)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !{!26, !27, !28, !29}
!26 = !DILocalVariable(name: "key", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!27 = !DILocalVariable(name: "salt", arg: 2, scope: !10, file: !1, line: 3, type: !13)
!28 = !DILocalVariable(name: "data", arg: 3, scope: !10, file: !1, line: 3, type: !15)
!29 = !DILocalVariable(name: "output", scope: !10, file: !1, line: 9, type: !4)
!30 = !DILocation(line: 3, column: 29, scope: !10)
!31 = !DILocation(line: 3, column: 46, scope: !10)
!32 = !DILocation(line: 3, column: 71, scope: !10)
!33 = !DILocation(line: 9, column: 17, scope: !10)
!34 = !DILocation(line: 9, column: 8, scope: !10)
!35 = !DILocation(line: 10, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 6)
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 10, column: 14, scope: !36)
!41 = !DILocation(line: 10, column: 21, scope: !36)
!42 = !DILocation(line: 10, column: 24, scope: !36)
!43 = !DILocation(line: 10, column: 32, scope: !36)
!44 = !DILocation(line: 10, column: 35, scope: !36)
!45 = !DILocation(line: 10, column: 6, scope: !10)
!46 = !DILocation(line: 11, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 11, column: 7)
!48 = distinct !DILexicalBlock(scope: !36, file: !1, line: 10, column: 44)
!49 = !DILocation(line: 11, column: 22, scope: !47)
!50 = !DILocation(line: 11, column: 33, scope: !47)
!51 = !DILocation(line: 11, column: 7, scope: !48)
!52 = !DILocation(line: 13, column: 22, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 13, column: 7)
!54 = !DILocation(line: 12, column: 11, scope: !47)
!55 = !DILocation(line: 12, column: 4, scope: !47)
!56 = !DILocation(line: 13, column: 15, scope: !53)
!57 = !DILocation(line: 13, column: 25, scope: !53)
!58 = !DILocation(line: 13, column: 33, scope: !53)
!59 = !DILocation(line: 13, column: 7, scope: !48)
!60 = !DILocation(line: 14, column: 11, scope: !53)
!61 = !DILocation(line: 14, column: 4, scope: !53)
!62 = !DILocation(line: 15, column: 22, scope: !63)
!63 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 7)
!64 = !DILocation(line: 15, column: 15, scope: !63)
!65 = !DILocation(line: 15, column: 33, scope: !63)
!66 = !DILocation(line: 15, column: 7, scope: !48)
!67 = !DILocation(line: 16, column: 11, scope: !63)
!68 = !DILocation(line: 16, column: 4, scope: !63)
!69 = !DILocation(line: 17, column: 22, scope: !70)
!70 = distinct !DILexicalBlock(scope: !48, file: !1, line: 17, column: 7)
!71 = !DILocation(line: 17, column: 15, scope: !70)
!72 = !DILocation(line: 17, column: 33, scope: !70)
!73 = !DILocation(line: 17, column: 7, scope: !48)
!74 = !DILocation(line: 18, column: 11, scope: !70)
!75 = !DILocation(line: 18, column: 4, scope: !70)
!76 = !DILocation(line: 20, column: 9, scope: !10)
!77 = !DILocation(line: 20, column: 2, scope: !10)
!78 = !DILocation(line: 0, scope: !10)
!79 = !DILocation(line: 0, scope: !47)
!80 = !DILocation(line: 21, column: 1, scope: !10)
