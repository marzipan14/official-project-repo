; ModuleID = '/root/.unikraft/libs/lwip/time.c'
source_filename = "/root/.unikraft/libs/lwip/time.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }

@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_now() local_unnamed_addr #0 !dbg !18 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4, !dbg !36
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !37, !srcloc !45
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !47
  br i1 %4, label %10, label %5, !dbg !47

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !48, !srcloc !45
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !47
  br i1 %7, label %10, label %8, !dbg !51

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_monotonic_clock() #5, !dbg !52
  store i64 %9, i64* %1, align 8, !dbg !52, !tbaa !55
  br label %19, !dbg !52

; <label>:10:                                     ; preds = %5, %0
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !59, !srcloc !45
  %12 = and i64 %11, -65536, !dbg !70
  %13 = or i64 %12, 4097, !dbg !70
  %14 = add nsw i64 %13, -1, !dbg !70
  %15 = inttoptr i64 %14 to i32*, !dbg !71
  %16 = load i32, i32* %15, align 4096, !dbg !72, !tbaa !73
  %17 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %16, i64 ()* nonnull @ukplat_monotonic_clock) #4, !dbg !75, !srcloc !76
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %1, i64 %17) #4, !dbg !77, !srcloc !81
  %18 = load i64, i64* %1, align 8, !dbg !82, !tbaa !55
  br label %19

; <label>:19:                                     ; preds = %10, %8
  %20 = phi i64 [ %18, %10 ], [ %9, %8 ], !dbg !82
  %21 = udiv i64 %20, 1000000, !dbg !82
  %22 = trunc i64 %21 to i32, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4, !dbg !84
  ret i32 %22, !dbg !85
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/libs/lwip/time.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !12}
!4 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !6, line: 129, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 79, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "sys_now", scope: !1, file: !1, line: 39, type: !19, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!5}
!21 = !{!22, !27, !33}
!22 = !DILocalVariable(name: "time", scope: !18, file: !1, line: 41, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !24, line: 48, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !26, line: 129, baseType: !4)
!26 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DILocalVariable(name: "tid", scope: !28, file: !1, line: 42, type: !7)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 42, column: 2)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 42, column: 2)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 42, column: 2)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 42, column: 2)
!32 = distinct !DILexicalBlock(scope: !18, file: !1, line: 42, column: 2)
!33 = !DILocalVariable(name: "_ret", scope: !28, file: !1, line: 42, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 60, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 105, baseType: !4)
!36 = !DILocation(line: 41, column: 2, scope: !18)
!37 = !DILocation(line: 120, column: 2, scope: !38, inlinedAt: !44)
!38 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !39, file: !39, line: 116, type: !40, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !42)
!39 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DISubroutineType(types: !41)
!41 = !{!4}
!42 = !{!43}
!43 = !DILocalVariable(name: "sp", scope: !38, file: !39, line: 118, type: !4)
!44 = distinct !DILocation(line: 42, column: 2, scope: !31)
!45 = !{i32 421137}
!46 = !DILocation(line: 118, column: 16, scope: !38, inlinedAt: !44)
!47 = !DILocation(line: 42, column: 2, scope: !31)
!48 = !DILocation(line: 120, column: 2, scope: !38, inlinedAt: !49)
!49 = distinct !DILocation(line: 42, column: 2, scope: !31)
!50 = !DILocation(line: 118, column: 16, scope: !38, inlinedAt: !49)
!51 = !DILocation(line: 42, column: 2, scope: !32)
!52 = !DILocation(line: 42, column: 2, scope: !53)
!53 = distinct !DILexicalBlock(scope: !31, file: !1, line: 42, column: 2)
!54 = !DILocation(line: 41, column: 9, scope: !18)
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 120, column: 2, scope: !38, inlinedAt: !60)
!60 = distinct !DILocation(line: 49, column: 21, scope: !61, inlinedAt: !67)
!61 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !62, file: !62, line: 47, type: !63, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !65)
!62 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DISubroutineType(types: !64)
!64 = !{!13}
!65 = !{!66}
!66 = !DILocalVariable(name: "sp", scope: !61, file: !62, line: 49, type: !4)
!67 = distinct !DILocation(line: 42, column: 2, scope: !28)
!68 = !DILocation(line: 118, column: 16, scope: !38, inlinedAt: !60)
!69 = !DILocation(line: 49, column: 16, scope: !61, inlinedAt: !67)
!70 = !DILocation(line: 50, column: 19, scope: !61, inlinedAt: !67)
!71 = !DILocation(line: 50, column: 11, scope: !61, inlinedAt: !67)
!72 = !DILocation(line: 50, column: 9, scope: !61, inlinedAt: !67)
!73 = !{!74, !74, i64 0}
!74 = !{!"int", !57, i64 0}
!75 = !DILocation(line: 42, column: 2, scope: !28)
!76 = !{i32 -2146447343, i32 -2146447330, i32 -2146447305, i32 -2146447281, i32 -2146447256, i32 -2146447181, i32 -2146447156, i32 -2146447012, i32 -2146443913, i32 -2146443824, i32 -2146443703, i32 -2146443608, i32 -2146443507, i32 -2146443480, i32 -2146443397, i32 -2146443308, i32 -2146443187, i32 -2146443087, i32 -2146442981, i32 -2146442873, i32 -2146446729, i32 -2146446676, i32 -2146446645, i32 -2146446614, i32 -2146446593, i32 -2146446571, i32 -2146446522, i32 -2146446501, i32 -2146442790, i32 -2146442701, i32 -2146442580, i32 -2146442481, i32 -2146442375, i32 -2146442273, i32 -2146442240, i32 -2146442167, i32 -2146442099, i32 -2146446199, i32 -2146446140, i32 -2146446087, i32 -2146446056, i32 -2146446025, i32 -2146446004, i32 -2146445982, i32 -2146445933, i32 -2146445912, i32 -2146442041, i32 -2146441952, i32 -2146441831, i32 -2146441732, i32 -2146441626, i32 -2146441524, i32 -2146441491, i32 -2146441408, i32 -2146441319, i32 -2146441198, i32 -2146441098, i32 -2146441072, i32 -2146440969, i32 -2146440943, i32 -2146445654, i32 -2146445587, i32 -2146445562, i32 -2146445498, i32 -2146445416, i32 -2146445393, i32 -2146445368, i32 -2146445343}
!77 = !DILocation(line: 42, column: 2, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 42, column: 2)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 42, column: 2)
!80 = distinct !DILexicalBlock(scope: !28, file: !1, line: 42, column: 2)
!81 = !{i32 -2146444189, i32 -2146444173}
!82 = !DILocation(line: 44, column: 17, scope: !18)
!83 = !DILocation(line: 44, column: 9, scope: !18)
!84 = !DILocation(line: 45, column: 1, scope: !18)
!85 = !DILocation(line: 44, column: 2, scope: !18)
