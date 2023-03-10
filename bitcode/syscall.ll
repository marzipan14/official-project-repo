; ModuleID = '/root/.unikraft/libs/newlib/syscall.c'
source_filename = "/root/.unikraft/libs/newlib/syscall.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"No such system call %lu\0A\00", align 1
@uk_pr_err.__str = internal global [14 x i8] c"libnewlibglue\00", section ".data_shared", align 1, !dbg !0
@uk_pr_err.__str.1 = internal global [10 x i8] c"syscall.c\00", section ".data_shared", align 1, !dbg !13
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @syscall(i64, ...) local_unnamed_addr #0 !dbg !42 {
  tail call void (i8*, ...) @uk_pr_err(i8* undef, i64 %0) #6, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  ret i64 -88, !dbg !50
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_err(i8* nocapture readnone, ...) unnamed_addr #2 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !51
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !53
  call void @llvm.va_start(i8* nonnull %3), !dbg !53
  call void @_uk_vprintk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @uk_pr_err.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_err.__str.1, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !54
  call void @llvm.va_end(i8* nonnull %3), !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret void, !dbg !58
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 190, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_err", scope: !3, file: !3, line: 186, type: !4, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !18)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !12)
!10 = !DIFile(filename: "/root/.unikraft/libs/newlib/syscall.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{}
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 190, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 10)
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 186, type: !6)
!20 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 188, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 188, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !33)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 188, size: 192, elements: !26)
!26 = !{!27, !29, !30, !32}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !25, file: !10, line: 188, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !25, file: !10, line: 188, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !25, file: !10, line: 188, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !25, file: !10, line: 188, baseType: !31, size: 64, offset: 128)
!33 = !{!34}
!34 = !DISubrange(count: 1)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 112, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 14)
!38 = !{i32 2, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!42 = distinct !DISubprogram(name: "syscall", scope: !10, file: !10, line: 67, type: !43, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !45, null}
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !{!47}
!47 = !DILocalVariable(name: "num", arg: 1, scope: !42, file: !10, line: 67, type: !45)
!48 = !DILocation(line: 67, column: 19, scope: !42)
!49 = !DILocation(line: 69, column: 2, scope: !42)
!50 = !DILocation(line: 70, column: 2, scope: !42)
!51 = !DILocation(line: 188, column: 2, scope: !2)
!52 = !DILocation(line: 188, column: 10, scope: !2)
!53 = !DILocation(line: 189, column: 2, scope: !2)
!54 = !DILocation(line: 190, column: 2, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 190, column: 2)
!56 = distinct !DILexicalBlock(scope: !2, file: !3, line: 190, column: 2)
!57 = !DILocation(line: 191, column: 2, scope: !2)
!58 = !DILocation(line: 192, column: 1, scope: !2)
