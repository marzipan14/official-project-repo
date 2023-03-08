; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_add_sep.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_add_sep.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @argz_add_sep(i8** nocapture, i64* nocapture, i8*, i32) local_unnamed_addr #0 !dbg !10 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = bitcast i8** %5 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4, !dbg !34
  store i8* null, i8** %5, align 8, !dbg !35, !tbaa !36
  %8 = bitcast i64* %6 to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !40
  store i64 0, i64* %6, align 8, !dbg !41, !tbaa !42
  %9 = load i64, i64* %1, align 8, !dbg !44, !tbaa !42
  %10 = call i32 @argz_create_sep(i8* %2, i32 %3, i8** nonnull %5, i64* nonnull %6) #5, !dbg !46
  %11 = load i64, i64* %6, align 8, !dbg !47, !tbaa !42
  %12 = icmp eq i64 %11, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %12, label %24, label %13, !dbg !49

; <label>:13:                                     ; preds = %4
  %14 = load i64, i64* %1, align 8, !dbg !50, !tbaa !42
  %15 = add i64 %14, %11, !dbg !50
  store i64 %15, i64* %1, align 8, !dbg !50, !tbaa !42
  %16 = load i8*, i8** %0, align 8, !dbg !52, !tbaa !36
  %17 = call i8* @realloc(i8* %16, i64 %15) #5, !dbg !54
  store i8* %17, i8** %0, align 8, !dbg !55, !tbaa !36
  %18 = icmp eq i8* %17, null, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %18, label %24, label %19, !dbg !56

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds i8, i8* %17, i64 %9, !dbg !57
  %21 = load i8*, i8** %5, align 8, !dbg !58, !tbaa !36
  %22 = load i64, i64* %6, align 8, !dbg !59, !tbaa !42
  %23 = call i8* @memcpy(i8* nonnull %20, i8* %21, i64 %22) #5, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %24, !dbg !61

; <label>:24:                                     ; preds = %19, %4, %13
  %25 = phi i32 [ 12, %13 ], [ 0, %4 ], [ 0, %19 ], !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  ret i32 %25, !dbg !63
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @argz_create_sep(i8*, i32, i8**, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_add_sep.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "argz_add_sep", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !17, !23, !15}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_t", file: !14, line: 5, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/errno.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 40, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !21, line: 129, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !{!26, !27, !28, !29, !30, !31, !32}
!26 = !DILocalVariable(name: "argz", arg: 1, scope: !10, file: !1, line: 14, type: !16)
!27 = !DILocalVariable(name: "argz_len", arg: 2, scope: !10, file: !1, line: 14, type: !17)
!28 = !DILocalVariable(name: "str", arg: 3, scope: !10, file: !1, line: 14, type: !23)
!29 = !DILocalVariable(name: "sep", arg: 4, scope: !10, file: !1, line: 14, type: !15)
!30 = !DILocalVariable(name: "str_argz", scope: !10, file: !1, line: 20, type: !4)
!31 = !DILocalVariable(name: "str_argz_len", scope: !10, file: !1, line: 21, type: !18)
!32 = !DILocalVariable(name: "last", scope: !10, file: !1, line: 22, type: !18)
!33 = !DILocation(line: 14, column: 1, scope: !10)
!34 = !DILocation(line: 20, column: 3, scope: !10)
!35 = !DILocation(line: 20, column: 9, scope: !10)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 21, column: 3, scope: !10)
!41 = !DILocation(line: 21, column: 10, scope: !10)
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !38, i64 0}
!44 = !DILocation(line: 22, column: 17, scope: !10)
!45 = !DILocation(line: 22, column: 10, scope: !10)
!46 = !DILocation(line: 24, column: 3, scope: !10)
!47 = !DILocation(line: 26, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !10, file: !1, line: 26, column: 7)
!49 = !DILocation(line: 26, column: 7, scope: !10)
!50 = !DILocation(line: 28, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 27, column: 5)
!52 = !DILocation(line: 30, column: 36, scope: !53)
!53 = distinct !DILexicalBlock(scope: !51, file: !1, line: 30, column: 10)
!54 = !DILocation(line: 30, column: 28, scope: !53)
!55 = !DILocation(line: 30, column: 18, scope: !53)
!56 = !DILocation(line: 30, column: 10, scope: !51)
!57 = !DILocation(line: 33, column: 20, scope: !51)
!58 = !DILocation(line: 33, column: 28, scope: !51)
!59 = !DILocation(line: 33, column: 38, scope: !51)
!60 = !DILocation(line: 33, column: 7, scope: !51)
!61 = !DILocation(line: 34, column: 5, scope: !51)
!62 = !DILocation(line: 0, scope: !53)
!63 = !DILocation(line: 36, column: 1, scope: !10)
