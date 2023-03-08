; ModuleID = '/root/.unikraft/libs/lwip/getnameinfo.c'
source_filename = "/root/.unikraft/libs/lwip/getnameinfo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr = type { i8, i8, [14 x i8] }
%struct.ip4_addr = type { i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"/etc/hosts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@getnameinfo.__str = internal global [3 x i8] c"%d\00", section ".data_shared", align 1, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getnameinfo(%struct.sockaddr* noalias, i32, i8* noalias, i32, i8* noalias, i32, i32) local_unnamed_addr #0 !dbg !2 {
  %8 = alloca [256 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !343
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %10) #4, !dbg !343
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %0, i64 0, i32 1, !dbg !345
  %12 = load i8, i8* %11, align 1, !dbg !345, !tbaa !346
  %13 = zext i8 %12 to i32, !dbg !350
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0, !dbg !352
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %14) #4, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  switch i8 %12, label %88 [
    i8 2, label %15
    i8 10, label %18
  ], !dbg !354

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %0, i64 0, i32 2, i64 2, !dbg !355
  %17 = icmp eq i32 %1, 16, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %17, label %25, label %88, !dbg !360

; <label>:18:                                     ; preds = %7
  %19 = icmp eq i32 %1, 28, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %19, label %20, label %88, !dbg !363

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %0, i64 0, i32 2, i64 6, !dbg !364
  %22 = icmp ne i8* %2, null, !dbg !365
  %23 = icmp ne i32 %3, 0, !dbg !366
  %24 = and i1 %22, %23, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %24, label %62, label %74, !dbg !368

; <label>:25:                                     ; preds = %15
  %26 = icmp ne i8* %2, null, !dbg !365
  %27 = icmp ne i32 %3, 0, !dbg !366
  %28 = and i1 %26, %27, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %28, label %29, label %73, !dbg !367

; <label>:29:                                     ; preds = %25
  %30 = bitcast i8* %16 to %struct.ip4_addr*, !dbg !370
  %31 = tail call i8* @ip4addr_ntoa(%struct.ip4_addr* nonnull %30) #5, !dbg !370
  %32 = tail call i64 @strlen(i8* %31) #5, !dbg !372
  %33 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !374
  %34 = icmp eq %struct.__sFILE* %33, null, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %34, label %59, label %35, !dbg !377

; <label>:35:                                     ; preds = %29
  %36 = call i8* @fgets(i8* nonnull %14, i32 512, %struct.__sFILE* nonnull %33) #5, !dbg !378
  %37 = icmp eq i8* %36, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %37, label %57, label %38, !dbg !379

; <label>:38:                                     ; preds = %35, %54
  %39 = call i32 @strncmp(i8* nonnull %14, i8* %31, i64 %32) #5, !dbg !380
  %40 = icmp eq i32 %39, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %40, label %41, label %54, !dbg !383, !llvm.loop !384

; <label>:41:                                     ; preds = %38
  %42 = call i8* @strtok(i8* nonnull %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !386
  %43 = icmp eq i8* %42, null, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %43, label %54, label %44, !dbg !390, !llvm.loop !384

; <label>:44:                                     ; preds = %41
  %45 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !391
  %46 = icmp eq i8* %45, null, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %46, label %54, label %47, !dbg !394, !llvm.loop !384

; <label>:47:                                     ; preds = %44
  %48 = call i64 @strlen(i8* nonnull %45) #5, !dbg !395
  %49 = zext i32 %3 to i64, !dbg !397
  %50 = icmp ult i64 %48, %49, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  br i1 %50, label %51, label %60, !dbg !399

; <label>:51:                                     ; preds = %47
  %52 = call i8* @strcpy(i8* %2, i8* nonnull %45) #5, !dbg !400
  %53 = call i32 @fclose(%struct.__sFILE* nonnull %33) #5, !dbg !401
  br label %60, !dbg !402

; <label>:54:                                     ; preds = %44, %41, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %55 = call i8* @fgets(i8* nonnull %14, i32 512, %struct.__sFILE* nonnull %33) #5, !dbg !378
  %56 = icmp eq i8* %55, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %56, label %57, label %38, !dbg !379

; <label>:57:                                     ; preds = %54, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %58 = call i32 @fclose(%struct.__sFILE* nonnull %33) #5, !dbg !405
  br label %59, !dbg !405

; <label>:59:                                     ; preds = %29, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br label %62, !dbg !368

; <label>:60:                                     ; preds = %47, %51
  %61 = phi i32 [ 0, %51 ], [ -12, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %88

; <label>:62:                                     ; preds = %59, %20
  %63 = phi i8* [ %21, %20 ], [ %16, %59 ]
  %64 = and i32 %6, 8, !dbg !410
  %65 = icmp eq i32 %64, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %65, label %66, label %88, !dbg !415

; <label>:66:                                     ; preds = %62
  %67 = call i8* @inet_ntop(i32 %13, i8* %63, i8* nonnull %10, i32 256) #5, !dbg !416
  %68 = call i64 @strlen(i8* nonnull %10) #5, !dbg !417
  %69 = zext i32 %3 to i64, !dbg !419
  %70 = icmp ult i64 %68, %69, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br i1 %70, label %71, label %88, !dbg !421

; <label>:71:                                     ; preds = %66
  %72 = call i8* @strcpy(i8* %2, i8* nonnull %10) #5, !dbg !422
  br label %73, !dbg !423

; <label>:73:                                     ; preds = %25, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br label %74, !dbg !425

; <label>:74:                                     ; preds = %73, %20
  %75 = icmp ne i8* %4, null, !dbg !425
  %76 = icmp ne i32 %5, 0, !dbg !427
  %77 = and i1 %75, %76, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %77, label %78, label %88, !dbg !428

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %0, i64 0, i32 2, !dbg !429
  %80 = bitcast [14 x i8]* %79 to i16*, !dbg !429
  %81 = load i16, i16* %80, align 2, !dbg !429, !tbaa !432
  %82 = call zeroext i16 @lwip_htons(i16 zeroext %81) #5, !dbg !429
  %83 = zext i16 %82 to i32, !dbg !429
  %84 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %10, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @getnameinfo.__str, i64 0, i64 0), i32 %83) #5, !dbg !437
  %85 = icmp slt i32 %84, %5, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %85, label %86, label %88, !dbg !439

; <label>:86:                                     ; preds = %78
  %87 = call i8* @strcpy(i8* nonnull %4, i8* nonnull %10) #5, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br label %88, !dbg !441

; <label>:88:                                     ; preds = %74, %86, %78, %66, %62, %7, %18, %15, %60
  %89 = phi i32 [ %61, %60 ], [ 204, %15 ], [ 204, %18 ], [ 204, %7 ], [ 200, %62 ], [ -12, %66 ], [ -12, %78 ], [ 0, %86 ], [ 0, %74 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %14) #4, !dbg !442
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %10) #4, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  ret i32 %89, !dbg !442
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @ip4addr_ntoa(%struct.ip4_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @fgets(i8*, i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strtok(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @inet_ntop(i32, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!332, !333, !334}
!llvm.ident = !{!335}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 145, type: !331, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getnameinfo", scope: !3, file: !3, line: 61, type: !4, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !35, retainedNodes: !90)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/getnameinfo.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !28, !33, !28, !33, !28, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !11, line: 94, size: 128, elements: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !{!13, !21, !23}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sa_len", scope: !10, file: !11, line: 95, baseType: !14, size: 8)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !15, line: 125, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 43, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !10, file: !11, line: 96, baseType: !22, size: 8, offset: 8)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !11, line: 63, baseType: !14)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !10, file: !11, line: 97, baseType: !24, size: 112, offset: 16)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 112, elements: !26)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!27}
!27 = !DISubrange(count: 14)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !11, line: 113, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !15, line: 129, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 48, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 79, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !37, globals: !89)
!36 = !{}
!37 = !{!38, !39, !60, !82, !6}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !11, line: 73, size: 128, elements: !41)
!41 = !{!42, !43, !44, !50, !56}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sin_len", scope: !40, file: !11, line: 74, baseType: !14, size: 8)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !40, file: !11, line: 75, baseType: !22, size: 8, offset: 8)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !40, file: !11, line: 76, baseType: !45, size: 16, offset: 16)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !11, line: 68, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !15, line: 127, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !17, line: 36, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !19, line: 57, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !40, file: !11, line: 77, baseType: !51, size: 32, offset: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !52, line: 58, size: 32, elements: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/inet.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !51, file: !52, line: 59, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !52, line: 55, baseType: !29)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !40, file: !11, line: 79, baseType: !57, size: 64, offset: 64)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 8)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !11, line: 84, size: 224, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !81}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_len", scope: !61, file: !11, line: 85, baseType: !14, size: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !61, file: !11, line: 86, baseType: !22, size: 8, offset: 8)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !61, file: !11, line: 87, baseType: !45, size: 16, offset: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !61, file: !11, line: 88, baseType: !29, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !61, file: !11, line: 89, baseType: !68, size: 128, offset: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !52, line: 62, size: 128, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !68, file: !52, line: 66, baseType: !71, size: 128)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !52, line: 63, size: 128, elements: !72)
!72 = !{!73, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "u32_addr", scope: !71, file: !52, line: 64, baseType: !74, size: 128)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "u8_addr", scope: !71, file: !52, line: 65, baseType: !78, size: 128)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !61, file: !11, line: 90, baseType: !29, size: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !85, line: 57, baseType: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !85, line: 51, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !86, file: !85, line: 52, baseType: !29, size: 32)
!89 = !{!0}
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !102, !103, !107, !319, !320, !323, !328}
!91 = !DILocalVariable(name: "sa", arg: 1, scope: !2, file: !3, line: 61, type: !7)
!92 = !DILocalVariable(name: "sl", arg: 2, scope: !2, file: !3, line: 61, type: !28)
!93 = !DILocalVariable(name: "node", arg: 3, scope: !2, file: !3, line: 62, type: !33)
!94 = !DILocalVariable(name: "nodelen", arg: 4, scope: !2, file: !3, line: 62, type: !28)
!95 = !DILocalVariable(name: "serv", arg: 5, scope: !2, file: !3, line: 63, type: !33)
!96 = !DILocalVariable(name: "servlen", arg: 6, scope: !2, file: !3, line: 63, type: !28)
!97 = !DILocalVariable(name: "flags", arg: 7, scope: !2, file: !3, line: 64, type: !6)
!98 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 66, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 256)
!102 = !DILocalVariable(name: "af", scope: !2, file: !3, line: 68, type: !6)
!103 = !DILocalVariable(name: "line", scope: !2, file: !3, line: 70, type: !104)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4096, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 512)
!107 = !DILocalVariable(name: "f", scope: !2, file: !3, line: 71, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !110, line: 66, baseType: !111)
!110 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !112, line: 287, baseType: !113)
!112 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !112, line: 181, size: 1408, elements: !114)
!114 = !{!115, !117, !118, !119, !121, !122, !127, !128, !129, !286, !292, !297, !301, !302, !303, !304, !306, !308, !309, !310, !312, !313, !317, !318}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !113, file: !112, line: 182, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !113, file: !112, line: 183, baseType: !6, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !113, file: !112, line: 184, baseType: !6, size: 32, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !113, file: !112, line: 185, baseType: !120, size: 16, offset: 128)
!120 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !113, file: !112, line: 186, baseType: !120, size: 16, offset: 144)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !113, file: !112, line: 187, baseType: !123, size: 128, offset: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !112, line: 117, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !123, file: !112, line: 118, baseType: !116, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !123, file: !112, line: 119, baseType: !6, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !113, file: !112, line: 188, baseType: !6, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !113, file: !112, line: 195, baseType: !38, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !113, file: !112, line: 197, baseType: !130, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !136, !38, !34, !6}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !134, line: 145, baseType: !135)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !112, line: 569, size: 14912, elements: !138)
!138 = !{!139, !140, !142, !143, !144, !145, !149, !150, !153, !154, !158, !172, !173, !174, !176, !177, !178, !250, !271, !272, !277, !284}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !137, file: !112, line: 571, baseType: !6, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !137, file: !112, line: 576, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !137, file: !112, line: 576, baseType: !141, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !137, file: !112, line: 576, baseType: !141, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !137, file: !112, line: 578, baseType: !6, size: 32, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !137, file: !112, line: 579, baseType: !146, size: 200, offset: 288)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 200, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 25)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !137, file: !112, line: 582, baseType: !6, size: 32, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !137, file: !112, line: 583, baseType: !151, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !112, line: 40, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !137, file: !112, line: 585, baseType: !6, size: 32, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !137, file: !112, line: 587, baseType: !155, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !136}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !137, file: !112, line: 590, baseType: !159, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !112, line: 47, size: 256, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !160, file: !112, line: 49, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !160, file: !112, line: 50, baseType: !6, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !160, file: !112, line: 50, baseType: !6, size: 32, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !160, file: !112, line: 50, baseType: !6, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !160, file: !112, line: 50, baseType: !6, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !160, file: !112, line: 51, baseType: !168, size: 32, offset: 192)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 32, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !112, line: 25, baseType: !32)
!170 = !{!171}
!171 = !DISubrange(count: 1)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !137, file: !112, line: 591, baseType: !6, size: 32, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !137, file: !112, line: 592, baseType: !159, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !137, file: !112, line: 593, baseType: !175, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !137, file: !112, line: 596, baseType: !6, size: 32, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !137, file: !112, line: 597, baseType: !34, size: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !137, file: !112, line: 632, baseType: !179, size: 2880, offset: 1152)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !112, line: 599, size: 2880, elements: !180)
!180 = !{!181, !241}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !179, file: !112, line: 622, baseType: !182, size: 1728)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !112, line: 601, size: 1728, elements: !183)
!183 = !{!184, !185, !186, !190, !202, !203, !205, !214, !227, !228, !229, !230, !234, !235, !236, !237, !238, !239, !240}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !182, file: !112, line: 603, baseType: !32, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !182, file: !112, line: 604, baseType: !34, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !182, file: !112, line: 605, baseType: !187, size: 208, offset: 128)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 208, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 26)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !182, file: !112, line: 606, baseType: !191, size: 288, offset: 352)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !112, line: 55, size: 288, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !191, file: !112, line: 57, baseType: !6, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !191, file: !112, line: 58, baseType: !6, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !191, file: !112, line: 59, baseType: !6, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !191, file: !112, line: 60, baseType: !6, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !191, file: !112, line: 61, baseType: !6, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !191, file: !112, line: 62, baseType: !6, size: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !191, file: !112, line: 63, baseType: !6, size: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !191, file: !112, line: 64, baseType: !6, size: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !191, file: !112, line: 65, baseType: !6, size: 32, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !182, file: !112, line: 607, baseType: !6, size: 32, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !182, file: !112, line: 608, baseType: !204, size: 64, offset: 704)
!204 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !182, file: !112, line: 609, baseType: !206, size: 112, offset: 768)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !112, line: 319, size: 112, elements: !207)
!207 = !{!208, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !206, file: !112, line: 320, baseType: !209, size: 48)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 48, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 3)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !206, file: !112, line: 321, baseType: !209, size: 48, offset: 48)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !206, file: !112, line: 322, baseType: !49, size: 16, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !182, file: !112, line: 610, baseType: !215, size: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !134, line: 171, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 163, size: 64, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !216, file: !134, line: 165, baseType: !6, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !216, file: !134, line: 170, baseType: !220, size: 32, offset: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !134, line: 166, size: 32, elements: !221)
!221 = !{!222, !225}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !220, file: !134, line: 168, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !224, line: 124, baseType: !32)
!224 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !220, file: !134, line: 169, baseType: !226, size: 32)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !75)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !182, file: !112, line: 611, baseType: !215, size: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !182, file: !112, line: 612, baseType: !215, size: 64, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !182, file: !112, line: 613, baseType: !57, size: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !182, file: !112, line: 614, baseType: !231, size: 192, offset: 1152)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !182, file: !112, line: 615, baseType: !6, size: 32, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !182, file: !112, line: 616, baseType: !215, size: 64, offset: 1376)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !182, file: !112, line: 617, baseType: !215, size: 64, offset: 1440)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !182, file: !112, line: 618, baseType: !215, size: 64, offset: 1504)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !182, file: !112, line: 619, baseType: !215, size: 64, offset: 1568)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !182, file: !112, line: 620, baseType: !215, size: 64, offset: 1632)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !182, file: !112, line: 621, baseType: !6, size: 32, offset: 1696)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !179, file: !112, line: 631, baseType: !242, size: 2880)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !112, line: 626, size: 2880, elements: !243)
!243 = !{!244, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !242, file: !112, line: 629, baseType: !245, size: 1920)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 1920, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 30)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !242, file: !112, line: 630, baseType: !249, size: 960, offset: 1920)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 960, elements: !246)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !137, file: !112, line: 636, baseType: !251, size: 64, offset: 4032)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !112, line: 93, size: 6336, elements: !253)
!253 = !{!254, !255, !256, !263}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !252, file: !112, line: 94, baseType: !251, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !252, file: !112, line: 95, baseType: !6, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !252, file: !112, line: 97, baseType: !257, size: 2048, offset: 128)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 2048, elements: !261)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null}
!261 = !{!262}
!262 = !DISubrange(count: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !252, file: !112, line: 98, baseType: !264, size: 4160, offset: 2176)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !112, line: 74, size: 4160, elements: !265)
!265 = !{!266, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !264, file: !112, line: 75, baseType: !267, size: 2048)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !261)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !264, file: !112, line: 76, baseType: !267, size: 2048, offset: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !264, file: !112, line: 78, baseType: !169, size: 32, offset: 4096)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !264, file: !112, line: 81, baseType: !169, size: 32, offset: 4128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !137, file: !112, line: 637, baseType: !252, size: 6336, offset: 4096)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !137, file: !112, line: 641, baseType: !273, size: 64, offset: 10432)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !6}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !137, file: !112, line: 646, baseType: !278, size: 192, offset: 10496)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !112, line: 291, size: 192, elements: !279)
!279 = !{!280, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !278, file: !112, line: 293, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !278, file: !112, line: 294, baseType: !6, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !278, file: !112, line: 295, baseType: !141, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !137, file: !112, line: 648, baseType: !285, size: 4224, offset: 10688)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 4224, elements: !210)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !113, file: !112, line: 199, baseType: !287, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!133, !136, !38, !290, !6}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !113, file: !112, line: 202, baseType: !293, size: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !136, !38, !296, !6}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !134, line: 114, baseType: !135)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !113, file: !112, line: 203, baseType: !298, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!6, !136, !38}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !113, file: !112, line: 206, baseType: !123, size: 128, offset: 704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !113, file: !112, line: 207, baseType: !116, size: 64, offset: 832)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !113, file: !112, line: 208, baseType: !6, size: 32, offset: 896)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !113, file: !112, line: 211, baseType: !305, size: 24, offset: 928)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !210)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !113, file: !112, line: 212, baseType: !307, size: 8, offset: 952)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !170)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !113, file: !112, line: 215, baseType: !123, size: 128, offset: 960)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !113, file: !112, line: 218, baseType: !6, size: 32, offset: 1088)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !113, file: !112, line: 219, baseType: !311, size: 64, offset: 1152)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !134, line: 44, baseType: !135)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !113, file: !112, line: 222, baseType: !136, size: 64, offset: 1216)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !113, file: !112, line: 226, baseType: !314, size: 32, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !134, line: 175, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !316, line: 12, baseType: !6)
!316 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !113, file: !112, line: 228, baseType: !215, size: 64, offset: 1312)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !113, file: !112, line: 229, baseType: !6, size: 32, offset: 1376)
!319 = !DILocalVariable(name: "a", scope: !2, file: !3, line: 73, type: !116)
!320 = !DILocalVariable(name: "ipstr", scope: !321, file: !3, line: 95, type: !290)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 94, column: 44)
!322 = distinct !DILexicalBlock(scope: !2, file: !3, line: 94, column: 6)
!323 = !DILocalVariable(name: "l", scope: !321, file: !3, line: 96, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !325, line: 40, baseType: !326)
!325 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !134, line: 129, baseType: !327)
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DILocalVariable(name: "domain", scope: !329, file: !3, line: 103, type: !34)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 102, column: 41)
!330 = distinct !DILexicalBlock(scope: !321, file: !3, line: 101, column: 7)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !210)
!332 = !{i32 2, !"Dwarf Version", i32 4}
!333 = !{i32 2, !"Debug Info Version", i32 3}
!334 = !{i32 1, !"wchar_size", i32 4}
!335 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!336 = !DILocation(line: 61, column: 49, scope: !2)
!337 = !DILocation(line: 61, column: 63, scope: !2)
!338 = !DILocation(line: 62, column: 17, scope: !2)
!339 = !DILocation(line: 62, column: 33, scope: !2)
!340 = !DILocation(line: 63, column: 17, scope: !2)
!341 = !DILocation(line: 63, column: 33, scope: !2)
!342 = !DILocation(line: 64, column: 6, scope: !2)
!343 = !DILocation(line: 66, column: 2, scope: !2)
!344 = !DILocation(line: 66, column: 7, scope: !2)
!345 = !DILocation(line: 68, column: 15, scope: !2)
!346 = !{!347, !348, i64 1}
!347 = !{!"sockaddr", !348, i64 0, !348, i64 1, !348, i64 2}
!348 = !{!"omnipotent char", !349, i64 0}
!349 = !{!"Simple C/C++ TBAA"}
!350 = !DILocation(line: 68, column: 11, scope: !2)
!351 = !DILocation(line: 68, column: 6, scope: !2)
!352 = !DILocation(line: 70, column: 2, scope: !2)
!353 = !DILocation(line: 70, column: 7, scope: !2)
!354 = !DILocation(line: 75, column: 2, scope: !2)
!355 = !DILocation(line: 77, column: 46, scope: !356)
!356 = distinct !DILexicalBlock(scope: !2, file: !3, line: 75, column: 14)
!357 = !DILocation(line: 73, column: 17, scope: !2)
!358 = !DILocation(line: 78, column: 10, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !3, line: 78, column: 7)
!360 = !DILocation(line: 78, column: 7, scope: !356)
!361 = !DILocation(line: 84, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !356, file: !3, line: 84, column: 7)
!363 = !DILocation(line: 84, column: 7, scope: !356)
!364 = !DILocation(line: 83, column: 47, scope: !356)
!365 = !DILocation(line: 94, column: 7, scope: !322)
!366 = !DILocation(line: 94, column: 15, scope: !322)
!367 = !DILocation(line: 94, column: 12, scope: !322)
!368 = !DILocation(line: 126, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !2, file: !3, line: 126, column: 6)
!370 = !DILocation(line: 98, column: 11, scope: !321)
!371 = !DILocation(line: 95, column: 15, scope: !321)
!372 = !DILocation(line: 99, column: 7, scope: !321)
!373 = !DILocation(line: 96, column: 10, scope: !321)
!374 = !DILocation(line: 100, column: 7, scope: !321)
!375 = !DILocation(line: 71, column: 8, scope: !2)
!376 = !DILocation(line: 101, column: 7, scope: !330)
!377 = !DILocation(line: 101, column: 7, scope: !321)
!378 = !DILocation(line: 102, column: 11, scope: !330)
!379 = !DILocation(line: 102, column: 4, scope: !330)
!380 = !DILocation(line: 105, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !329, file: !3, line: 105, column: 9)
!382 = !DILocation(line: 105, column: 33, scope: !381)
!383 = !DILocation(line: 105, column: 9, scope: !329)
!384 = distinct !{!384, !379, !385}
!385 = !DILocation(line: 120, column: 4, scope: !330)
!386 = !DILocation(line: 108, column: 14, scope: !329)
!387 = !DILocation(line: 103, column: 11, scope: !329)
!388 = !DILocation(line: 109, column: 10, scope: !389)
!389 = distinct !DILexicalBlock(scope: !329, file: !3, line: 109, column: 9)
!390 = !DILocation(line: 109, column: 9, scope: !329)
!391 = !DILocation(line: 111, column: 14, scope: !329)
!392 = !DILocation(line: 112, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !329, file: !3, line: 112, column: 9)
!394 = !DILocation(line: 112, column: 9, scope: !329)
!395 = !DILocation(line: 115, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !329, file: !3, line: 115, column: 9)
!397 = !DILocation(line: 115, column: 27, scope: !396)
!398 = !DILocation(line: 115, column: 24, scope: !396)
!399 = !DILocation(line: 115, column: 9, scope: !329)
!400 = !DILocation(line: 117, column: 5, scope: !329)
!401 = !DILocation(line: 118, column: 5, scope: !329)
!402 = !DILocation(line: 119, column: 5, scope: !329)
!403 = !DILocation(line: 0, scope: !381)
!404 = !DILocation(line: 121, column: 7, scope: !321)
!405 = !DILocation(line: 122, column: 4, scope: !406)
!406 = distinct !DILexicalBlock(scope: !321, file: !3, line: 121, column: 7)
!407 = !DILocation(line: 0, scope: !321)
!408 = !DILocation(line: 123, column: 2, scope: !322)
!409 = !DILocation(line: 0, scope: !329)
!410 = !DILocation(line: 135, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 135, column: 8)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 133, column: 10)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 127, column: 7)
!414 = distinct !DILexicalBlock(scope: !369, file: !3, line: 126, column: 23)
!415 = !DILocation(line: 135, column: 8, scope: !412)
!416 = !DILocation(line: 137, column: 4, scope: !412)
!417 = !DILocation(line: 139, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !3, line: 139, column: 7)
!419 = !DILocation(line: 139, column: 22, scope: !418)
!420 = !DILocation(line: 139, column: 19, scope: !418)
!421 = !DILocation(line: 139, column: 7, scope: !414)
!422 = !DILocation(line: 141, column: 3, scope: !414)
!423 = !DILocation(line: 142, column: 2, scope: !414)
!424 = !DILocation(line: 0, scope: !414)
!425 = !DILocation(line: 144, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !2, file: !3, line: 144, column: 6)
!427 = !DILocation(line: 144, column: 14, scope: !426)
!428 = !DILocation(line: 144, column: 11, scope: !426)
!429 = !DILocation(line: 146, column: 4, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 145, column: 7)
!431 = distinct !DILexicalBlock(scope: !426, file: !3, line: 144, column: 23)
!432 = !{!433, !434, i64 2}
!433 = !{!"sockaddr_in", !348, i64 0, !348, i64 1, !434, i64 2, !435, i64 4, !348, i64 8}
!434 = !{!"short", !348, i64 0}
!435 = !{!"in_addr", !436, i64 0}
!436 = !{!"int", !348, i64 0}
!437 = !DILocation(line: 145, column: 7, scope: !430)
!438 = !DILocation(line: 146, column: 50, scope: !430)
!439 = !DILocation(line: 145, column: 7, scope: !431)
!440 = !DILocation(line: 148, column: 3, scope: !431)
!441 = !DILocation(line: 149, column: 2, scope: !431)
!442 = !DILocation(line: 152, column: 1, scope: !2)
