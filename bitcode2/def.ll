; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/def.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/def.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #0 !dbg !29 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i16 %2, !dbg !35
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_htonl(i32) local_unnamed_addr #0 !dbg !36 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0), !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret i32 %2, !dbg !43
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lwip_strnstr(i8*, i8*, i64) local_unnamed_addr #0 !dbg !44 {
  %4 = tail call i64 @strlen(i8* %1) #3, !dbg !58
  %5 = icmp eq i64 %4, 0, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %5, label %28, label %6, !dbg !62

; <label>:6:                                      ; preds = %3
  %7 = load i8, i8* %0, align 1, !dbg !66, !tbaa !68
  %8 = icmp eq i8 %7, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %8, label %26, label %9, !dbg !71

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds i8, i8* %0, i64 %2
  br label %11, !dbg !71

; <label>:11:                                     ; preds = %9, %22
  %12 = phi i8 [ %7, %9 ], [ %24, %22 ]
  %13 = phi i8* [ %0, %9 ], [ %23, %22 ]
  %14 = getelementptr inbounds i8, i8* %13, i64 %4, !dbg !72
  %15 = icmp ugt i8* %14, %10, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %15, label %26, label %16, !dbg !74

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %1, align 1, !dbg !75, !tbaa !68
  %18 = icmp eq i8 %12, %17, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br i1 %18, label %19, label %22, !dbg !79

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strncmp(i8* nonnull %13, i8* nonnull %1, i64 %4) #3, !dbg !80
  %21 = icmp eq i32 %20, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %21, label %26, label %22, !dbg !82

; <label>:22:                                     ; preds = %16, %19
  %23 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  %24 = load i8, i8* %23, align 1, !dbg !66, !tbaa !68
  %25 = icmp eq i8 %24, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %25, label %26, label %11, !dbg !71, !llvm.loop !85

; <label>:26:                                     ; preds = %11, %22, %19, %6
  %27 = phi i8* [ null, %6 ], [ null, %11 ], [ null, %22 ], [ %13, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br label %28, !dbg !89

; <label>:28:                                     ; preds = %26, %3
  %29 = phi i8* [ %0, %3 ], [ %27, %26 ], !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  ret i8* %29, !dbg !89
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_stricmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 !dbg !91 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br label %3, !dbg !109

; <label>:3:                                      ; preds = %21, %2
  %4 = phi i8* [ %1, %2 ], [ %8, %21 ]
  %5 = phi i8* [ %0, %2 ], [ %6, %21 ]
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !110
  %7 = load i8, i8* %5, align 1, !dbg !111, !tbaa !68
  %8 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !113
  %9 = load i8, i8* %4, align 1, !dbg !114, !tbaa !68
  %10 = icmp eq i8 %7, %9, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %10, label %21, label %11, !dbg !117

; <label>:11:                                     ; preds = %3
  %12 = or i8 %7, 32, !dbg !118
  %13 = icmp sgt i8 %12, 96, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br i1 %13, label %14, label %19, !dbg !121

; <label>:14:                                     ; preds = %11
  %15 = icmp slt i8 %12, 123, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br i1 %15, label %16, label %19, !dbg !123

; <label>:16:                                     ; preds = %14
  %17 = or i8 %9, 32, !dbg !124
  %18 = icmp eq i8 %12, %17, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %18, label %20, label %25

; <label>:19:                                     ; preds = %11, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  br label %23

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %3
  %22 = icmp eq i8 %7, 0, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br i1 %22, label %23, label %3, !dbg !134, !llvm.loop !135

; <label>:23:                                     ; preds = %21, %19
  %24 = phi i32 [ 1, %19 ], [ 0, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %25, !dbg !137

; <label>:25:                                     ; preds = %16, %23
  %26 = phi i32 [ %24, %23 ], [ 1, %16 ], !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  ret i32 %26, !dbg !137
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_strnicmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !138 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br label %4, !dbg !157

; <label>:4:                                      ; preds = %23, %3
  %5 = phi i64 [ %2, %3 ], [ %24, %23 ]
  %6 = phi i8* [ %1, %3 ], [ %10, %23 ]
  %7 = phi i8* [ %0, %3 ], [ %8, %23 ]
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !158
  %9 = load i8, i8* %7, align 1, !dbg !159, !tbaa !68
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !161
  %11 = load i8, i8* %6, align 1, !dbg !162, !tbaa !68
  %12 = icmp eq i8 %9, %11, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %12, label %23, label %13, !dbg !165

; <label>:13:                                     ; preds = %4
  %14 = or i8 %9, 32, !dbg !166
  %15 = icmp sgt i8 %14, 96, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %15, label %16, label %21, !dbg !169

; <label>:16:                                     ; preds = %13
  %17 = icmp slt i8 %14, 123, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %17, label %18, label %21, !dbg !171

; <label>:18:                                     ; preds = %16
  %19 = or i8 %11, 32, !dbg !172
  %20 = icmp eq i8 %14, %19, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %20, label %22, label %30

; <label>:21:                                     ; preds = %13, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  br label %28

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %23

; <label>:23:                                     ; preds = %22, %4
  %24 = add i64 %5, -1, !dbg !181
  %25 = icmp ne i64 %24, 0, !dbg !182
  %26 = icmp ne i8 %9, 0, !dbg !183
  %27 = and i1 %25, %26, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br i1 %27, label %4, label %28, !dbg !185, !llvm.loop !186

; <label>:28:                                     ; preds = %23, %21
  %29 = phi i32 [ 1, %21 ], [ 0, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %30, !dbg !188

; <label>:30:                                     ; preds = %18, %28
  %31 = phi i32 [ %29, %28 ], [ 1, %18 ], !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  ret i32 %31, !dbg !188
}

; Function Attrs: noredzone nounwind
define dso_local void @lwip_itoa(i8*, i64, i32) local_unnamed_addr #0 !dbg !189 {
  %4 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !205
  %5 = getelementptr inbounds i8, i8* %4, i64 -1, !dbg !206
  %6 = icmp slt i32 %2, 0, !dbg !208
  %7 = sub nsw i32 0, %2, !dbg !209
  %8 = select i1 %6, i32 %7, i32 %2, !dbg !210
  %9 = icmp ult i64 %1, 2, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br i1 %9, label %10, label %13, !dbg !214

; <label>:10:                                     ; preds = %3
  %11 = icmp eq i64 %1, 1, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %11, label %12, label %42, !dbg !218

; <label>:12:                                     ; preds = %10
  store i8 0, i8* %0, align 1, !dbg !219, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br label %42, !dbg !221

; <label>:13:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  br i1 %6, label %14, label %16, !dbg !222

; <label>:14:                                     ; preds = %13
  %15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !223
  store i8 45, i8* %0, align 1, !dbg !226, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br label %16, !dbg !227

; <label>:16:                                     ; preds = %14, %13
  %17 = phi i8* [ %15, %14 ], [ %0, %13 ], !dbg !228
  store i8 0, i8* %5, align 1, !dbg !229, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  %18 = icmp eq i32 %8, 0, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %18, label %19, label %20, !dbg !232

; <label>:19:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br label %35, !dbg !234

; <label>:20:                                     ; preds = %16, %24
  %21 = phi i32 [ %29, %24 ], [ %8, %16 ]
  %22 = phi i8* [ %28, %24 ], [ %5, %16 ]
  %23 = icmp ugt i8* %22, %17, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  br i1 %23, label %24, label %32, !dbg !230

; <label>:24:                                     ; preds = %20
  %25 = srem i32 %21, 10, !dbg !236
  %26 = trunc i32 %25 to i8, !dbg !237
  %27 = add i8 %26, 48, !dbg !237
  %28 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !239
  store i8 %27, i8* %28, align 1, !dbg !240, !tbaa !68
  %29 = sdiv i32 %21, 10, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  %30 = add i32 %21, 9, !dbg !231
  %31 = icmp ult i32 %30, 19, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %31, label %33, label %20, !dbg !232, !llvm.loop !242

; <label>:32:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  store i8 0, i8* %0, align 1, !dbg !244, !tbaa !68
  br label %42, !dbg !247

; <label>:33:                                     ; preds = %24
  %34 = icmp eq i8 %27, 0, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %34, label %35, label %37, !dbg !234

; <label>:35:                                     ; preds = %19, %33
  %36 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !248
  store i8 48, i8* %17, align 1, !dbg !251, !tbaa !68
  store i8 0, i8* %36, align 1, !dbg !252, !tbaa !68
  br label %42, !dbg !253

; <label>:37:                                     ; preds = %33
  %38 = ptrtoint i8* %4 to i64, !dbg !254
  %39 = ptrtoint i8* %28 to i64, !dbg !254
  %40 = sub i64 %38, %39, !dbg !254
  %41 = tail call i8* @memmove(i8* %17, i8* nonnull %28, i64 %40) #3, !dbg !255
  br label %42, !dbg !256

; <label>:42:                                     ; preds = %10, %12, %37, %35, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  ret void, !dbg !256
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/def.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !11, !15, !17, !16, !20}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !5, line: 127, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 36, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 57, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !5, line: 129, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !18, line: 49, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !23, line: 129, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!29 = distinct !DISubprogram(name: "lwip_htons", scope: !1, file: !1, line: 76, type: !30, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!4, !4}
!32 = !{!33}
!33 = !DILocalVariable(name: "n", arg: 1, scope: !29, file: !1, line: 76, type: !4)
!34 = !DILocation(line: 76, column: 18, scope: !29)
!35 = !DILocation(line: 78, column: 3, scope: !29)
!36 = distinct !DISubprogram(name: "lwip_htonl", scope: !1, file: !1, line: 90, type: !37, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!11, !11}
!39 = !{!40}
!40 = !DILocalVariable(name: "n", arg: 1, scope: !36, file: !1, line: 90, type: !11)
!41 = !DILocation(line: 90, column: 18, scope: !36)
!42 = !DILocation(line: 92, column: 10, scope: !36)
!43 = !DILocation(line: 92, column: 3, scope: !36)
!44 = distinct !DISubprogram(name: "lwip_strnstr", scope: !1, file: !1, line: 105, type: !45, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{!15, !47, !47, !20}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DILocalVariable(name: "buffer", arg: 1, scope: !44, file: !1, line: 105, type: !47)
!51 = !DILocalVariable(name: "token", arg: 2, scope: !44, file: !1, line: 105, type: !47)
!52 = !DILocalVariable(name: "n", arg: 3, scope: !44, file: !1, line: 105, type: !20)
!53 = !DILocalVariable(name: "p", scope: !44, file: !1, line: 107, type: !47)
!54 = !DILocalVariable(name: "tokenlen", scope: !44, file: !1, line: 108, type: !20)
!55 = !DILocation(line: 105, column: 26, scope: !44)
!56 = !DILocation(line: 105, column: 46, scope: !44)
!57 = !DILocation(line: 105, column: 60, scope: !44)
!58 = !DILocation(line: 108, column: 21, scope: !44)
!59 = !DILocation(line: 108, column: 10, scope: !44)
!60 = !DILocation(line: 109, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !44, file: !1, line: 109, column: 7)
!62 = !DILocation(line: 109, column: 7, scope: !44)
!63 = !DILocation(line: 0, scope: !64)
!64 = distinct !DILexicalBlock(scope: !44, file: !1, line: 112, column: 3)
!65 = !DILocation(line: 107, column: 15, scope: !44)
!66 = !DILocation(line: 112, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 112, column: 3)
!68 = !{!69, !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !DILocation(line: 112, column: 23, scope: !67)
!72 = !DILocation(line: 112, column: 29, scope: !67)
!73 = !DILocation(line: 112, column: 40, scope: !67)
!74 = !DILocation(line: 112, column: 3, scope: !64)
!75 = !DILocation(line: 113, column: 16, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 113, column: 9)
!77 = distinct !DILexicalBlock(scope: !67, file: !1, line: 112, column: 61)
!78 = !DILocation(line: 113, column: 13, scope: !76)
!79 = !DILocation(line: 113, column: 24, scope: !76)
!80 = !DILocation(line: 113, column: 28, scope: !76)
!81 = !DILocation(line: 113, column: 56, scope: !76)
!82 = !DILocation(line: 113, column: 9, scope: !77)
!83 = !DILocation(line: 112, column: 57, scope: !67)
!84 = !DILocation(line: 112, column: 3, scope: !67)
!85 = distinct !{!85, !74, !86}
!86 = !DILocation(line: 116, column: 3, scope: !64)
!87 = !DILocation(line: 0, scope: !88)
!88 = distinct !DILexicalBlock(scope: !76, file: !1, line: 113, column: 63)
!89 = !DILocation(line: 118, column: 1, scope: !44)
!90 = !DILocation(line: 0, scope: !44)
!91 = distinct !DISubprogram(name: "lwip_stricmp", scope: !1, file: !1, line: 128, type: !92, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !47, !47}
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !{!96, !97, !98, !99, !100, !104}
!96 = !DILocalVariable(name: "str1", arg: 1, scope: !91, file: !1, line: 128, type: !47)
!97 = !DILocalVariable(name: "str2", arg: 2, scope: !91, file: !1, line: 128, type: !47)
!98 = !DILocalVariable(name: "c1", scope: !91, file: !1, line: 130, type: !16)
!99 = !DILocalVariable(name: "c2", scope: !91, file: !1, line: 130, type: !16)
!100 = !DILocalVariable(name: "c1_upc", scope: !101, file: !1, line: 136, type: !16)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 135, column: 19)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 135, column: 9)
!103 = distinct !DILexicalBlock(scope: !91, file: !1, line: 132, column: 6)
!104 = !DILocalVariable(name: "c2_upc", scope: !105, file: !1, line: 140, type: !16)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 137, column: 47)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 137, column: 11)
!107 = !DILocation(line: 128, column: 26, scope: !91)
!108 = !DILocation(line: 128, column: 44, scope: !91)
!109 = !DILocation(line: 132, column: 3, scope: !91)
!110 = !DILocation(line: 133, column: 15, scope: !103)
!111 = !DILocation(line: 133, column: 10, scope: !103)
!112 = !DILocation(line: 130, column: 8, scope: !91)
!113 = !DILocation(line: 134, column: 15, scope: !103)
!114 = !DILocation(line: 134, column: 10, scope: !103)
!115 = !DILocation(line: 130, column: 12, scope: !91)
!116 = !DILocation(line: 135, column: 12, scope: !102)
!117 = !DILocation(line: 135, column: 9, scope: !103)
!118 = !DILocation(line: 136, column: 24, scope: !101)
!119 = !DILocation(line: 136, column: 12, scope: !101)
!120 = !DILocation(line: 137, column: 19, scope: !106)
!121 = !DILocation(line: 137, column: 27, scope: !106)
!122 = !DILocation(line: 137, column: 38, scope: !106)
!123 = !DILocation(line: 137, column: 11, scope: !101)
!124 = !DILocation(line: 140, column: 26, scope: !105)
!125 = !DILocation(line: 140, column: 14, scope: !105)
!126 = !DILocation(line: 141, column: 20, scope: !127)
!127 = distinct !DILexicalBlock(scope: !105, file: !1, line: 141, column: 13)
!128 = !DILocation(line: 141, column: 13, scope: !105)
!129 = !DILocation(line: 0, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 141, column: 31)
!131 = !DILocation(line: 148, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !106, file: !1, line: 146, column: 14)
!133 = !DILocation(line: 151, column: 15, scope: !91)
!134 = !DILocation(line: 151, column: 3, scope: !103)
!135 = distinct !{!135, !109, !136}
!136 = !DILocation(line: 151, column: 19, scope: !91)
!137 = !DILocation(line: 153, column: 1, scope: !91)
!138 = distinct !DISubprogram(name: "lwip_strnicmp", scope: !1, file: !1, line: 163, type: !139, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!94, !47, !47, !20}
!141 = !{!142, !143, !144, !145, !146, !147, !151}
!142 = !DILocalVariable(name: "str1", arg: 1, scope: !138, file: !1, line: 163, type: !47)
!143 = !DILocalVariable(name: "str2", arg: 2, scope: !138, file: !1, line: 163, type: !47)
!144 = !DILocalVariable(name: "len", arg: 3, scope: !138, file: !1, line: 163, type: !20)
!145 = !DILocalVariable(name: "c1", scope: !138, file: !1, line: 165, type: !16)
!146 = !DILocalVariable(name: "c2", scope: !138, file: !1, line: 165, type: !16)
!147 = !DILocalVariable(name: "c1_upc", scope: !148, file: !1, line: 171, type: !16)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 170, column: 19)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 170, column: 9)
!150 = distinct !DILexicalBlock(scope: !138, file: !1, line: 167, column: 6)
!151 = !DILocalVariable(name: "c2_upc", scope: !152, file: !1, line: 175, type: !16)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 172, column: 47)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 172, column: 11)
!154 = !DILocation(line: 163, column: 27, scope: !138)
!155 = !DILocation(line: 163, column: 45, scope: !138)
!156 = !DILocation(line: 163, column: 58, scope: !138)
!157 = !DILocation(line: 167, column: 3, scope: !138)
!158 = !DILocation(line: 168, column: 15, scope: !150)
!159 = !DILocation(line: 168, column: 10, scope: !150)
!160 = !DILocation(line: 165, column: 8, scope: !138)
!161 = !DILocation(line: 169, column: 15, scope: !150)
!162 = !DILocation(line: 169, column: 10, scope: !150)
!163 = !DILocation(line: 165, column: 12, scope: !138)
!164 = !DILocation(line: 170, column: 12, scope: !149)
!165 = !DILocation(line: 170, column: 9, scope: !150)
!166 = !DILocation(line: 171, column: 24, scope: !148)
!167 = !DILocation(line: 171, column: 12, scope: !148)
!168 = !DILocation(line: 172, column: 19, scope: !153)
!169 = !DILocation(line: 172, column: 27, scope: !153)
!170 = !DILocation(line: 172, column: 38, scope: !153)
!171 = !DILocation(line: 172, column: 11, scope: !148)
!172 = !DILocation(line: 175, column: 26, scope: !152)
!173 = !DILocation(line: 175, column: 14, scope: !152)
!174 = !DILocation(line: 176, column: 20, scope: !175)
!175 = distinct !DILexicalBlock(scope: !152, file: !1, line: 176, column: 13)
!176 = !DILocation(line: 176, column: 13, scope: !152)
!177 = !DILocation(line: 0, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 176, column: 31)
!179 = !DILocation(line: 183, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !153, file: !1, line: 181, column: 14)
!181 = !DILocation(line: 186, column: 8, scope: !150)
!182 = !DILocation(line: 187, column: 17, scope: !138)
!183 = !DILocation(line: 187, column: 30, scope: !138)
!184 = !DILocation(line: 187, column: 23, scope: !138)
!185 = !DILocation(line: 187, column: 3, scope: !150)
!186 = distinct !{!186, !157, !187}
!187 = !DILocation(line: 187, column: 35, scope: !138)
!188 = !DILocation(line: 189, column: 1, scope: !138)
!189 = distinct !DISubprogram(name: "lwip_itoa", scope: !1, file: !1, line: 199, type: !190, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !15, !20, !94}
!192 = !{!193, !194, !195, !196, !197, !198, !199}
!193 = !DILocalVariable(name: "result", arg: 1, scope: !189, file: !1, line: 199, type: !15)
!194 = !DILocalVariable(name: "bufsize", arg: 2, scope: !189, file: !1, line: 199, type: !20)
!195 = !DILocalVariable(name: "number", arg: 3, scope: !189, file: !1, line: 199, type: !94)
!196 = !DILocalVariable(name: "res", scope: !189, file: !1, line: 201, type: !15)
!197 = !DILocalVariable(name: "tmp", scope: !189, file: !1, line: 202, type: !15)
!198 = !DILocalVariable(name: "n", scope: !189, file: !1, line: 203, type: !94)
!199 = !DILocalVariable(name: "val", scope: !200, file: !1, line: 221, type: !16)
!200 = distinct !DILexicalBlock(scope: !189, file: !1, line: 220, column: 35)
!201 = !DILocation(line: 199, column: 17, scope: !189)
!202 = !DILocation(line: 199, column: 32, scope: !189)
!203 = !DILocation(line: 199, column: 45, scope: !189)
!204 = !DILocation(line: 201, column: 9, scope: !189)
!205 = !DILocation(line: 202, column: 22, scope: !189)
!206 = !DILocation(line: 202, column: 32, scope: !189)
!207 = !DILocation(line: 202, column: 9, scope: !189)
!208 = !DILocation(line: 203, column: 19, scope: !189)
!209 = !DILocation(line: 203, column: 36, scope: !189)
!210 = !DILocation(line: 203, column: 11, scope: !189)
!211 = !DILocation(line: 203, column: 7, scope: !189)
!212 = !DILocation(line: 206, column: 15, scope: !213)
!213 = distinct !DILexicalBlock(scope: !189, file: !1, line: 206, column: 7)
!214 = !DILocation(line: 206, column: 7, scope: !189)
!215 = !DILocation(line: 207, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 207, column: 9)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 206, column: 20)
!218 = !DILocation(line: 207, column: 9, scope: !217)
!219 = !DILocation(line: 208, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 207, column: 23)
!221 = !DILocation(line: 209, column: 5, scope: !220)
!222 = !DILocation(line: 214, column: 7, scope: !189)
!223 = !DILocation(line: 215, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 214, column: 19)
!225 = distinct !DILexicalBlock(scope: !189, file: !1, line: 214, column: 7)
!226 = !DILocation(line: 215, column: 12, scope: !224)
!227 = !DILocation(line: 216, column: 3, scope: !224)
!228 = !DILocation(line: 0, scope: !189)
!229 = !DILocation(line: 219, column: 8, scope: !189)
!230 = !DILocation(line: 220, column: 3, scope: !189)
!231 = !DILocation(line: 220, column: 13, scope: !189)
!232 = !DILocation(line: 220, column: 19, scope: !189)
!233 = !DILocation(line: 226, column: 7, scope: !189)
!234 = !DILocation(line: 231, column: 7, scope: !189)
!235 = !DILocation(line: 220, column: 27, scope: !189)
!236 = !DILocation(line: 221, column: 32, scope: !200)
!237 = !DILocation(line: 221, column: 16, scope: !200)
!238 = !DILocation(line: 221, column: 10, scope: !200)
!239 = !DILocation(line: 222, column: 8, scope: !200)
!240 = !DILocation(line: 223, column: 10, scope: !200)
!241 = !DILocation(line: 224, column: 11, scope: !200)
!242 = distinct !{!242, !230, !243}
!243 = !DILocation(line: 225, column: 3, scope: !189)
!244 = !DILocation(line: 228, column: 13, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 226, column: 10)
!246 = distinct !DILexicalBlock(scope: !189, file: !1, line: 226, column: 7)
!247 = !DILocation(line: 229, column: 5, scope: !245)
!248 = !DILocation(line: 233, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 231, column: 18)
!250 = distinct !DILexicalBlock(scope: !189, file: !1, line: 231, column: 7)
!251 = !DILocation(line: 233, column: 12, scope: !249)
!252 = !DILocation(line: 234, column: 12, scope: !249)
!253 = !DILocation(line: 235, column: 5, scope: !249)
!254 = !DILocation(line: 238, column: 49, scope: !189)
!255 = !DILocation(line: 238, column: 3, scope: !189)
!256 = !DILocation(line: 239, column: 1, scope: !189)
!257 = !DILocation(line: 0, scope: !217)
