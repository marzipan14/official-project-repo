; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/aligned_alloc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/aligned_alloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind allocsize(1)
define dso_local noalias i8* @aligned_alloc(i64, i64) local_unnamed_addr #0 !dbg !9 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !23
  %5 = call i32 @posix_memalign(i8** nonnull %3, i64 %0, i64 %1) #5, !dbg !25
  %6 = icmp eq i32 %5, 0, !dbg !27
  %7 = load i8*, i8** %3, align 8, !dbg !28
  %8 = select i1 %6, i8* %7, i8* null, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  ret i8* %8, !dbg !31
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind allocsize(1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/aligned_alloc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "aligned_alloc", scope: !1, file: !1, line: 30, type: !10, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DILocalVariable(name: "alignment", arg: 1, scope: !9, file: !1, line: 30, type: !12)
!17 = !DILocalVariable(name: "size", arg: 2, scope: !9, file: !1, line: 30, type: !12)
!18 = !DILocalVariable(name: "p", scope: !9, file: !1, line: 32, type: !4)
!19 = !DILocalVariable(name: "error", scope: !9, file: !1, line: 33, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocation(line: 30, column: 22, scope: !9)
!22 = !DILocation(line: 30, column: 40, scope: !9)
!23 = !DILocation(line: 32, column: 2, scope: !9)
!24 = !DILocation(line: 32, column: 8, scope: !9)
!25 = !DILocation(line: 35, column: 10, scope: !9)
!26 = !DILocation(line: 33, column: 6, scope: !9)
!27 = !DILocation(line: 37, column: 16, scope: !9)
!28 = !DILocation(line: 37, column: 23, scope: !9)
!29 = !DILocation(line: 37, column: 10, scope: !9)
!30 = !DILocation(line: 38, column: 1, scope: !9)
!31 = !DILocation(line: 37, column: 2, scope: !9)
