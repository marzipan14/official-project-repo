; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/quick_exit.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/quick_exit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quick_exit_handler = type { %struct.quick_exit_handler*, void ()* }

@handlers = internal unnamed_addr global %struct.quick_exit_handler* null, align 8, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @at_quick_exit(void ()*) local_unnamed_addr #0 !dbg !20 {
  %2 = tail call i8* @malloc(i64 16) #5, !dbg !28
  %3 = icmp eq i8* %2, null, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %3, label %9, label %4, !dbg !31

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !33
  %6 = bitcast i8* %5 to void ()**, !dbg !33
  store void ()* %0, void ()** %6, align 8, !dbg !34, !tbaa !35
  %7 = load i64, i64* bitcast (%struct.quick_exit_handler** @handlers to i64*), align 8, !dbg !40, !tbaa !41
  %8 = bitcast i8* %2 to i64*, !dbg !42
  store i64 %7, i64* %8, align 8, !dbg !42, !tbaa !43
  store i8* %2, i8** bitcast (%struct.quick_exit_handler** @handlers to i8**), align 8, !dbg !44, !tbaa !41
  br label %9, !dbg !45

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i32 %10, !dbg !48
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone noreturn nounwind
define dso_local void @quick_exit(i32) local_unnamed_addr #2 !dbg !49 {
  %2 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** @handlers, align 8, !dbg !56, !tbaa !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  %3 = icmp eq %struct.quick_exit_handler* %2, null, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %3, label %11, label %4, !dbg !62

; <label>:4:                                      ; preds = %1, %4
  %5 = phi %struct.quick_exit_handler* [ %9, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.quick_exit_handler, %struct.quick_exit_handler* %5, i64 0, i32 1, !dbg !63
  %7 = load void ()*, void ()** %6, align 8, !dbg !63, !tbaa !35
  tail call void %7() #5, !dbg !64
  %8 = getelementptr inbounds %struct.quick_exit_handler, %struct.quick_exit_handler* %5, i64 0, i32 0, !dbg !65
  %9 = load %struct.quick_exit_handler*, %struct.quick_exit_handler** %8, align 8, !dbg !65, !tbaa !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %10 = icmp eq %struct.quick_exit_handler* %9, null, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %10, label %11, label %4, !dbg !62, !llvm.loop !67

; <label>:11:                                     ; preds = %4, %1
  tail call void @_exit(i32 %0) #6, !dbg !69
  unreachable
}

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "handlers", scope: !2, file: !3, line: 53, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/quick_exit.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quick_exit_handler", file: !3, line: 39, size: 128, elements: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !9, file: !3, line: 40, baseType: !8, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !9, file: !3, line: 41, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "at_quick_exit", scope: !3, file: !3, line: 56, type: !21, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !13}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "func", arg: 1, scope: !20, file: !3, line: 56, type: !13)
!26 = !DILocalVariable(name: "h", scope: !20, file: !3, line: 58, type: !8)
!27 = !DILocation(line: 56, column: 22, scope: !20)
!28 = !DILocation(line: 60, column: 6, scope: !20)
!29 = !DILocation(line: 62, column: 11, scope: !30)
!30 = distinct !DILexicalBlock(scope: !20, file: !3, line: 62, column: 6)
!31 = !DILocation(line: 62, column: 6, scope: !20)
!32 = !DILocation(line: 58, column: 29, scope: !20)
!33 = !DILocation(line: 64, column: 5, scope: !20)
!34 = !DILocation(line: 64, column: 13, scope: !20)
!35 = !{!36, !37, i64 8}
!36 = !{!"quick_exit_handler", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 68, column: 12, scope: !20)
!41 = !{!37, !37, i64 0}
!42 = !DILocation(line: 68, column: 10, scope: !20)
!43 = !{!36, !37, i64 0}
!44 = !DILocation(line: 69, column: 11, scope: !20)
!45 = !DILocation(line: 73, column: 2, scope: !20)
!46 = !DILocation(line: 0, scope: !20)
!47 = !DILocation(line: 0, scope: !30)
!48 = !DILocation(line: 74, column: 1, scope: !20)
!49 = distinct !DISubprogram(name: "quick_exit", scope: !3, file: !3, line: 77, type: !50, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !23}
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "status", arg: 1, scope: !49, file: !3, line: 77, type: !23)
!54 = !DILocalVariable(name: "h", scope: !49, file: !3, line: 79, type: !8)
!55 = !DILocation(line: 77, column: 16, scope: !49)
!56 = !DILocation(line: 85, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !3, line: 85, column: 2)
!58 = !DILocation(line: 79, column: 29, scope: !49)
!59 = !DILocation(line: 85, column: 7, scope: !57)
!60 = !DILocation(line: 85, column: 26, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !3, line: 85, column: 2)
!62 = !DILocation(line: 85, column: 2, scope: !57)
!63 = !DILocation(line: 86, column: 6, scope: !61)
!64 = !DILocation(line: 86, column: 3, scope: !61)
!65 = !DILocation(line: 85, column: 39, scope: !61)
!66 = !DILocation(line: 85, column: 2, scope: !61)
!67 = distinct !{!67, !62, !68}
!68 = !DILocation(line: 86, column: 14, scope: !57)
!69 = !DILocation(line: 87, column: 2, scope: !49)
