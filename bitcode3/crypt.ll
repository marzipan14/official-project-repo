; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypt_data = type { i32, [256 x i8] }

@crypt.buf = internal global [128 x i8] zeroinitializer, align 16, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local i8* @crypt(i8*, i8*) local_unnamed_addr #0 !dbg !2 {
  %3 = tail call i8* @__crypt_r(i8* %0, i8* %1, %struct.crypt_data* bitcast ([128 x i8]* @crypt.buf to %struct.crypt_data*)) #3, !dbg !36
  ret i8* %3, !dbg !37
}

; Function Attrs: noredzone
declare dso_local i8* @__crypt_r(i8*, i8*, %struct.crypt_data*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf", scope: !2, file: !3, line: 12, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "crypt", scope: !3, file: !3, line: 4, type: !4, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !24)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !23)
!11 = !{}
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypt_data", file: !15, line: 8, size: 2080, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/include/../../include/crypt.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !14, file: !15, line: 9, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "__buf", scope: !14, file: !15, line: 10, baseType: !20, size: 2048, offset: 32)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 256)
!23 = !{!0}
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 4, type: !8)
!26 = !DILocalVariable(name: "salt", arg: 2, scope: !2, file: !3, line: 4, type: !8)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 128)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!34 = !DILocation(line: 4, column: 25, scope: !2)
!35 = !DILocation(line: 4, column: 42, scope: !2)
!36 = !DILocation(line: 13, column: 9, scope: !2)
!37 = !DILocation(line: 13, column: 2, scope: !2)
