; ModuleID = '/root/.unikraft/libs/lwip/time.c'
source_filename = "/root/.unikraft/libs/lwip/time.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }

@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_now() local_unnamed_addr #0 !dbg !18 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4, !dbg !36
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !37, !srcloc !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %4, label %10, label %5, !dbg !48

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !49, !srcloc !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %7, label %10, label %8, !dbg !53

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_monotonic_clock() #5, !dbg !54
  store i64 %9, i64* %1, align 8, !dbg !54, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br label %19, !dbg !54

; <label>:10:                                     ; preds = %5, %0
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !61, !srcloc !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  %12 = and i64 %11, -65536, !dbg !73
  %13 = or i64 %12, 4097, !dbg !73
  %14 = add nsw i64 %13, -1, !dbg !73
  %15 = inttoptr i64 %14 to i32*, !dbg !74
  %16 = load i32, i32* %15, align 4096, !dbg !75, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  %17 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %16, i64 ()* nonnull @ukplat_monotonic_clock) #4, !dbg !79, !srcloc !80
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %1, i64 %17) #4, !dbg !81, !srcloc !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = load i64, i64* %1, align 8, !dbg !86, !tbaa !57
  br label %19

; <label>:19:                                     ; preds = %10, %8
  %20 = phi i64 [ %18, %10 ], [ %9, %8 ], !dbg !86
  %21 = udiv i64 %20, 1000000, !dbg !86
  %22 = trunc i64 %21 to i32, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  ret i32 %22, !dbg !89
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
!47 = !DILocation(line: 121, column: 2, scope: !38, inlinedAt: !44)
!48 = !DILocation(line: 42, column: 2, scope: !31)
!49 = !DILocation(line: 120, column: 2, scope: !38, inlinedAt: !50)
!50 = distinct !DILocation(line: 42, column: 2, scope: !31)
!51 = !DILocation(line: 118, column: 16, scope: !38, inlinedAt: !50)
!52 = !DILocation(line: 121, column: 2, scope: !38, inlinedAt: !50)
!53 = !DILocation(line: 42, column: 2, scope: !32)
!54 = !DILocation(line: 42, column: 2, scope: !55)
!55 = distinct !DILexicalBlock(scope: !31, file: !1, line: 42, column: 2)
!56 = !DILocation(line: 41, column: 9, scope: !18)
!57 = !{!58, !58, i64 0}
!58 = !{!"long", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 120, column: 2, scope: !38, inlinedAt: !62)
!62 = distinct !DILocation(line: 49, column: 21, scope: !63, inlinedAt: !69)
!63 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !64, file: !64, line: 47, type: !65, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !67)
!64 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DISubroutineType(types: !66)
!66 = !{!13}
!67 = !{!68}
!68 = !DILocalVariable(name: "sp", scope: !63, file: !64, line: 49, type: !4)
!69 = distinct !DILocation(line: 42, column: 2, scope: !28)
!70 = !DILocation(line: 118, column: 16, scope: !38, inlinedAt: !62)
!71 = !DILocation(line: 121, column: 2, scope: !38, inlinedAt: !62)
!72 = !DILocation(line: 49, column: 16, scope: !63, inlinedAt: !69)
!73 = !DILocation(line: 50, column: 19, scope: !63, inlinedAt: !69)
!74 = !DILocation(line: 50, column: 11, scope: !63, inlinedAt: !69)
!75 = !DILocation(line: 50, column: 9, scope: !63, inlinedAt: !69)
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !59, i64 0}
!78 = !DILocation(line: 50, column: 2, scope: !63, inlinedAt: !69)
!79 = !DILocation(line: 42, column: 2, scope: !28)
!80 = !{i32 -2146447337, i32 -2146447324, i32 -2146447299, i32 -2146447275, i32 -2146447250, i32 -2146447175, i32 -2146447150, i32 -2146447006, i32 -2146443907, i32 -2146443818, i32 -2146443697, i32 -2146443602, i32 -2146443501, i32 -2146443474, i32 -2146443391, i32 -2146443302, i32 -2146443181, i32 -2146443081, i32 -2146442975, i32 -2146442867, i32 -2146446723, i32 -2146446670, i32 -2146446639, i32 -2146446608, i32 -2146446587, i32 -2146446565, i32 -2146446516, i32 -2146446495, i32 -2146442784, i32 -2146442695, i32 -2146442574, i32 -2146442475, i32 -2146442369, i32 -2146442267, i32 -2146442234, i32 -2146442161, i32 -2146442093, i32 -2146446193, i32 -2146446134, i32 -2146446081, i32 -2146446050, i32 -2146446019, i32 -2146445998, i32 -2146445976, i32 -2146445927, i32 -2146445906, i32 -2146442035, i32 -2146441946, i32 -2146441825, i32 -2146441726, i32 -2146441620, i32 -2146441518, i32 -2146441485, i32 -2146441402, i32 -2146441313, i32 -2146441192, i32 -2146441092, i32 -2146441066, i32 -2146440963, i32 -2146440937, i32 -2146445648, i32 -2146445581, i32 -2146445556, i32 -2146445492, i32 -2146445410, i32 -2146445387, i32 -2146445362, i32 -2146445337}
!81 = !DILocation(line: 42, column: 2, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 42, column: 2)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 42, column: 2)
!84 = distinct !DILexicalBlock(scope: !28, file: !1, line: 42, column: 2)
!85 = !{i32 -2146444183, i32 -2146444167}
!86 = !DILocation(line: 44, column: 17, scope: !18)
!87 = !DILocation(line: 44, column: 9, scope: !18)
!88 = !DILocation(line: 45, column: 1, scope: !18)
!89 = !DILocation(line: 44, column: 2, scope: !18)
